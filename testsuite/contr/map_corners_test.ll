

; gas_remaining: 4002000
; ModuleID = 'MapCornersTest'
source_filename = "MapCornersTest"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin19.6.0"

%"$TyDescrTy_PrimTyp_24" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_56" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_55"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_55" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_57"**, %"$TyDescrTy_ADTTyp_56"* }
%"$TyDescrTy_ADTTyp_Constr_57" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_62" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_67" = type { i32, %"$TyDescr_AddrFieldTyp_66"* }
%"$TyDescr_AddrFieldTyp_66" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%Uint32 = type { i32 }
%"$ParamDescr_4838" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_4839" = type { %ParamDescrString, i32, %"$ParamDescr_4838"* }
%"$$fundef_17_env_115" = type {}
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
@"$TyDescr_Int32_Prim_25" = global %"$TyDescrTy_PrimTyp_24" zeroinitializer
@"$TyDescr_Int32_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Int32_Prim_25" to i8*) }
@"$TyDescr_Uint32_Prim_27" = global %"$TyDescrTy_PrimTyp_24" { i32 1, i32 0 }
@"$TyDescr_Uint32_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Uint32_Prim_27" to i8*) }
@"$TyDescr_Int64_Prim_29" = global %"$TyDescrTy_PrimTyp_24" { i32 0, i32 1 }
@"$TyDescr_Int64_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Int64_Prim_29" to i8*) }
@"$TyDescr_Uint64_Prim_31" = global %"$TyDescrTy_PrimTyp_24" { i32 1, i32 1 }
@"$TyDescr_Uint64_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Uint64_Prim_31" to i8*) }
@"$TyDescr_Int128_Prim_33" = global %"$TyDescrTy_PrimTyp_24" { i32 0, i32 2 }
@"$TyDescr_Int128_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Int128_Prim_33" to i8*) }
@"$TyDescr_Uint128_Prim_35" = global %"$TyDescrTy_PrimTyp_24" { i32 1, i32 2 }
@"$TyDescr_Uint128_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Uint128_Prim_35" to i8*) }
@"$TyDescr_Int256_Prim_37" = global %"$TyDescrTy_PrimTyp_24" { i32 0, i32 3 }
@"$TyDescr_Int256_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Int256_Prim_37" to i8*) }
@"$TyDescr_Uint256_Prim_39" = global %"$TyDescrTy_PrimTyp_24" { i32 1, i32 3 }
@"$TyDescr_Uint256_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Uint256_Prim_39" to i8*) }
@"$TyDescr_String_Prim_41" = global %"$TyDescrTy_PrimTyp_24" { i32 2, i32 0 }
@"$TyDescr_String_42" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_String_Prim_41" to i8*) }
@"$TyDescr_Bnum_Prim_43" = global %"$TyDescrTy_PrimTyp_24" { i32 3, i32 0 }
@"$TyDescr_Bnum_44" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Bnum_Prim_43" to i8*) }
@"$TyDescr_Message_Prim_45" = global %"$TyDescrTy_PrimTyp_24" { i32 4, i32 0 }
@"$TyDescr_Message_46" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Message_Prim_45" to i8*) }
@"$TyDescr_Event_Prim_47" = global %"$TyDescrTy_PrimTyp_24" { i32 5, i32 0 }
@"$TyDescr_Event_48" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Event_Prim_47" to i8*) }
@"$TyDescr_Exception_Prim_49" = global %"$TyDescrTy_PrimTyp_24" { i32 6, i32 0 }
@"$TyDescr_Exception_50" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Exception_Prim_49" to i8*) }
@"$TyDescr_Bystr_Prim_51" = global %"$TyDescrTy_PrimTyp_24" { i32 7, i32 0 }
@"$TyDescr_Bystr_52" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Bystr_Prim_51" to i8*) }
@"$TyDescr_Bystr20_Prim_53" = global %"$TyDescrTy_PrimTyp_24" { i32 8, i32 20 }
@"$TyDescr_Bystr20_54" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_24"* @"$TyDescr_Bystr20_Prim_53" to i8*) }
@"$TyDescr_ADT_Option_Map_(String)_(Map_(String)_(String))_58" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_78" to i8*) }
@"$TyDescr_ADT_Option_Map_(String)_(String)_59" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_87" to i8*) }
@"$TyDescr_ADT_Option_String_60" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Option_String_ADTTyp_Specl_96" to i8*) }
@"$TyDescr_ADT_Bool_61" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Bool_ADTTyp_Specl_108" to i8*) }
@"$TyDescr_Map_63" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_62"* @"$TyDescr_MapTyp_111" to i8*) }
@"$TyDescr_Map_64" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_62"* @"$TyDescr_MapTyp_112" to i8*) }
@"$TyDescr_Map_65" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_62"* @"$TyDescr_MapTyp_113" to i8*) }
@"$TyDescr_Addr_68" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_67"* @"$TyDescr_AddrFields_114" to i8*) }
@"$TyDescr_Option_ADTTyp_69" = unnamed_addr constant %"$TyDescrTy_ADTTyp_56" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_98", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 3, %"$TyDescrTy_ADTTyp_Specl_55"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_55"*], [3 x %"$TyDescrTy_ADTTyp_Specl_55"*]* @"$TyDescr_Option_ADTTyp_m_specls_97", i32 0, i32 0) }
@"$TyDescr_Option_Some_Map_(String)_(Map_(String)_(String))_Constr_m_args_70" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_64"]
@"$TyDescr_ADT_Some_71" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Map_(String)_(Map_(String)_(String))_ADTTyp_Constr_72" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_71", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Map_(String)_(Map_(String)_(String))_Constr_m_args_70", i32 0, i32 0) }
@"$TyDescr_Option_None_Map_(String)_(Map_(String)_(String))_Constr_m_args_73" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_74" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Map_(String)_(Map_(String)_(String))_ADTTyp_Constr_75" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_74", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Map_(String)_(Map_(String)_(String))_Constr_m_args_73", i32 0, i32 0) }
@"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_m_constrs_76" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_57"*] [%"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Option_Some_Map_(String)_(Map_(String)_(String))_ADTTyp_Constr_72", %"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Option_None_Map_(String)_(Map_(String)_(String))_ADTTyp_Constr_75"]
@"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_m_TArgs_77" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_64"]
@"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_78" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_55" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_m_TArgs_77", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_57"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_57"*], [2 x %"$TyDescrTy_ADTTyp_Constr_57"*]* @"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_m_constrs_76", i32 0, i32 0), %"$TyDescrTy_ADTTyp_56"* @"$TyDescr_Option_ADTTyp_69" }
@"$TyDescr_Option_Some_Map_(String)_(String)_Constr_m_args_79" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_65"]
@"$TyDescr_ADT_Some_80" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Map_(String)_(String)_ADTTyp_Constr_81" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_80", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Map_(String)_(String)_Constr_m_args_79", i32 0, i32 0) }
@"$TyDescr_Option_None_Map_(String)_(String)_Constr_m_args_82" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_83" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Map_(String)_(String)_ADTTyp_Constr_84" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_83", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Map_(String)_(String)_Constr_m_args_82", i32 0, i32 0) }
@"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_m_constrs_85" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_57"*] [%"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Option_Some_Map_(String)_(String)_ADTTyp_Constr_81", %"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Option_None_Map_(String)_(String)_ADTTyp_Constr_84"]
@"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_m_TArgs_86" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_65"]
@"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_87" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_55" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_m_TArgs_86", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_57"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_57"*], [2 x %"$TyDescrTy_ADTTyp_Constr_57"*]* @"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_m_constrs_85", i32 0, i32 0), %"$TyDescrTy_ADTTyp_56"* @"$TyDescr_Option_ADTTyp_69" }
@"$TyDescr_Option_Some_String_Constr_m_args_88" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_42"]
@"$TyDescr_ADT_Some_89" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_String_ADTTyp_Constr_90" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_89", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_String_Constr_m_args_88", i32 0, i32 0) }
@"$TyDescr_Option_None_String_Constr_m_args_91" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_92" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_String_ADTTyp_Constr_93" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_92", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_String_Constr_m_args_91", i32 0, i32 0) }
@"$TyDescr_Option_String_ADTTyp_Specl_m_constrs_94" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_57"*] [%"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Option_Some_String_ADTTyp_Constr_90", %"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Option_None_String_ADTTyp_Constr_93"]
@"$TyDescr_Option_String_ADTTyp_Specl_m_TArgs_95" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_42"]
@"$TyDescr_Option_String_ADTTyp_Specl_96" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_55" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_String_ADTTyp_Specl_m_TArgs_95", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_57"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_57"*], [2 x %"$TyDescrTy_ADTTyp_Constr_57"*]* @"$TyDescr_Option_String_ADTTyp_Specl_m_constrs_94", i32 0, i32 0), %"$TyDescrTy_ADTTyp_56"* @"$TyDescr_Option_ADTTyp_69" }
@"$TyDescr_Option_ADTTyp_m_specls_97" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_55"*] [%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_78", %"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_87", %"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Option_String_ADTTyp_Specl_96"]
@"$TyDescr_ADT_Option_98" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Bool_ADTTyp_99" = unnamed_addr constant %"$TyDescrTy_ADTTyp_56" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_110", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_55"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_55"*], [1 x %"$TyDescrTy_ADTTyp_Specl_55"*]* @"$TyDescr_Bool_ADTTyp_m_specls_109", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_100" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_101" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_102" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_101", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_100", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_103" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_104" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_105" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_104", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_103", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_106" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_57"*] [%"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Bool_True_ADTTyp_Constr_102", %"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Bool_False_ADTTyp_Constr_105"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_107" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_108" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_55" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_107", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_57"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_57"*], [2 x %"$TyDescrTy_ADTTyp_Constr_57"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_106", i32 0, i32 0), %"$TyDescrTy_ADTTyp_56"* @"$TyDescr_Bool_ADTTyp_99" }
@"$TyDescr_Bool_ADTTyp_m_specls_109" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_55"*] [%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Bool_ADTTyp_Specl_108"]
@"$TyDescr_ADT_Bool_110" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_MapTyp_111" = unnamed_addr constant %"$TyDescr_MapTyp_62" { %_TyDescrTy_Typ* @"$TyDescr_String_42", %_TyDescrTy_Typ* @"$TyDescr_Map_64" }
@"$TyDescr_MapTyp_112" = unnamed_addr constant %"$TyDescr_MapTyp_62" { %_TyDescrTy_Typ* @"$TyDescr_String_42", %_TyDescrTy_Typ* @"$TyDescr_Map_65" }
@"$TyDescr_MapTyp_113" = unnamed_addr constant %"$TyDescr_MapTyp_62" { %_TyDescrTy_Typ* @"$TyDescr_String_42", %_TyDescrTy_Typ* @"$TyDescr_String_42" }
@"$TyDescr_AddrFields_114" = unnamed_addr constant %"$TyDescr_AddrTyp_67" { i32 -1, %"$TyDescr_AddrFieldTyp_66"* null }
@BoolUtils.andb = global { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_156" = unnamed_addr constant [3 x i8] c"420"
@"$f_s1_158" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$f_m1_171" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$f_m2_183" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m3_195" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$f_m_207" = unnamed_addr constant [4 x i8] c"f_m\00"
@"$stringlit_224" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_229" = unnamed_addr constant [11 x i8] c"Test Failed"
@"$stringlit_232" = unnamed_addr constant [9 x i8] c"test_name"
@"$stringlit_264" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_269" = unnamed_addr constant [11 x i8] c"Test Failed"
@"$stringlit_272" = unnamed_addr constant [9 x i8] c"test_name"
@"$stringlit_279" = unnamed_addr constant [7 x i8] c"message"
@"$stringlit_310" = unnamed_addr constant [2 x i8] c"t1"
@"$f_s1_311" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$stringlit_336" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_393" = unnamed_addr constant [3 x i8] c"421"
@"$f_s1_404" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$stringlit_428" = unnamed_addr constant [2 x i8] c"t2"
@"$f_s1_429" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$stringlit_454" = unnamed_addr constant [3 x i8] c"421"
@"$stringlit_511" = unnamed_addr constant [4 x i8] c"key1"
@"$stringlit_522" = unnamed_addr constant [3 x i8] c"420"
@"$f_m1_537" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_561" = unnamed_addr constant [2 x i8] c"t3"
@"$stringlit_572" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_583" = unnamed_addr constant [4 x i8] c"key1"
@"$f_m1_587" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_661" = unnamed_addr constant [23 x i8] c"Incorrect value for key"
@"$stringlit_693" = unnamed_addr constant [4 x i8] c"key2"
@"$f_m1_697" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_735" = unnamed_addr constant [25 x i8] c"Rogue value found for key"
@"$f_m1_756" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_777" = unnamed_addr constant [2 x i8] c"t4"
@"$stringlit_788" = unnamed_addr constant [4 x i8] c"key1"
@"$f_m1_792" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_838" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_849" = unnamed_addr constant [5 x i8] c"key2a"
@"$stringlit_860" = unnamed_addr constant [3 x i8] c"420"
@"$f_m2_877" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_901" = unnamed_addr constant [2 x i8] c"t5"
@"$stringlit_912" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_923" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_934" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_940" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1016" = unnamed_addr constant [23 x i8] c"Incorrect value fetched"
@"$stringlit_1064" = unnamed_addr constant [5 x i8] c"key2b"
@"$stringlit_1075" = unnamed_addr constant [3 x i8] c"840"
@"$stringlit_1111" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_1122" = unnamed_addr constant [3 x i8] c"841"
@"$stringlit_1153" = unnamed_addr constant [5 x i8] c"key1b"
@"$f_m2_1167" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1190" = unnamed_addr constant [2 x i8] c"t6"
@"$stringlit_1201" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_1212" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_1218" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1256" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_1305" = unnamed_addr constant [31 x i8] c"Incorrect value for key1a,key2a"
@"$stringlit_1327" = unnamed_addr constant [21 x i8] c"key1a,key2a not found"
@"$stringlit_1347" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1358" = unnamed_addr constant [5 x i8] c"key2b"
@"$f_m2_1364" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1402" = unnamed_addr constant [3 x i8] c"840"
@"$stringlit_1451" = unnamed_addr constant [31 x i8] c"Incorrect value for key1b,key2b"
@"$stringlit_1473" = unnamed_addr constant [21 x i8] c"key1b,key2b not found"
@"$stringlit_1493" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1504" = unnamed_addr constant [5 x i8] c"key2c"
@"$f_m2_1510" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1548" = unnamed_addr constant [3 x i8] c"841"
@"$stringlit_1597" = unnamed_addr constant [31 x i8] c"Incorrect value for key1b,key2c"
@"$stringlit_1619" = unnamed_addr constant [21 x i8] c"key1b,key2c not found"
@"$f_m2_1638" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1659" = unnamed_addr constant [2 x i8] c"t7"
@"$stringlit_1670" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_1681" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_1687" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1725" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_1774" = unnamed_addr constant [31 x i8] c"Incorrect value for key1a,key2a"
@"$stringlit_1796" = unnamed_addr constant [21 x i8] c"key1a,key2a not found"
@"$stringlit_1816" = unnamed_addr constant [5 x i8] c"key1b"
@"$f_m2_1820" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1858" = unnamed_addr constant [36 x i8] c"Fail: deleted value for key1b found!"
@"$stringlit_1880" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1891" = unnamed_addr constant [5 x i8] c"key2b"
@"$f_m2_1897" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1935" = unnamed_addr constant [42 x i8] c"Fail: deleted value for key1b,key2b found!"
@"$stringlit_1957" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1968" = unnamed_addr constant [5 x i8] c"key2d"
@"$f_m2_1974" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2012" = unnamed_addr constant [42 x i8] c"Fail: deleted value for key1b,key2d found!"
@"$stringlit_2034" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_2045" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_2056" = unnamed_addr constant [3 x i8] c"121"
@"$f_m2_2073" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2097" = unnamed_addr constant [2 x i8] c"t8"
@"$stringlit_2108" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_2119" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_2125" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2163" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_2212" = unnamed_addr constant [31 x i8] c"Incorrect value for key1a,key2a"
@"$stringlit_2234" = unnamed_addr constant [21 x i8] c"key1a,key2a not found"
@"$stringlit_2254" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_2265" = unnamed_addr constant [5 x i8] c"key2c"
@"$f_m2_2271" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2309" = unnamed_addr constant [3 x i8] c"121"
@"$stringlit_2358" = unnamed_addr constant [31 x i8] c"Incorrect value for key1b,key2c"
@"$stringlit_2380" = unnamed_addr constant [21 x i8] c"key1b,key2c not found"
@"$f_m1_2412" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2435" = unnamed_addr constant [2 x i8] c"t9"
@"$f_m1_2436" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2522" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_2533" = unnamed_addr constant [3 x i8] c"420"
@"$f_m1_2568" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2591" = unnamed_addr constant [3 x i8] c"t10"
@"$stringlit_2602" = unnamed_addr constant [5 x i8] c"key1a"
@"$f_m1_2603" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2661" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_2710" = unnamed_addr constant [25 x i8] c"Incorrect value for key1a"
@"$stringlit_2732" = unnamed_addr constant [15 x i8] c"key1a not found"
@"$f_m1_2751" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2772" = unnamed_addr constant [3 x i8] c"t11"
@"$f_m1_2773" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$f_m2_2871" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2894" = unnamed_addr constant [3 x i8] c"t12"
@"$f_m2_2895" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2994" = unnamed_addr constant [5 x i8] c"key1a"
@"$f_m2_3008" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_3031" = unnamed_addr constant [3 x i8] c"t13"
@"$stringlit_3042" = unnamed_addr constant [5 x i8] c"key1a"
@"$f_m2_3046" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_3136" = unnamed_addr constant [29 x i8] c"Submap should have been empty"
@"$stringlit_3184" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m3_3263" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$stringlit_3286" = unnamed_addr constant [3 x i8] c"t14"
@"$f_m3_3287" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$f_m_3385" = unnamed_addr constant [4 x i8] c"f_m\00"
@"$stringlit_3408" = unnamed_addr constant [3 x i8] c"t15"
@"$f_m3_3409" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$stringlit_3487" = unnamed_addr constant [22 x i8] c"Incorrect size of f_m3"
@"$stringlit_3507" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_3518" = unnamed_addr constant [5 x i8] c"key2a"
@"$stringlit_3685" = unnamed_addr constant [36 x i8] c"Incorrect size of f_m3[key1a][key2a]"
@"$stringlit_3707" = unnamed_addr constant [19 x i8] c"Unexpected empty m1"
@"$stringlit_3729" = unnamed_addr constant [28 x i8] c"Incorrect size of f_m3[key1]"
@"$stringlit_3751" = unnamed_addr constant [19 x i8] c"Unexpected empty m2"
@"$stringlit_3771" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_3782" = unnamed_addr constant [5 x i8] c"key2b"
@"$stringlit_3793" = unnamed_addr constant [5 x i8] c"key1c"
@"$stringlit_3804" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_3815" = unnamed_addr constant [5 x i8] c"key1d"
@"$stringlit_3826" = unnamed_addr constant [5 x i8] c"key2d"
@"$stringlit_3837" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_3848" = unnamed_addr constant [3 x i8] c"421"
@"$stringlit_3859" = unnamed_addr constant [3 x i8] c"422"
@"$stringlit_3870" = unnamed_addr constant [3 x i8] c"423"
@"$f_m2_4113" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_4136" = unnamed_addr constant [3 x i8] c"t16"
@"$stringlit_4147" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_4158" = unnamed_addr constant [5 x i8] c"key2a"
@"$stringlit_4169" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_4180" = unnamed_addr constant [5 x i8] c"key2b"
@"$stringlit_4191" = unnamed_addr constant [5 x i8] c"key1c"
@"$stringlit_4202" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_4213" = unnamed_addr constant [5 x i8] c"key1d"
@"$stringlit_4224" = unnamed_addr constant [5 x i8] c"key2d"
@"$f_m2_4230" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m2_4249" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m2_4268" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m2_4287" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_4311" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_4322" = unnamed_addr constant [3 x i8] c"421"
@"$stringlit_4333" = unnamed_addr constant [3 x i8] c"422"
@"$stringlit_4344" = unnamed_addr constant [3 x i8] c"423"
@"$stringlit_4622" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_4633" = unnamed_addr constant [3 x i8] c"420"
@"$f_m1_4676" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_4699" = unnamed_addr constant [3 x i8] c"t17"
@"$stringlit_4710" = unnamed_addr constant [0 x i8] zeroinitializer
@"$f_m1_4714" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$f_m1_4759" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_4780" = unnamed_addr constant [3 x i8] c"t18"
@"$stringlit_4791" = unnamed_addr constant [0 x i8] zeroinitializer
@"$f_m1_4795" = unnamed_addr constant [5 x i8] c"f_m1\00"
@_tydescr_table = constant [23 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_65", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(String)_59", %_TyDescrTy_Typ* @"$TyDescr_Event_48", %_TyDescrTy_Typ* @"$TyDescr_Int64_30", %_TyDescrTy_Typ* @"$TyDescr_Addr_68", %_TyDescrTy_Typ* @"$TyDescr_Map_63", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_61", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_54", %_TyDescrTy_Typ* @"$TyDescr_Uint256_40", %_TyDescrTy_Typ* @"$TyDescr_Uint32_28", %_TyDescrTy_Typ* @"$TyDescr_Map_64", %_TyDescrTy_Typ* @"$TyDescr_Uint64_32", %_TyDescrTy_Typ* @"$TyDescr_Bnum_44", %_TyDescrTy_Typ* @"$TyDescr_Uint128_36", %_TyDescrTy_Typ* @"$TyDescr_Exception_50", %_TyDescrTy_Typ* @"$TyDescr_String_42", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(Map_(String)_(String))_58", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_60", %_TyDescrTy_Typ* @"$TyDescr_Int256_38", %_TyDescrTy_Typ* @"$TyDescr_Int128_34", %_TyDescrTy_Typ* @"$TyDescr_Bystr_52", %_TyDescrTy_Typ* @"$TyDescr_Message_46", %_TyDescrTy_Typ* @"$TyDescr_Int32_26"]
@_tydescr_table_length = constant i32 23
@"$pname__scilla_version_4840" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_4841" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_4842" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_4838"] [%"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_4840", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_28" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_4841", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_54" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_4842", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_44" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_4843" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4844" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4845" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t1_4846" = unnamed_addr constant [3 x %"$ParamDescr_4838"] [%"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4843", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_36" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4844", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4845", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }]
@"$tname_t1_4847" = unnamed_addr constant [2 x i8] c"t1"
@"$tpname__amount_4848" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4849" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4850" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t2_4851" = unnamed_addr constant [3 x %"$ParamDescr_4838"] [%"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4848", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_36" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4849", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4850", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }]
@"$tname_t2_4852" = unnamed_addr constant [2 x i8] c"t2"
@"$tpname__amount_4853" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4854" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4855" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t3_4856" = unnamed_addr constant [3 x %"$ParamDescr_4838"] [%"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4853", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_36" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4854", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4855", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }]
@"$tname_t3_4857" = unnamed_addr constant [2 x i8] c"t3"
@"$tpname__amount_4858" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4859" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4860" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t4_4861" = unnamed_addr constant [3 x %"$ParamDescr_4838"] [%"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4858", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_36" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4859", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4860", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }]
@"$tname_t4_4862" = unnamed_addr constant [2 x i8] c"t4"
@"$tpname__amount_4863" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4864" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4865" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t5_4866" = unnamed_addr constant [3 x %"$ParamDescr_4838"] [%"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4863", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_36" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4864", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4865", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }]
@"$tname_t5_4867" = unnamed_addr constant [2 x i8] c"t5"
@"$tpname__amount_4868" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4869" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4870" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t6_4871" = unnamed_addr constant [3 x %"$ParamDescr_4838"] [%"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4868", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_36" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4869", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4870", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }]
@"$tname_t6_4872" = unnamed_addr constant [2 x i8] c"t6"
@"$tpname__amount_4873" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4874" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4875" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t7_4876" = unnamed_addr constant [3 x %"$ParamDescr_4838"] [%"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4873", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_36" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4874", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4875", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }]
@"$tname_t7_4877" = unnamed_addr constant [2 x i8] c"t7"
@"$tpname__amount_4878" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4879" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4880" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t8_4881" = unnamed_addr constant [3 x %"$ParamDescr_4838"] [%"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4878", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_36" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4879", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4880", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }]
@"$tname_t8_4882" = unnamed_addr constant [2 x i8] c"t8"
@"$tpname__amount_4883" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4884" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4885" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t9_4886" = unnamed_addr constant [3 x %"$ParamDescr_4838"] [%"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4883", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_36" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4884", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4885", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }]
@"$tname_t9_4887" = unnamed_addr constant [2 x i8] c"t9"
@"$tpname__amount_4888" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4889" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4890" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t10_4891" = unnamed_addr constant [3 x %"$ParamDescr_4838"] [%"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4888", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_36" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4889", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4890", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }]
@"$tname_t10_4892" = unnamed_addr constant [3 x i8] c"t10"
@"$tpname__amount_4893" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4894" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4895" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t11_4896" = unnamed_addr constant [3 x %"$ParamDescr_4838"] [%"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4893", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_36" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4894", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4895", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }]
@"$tname_t11_4897" = unnamed_addr constant [3 x i8] c"t11"
@"$tpname__amount_4898" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4899" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4900" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t12_4901" = unnamed_addr constant [3 x %"$ParamDescr_4838"] [%"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4898", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_36" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4899", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4900", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }]
@"$tname_t12_4902" = unnamed_addr constant [3 x i8] c"t12"
@"$tpname__amount_4903" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4904" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4905" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t13_4906" = unnamed_addr constant [3 x %"$ParamDescr_4838"] [%"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4903", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_36" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4904", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4905", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }]
@"$tname_t13_4907" = unnamed_addr constant [3 x i8] c"t13"
@"$tpname__amount_4908" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4909" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4910" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t14_4911" = unnamed_addr constant [3 x %"$ParamDescr_4838"] [%"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4908", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_36" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4909", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4910", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }]
@"$tname_t14_4912" = unnamed_addr constant [3 x i8] c"t14"
@"$tpname__amount_4913" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4914" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4915" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t15_4916" = unnamed_addr constant [3 x %"$ParamDescr_4838"] [%"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4913", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_36" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4914", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4915", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }]
@"$tname_t15_4917" = unnamed_addr constant [3 x i8] c"t15"
@"$tpname__amount_4918" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4919" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4920" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t16_4921" = unnamed_addr constant [3 x %"$ParamDescr_4838"] [%"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4918", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_36" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4919", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4920", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }]
@"$tname_t16_4922" = unnamed_addr constant [3 x i8] c"t16"
@"$tpname__amount_4923" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4924" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4925" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t17_4926" = unnamed_addr constant [3 x %"$ParamDescr_4838"] [%"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4923", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_36" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4924", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4925", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }]
@"$tname_t17_4927" = unnamed_addr constant [3 x i8] c"t17"
@"$tpname__amount_4928" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4929" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4930" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t18_4931" = unnamed_addr constant [3 x %"$ParamDescr_4838"] [%"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4928", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_36" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4929", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }, %"$ParamDescr_4838" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4930", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_68" }]
@"$tname_t18_4932" = unnamed_addr constant [3 x i8] c"t18"
@_transition_parameters = constant [18 x %"$TransDescr_4839"] [%"$TransDescr_4839" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t1_4847", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4838"* getelementptr inbounds ([3 x %"$ParamDescr_4838"], [3 x %"$ParamDescr_4838"]* @"$tparams_t1_4846", i32 0, i32 0) }, %"$TransDescr_4839" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t2_4852", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4838"* getelementptr inbounds ([3 x %"$ParamDescr_4838"], [3 x %"$ParamDescr_4838"]* @"$tparams_t2_4851", i32 0, i32 0) }, %"$TransDescr_4839" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t3_4857", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4838"* getelementptr inbounds ([3 x %"$ParamDescr_4838"], [3 x %"$ParamDescr_4838"]* @"$tparams_t3_4856", i32 0, i32 0) }, %"$TransDescr_4839" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t4_4862", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4838"* getelementptr inbounds ([3 x %"$ParamDescr_4838"], [3 x %"$ParamDescr_4838"]* @"$tparams_t4_4861", i32 0, i32 0) }, %"$TransDescr_4839" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t5_4867", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4838"* getelementptr inbounds ([3 x %"$ParamDescr_4838"], [3 x %"$ParamDescr_4838"]* @"$tparams_t5_4866", i32 0, i32 0) }, %"$TransDescr_4839" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t6_4872", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4838"* getelementptr inbounds ([3 x %"$ParamDescr_4838"], [3 x %"$ParamDescr_4838"]* @"$tparams_t6_4871", i32 0, i32 0) }, %"$TransDescr_4839" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t7_4877", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4838"* getelementptr inbounds ([3 x %"$ParamDescr_4838"], [3 x %"$ParamDescr_4838"]* @"$tparams_t7_4876", i32 0, i32 0) }, %"$TransDescr_4839" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t8_4882", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4838"* getelementptr inbounds ([3 x %"$ParamDescr_4838"], [3 x %"$ParamDescr_4838"]* @"$tparams_t8_4881", i32 0, i32 0) }, %"$TransDescr_4839" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t9_4887", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4838"* getelementptr inbounds ([3 x %"$ParamDescr_4838"], [3 x %"$ParamDescr_4838"]* @"$tparams_t9_4886", i32 0, i32 0) }, %"$TransDescr_4839" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t10_4892", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4838"* getelementptr inbounds ([3 x %"$ParamDescr_4838"], [3 x %"$ParamDescr_4838"]* @"$tparams_t10_4891", i32 0, i32 0) }, %"$TransDescr_4839" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t11_4897", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4838"* getelementptr inbounds ([3 x %"$ParamDescr_4838"], [3 x %"$ParamDescr_4838"]* @"$tparams_t11_4896", i32 0, i32 0) }, %"$TransDescr_4839" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t12_4902", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4838"* getelementptr inbounds ([3 x %"$ParamDescr_4838"], [3 x %"$ParamDescr_4838"]* @"$tparams_t12_4901", i32 0, i32 0) }, %"$TransDescr_4839" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t13_4907", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4838"* getelementptr inbounds ([3 x %"$ParamDescr_4838"], [3 x %"$ParamDescr_4838"]* @"$tparams_t13_4906", i32 0, i32 0) }, %"$TransDescr_4839" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t14_4912", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4838"* getelementptr inbounds ([3 x %"$ParamDescr_4838"], [3 x %"$ParamDescr_4838"]* @"$tparams_t14_4911", i32 0, i32 0) }, %"$TransDescr_4839" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t15_4917", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4838"* getelementptr inbounds ([3 x %"$ParamDescr_4838"], [3 x %"$ParamDescr_4838"]* @"$tparams_t15_4916", i32 0, i32 0) }, %"$TransDescr_4839" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t16_4922", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4838"* getelementptr inbounds ([3 x %"$ParamDescr_4838"], [3 x %"$ParamDescr_4838"]* @"$tparams_t16_4921", i32 0, i32 0) }, %"$TransDescr_4839" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t17_4927", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4838"* getelementptr inbounds ([3 x %"$ParamDescr_4838"], [3 x %"$ParamDescr_4838"]* @"$tparams_t17_4926", i32 0, i32 0) }, %"$TransDescr_4839" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t18_4932", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4838"* getelementptr inbounds ([3 x %"$ParamDescr_4838"], [3 x %"$ParamDescr_4838"]* @"$tparams_t18_4931", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 18

define internal %TName_Bool* @"$fundef_17"(%"$$fundef_17_env_115"* %0, %TName_Bool* %1, %TName_Bool* %2) {
entry:
  %"$retval_18" = alloca %TName_Bool*, align 8
  %"$gasrem_116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_117" = icmp ugt i64 2, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %entry
  %"$consume_120" = sub i64 %"$gasrem_116", 2
  store i64 %"$consume_120", i64* @_gasrem, align 8
  %"$b_tag_122" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b_tag_123" = load i8, i8* %"$b_tag_122", align 1
  switch i8 %"$b_tag_123", label %"$empty_default_124" [
    i8 1, label %"$False_125"
    i8 0, label %"$True_135"
  ]

"$False_125":                                     ; preds = %"$have_gas_119"
  %"$b_126" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_128" = icmp ugt i64 1, %"$gasrem_127"
  br i1 %"$gascmp_128", label %"$out_of_gas_129", label %"$have_gas_130"

"$out_of_gas_129":                                ; preds = %"$False_125"
  call void @_out_of_gas()
  br label %"$have_gas_130"

"$have_gas_130":                                  ; preds = %"$out_of_gas_129", %"$False_125"
  %"$consume_131" = sub i64 %"$gasrem_127", 1
  store i64 %"$consume_131", i64* @_gasrem, align 8
  %"$adtval_132_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_132_salloc" = call i8* @_salloc(i8* %"$adtval_132_load", i64 1)
  %"$adtval_132" = bitcast i8* %"$adtval_132_salloc" to %CName_False*
  %"$adtgep_133" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_132", i32 0, i32 0
  store i8 1, i8* %"$adtgep_133", align 1
  %"$adtptr_134" = bitcast %CName_False* %"$adtval_132" to %TName_Bool*
  store %TName_Bool* %"$adtptr_134", %TName_Bool** %"$retval_18", align 8
  br label %"$matchsucc_121"

"$True_135":                                      ; preds = %"$have_gas_119"
  %"$b_136" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_138" = icmp ugt i64 1, %"$gasrem_137"
  br i1 %"$gascmp_138", label %"$out_of_gas_139", label %"$have_gas_140"

"$out_of_gas_139":                                ; preds = %"$True_135"
  call void @_out_of_gas()
  br label %"$have_gas_140"

"$have_gas_140":                                  ; preds = %"$out_of_gas_139", %"$True_135"
  %"$consume_141" = sub i64 %"$gasrem_137", 1
  store i64 %"$consume_141", i64* @_gasrem, align 8
  store %TName_Bool* %2, %TName_Bool** %"$retval_18", align 8
  br label %"$matchsucc_121"

"$empty_default_124":                             ; preds = %"$have_gas_119"
  br label %"$matchsucc_121"

"$matchsucc_121":                                 ; preds = %"$have_gas_140", %"$have_gas_130", %"$empty_default_124"
  %"$$retval_18_142" = load %TName_Bool*, %TName_Bool** %"$retval_18", align 8
  ret %TName_Bool* %"$$retval_18_142"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 2, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %entry
  %"$consume_147" = sub i64 %"$gasrem_143", 2
  store i64 %"$consume_147", i64* @_gasrem, align 8
  store { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_17_env_115"*, %TName_Bool*, %TName_Bool*)* @"$fundef_17" to %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*), i8* null }, { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  ret void
}

define void @_init_state() {
entry:
  %"$f_s1_19" = alloca %String, align 8
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 1, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %entry
  %"$consume_155" = sub i64 %"$gasrem_151", 1
  store i64 %"$consume_155", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_156", i32 0, i32 0), i32 3 }, %String* %"$f_s1_19", align 8
  %"$execptr_load_157" = load i8*, i8** @_execptr, align 8
  %"$$f_s1_19_159" = load %String, %String* %"$f_s1_19", align 8
  %"$update_value_160" = alloca %String, align 8
  store %String %"$$f_s1_19_159", %String* %"$update_value_160", align 8
  %"$update_value_161" = bitcast %String* %"$update_value_160" to i8*
  call void @_update_field(i8* %"$execptr_load_157", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_158", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_42", i32 0, i8* null, i8* %"$update_value_161")
  %"$f_m1_20" = alloca %Map_String_String*, align 8
  %"$gasrem_162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_163" = icmp ugt i64 1, %"$gasrem_162"
  br i1 %"$gascmp_163", label %"$out_of_gas_164", label %"$have_gas_165"

"$out_of_gas_164":                                ; preds = %"$have_gas_154"
  call void @_out_of_gas()
  br label %"$have_gas_165"

"$have_gas_165":                                  ; preds = %"$out_of_gas_164", %"$have_gas_154"
  %"$consume_166" = sub i64 %"$gasrem_162", 1
  store i64 %"$consume_166", i64* @_gasrem, align 8
  %"$execptr_load_167" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_168" = call i8* @_new_empty_map(i8* %"$execptr_load_167")
  %"$_new_empty_map_169" = bitcast i8* %"$_new_empty_map_call_168" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_169", %Map_String_String** %"$f_m1_20", align 8
  %"$execptr_load_170" = load i8*, i8** @_execptr, align 8
  %"$$f_m1_20_172" = load %Map_String_String*, %Map_String_String** %"$f_m1_20", align 8
  %"$update_value_173" = bitcast %Map_String_String* %"$$f_m1_20_172" to i8*
  call void @_update_field(i8* %"$execptr_load_170", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_171", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_65", i32 0, i8* null, i8* %"$update_value_173")
  %"$f_m2_21" = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %"$have_gas_165"
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %"$have_gas_165"
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem, align 8
  %"$execptr_load_179" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_180" = call i8* @_new_empty_map(i8* %"$execptr_load_179")
  %"$_new_empty_map_181" = bitcast i8* %"$_new_empty_map_call_180" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_181", %"Map_String_Map_(String)_(String)"** %"$f_m2_21", align 8
  %"$execptr_load_182" = load i8*, i8** @_execptr, align 8
  %"$$f_m2_21_184" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %"$f_m2_21", align 8
  %"$update_value_185" = bitcast %"Map_String_Map_(String)_(String)"* %"$$f_m2_21_184" to i8*
  call void @_update_field(i8* %"$execptr_load_182", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_183", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 0, i8* null, i8* %"$update_value_185")
  %"$f_m3_22" = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*, align 8
  %"$gasrem_186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_187" = icmp ugt i64 1, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %"$have_gas_177"
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %"$have_gas_177"
  %"$consume_190" = sub i64 %"$gasrem_186", 1
  store i64 %"$consume_190", i64* @_gasrem, align 8
  %"$execptr_load_191" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_192" = call i8* @_new_empty_map(i8* %"$execptr_load_191")
  %"$_new_empty_map_193" = bitcast i8* %"$_new_empty_map_call_192" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$_new_empty_map_193", %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$f_m3_22", align 8
  %"$execptr_load_194" = load i8*, i8** @_execptr, align 8
  %"$$f_m3_22_196" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$f_m3_22", align 8
  %"$update_value_197" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$f_m3_22_196" to i8*
  call void @_update_field(i8* %"$execptr_load_194", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_195", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_63", i32 0, i8* null, i8* %"$update_value_197")
  %"$f_m_23" = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_199" = icmp ugt i64 1, %"$gasrem_198"
  br i1 %"$gascmp_199", label %"$out_of_gas_200", label %"$have_gas_201"

"$out_of_gas_200":                                ; preds = %"$have_gas_189"
  call void @_out_of_gas()
  br label %"$have_gas_201"

"$have_gas_201":                                  ; preds = %"$out_of_gas_200", %"$have_gas_189"
  %"$consume_202" = sub i64 %"$gasrem_198", 1
  store i64 %"$consume_202", i64* @_gasrem, align 8
  %"$execptr_load_203" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_204" = call i8* @_new_empty_map(i8* %"$execptr_load_203")
  %"$_new_empty_map_205" = bitcast i8* %"$_new_empty_map_call_204" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_205", %"Map_String_Map_(String)_(String)"** %"$f_m_23", align 8
  %"$execptr_load_206" = load i8*, i8** @_execptr, align 8
  %"$$f_m_23_208" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %"$f_m_23", align 8
  %"$update_value_209" = bitcast %"Map_String_Map_(String)_(String)"* %"$$f_m_23_208" to i8*
  call void @_update_field(i8* %"$execptr_load_206", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$f_m_207", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 0, i8* null, i8* %"$update_value_209")
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

declare i8* @_new_empty_map(i8*)

define internal void @"$fail_210"(%Uint128 %_amount, [20 x i8]* %"$_origin_211", [20 x i8]* %"$_sender_212", %String %tname) {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_211", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_212", align 1
  %"$gasrem_213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_214" = icmp ugt i64 1, %"$gasrem_213"
  br i1 %"$gascmp_214", label %"$out_of_gas_215", label %"$have_gas_216"

"$out_of_gas_215":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_216"

"$have_gas_216":                                  ; preds = %"$out_of_gas_215", %entry
  %"$consume_217" = sub i64 %"$gasrem_213", 1
  store i64 %"$consume_217", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_219" = icmp ugt i64 1, %"$gasrem_218"
  br i1 %"$gascmp_219", label %"$out_of_gas_220", label %"$have_gas_221"

"$out_of_gas_220":                                ; preds = %"$have_gas_216"
  call void @_out_of_gas()
  br label %"$have_gas_221"

"$have_gas_221":                                  ; preds = %"$out_of_gas_220", %"$have_gas_216"
  %"$consume_222" = sub i64 %"$gasrem_218", 1
  store i64 %"$consume_222", i64* @_gasrem, align 8
  %"$msgobj_223_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_223_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_223_salloc_load", i64 81)
  %"$msgobj_223_salloc" = bitcast i8* %"$msgobj_223_salloc_salloc" to [81 x i8]*
  %"$msgobj_223" = bitcast [81 x i8]* %"$msgobj_223_salloc" to i8*
  store i8 2, i8* %"$msgobj_223", align 1
  %"$msgobj_fname_225" = getelementptr i8, i8* %"$msgobj_223", i32 1
  %"$msgobj_fname_226" = bitcast i8* %"$msgobj_fname_225" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_224", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_226", align 8
  %"$msgobj_td_227" = getelementptr i8, i8* %"$msgobj_223", i32 17
  %"$msgobj_td_228" = bitcast i8* %"$msgobj_td_227" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_42", %_TyDescrTy_Typ** %"$msgobj_td_228", align 8
  %"$msgobj_v_230" = getelementptr i8, i8* %"$msgobj_223", i32 25
  %"$msgobj_v_231" = bitcast i8* %"$msgobj_v_230" to %String*
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_229", i32 0, i32 0), i32 11 }, %String* %"$msgobj_v_231", align 8
  %"$msgobj_fname_233" = getelementptr i8, i8* %"$msgobj_223", i32 41
  %"$msgobj_fname_234" = bitcast i8* %"$msgobj_fname_233" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_232", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_234", align 8
  %"$msgobj_td_235" = getelementptr i8, i8* %"$msgobj_223", i32 57
  %"$msgobj_td_236" = bitcast i8* %"$msgobj_td_235" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_42", %_TyDescrTy_Typ** %"$msgobj_td_236", align 8
  %"$msgobj_v_237" = getelementptr i8, i8* %"$msgobj_223", i32 65
  %"$msgobj_v_238" = bitcast i8* %"$msgobj_v_237" to %String*
  store %String %tname, %String* %"$msgobj_v_238", align 8
  store i8* %"$msgobj_223", i8** %e, align 8
  %"$e_240" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_242" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_50", i8* %"$e_240")
  %"$gasrem_243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_244" = icmp ugt i64 %"$_literal_cost_call_242", %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %"$have_gas_221"
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %"$have_gas_221"
  %"$consume_247" = sub i64 %"$gasrem_243", %"$_literal_cost_call_242"
  store i64 %"$consume_247", i64* @_gasrem, align 8
  %"$execptr_load_248" = load i8*, i8** @_execptr, align 8
  %"$e_249" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_248", %_TyDescrTy_Typ* @"$TyDescr_Exception_50", i8* %"$e_249")
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$_origin_251", [20 x i8]* %"$_sender_252", %String %tname, %String %msg) {
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
  %"$msgobj_263_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_263_salloc_load", i64 121)
  %"$msgobj_263_salloc" = bitcast i8* %"$msgobj_263_salloc_salloc" to [121 x i8]*
  %"$msgobj_263" = bitcast [121 x i8]* %"$msgobj_263_salloc" to i8*
  store i8 3, i8* %"$msgobj_263", align 1
  %"$msgobj_fname_265" = getelementptr i8, i8* %"$msgobj_263", i32 1
  %"$msgobj_fname_266" = bitcast i8* %"$msgobj_fname_265" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_264", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_266", align 8
  %"$msgobj_td_267" = getelementptr i8, i8* %"$msgobj_263", i32 17
  %"$msgobj_td_268" = bitcast i8* %"$msgobj_td_267" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_42", %_TyDescrTy_Typ** %"$msgobj_td_268", align 8
  %"$msgobj_v_270" = getelementptr i8, i8* %"$msgobj_263", i32 25
  %"$msgobj_v_271" = bitcast i8* %"$msgobj_v_270" to %String*
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_269", i32 0, i32 0), i32 11 }, %String* %"$msgobj_v_271", align 8
  %"$msgobj_fname_273" = getelementptr i8, i8* %"$msgobj_263", i32 41
  %"$msgobj_fname_274" = bitcast i8* %"$msgobj_fname_273" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_272", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_274", align 8
  %"$msgobj_td_275" = getelementptr i8, i8* %"$msgobj_263", i32 57
  %"$msgobj_td_276" = bitcast i8* %"$msgobj_td_275" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_42", %_TyDescrTy_Typ** %"$msgobj_td_276", align 8
  %"$msgobj_v_277" = getelementptr i8, i8* %"$msgobj_263", i32 65
  %"$msgobj_v_278" = bitcast i8* %"$msgobj_v_277" to %String*
  store %String %tname, %String* %"$msgobj_v_278", align 8
  %"$msgobj_fname_280" = getelementptr i8, i8* %"$msgobj_263", i32 81
  %"$msgobj_fname_281" = bitcast i8* %"$msgobj_fname_280" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_279", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_281", align 8
  %"$msgobj_td_282" = getelementptr i8, i8* %"$msgobj_263", i32 97
  %"$msgobj_td_283" = bitcast i8* %"$msgobj_td_282" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_42", %_TyDescrTy_Typ** %"$msgobj_td_283", align 8
  %"$msgobj_v_284" = getelementptr i8, i8* %"$msgobj_263", i32 105
  %"$msgobj_v_285" = bitcast i8* %"$msgobj_v_284" to %String*
  store %String %msg, %String* %"$msgobj_v_285", align 8
  store i8* %"$msgobj_263", i8** %e, align 8
  %"$e_287" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_289" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_50", i8* %"$e_287")
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 %"$_literal_cost_call_289", %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %"$have_gas_261"
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %"$have_gas_261"
  %"$consume_294" = sub i64 %"$gasrem_290", %"$_literal_cost_call_289"
  store i64 %"$consume_294", i64* @_gasrem, align 8
  %"$execptr_load_295" = load i8*, i8** @_execptr, align 8
  %"$e_296" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_295", %_TyDescrTy_Typ* @"$TyDescr_Exception_50", i8* %"$e_296")
  ret void
}

define internal void @"$t1_297"(%Uint128 %_amount, [20 x i8]* %"$_origin_298", [20 x i8]* %"$_sender_299") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_298", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_299", align 1
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %entry
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_306" = icmp ugt i64 1, %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %"$have_gas_303"
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %"$have_gas_303"
  %"$consume_309" = sub i64 %"$gasrem_305", 1
  store i64 %"$consume_309", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_310", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %f = alloca %String, align 8
  %"$execptr_load_312" = load i8*, i8** @_execptr, align 8
  %"$f_call_313" = call i8* @_fetch_field(i8* %"$execptr_load_312", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_311", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_42", i32 0, i8* null, i32 1)
  %"$f_314" = bitcast i8* %"$f_call_313" to %String*
  %"$f_315" = load %String, %String* %"$f_314", align 8
  store %String %"$f_315", %String* %f, align 8
  %"$_literal_cost_f_316" = alloca %String, align 8
  %"$f_317" = load %String, %String* %f, align 8
  store %String %"$f_317", %String* %"$_literal_cost_f_316", align 8
  %"$$_literal_cost_f_316_318" = bitcast %String* %"$_literal_cost_f_316" to i8*
  %"$_literal_cost_call_319" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_f_316_318")
  %"$gasadd_320" = add i64 %"$_literal_cost_call_319", 0
  %"$gasrem_321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_322" = icmp ugt i64 %"$gasadd_320", %"$gasrem_321"
  br i1 %"$gascmp_322", label %"$out_of_gas_323", label %"$have_gas_324"

"$out_of_gas_323":                                ; preds = %"$have_gas_308"
  call void @_out_of_gas()
  br label %"$have_gas_324"

"$have_gas_324":                                  ; preds = %"$out_of_gas_323", %"$have_gas_308"
  %"$consume_325" = sub i64 %"$gasrem_321", %"$gasadd_320"
  store i64 %"$consume_325", i64* @_gasrem, align 8
  %"$gasrem_326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_327" = icmp ugt i64 1, %"$gasrem_326"
  br i1 %"$gascmp_327", label %"$out_of_gas_328", label %"$have_gas_329"

"$out_of_gas_328":                                ; preds = %"$have_gas_324"
  call void @_out_of_gas()
  br label %"$have_gas_329"

"$have_gas_329":                                  ; preds = %"$out_of_gas_328", %"$have_gas_324"
  %"$consume_330" = sub i64 %"$gasrem_326", 1
  store i64 %"$consume_330", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_332" = icmp ugt i64 1, %"$gasrem_331"
  br i1 %"$gascmp_332", label %"$out_of_gas_333", label %"$have_gas_334"

"$out_of_gas_333":                                ; preds = %"$have_gas_329"
  call void @_out_of_gas()
  br label %"$have_gas_334"

"$have_gas_334":                                  ; preds = %"$out_of_gas_333", %"$have_gas_329"
  %"$consume_335" = sub i64 %"$gasrem_331", 1
  store i64 %"$consume_335", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_336", i32 0, i32 0), i32 3 }, %String* %s, align 8
  %"$gasrem_337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_338" = icmp ugt i64 1, %"$gasrem_337"
  br i1 %"$gascmp_338", label %"$out_of_gas_339", label %"$have_gas_340"

"$out_of_gas_339":                                ; preds = %"$have_gas_334"
  call void @_out_of_gas()
  br label %"$have_gas_340"

"$have_gas_340":                                  ; preds = %"$out_of_gas_339", %"$have_gas_334"
  %"$consume_341" = sub i64 %"$gasrem_337", 1
  store i64 %"$consume_341", i64* @_gasrem, align 8
  %t = alloca %TName_Bool*, align 8
  %"$_literal_cost_f_342" = alloca %String, align 8
  %"$f_343" = load %String, %String* %f, align 8
  store %String %"$f_343", %String* %"$_literal_cost_f_342", align 8
  %"$$_literal_cost_f_342_344" = bitcast %String* %"$_literal_cost_f_342" to i8*
  %"$_literal_cost_call_345" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_f_342_344")
  %"$_literal_cost_s_346" = alloca %String, align 8
  %"$s_347" = load %String, %String* %s, align 8
  store %String %"$s_347", %String* %"$_literal_cost_s_346", align 8
  %"$$_literal_cost_s_346_348" = bitcast %String* %"$_literal_cost_s_346" to i8*
  %"$_literal_cost_call_349" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_s_346_348")
  %"$gasmin_350" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_345", i64 %"$_literal_cost_call_349")
  %"$gasrem_351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_352" = icmp ugt i64 %"$gasmin_350", %"$gasrem_351"
  br i1 %"$gascmp_352", label %"$out_of_gas_353", label %"$have_gas_354"

"$out_of_gas_353":                                ; preds = %"$have_gas_340"
  call void @_out_of_gas()
  br label %"$have_gas_354"

"$have_gas_354":                                  ; preds = %"$out_of_gas_353", %"$have_gas_340"
  %"$consume_355" = sub i64 %"$gasrem_351", %"$gasmin_350"
  store i64 %"$consume_355", i64* @_gasrem, align 8
  %"$execptr_load_356" = load i8*, i8** @_execptr, align 8
  %"$f_357" = load %String, %String* %f, align 8
  %"$s_358" = load %String, %String* %s, align 8
  %"$eq_call_359" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_356", %String %"$f_357", %String %"$s_358")
  store %TName_Bool* %"$eq_call_359", %TName_Bool** %t, align 8
  %"$gasrem_361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_362" = icmp ugt i64 2, %"$gasrem_361"
  br i1 %"$gascmp_362", label %"$out_of_gas_363", label %"$have_gas_364"

"$out_of_gas_363":                                ; preds = %"$have_gas_354"
  call void @_out_of_gas()
  br label %"$have_gas_364"

"$have_gas_364":                                  ; preds = %"$out_of_gas_363", %"$have_gas_354"
  %"$consume_365" = sub i64 %"$gasrem_361", 2
  store i64 %"$consume_365", i64* @_gasrem, align 8
  %"$t_367" = load %TName_Bool*, %TName_Bool** %t, align 8
  %"$t_tag_368" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_367", i32 0, i32 0
  %"$t_tag_369" = load i8, i8* %"$t_tag_368", align 1
  switch i8 %"$t_tag_369", label %"$empty_default_370" [
    i8 1, label %"$False_371"
    i8 0, label %"$True_381"
  ]

"$False_371":                                     ; preds = %"$have_gas_364"
  %"$t_372" = bitcast %TName_Bool* %"$t_367" to %CName_False*
  %"$gasrem_373" = load i64, i64* @_gasrem, align 8
  %"$gascmp_374" = icmp ugt i64 1, %"$gasrem_373"
  br i1 %"$gascmp_374", label %"$out_of_gas_375", label %"$have_gas_376"

"$out_of_gas_375":                                ; preds = %"$False_371"
  call void @_out_of_gas()
  br label %"$have_gas_376"

"$have_gas_376":                                  ; preds = %"$out_of_gas_375", %"$False_371"
  %"$consume_377" = sub i64 %"$gasrem_373", 1
  store i64 %"$consume_377", i64* @_gasrem, align 8
  %"$fail__origin_378" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_378", align 1
  %"$fail__sender_379" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_379", align 1
  %"$tname_380" = load %String, %String* %tname, align 8
  call void @"$fail_210"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_378", [20 x i8]* %"$fail__sender_379", %String %"$tname_380")
  br label %"$matchsucc_366"

"$True_381":                                      ; preds = %"$have_gas_364"
  %"$t_382" = bitcast %TName_Bool* %"$t_367" to %CName_True*
  br label %"$matchsucc_366"

"$empty_default_370":                             ; preds = %"$have_gas_364"
  br label %"$matchsucc_366"

"$matchsucc_366":                                 ; preds = %"$True_381", %"$have_gas_376", %"$empty_default_370"
  %"$gasrem_383" = load i64, i64* @_gasrem, align 8
  %"$gascmp_384" = icmp ugt i64 1, %"$gasrem_383"
  br i1 %"$gascmp_384", label %"$out_of_gas_385", label %"$have_gas_386"

"$out_of_gas_385":                                ; preds = %"$matchsucc_366"
  call void @_out_of_gas()
  br label %"$have_gas_386"

"$have_gas_386":                                  ; preds = %"$out_of_gas_385", %"$matchsucc_366"
  %"$consume_387" = sub i64 %"$gasrem_383", 1
  store i64 %"$consume_387", i64* @_gasrem, align 8
  %s2 = alloca %String, align 8
  %"$gasrem_388" = load i64, i64* @_gasrem, align 8
  %"$gascmp_389" = icmp ugt i64 1, %"$gasrem_388"
  br i1 %"$gascmp_389", label %"$out_of_gas_390", label %"$have_gas_391"

"$out_of_gas_390":                                ; preds = %"$have_gas_386"
  call void @_out_of_gas()
  br label %"$have_gas_391"

"$have_gas_391":                                  ; preds = %"$out_of_gas_390", %"$have_gas_386"
  %"$consume_392" = sub i64 %"$gasrem_388", 1
  store i64 %"$consume_392", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_393", i32 0, i32 0), i32 3 }, %String* %s2, align 8
  %"$_literal_cost_s2_394" = alloca %String, align 8
  %"$s2_395" = load %String, %String* %s2, align 8
  store %String %"$s2_395", %String* %"$_literal_cost_s2_394", align 8
  %"$$_literal_cost_s2_394_396" = bitcast %String* %"$_literal_cost_s2_394" to i8*
  %"$_literal_cost_call_397" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_s2_394_396")
  %"$gasrem_398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_399" = icmp ugt i64 %"$_literal_cost_call_397", %"$gasrem_398"
  br i1 %"$gascmp_399", label %"$out_of_gas_400", label %"$have_gas_401"

"$out_of_gas_400":                                ; preds = %"$have_gas_391"
  call void @_out_of_gas()
  br label %"$have_gas_401"

"$have_gas_401":                                  ; preds = %"$out_of_gas_400", %"$have_gas_391"
  %"$consume_402" = sub i64 %"$gasrem_398", %"$_literal_cost_call_397"
  store i64 %"$consume_402", i64* @_gasrem, align 8
  %"$execptr_load_403" = load i8*, i8** @_execptr, align 8
  %"$s2_405" = load %String, %String* %s2, align 8
  %"$update_value_406" = alloca %String, align 8
  store %String %"$s2_405", %String* %"$update_value_406", align 8
  %"$update_value_407" = bitcast %String* %"$update_value_406" to i8*
  call void @_update_field(i8* %"$execptr_load_403", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_404", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_42", i32 0, i8* null, i8* %"$update_value_407")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #0

declare %TName_Bool* @_eq_String(i8*, %String, %String)

define void @t1(i8* %0) {
entry:
  %"$_amount_409" = getelementptr i8, i8* %0, i32 0
  %"$_amount_410" = bitcast i8* %"$_amount_409" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_410", align 8
  %"$_origin_411" = getelementptr i8, i8* %0, i32 16
  %"$_origin_412" = bitcast i8* %"$_origin_411" to [20 x i8]*
  %"$_sender_413" = getelementptr i8, i8* %0, i32 36
  %"$_sender_414" = bitcast i8* %"$_sender_413" to [20 x i8]*
  call void @"$t1_297"(%Uint128 %_amount, [20 x i8]* %"$_origin_412", [20 x i8]* %"$_sender_414")
  ret void
}

define internal void @"$t2_415"(%Uint128 %_amount, [20 x i8]* %"$_origin_416", [20 x i8]* %"$_sender_417") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_416", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_417", align 1
  %"$gasrem_418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_419" = icmp ugt i64 1, %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %entry
  %"$consume_422" = sub i64 %"$gasrem_418", 1
  store i64 %"$consume_422", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_424" = icmp ugt i64 1, %"$gasrem_423"
  br i1 %"$gascmp_424", label %"$out_of_gas_425", label %"$have_gas_426"

"$out_of_gas_425":                                ; preds = %"$have_gas_421"
  call void @_out_of_gas()
  br label %"$have_gas_426"

"$have_gas_426":                                  ; preds = %"$out_of_gas_425", %"$have_gas_421"
  %"$consume_427" = sub i64 %"$gasrem_423", 1
  store i64 %"$consume_427", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_428", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %f = alloca %String, align 8
  %"$execptr_load_430" = load i8*, i8** @_execptr, align 8
  %"$f_call_431" = call i8* @_fetch_field(i8* %"$execptr_load_430", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_429", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_42", i32 0, i8* null, i32 1)
  %"$f_432" = bitcast i8* %"$f_call_431" to %String*
  %"$f_433" = load %String, %String* %"$f_432", align 8
  store %String %"$f_433", %String* %f, align 8
  %"$_literal_cost_f_434" = alloca %String, align 8
  %"$f_435" = load %String, %String* %f, align 8
  store %String %"$f_435", %String* %"$_literal_cost_f_434", align 8
  %"$$_literal_cost_f_434_436" = bitcast %String* %"$_literal_cost_f_434" to i8*
  %"$_literal_cost_call_437" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_f_434_436")
  %"$gasadd_438" = add i64 %"$_literal_cost_call_437", 0
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 %"$gasadd_438", %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_426"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_426"
  %"$consume_443" = sub i64 %"$gasrem_439", %"$gasadd_438"
  store i64 %"$consume_443", i64* @_gasrem, align 8
  %"$gasrem_444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_445" = icmp ugt i64 1, %"$gasrem_444"
  br i1 %"$gascmp_445", label %"$out_of_gas_446", label %"$have_gas_447"

"$out_of_gas_446":                                ; preds = %"$have_gas_442"
  call void @_out_of_gas()
  br label %"$have_gas_447"

"$have_gas_447":                                  ; preds = %"$out_of_gas_446", %"$have_gas_442"
  %"$consume_448" = sub i64 %"$gasrem_444", 1
  store i64 %"$consume_448", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_450" = icmp ugt i64 1, %"$gasrem_449"
  br i1 %"$gascmp_450", label %"$out_of_gas_451", label %"$have_gas_452"

"$out_of_gas_451":                                ; preds = %"$have_gas_447"
  call void @_out_of_gas()
  br label %"$have_gas_452"

"$have_gas_452":                                  ; preds = %"$out_of_gas_451", %"$have_gas_447"
  %"$consume_453" = sub i64 %"$gasrem_449", 1
  store i64 %"$consume_453", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_454", i32 0, i32 0), i32 3 }, %String* %s, align 8
  %"$gasrem_455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_456" = icmp ugt i64 1, %"$gasrem_455"
  br i1 %"$gascmp_456", label %"$out_of_gas_457", label %"$have_gas_458"

"$out_of_gas_457":                                ; preds = %"$have_gas_452"
  call void @_out_of_gas()
  br label %"$have_gas_458"

"$have_gas_458":                                  ; preds = %"$out_of_gas_457", %"$have_gas_452"
  %"$consume_459" = sub i64 %"$gasrem_455", 1
  store i64 %"$consume_459", i64* @_gasrem, align 8
  %t = alloca %TName_Bool*, align 8
  %"$_literal_cost_f_460" = alloca %String, align 8
  %"$f_461" = load %String, %String* %f, align 8
  store %String %"$f_461", %String* %"$_literal_cost_f_460", align 8
  %"$$_literal_cost_f_460_462" = bitcast %String* %"$_literal_cost_f_460" to i8*
  %"$_literal_cost_call_463" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_f_460_462")
  %"$_literal_cost_s_464" = alloca %String, align 8
  %"$s_465" = load %String, %String* %s, align 8
  store %String %"$s_465", %String* %"$_literal_cost_s_464", align 8
  %"$$_literal_cost_s_464_466" = bitcast %String* %"$_literal_cost_s_464" to i8*
  %"$_literal_cost_call_467" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_s_464_466")
  %"$gasmin_468" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_463", i64 %"$_literal_cost_call_467")
  %"$gasrem_469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_470" = icmp ugt i64 %"$gasmin_468", %"$gasrem_469"
  br i1 %"$gascmp_470", label %"$out_of_gas_471", label %"$have_gas_472"

"$out_of_gas_471":                                ; preds = %"$have_gas_458"
  call void @_out_of_gas()
  br label %"$have_gas_472"

"$have_gas_472":                                  ; preds = %"$out_of_gas_471", %"$have_gas_458"
  %"$consume_473" = sub i64 %"$gasrem_469", %"$gasmin_468"
  store i64 %"$consume_473", i64* @_gasrem, align 8
  %"$execptr_load_474" = load i8*, i8** @_execptr, align 8
  %"$f_475" = load %String, %String* %f, align 8
  %"$s_476" = load %String, %String* %s, align 8
  %"$eq_call_477" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_474", %String %"$f_475", %String %"$s_476")
  store %TName_Bool* %"$eq_call_477", %TName_Bool** %t, align 8
  %"$gasrem_479" = load i64, i64* @_gasrem, align 8
  %"$gascmp_480" = icmp ugt i64 2, %"$gasrem_479"
  br i1 %"$gascmp_480", label %"$out_of_gas_481", label %"$have_gas_482"

"$out_of_gas_481":                                ; preds = %"$have_gas_472"
  call void @_out_of_gas()
  br label %"$have_gas_482"

"$have_gas_482":                                  ; preds = %"$out_of_gas_481", %"$have_gas_472"
  %"$consume_483" = sub i64 %"$gasrem_479", 2
  store i64 %"$consume_483", i64* @_gasrem, align 8
  %"$t_485" = load %TName_Bool*, %TName_Bool** %t, align 8
  %"$t_tag_486" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_485", i32 0, i32 0
  %"$t_tag_487" = load i8, i8* %"$t_tag_486", align 1
  switch i8 %"$t_tag_487", label %"$empty_default_488" [
    i8 1, label %"$False_489"
    i8 0, label %"$True_499"
  ]

"$False_489":                                     ; preds = %"$have_gas_482"
  %"$t_490" = bitcast %TName_Bool* %"$t_485" to %CName_False*
  %"$gasrem_491" = load i64, i64* @_gasrem, align 8
  %"$gascmp_492" = icmp ugt i64 1, %"$gasrem_491"
  br i1 %"$gascmp_492", label %"$out_of_gas_493", label %"$have_gas_494"

"$out_of_gas_493":                                ; preds = %"$False_489"
  call void @_out_of_gas()
  br label %"$have_gas_494"

"$have_gas_494":                                  ; preds = %"$out_of_gas_493", %"$False_489"
  %"$consume_495" = sub i64 %"$gasrem_491", 1
  store i64 %"$consume_495", i64* @_gasrem, align 8
  %"$fail__origin_496" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_496", align 1
  %"$fail__sender_497" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_497", align 1
  %"$tname_498" = load %String, %String* %tname, align 8
  call void @"$fail_210"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_496", [20 x i8]* %"$fail__sender_497", %String %"$tname_498")
  br label %"$matchsucc_484"

"$True_499":                                      ; preds = %"$have_gas_482"
  %"$t_500" = bitcast %TName_Bool* %"$t_485" to %CName_True*
  br label %"$matchsucc_484"

"$empty_default_488":                             ; preds = %"$have_gas_482"
  br label %"$matchsucc_484"

"$matchsucc_484":                                 ; preds = %"$True_499", %"$have_gas_494", %"$empty_default_488"
  %"$gasrem_501" = load i64, i64* @_gasrem, align 8
  %"$gascmp_502" = icmp ugt i64 1, %"$gasrem_501"
  br i1 %"$gascmp_502", label %"$out_of_gas_503", label %"$have_gas_504"

"$out_of_gas_503":                                ; preds = %"$matchsucc_484"
  call void @_out_of_gas()
  br label %"$have_gas_504"

"$have_gas_504":                                  ; preds = %"$out_of_gas_503", %"$matchsucc_484"
  %"$consume_505" = sub i64 %"$gasrem_501", 1
  store i64 %"$consume_505", i64* @_gasrem, align 8
  %key1 = alloca %String, align 8
  %"$gasrem_506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_507" = icmp ugt i64 1, %"$gasrem_506"
  br i1 %"$gascmp_507", label %"$out_of_gas_508", label %"$have_gas_509"

"$out_of_gas_508":                                ; preds = %"$have_gas_504"
  call void @_out_of_gas()
  br label %"$have_gas_509"

"$have_gas_509":                                  ; preds = %"$out_of_gas_508", %"$have_gas_504"
  %"$consume_510" = sub i64 %"$gasrem_506", 1
  store i64 %"$consume_510", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_511", i32 0, i32 0), i32 4 }, %String* %key1, align 8
  %"$gasrem_512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_513" = icmp ugt i64 1, %"$gasrem_512"
  br i1 %"$gascmp_513", label %"$out_of_gas_514", label %"$have_gas_515"

"$out_of_gas_514":                                ; preds = %"$have_gas_509"
  call void @_out_of_gas()
  br label %"$have_gas_515"

"$have_gas_515":                                  ; preds = %"$out_of_gas_514", %"$have_gas_509"
  %"$consume_516" = sub i64 %"$gasrem_512", 1
  store i64 %"$consume_516", i64* @_gasrem, align 8
  %val1 = alloca %String, align 8
  %"$gasrem_517" = load i64, i64* @_gasrem, align 8
  %"$gascmp_518" = icmp ugt i64 1, %"$gasrem_517"
  br i1 %"$gascmp_518", label %"$out_of_gas_519", label %"$have_gas_520"

"$out_of_gas_519":                                ; preds = %"$have_gas_515"
  call void @_out_of_gas()
  br label %"$have_gas_520"

"$have_gas_520":                                  ; preds = %"$out_of_gas_519", %"$have_gas_515"
  %"$consume_521" = sub i64 %"$gasrem_517", 1
  store i64 %"$consume_521", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_522", i32 0, i32 0), i32 3 }, %String* %val1, align 8
  %"$_literal_cost_val1_523" = alloca %String, align 8
  %"$val1_524" = load %String, %String* %val1, align 8
  store %String %"$val1_524", %String* %"$_literal_cost_val1_523", align 8
  %"$$_literal_cost_val1_523_525" = bitcast %String* %"$_literal_cost_val1_523" to i8*
  %"$_literal_cost_call_526" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_val1_523_525")
  %"$gasadd_527" = add i64 %"$_literal_cost_call_526", 1
  %"$gasrem_528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_529" = icmp ugt i64 %"$gasadd_527", %"$gasrem_528"
  br i1 %"$gascmp_529", label %"$out_of_gas_530", label %"$have_gas_531"

"$out_of_gas_530":                                ; preds = %"$have_gas_520"
  call void @_out_of_gas()
  br label %"$have_gas_531"

"$have_gas_531":                                  ; preds = %"$out_of_gas_530", %"$have_gas_520"
  %"$consume_532" = sub i64 %"$gasrem_528", %"$gasadd_527"
  store i64 %"$consume_532", i64* @_gasrem, align 8
  %"$indices_buf_533_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_533_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_533_salloc_load", i64 16)
  %"$indices_buf_533_salloc" = bitcast i8* %"$indices_buf_533_salloc_salloc" to [16 x i8]*
  %"$indices_buf_533" = bitcast [16 x i8]* %"$indices_buf_533_salloc" to i8*
  %"$key1_534" = load %String, %String* %key1, align 8
  %"$indices_gep_535" = getelementptr i8, i8* %"$indices_buf_533", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_535" to %String*
  store %String %"$key1_534", %String* %indices_cast, align 8
  %"$execptr_load_536" = load i8*, i8** @_execptr, align 8
  %"$val1_538" = load %String, %String* %val1, align 8
  %"$update_value_539" = alloca %String, align 8
  store %String %"$val1_538", %String* %"$update_value_539", align 8
  %"$update_value_540" = bitcast %String* %"$update_value_539" to i8*
  call void @_update_field(i8* %"$execptr_load_536", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_537", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_65", i32 1, i8* %"$indices_buf_533", i8* %"$update_value_540")
  ret void
}

define void @t2(i8* %0) {
entry:
  %"$_amount_542" = getelementptr i8, i8* %0, i32 0
  %"$_amount_543" = bitcast i8* %"$_amount_542" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_543", align 8
  %"$_origin_544" = getelementptr i8, i8* %0, i32 16
  %"$_origin_545" = bitcast i8* %"$_origin_544" to [20 x i8]*
  %"$_sender_546" = getelementptr i8, i8* %0, i32 36
  %"$_sender_547" = bitcast i8* %"$_sender_546" to [20 x i8]*
  call void @"$t2_415"(%Uint128 %_amount, [20 x i8]* %"$_origin_545", [20 x i8]* %"$_sender_547")
  ret void
}

define internal void @"$t3_548"(%Uint128 %_amount, [20 x i8]* %"$_origin_549", [20 x i8]* %"$_sender_550") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_549", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_550", align 1
  %"$gasrem_551" = load i64, i64* @_gasrem, align 8
  %"$gascmp_552" = icmp ugt i64 1, %"$gasrem_551"
  br i1 %"$gascmp_552", label %"$out_of_gas_553", label %"$have_gas_554"

"$out_of_gas_553":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_554"

"$have_gas_554":                                  ; preds = %"$out_of_gas_553", %entry
  %"$consume_555" = sub i64 %"$gasrem_551", 1
  store i64 %"$consume_555", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_556" = load i64, i64* @_gasrem, align 8
  %"$gascmp_557" = icmp ugt i64 1, %"$gasrem_556"
  br i1 %"$gascmp_557", label %"$out_of_gas_558", label %"$have_gas_559"

"$out_of_gas_558":                                ; preds = %"$have_gas_554"
  call void @_out_of_gas()
  br label %"$have_gas_559"

"$have_gas_559":                                  ; preds = %"$out_of_gas_558", %"$have_gas_554"
  %"$consume_560" = sub i64 %"$gasrem_556", 1
  store i64 %"$consume_560", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_561", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %"$gasrem_562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_563" = icmp ugt i64 1, %"$gasrem_562"
  br i1 %"$gascmp_563", label %"$out_of_gas_564", label %"$have_gas_565"

"$out_of_gas_564":                                ; preds = %"$have_gas_559"
  call void @_out_of_gas()
  br label %"$have_gas_565"

"$have_gas_565":                                  ; preds = %"$out_of_gas_564", %"$have_gas_559"
  %"$consume_566" = sub i64 %"$gasrem_562", 1
  store i64 %"$consume_566", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_567" = load i64, i64* @_gasrem, align 8
  %"$gascmp_568" = icmp ugt i64 1, %"$gasrem_567"
  br i1 %"$gascmp_568", label %"$out_of_gas_569", label %"$have_gas_570"

"$out_of_gas_569":                                ; preds = %"$have_gas_565"
  call void @_out_of_gas()
  br label %"$have_gas_570"

"$have_gas_570":                                  ; preds = %"$out_of_gas_569", %"$have_gas_565"
  %"$consume_571" = sub i64 %"$gasrem_567", 1
  store i64 %"$consume_571", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_572", i32 0, i32 0), i32 3 }, %String* %s, align 8
  %"$gasrem_573" = load i64, i64* @_gasrem, align 8
  %"$gascmp_574" = icmp ugt i64 1, %"$gasrem_573"
  br i1 %"$gascmp_574", label %"$out_of_gas_575", label %"$have_gas_576"

"$out_of_gas_575":                                ; preds = %"$have_gas_570"
  call void @_out_of_gas()
  br label %"$have_gas_576"

"$have_gas_576":                                  ; preds = %"$out_of_gas_575", %"$have_gas_570"
  %"$consume_577" = sub i64 %"$gasrem_573", 1
  store i64 %"$consume_577", i64* @_gasrem, align 8
  %key1 = alloca %String, align 8
  %"$gasrem_578" = load i64, i64* @_gasrem, align 8
  %"$gascmp_579" = icmp ugt i64 1, %"$gasrem_578"
  br i1 %"$gascmp_579", label %"$out_of_gas_580", label %"$have_gas_581"

"$out_of_gas_580":                                ; preds = %"$have_gas_576"
  call void @_out_of_gas()
  br label %"$have_gas_581"

"$have_gas_581":                                  ; preds = %"$out_of_gas_580", %"$have_gas_576"
  %"$consume_582" = sub i64 %"$gasrem_578", 1
  store i64 %"$consume_582", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_583", i32 0, i32 0), i32 4 }, %String* %key1, align 8
  %val1 = alloca %TName_Option_String*, align 8
  %"$indices_buf_584_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_584_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_584_salloc_load", i64 16)
  %"$indices_buf_584_salloc" = bitcast i8* %"$indices_buf_584_salloc_salloc" to [16 x i8]*
  %"$indices_buf_584" = bitcast [16 x i8]* %"$indices_buf_584_salloc" to i8*
  %"$key1_585" = load %String, %String* %key1, align 8
  %"$indices_gep_586" = getelementptr i8, i8* %"$indices_buf_584", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_586" to %String*
  store %String %"$key1_585", %String* %indices_cast, align 8
  %"$execptr_load_588" = load i8*, i8** @_execptr, align 8
  %"$val1_call_589" = call i8* @_fetch_field(i8* %"$execptr_load_588", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_587", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_65", i32 1, i8* %"$indices_buf_584", i32 1)
  %"$val1_590" = bitcast i8* %"$val1_call_589" to %TName_Option_String*
  store %TName_Option_String* %"$val1_590", %TName_Option_String** %val1, align 8
  %"$val1_591" = load %TName_Option_String*, %TName_Option_String** %val1, align 8
  %"$$val1_591_592" = bitcast %TName_Option_String* %"$val1_591" to i8*
  %"$_literal_cost_call_593" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_60", i8* %"$$val1_591_592")
  %"$gasadd_594" = add i64 %"$_literal_cost_call_593", 0
  %"$gasadd_595" = add i64 %"$gasadd_594", 1
  %"$gasrem_596" = load i64, i64* @_gasrem, align 8
  %"$gascmp_597" = icmp ugt i64 %"$gasadd_595", %"$gasrem_596"
  br i1 %"$gascmp_597", label %"$out_of_gas_598", label %"$have_gas_599"

"$out_of_gas_598":                                ; preds = %"$have_gas_581"
  call void @_out_of_gas()
  br label %"$have_gas_599"

"$have_gas_599":                                  ; preds = %"$out_of_gas_598", %"$have_gas_581"
  %"$consume_600" = sub i64 %"$gasrem_596", %"$gasadd_595"
  store i64 %"$consume_600", i64* @_gasrem, align 8
  %"$gasrem_601" = load i64, i64* @_gasrem, align 8
  %"$gascmp_602" = icmp ugt i64 2, %"$gasrem_601"
  br i1 %"$gascmp_602", label %"$out_of_gas_603", label %"$have_gas_604"

"$out_of_gas_603":                                ; preds = %"$have_gas_599"
  call void @_out_of_gas()
  br label %"$have_gas_604"

"$have_gas_604":                                  ; preds = %"$out_of_gas_603", %"$have_gas_599"
  %"$consume_605" = sub i64 %"$gasrem_601", 2
  store i64 %"$consume_605", i64* @_gasrem, align 8
  %"$val1_607" = load %TName_Option_String*, %TName_Option_String** %val1, align 8
  %"$val1_tag_608" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$val1_607", i32 0, i32 0
  %"$val1_tag_609" = load i8, i8* %"$val1_tag_608", align 1
  switch i8 %"$val1_tag_609", label %"$empty_default_610" [
    i8 0, label %"$Some_611"
    i8 1, label %"$None_673"
  ]

"$Some_611":                                      ; preds = %"$have_gas_604"
  %"$val1_612" = bitcast %TName_Option_String* %"$val1_607" to %CName_Some_String*
  %"$val_gep_613" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$val1_612", i32 0, i32 1
  %"$val_load_614" = load %String, %String* %"$val_gep_613", align 8
  %val = alloca %String, align 8
  store %String %"$val_load_614", %String* %val, align 8
  %"$gasrem_615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_616" = icmp ugt i64 1, %"$gasrem_615"
  br i1 %"$gascmp_616", label %"$out_of_gas_617", label %"$have_gas_618"

"$out_of_gas_617":                                ; preds = %"$Some_611"
  call void @_out_of_gas()
  br label %"$have_gas_618"

"$have_gas_618":                                  ; preds = %"$out_of_gas_617", %"$Some_611"
  %"$consume_619" = sub i64 %"$gasrem_615", 1
  store i64 %"$consume_619", i64* @_gasrem, align 8
  %t = alloca %TName_Bool*, align 8
  %"$_literal_cost_val_620" = alloca %String, align 8
  %"$val_621" = load %String, %String* %val, align 8
  store %String %"$val_621", %String* %"$_literal_cost_val_620", align 8
  %"$$_literal_cost_val_620_622" = bitcast %String* %"$_literal_cost_val_620" to i8*
  %"$_literal_cost_call_623" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_val_620_622")
  %"$_literal_cost_s_624" = alloca %String, align 8
  %"$s_625" = load %String, %String* %s, align 8
  store %String %"$s_625", %String* %"$_literal_cost_s_624", align 8
  %"$$_literal_cost_s_624_626" = bitcast %String* %"$_literal_cost_s_624" to i8*
  %"$_literal_cost_call_627" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_s_624_626")
  %"$gasmin_628" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_623", i64 %"$_literal_cost_call_627")
  %"$gasrem_629" = load i64, i64* @_gasrem, align 8
  %"$gascmp_630" = icmp ugt i64 %"$gasmin_628", %"$gasrem_629"
  br i1 %"$gascmp_630", label %"$out_of_gas_631", label %"$have_gas_632"

"$out_of_gas_631":                                ; preds = %"$have_gas_618"
  call void @_out_of_gas()
  br label %"$have_gas_632"

"$have_gas_632":                                  ; preds = %"$out_of_gas_631", %"$have_gas_618"
  %"$consume_633" = sub i64 %"$gasrem_629", %"$gasmin_628"
  store i64 %"$consume_633", i64* @_gasrem, align 8
  %"$execptr_load_634" = load i8*, i8** @_execptr, align 8
  %"$val_635" = load %String, %String* %val, align 8
  %"$s_636" = load %String, %String* %s, align 8
  %"$eq_call_637" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_634", %String %"$val_635", %String %"$s_636")
  store %TName_Bool* %"$eq_call_637", %TName_Bool** %t, align 8
  %"$gasrem_639" = load i64, i64* @_gasrem, align 8
  %"$gascmp_640" = icmp ugt i64 2, %"$gasrem_639"
  br i1 %"$gascmp_640", label %"$out_of_gas_641", label %"$have_gas_642"

"$out_of_gas_641":                                ; preds = %"$have_gas_632"
  call void @_out_of_gas()
  br label %"$have_gas_642"

"$have_gas_642":                                  ; preds = %"$out_of_gas_641", %"$have_gas_632"
  %"$consume_643" = sub i64 %"$gasrem_639", 2
  store i64 %"$consume_643", i64* @_gasrem, align 8
  %"$t_645" = load %TName_Bool*, %TName_Bool** %t, align 8
  %"$t_tag_646" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_645", i32 0, i32 0
  %"$t_tag_647" = load i8, i8* %"$t_tag_646", align 1
  switch i8 %"$t_tag_647", label %"$empty_default_648" [
    i8 1, label %"$False_649"
    i8 0, label %"$True_671"
  ]

"$False_649":                                     ; preds = %"$have_gas_642"
  %"$t_650" = bitcast %TName_Bool* %"$t_645" to %CName_False*
  %"$gasrem_651" = load i64, i64* @_gasrem, align 8
  %"$gascmp_652" = icmp ugt i64 1, %"$gasrem_651"
  br i1 %"$gascmp_652", label %"$out_of_gas_653", label %"$have_gas_654"

"$out_of_gas_653":                                ; preds = %"$False_649"
  call void @_out_of_gas()
  br label %"$have_gas_654"

"$have_gas_654":                                  ; preds = %"$out_of_gas_653", %"$False_649"
  %"$consume_655" = sub i64 %"$gasrem_651", 1
  store i64 %"$consume_655", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_656" = load i64, i64* @_gasrem, align 8
  %"$gascmp_657" = icmp ugt i64 1, %"$gasrem_656"
  br i1 %"$gascmp_657", label %"$out_of_gas_658", label %"$have_gas_659"

"$out_of_gas_658":                                ; preds = %"$have_gas_654"
  call void @_out_of_gas()
  br label %"$have_gas_659"

"$have_gas_659":                                  ; preds = %"$out_of_gas_658", %"$have_gas_654"
  %"$consume_660" = sub i64 %"$gasrem_656", 1
  store i64 %"$consume_660", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$stringlit_661", i32 0, i32 0), i32 23 }, %String* %m, align 8
  %"$gasrem_662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_663" = icmp ugt i64 1, %"$gasrem_662"
  br i1 %"$gascmp_663", label %"$out_of_gas_664", label %"$have_gas_665"

"$out_of_gas_664":                                ; preds = %"$have_gas_659"
  call void @_out_of_gas()
  br label %"$have_gas_665"

"$have_gas_665":                                  ; preds = %"$out_of_gas_664", %"$have_gas_659"
  %"$consume_666" = sub i64 %"$gasrem_662", 1
  store i64 %"$consume_666", i64* @_gasrem, align 8
  %"$fail_msg__origin_667" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_667", align 1
  %"$fail_msg__sender_668" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_668", align 1
  %"$tname_669" = load %String, %String* %tname, align 8
  %"$m_670" = load %String, %String* %m, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_667", [20 x i8]* %"$fail_msg__sender_668", %String %"$tname_669", %String %"$m_670")
  br label %"$matchsucc_644"

"$True_671":                                      ; preds = %"$have_gas_642"
  %"$t_672" = bitcast %TName_Bool* %"$t_645" to %CName_True*
  br label %"$matchsucc_644"

"$empty_default_648":                             ; preds = %"$have_gas_642"
  br label %"$matchsucc_644"

"$matchsucc_644":                                 ; preds = %"$True_671", %"$have_gas_665", %"$empty_default_648"
  br label %"$matchsucc_606"

"$None_673":                                      ; preds = %"$have_gas_604"
  %"$val1_674" = bitcast %TName_Option_String* %"$val1_607" to %CName_None_String*
  %"$gasrem_675" = load i64, i64* @_gasrem, align 8
  %"$gascmp_676" = icmp ugt i64 1, %"$gasrem_675"
  br i1 %"$gascmp_676", label %"$out_of_gas_677", label %"$have_gas_678"

"$out_of_gas_677":                                ; preds = %"$None_673"
  call void @_out_of_gas()
  br label %"$have_gas_678"

"$have_gas_678":                                  ; preds = %"$out_of_gas_677", %"$None_673"
  %"$consume_679" = sub i64 %"$gasrem_675", 1
  store i64 %"$consume_679", i64* @_gasrem, align 8
  %"$fail__origin_680" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_680", align 1
  %"$fail__sender_681" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_681", align 1
  %"$tname_682" = load %String, %String* %tname, align 8
  call void @"$fail_210"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_680", [20 x i8]* %"$fail__sender_681", %String %"$tname_682")
  br label %"$matchsucc_606"

"$empty_default_610":                             ; preds = %"$have_gas_604"
  br label %"$matchsucc_606"

"$matchsucc_606":                                 ; preds = %"$have_gas_678", %"$matchsucc_644", %"$empty_default_610"
  %"$gasrem_683" = load i64, i64* @_gasrem, align 8
  %"$gascmp_684" = icmp ugt i64 1, %"$gasrem_683"
  br i1 %"$gascmp_684", label %"$out_of_gas_685", label %"$have_gas_686"

"$out_of_gas_685":                                ; preds = %"$matchsucc_606"
  call void @_out_of_gas()
  br label %"$have_gas_686"

"$have_gas_686":                                  ; preds = %"$out_of_gas_685", %"$matchsucc_606"
  %"$consume_687" = sub i64 %"$gasrem_683", 1
  store i64 %"$consume_687", i64* @_gasrem, align 8
  %key2 = alloca %String, align 8
  %"$gasrem_688" = load i64, i64* @_gasrem, align 8
  %"$gascmp_689" = icmp ugt i64 1, %"$gasrem_688"
  br i1 %"$gascmp_689", label %"$out_of_gas_690", label %"$have_gas_691"

"$out_of_gas_690":                                ; preds = %"$have_gas_686"
  call void @_out_of_gas()
  br label %"$have_gas_691"

"$have_gas_691":                                  ; preds = %"$out_of_gas_690", %"$have_gas_686"
  %"$consume_692" = sub i64 %"$gasrem_688", 1
  store i64 %"$consume_692", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_693", i32 0, i32 0), i32 4 }, %String* %key2, align 8
  %val2 = alloca %TName_Option_String*, align 8
  %"$indices_buf_694_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_694_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_694_salloc_load", i64 16)
  %"$indices_buf_694_salloc" = bitcast i8* %"$indices_buf_694_salloc_salloc" to [16 x i8]*
  %"$indices_buf_694" = bitcast [16 x i8]* %"$indices_buf_694_salloc" to i8*
  %"$key2_695" = load %String, %String* %key2, align 8
  %"$indices_gep_696" = getelementptr i8, i8* %"$indices_buf_694", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_696" to %String*
  store %String %"$key2_695", %String* %indices_cast1, align 8
  %"$execptr_load_698" = load i8*, i8** @_execptr, align 8
  %"$val2_call_699" = call i8* @_fetch_field(i8* %"$execptr_load_698", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_697", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_65", i32 1, i8* %"$indices_buf_694", i32 1)
  %"$val2_700" = bitcast i8* %"$val2_call_699" to %TName_Option_String*
  store %TName_Option_String* %"$val2_700", %TName_Option_String** %val2, align 8
  %"$val2_701" = load %TName_Option_String*, %TName_Option_String** %val2, align 8
  %"$$val2_701_702" = bitcast %TName_Option_String* %"$val2_701" to i8*
  %"$_literal_cost_call_703" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_60", i8* %"$$val2_701_702")
  %"$gasadd_704" = add i64 %"$_literal_cost_call_703", 0
  %"$gasadd_705" = add i64 %"$gasadd_704", 1
  %"$gasrem_706" = load i64, i64* @_gasrem, align 8
  %"$gascmp_707" = icmp ugt i64 %"$gasadd_705", %"$gasrem_706"
  br i1 %"$gascmp_707", label %"$out_of_gas_708", label %"$have_gas_709"

"$out_of_gas_708":                                ; preds = %"$have_gas_691"
  call void @_out_of_gas()
  br label %"$have_gas_709"

"$have_gas_709":                                  ; preds = %"$out_of_gas_708", %"$have_gas_691"
  %"$consume_710" = sub i64 %"$gasrem_706", %"$gasadd_705"
  store i64 %"$consume_710", i64* @_gasrem, align 8
  %"$gasrem_711" = load i64, i64* @_gasrem, align 8
  %"$gascmp_712" = icmp ugt i64 2, %"$gasrem_711"
  br i1 %"$gascmp_712", label %"$out_of_gas_713", label %"$have_gas_714"

"$out_of_gas_713":                                ; preds = %"$have_gas_709"
  call void @_out_of_gas()
  br label %"$have_gas_714"

"$have_gas_714":                                  ; preds = %"$out_of_gas_713", %"$have_gas_709"
  %"$consume_715" = sub i64 %"$gasrem_711", 2
  store i64 %"$consume_715", i64* @_gasrem, align 8
  %"$val2_717" = load %TName_Option_String*, %TName_Option_String** %val2, align 8
  %"$val2_tag_718" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$val2_717", i32 0, i32 0
  %"$val2_tag_719" = load i8, i8* %"$val2_tag_718", align 1
  switch i8 %"$val2_tag_719", label %"$empty_default_720" [
    i8 0, label %"$Some_721"
    i8 1, label %"$None_745"
  ]

"$Some_721":                                      ; preds = %"$have_gas_714"
  %"$val2_722" = bitcast %TName_Option_String* %"$val2_717" to %CName_Some_String*
  %"$$val2_13_gep_723" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$val2_722", i32 0, i32 1
  %"$$val2_13_load_724" = load %String, %String* %"$$val2_13_gep_723", align 8
  %"$val2_13" = alloca %String, align 8
  store %String %"$$val2_13_load_724", %String* %"$val2_13", align 8
  %"$gasrem_725" = load i64, i64* @_gasrem, align 8
  %"$gascmp_726" = icmp ugt i64 1, %"$gasrem_725"
  br i1 %"$gascmp_726", label %"$out_of_gas_727", label %"$have_gas_728"

"$out_of_gas_727":                                ; preds = %"$Some_721"
  call void @_out_of_gas()
  br label %"$have_gas_728"

"$have_gas_728":                                  ; preds = %"$out_of_gas_727", %"$Some_721"
  %"$consume_729" = sub i64 %"$gasrem_725", 1
  store i64 %"$consume_729", i64* @_gasrem, align 8
  %m2 = alloca %String, align 8
  %"$gasrem_730" = load i64, i64* @_gasrem, align 8
  %"$gascmp_731" = icmp ugt i64 1, %"$gasrem_730"
  br i1 %"$gascmp_731", label %"$out_of_gas_732", label %"$have_gas_733"

"$out_of_gas_732":                                ; preds = %"$have_gas_728"
  call void @_out_of_gas()
  br label %"$have_gas_733"

"$have_gas_733":                                  ; preds = %"$out_of_gas_732", %"$have_gas_728"
  %"$consume_734" = sub i64 %"$gasrem_730", 1
  store i64 %"$consume_734", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"$stringlit_735", i32 0, i32 0), i32 25 }, %String* %m2, align 8
  %"$gasrem_736" = load i64, i64* @_gasrem, align 8
  %"$gascmp_737" = icmp ugt i64 1, %"$gasrem_736"
  br i1 %"$gascmp_737", label %"$out_of_gas_738", label %"$have_gas_739"

"$out_of_gas_738":                                ; preds = %"$have_gas_733"
  call void @_out_of_gas()
  br label %"$have_gas_739"

"$have_gas_739":                                  ; preds = %"$out_of_gas_738", %"$have_gas_733"
  %"$consume_740" = sub i64 %"$gasrem_736", 1
  store i64 %"$consume_740", i64* @_gasrem, align 8
  %"$fail_msg__origin_741" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_741", align 1
  %"$fail_msg__sender_742" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_742", align 1
  %"$tname_743" = load %String, %String* %tname, align 8
  %"$m_744" = load %String, %String* %m2, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_741", [20 x i8]* %"$fail_msg__sender_742", %String %"$tname_743", %String %"$m_744")
  br label %"$matchsucc_716"

"$None_745":                                      ; preds = %"$have_gas_714"
  %"$val2_746" = bitcast %TName_Option_String* %"$val2_717" to %CName_None_String*
  br label %"$matchsucc_716"

"$empty_default_720":                             ; preds = %"$have_gas_714"
  br label %"$matchsucc_716"

"$matchsucc_716":                                 ; preds = %"$None_745", %"$have_gas_739", %"$empty_default_720"
  %"$gasrem_747" = load i64, i64* @_gasrem, align 8
  %"$gascmp_748" = icmp ugt i64 1, %"$gasrem_747"
  br i1 %"$gascmp_748", label %"$out_of_gas_749", label %"$have_gas_750"

"$out_of_gas_749":                                ; preds = %"$matchsucc_716"
  call void @_out_of_gas()
  br label %"$have_gas_750"

"$have_gas_750":                                  ; preds = %"$out_of_gas_749", %"$matchsucc_716"
  %"$consume_751" = sub i64 %"$gasrem_747", 1
  store i64 %"$consume_751", i64* @_gasrem, align 8
  %"$indices_buf_752_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_752_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_752_salloc_load", i64 16)
  %"$indices_buf_752_salloc" = bitcast i8* %"$indices_buf_752_salloc_salloc" to [16 x i8]*
  %"$indices_buf_752" = bitcast [16 x i8]* %"$indices_buf_752_salloc" to i8*
  %"$key1_753" = load %String, %String* %key1, align 8
  %"$indices_gep_754" = getelementptr i8, i8* %"$indices_buf_752", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_754" to %String*
  store %String %"$key1_753", %String* %indices_cast3, align 8
  %"$execptr_load_755" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_755", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_756", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_65", i32 1, i8* %"$indices_buf_752", i8* null)
  ret void
}

define void @t3(i8* %0) {
entry:
  %"$_amount_758" = getelementptr i8, i8* %0, i32 0
  %"$_amount_759" = bitcast i8* %"$_amount_758" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_759", align 8
  %"$_origin_760" = getelementptr i8, i8* %0, i32 16
  %"$_origin_761" = bitcast i8* %"$_origin_760" to [20 x i8]*
  %"$_sender_762" = getelementptr i8, i8* %0, i32 36
  %"$_sender_763" = bitcast i8* %"$_sender_762" to [20 x i8]*
  call void @"$t3_548"(%Uint128 %_amount, [20 x i8]* %"$_origin_761", [20 x i8]* %"$_sender_763")
  ret void
}

define internal void @"$t4_764"(%Uint128 %_amount, [20 x i8]* %"$_origin_765", [20 x i8]* %"$_sender_766") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_765", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_766", align 1
  %"$gasrem_767" = load i64, i64* @_gasrem, align 8
  %"$gascmp_768" = icmp ugt i64 1, %"$gasrem_767"
  br i1 %"$gascmp_768", label %"$out_of_gas_769", label %"$have_gas_770"

"$out_of_gas_769":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_770"

"$have_gas_770":                                  ; preds = %"$out_of_gas_769", %entry
  %"$consume_771" = sub i64 %"$gasrem_767", 1
  store i64 %"$consume_771", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_772" = load i64, i64* @_gasrem, align 8
  %"$gascmp_773" = icmp ugt i64 1, %"$gasrem_772"
  br i1 %"$gascmp_773", label %"$out_of_gas_774", label %"$have_gas_775"

"$out_of_gas_774":                                ; preds = %"$have_gas_770"
  call void @_out_of_gas()
  br label %"$have_gas_775"

"$have_gas_775":                                  ; preds = %"$out_of_gas_774", %"$have_gas_770"
  %"$consume_776" = sub i64 %"$gasrem_772", 1
  store i64 %"$consume_776", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_777", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %"$gasrem_778" = load i64, i64* @_gasrem, align 8
  %"$gascmp_779" = icmp ugt i64 1, %"$gasrem_778"
  br i1 %"$gascmp_779", label %"$out_of_gas_780", label %"$have_gas_781"

"$out_of_gas_780":                                ; preds = %"$have_gas_775"
  call void @_out_of_gas()
  br label %"$have_gas_781"

"$have_gas_781":                                  ; preds = %"$out_of_gas_780", %"$have_gas_775"
  %"$consume_782" = sub i64 %"$gasrem_778", 1
  store i64 %"$consume_782", i64* @_gasrem, align 8
  %key1 = alloca %String, align 8
  %"$gasrem_783" = load i64, i64* @_gasrem, align 8
  %"$gascmp_784" = icmp ugt i64 1, %"$gasrem_783"
  br i1 %"$gascmp_784", label %"$out_of_gas_785", label %"$have_gas_786"

"$out_of_gas_785":                                ; preds = %"$have_gas_781"
  call void @_out_of_gas()
  br label %"$have_gas_786"

"$have_gas_786":                                  ; preds = %"$out_of_gas_785", %"$have_gas_781"
  %"$consume_787" = sub i64 %"$gasrem_783", 1
  store i64 %"$consume_787", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_788", i32 0, i32 0), i32 4 }, %String* %key1, align 8
  %key1_found = alloca %TName_Bool*, align 8
  %"$indices_buf_789_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_789_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_789_salloc_load", i64 16)
  %"$indices_buf_789_salloc" = bitcast i8* %"$indices_buf_789_salloc_salloc" to [16 x i8]*
  %"$indices_buf_789" = bitcast [16 x i8]* %"$indices_buf_789_salloc" to i8*
  %"$key1_790" = load %String, %String* %key1, align 8
  %"$indices_gep_791" = getelementptr i8, i8* %"$indices_buf_789", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_791" to %String*
  store %String %"$key1_790", %String* %indices_cast, align 8
  %"$execptr_load_793" = load i8*, i8** @_execptr, align 8
  %"$key1_found_call_794" = call i8* @_fetch_field(i8* %"$execptr_load_793", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_792", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_65", i32 1, i8* %"$indices_buf_789", i32 0)
  %"$key1_found_795" = bitcast i8* %"$key1_found_call_794" to %TName_Bool*
  store %TName_Bool* %"$key1_found_795", %TName_Bool** %key1_found, align 8
  %"$key1_found_796" = load %TName_Bool*, %TName_Bool** %key1_found, align 8
  %"$$key1_found_796_797" = bitcast %TName_Bool* %"$key1_found_796" to i8*
  %"$_literal_cost_call_798" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_61", i8* %"$$key1_found_796_797")
  %"$gasadd_799" = add i64 %"$_literal_cost_call_798", 0
  %"$gasadd_800" = add i64 %"$gasadd_799", 1
  %"$gasrem_801" = load i64, i64* @_gasrem, align 8
  %"$gascmp_802" = icmp ugt i64 %"$gasadd_800", %"$gasrem_801"
  br i1 %"$gascmp_802", label %"$out_of_gas_803", label %"$have_gas_804"

"$out_of_gas_803":                                ; preds = %"$have_gas_786"
  call void @_out_of_gas()
  br label %"$have_gas_804"

"$have_gas_804":                                  ; preds = %"$out_of_gas_803", %"$have_gas_786"
  %"$consume_805" = sub i64 %"$gasrem_801", %"$gasadd_800"
  store i64 %"$consume_805", i64* @_gasrem, align 8
  %"$gasrem_806" = load i64, i64* @_gasrem, align 8
  %"$gascmp_807" = icmp ugt i64 2, %"$gasrem_806"
  br i1 %"$gascmp_807", label %"$out_of_gas_808", label %"$have_gas_809"

"$out_of_gas_808":                                ; preds = %"$have_gas_804"
  call void @_out_of_gas()
  br label %"$have_gas_809"

"$have_gas_809":                                  ; preds = %"$out_of_gas_808", %"$have_gas_804"
  %"$consume_810" = sub i64 %"$gasrem_806", 2
  store i64 %"$consume_810", i64* @_gasrem, align 8
  %"$key1_found_812" = load %TName_Bool*, %TName_Bool** %key1_found, align 8
  %"$key1_found_tag_813" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$key1_found_812", i32 0, i32 0
  %"$key1_found_tag_814" = load i8, i8* %"$key1_found_tag_813", align 1
  switch i8 %"$key1_found_tag_814", label %"$empty_default_815" [
    i8 0, label %"$True_816"
    i8 1, label %"$False_826"
  ]

"$True_816":                                      ; preds = %"$have_gas_809"
  %"$key1_found_817" = bitcast %TName_Bool* %"$key1_found_812" to %CName_True*
  %"$gasrem_818" = load i64, i64* @_gasrem, align 8
  %"$gascmp_819" = icmp ugt i64 1, %"$gasrem_818"
  br i1 %"$gascmp_819", label %"$out_of_gas_820", label %"$have_gas_821"

"$out_of_gas_820":                                ; preds = %"$True_816"
  call void @_out_of_gas()
  br label %"$have_gas_821"

"$have_gas_821":                                  ; preds = %"$out_of_gas_820", %"$True_816"
  %"$consume_822" = sub i64 %"$gasrem_818", 1
  store i64 %"$consume_822", i64* @_gasrem, align 8
  %"$fail__origin_823" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_823", align 1
  %"$fail__sender_824" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_824", align 1
  %"$tname_825" = load %String, %String* %tname, align 8
  call void @"$fail_210"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_823", [20 x i8]* %"$fail__sender_824", %String %"$tname_825")
  br label %"$matchsucc_811"

"$False_826":                                     ; preds = %"$have_gas_809"
  %"$key1_found_827" = bitcast %TName_Bool* %"$key1_found_812" to %CName_False*
  br label %"$matchsucc_811"

"$empty_default_815":                             ; preds = %"$have_gas_809"
  br label %"$matchsucc_811"

"$matchsucc_811":                                 ; preds = %"$False_826", %"$have_gas_821", %"$empty_default_815"
  %"$gasrem_828" = load i64, i64* @_gasrem, align 8
  %"$gascmp_829" = icmp ugt i64 1, %"$gasrem_828"
  br i1 %"$gascmp_829", label %"$out_of_gas_830", label %"$have_gas_831"

"$out_of_gas_830":                                ; preds = %"$matchsucc_811"
  call void @_out_of_gas()
  br label %"$have_gas_831"

"$have_gas_831":                                  ; preds = %"$out_of_gas_830", %"$matchsucc_811"
  %"$consume_832" = sub i64 %"$gasrem_828", 1
  store i64 %"$consume_832", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_833" = load i64, i64* @_gasrem, align 8
  %"$gascmp_834" = icmp ugt i64 1, %"$gasrem_833"
  br i1 %"$gascmp_834", label %"$out_of_gas_835", label %"$have_gas_836"

"$out_of_gas_835":                                ; preds = %"$have_gas_831"
  call void @_out_of_gas()
  br label %"$have_gas_836"

"$have_gas_836":                                  ; preds = %"$out_of_gas_835", %"$have_gas_831"
  %"$consume_837" = sub i64 %"$gasrem_833", 1
  store i64 %"$consume_837", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_838", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_839" = load i64, i64* @_gasrem, align 8
  %"$gascmp_840" = icmp ugt i64 1, %"$gasrem_839"
  br i1 %"$gascmp_840", label %"$out_of_gas_841", label %"$have_gas_842"

"$out_of_gas_841":                                ; preds = %"$have_gas_836"
  call void @_out_of_gas()
  br label %"$have_gas_842"

"$have_gas_842":                                  ; preds = %"$out_of_gas_841", %"$have_gas_836"
  %"$consume_843" = sub i64 %"$gasrem_839", 1
  store i64 %"$consume_843", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_844" = load i64, i64* @_gasrem, align 8
  %"$gascmp_845" = icmp ugt i64 1, %"$gasrem_844"
  br i1 %"$gascmp_845", label %"$out_of_gas_846", label %"$have_gas_847"

"$out_of_gas_846":                                ; preds = %"$have_gas_842"
  call void @_out_of_gas()
  br label %"$have_gas_847"

"$have_gas_847":                                  ; preds = %"$out_of_gas_846", %"$have_gas_842"
  %"$consume_848" = sub i64 %"$gasrem_844", 1
  store i64 %"$consume_848", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_849", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %"$gasrem_850" = load i64, i64* @_gasrem, align 8
  %"$gascmp_851" = icmp ugt i64 1, %"$gasrem_850"
  br i1 %"$gascmp_851", label %"$out_of_gas_852", label %"$have_gas_853"

"$out_of_gas_852":                                ; preds = %"$have_gas_847"
  call void @_out_of_gas()
  br label %"$have_gas_853"

"$have_gas_853":                                  ; preds = %"$out_of_gas_852", %"$have_gas_847"
  %"$consume_854" = sub i64 %"$gasrem_850", 1
  store i64 %"$consume_854", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_855" = load i64, i64* @_gasrem, align 8
  %"$gascmp_856" = icmp ugt i64 1, %"$gasrem_855"
  br i1 %"$gascmp_856", label %"$out_of_gas_857", label %"$have_gas_858"

"$out_of_gas_857":                                ; preds = %"$have_gas_853"
  call void @_out_of_gas()
  br label %"$have_gas_858"

"$have_gas_858":                                  ; preds = %"$out_of_gas_857", %"$have_gas_853"
  %"$consume_859" = sub i64 %"$gasrem_855", 1
  store i64 %"$consume_859", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_860", i32 0, i32 0), i32 3 }, %String* %s, align 8
  %"$_literal_cost_s_861" = alloca %String, align 8
  %"$s_862" = load %String, %String* %s, align 8
  store %String %"$s_862", %String* %"$_literal_cost_s_861", align 8
  %"$$_literal_cost_s_861_863" = bitcast %String* %"$_literal_cost_s_861" to i8*
  %"$_literal_cost_call_864" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_s_861_863")
  %"$gasadd_865" = add i64 %"$_literal_cost_call_864", 2
  %"$gasrem_866" = load i64, i64* @_gasrem, align 8
  %"$gascmp_867" = icmp ugt i64 %"$gasadd_865", %"$gasrem_866"
  br i1 %"$gascmp_867", label %"$out_of_gas_868", label %"$have_gas_869"

"$out_of_gas_868":                                ; preds = %"$have_gas_858"
  call void @_out_of_gas()
  br label %"$have_gas_869"

"$have_gas_869":                                  ; preds = %"$out_of_gas_868", %"$have_gas_858"
  %"$consume_870" = sub i64 %"$gasrem_866", %"$gasadd_865"
  store i64 %"$consume_870", i64* @_gasrem, align 8
  %"$indices_buf_871_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_871_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_871_salloc_load", i64 32)
  %"$indices_buf_871_salloc" = bitcast i8* %"$indices_buf_871_salloc_salloc" to [32 x i8]*
  %"$indices_buf_871" = bitcast [32 x i8]* %"$indices_buf_871_salloc" to i8*
  %"$key1a_872" = load %String, %String* %key1a, align 8
  %"$indices_gep_873" = getelementptr i8, i8* %"$indices_buf_871", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_873" to %String*
  store %String %"$key1a_872", %String* %indices_cast1, align 8
  %"$key2a_874" = load %String, %String* %key2a, align 8
  %"$indices_gep_875" = getelementptr i8, i8* %"$indices_buf_871", i32 16
  %indices_cast2 = bitcast i8* %"$indices_gep_875" to %String*
  store %String %"$key2a_874", %String* %indices_cast2, align 8
  %"$execptr_load_876" = load i8*, i8** @_execptr, align 8
  %"$s_878" = load %String, %String* %s, align 8
  %"$update_value_879" = alloca %String, align 8
  store %String %"$s_878", %String* %"$update_value_879", align 8
  %"$update_value_880" = bitcast %String* %"$update_value_879" to i8*
  call void @_update_field(i8* %"$execptr_load_876", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_877", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 2, i8* %"$indices_buf_871", i8* %"$update_value_880")
  ret void
}

define void @t4(i8* %0) {
entry:
  %"$_amount_882" = getelementptr i8, i8* %0, i32 0
  %"$_amount_883" = bitcast i8* %"$_amount_882" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_883", align 8
  %"$_origin_884" = getelementptr i8, i8* %0, i32 16
  %"$_origin_885" = bitcast i8* %"$_origin_884" to [20 x i8]*
  %"$_sender_886" = getelementptr i8, i8* %0, i32 36
  %"$_sender_887" = bitcast i8* %"$_sender_886" to [20 x i8]*
  call void @"$t4_764"(%Uint128 %_amount, [20 x i8]* %"$_origin_885", [20 x i8]* %"$_sender_887")
  ret void
}

define internal void @"$t5_888"(%Uint128 %_amount, [20 x i8]* %"$_origin_889", [20 x i8]* %"$_sender_890") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_889", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_890", align 1
  %"$gasrem_891" = load i64, i64* @_gasrem, align 8
  %"$gascmp_892" = icmp ugt i64 1, %"$gasrem_891"
  br i1 %"$gascmp_892", label %"$out_of_gas_893", label %"$have_gas_894"

"$out_of_gas_893":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_894"

"$have_gas_894":                                  ; preds = %"$out_of_gas_893", %entry
  %"$consume_895" = sub i64 %"$gasrem_891", 1
  store i64 %"$consume_895", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_896" = load i64, i64* @_gasrem, align 8
  %"$gascmp_897" = icmp ugt i64 1, %"$gasrem_896"
  br i1 %"$gascmp_897", label %"$out_of_gas_898", label %"$have_gas_899"

"$out_of_gas_898":                                ; preds = %"$have_gas_894"
  call void @_out_of_gas()
  br label %"$have_gas_899"

"$have_gas_899":                                  ; preds = %"$out_of_gas_898", %"$have_gas_894"
  %"$consume_900" = sub i64 %"$gasrem_896", 1
  store i64 %"$consume_900", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_901", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %"$gasrem_902" = load i64, i64* @_gasrem, align 8
  %"$gascmp_903" = icmp ugt i64 1, %"$gasrem_902"
  br i1 %"$gascmp_903", label %"$out_of_gas_904", label %"$have_gas_905"

"$out_of_gas_904":                                ; preds = %"$have_gas_899"
  call void @_out_of_gas()
  br label %"$have_gas_905"

"$have_gas_905":                                  ; preds = %"$out_of_gas_904", %"$have_gas_899"
  %"$consume_906" = sub i64 %"$gasrem_902", 1
  store i64 %"$consume_906", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_907" = load i64, i64* @_gasrem, align 8
  %"$gascmp_908" = icmp ugt i64 1, %"$gasrem_907"
  br i1 %"$gascmp_908", label %"$out_of_gas_909", label %"$have_gas_910"

"$out_of_gas_909":                                ; preds = %"$have_gas_905"
  call void @_out_of_gas()
  br label %"$have_gas_910"

"$have_gas_910":                                  ; preds = %"$out_of_gas_909", %"$have_gas_905"
  %"$consume_911" = sub i64 %"$gasrem_907", 1
  store i64 %"$consume_911", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_912", i32 0, i32 0), i32 3 }, %String* %s, align 8
  %"$gasrem_913" = load i64, i64* @_gasrem, align 8
  %"$gascmp_914" = icmp ugt i64 1, %"$gasrem_913"
  br i1 %"$gascmp_914", label %"$out_of_gas_915", label %"$have_gas_916"

"$out_of_gas_915":                                ; preds = %"$have_gas_910"
  call void @_out_of_gas()
  br label %"$have_gas_916"

"$have_gas_916":                                  ; preds = %"$out_of_gas_915", %"$have_gas_910"
  %"$consume_917" = sub i64 %"$gasrem_913", 1
  store i64 %"$consume_917", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_918" = load i64, i64* @_gasrem, align 8
  %"$gascmp_919" = icmp ugt i64 1, %"$gasrem_918"
  br i1 %"$gascmp_919", label %"$out_of_gas_920", label %"$have_gas_921"

"$out_of_gas_920":                                ; preds = %"$have_gas_916"
  call void @_out_of_gas()
  br label %"$have_gas_921"

"$have_gas_921":                                  ; preds = %"$out_of_gas_920", %"$have_gas_916"
  %"$consume_922" = sub i64 %"$gasrem_918", 1
  store i64 %"$consume_922", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_923", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_924" = load i64, i64* @_gasrem, align 8
  %"$gascmp_925" = icmp ugt i64 1, %"$gasrem_924"
  br i1 %"$gascmp_925", label %"$out_of_gas_926", label %"$have_gas_927"

"$out_of_gas_926":                                ; preds = %"$have_gas_921"
  call void @_out_of_gas()
  br label %"$have_gas_927"

"$have_gas_927":                                  ; preds = %"$out_of_gas_926", %"$have_gas_921"
  %"$consume_928" = sub i64 %"$gasrem_924", 1
  store i64 %"$consume_928", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_929" = load i64, i64* @_gasrem, align 8
  %"$gascmp_930" = icmp ugt i64 1, %"$gasrem_929"
  br i1 %"$gascmp_930", label %"$out_of_gas_931", label %"$have_gas_932"

"$out_of_gas_931":                                ; preds = %"$have_gas_927"
  call void @_out_of_gas()
  br label %"$have_gas_932"

"$have_gas_932":                                  ; preds = %"$out_of_gas_931", %"$have_gas_927"
  %"$consume_933" = sub i64 %"$gasrem_929", 1
  store i64 %"$consume_933", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_934", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %val = alloca %TName_Option_String*, align 8
  %"$indices_buf_935_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_935_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_935_salloc_load", i64 32)
  %"$indices_buf_935_salloc" = bitcast i8* %"$indices_buf_935_salloc_salloc" to [32 x i8]*
  %"$indices_buf_935" = bitcast [32 x i8]* %"$indices_buf_935_salloc" to i8*
  %"$key1a_936" = load %String, %String* %key1a, align 8
  %"$indices_gep_937" = getelementptr i8, i8* %"$indices_buf_935", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_937" to %String*
  store %String %"$key1a_936", %String* %indices_cast, align 8
  %"$key2a_938" = load %String, %String* %key2a, align 8
  %"$indices_gep_939" = getelementptr i8, i8* %"$indices_buf_935", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_939" to %String*
  store %String %"$key2a_938", %String* %indices_cast1, align 8
  %"$execptr_load_941" = load i8*, i8** @_execptr, align 8
  %"$val_call_942" = call i8* @_fetch_field(i8* %"$execptr_load_941", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_940", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 2, i8* %"$indices_buf_935", i32 1)
  %"$val_943" = bitcast i8* %"$val_call_942" to %TName_Option_String*
  store %TName_Option_String* %"$val_943", %TName_Option_String** %val, align 8
  %"$val_944" = load %TName_Option_String*, %TName_Option_String** %val, align 8
  %"$$val_944_945" = bitcast %TName_Option_String* %"$val_944" to i8*
  %"$_literal_cost_call_946" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_60", i8* %"$$val_944_945")
  %"$gasadd_947" = add i64 %"$_literal_cost_call_946", 0
  %"$gasadd_948" = add i64 %"$gasadd_947", 2
  %"$gasrem_949" = load i64, i64* @_gasrem, align 8
  %"$gascmp_950" = icmp ugt i64 %"$gasadd_948", %"$gasrem_949"
  br i1 %"$gascmp_950", label %"$out_of_gas_951", label %"$have_gas_952"

"$out_of_gas_951":                                ; preds = %"$have_gas_932"
  call void @_out_of_gas()
  br label %"$have_gas_952"

"$have_gas_952":                                  ; preds = %"$out_of_gas_951", %"$have_gas_932"
  %"$consume_953" = sub i64 %"$gasrem_949", %"$gasadd_948"
  store i64 %"$consume_953", i64* @_gasrem, align 8
  %"$gasrem_954" = load i64, i64* @_gasrem, align 8
  %"$gascmp_955" = icmp ugt i64 2, %"$gasrem_954"
  br i1 %"$gascmp_955", label %"$out_of_gas_956", label %"$have_gas_957"

"$out_of_gas_956":                                ; preds = %"$have_gas_952"
  call void @_out_of_gas()
  br label %"$have_gas_957"

"$have_gas_957":                                  ; preds = %"$out_of_gas_956", %"$have_gas_952"
  %"$consume_958" = sub i64 %"$gasrem_954", 2
  store i64 %"$consume_958", i64* @_gasrem, align 8
  %"$val_960" = load %TName_Option_String*, %TName_Option_String** %val, align 8
  %"$val_tag_961" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$val_960", i32 0, i32 0
  %"$val_tag_962" = load i8, i8* %"$val_tag_961", align 1
  switch i8 %"$val_tag_962", label %"$empty_default_963" [
    i8 0, label %"$Some_964"
    i8 1, label %"$None_1026"
  ]

"$Some_964":                                      ; preds = %"$have_gas_957"
  %"$val_965" = bitcast %TName_Option_String* %"$val_960" to %CName_Some_String*
  %"$v_gep_966" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$val_965", i32 0, i32 1
  %"$v_load_967" = load %String, %String* %"$v_gep_966", align 8
  %v = alloca %String, align 8
  store %String %"$v_load_967", %String* %v, align 8
  %"$gasrem_968" = load i64, i64* @_gasrem, align 8
  %"$gascmp_969" = icmp ugt i64 1, %"$gasrem_968"
  br i1 %"$gascmp_969", label %"$out_of_gas_970", label %"$have_gas_971"

"$out_of_gas_970":                                ; preds = %"$Some_964"
  call void @_out_of_gas()
  br label %"$have_gas_971"

"$have_gas_971":                                  ; preds = %"$out_of_gas_970", %"$Some_964"
  %"$consume_972" = sub i64 %"$gasrem_968", 1
  store i64 %"$consume_972", i64* @_gasrem, align 8
  %t = alloca %TName_Bool*, align 8
  %"$_literal_cost_v_973" = alloca %String, align 8
  %"$v_974" = load %String, %String* %v, align 8
  store %String %"$v_974", %String* %"$_literal_cost_v_973", align 8
  %"$$_literal_cost_v_973_975" = bitcast %String* %"$_literal_cost_v_973" to i8*
  %"$_literal_cost_call_976" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_v_973_975")
  %"$_literal_cost_s_977" = alloca %String, align 8
  %"$s_978" = load %String, %String* %s, align 8
  store %String %"$s_978", %String* %"$_literal_cost_s_977", align 8
  %"$$_literal_cost_s_977_979" = bitcast %String* %"$_literal_cost_s_977" to i8*
  %"$_literal_cost_call_980" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_s_977_979")
  %"$gasmin_981" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_976", i64 %"$_literal_cost_call_980")
  %"$gasrem_982" = load i64, i64* @_gasrem, align 8
  %"$gascmp_983" = icmp ugt i64 %"$gasmin_981", %"$gasrem_982"
  br i1 %"$gascmp_983", label %"$out_of_gas_984", label %"$have_gas_985"

"$out_of_gas_984":                                ; preds = %"$have_gas_971"
  call void @_out_of_gas()
  br label %"$have_gas_985"

"$have_gas_985":                                  ; preds = %"$out_of_gas_984", %"$have_gas_971"
  %"$consume_986" = sub i64 %"$gasrem_982", %"$gasmin_981"
  store i64 %"$consume_986", i64* @_gasrem, align 8
  %"$execptr_load_987" = load i8*, i8** @_execptr, align 8
  %"$v_988" = load %String, %String* %v, align 8
  %"$s_989" = load %String, %String* %s, align 8
  %"$eq_call_990" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_987", %String %"$v_988", %String %"$s_989")
  store %TName_Bool* %"$eq_call_990", %TName_Bool** %t, align 8
  %"$gasrem_992" = load i64, i64* @_gasrem, align 8
  %"$gascmp_993" = icmp ugt i64 2, %"$gasrem_992"
  br i1 %"$gascmp_993", label %"$out_of_gas_994", label %"$have_gas_995"

"$out_of_gas_994":                                ; preds = %"$have_gas_985"
  call void @_out_of_gas()
  br label %"$have_gas_995"

"$have_gas_995":                                  ; preds = %"$out_of_gas_994", %"$have_gas_985"
  %"$consume_996" = sub i64 %"$gasrem_992", 2
  store i64 %"$consume_996", i64* @_gasrem, align 8
  %"$t_998" = load %TName_Bool*, %TName_Bool** %t, align 8
  %"$t_tag_999" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_998", i32 0, i32 0
  %"$t_tag_1000" = load i8, i8* %"$t_tag_999", align 1
  switch i8 %"$t_tag_1000", label %"$empty_default_1001" [
    i8 0, label %"$True_1002"
    i8 1, label %"$False_1004"
  ]

"$True_1002":                                     ; preds = %"$have_gas_995"
  %"$t_1003" = bitcast %TName_Bool* %"$t_998" to %CName_True*
  br label %"$matchsucc_997"

"$False_1004":                                    ; preds = %"$have_gas_995"
  %"$t_1005" = bitcast %TName_Bool* %"$t_998" to %CName_False*
  %"$gasrem_1006" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1007" = icmp ugt i64 1, %"$gasrem_1006"
  br i1 %"$gascmp_1007", label %"$out_of_gas_1008", label %"$have_gas_1009"

"$out_of_gas_1008":                               ; preds = %"$False_1004"
  call void @_out_of_gas()
  br label %"$have_gas_1009"

"$have_gas_1009":                                 ; preds = %"$out_of_gas_1008", %"$False_1004"
  %"$consume_1010" = sub i64 %"$gasrem_1006", 1
  store i64 %"$consume_1010", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_1011" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1012" = icmp ugt i64 1, %"$gasrem_1011"
  br i1 %"$gascmp_1012", label %"$out_of_gas_1013", label %"$have_gas_1014"

"$out_of_gas_1013":                               ; preds = %"$have_gas_1009"
  call void @_out_of_gas()
  br label %"$have_gas_1014"

"$have_gas_1014":                                 ; preds = %"$out_of_gas_1013", %"$have_gas_1009"
  %"$consume_1015" = sub i64 %"$gasrem_1011", 1
  store i64 %"$consume_1015", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$stringlit_1016", i32 0, i32 0), i32 23 }, %String* %m, align 8
  %"$gasrem_1017" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1018" = icmp ugt i64 1, %"$gasrem_1017"
  br i1 %"$gascmp_1018", label %"$out_of_gas_1019", label %"$have_gas_1020"

"$out_of_gas_1019":                               ; preds = %"$have_gas_1014"
  call void @_out_of_gas()
  br label %"$have_gas_1020"

"$have_gas_1020":                                 ; preds = %"$out_of_gas_1019", %"$have_gas_1014"
  %"$consume_1021" = sub i64 %"$gasrem_1017", 1
  store i64 %"$consume_1021", i64* @_gasrem, align 8
  %"$fail_msg__origin_1022" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1022", align 1
  %"$fail_msg__sender_1023" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1023", align 1
  %"$tname_1024" = load %String, %String* %tname, align 8
  %"$m_1025" = load %String, %String* %m, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1022", [20 x i8]* %"$fail_msg__sender_1023", %String %"$tname_1024", %String %"$m_1025")
  br label %"$matchsucc_997"

"$empty_default_1001":                            ; preds = %"$have_gas_995"
  br label %"$matchsucc_997"

"$matchsucc_997":                                 ; preds = %"$have_gas_1020", %"$True_1002", %"$empty_default_1001"
  br label %"$matchsucc_959"

"$None_1026":                                     ; preds = %"$have_gas_957"
  %"$val_1027" = bitcast %TName_Option_String* %"$val_960" to %CName_None_String*
  %"$gasrem_1028" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1029" = icmp ugt i64 1, %"$gasrem_1028"
  br i1 %"$gascmp_1029", label %"$out_of_gas_1030", label %"$have_gas_1031"

"$out_of_gas_1030":                               ; preds = %"$None_1026"
  call void @_out_of_gas()
  br label %"$have_gas_1031"

"$have_gas_1031":                                 ; preds = %"$out_of_gas_1030", %"$None_1026"
  %"$consume_1032" = sub i64 %"$gasrem_1028", 1
  store i64 %"$consume_1032", i64* @_gasrem, align 8
  %"$fail__origin_1033" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_1033", align 1
  %"$fail__sender_1034" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_1034", align 1
  %"$tname_1035" = load %String, %String* %tname, align 8
  call void @"$fail_210"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_1033", [20 x i8]* %"$fail__sender_1034", %String %"$tname_1035")
  br label %"$matchsucc_959"

"$empty_default_963":                             ; preds = %"$have_gas_957"
  br label %"$matchsucc_959"

"$matchsucc_959":                                 ; preds = %"$have_gas_1031", %"$matchsucc_997", %"$empty_default_963"
  %"$gasrem_1036" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1037" = icmp ugt i64 1, %"$gasrem_1036"
  br i1 %"$gascmp_1037", label %"$out_of_gas_1038", label %"$have_gas_1039"

"$out_of_gas_1038":                               ; preds = %"$matchsucc_959"
  call void @_out_of_gas()
  br label %"$have_gas_1039"

"$have_gas_1039":                                 ; preds = %"$out_of_gas_1038", %"$matchsucc_959"
  %"$consume_1040" = sub i64 %"$gasrem_1036", 1
  store i64 %"$consume_1040", i64* @_gasrem, align 8
  %l_m2 = alloca %Map_String_String*, align 8
  %"$gasrem_1041" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1042" = icmp ugt i64 1, %"$gasrem_1041"
  br i1 %"$gascmp_1042", label %"$out_of_gas_1043", label %"$have_gas_1044"

"$out_of_gas_1043":                               ; preds = %"$have_gas_1039"
  call void @_out_of_gas()
  br label %"$have_gas_1044"

"$have_gas_1044":                                 ; preds = %"$out_of_gas_1043", %"$have_gas_1039"
  %"$consume_1045" = sub i64 %"$gasrem_1041", 1
  store i64 %"$consume_1045", i64* @_gasrem, align 8
  %e = alloca %Map_String_String*, align 8
  %"$gasrem_1046" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1047" = icmp ugt i64 1, %"$gasrem_1046"
  br i1 %"$gascmp_1047", label %"$out_of_gas_1048", label %"$have_gas_1049"

"$out_of_gas_1048":                               ; preds = %"$have_gas_1044"
  call void @_out_of_gas()
  br label %"$have_gas_1049"

"$have_gas_1049":                                 ; preds = %"$out_of_gas_1048", %"$have_gas_1044"
  %"$consume_1050" = sub i64 %"$gasrem_1046", 1
  store i64 %"$consume_1050", i64* @_gasrem, align 8
  %"$execptr_load_1051" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_1052" = call i8* @_new_empty_map(i8* %"$execptr_load_1051")
  %"$_new_empty_map_1053" = bitcast i8* %"$_new_empty_map_call_1052" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_1053", %Map_String_String** %e, align 8
  %"$gasrem_1054" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1055" = icmp ugt i64 1, %"$gasrem_1054"
  br i1 %"$gascmp_1055", label %"$out_of_gas_1056", label %"$have_gas_1057"

"$out_of_gas_1056":                               ; preds = %"$have_gas_1049"
  call void @_out_of_gas()
  br label %"$have_gas_1057"

"$have_gas_1057":                                 ; preds = %"$out_of_gas_1056", %"$have_gas_1049"
  %"$consume_1058" = sub i64 %"$gasrem_1054", 1
  store i64 %"$consume_1058", i64* @_gasrem, align 8
  %key2b = alloca %String, align 8
  %"$gasrem_1059" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1060" = icmp ugt i64 1, %"$gasrem_1059"
  br i1 %"$gascmp_1060", label %"$out_of_gas_1061", label %"$have_gas_1062"

"$out_of_gas_1061":                               ; preds = %"$have_gas_1057"
  call void @_out_of_gas()
  br label %"$have_gas_1062"

"$have_gas_1062":                                 ; preds = %"$out_of_gas_1061", %"$have_gas_1057"
  %"$consume_1063" = sub i64 %"$gasrem_1059", 1
  store i64 %"$consume_1063", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1064", i32 0, i32 0), i32 5 }, %String* %key2b, align 8
  %"$gasrem_1065" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1066" = icmp ugt i64 1, %"$gasrem_1065"
  br i1 %"$gascmp_1066", label %"$out_of_gas_1067", label %"$have_gas_1068"

"$out_of_gas_1067":                               ; preds = %"$have_gas_1062"
  call void @_out_of_gas()
  br label %"$have_gas_1068"

"$have_gas_1068":                                 ; preds = %"$out_of_gas_1067", %"$have_gas_1062"
  %"$consume_1069" = sub i64 %"$gasrem_1065", 1
  store i64 %"$consume_1069", i64* @_gasrem, align 8
  %s1 = alloca %String, align 8
  %"$gasrem_1070" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1071" = icmp ugt i64 1, %"$gasrem_1070"
  br i1 %"$gascmp_1071", label %"$out_of_gas_1072", label %"$have_gas_1073"

"$out_of_gas_1072":                               ; preds = %"$have_gas_1068"
  call void @_out_of_gas()
  br label %"$have_gas_1073"

"$have_gas_1073":                                 ; preds = %"$out_of_gas_1072", %"$have_gas_1068"
  %"$consume_1074" = sub i64 %"$gasrem_1070", 1
  store i64 %"$consume_1074", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1075", i32 0, i32 0), i32 3 }, %String* %s1, align 8
  %"$gasrem_1076" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1077" = icmp ugt i64 1, %"$gasrem_1076"
  br i1 %"$gascmp_1077", label %"$out_of_gas_1078", label %"$have_gas_1079"

"$out_of_gas_1078":                               ; preds = %"$have_gas_1073"
  call void @_out_of_gas()
  br label %"$have_gas_1079"

"$have_gas_1079":                                 ; preds = %"$out_of_gas_1078", %"$have_gas_1073"
  %"$consume_1080" = sub i64 %"$gasrem_1076", 1
  store i64 %"$consume_1080", i64* @_gasrem, align 8
  %m1 = alloca %Map_String_String*, align 8
  %"$e_1081" = load %Map_String_String*, %Map_String_String** %e, align 8
  %"$$e_1081_1082" = bitcast %Map_String_String* %"$e_1081" to i8*
  %"$_lengthof_call_1083" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_65", i8* %"$$e_1081_1082")
  %"$gasadd_1084" = add i64 1, %"$_lengthof_call_1083"
  %"$gasrem_1085" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1086" = icmp ugt i64 %"$gasadd_1084", %"$gasrem_1085"
  br i1 %"$gascmp_1086", label %"$out_of_gas_1087", label %"$have_gas_1088"

"$out_of_gas_1087":                               ; preds = %"$have_gas_1079"
  call void @_out_of_gas()
  br label %"$have_gas_1088"

"$have_gas_1088":                                 ; preds = %"$out_of_gas_1087", %"$have_gas_1079"
  %"$consume_1089" = sub i64 %"$gasrem_1085", %"$gasadd_1084"
  store i64 %"$consume_1089", i64* @_gasrem, align 8
  %"$execptr_load_1090" = load i8*, i8** @_execptr, align 8
  %"$e_1091" = load %Map_String_String*, %Map_String_String** %e, align 8
  %"$$e_1091_1092" = bitcast %Map_String_String* %"$e_1091" to i8*
  %"$put_key2b_1093" = alloca %String, align 8
  %"$key2b_1094" = load %String, %String* %key2b, align 8
  store %String %"$key2b_1094", %String* %"$put_key2b_1093", align 8
  %"$$put_key2b_1093_1095" = bitcast %String* %"$put_key2b_1093" to i8*
  %"$put_s1_1096" = alloca %String, align 8
  %"$s1_1097" = load %String, %String* %s1, align 8
  store %String %"$s1_1097", %String* %"$put_s1_1096", align 8
  %"$$put_s1_1096_1098" = bitcast %String* %"$put_s1_1096" to i8*
  %"$put_call_1099" = call i8* @_put(i8* %"$execptr_load_1090", %_TyDescrTy_Typ* @"$TyDescr_Map_65", i8* %"$$e_1091_1092", i8* %"$$put_key2b_1093_1095", i8* %"$$put_s1_1096_1098")
  %"$put_1100" = bitcast i8* %"$put_call_1099" to %Map_String_String*
  store %Map_String_String* %"$put_1100", %Map_String_String** %m1, align 8
  %"$gasrem_1101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1102" = icmp ugt i64 1, %"$gasrem_1101"
  br i1 %"$gascmp_1102", label %"$out_of_gas_1103", label %"$have_gas_1104"

"$out_of_gas_1103":                               ; preds = %"$have_gas_1088"
  call void @_out_of_gas()
  br label %"$have_gas_1104"

"$have_gas_1104":                                 ; preds = %"$out_of_gas_1103", %"$have_gas_1088"
  %"$consume_1105" = sub i64 %"$gasrem_1101", 1
  store i64 %"$consume_1105", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  %"$gasrem_1106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1107" = icmp ugt i64 1, %"$gasrem_1106"
  br i1 %"$gascmp_1107", label %"$out_of_gas_1108", label %"$have_gas_1109"

"$out_of_gas_1108":                               ; preds = %"$have_gas_1104"
  call void @_out_of_gas()
  br label %"$have_gas_1109"

"$have_gas_1109":                                 ; preds = %"$out_of_gas_1108", %"$have_gas_1104"
  %"$consume_1110" = sub i64 %"$gasrem_1106", 1
  store i64 %"$consume_1110", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1111", i32 0, i32 0), i32 5 }, %String* %key2c, align 8
  %"$gasrem_1112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1113" = icmp ugt i64 1, %"$gasrem_1112"
  br i1 %"$gascmp_1113", label %"$out_of_gas_1114", label %"$have_gas_1115"

"$out_of_gas_1114":                               ; preds = %"$have_gas_1109"
  call void @_out_of_gas()
  br label %"$have_gas_1115"

"$have_gas_1115":                                 ; preds = %"$out_of_gas_1114", %"$have_gas_1109"
  %"$consume_1116" = sub i64 %"$gasrem_1112", 1
  store i64 %"$consume_1116", i64* @_gasrem, align 8
  %s2 = alloca %String, align 8
  %"$gasrem_1117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1118" = icmp ugt i64 1, %"$gasrem_1117"
  br i1 %"$gascmp_1118", label %"$out_of_gas_1119", label %"$have_gas_1120"

"$out_of_gas_1119":                               ; preds = %"$have_gas_1115"
  call void @_out_of_gas()
  br label %"$have_gas_1120"

"$have_gas_1120":                                 ; preds = %"$out_of_gas_1119", %"$have_gas_1115"
  %"$consume_1121" = sub i64 %"$gasrem_1117", 1
  store i64 %"$consume_1121", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1122", i32 0, i32 0), i32 3 }, %String* %s2, align 8
  %"$m1_1123" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_1123_1124" = bitcast %Map_String_String* %"$m1_1123" to i8*
  %"$_lengthof_call_1125" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_65", i8* %"$$m1_1123_1124")
  %"$gasadd_1126" = add i64 1, %"$_lengthof_call_1125"
  %"$gasrem_1127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1128" = icmp ugt i64 %"$gasadd_1126", %"$gasrem_1127"
  br i1 %"$gascmp_1128", label %"$out_of_gas_1129", label %"$have_gas_1130"

"$out_of_gas_1129":                               ; preds = %"$have_gas_1120"
  call void @_out_of_gas()
  br label %"$have_gas_1130"

"$have_gas_1130":                                 ; preds = %"$out_of_gas_1129", %"$have_gas_1120"
  %"$consume_1131" = sub i64 %"$gasrem_1127", %"$gasadd_1126"
  store i64 %"$consume_1131", i64* @_gasrem, align 8
  %"$execptr_load_1132" = load i8*, i8** @_execptr, align 8
  %"$m1_1133" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_1133_1134" = bitcast %Map_String_String* %"$m1_1133" to i8*
  %"$put_key2c_1135" = alloca %String, align 8
  %"$key2c_1136" = load %String, %String* %key2c, align 8
  store %String %"$key2c_1136", %String* %"$put_key2c_1135", align 8
  %"$$put_key2c_1135_1137" = bitcast %String* %"$put_key2c_1135" to i8*
  %"$put_s2_1138" = alloca %String, align 8
  %"$s2_1139" = load %String, %String* %s2, align 8
  store %String %"$s2_1139", %String* %"$put_s2_1138", align 8
  %"$$put_s2_1138_1140" = bitcast %String* %"$put_s2_1138" to i8*
  %"$put_call_1141" = call i8* @_put(i8* %"$execptr_load_1132", %_TyDescrTy_Typ* @"$TyDescr_Map_65", i8* %"$$m1_1133_1134", i8* %"$$put_key2c_1135_1137", i8* %"$$put_s2_1138_1140")
  %"$put_1142" = bitcast i8* %"$put_call_1141" to %Map_String_String*
  store %Map_String_String* %"$put_1142", %Map_String_String** %l_m2, align 8
  %"$gasrem_1143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1144" = icmp ugt i64 1, %"$gasrem_1143"
  br i1 %"$gascmp_1144", label %"$out_of_gas_1145", label %"$have_gas_1146"

"$out_of_gas_1145":                               ; preds = %"$have_gas_1130"
  call void @_out_of_gas()
  br label %"$have_gas_1146"

"$have_gas_1146":                                 ; preds = %"$out_of_gas_1145", %"$have_gas_1130"
  %"$consume_1147" = sub i64 %"$gasrem_1143", 1
  store i64 %"$consume_1147", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  %"$gasrem_1148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1149" = icmp ugt i64 1, %"$gasrem_1148"
  br i1 %"$gascmp_1149", label %"$out_of_gas_1150", label %"$have_gas_1151"

"$out_of_gas_1150":                               ; preds = %"$have_gas_1146"
  call void @_out_of_gas()
  br label %"$have_gas_1151"

"$have_gas_1151":                                 ; preds = %"$out_of_gas_1150", %"$have_gas_1146"
  %"$consume_1152" = sub i64 %"$gasrem_1148", 1
  store i64 %"$consume_1152", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1153", i32 0, i32 0), i32 5 }, %String* %key1b, align 8
  %"$l_m2_1154" = load %Map_String_String*, %Map_String_String** %l_m2, align 8
  %"$$l_m2_1154_1155" = bitcast %Map_String_String* %"$l_m2_1154" to i8*
  %"$_literal_cost_call_1156" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_65", i8* %"$$l_m2_1154_1155")
  %"$gasadd_1157" = add i64 %"$_literal_cost_call_1156", 1
  %"$gasrem_1158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1159" = icmp ugt i64 %"$gasadd_1157", %"$gasrem_1158"
  br i1 %"$gascmp_1159", label %"$out_of_gas_1160", label %"$have_gas_1161"

"$out_of_gas_1160":                               ; preds = %"$have_gas_1151"
  call void @_out_of_gas()
  br label %"$have_gas_1161"

"$have_gas_1161":                                 ; preds = %"$out_of_gas_1160", %"$have_gas_1151"
  %"$consume_1162" = sub i64 %"$gasrem_1158", %"$gasadd_1157"
  store i64 %"$consume_1162", i64* @_gasrem, align 8
  %"$indices_buf_1163_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1163_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1163_salloc_load", i64 16)
  %"$indices_buf_1163_salloc" = bitcast i8* %"$indices_buf_1163_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1163" = bitcast [16 x i8]* %"$indices_buf_1163_salloc" to i8*
  %"$key1b_1164" = load %String, %String* %key1b, align 8
  %"$indices_gep_1165" = getelementptr i8, i8* %"$indices_buf_1163", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_1165" to %String*
  store %String %"$key1b_1164", %String* %indices_cast2, align 8
  %"$execptr_load_1166" = load i8*, i8** @_execptr, align 8
  %"$l_m2_1168" = load %Map_String_String*, %Map_String_String** %l_m2, align 8
  %"$update_value_1169" = bitcast %Map_String_String* %"$l_m2_1168" to i8*
  call void @_update_field(i8* %"$execptr_load_1166", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1167", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 1, i8* %"$indices_buf_1163", i8* %"$update_value_1169")
  ret void
}

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

define void @t5(i8* %0) {
entry:
  %"$_amount_1171" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1172" = bitcast i8* %"$_amount_1171" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1172", align 8
  %"$_origin_1173" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1174" = bitcast i8* %"$_origin_1173" to [20 x i8]*
  %"$_sender_1175" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1176" = bitcast i8* %"$_sender_1175" to [20 x i8]*
  call void @"$t5_888"(%Uint128 %_amount, [20 x i8]* %"$_origin_1174", [20 x i8]* %"$_sender_1176")
  ret void
}

define internal void @"$t6_1177"(%Uint128 %_amount, [20 x i8]* %"$_origin_1178", [20 x i8]* %"$_sender_1179") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1178", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1179", align 1
  %"$gasrem_1180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1181" = icmp ugt i64 1, %"$gasrem_1180"
  br i1 %"$gascmp_1181", label %"$out_of_gas_1182", label %"$have_gas_1183"

"$out_of_gas_1182":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1183"

"$have_gas_1183":                                 ; preds = %"$out_of_gas_1182", %entry
  %"$consume_1184" = sub i64 %"$gasrem_1180", 1
  store i64 %"$consume_1184", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_1185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1186" = icmp ugt i64 1, %"$gasrem_1185"
  br i1 %"$gascmp_1186", label %"$out_of_gas_1187", label %"$have_gas_1188"

"$out_of_gas_1187":                               ; preds = %"$have_gas_1183"
  call void @_out_of_gas()
  br label %"$have_gas_1188"

"$have_gas_1188":                                 ; preds = %"$out_of_gas_1187", %"$have_gas_1183"
  %"$consume_1189" = sub i64 %"$gasrem_1185", 1
  store i64 %"$consume_1189", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_1190", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %"$gasrem_1191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1192" = icmp ugt i64 1, %"$gasrem_1191"
  br i1 %"$gascmp_1192", label %"$out_of_gas_1193", label %"$have_gas_1194"

"$out_of_gas_1193":                               ; preds = %"$have_gas_1188"
  call void @_out_of_gas()
  br label %"$have_gas_1194"

"$have_gas_1194":                                 ; preds = %"$out_of_gas_1193", %"$have_gas_1188"
  %"$consume_1195" = sub i64 %"$gasrem_1191", 1
  store i64 %"$consume_1195", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_1196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1197" = icmp ugt i64 1, %"$gasrem_1196"
  br i1 %"$gascmp_1197", label %"$out_of_gas_1198", label %"$have_gas_1199"

"$out_of_gas_1198":                               ; preds = %"$have_gas_1194"
  call void @_out_of_gas()
  br label %"$have_gas_1199"

"$have_gas_1199":                                 ; preds = %"$out_of_gas_1198", %"$have_gas_1194"
  %"$consume_1200" = sub i64 %"$gasrem_1196", 1
  store i64 %"$consume_1200", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1201", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_1202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1203" = icmp ugt i64 1, %"$gasrem_1202"
  br i1 %"$gascmp_1203", label %"$out_of_gas_1204", label %"$have_gas_1205"

"$out_of_gas_1204":                               ; preds = %"$have_gas_1199"
  call void @_out_of_gas()
  br label %"$have_gas_1205"

"$have_gas_1205":                                 ; preds = %"$out_of_gas_1204", %"$have_gas_1199"
  %"$consume_1206" = sub i64 %"$gasrem_1202", 1
  store i64 %"$consume_1206", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_1207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1208" = icmp ugt i64 1, %"$gasrem_1207"
  br i1 %"$gascmp_1208", label %"$out_of_gas_1209", label %"$have_gas_1210"

"$out_of_gas_1209":                               ; preds = %"$have_gas_1205"
  call void @_out_of_gas()
  br label %"$have_gas_1210"

"$have_gas_1210":                                 ; preds = %"$out_of_gas_1209", %"$have_gas_1205"
  %"$consume_1211" = sub i64 %"$gasrem_1207", 1
  store i64 %"$consume_1211", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1212", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %c1 = alloca %TName_Option_String*, align 8
  %"$indices_buf_1213_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1213_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1213_salloc_load", i64 32)
  %"$indices_buf_1213_salloc" = bitcast i8* %"$indices_buf_1213_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1213" = bitcast [32 x i8]* %"$indices_buf_1213_salloc" to i8*
  %"$key1a_1214" = load %String, %String* %key1a, align 8
  %"$indices_gep_1215" = getelementptr i8, i8* %"$indices_buf_1213", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1215" to %String*
  store %String %"$key1a_1214", %String* %indices_cast, align 8
  %"$key2a_1216" = load %String, %String* %key2a, align 8
  %"$indices_gep_1217" = getelementptr i8, i8* %"$indices_buf_1213", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_1217" to %String*
  store %String %"$key2a_1216", %String* %indices_cast1, align 8
  %"$execptr_load_1219" = load i8*, i8** @_execptr, align 8
  %"$c1_call_1220" = call i8* @_fetch_field(i8* %"$execptr_load_1219", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1218", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 2, i8* %"$indices_buf_1213", i32 1)
  %"$c1_1221" = bitcast i8* %"$c1_call_1220" to %TName_Option_String*
  store %TName_Option_String* %"$c1_1221", %TName_Option_String** %c1, align 8
  %"$c1_1222" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$$c1_1222_1223" = bitcast %TName_Option_String* %"$c1_1222" to i8*
  %"$_literal_cost_call_1224" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_60", i8* %"$$c1_1222_1223")
  %"$gasadd_1225" = add i64 %"$_literal_cost_call_1224", 0
  %"$gasadd_1226" = add i64 %"$gasadd_1225", 2
  %"$gasrem_1227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1228" = icmp ugt i64 %"$gasadd_1226", %"$gasrem_1227"
  br i1 %"$gascmp_1228", label %"$out_of_gas_1229", label %"$have_gas_1230"

"$out_of_gas_1229":                               ; preds = %"$have_gas_1210"
  call void @_out_of_gas()
  br label %"$have_gas_1230"

"$have_gas_1230":                                 ; preds = %"$out_of_gas_1229", %"$have_gas_1210"
  %"$consume_1231" = sub i64 %"$gasrem_1227", %"$gasadd_1226"
  store i64 %"$consume_1231", i64* @_gasrem, align 8
  %"$gasrem_1232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1233" = icmp ugt i64 2, %"$gasrem_1232"
  br i1 %"$gascmp_1233", label %"$out_of_gas_1234", label %"$have_gas_1235"

"$out_of_gas_1234":                               ; preds = %"$have_gas_1230"
  call void @_out_of_gas()
  br label %"$have_gas_1235"

"$have_gas_1235":                                 ; preds = %"$out_of_gas_1234", %"$have_gas_1230"
  %"$consume_1236" = sub i64 %"$gasrem_1232", 2
  store i64 %"$consume_1236", i64* @_gasrem, align 8
  %"$c1_1238" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$c1_tag_1239" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_1238", i32 0, i32 0
  %"$c1_tag_1240" = load i8, i8* %"$c1_tag_1239", align 1
  switch i8 %"$c1_tag_1240", label %"$empty_default_1241" [
    i8 0, label %"$Some_1242"
    i8 1, label %"$None_1315"
  ]

"$Some_1242":                                     ; preds = %"$have_gas_1235"
  %"$c1_1243" = bitcast %TName_Option_String* %"$c1_1238" to %CName_Some_String*
  %"$c_gep_1244" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_1243", i32 0, i32 1
  %"$c_load_1245" = load %String, %String* %"$c_gep_1244", align 8
  %c = alloca %String, align 8
  store %String %"$c_load_1245", %String* %c, align 8
  %"$gasrem_1246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1247" = icmp ugt i64 1, %"$gasrem_1246"
  br i1 %"$gascmp_1247", label %"$out_of_gas_1248", label %"$have_gas_1249"

"$out_of_gas_1248":                               ; preds = %"$Some_1242"
  call void @_out_of_gas()
  br label %"$have_gas_1249"

"$have_gas_1249":                                 ; preds = %"$out_of_gas_1248", %"$Some_1242"
  %"$consume_1250" = sub i64 %"$gasrem_1246", 1
  store i64 %"$consume_1250", i64* @_gasrem, align 8
  %v = alloca %String, align 8
  %"$gasrem_1251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1252" = icmp ugt i64 1, %"$gasrem_1251"
  br i1 %"$gascmp_1252", label %"$out_of_gas_1253", label %"$have_gas_1254"

"$out_of_gas_1253":                               ; preds = %"$have_gas_1249"
  call void @_out_of_gas()
  br label %"$have_gas_1254"

"$have_gas_1254":                                 ; preds = %"$out_of_gas_1253", %"$have_gas_1249"
  %"$consume_1255" = sub i64 %"$gasrem_1251", 1
  store i64 %"$consume_1255", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1256", i32 0, i32 0), i32 3 }, %String* %v, align 8
  %"$gasrem_1257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1258" = icmp ugt i64 1, %"$gasrem_1257"
  br i1 %"$gascmp_1258", label %"$out_of_gas_1259", label %"$have_gas_1260"

"$out_of_gas_1259":                               ; preds = %"$have_gas_1254"
  call void @_out_of_gas()
  br label %"$have_gas_1260"

"$have_gas_1260":                                 ; preds = %"$out_of_gas_1259", %"$have_gas_1254"
  %"$consume_1261" = sub i64 %"$gasrem_1257", 1
  store i64 %"$consume_1261", i64* @_gasrem, align 8
  %eq = alloca %TName_Bool*, align 8
  %"$_literal_cost_c_1262" = alloca %String, align 8
  %"$c_1263" = load %String, %String* %c, align 8
  store %String %"$c_1263", %String* %"$_literal_cost_c_1262", align 8
  %"$$_literal_cost_c_1262_1264" = bitcast %String* %"$_literal_cost_c_1262" to i8*
  %"$_literal_cost_call_1265" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_c_1262_1264")
  %"$_literal_cost_v_1266" = alloca %String, align 8
  %"$v_1267" = load %String, %String* %v, align 8
  store %String %"$v_1267", %String* %"$_literal_cost_v_1266", align 8
  %"$$_literal_cost_v_1266_1268" = bitcast %String* %"$_literal_cost_v_1266" to i8*
  %"$_literal_cost_call_1269" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_v_1266_1268")
  %"$gasmin_1270" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_1265", i64 %"$_literal_cost_call_1269")
  %"$gasrem_1271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1272" = icmp ugt i64 %"$gasmin_1270", %"$gasrem_1271"
  br i1 %"$gascmp_1272", label %"$out_of_gas_1273", label %"$have_gas_1274"

"$out_of_gas_1273":                               ; preds = %"$have_gas_1260"
  call void @_out_of_gas()
  br label %"$have_gas_1274"

"$have_gas_1274":                                 ; preds = %"$out_of_gas_1273", %"$have_gas_1260"
  %"$consume_1275" = sub i64 %"$gasrem_1271", %"$gasmin_1270"
  store i64 %"$consume_1275", i64* @_gasrem, align 8
  %"$execptr_load_1276" = load i8*, i8** @_execptr, align 8
  %"$c_1277" = load %String, %String* %c, align 8
  %"$v_1278" = load %String, %String* %v, align 8
  %"$eq_call_1279" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1276", %String %"$c_1277", %String %"$v_1278")
  store %TName_Bool* %"$eq_call_1279", %TName_Bool** %eq, align 8
  %"$gasrem_1281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1282" = icmp ugt i64 2, %"$gasrem_1281"
  br i1 %"$gascmp_1282", label %"$out_of_gas_1283", label %"$have_gas_1284"

"$out_of_gas_1283":                               ; preds = %"$have_gas_1274"
  call void @_out_of_gas()
  br label %"$have_gas_1284"

"$have_gas_1284":                                 ; preds = %"$out_of_gas_1283", %"$have_gas_1274"
  %"$consume_1285" = sub i64 %"$gasrem_1281", 2
  store i64 %"$consume_1285", i64* @_gasrem, align 8
  %"$eq_1287" = load %TName_Bool*, %TName_Bool** %eq, align 8
  %"$eq_tag_1288" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_1287", i32 0, i32 0
  %"$eq_tag_1289" = load i8, i8* %"$eq_tag_1288", align 1
  switch i8 %"$eq_tag_1289", label %"$empty_default_1290" [
    i8 0, label %"$True_1291"
    i8 1, label %"$False_1293"
  ]

"$True_1291":                                     ; preds = %"$have_gas_1284"
  %"$eq_1292" = bitcast %TName_Bool* %"$eq_1287" to %CName_True*
  br label %"$matchsucc_1286"

"$False_1293":                                    ; preds = %"$have_gas_1284"
  %"$eq_1294" = bitcast %TName_Bool* %"$eq_1287" to %CName_False*
  %"$gasrem_1295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1296" = icmp ugt i64 1, %"$gasrem_1295"
  br i1 %"$gascmp_1296", label %"$out_of_gas_1297", label %"$have_gas_1298"

"$out_of_gas_1297":                               ; preds = %"$False_1293"
  call void @_out_of_gas()
  br label %"$have_gas_1298"

"$have_gas_1298":                                 ; preds = %"$out_of_gas_1297", %"$False_1293"
  %"$consume_1299" = sub i64 %"$gasrem_1295", 1
  store i64 %"$consume_1299", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_1300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1301" = icmp ugt i64 1, %"$gasrem_1300"
  br i1 %"$gascmp_1301", label %"$out_of_gas_1302", label %"$have_gas_1303"

"$out_of_gas_1302":                               ; preds = %"$have_gas_1298"
  call void @_out_of_gas()
  br label %"$have_gas_1303"

"$have_gas_1303":                                 ; preds = %"$out_of_gas_1302", %"$have_gas_1298"
  %"$consume_1304" = sub i64 %"$gasrem_1300", 1
  store i64 %"$consume_1304", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_1305", i32 0, i32 0), i32 31 }, %String* %m, align 8
  %"$gasrem_1306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1307" = icmp ugt i64 1, %"$gasrem_1306"
  br i1 %"$gascmp_1307", label %"$out_of_gas_1308", label %"$have_gas_1309"

"$out_of_gas_1308":                               ; preds = %"$have_gas_1303"
  call void @_out_of_gas()
  br label %"$have_gas_1309"

"$have_gas_1309":                                 ; preds = %"$out_of_gas_1308", %"$have_gas_1303"
  %"$consume_1310" = sub i64 %"$gasrem_1306", 1
  store i64 %"$consume_1310", i64* @_gasrem, align 8
  %"$fail_msg__origin_1311" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1311", align 1
  %"$fail_msg__sender_1312" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1312", align 1
  %"$tname_1313" = load %String, %String* %tname, align 8
  %"$m_1314" = load %String, %String* %m, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1311", [20 x i8]* %"$fail_msg__sender_1312", %String %"$tname_1313", %String %"$m_1314")
  br label %"$matchsucc_1286"

"$empty_default_1290":                            ; preds = %"$have_gas_1284"
  br label %"$matchsucc_1286"

"$matchsucc_1286":                                ; preds = %"$have_gas_1309", %"$True_1291", %"$empty_default_1290"
  br label %"$matchsucc_1237"

"$None_1315":                                     ; preds = %"$have_gas_1235"
  %"$c1_1316" = bitcast %TName_Option_String* %"$c1_1238" to %CName_None_String*
  %"$gasrem_1317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1318" = icmp ugt i64 1, %"$gasrem_1317"
  br i1 %"$gascmp_1318", label %"$out_of_gas_1319", label %"$have_gas_1320"

"$out_of_gas_1319":                               ; preds = %"$None_1315"
  call void @_out_of_gas()
  br label %"$have_gas_1320"

"$have_gas_1320":                                 ; preds = %"$out_of_gas_1319", %"$None_1315"
  %"$consume_1321" = sub i64 %"$gasrem_1317", 1
  store i64 %"$consume_1321", i64* @_gasrem, align 8
  %m2 = alloca %String, align 8
  %"$gasrem_1322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1323" = icmp ugt i64 1, %"$gasrem_1322"
  br i1 %"$gascmp_1323", label %"$out_of_gas_1324", label %"$have_gas_1325"

"$out_of_gas_1324":                               ; preds = %"$have_gas_1320"
  call void @_out_of_gas()
  br label %"$have_gas_1325"

"$have_gas_1325":                                 ; preds = %"$out_of_gas_1324", %"$have_gas_1320"
  %"$consume_1326" = sub i64 %"$gasrem_1322", 1
  store i64 %"$consume_1326", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_1327", i32 0, i32 0), i32 21 }, %String* %m2, align 8
  %"$gasrem_1328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1329" = icmp ugt i64 1, %"$gasrem_1328"
  br i1 %"$gascmp_1329", label %"$out_of_gas_1330", label %"$have_gas_1331"

"$out_of_gas_1330":                               ; preds = %"$have_gas_1325"
  call void @_out_of_gas()
  br label %"$have_gas_1331"

"$have_gas_1331":                                 ; preds = %"$out_of_gas_1330", %"$have_gas_1325"
  %"$consume_1332" = sub i64 %"$gasrem_1328", 1
  store i64 %"$consume_1332", i64* @_gasrem, align 8
  %"$fail_msg__origin_1333" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1333", align 1
  %"$fail_msg__sender_1334" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1334", align 1
  %"$tname_1335" = load %String, %String* %tname, align 8
  %"$m_1336" = load %String, %String* %m2, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1333", [20 x i8]* %"$fail_msg__sender_1334", %String %"$tname_1335", %String %"$m_1336")
  br label %"$matchsucc_1237"

"$empty_default_1241":                            ; preds = %"$have_gas_1235"
  br label %"$matchsucc_1237"

"$matchsucc_1237":                                ; preds = %"$have_gas_1331", %"$matchsucc_1286", %"$empty_default_1241"
  %"$gasrem_1337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1338" = icmp ugt i64 1, %"$gasrem_1337"
  br i1 %"$gascmp_1338", label %"$out_of_gas_1339", label %"$have_gas_1340"

"$out_of_gas_1339":                               ; preds = %"$matchsucc_1237"
  call void @_out_of_gas()
  br label %"$have_gas_1340"

"$have_gas_1340":                                 ; preds = %"$out_of_gas_1339", %"$matchsucc_1237"
  %"$consume_1341" = sub i64 %"$gasrem_1337", 1
  store i64 %"$consume_1341", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  %"$gasrem_1342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1343" = icmp ugt i64 1, %"$gasrem_1342"
  br i1 %"$gascmp_1343", label %"$out_of_gas_1344", label %"$have_gas_1345"

"$out_of_gas_1344":                               ; preds = %"$have_gas_1340"
  call void @_out_of_gas()
  br label %"$have_gas_1345"

"$have_gas_1345":                                 ; preds = %"$out_of_gas_1344", %"$have_gas_1340"
  %"$consume_1346" = sub i64 %"$gasrem_1342", 1
  store i64 %"$consume_1346", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1347", i32 0, i32 0), i32 5 }, %String* %key1b, align 8
  %"$gasrem_1348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1349" = icmp ugt i64 1, %"$gasrem_1348"
  br i1 %"$gascmp_1349", label %"$out_of_gas_1350", label %"$have_gas_1351"

"$out_of_gas_1350":                               ; preds = %"$have_gas_1345"
  call void @_out_of_gas()
  br label %"$have_gas_1351"

"$have_gas_1351":                                 ; preds = %"$out_of_gas_1350", %"$have_gas_1345"
  %"$consume_1352" = sub i64 %"$gasrem_1348", 1
  store i64 %"$consume_1352", i64* @_gasrem, align 8
  %key2b = alloca %String, align 8
  %"$gasrem_1353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1354" = icmp ugt i64 1, %"$gasrem_1353"
  br i1 %"$gascmp_1354", label %"$out_of_gas_1355", label %"$have_gas_1356"

"$out_of_gas_1355":                               ; preds = %"$have_gas_1351"
  call void @_out_of_gas()
  br label %"$have_gas_1356"

"$have_gas_1356":                                 ; preds = %"$out_of_gas_1355", %"$have_gas_1351"
  %"$consume_1357" = sub i64 %"$gasrem_1353", 1
  store i64 %"$consume_1357", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1358", i32 0, i32 0), i32 5 }, %String* %key2b, align 8
  %"$c1_0" = alloca %TName_Option_String*, align 8
  %"$indices_buf_1359_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1359_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1359_salloc_load", i64 32)
  %"$indices_buf_1359_salloc" = bitcast i8* %"$indices_buf_1359_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1359" = bitcast [32 x i8]* %"$indices_buf_1359_salloc" to i8*
  %"$key1b_1360" = load %String, %String* %key1b, align 8
  %"$indices_gep_1361" = getelementptr i8, i8* %"$indices_buf_1359", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_1361" to %String*
  store %String %"$key1b_1360", %String* %indices_cast3, align 8
  %"$key2b_1362" = load %String, %String* %key2b, align 8
  %"$indices_gep_1363" = getelementptr i8, i8* %"$indices_buf_1359", i32 16
  %indices_cast4 = bitcast i8* %"$indices_gep_1363" to %String*
  store %String %"$key2b_1362", %String* %indices_cast4, align 8
  %"$execptr_load_1365" = load i8*, i8** @_execptr, align 8
  %"$$c1_0_call_1366" = call i8* @_fetch_field(i8* %"$execptr_load_1365", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1364", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 2, i8* %"$indices_buf_1359", i32 1)
  %"$$c1_0_1367" = bitcast i8* %"$$c1_0_call_1366" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_0_1367", %TName_Option_String** %"$c1_0", align 8
  %"$$c1_0_1368" = load %TName_Option_String*, %TName_Option_String** %"$c1_0", align 8
  %"$$$c1_0_1368_1369" = bitcast %TName_Option_String* %"$$c1_0_1368" to i8*
  %"$_literal_cost_call_1370" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_60", i8* %"$$$c1_0_1368_1369")
  %"$gasadd_1371" = add i64 %"$_literal_cost_call_1370", 0
  %"$gasadd_1372" = add i64 %"$gasadd_1371", 2
  %"$gasrem_1373" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1374" = icmp ugt i64 %"$gasadd_1372", %"$gasrem_1373"
  br i1 %"$gascmp_1374", label %"$out_of_gas_1375", label %"$have_gas_1376"

"$out_of_gas_1375":                               ; preds = %"$have_gas_1356"
  call void @_out_of_gas()
  br label %"$have_gas_1376"

"$have_gas_1376":                                 ; preds = %"$out_of_gas_1375", %"$have_gas_1356"
  %"$consume_1377" = sub i64 %"$gasrem_1373", %"$gasadd_1372"
  store i64 %"$consume_1377", i64* @_gasrem, align 8
  %"$gasrem_1378" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1379" = icmp ugt i64 2, %"$gasrem_1378"
  br i1 %"$gascmp_1379", label %"$out_of_gas_1380", label %"$have_gas_1381"

"$out_of_gas_1380":                               ; preds = %"$have_gas_1376"
  call void @_out_of_gas()
  br label %"$have_gas_1381"

"$have_gas_1381":                                 ; preds = %"$out_of_gas_1380", %"$have_gas_1376"
  %"$consume_1382" = sub i64 %"$gasrem_1378", 2
  store i64 %"$consume_1382", i64* @_gasrem, align 8
  %"$$c1_0_1384" = load %TName_Option_String*, %TName_Option_String** %"$c1_0", align 8
  %"$$c1_0_tag_1385" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_0_1384", i32 0, i32 0
  %"$$c1_0_tag_1386" = load i8, i8* %"$$c1_0_tag_1385", align 1
  switch i8 %"$$c1_0_tag_1386", label %"$empty_default_1387" [
    i8 0, label %"$Some_1388"
    i8 1, label %"$None_1461"
  ]

"$Some_1388":                                     ; preds = %"$have_gas_1381"
  %"$$c1_0_1389" = bitcast %TName_Option_String* %"$$c1_0_1384" to %CName_Some_String*
  %"$c_gep_1390" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_0_1389", i32 0, i32 1
  %"$c_load_1391" = load %String, %String* %"$c_gep_1390", align 8
  %c5 = alloca %String, align 8
  store %String %"$c_load_1391", %String* %c5, align 8
  %"$gasrem_1392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1393" = icmp ugt i64 1, %"$gasrem_1392"
  br i1 %"$gascmp_1393", label %"$out_of_gas_1394", label %"$have_gas_1395"

"$out_of_gas_1394":                               ; preds = %"$Some_1388"
  call void @_out_of_gas()
  br label %"$have_gas_1395"

"$have_gas_1395":                                 ; preds = %"$out_of_gas_1394", %"$Some_1388"
  %"$consume_1396" = sub i64 %"$gasrem_1392", 1
  store i64 %"$consume_1396", i64* @_gasrem, align 8
  %v6 = alloca %String, align 8
  %"$gasrem_1397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1398" = icmp ugt i64 1, %"$gasrem_1397"
  br i1 %"$gascmp_1398", label %"$out_of_gas_1399", label %"$have_gas_1400"

"$out_of_gas_1399":                               ; preds = %"$have_gas_1395"
  call void @_out_of_gas()
  br label %"$have_gas_1400"

"$have_gas_1400":                                 ; preds = %"$out_of_gas_1399", %"$have_gas_1395"
  %"$consume_1401" = sub i64 %"$gasrem_1397", 1
  store i64 %"$consume_1401", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1402", i32 0, i32 0), i32 3 }, %String* %v6, align 8
  %"$gasrem_1403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1404" = icmp ugt i64 1, %"$gasrem_1403"
  br i1 %"$gascmp_1404", label %"$out_of_gas_1405", label %"$have_gas_1406"

"$out_of_gas_1405":                               ; preds = %"$have_gas_1400"
  call void @_out_of_gas()
  br label %"$have_gas_1406"

"$have_gas_1406":                                 ; preds = %"$out_of_gas_1405", %"$have_gas_1400"
  %"$consume_1407" = sub i64 %"$gasrem_1403", 1
  store i64 %"$consume_1407", i64* @_gasrem, align 8
  %eq7 = alloca %TName_Bool*, align 8
  %"$_literal_cost_c_1408" = alloca %String, align 8
  %"$c_1409" = load %String, %String* %c5, align 8
  store %String %"$c_1409", %String* %"$_literal_cost_c_1408", align 8
  %"$$_literal_cost_c_1408_1410" = bitcast %String* %"$_literal_cost_c_1408" to i8*
  %"$_literal_cost_call_1411" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_c_1408_1410")
  %"$_literal_cost_v_1412" = alloca %String, align 8
  %"$v_1413" = load %String, %String* %v6, align 8
  store %String %"$v_1413", %String* %"$_literal_cost_v_1412", align 8
  %"$$_literal_cost_v_1412_1414" = bitcast %String* %"$_literal_cost_v_1412" to i8*
  %"$_literal_cost_call_1415" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_v_1412_1414")
  %"$gasmin_1416" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_1411", i64 %"$_literal_cost_call_1415")
  %"$gasrem_1417" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1418" = icmp ugt i64 %"$gasmin_1416", %"$gasrem_1417"
  br i1 %"$gascmp_1418", label %"$out_of_gas_1419", label %"$have_gas_1420"

"$out_of_gas_1419":                               ; preds = %"$have_gas_1406"
  call void @_out_of_gas()
  br label %"$have_gas_1420"

"$have_gas_1420":                                 ; preds = %"$out_of_gas_1419", %"$have_gas_1406"
  %"$consume_1421" = sub i64 %"$gasrem_1417", %"$gasmin_1416"
  store i64 %"$consume_1421", i64* @_gasrem, align 8
  %"$execptr_load_1422" = load i8*, i8** @_execptr, align 8
  %"$c_1423" = load %String, %String* %c5, align 8
  %"$v_1424" = load %String, %String* %v6, align 8
  %"$eq_call_1425" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1422", %String %"$c_1423", %String %"$v_1424")
  store %TName_Bool* %"$eq_call_1425", %TName_Bool** %eq7, align 8
  %"$gasrem_1427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1428" = icmp ugt i64 2, %"$gasrem_1427"
  br i1 %"$gascmp_1428", label %"$out_of_gas_1429", label %"$have_gas_1430"

"$out_of_gas_1429":                               ; preds = %"$have_gas_1420"
  call void @_out_of_gas()
  br label %"$have_gas_1430"

"$have_gas_1430":                                 ; preds = %"$out_of_gas_1429", %"$have_gas_1420"
  %"$consume_1431" = sub i64 %"$gasrem_1427", 2
  store i64 %"$consume_1431", i64* @_gasrem, align 8
  %"$eq_1433" = load %TName_Bool*, %TName_Bool** %eq7, align 8
  %"$eq_tag_1434" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_1433", i32 0, i32 0
  %"$eq_tag_1435" = load i8, i8* %"$eq_tag_1434", align 1
  switch i8 %"$eq_tag_1435", label %"$empty_default_1436" [
    i8 0, label %"$True_1437"
    i8 1, label %"$False_1439"
  ]

"$True_1437":                                     ; preds = %"$have_gas_1430"
  %"$eq_1438" = bitcast %TName_Bool* %"$eq_1433" to %CName_True*
  br label %"$matchsucc_1432"

"$False_1439":                                    ; preds = %"$have_gas_1430"
  %"$eq_1440" = bitcast %TName_Bool* %"$eq_1433" to %CName_False*
  %"$gasrem_1441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1442" = icmp ugt i64 1, %"$gasrem_1441"
  br i1 %"$gascmp_1442", label %"$out_of_gas_1443", label %"$have_gas_1444"

"$out_of_gas_1443":                               ; preds = %"$False_1439"
  call void @_out_of_gas()
  br label %"$have_gas_1444"

"$have_gas_1444":                                 ; preds = %"$out_of_gas_1443", %"$False_1439"
  %"$consume_1445" = sub i64 %"$gasrem_1441", 1
  store i64 %"$consume_1445", i64* @_gasrem, align 8
  %m8 = alloca %String, align 8
  %"$gasrem_1446" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1447" = icmp ugt i64 1, %"$gasrem_1446"
  br i1 %"$gascmp_1447", label %"$out_of_gas_1448", label %"$have_gas_1449"

"$out_of_gas_1448":                               ; preds = %"$have_gas_1444"
  call void @_out_of_gas()
  br label %"$have_gas_1449"

"$have_gas_1449":                                 ; preds = %"$out_of_gas_1448", %"$have_gas_1444"
  %"$consume_1450" = sub i64 %"$gasrem_1446", 1
  store i64 %"$consume_1450", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_1451", i32 0, i32 0), i32 31 }, %String* %m8, align 8
  %"$gasrem_1452" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1453" = icmp ugt i64 1, %"$gasrem_1452"
  br i1 %"$gascmp_1453", label %"$out_of_gas_1454", label %"$have_gas_1455"

"$out_of_gas_1454":                               ; preds = %"$have_gas_1449"
  call void @_out_of_gas()
  br label %"$have_gas_1455"

"$have_gas_1455":                                 ; preds = %"$out_of_gas_1454", %"$have_gas_1449"
  %"$consume_1456" = sub i64 %"$gasrem_1452", 1
  store i64 %"$consume_1456", i64* @_gasrem, align 8
  %"$fail_msg__origin_1457" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1457", align 1
  %"$fail_msg__sender_1458" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1458", align 1
  %"$tname_1459" = load %String, %String* %tname, align 8
  %"$m_1460" = load %String, %String* %m8, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1457", [20 x i8]* %"$fail_msg__sender_1458", %String %"$tname_1459", %String %"$m_1460")
  br label %"$matchsucc_1432"

"$empty_default_1436":                            ; preds = %"$have_gas_1430"
  br label %"$matchsucc_1432"

"$matchsucc_1432":                                ; preds = %"$have_gas_1455", %"$True_1437", %"$empty_default_1436"
  br label %"$matchsucc_1383"

"$None_1461":                                     ; preds = %"$have_gas_1381"
  %"$$c1_0_1462" = bitcast %TName_Option_String* %"$$c1_0_1384" to %CName_None_String*
  %"$gasrem_1463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1464" = icmp ugt i64 1, %"$gasrem_1463"
  br i1 %"$gascmp_1464", label %"$out_of_gas_1465", label %"$have_gas_1466"

"$out_of_gas_1465":                               ; preds = %"$None_1461"
  call void @_out_of_gas()
  br label %"$have_gas_1466"

"$have_gas_1466":                                 ; preds = %"$out_of_gas_1465", %"$None_1461"
  %"$consume_1467" = sub i64 %"$gasrem_1463", 1
  store i64 %"$consume_1467", i64* @_gasrem, align 8
  %m9 = alloca %String, align 8
  %"$gasrem_1468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1469" = icmp ugt i64 1, %"$gasrem_1468"
  br i1 %"$gascmp_1469", label %"$out_of_gas_1470", label %"$have_gas_1471"

"$out_of_gas_1470":                               ; preds = %"$have_gas_1466"
  call void @_out_of_gas()
  br label %"$have_gas_1471"

"$have_gas_1471":                                 ; preds = %"$out_of_gas_1470", %"$have_gas_1466"
  %"$consume_1472" = sub i64 %"$gasrem_1468", 1
  store i64 %"$consume_1472", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_1473", i32 0, i32 0), i32 21 }, %String* %m9, align 8
  %"$gasrem_1474" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1475" = icmp ugt i64 1, %"$gasrem_1474"
  br i1 %"$gascmp_1475", label %"$out_of_gas_1476", label %"$have_gas_1477"

"$out_of_gas_1476":                               ; preds = %"$have_gas_1471"
  call void @_out_of_gas()
  br label %"$have_gas_1477"

"$have_gas_1477":                                 ; preds = %"$out_of_gas_1476", %"$have_gas_1471"
  %"$consume_1478" = sub i64 %"$gasrem_1474", 1
  store i64 %"$consume_1478", i64* @_gasrem, align 8
  %"$fail_msg__origin_1479" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1479", align 1
  %"$fail_msg__sender_1480" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1480", align 1
  %"$tname_1481" = load %String, %String* %tname, align 8
  %"$m_1482" = load %String, %String* %m9, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1479", [20 x i8]* %"$fail_msg__sender_1480", %String %"$tname_1481", %String %"$m_1482")
  br label %"$matchsucc_1383"

"$empty_default_1387":                            ; preds = %"$have_gas_1381"
  br label %"$matchsucc_1383"

"$matchsucc_1383":                                ; preds = %"$have_gas_1477", %"$matchsucc_1432", %"$empty_default_1387"
  %"$gasrem_1483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1484" = icmp ugt i64 1, %"$gasrem_1483"
  br i1 %"$gascmp_1484", label %"$out_of_gas_1485", label %"$have_gas_1486"

"$out_of_gas_1485":                               ; preds = %"$matchsucc_1383"
  call void @_out_of_gas()
  br label %"$have_gas_1486"

"$have_gas_1486":                                 ; preds = %"$out_of_gas_1485", %"$matchsucc_1383"
  %"$consume_1487" = sub i64 %"$gasrem_1483", 1
  store i64 %"$consume_1487", i64* @_gasrem, align 8
  %"$key1b_1" = alloca %String, align 8
  %"$gasrem_1488" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1489" = icmp ugt i64 1, %"$gasrem_1488"
  br i1 %"$gascmp_1489", label %"$out_of_gas_1490", label %"$have_gas_1491"

"$out_of_gas_1490":                               ; preds = %"$have_gas_1486"
  call void @_out_of_gas()
  br label %"$have_gas_1491"

"$have_gas_1491":                                 ; preds = %"$out_of_gas_1490", %"$have_gas_1486"
  %"$consume_1492" = sub i64 %"$gasrem_1488", 1
  store i64 %"$consume_1492", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1493", i32 0, i32 0), i32 5 }, %String* %"$key1b_1", align 8
  %"$gasrem_1494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1495" = icmp ugt i64 1, %"$gasrem_1494"
  br i1 %"$gascmp_1495", label %"$out_of_gas_1496", label %"$have_gas_1497"

"$out_of_gas_1496":                               ; preds = %"$have_gas_1491"
  call void @_out_of_gas()
  br label %"$have_gas_1497"

"$have_gas_1497":                                 ; preds = %"$out_of_gas_1496", %"$have_gas_1491"
  %"$consume_1498" = sub i64 %"$gasrem_1494", 1
  store i64 %"$consume_1498", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  %"$gasrem_1499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1500" = icmp ugt i64 1, %"$gasrem_1499"
  br i1 %"$gascmp_1500", label %"$out_of_gas_1501", label %"$have_gas_1502"

"$out_of_gas_1501":                               ; preds = %"$have_gas_1497"
  call void @_out_of_gas()
  br label %"$have_gas_1502"

"$have_gas_1502":                                 ; preds = %"$out_of_gas_1501", %"$have_gas_1497"
  %"$consume_1503" = sub i64 %"$gasrem_1499", 1
  store i64 %"$consume_1503", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1504", i32 0, i32 0), i32 5 }, %String* %key2c, align 8
  %"$c1_2" = alloca %TName_Option_String*, align 8
  %"$indices_buf_1505_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1505_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1505_salloc_load", i64 32)
  %"$indices_buf_1505_salloc" = bitcast i8* %"$indices_buf_1505_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1505" = bitcast [32 x i8]* %"$indices_buf_1505_salloc" to i8*
  %"$$key1b_1_1506" = load %String, %String* %"$key1b_1", align 8
  %"$indices_gep_1507" = getelementptr i8, i8* %"$indices_buf_1505", i32 0
  %indices_cast10 = bitcast i8* %"$indices_gep_1507" to %String*
  store %String %"$$key1b_1_1506", %String* %indices_cast10, align 8
  %"$key2c_1508" = load %String, %String* %key2c, align 8
  %"$indices_gep_1509" = getelementptr i8, i8* %"$indices_buf_1505", i32 16
  %indices_cast11 = bitcast i8* %"$indices_gep_1509" to %String*
  store %String %"$key2c_1508", %String* %indices_cast11, align 8
  %"$execptr_load_1511" = load i8*, i8** @_execptr, align 8
  %"$$c1_2_call_1512" = call i8* @_fetch_field(i8* %"$execptr_load_1511", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1510", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 2, i8* %"$indices_buf_1505", i32 1)
  %"$$c1_2_1513" = bitcast i8* %"$$c1_2_call_1512" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_2_1513", %TName_Option_String** %"$c1_2", align 8
  %"$$c1_2_1514" = load %TName_Option_String*, %TName_Option_String** %"$c1_2", align 8
  %"$$$c1_2_1514_1515" = bitcast %TName_Option_String* %"$$c1_2_1514" to i8*
  %"$_literal_cost_call_1516" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_60", i8* %"$$$c1_2_1514_1515")
  %"$gasadd_1517" = add i64 %"$_literal_cost_call_1516", 0
  %"$gasadd_1518" = add i64 %"$gasadd_1517", 2
  %"$gasrem_1519" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1520" = icmp ugt i64 %"$gasadd_1518", %"$gasrem_1519"
  br i1 %"$gascmp_1520", label %"$out_of_gas_1521", label %"$have_gas_1522"

"$out_of_gas_1521":                               ; preds = %"$have_gas_1502"
  call void @_out_of_gas()
  br label %"$have_gas_1522"

"$have_gas_1522":                                 ; preds = %"$out_of_gas_1521", %"$have_gas_1502"
  %"$consume_1523" = sub i64 %"$gasrem_1519", %"$gasadd_1518"
  store i64 %"$consume_1523", i64* @_gasrem, align 8
  %"$gasrem_1524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1525" = icmp ugt i64 2, %"$gasrem_1524"
  br i1 %"$gascmp_1525", label %"$out_of_gas_1526", label %"$have_gas_1527"

"$out_of_gas_1526":                               ; preds = %"$have_gas_1522"
  call void @_out_of_gas()
  br label %"$have_gas_1527"

"$have_gas_1527":                                 ; preds = %"$out_of_gas_1526", %"$have_gas_1522"
  %"$consume_1528" = sub i64 %"$gasrem_1524", 2
  store i64 %"$consume_1528", i64* @_gasrem, align 8
  %"$$c1_2_1530" = load %TName_Option_String*, %TName_Option_String** %"$c1_2", align 8
  %"$$c1_2_tag_1531" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_2_1530", i32 0, i32 0
  %"$$c1_2_tag_1532" = load i8, i8* %"$$c1_2_tag_1531", align 1
  switch i8 %"$$c1_2_tag_1532", label %"$empty_default_1533" [
    i8 0, label %"$Some_1534"
    i8 1, label %"$None_1607"
  ]

"$Some_1534":                                     ; preds = %"$have_gas_1527"
  %"$$c1_2_1535" = bitcast %TName_Option_String* %"$$c1_2_1530" to %CName_Some_String*
  %"$c_gep_1536" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_2_1535", i32 0, i32 1
  %"$c_load_1537" = load %String, %String* %"$c_gep_1536", align 8
  %c12 = alloca %String, align 8
  store %String %"$c_load_1537", %String* %c12, align 8
  %"$gasrem_1538" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1539" = icmp ugt i64 1, %"$gasrem_1538"
  br i1 %"$gascmp_1539", label %"$out_of_gas_1540", label %"$have_gas_1541"

"$out_of_gas_1540":                               ; preds = %"$Some_1534"
  call void @_out_of_gas()
  br label %"$have_gas_1541"

"$have_gas_1541":                                 ; preds = %"$out_of_gas_1540", %"$Some_1534"
  %"$consume_1542" = sub i64 %"$gasrem_1538", 1
  store i64 %"$consume_1542", i64* @_gasrem, align 8
  %v13 = alloca %String, align 8
  %"$gasrem_1543" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1544" = icmp ugt i64 1, %"$gasrem_1543"
  br i1 %"$gascmp_1544", label %"$out_of_gas_1545", label %"$have_gas_1546"

"$out_of_gas_1545":                               ; preds = %"$have_gas_1541"
  call void @_out_of_gas()
  br label %"$have_gas_1546"

"$have_gas_1546":                                 ; preds = %"$out_of_gas_1545", %"$have_gas_1541"
  %"$consume_1547" = sub i64 %"$gasrem_1543", 1
  store i64 %"$consume_1547", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1548", i32 0, i32 0), i32 3 }, %String* %v13, align 8
  %"$gasrem_1549" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1550" = icmp ugt i64 1, %"$gasrem_1549"
  br i1 %"$gascmp_1550", label %"$out_of_gas_1551", label %"$have_gas_1552"

"$out_of_gas_1551":                               ; preds = %"$have_gas_1546"
  call void @_out_of_gas()
  br label %"$have_gas_1552"

"$have_gas_1552":                                 ; preds = %"$out_of_gas_1551", %"$have_gas_1546"
  %"$consume_1553" = sub i64 %"$gasrem_1549", 1
  store i64 %"$consume_1553", i64* @_gasrem, align 8
  %eq14 = alloca %TName_Bool*, align 8
  %"$_literal_cost_c_1554" = alloca %String, align 8
  %"$c_1555" = load %String, %String* %c12, align 8
  store %String %"$c_1555", %String* %"$_literal_cost_c_1554", align 8
  %"$$_literal_cost_c_1554_1556" = bitcast %String* %"$_literal_cost_c_1554" to i8*
  %"$_literal_cost_call_1557" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_c_1554_1556")
  %"$_literal_cost_v_1558" = alloca %String, align 8
  %"$v_1559" = load %String, %String* %v13, align 8
  store %String %"$v_1559", %String* %"$_literal_cost_v_1558", align 8
  %"$$_literal_cost_v_1558_1560" = bitcast %String* %"$_literal_cost_v_1558" to i8*
  %"$_literal_cost_call_1561" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_v_1558_1560")
  %"$gasmin_1562" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_1557", i64 %"$_literal_cost_call_1561")
  %"$gasrem_1563" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1564" = icmp ugt i64 %"$gasmin_1562", %"$gasrem_1563"
  br i1 %"$gascmp_1564", label %"$out_of_gas_1565", label %"$have_gas_1566"

"$out_of_gas_1565":                               ; preds = %"$have_gas_1552"
  call void @_out_of_gas()
  br label %"$have_gas_1566"

"$have_gas_1566":                                 ; preds = %"$out_of_gas_1565", %"$have_gas_1552"
  %"$consume_1567" = sub i64 %"$gasrem_1563", %"$gasmin_1562"
  store i64 %"$consume_1567", i64* @_gasrem, align 8
  %"$execptr_load_1568" = load i8*, i8** @_execptr, align 8
  %"$c_1569" = load %String, %String* %c12, align 8
  %"$v_1570" = load %String, %String* %v13, align 8
  %"$eq_call_1571" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1568", %String %"$c_1569", %String %"$v_1570")
  store %TName_Bool* %"$eq_call_1571", %TName_Bool** %eq14, align 8
  %"$gasrem_1573" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1574" = icmp ugt i64 2, %"$gasrem_1573"
  br i1 %"$gascmp_1574", label %"$out_of_gas_1575", label %"$have_gas_1576"

"$out_of_gas_1575":                               ; preds = %"$have_gas_1566"
  call void @_out_of_gas()
  br label %"$have_gas_1576"

"$have_gas_1576":                                 ; preds = %"$out_of_gas_1575", %"$have_gas_1566"
  %"$consume_1577" = sub i64 %"$gasrem_1573", 2
  store i64 %"$consume_1577", i64* @_gasrem, align 8
  %"$eq_1579" = load %TName_Bool*, %TName_Bool** %eq14, align 8
  %"$eq_tag_1580" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_1579", i32 0, i32 0
  %"$eq_tag_1581" = load i8, i8* %"$eq_tag_1580", align 1
  switch i8 %"$eq_tag_1581", label %"$empty_default_1582" [
    i8 0, label %"$True_1583"
    i8 1, label %"$False_1585"
  ]

"$True_1583":                                     ; preds = %"$have_gas_1576"
  %"$eq_1584" = bitcast %TName_Bool* %"$eq_1579" to %CName_True*
  br label %"$matchsucc_1578"

"$False_1585":                                    ; preds = %"$have_gas_1576"
  %"$eq_1586" = bitcast %TName_Bool* %"$eq_1579" to %CName_False*
  %"$gasrem_1587" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1588" = icmp ugt i64 1, %"$gasrem_1587"
  br i1 %"$gascmp_1588", label %"$out_of_gas_1589", label %"$have_gas_1590"

"$out_of_gas_1589":                               ; preds = %"$False_1585"
  call void @_out_of_gas()
  br label %"$have_gas_1590"

"$have_gas_1590":                                 ; preds = %"$out_of_gas_1589", %"$False_1585"
  %"$consume_1591" = sub i64 %"$gasrem_1587", 1
  store i64 %"$consume_1591", i64* @_gasrem, align 8
  %m15 = alloca %String, align 8
  %"$gasrem_1592" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1593" = icmp ugt i64 1, %"$gasrem_1592"
  br i1 %"$gascmp_1593", label %"$out_of_gas_1594", label %"$have_gas_1595"

"$out_of_gas_1594":                               ; preds = %"$have_gas_1590"
  call void @_out_of_gas()
  br label %"$have_gas_1595"

"$have_gas_1595":                                 ; preds = %"$out_of_gas_1594", %"$have_gas_1590"
  %"$consume_1596" = sub i64 %"$gasrem_1592", 1
  store i64 %"$consume_1596", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_1597", i32 0, i32 0), i32 31 }, %String* %m15, align 8
  %"$gasrem_1598" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1599" = icmp ugt i64 1, %"$gasrem_1598"
  br i1 %"$gascmp_1599", label %"$out_of_gas_1600", label %"$have_gas_1601"

"$out_of_gas_1600":                               ; preds = %"$have_gas_1595"
  call void @_out_of_gas()
  br label %"$have_gas_1601"

"$have_gas_1601":                                 ; preds = %"$out_of_gas_1600", %"$have_gas_1595"
  %"$consume_1602" = sub i64 %"$gasrem_1598", 1
  store i64 %"$consume_1602", i64* @_gasrem, align 8
  %"$fail_msg__origin_1603" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1603", align 1
  %"$fail_msg__sender_1604" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1604", align 1
  %"$tname_1605" = load %String, %String* %tname, align 8
  %"$m_1606" = load %String, %String* %m15, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1603", [20 x i8]* %"$fail_msg__sender_1604", %String %"$tname_1605", %String %"$m_1606")
  br label %"$matchsucc_1578"

"$empty_default_1582":                            ; preds = %"$have_gas_1576"
  br label %"$matchsucc_1578"

"$matchsucc_1578":                                ; preds = %"$have_gas_1601", %"$True_1583", %"$empty_default_1582"
  br label %"$matchsucc_1529"

"$None_1607":                                     ; preds = %"$have_gas_1527"
  %"$$c1_2_1608" = bitcast %TName_Option_String* %"$$c1_2_1530" to %CName_None_String*
  %"$gasrem_1609" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1610" = icmp ugt i64 1, %"$gasrem_1609"
  br i1 %"$gascmp_1610", label %"$out_of_gas_1611", label %"$have_gas_1612"

"$out_of_gas_1611":                               ; preds = %"$None_1607"
  call void @_out_of_gas()
  br label %"$have_gas_1612"

"$have_gas_1612":                                 ; preds = %"$out_of_gas_1611", %"$None_1607"
  %"$consume_1613" = sub i64 %"$gasrem_1609", 1
  store i64 %"$consume_1613", i64* @_gasrem, align 8
  %m16 = alloca %String, align 8
  %"$gasrem_1614" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1615" = icmp ugt i64 1, %"$gasrem_1614"
  br i1 %"$gascmp_1615", label %"$out_of_gas_1616", label %"$have_gas_1617"

"$out_of_gas_1616":                               ; preds = %"$have_gas_1612"
  call void @_out_of_gas()
  br label %"$have_gas_1617"

"$have_gas_1617":                                 ; preds = %"$out_of_gas_1616", %"$have_gas_1612"
  %"$consume_1618" = sub i64 %"$gasrem_1614", 1
  store i64 %"$consume_1618", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_1619", i32 0, i32 0), i32 21 }, %String* %m16, align 8
  %"$gasrem_1620" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1621" = icmp ugt i64 1, %"$gasrem_1620"
  br i1 %"$gascmp_1621", label %"$out_of_gas_1622", label %"$have_gas_1623"

"$out_of_gas_1622":                               ; preds = %"$have_gas_1617"
  call void @_out_of_gas()
  br label %"$have_gas_1623"

"$have_gas_1623":                                 ; preds = %"$out_of_gas_1622", %"$have_gas_1617"
  %"$consume_1624" = sub i64 %"$gasrem_1620", 1
  store i64 %"$consume_1624", i64* @_gasrem, align 8
  %"$fail_msg__origin_1625" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1625", align 1
  %"$fail_msg__sender_1626" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1626", align 1
  %"$tname_1627" = load %String, %String* %tname, align 8
  %"$m_1628" = load %String, %String* %m16, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1625", [20 x i8]* %"$fail_msg__sender_1626", %String %"$tname_1627", %String %"$m_1628")
  br label %"$matchsucc_1529"

"$empty_default_1533":                            ; preds = %"$have_gas_1527"
  br label %"$matchsucc_1529"

"$matchsucc_1529":                                ; preds = %"$have_gas_1623", %"$matchsucc_1578", %"$empty_default_1533"
  %"$gasrem_1629" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1630" = icmp ugt i64 1, %"$gasrem_1629"
  br i1 %"$gascmp_1630", label %"$out_of_gas_1631", label %"$have_gas_1632"

"$out_of_gas_1631":                               ; preds = %"$matchsucc_1529"
  call void @_out_of_gas()
  br label %"$have_gas_1632"

"$have_gas_1632":                                 ; preds = %"$out_of_gas_1631", %"$matchsucc_1529"
  %"$consume_1633" = sub i64 %"$gasrem_1629", 1
  store i64 %"$consume_1633", i64* @_gasrem, align 8
  %"$indices_buf_1634_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1634_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1634_salloc_load", i64 16)
  %"$indices_buf_1634_salloc" = bitcast i8* %"$indices_buf_1634_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1634" = bitcast [16 x i8]* %"$indices_buf_1634_salloc" to i8*
  %"$$key1b_1_1635" = load %String, %String* %"$key1b_1", align 8
  %"$indices_gep_1636" = getelementptr i8, i8* %"$indices_buf_1634", i32 0
  %indices_cast17 = bitcast i8* %"$indices_gep_1636" to %String*
  store %String %"$$key1b_1_1635", %String* %indices_cast17, align 8
  %"$execptr_load_1637" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_1637", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1638", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 1, i8* %"$indices_buf_1634", i8* null)
  ret void
}

define void @t6(i8* %0) {
entry:
  %"$_amount_1640" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1641" = bitcast i8* %"$_amount_1640" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1641", align 8
  %"$_origin_1642" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1643" = bitcast i8* %"$_origin_1642" to [20 x i8]*
  %"$_sender_1644" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1645" = bitcast i8* %"$_sender_1644" to [20 x i8]*
  call void @"$t6_1177"(%Uint128 %_amount, [20 x i8]* %"$_origin_1643", [20 x i8]* %"$_sender_1645")
  ret void
}

define internal void @"$t7_1646"(%Uint128 %_amount, [20 x i8]* %"$_origin_1647", [20 x i8]* %"$_sender_1648") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1647", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1648", align 1
  %"$gasrem_1649" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1650" = icmp ugt i64 1, %"$gasrem_1649"
  br i1 %"$gascmp_1650", label %"$out_of_gas_1651", label %"$have_gas_1652"

"$out_of_gas_1651":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1652"

"$have_gas_1652":                                 ; preds = %"$out_of_gas_1651", %entry
  %"$consume_1653" = sub i64 %"$gasrem_1649", 1
  store i64 %"$consume_1653", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_1654" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1655" = icmp ugt i64 1, %"$gasrem_1654"
  br i1 %"$gascmp_1655", label %"$out_of_gas_1656", label %"$have_gas_1657"

"$out_of_gas_1656":                               ; preds = %"$have_gas_1652"
  call void @_out_of_gas()
  br label %"$have_gas_1657"

"$have_gas_1657":                                 ; preds = %"$out_of_gas_1656", %"$have_gas_1652"
  %"$consume_1658" = sub i64 %"$gasrem_1654", 1
  store i64 %"$consume_1658", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_1659", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %"$gasrem_1660" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1661" = icmp ugt i64 1, %"$gasrem_1660"
  br i1 %"$gascmp_1661", label %"$out_of_gas_1662", label %"$have_gas_1663"

"$out_of_gas_1662":                               ; preds = %"$have_gas_1657"
  call void @_out_of_gas()
  br label %"$have_gas_1663"

"$have_gas_1663":                                 ; preds = %"$out_of_gas_1662", %"$have_gas_1657"
  %"$consume_1664" = sub i64 %"$gasrem_1660", 1
  store i64 %"$consume_1664", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_1665" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1666" = icmp ugt i64 1, %"$gasrem_1665"
  br i1 %"$gascmp_1666", label %"$out_of_gas_1667", label %"$have_gas_1668"

"$out_of_gas_1667":                               ; preds = %"$have_gas_1663"
  call void @_out_of_gas()
  br label %"$have_gas_1668"

"$have_gas_1668":                                 ; preds = %"$out_of_gas_1667", %"$have_gas_1663"
  %"$consume_1669" = sub i64 %"$gasrem_1665", 1
  store i64 %"$consume_1669", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1670", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_1671" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1672" = icmp ugt i64 1, %"$gasrem_1671"
  br i1 %"$gascmp_1672", label %"$out_of_gas_1673", label %"$have_gas_1674"

"$out_of_gas_1673":                               ; preds = %"$have_gas_1668"
  call void @_out_of_gas()
  br label %"$have_gas_1674"

"$have_gas_1674":                                 ; preds = %"$out_of_gas_1673", %"$have_gas_1668"
  %"$consume_1675" = sub i64 %"$gasrem_1671", 1
  store i64 %"$consume_1675", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_1676" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1677" = icmp ugt i64 1, %"$gasrem_1676"
  br i1 %"$gascmp_1677", label %"$out_of_gas_1678", label %"$have_gas_1679"

"$out_of_gas_1678":                               ; preds = %"$have_gas_1674"
  call void @_out_of_gas()
  br label %"$have_gas_1679"

"$have_gas_1679":                                 ; preds = %"$out_of_gas_1678", %"$have_gas_1674"
  %"$consume_1680" = sub i64 %"$gasrem_1676", 1
  store i64 %"$consume_1680", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1681", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %c1 = alloca %TName_Option_String*, align 8
  %"$indices_buf_1682_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1682_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1682_salloc_load", i64 32)
  %"$indices_buf_1682_salloc" = bitcast i8* %"$indices_buf_1682_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1682" = bitcast [32 x i8]* %"$indices_buf_1682_salloc" to i8*
  %"$key1a_1683" = load %String, %String* %key1a, align 8
  %"$indices_gep_1684" = getelementptr i8, i8* %"$indices_buf_1682", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1684" to %String*
  store %String %"$key1a_1683", %String* %indices_cast, align 8
  %"$key2a_1685" = load %String, %String* %key2a, align 8
  %"$indices_gep_1686" = getelementptr i8, i8* %"$indices_buf_1682", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_1686" to %String*
  store %String %"$key2a_1685", %String* %indices_cast1, align 8
  %"$execptr_load_1688" = load i8*, i8** @_execptr, align 8
  %"$c1_call_1689" = call i8* @_fetch_field(i8* %"$execptr_load_1688", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1687", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 2, i8* %"$indices_buf_1682", i32 1)
  %"$c1_1690" = bitcast i8* %"$c1_call_1689" to %TName_Option_String*
  store %TName_Option_String* %"$c1_1690", %TName_Option_String** %c1, align 8
  %"$c1_1691" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$$c1_1691_1692" = bitcast %TName_Option_String* %"$c1_1691" to i8*
  %"$_literal_cost_call_1693" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_60", i8* %"$$c1_1691_1692")
  %"$gasadd_1694" = add i64 %"$_literal_cost_call_1693", 0
  %"$gasadd_1695" = add i64 %"$gasadd_1694", 2
  %"$gasrem_1696" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1697" = icmp ugt i64 %"$gasadd_1695", %"$gasrem_1696"
  br i1 %"$gascmp_1697", label %"$out_of_gas_1698", label %"$have_gas_1699"

"$out_of_gas_1698":                               ; preds = %"$have_gas_1679"
  call void @_out_of_gas()
  br label %"$have_gas_1699"

"$have_gas_1699":                                 ; preds = %"$out_of_gas_1698", %"$have_gas_1679"
  %"$consume_1700" = sub i64 %"$gasrem_1696", %"$gasadd_1695"
  store i64 %"$consume_1700", i64* @_gasrem, align 8
  %"$gasrem_1701" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1702" = icmp ugt i64 2, %"$gasrem_1701"
  br i1 %"$gascmp_1702", label %"$out_of_gas_1703", label %"$have_gas_1704"

"$out_of_gas_1703":                               ; preds = %"$have_gas_1699"
  call void @_out_of_gas()
  br label %"$have_gas_1704"

"$have_gas_1704":                                 ; preds = %"$out_of_gas_1703", %"$have_gas_1699"
  %"$consume_1705" = sub i64 %"$gasrem_1701", 2
  store i64 %"$consume_1705", i64* @_gasrem, align 8
  %"$c1_1707" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$c1_tag_1708" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_1707", i32 0, i32 0
  %"$c1_tag_1709" = load i8, i8* %"$c1_tag_1708", align 1
  switch i8 %"$c1_tag_1709", label %"$empty_default_1710" [
    i8 0, label %"$Some_1711"
    i8 1, label %"$None_1784"
  ]

"$Some_1711":                                     ; preds = %"$have_gas_1704"
  %"$c1_1712" = bitcast %TName_Option_String* %"$c1_1707" to %CName_Some_String*
  %"$c_gep_1713" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_1712", i32 0, i32 1
  %"$c_load_1714" = load %String, %String* %"$c_gep_1713", align 8
  %c = alloca %String, align 8
  store %String %"$c_load_1714", %String* %c, align 8
  %"$gasrem_1715" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1716" = icmp ugt i64 1, %"$gasrem_1715"
  br i1 %"$gascmp_1716", label %"$out_of_gas_1717", label %"$have_gas_1718"

"$out_of_gas_1717":                               ; preds = %"$Some_1711"
  call void @_out_of_gas()
  br label %"$have_gas_1718"

"$have_gas_1718":                                 ; preds = %"$out_of_gas_1717", %"$Some_1711"
  %"$consume_1719" = sub i64 %"$gasrem_1715", 1
  store i64 %"$consume_1719", i64* @_gasrem, align 8
  %v = alloca %String, align 8
  %"$gasrem_1720" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1721" = icmp ugt i64 1, %"$gasrem_1720"
  br i1 %"$gascmp_1721", label %"$out_of_gas_1722", label %"$have_gas_1723"

"$out_of_gas_1722":                               ; preds = %"$have_gas_1718"
  call void @_out_of_gas()
  br label %"$have_gas_1723"

"$have_gas_1723":                                 ; preds = %"$out_of_gas_1722", %"$have_gas_1718"
  %"$consume_1724" = sub i64 %"$gasrem_1720", 1
  store i64 %"$consume_1724", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1725", i32 0, i32 0), i32 3 }, %String* %v, align 8
  %"$gasrem_1726" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1727" = icmp ugt i64 1, %"$gasrem_1726"
  br i1 %"$gascmp_1727", label %"$out_of_gas_1728", label %"$have_gas_1729"

"$out_of_gas_1728":                               ; preds = %"$have_gas_1723"
  call void @_out_of_gas()
  br label %"$have_gas_1729"

"$have_gas_1729":                                 ; preds = %"$out_of_gas_1728", %"$have_gas_1723"
  %"$consume_1730" = sub i64 %"$gasrem_1726", 1
  store i64 %"$consume_1730", i64* @_gasrem, align 8
  %eq = alloca %TName_Bool*, align 8
  %"$_literal_cost_c_1731" = alloca %String, align 8
  %"$c_1732" = load %String, %String* %c, align 8
  store %String %"$c_1732", %String* %"$_literal_cost_c_1731", align 8
  %"$$_literal_cost_c_1731_1733" = bitcast %String* %"$_literal_cost_c_1731" to i8*
  %"$_literal_cost_call_1734" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_c_1731_1733")
  %"$_literal_cost_v_1735" = alloca %String, align 8
  %"$v_1736" = load %String, %String* %v, align 8
  store %String %"$v_1736", %String* %"$_literal_cost_v_1735", align 8
  %"$$_literal_cost_v_1735_1737" = bitcast %String* %"$_literal_cost_v_1735" to i8*
  %"$_literal_cost_call_1738" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_v_1735_1737")
  %"$gasmin_1739" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_1734", i64 %"$_literal_cost_call_1738")
  %"$gasrem_1740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1741" = icmp ugt i64 %"$gasmin_1739", %"$gasrem_1740"
  br i1 %"$gascmp_1741", label %"$out_of_gas_1742", label %"$have_gas_1743"

"$out_of_gas_1742":                               ; preds = %"$have_gas_1729"
  call void @_out_of_gas()
  br label %"$have_gas_1743"

"$have_gas_1743":                                 ; preds = %"$out_of_gas_1742", %"$have_gas_1729"
  %"$consume_1744" = sub i64 %"$gasrem_1740", %"$gasmin_1739"
  store i64 %"$consume_1744", i64* @_gasrem, align 8
  %"$execptr_load_1745" = load i8*, i8** @_execptr, align 8
  %"$c_1746" = load %String, %String* %c, align 8
  %"$v_1747" = load %String, %String* %v, align 8
  %"$eq_call_1748" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1745", %String %"$c_1746", %String %"$v_1747")
  store %TName_Bool* %"$eq_call_1748", %TName_Bool** %eq, align 8
  %"$gasrem_1750" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1751" = icmp ugt i64 2, %"$gasrem_1750"
  br i1 %"$gascmp_1751", label %"$out_of_gas_1752", label %"$have_gas_1753"

"$out_of_gas_1752":                               ; preds = %"$have_gas_1743"
  call void @_out_of_gas()
  br label %"$have_gas_1753"

"$have_gas_1753":                                 ; preds = %"$out_of_gas_1752", %"$have_gas_1743"
  %"$consume_1754" = sub i64 %"$gasrem_1750", 2
  store i64 %"$consume_1754", i64* @_gasrem, align 8
  %"$eq_1756" = load %TName_Bool*, %TName_Bool** %eq, align 8
  %"$eq_tag_1757" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_1756", i32 0, i32 0
  %"$eq_tag_1758" = load i8, i8* %"$eq_tag_1757", align 1
  switch i8 %"$eq_tag_1758", label %"$empty_default_1759" [
    i8 0, label %"$True_1760"
    i8 1, label %"$False_1762"
  ]

"$True_1760":                                     ; preds = %"$have_gas_1753"
  %"$eq_1761" = bitcast %TName_Bool* %"$eq_1756" to %CName_True*
  br label %"$matchsucc_1755"

"$False_1762":                                    ; preds = %"$have_gas_1753"
  %"$eq_1763" = bitcast %TName_Bool* %"$eq_1756" to %CName_False*
  %"$gasrem_1764" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1765" = icmp ugt i64 1, %"$gasrem_1764"
  br i1 %"$gascmp_1765", label %"$out_of_gas_1766", label %"$have_gas_1767"

"$out_of_gas_1766":                               ; preds = %"$False_1762"
  call void @_out_of_gas()
  br label %"$have_gas_1767"

"$have_gas_1767":                                 ; preds = %"$out_of_gas_1766", %"$False_1762"
  %"$consume_1768" = sub i64 %"$gasrem_1764", 1
  store i64 %"$consume_1768", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_1769" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1770" = icmp ugt i64 1, %"$gasrem_1769"
  br i1 %"$gascmp_1770", label %"$out_of_gas_1771", label %"$have_gas_1772"

"$out_of_gas_1771":                               ; preds = %"$have_gas_1767"
  call void @_out_of_gas()
  br label %"$have_gas_1772"

"$have_gas_1772":                                 ; preds = %"$out_of_gas_1771", %"$have_gas_1767"
  %"$consume_1773" = sub i64 %"$gasrem_1769", 1
  store i64 %"$consume_1773", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_1774", i32 0, i32 0), i32 31 }, %String* %m, align 8
  %"$gasrem_1775" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1776" = icmp ugt i64 1, %"$gasrem_1775"
  br i1 %"$gascmp_1776", label %"$out_of_gas_1777", label %"$have_gas_1778"

"$out_of_gas_1777":                               ; preds = %"$have_gas_1772"
  call void @_out_of_gas()
  br label %"$have_gas_1778"

"$have_gas_1778":                                 ; preds = %"$out_of_gas_1777", %"$have_gas_1772"
  %"$consume_1779" = sub i64 %"$gasrem_1775", 1
  store i64 %"$consume_1779", i64* @_gasrem, align 8
  %"$fail_msg__origin_1780" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1780", align 1
  %"$fail_msg__sender_1781" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1781", align 1
  %"$tname_1782" = load %String, %String* %tname, align 8
  %"$m_1783" = load %String, %String* %m, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1780", [20 x i8]* %"$fail_msg__sender_1781", %String %"$tname_1782", %String %"$m_1783")
  br label %"$matchsucc_1755"

"$empty_default_1759":                            ; preds = %"$have_gas_1753"
  br label %"$matchsucc_1755"

"$matchsucc_1755":                                ; preds = %"$have_gas_1778", %"$True_1760", %"$empty_default_1759"
  br label %"$matchsucc_1706"

"$None_1784":                                     ; preds = %"$have_gas_1704"
  %"$c1_1785" = bitcast %TName_Option_String* %"$c1_1707" to %CName_None_String*
  %"$gasrem_1786" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1787" = icmp ugt i64 1, %"$gasrem_1786"
  br i1 %"$gascmp_1787", label %"$out_of_gas_1788", label %"$have_gas_1789"

"$out_of_gas_1788":                               ; preds = %"$None_1784"
  call void @_out_of_gas()
  br label %"$have_gas_1789"

"$have_gas_1789":                                 ; preds = %"$out_of_gas_1788", %"$None_1784"
  %"$consume_1790" = sub i64 %"$gasrem_1786", 1
  store i64 %"$consume_1790", i64* @_gasrem, align 8
  %m2 = alloca %String, align 8
  %"$gasrem_1791" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1792" = icmp ugt i64 1, %"$gasrem_1791"
  br i1 %"$gascmp_1792", label %"$out_of_gas_1793", label %"$have_gas_1794"

"$out_of_gas_1793":                               ; preds = %"$have_gas_1789"
  call void @_out_of_gas()
  br label %"$have_gas_1794"

"$have_gas_1794":                                 ; preds = %"$out_of_gas_1793", %"$have_gas_1789"
  %"$consume_1795" = sub i64 %"$gasrem_1791", 1
  store i64 %"$consume_1795", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_1796", i32 0, i32 0), i32 21 }, %String* %m2, align 8
  %"$gasrem_1797" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1798" = icmp ugt i64 1, %"$gasrem_1797"
  br i1 %"$gascmp_1798", label %"$out_of_gas_1799", label %"$have_gas_1800"

"$out_of_gas_1799":                               ; preds = %"$have_gas_1794"
  call void @_out_of_gas()
  br label %"$have_gas_1800"

"$have_gas_1800":                                 ; preds = %"$out_of_gas_1799", %"$have_gas_1794"
  %"$consume_1801" = sub i64 %"$gasrem_1797", 1
  store i64 %"$consume_1801", i64* @_gasrem, align 8
  %"$fail_msg__origin_1802" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1802", align 1
  %"$fail_msg__sender_1803" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1803", align 1
  %"$tname_1804" = load %String, %String* %tname, align 8
  %"$m_1805" = load %String, %String* %m2, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1802", [20 x i8]* %"$fail_msg__sender_1803", %String %"$tname_1804", %String %"$m_1805")
  br label %"$matchsucc_1706"

"$empty_default_1710":                            ; preds = %"$have_gas_1704"
  br label %"$matchsucc_1706"

"$matchsucc_1706":                                ; preds = %"$have_gas_1800", %"$matchsucc_1755", %"$empty_default_1710"
  %"$gasrem_1806" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1807" = icmp ugt i64 1, %"$gasrem_1806"
  br i1 %"$gascmp_1807", label %"$out_of_gas_1808", label %"$have_gas_1809"

"$out_of_gas_1808":                               ; preds = %"$matchsucc_1706"
  call void @_out_of_gas()
  br label %"$have_gas_1809"

"$have_gas_1809":                                 ; preds = %"$out_of_gas_1808", %"$matchsucc_1706"
  %"$consume_1810" = sub i64 %"$gasrem_1806", 1
  store i64 %"$consume_1810", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  %"$gasrem_1811" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1812" = icmp ugt i64 1, %"$gasrem_1811"
  br i1 %"$gascmp_1812", label %"$out_of_gas_1813", label %"$have_gas_1814"

"$out_of_gas_1813":                               ; preds = %"$have_gas_1809"
  call void @_out_of_gas()
  br label %"$have_gas_1814"

"$have_gas_1814":                                 ; preds = %"$out_of_gas_1813", %"$have_gas_1809"
  %"$consume_1815" = sub i64 %"$gasrem_1811", 1
  store i64 %"$consume_1815", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1816", i32 0, i32 0), i32 5 }, %String* %key1b, align 8
  %"$c1_3" = alloca %"TName_Option_Map_(String)_(String)"*, align 8
  %"$indices_buf_1817_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1817_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1817_salloc_load", i64 16)
  %"$indices_buf_1817_salloc" = bitcast i8* %"$indices_buf_1817_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1817" = bitcast [16 x i8]* %"$indices_buf_1817_salloc" to i8*
  %"$key1b_1818" = load %String, %String* %key1b, align 8
  %"$indices_gep_1819" = getelementptr i8, i8* %"$indices_buf_1817", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_1819" to %String*
  store %String %"$key1b_1818", %String* %indices_cast3, align 8
  %"$execptr_load_1821" = load i8*, i8** @_execptr, align 8
  %"$$c1_3_call_1822" = call i8* @_fetch_field(i8* %"$execptr_load_1821", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1820", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 1, i8* %"$indices_buf_1817", i32 1)
  %"$$c1_3_1823" = bitcast i8* %"$$c1_3_call_1822" to %"TName_Option_Map_(String)_(String)"*
  store %"TName_Option_Map_(String)_(String)"* %"$$c1_3_1823", %"TName_Option_Map_(String)_(String)"** %"$c1_3", align 8
  %"$$c1_3_1824" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %"$c1_3", align 8
  %"$$$c1_3_1824_1825" = bitcast %"TName_Option_Map_(String)_(String)"* %"$$c1_3_1824" to i8*
  %"$_literal_cost_call_1826" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(String)_59", i8* %"$$$c1_3_1824_1825")
  %"$gasadd_1827" = add i64 %"$_literal_cost_call_1826", 0
  %"$gasadd_1828" = add i64 %"$gasadd_1827", 1
  %"$gasrem_1829" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1830" = icmp ugt i64 %"$gasadd_1828", %"$gasrem_1829"
  br i1 %"$gascmp_1830", label %"$out_of_gas_1831", label %"$have_gas_1832"

"$out_of_gas_1831":                               ; preds = %"$have_gas_1814"
  call void @_out_of_gas()
  br label %"$have_gas_1832"

"$have_gas_1832":                                 ; preds = %"$out_of_gas_1831", %"$have_gas_1814"
  %"$consume_1833" = sub i64 %"$gasrem_1829", %"$gasadd_1828"
  store i64 %"$consume_1833", i64* @_gasrem, align 8
  %"$gasrem_1834" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1835" = icmp ugt i64 2, %"$gasrem_1834"
  br i1 %"$gascmp_1835", label %"$out_of_gas_1836", label %"$have_gas_1837"

"$out_of_gas_1836":                               ; preds = %"$have_gas_1832"
  call void @_out_of_gas()
  br label %"$have_gas_1837"

"$have_gas_1837":                                 ; preds = %"$out_of_gas_1836", %"$have_gas_1832"
  %"$consume_1838" = sub i64 %"$gasrem_1834", 2
  store i64 %"$consume_1838", i64* @_gasrem, align 8
  %"$$c1_3_1840" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %"$c1_3", align 8
  %"$$c1_3_tag_1841" = getelementptr inbounds %"TName_Option_Map_(String)_(String)", %"TName_Option_Map_(String)_(String)"* %"$$c1_3_1840", i32 0, i32 0
  %"$$c1_3_tag_1842" = load i8, i8* %"$$c1_3_tag_1841", align 1
  switch i8 %"$$c1_3_tag_1842", label %"$empty_default_1843" [
    i8 0, label %"$Some_1844"
    i8 1, label %"$None_1868"
  ]

"$Some_1844":                                     ; preds = %"$have_gas_1837"
  %"$$c1_3_1845" = bitcast %"TName_Option_Map_(String)_(String)"* %"$$c1_3_1840" to %"CName_Some_Map_(String)_(String)"*
  %"$$$c1_3_16_gep_1846" = getelementptr inbounds %"CName_Some_Map_(String)_(String)", %"CName_Some_Map_(String)_(String)"* %"$$c1_3_1845", i32 0, i32 1
  %"$$$c1_3_16_load_1847" = load %Map_String_String*, %Map_String_String** %"$$$c1_3_16_gep_1846", align 8
  %"$$c1_3_16" = alloca %Map_String_String*, align 8
  store %Map_String_String* %"$$$c1_3_16_load_1847", %Map_String_String** %"$$c1_3_16", align 8
  %"$gasrem_1848" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1849" = icmp ugt i64 1, %"$gasrem_1848"
  br i1 %"$gascmp_1849", label %"$out_of_gas_1850", label %"$have_gas_1851"

"$out_of_gas_1850":                               ; preds = %"$Some_1844"
  call void @_out_of_gas()
  br label %"$have_gas_1851"

"$have_gas_1851":                                 ; preds = %"$out_of_gas_1850", %"$Some_1844"
  %"$consume_1852" = sub i64 %"$gasrem_1848", 1
  store i64 %"$consume_1852", i64* @_gasrem, align 8
  %m4 = alloca %String, align 8
  %"$gasrem_1853" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1854" = icmp ugt i64 1, %"$gasrem_1853"
  br i1 %"$gascmp_1854", label %"$out_of_gas_1855", label %"$have_gas_1856"

"$out_of_gas_1855":                               ; preds = %"$have_gas_1851"
  call void @_out_of_gas()
  br label %"$have_gas_1856"

"$have_gas_1856":                                 ; preds = %"$out_of_gas_1855", %"$have_gas_1851"
  %"$consume_1857" = sub i64 %"$gasrem_1853", 1
  store i64 %"$consume_1857", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"$stringlit_1858", i32 0, i32 0), i32 36 }, %String* %m4, align 8
  %"$gasrem_1859" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1860" = icmp ugt i64 1, %"$gasrem_1859"
  br i1 %"$gascmp_1860", label %"$out_of_gas_1861", label %"$have_gas_1862"

"$out_of_gas_1861":                               ; preds = %"$have_gas_1856"
  call void @_out_of_gas()
  br label %"$have_gas_1862"

"$have_gas_1862":                                 ; preds = %"$out_of_gas_1861", %"$have_gas_1856"
  %"$consume_1863" = sub i64 %"$gasrem_1859", 1
  store i64 %"$consume_1863", i64* @_gasrem, align 8
  %"$fail_msg__origin_1864" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1864", align 1
  %"$fail_msg__sender_1865" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1865", align 1
  %"$tname_1866" = load %String, %String* %tname, align 8
  %"$m_1867" = load %String, %String* %m4, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1864", [20 x i8]* %"$fail_msg__sender_1865", %String %"$tname_1866", %String %"$m_1867")
  br label %"$matchsucc_1839"

"$None_1868":                                     ; preds = %"$have_gas_1837"
  %"$$c1_3_1869" = bitcast %"TName_Option_Map_(String)_(String)"* %"$$c1_3_1840" to %"CName_None_Map_(String)_(String)"*
  br label %"$matchsucc_1839"

"$empty_default_1843":                            ; preds = %"$have_gas_1837"
  br label %"$matchsucc_1839"

"$matchsucc_1839":                                ; preds = %"$None_1868", %"$have_gas_1862", %"$empty_default_1843"
  %"$gasrem_1870" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1871" = icmp ugt i64 1, %"$gasrem_1870"
  br i1 %"$gascmp_1871", label %"$out_of_gas_1872", label %"$have_gas_1873"

"$out_of_gas_1872":                               ; preds = %"$matchsucc_1839"
  call void @_out_of_gas()
  br label %"$have_gas_1873"

"$have_gas_1873":                                 ; preds = %"$out_of_gas_1872", %"$matchsucc_1839"
  %"$consume_1874" = sub i64 %"$gasrem_1870", 1
  store i64 %"$consume_1874", i64* @_gasrem, align 8
  %"$key1b_4" = alloca %String, align 8
  %"$gasrem_1875" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1876" = icmp ugt i64 1, %"$gasrem_1875"
  br i1 %"$gascmp_1876", label %"$out_of_gas_1877", label %"$have_gas_1878"

"$out_of_gas_1877":                               ; preds = %"$have_gas_1873"
  call void @_out_of_gas()
  br label %"$have_gas_1878"

"$have_gas_1878":                                 ; preds = %"$out_of_gas_1877", %"$have_gas_1873"
  %"$consume_1879" = sub i64 %"$gasrem_1875", 1
  store i64 %"$consume_1879", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1880", i32 0, i32 0), i32 5 }, %String* %"$key1b_4", align 8
  %"$gasrem_1881" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1882" = icmp ugt i64 1, %"$gasrem_1881"
  br i1 %"$gascmp_1882", label %"$out_of_gas_1883", label %"$have_gas_1884"

"$out_of_gas_1883":                               ; preds = %"$have_gas_1878"
  call void @_out_of_gas()
  br label %"$have_gas_1884"

"$have_gas_1884":                                 ; preds = %"$out_of_gas_1883", %"$have_gas_1878"
  %"$consume_1885" = sub i64 %"$gasrem_1881", 1
  store i64 %"$consume_1885", i64* @_gasrem, align 8
  %key2b = alloca %String, align 8
  %"$gasrem_1886" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1887" = icmp ugt i64 1, %"$gasrem_1886"
  br i1 %"$gascmp_1887", label %"$out_of_gas_1888", label %"$have_gas_1889"

"$out_of_gas_1888":                               ; preds = %"$have_gas_1884"
  call void @_out_of_gas()
  br label %"$have_gas_1889"

"$have_gas_1889":                                 ; preds = %"$out_of_gas_1888", %"$have_gas_1884"
  %"$consume_1890" = sub i64 %"$gasrem_1886", 1
  store i64 %"$consume_1890", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1891", i32 0, i32 0), i32 5 }, %String* %key2b, align 8
  %"$c1_5" = alloca %TName_Option_String*, align 8
  %"$indices_buf_1892_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1892_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1892_salloc_load", i64 32)
  %"$indices_buf_1892_salloc" = bitcast i8* %"$indices_buf_1892_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1892" = bitcast [32 x i8]* %"$indices_buf_1892_salloc" to i8*
  %"$$key1b_4_1893" = load %String, %String* %"$key1b_4", align 8
  %"$indices_gep_1894" = getelementptr i8, i8* %"$indices_buf_1892", i32 0
  %indices_cast5 = bitcast i8* %"$indices_gep_1894" to %String*
  store %String %"$$key1b_4_1893", %String* %indices_cast5, align 8
  %"$key2b_1895" = load %String, %String* %key2b, align 8
  %"$indices_gep_1896" = getelementptr i8, i8* %"$indices_buf_1892", i32 16
  %indices_cast6 = bitcast i8* %"$indices_gep_1896" to %String*
  store %String %"$key2b_1895", %String* %indices_cast6, align 8
  %"$execptr_load_1898" = load i8*, i8** @_execptr, align 8
  %"$$c1_5_call_1899" = call i8* @_fetch_field(i8* %"$execptr_load_1898", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1897", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 2, i8* %"$indices_buf_1892", i32 1)
  %"$$c1_5_1900" = bitcast i8* %"$$c1_5_call_1899" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_5_1900", %TName_Option_String** %"$c1_5", align 8
  %"$$c1_5_1901" = load %TName_Option_String*, %TName_Option_String** %"$c1_5", align 8
  %"$$$c1_5_1901_1902" = bitcast %TName_Option_String* %"$$c1_5_1901" to i8*
  %"$_literal_cost_call_1903" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_60", i8* %"$$$c1_5_1901_1902")
  %"$gasadd_1904" = add i64 %"$_literal_cost_call_1903", 0
  %"$gasadd_1905" = add i64 %"$gasadd_1904", 2
  %"$gasrem_1906" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1907" = icmp ugt i64 %"$gasadd_1905", %"$gasrem_1906"
  br i1 %"$gascmp_1907", label %"$out_of_gas_1908", label %"$have_gas_1909"

"$out_of_gas_1908":                               ; preds = %"$have_gas_1889"
  call void @_out_of_gas()
  br label %"$have_gas_1909"

"$have_gas_1909":                                 ; preds = %"$out_of_gas_1908", %"$have_gas_1889"
  %"$consume_1910" = sub i64 %"$gasrem_1906", %"$gasadd_1905"
  store i64 %"$consume_1910", i64* @_gasrem, align 8
  %"$gasrem_1911" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1912" = icmp ugt i64 2, %"$gasrem_1911"
  br i1 %"$gascmp_1912", label %"$out_of_gas_1913", label %"$have_gas_1914"

"$out_of_gas_1913":                               ; preds = %"$have_gas_1909"
  call void @_out_of_gas()
  br label %"$have_gas_1914"

"$have_gas_1914":                                 ; preds = %"$out_of_gas_1913", %"$have_gas_1909"
  %"$consume_1915" = sub i64 %"$gasrem_1911", 2
  store i64 %"$consume_1915", i64* @_gasrem, align 8
  %"$$c1_5_1917" = load %TName_Option_String*, %TName_Option_String** %"$c1_5", align 8
  %"$$c1_5_tag_1918" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_5_1917", i32 0, i32 0
  %"$$c1_5_tag_1919" = load i8, i8* %"$$c1_5_tag_1918", align 1
  switch i8 %"$$c1_5_tag_1919", label %"$empty_default_1920" [
    i8 0, label %"$Some_1921"
    i8 1, label %"$None_1945"
  ]

"$Some_1921":                                     ; preds = %"$have_gas_1914"
  %"$$c1_5_1922" = bitcast %TName_Option_String* %"$$c1_5_1917" to %CName_Some_String*
  %"$$$c1_5_15_gep_1923" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_5_1922", i32 0, i32 1
  %"$$$c1_5_15_load_1924" = load %String, %String* %"$$$c1_5_15_gep_1923", align 8
  %"$$c1_5_15" = alloca %String, align 8
  store %String %"$$$c1_5_15_load_1924", %String* %"$$c1_5_15", align 8
  %"$gasrem_1925" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1926" = icmp ugt i64 1, %"$gasrem_1925"
  br i1 %"$gascmp_1926", label %"$out_of_gas_1927", label %"$have_gas_1928"

"$out_of_gas_1927":                               ; preds = %"$Some_1921"
  call void @_out_of_gas()
  br label %"$have_gas_1928"

"$have_gas_1928":                                 ; preds = %"$out_of_gas_1927", %"$Some_1921"
  %"$consume_1929" = sub i64 %"$gasrem_1925", 1
  store i64 %"$consume_1929", i64* @_gasrem, align 8
  %m7 = alloca %String, align 8
  %"$gasrem_1930" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1931" = icmp ugt i64 1, %"$gasrem_1930"
  br i1 %"$gascmp_1931", label %"$out_of_gas_1932", label %"$have_gas_1933"

"$out_of_gas_1932":                               ; preds = %"$have_gas_1928"
  call void @_out_of_gas()
  br label %"$have_gas_1933"

"$have_gas_1933":                                 ; preds = %"$out_of_gas_1932", %"$have_gas_1928"
  %"$consume_1934" = sub i64 %"$gasrem_1930", 1
  store i64 %"$consume_1934", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"$stringlit_1935", i32 0, i32 0), i32 42 }, %String* %m7, align 8
  %"$gasrem_1936" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1937" = icmp ugt i64 1, %"$gasrem_1936"
  br i1 %"$gascmp_1937", label %"$out_of_gas_1938", label %"$have_gas_1939"

"$out_of_gas_1938":                               ; preds = %"$have_gas_1933"
  call void @_out_of_gas()
  br label %"$have_gas_1939"

"$have_gas_1939":                                 ; preds = %"$out_of_gas_1938", %"$have_gas_1933"
  %"$consume_1940" = sub i64 %"$gasrem_1936", 1
  store i64 %"$consume_1940", i64* @_gasrem, align 8
  %"$fail_msg__origin_1941" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1941", align 1
  %"$fail_msg__sender_1942" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1942", align 1
  %"$tname_1943" = load %String, %String* %tname, align 8
  %"$m_1944" = load %String, %String* %m7, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1941", [20 x i8]* %"$fail_msg__sender_1942", %String %"$tname_1943", %String %"$m_1944")
  br label %"$matchsucc_1916"

"$None_1945":                                     ; preds = %"$have_gas_1914"
  %"$$c1_5_1946" = bitcast %TName_Option_String* %"$$c1_5_1917" to %CName_None_String*
  br label %"$matchsucc_1916"

"$empty_default_1920":                            ; preds = %"$have_gas_1914"
  br label %"$matchsucc_1916"

"$matchsucc_1916":                                ; preds = %"$None_1945", %"$have_gas_1939", %"$empty_default_1920"
  %"$gasrem_1947" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1948" = icmp ugt i64 1, %"$gasrem_1947"
  br i1 %"$gascmp_1948", label %"$out_of_gas_1949", label %"$have_gas_1950"

"$out_of_gas_1949":                               ; preds = %"$matchsucc_1916"
  call void @_out_of_gas()
  br label %"$have_gas_1950"

"$have_gas_1950":                                 ; preds = %"$out_of_gas_1949", %"$matchsucc_1916"
  %"$consume_1951" = sub i64 %"$gasrem_1947", 1
  store i64 %"$consume_1951", i64* @_gasrem, align 8
  %"$key1b_6" = alloca %String, align 8
  %"$gasrem_1952" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1953" = icmp ugt i64 1, %"$gasrem_1952"
  br i1 %"$gascmp_1953", label %"$out_of_gas_1954", label %"$have_gas_1955"

"$out_of_gas_1954":                               ; preds = %"$have_gas_1950"
  call void @_out_of_gas()
  br label %"$have_gas_1955"

"$have_gas_1955":                                 ; preds = %"$out_of_gas_1954", %"$have_gas_1950"
  %"$consume_1956" = sub i64 %"$gasrem_1952", 1
  store i64 %"$consume_1956", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1957", i32 0, i32 0), i32 5 }, %String* %"$key1b_6", align 8
  %"$gasrem_1958" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1959" = icmp ugt i64 1, %"$gasrem_1958"
  br i1 %"$gascmp_1959", label %"$out_of_gas_1960", label %"$have_gas_1961"

"$out_of_gas_1960":                               ; preds = %"$have_gas_1955"
  call void @_out_of_gas()
  br label %"$have_gas_1961"

"$have_gas_1961":                                 ; preds = %"$out_of_gas_1960", %"$have_gas_1955"
  %"$consume_1962" = sub i64 %"$gasrem_1958", 1
  store i64 %"$consume_1962", i64* @_gasrem, align 8
  %key2d = alloca %String, align 8
  %"$gasrem_1963" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1964" = icmp ugt i64 1, %"$gasrem_1963"
  br i1 %"$gascmp_1964", label %"$out_of_gas_1965", label %"$have_gas_1966"

"$out_of_gas_1965":                               ; preds = %"$have_gas_1961"
  call void @_out_of_gas()
  br label %"$have_gas_1966"

"$have_gas_1966":                                 ; preds = %"$out_of_gas_1965", %"$have_gas_1961"
  %"$consume_1967" = sub i64 %"$gasrem_1963", 1
  store i64 %"$consume_1967", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1968", i32 0, i32 0), i32 5 }, %String* %key2d, align 8
  %"$c1_7" = alloca %TName_Option_String*, align 8
  %"$indices_buf_1969_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1969_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1969_salloc_load", i64 32)
  %"$indices_buf_1969_salloc" = bitcast i8* %"$indices_buf_1969_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1969" = bitcast [32 x i8]* %"$indices_buf_1969_salloc" to i8*
  %"$$key1b_6_1970" = load %String, %String* %"$key1b_6", align 8
  %"$indices_gep_1971" = getelementptr i8, i8* %"$indices_buf_1969", i32 0
  %indices_cast8 = bitcast i8* %"$indices_gep_1971" to %String*
  store %String %"$$key1b_6_1970", %String* %indices_cast8, align 8
  %"$key2d_1972" = load %String, %String* %key2d, align 8
  %"$indices_gep_1973" = getelementptr i8, i8* %"$indices_buf_1969", i32 16
  %indices_cast9 = bitcast i8* %"$indices_gep_1973" to %String*
  store %String %"$key2d_1972", %String* %indices_cast9, align 8
  %"$execptr_load_1975" = load i8*, i8** @_execptr, align 8
  %"$$c1_7_call_1976" = call i8* @_fetch_field(i8* %"$execptr_load_1975", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1974", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 2, i8* %"$indices_buf_1969", i32 1)
  %"$$c1_7_1977" = bitcast i8* %"$$c1_7_call_1976" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_7_1977", %TName_Option_String** %"$c1_7", align 8
  %"$$c1_7_1978" = load %TName_Option_String*, %TName_Option_String** %"$c1_7", align 8
  %"$$$c1_7_1978_1979" = bitcast %TName_Option_String* %"$$c1_7_1978" to i8*
  %"$_literal_cost_call_1980" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_60", i8* %"$$$c1_7_1978_1979")
  %"$gasadd_1981" = add i64 %"$_literal_cost_call_1980", 0
  %"$gasadd_1982" = add i64 %"$gasadd_1981", 2
  %"$gasrem_1983" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1984" = icmp ugt i64 %"$gasadd_1982", %"$gasrem_1983"
  br i1 %"$gascmp_1984", label %"$out_of_gas_1985", label %"$have_gas_1986"

"$out_of_gas_1985":                               ; preds = %"$have_gas_1966"
  call void @_out_of_gas()
  br label %"$have_gas_1986"

"$have_gas_1986":                                 ; preds = %"$out_of_gas_1985", %"$have_gas_1966"
  %"$consume_1987" = sub i64 %"$gasrem_1983", %"$gasadd_1982"
  store i64 %"$consume_1987", i64* @_gasrem, align 8
  %"$gasrem_1988" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1989" = icmp ugt i64 2, %"$gasrem_1988"
  br i1 %"$gascmp_1989", label %"$out_of_gas_1990", label %"$have_gas_1991"

"$out_of_gas_1990":                               ; preds = %"$have_gas_1986"
  call void @_out_of_gas()
  br label %"$have_gas_1991"

"$have_gas_1991":                                 ; preds = %"$out_of_gas_1990", %"$have_gas_1986"
  %"$consume_1992" = sub i64 %"$gasrem_1988", 2
  store i64 %"$consume_1992", i64* @_gasrem, align 8
  %"$$c1_7_1994" = load %TName_Option_String*, %TName_Option_String** %"$c1_7", align 8
  %"$$c1_7_tag_1995" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_7_1994", i32 0, i32 0
  %"$$c1_7_tag_1996" = load i8, i8* %"$$c1_7_tag_1995", align 1
  switch i8 %"$$c1_7_tag_1996", label %"$empty_default_1997" [
    i8 0, label %"$Some_1998"
    i8 1, label %"$None_2022"
  ]

"$Some_1998":                                     ; preds = %"$have_gas_1991"
  %"$$c1_7_1999" = bitcast %TName_Option_String* %"$$c1_7_1994" to %CName_Some_String*
  %"$$$c1_7_14_gep_2000" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_7_1999", i32 0, i32 1
  %"$$$c1_7_14_load_2001" = load %String, %String* %"$$$c1_7_14_gep_2000", align 8
  %"$$c1_7_14" = alloca %String, align 8
  store %String %"$$$c1_7_14_load_2001", %String* %"$$c1_7_14", align 8
  %"$gasrem_2002" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2003" = icmp ugt i64 1, %"$gasrem_2002"
  br i1 %"$gascmp_2003", label %"$out_of_gas_2004", label %"$have_gas_2005"

"$out_of_gas_2004":                               ; preds = %"$Some_1998"
  call void @_out_of_gas()
  br label %"$have_gas_2005"

"$have_gas_2005":                                 ; preds = %"$out_of_gas_2004", %"$Some_1998"
  %"$consume_2006" = sub i64 %"$gasrem_2002", 1
  store i64 %"$consume_2006", i64* @_gasrem, align 8
  %m10 = alloca %String, align 8
  %"$gasrem_2007" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2008" = icmp ugt i64 1, %"$gasrem_2007"
  br i1 %"$gascmp_2008", label %"$out_of_gas_2009", label %"$have_gas_2010"

"$out_of_gas_2009":                               ; preds = %"$have_gas_2005"
  call void @_out_of_gas()
  br label %"$have_gas_2010"

"$have_gas_2010":                                 ; preds = %"$out_of_gas_2009", %"$have_gas_2005"
  %"$consume_2011" = sub i64 %"$gasrem_2007", 1
  store i64 %"$consume_2011", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"$stringlit_2012", i32 0, i32 0), i32 42 }, %String* %m10, align 8
  %"$gasrem_2013" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2014" = icmp ugt i64 1, %"$gasrem_2013"
  br i1 %"$gascmp_2014", label %"$out_of_gas_2015", label %"$have_gas_2016"

"$out_of_gas_2015":                               ; preds = %"$have_gas_2010"
  call void @_out_of_gas()
  br label %"$have_gas_2016"

"$have_gas_2016":                                 ; preds = %"$out_of_gas_2015", %"$have_gas_2010"
  %"$consume_2017" = sub i64 %"$gasrem_2013", 1
  store i64 %"$consume_2017", i64* @_gasrem, align 8
  %"$fail_msg__origin_2018" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2018", align 1
  %"$fail_msg__sender_2019" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2019", align 1
  %"$tname_2020" = load %String, %String* %tname, align 8
  %"$m_2021" = load %String, %String* %m10, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2018", [20 x i8]* %"$fail_msg__sender_2019", %String %"$tname_2020", %String %"$m_2021")
  br label %"$matchsucc_1993"

"$None_2022":                                     ; preds = %"$have_gas_1991"
  %"$$c1_7_2023" = bitcast %TName_Option_String* %"$$c1_7_1994" to %CName_None_String*
  br label %"$matchsucc_1993"

"$empty_default_1997":                            ; preds = %"$have_gas_1991"
  br label %"$matchsucc_1993"

"$matchsucc_1993":                                ; preds = %"$None_2022", %"$have_gas_2016", %"$empty_default_1997"
  %"$gasrem_2024" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2025" = icmp ugt i64 1, %"$gasrem_2024"
  br i1 %"$gascmp_2025", label %"$out_of_gas_2026", label %"$have_gas_2027"

"$out_of_gas_2026":                               ; preds = %"$matchsucc_1993"
  call void @_out_of_gas()
  br label %"$have_gas_2027"

"$have_gas_2027":                                 ; preds = %"$out_of_gas_2026", %"$matchsucc_1993"
  %"$consume_2028" = sub i64 %"$gasrem_2024", 1
  store i64 %"$consume_2028", i64* @_gasrem, align 8
  %"$key1b_8" = alloca %String, align 8
  %"$gasrem_2029" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2030" = icmp ugt i64 1, %"$gasrem_2029"
  br i1 %"$gascmp_2030", label %"$out_of_gas_2031", label %"$have_gas_2032"

"$out_of_gas_2031":                               ; preds = %"$have_gas_2027"
  call void @_out_of_gas()
  br label %"$have_gas_2032"

"$have_gas_2032":                                 ; preds = %"$out_of_gas_2031", %"$have_gas_2027"
  %"$consume_2033" = sub i64 %"$gasrem_2029", 1
  store i64 %"$consume_2033", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2034", i32 0, i32 0), i32 5 }, %String* %"$key1b_8", align 8
  %"$gasrem_2035" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2036" = icmp ugt i64 1, %"$gasrem_2035"
  br i1 %"$gascmp_2036", label %"$out_of_gas_2037", label %"$have_gas_2038"

"$out_of_gas_2037":                               ; preds = %"$have_gas_2032"
  call void @_out_of_gas()
  br label %"$have_gas_2038"

"$have_gas_2038":                                 ; preds = %"$out_of_gas_2037", %"$have_gas_2032"
  %"$consume_2039" = sub i64 %"$gasrem_2035", 1
  store i64 %"$consume_2039", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  %"$gasrem_2040" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2041" = icmp ugt i64 1, %"$gasrem_2040"
  br i1 %"$gascmp_2041", label %"$out_of_gas_2042", label %"$have_gas_2043"

"$out_of_gas_2042":                               ; preds = %"$have_gas_2038"
  call void @_out_of_gas()
  br label %"$have_gas_2043"

"$have_gas_2043":                                 ; preds = %"$out_of_gas_2042", %"$have_gas_2038"
  %"$consume_2044" = sub i64 %"$gasrem_2040", 1
  store i64 %"$consume_2044", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2045", i32 0, i32 0), i32 5 }, %String* %key2c, align 8
  %"$gasrem_2046" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2047" = icmp ugt i64 1, %"$gasrem_2046"
  br i1 %"$gascmp_2047", label %"$out_of_gas_2048", label %"$have_gas_2049"

"$out_of_gas_2048":                               ; preds = %"$have_gas_2043"
  call void @_out_of_gas()
  br label %"$have_gas_2049"

"$have_gas_2049":                                 ; preds = %"$out_of_gas_2048", %"$have_gas_2043"
  %"$consume_2050" = sub i64 %"$gasrem_2046", 1
  store i64 %"$consume_2050", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  %"$gasrem_2051" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2052" = icmp ugt i64 1, %"$gasrem_2051"
  br i1 %"$gascmp_2052", label %"$out_of_gas_2053", label %"$have_gas_2054"

"$out_of_gas_2053":                               ; preds = %"$have_gas_2049"
  call void @_out_of_gas()
  br label %"$have_gas_2054"

"$have_gas_2054":                                 ; preds = %"$out_of_gas_2053", %"$have_gas_2049"
  %"$consume_2055" = sub i64 %"$gasrem_2051", 1
  store i64 %"$consume_2055", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2056", i32 0, i32 0), i32 3 }, %String* %s, align 8
  %"$_literal_cost_s_2057" = alloca %String, align 8
  %"$s_2058" = load %String, %String* %s, align 8
  store %String %"$s_2058", %String* %"$_literal_cost_s_2057", align 8
  %"$$_literal_cost_s_2057_2059" = bitcast %String* %"$_literal_cost_s_2057" to i8*
  %"$_literal_cost_call_2060" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_s_2057_2059")
  %"$gasadd_2061" = add i64 %"$_literal_cost_call_2060", 2
  %"$gasrem_2062" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2063" = icmp ugt i64 %"$gasadd_2061", %"$gasrem_2062"
  br i1 %"$gascmp_2063", label %"$out_of_gas_2064", label %"$have_gas_2065"

"$out_of_gas_2064":                               ; preds = %"$have_gas_2054"
  call void @_out_of_gas()
  br label %"$have_gas_2065"

"$have_gas_2065":                                 ; preds = %"$out_of_gas_2064", %"$have_gas_2054"
  %"$consume_2066" = sub i64 %"$gasrem_2062", %"$gasadd_2061"
  store i64 %"$consume_2066", i64* @_gasrem, align 8
  %"$indices_buf_2067_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2067_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2067_salloc_load", i64 32)
  %"$indices_buf_2067_salloc" = bitcast i8* %"$indices_buf_2067_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2067" = bitcast [32 x i8]* %"$indices_buf_2067_salloc" to i8*
  %"$$key1b_8_2068" = load %String, %String* %"$key1b_8", align 8
  %"$indices_gep_2069" = getelementptr i8, i8* %"$indices_buf_2067", i32 0
  %indices_cast11 = bitcast i8* %"$indices_gep_2069" to %String*
  store %String %"$$key1b_8_2068", %String* %indices_cast11, align 8
  %"$key2c_2070" = load %String, %String* %key2c, align 8
  %"$indices_gep_2071" = getelementptr i8, i8* %"$indices_buf_2067", i32 16
  %indices_cast12 = bitcast i8* %"$indices_gep_2071" to %String*
  store %String %"$key2c_2070", %String* %indices_cast12, align 8
  %"$execptr_load_2072" = load i8*, i8** @_execptr, align 8
  %"$s_2074" = load %String, %String* %s, align 8
  %"$update_value_2075" = alloca %String, align 8
  store %String %"$s_2074", %String* %"$update_value_2075", align 8
  %"$update_value_2076" = bitcast %String* %"$update_value_2075" to i8*
  call void @_update_field(i8* %"$execptr_load_2072", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2073", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 2, i8* %"$indices_buf_2067", i8* %"$update_value_2076")
  ret void
}

define void @t7(i8* %0) {
entry:
  %"$_amount_2078" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2079" = bitcast i8* %"$_amount_2078" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2079", align 8
  %"$_origin_2080" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2081" = bitcast i8* %"$_origin_2080" to [20 x i8]*
  %"$_sender_2082" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2083" = bitcast i8* %"$_sender_2082" to [20 x i8]*
  call void @"$t7_1646"(%Uint128 %_amount, [20 x i8]* %"$_origin_2081", [20 x i8]* %"$_sender_2083")
  ret void
}

define internal void @"$t8_2084"(%Uint128 %_amount, [20 x i8]* %"$_origin_2085", [20 x i8]* %"$_sender_2086") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2085", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2086", align 1
  %"$gasrem_2087" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2088" = icmp ugt i64 1, %"$gasrem_2087"
  br i1 %"$gascmp_2088", label %"$out_of_gas_2089", label %"$have_gas_2090"

"$out_of_gas_2089":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2090"

"$have_gas_2090":                                 ; preds = %"$out_of_gas_2089", %entry
  %"$consume_2091" = sub i64 %"$gasrem_2087", 1
  store i64 %"$consume_2091", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_2092" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2093" = icmp ugt i64 1, %"$gasrem_2092"
  br i1 %"$gascmp_2093", label %"$out_of_gas_2094", label %"$have_gas_2095"

"$out_of_gas_2094":                               ; preds = %"$have_gas_2090"
  call void @_out_of_gas()
  br label %"$have_gas_2095"

"$have_gas_2095":                                 ; preds = %"$out_of_gas_2094", %"$have_gas_2090"
  %"$consume_2096" = sub i64 %"$gasrem_2092", 1
  store i64 %"$consume_2096", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_2097", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %"$gasrem_2098" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2099" = icmp ugt i64 1, %"$gasrem_2098"
  br i1 %"$gascmp_2099", label %"$out_of_gas_2100", label %"$have_gas_2101"

"$out_of_gas_2100":                               ; preds = %"$have_gas_2095"
  call void @_out_of_gas()
  br label %"$have_gas_2101"

"$have_gas_2101":                                 ; preds = %"$out_of_gas_2100", %"$have_gas_2095"
  %"$consume_2102" = sub i64 %"$gasrem_2098", 1
  store i64 %"$consume_2102", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_2103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2104" = icmp ugt i64 1, %"$gasrem_2103"
  br i1 %"$gascmp_2104", label %"$out_of_gas_2105", label %"$have_gas_2106"

"$out_of_gas_2105":                               ; preds = %"$have_gas_2101"
  call void @_out_of_gas()
  br label %"$have_gas_2106"

"$have_gas_2106":                                 ; preds = %"$out_of_gas_2105", %"$have_gas_2101"
  %"$consume_2107" = sub i64 %"$gasrem_2103", 1
  store i64 %"$consume_2107", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2108", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_2109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2110" = icmp ugt i64 1, %"$gasrem_2109"
  br i1 %"$gascmp_2110", label %"$out_of_gas_2111", label %"$have_gas_2112"

"$out_of_gas_2111":                               ; preds = %"$have_gas_2106"
  call void @_out_of_gas()
  br label %"$have_gas_2112"

"$have_gas_2112":                                 ; preds = %"$out_of_gas_2111", %"$have_gas_2106"
  %"$consume_2113" = sub i64 %"$gasrem_2109", 1
  store i64 %"$consume_2113", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_2114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2115" = icmp ugt i64 1, %"$gasrem_2114"
  br i1 %"$gascmp_2115", label %"$out_of_gas_2116", label %"$have_gas_2117"

"$out_of_gas_2116":                               ; preds = %"$have_gas_2112"
  call void @_out_of_gas()
  br label %"$have_gas_2117"

"$have_gas_2117":                                 ; preds = %"$out_of_gas_2116", %"$have_gas_2112"
  %"$consume_2118" = sub i64 %"$gasrem_2114", 1
  store i64 %"$consume_2118", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2119", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %c1 = alloca %TName_Option_String*, align 8
  %"$indices_buf_2120_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2120_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2120_salloc_load", i64 32)
  %"$indices_buf_2120_salloc" = bitcast i8* %"$indices_buf_2120_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2120" = bitcast [32 x i8]* %"$indices_buf_2120_salloc" to i8*
  %"$key1a_2121" = load %String, %String* %key1a, align 8
  %"$indices_gep_2122" = getelementptr i8, i8* %"$indices_buf_2120", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_2122" to %String*
  store %String %"$key1a_2121", %String* %indices_cast, align 8
  %"$key2a_2123" = load %String, %String* %key2a, align 8
  %"$indices_gep_2124" = getelementptr i8, i8* %"$indices_buf_2120", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_2124" to %String*
  store %String %"$key2a_2123", %String* %indices_cast1, align 8
  %"$execptr_load_2126" = load i8*, i8** @_execptr, align 8
  %"$c1_call_2127" = call i8* @_fetch_field(i8* %"$execptr_load_2126", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2125", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 2, i8* %"$indices_buf_2120", i32 1)
  %"$c1_2128" = bitcast i8* %"$c1_call_2127" to %TName_Option_String*
  store %TName_Option_String* %"$c1_2128", %TName_Option_String** %c1, align 8
  %"$c1_2129" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$$c1_2129_2130" = bitcast %TName_Option_String* %"$c1_2129" to i8*
  %"$_literal_cost_call_2131" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_60", i8* %"$$c1_2129_2130")
  %"$gasadd_2132" = add i64 %"$_literal_cost_call_2131", 0
  %"$gasadd_2133" = add i64 %"$gasadd_2132", 2
  %"$gasrem_2134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2135" = icmp ugt i64 %"$gasadd_2133", %"$gasrem_2134"
  br i1 %"$gascmp_2135", label %"$out_of_gas_2136", label %"$have_gas_2137"

"$out_of_gas_2136":                               ; preds = %"$have_gas_2117"
  call void @_out_of_gas()
  br label %"$have_gas_2137"

"$have_gas_2137":                                 ; preds = %"$out_of_gas_2136", %"$have_gas_2117"
  %"$consume_2138" = sub i64 %"$gasrem_2134", %"$gasadd_2133"
  store i64 %"$consume_2138", i64* @_gasrem, align 8
  %"$gasrem_2139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2140" = icmp ugt i64 2, %"$gasrem_2139"
  br i1 %"$gascmp_2140", label %"$out_of_gas_2141", label %"$have_gas_2142"

"$out_of_gas_2141":                               ; preds = %"$have_gas_2137"
  call void @_out_of_gas()
  br label %"$have_gas_2142"

"$have_gas_2142":                                 ; preds = %"$out_of_gas_2141", %"$have_gas_2137"
  %"$consume_2143" = sub i64 %"$gasrem_2139", 2
  store i64 %"$consume_2143", i64* @_gasrem, align 8
  %"$c1_2145" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$c1_tag_2146" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_2145", i32 0, i32 0
  %"$c1_tag_2147" = load i8, i8* %"$c1_tag_2146", align 1
  switch i8 %"$c1_tag_2147", label %"$empty_default_2148" [
    i8 0, label %"$Some_2149"
    i8 1, label %"$None_2222"
  ]

"$Some_2149":                                     ; preds = %"$have_gas_2142"
  %"$c1_2150" = bitcast %TName_Option_String* %"$c1_2145" to %CName_Some_String*
  %"$c_gep_2151" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_2150", i32 0, i32 1
  %"$c_load_2152" = load %String, %String* %"$c_gep_2151", align 8
  %c = alloca %String, align 8
  store %String %"$c_load_2152", %String* %c, align 8
  %"$gasrem_2153" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2154" = icmp ugt i64 1, %"$gasrem_2153"
  br i1 %"$gascmp_2154", label %"$out_of_gas_2155", label %"$have_gas_2156"

"$out_of_gas_2155":                               ; preds = %"$Some_2149"
  call void @_out_of_gas()
  br label %"$have_gas_2156"

"$have_gas_2156":                                 ; preds = %"$out_of_gas_2155", %"$Some_2149"
  %"$consume_2157" = sub i64 %"$gasrem_2153", 1
  store i64 %"$consume_2157", i64* @_gasrem, align 8
  %v = alloca %String, align 8
  %"$gasrem_2158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2159" = icmp ugt i64 1, %"$gasrem_2158"
  br i1 %"$gascmp_2159", label %"$out_of_gas_2160", label %"$have_gas_2161"

"$out_of_gas_2160":                               ; preds = %"$have_gas_2156"
  call void @_out_of_gas()
  br label %"$have_gas_2161"

"$have_gas_2161":                                 ; preds = %"$out_of_gas_2160", %"$have_gas_2156"
  %"$consume_2162" = sub i64 %"$gasrem_2158", 1
  store i64 %"$consume_2162", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2163", i32 0, i32 0), i32 3 }, %String* %v, align 8
  %"$gasrem_2164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2165" = icmp ugt i64 1, %"$gasrem_2164"
  br i1 %"$gascmp_2165", label %"$out_of_gas_2166", label %"$have_gas_2167"

"$out_of_gas_2166":                               ; preds = %"$have_gas_2161"
  call void @_out_of_gas()
  br label %"$have_gas_2167"

"$have_gas_2167":                                 ; preds = %"$out_of_gas_2166", %"$have_gas_2161"
  %"$consume_2168" = sub i64 %"$gasrem_2164", 1
  store i64 %"$consume_2168", i64* @_gasrem, align 8
  %eq = alloca %TName_Bool*, align 8
  %"$_literal_cost_c_2169" = alloca %String, align 8
  %"$c_2170" = load %String, %String* %c, align 8
  store %String %"$c_2170", %String* %"$_literal_cost_c_2169", align 8
  %"$$_literal_cost_c_2169_2171" = bitcast %String* %"$_literal_cost_c_2169" to i8*
  %"$_literal_cost_call_2172" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_c_2169_2171")
  %"$_literal_cost_v_2173" = alloca %String, align 8
  %"$v_2174" = load %String, %String* %v, align 8
  store %String %"$v_2174", %String* %"$_literal_cost_v_2173", align 8
  %"$$_literal_cost_v_2173_2175" = bitcast %String* %"$_literal_cost_v_2173" to i8*
  %"$_literal_cost_call_2176" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_v_2173_2175")
  %"$gasmin_2177" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_2172", i64 %"$_literal_cost_call_2176")
  %"$gasrem_2178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2179" = icmp ugt i64 %"$gasmin_2177", %"$gasrem_2178"
  br i1 %"$gascmp_2179", label %"$out_of_gas_2180", label %"$have_gas_2181"

"$out_of_gas_2180":                               ; preds = %"$have_gas_2167"
  call void @_out_of_gas()
  br label %"$have_gas_2181"

"$have_gas_2181":                                 ; preds = %"$out_of_gas_2180", %"$have_gas_2167"
  %"$consume_2182" = sub i64 %"$gasrem_2178", %"$gasmin_2177"
  store i64 %"$consume_2182", i64* @_gasrem, align 8
  %"$execptr_load_2183" = load i8*, i8** @_execptr, align 8
  %"$c_2184" = load %String, %String* %c, align 8
  %"$v_2185" = load %String, %String* %v, align 8
  %"$eq_call_2186" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_2183", %String %"$c_2184", %String %"$v_2185")
  store %TName_Bool* %"$eq_call_2186", %TName_Bool** %eq, align 8
  %"$gasrem_2188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2189" = icmp ugt i64 2, %"$gasrem_2188"
  br i1 %"$gascmp_2189", label %"$out_of_gas_2190", label %"$have_gas_2191"

"$out_of_gas_2190":                               ; preds = %"$have_gas_2181"
  call void @_out_of_gas()
  br label %"$have_gas_2191"

"$have_gas_2191":                                 ; preds = %"$out_of_gas_2190", %"$have_gas_2181"
  %"$consume_2192" = sub i64 %"$gasrem_2188", 2
  store i64 %"$consume_2192", i64* @_gasrem, align 8
  %"$eq_2194" = load %TName_Bool*, %TName_Bool** %eq, align 8
  %"$eq_tag_2195" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_2194", i32 0, i32 0
  %"$eq_tag_2196" = load i8, i8* %"$eq_tag_2195", align 1
  switch i8 %"$eq_tag_2196", label %"$empty_default_2197" [
    i8 0, label %"$True_2198"
    i8 1, label %"$False_2200"
  ]

"$True_2198":                                     ; preds = %"$have_gas_2191"
  %"$eq_2199" = bitcast %TName_Bool* %"$eq_2194" to %CName_True*
  br label %"$matchsucc_2193"

"$False_2200":                                    ; preds = %"$have_gas_2191"
  %"$eq_2201" = bitcast %TName_Bool* %"$eq_2194" to %CName_False*
  %"$gasrem_2202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2203" = icmp ugt i64 1, %"$gasrem_2202"
  br i1 %"$gascmp_2203", label %"$out_of_gas_2204", label %"$have_gas_2205"

"$out_of_gas_2204":                               ; preds = %"$False_2200"
  call void @_out_of_gas()
  br label %"$have_gas_2205"

"$have_gas_2205":                                 ; preds = %"$out_of_gas_2204", %"$False_2200"
  %"$consume_2206" = sub i64 %"$gasrem_2202", 1
  store i64 %"$consume_2206", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_2207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2208" = icmp ugt i64 1, %"$gasrem_2207"
  br i1 %"$gascmp_2208", label %"$out_of_gas_2209", label %"$have_gas_2210"

"$out_of_gas_2209":                               ; preds = %"$have_gas_2205"
  call void @_out_of_gas()
  br label %"$have_gas_2210"

"$have_gas_2210":                                 ; preds = %"$out_of_gas_2209", %"$have_gas_2205"
  %"$consume_2211" = sub i64 %"$gasrem_2207", 1
  store i64 %"$consume_2211", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_2212", i32 0, i32 0), i32 31 }, %String* %m, align 8
  %"$gasrem_2213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2214" = icmp ugt i64 1, %"$gasrem_2213"
  br i1 %"$gascmp_2214", label %"$out_of_gas_2215", label %"$have_gas_2216"

"$out_of_gas_2215":                               ; preds = %"$have_gas_2210"
  call void @_out_of_gas()
  br label %"$have_gas_2216"

"$have_gas_2216":                                 ; preds = %"$out_of_gas_2215", %"$have_gas_2210"
  %"$consume_2217" = sub i64 %"$gasrem_2213", 1
  store i64 %"$consume_2217", i64* @_gasrem, align 8
  %"$fail_msg__origin_2218" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2218", align 1
  %"$fail_msg__sender_2219" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2219", align 1
  %"$tname_2220" = load %String, %String* %tname, align 8
  %"$m_2221" = load %String, %String* %m, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2218", [20 x i8]* %"$fail_msg__sender_2219", %String %"$tname_2220", %String %"$m_2221")
  br label %"$matchsucc_2193"

"$empty_default_2197":                            ; preds = %"$have_gas_2191"
  br label %"$matchsucc_2193"

"$matchsucc_2193":                                ; preds = %"$have_gas_2216", %"$True_2198", %"$empty_default_2197"
  br label %"$matchsucc_2144"

"$None_2222":                                     ; preds = %"$have_gas_2142"
  %"$c1_2223" = bitcast %TName_Option_String* %"$c1_2145" to %CName_None_String*
  %"$gasrem_2224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2225" = icmp ugt i64 1, %"$gasrem_2224"
  br i1 %"$gascmp_2225", label %"$out_of_gas_2226", label %"$have_gas_2227"

"$out_of_gas_2226":                               ; preds = %"$None_2222"
  call void @_out_of_gas()
  br label %"$have_gas_2227"

"$have_gas_2227":                                 ; preds = %"$out_of_gas_2226", %"$None_2222"
  %"$consume_2228" = sub i64 %"$gasrem_2224", 1
  store i64 %"$consume_2228", i64* @_gasrem, align 8
  %m2 = alloca %String, align 8
  %"$gasrem_2229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2230" = icmp ugt i64 1, %"$gasrem_2229"
  br i1 %"$gascmp_2230", label %"$out_of_gas_2231", label %"$have_gas_2232"

"$out_of_gas_2231":                               ; preds = %"$have_gas_2227"
  call void @_out_of_gas()
  br label %"$have_gas_2232"

"$have_gas_2232":                                 ; preds = %"$out_of_gas_2231", %"$have_gas_2227"
  %"$consume_2233" = sub i64 %"$gasrem_2229", 1
  store i64 %"$consume_2233", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_2234", i32 0, i32 0), i32 21 }, %String* %m2, align 8
  %"$gasrem_2235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2236" = icmp ugt i64 1, %"$gasrem_2235"
  br i1 %"$gascmp_2236", label %"$out_of_gas_2237", label %"$have_gas_2238"

"$out_of_gas_2237":                               ; preds = %"$have_gas_2232"
  call void @_out_of_gas()
  br label %"$have_gas_2238"

"$have_gas_2238":                                 ; preds = %"$out_of_gas_2237", %"$have_gas_2232"
  %"$consume_2239" = sub i64 %"$gasrem_2235", 1
  store i64 %"$consume_2239", i64* @_gasrem, align 8
  %"$fail_msg__origin_2240" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2240", align 1
  %"$fail_msg__sender_2241" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2241", align 1
  %"$tname_2242" = load %String, %String* %tname, align 8
  %"$m_2243" = load %String, %String* %m2, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2240", [20 x i8]* %"$fail_msg__sender_2241", %String %"$tname_2242", %String %"$m_2243")
  br label %"$matchsucc_2144"

"$empty_default_2148":                            ; preds = %"$have_gas_2142"
  br label %"$matchsucc_2144"

"$matchsucc_2144":                                ; preds = %"$have_gas_2238", %"$matchsucc_2193", %"$empty_default_2148"
  %"$gasrem_2244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2245" = icmp ugt i64 1, %"$gasrem_2244"
  br i1 %"$gascmp_2245", label %"$out_of_gas_2246", label %"$have_gas_2247"

"$out_of_gas_2246":                               ; preds = %"$matchsucc_2144"
  call void @_out_of_gas()
  br label %"$have_gas_2247"

"$have_gas_2247":                                 ; preds = %"$out_of_gas_2246", %"$matchsucc_2144"
  %"$consume_2248" = sub i64 %"$gasrem_2244", 1
  store i64 %"$consume_2248", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  %"$gasrem_2249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2250" = icmp ugt i64 1, %"$gasrem_2249"
  br i1 %"$gascmp_2250", label %"$out_of_gas_2251", label %"$have_gas_2252"

"$out_of_gas_2251":                               ; preds = %"$have_gas_2247"
  call void @_out_of_gas()
  br label %"$have_gas_2252"

"$have_gas_2252":                                 ; preds = %"$out_of_gas_2251", %"$have_gas_2247"
  %"$consume_2253" = sub i64 %"$gasrem_2249", 1
  store i64 %"$consume_2253", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2254", i32 0, i32 0), i32 5 }, %String* %key1b, align 8
  %"$gasrem_2255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2256" = icmp ugt i64 1, %"$gasrem_2255"
  br i1 %"$gascmp_2256", label %"$out_of_gas_2257", label %"$have_gas_2258"

"$out_of_gas_2257":                               ; preds = %"$have_gas_2252"
  call void @_out_of_gas()
  br label %"$have_gas_2258"

"$have_gas_2258":                                 ; preds = %"$out_of_gas_2257", %"$have_gas_2252"
  %"$consume_2259" = sub i64 %"$gasrem_2255", 1
  store i64 %"$consume_2259", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  %"$gasrem_2260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2261" = icmp ugt i64 1, %"$gasrem_2260"
  br i1 %"$gascmp_2261", label %"$out_of_gas_2262", label %"$have_gas_2263"

"$out_of_gas_2262":                               ; preds = %"$have_gas_2258"
  call void @_out_of_gas()
  br label %"$have_gas_2263"

"$have_gas_2263":                                 ; preds = %"$out_of_gas_2262", %"$have_gas_2258"
  %"$consume_2264" = sub i64 %"$gasrem_2260", 1
  store i64 %"$consume_2264", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2265", i32 0, i32 0), i32 5 }, %String* %key2c, align 8
  %"$c1_9" = alloca %TName_Option_String*, align 8
  %"$indices_buf_2266_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2266_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2266_salloc_load", i64 32)
  %"$indices_buf_2266_salloc" = bitcast i8* %"$indices_buf_2266_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2266" = bitcast [32 x i8]* %"$indices_buf_2266_salloc" to i8*
  %"$key1b_2267" = load %String, %String* %key1b, align 8
  %"$indices_gep_2268" = getelementptr i8, i8* %"$indices_buf_2266", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_2268" to %String*
  store %String %"$key1b_2267", %String* %indices_cast3, align 8
  %"$key2c_2269" = load %String, %String* %key2c, align 8
  %"$indices_gep_2270" = getelementptr i8, i8* %"$indices_buf_2266", i32 16
  %indices_cast4 = bitcast i8* %"$indices_gep_2270" to %String*
  store %String %"$key2c_2269", %String* %indices_cast4, align 8
  %"$execptr_load_2272" = load i8*, i8** @_execptr, align 8
  %"$$c1_9_call_2273" = call i8* @_fetch_field(i8* %"$execptr_load_2272", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2271", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 2, i8* %"$indices_buf_2266", i32 1)
  %"$$c1_9_2274" = bitcast i8* %"$$c1_9_call_2273" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_9_2274", %TName_Option_String** %"$c1_9", align 8
  %"$$c1_9_2275" = load %TName_Option_String*, %TName_Option_String** %"$c1_9", align 8
  %"$$$c1_9_2275_2276" = bitcast %TName_Option_String* %"$$c1_9_2275" to i8*
  %"$_literal_cost_call_2277" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_60", i8* %"$$$c1_9_2275_2276")
  %"$gasadd_2278" = add i64 %"$_literal_cost_call_2277", 0
  %"$gasadd_2279" = add i64 %"$gasadd_2278", 2
  %"$gasrem_2280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2281" = icmp ugt i64 %"$gasadd_2279", %"$gasrem_2280"
  br i1 %"$gascmp_2281", label %"$out_of_gas_2282", label %"$have_gas_2283"

"$out_of_gas_2282":                               ; preds = %"$have_gas_2263"
  call void @_out_of_gas()
  br label %"$have_gas_2283"

"$have_gas_2283":                                 ; preds = %"$out_of_gas_2282", %"$have_gas_2263"
  %"$consume_2284" = sub i64 %"$gasrem_2280", %"$gasadd_2279"
  store i64 %"$consume_2284", i64* @_gasrem, align 8
  %"$gasrem_2285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2286" = icmp ugt i64 2, %"$gasrem_2285"
  br i1 %"$gascmp_2286", label %"$out_of_gas_2287", label %"$have_gas_2288"

"$out_of_gas_2287":                               ; preds = %"$have_gas_2283"
  call void @_out_of_gas()
  br label %"$have_gas_2288"

"$have_gas_2288":                                 ; preds = %"$out_of_gas_2287", %"$have_gas_2283"
  %"$consume_2289" = sub i64 %"$gasrem_2285", 2
  store i64 %"$consume_2289", i64* @_gasrem, align 8
  %"$$c1_9_2291" = load %TName_Option_String*, %TName_Option_String** %"$c1_9", align 8
  %"$$c1_9_tag_2292" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_9_2291", i32 0, i32 0
  %"$$c1_9_tag_2293" = load i8, i8* %"$$c1_9_tag_2292", align 1
  switch i8 %"$$c1_9_tag_2293", label %"$empty_default_2294" [
    i8 0, label %"$Some_2295"
    i8 1, label %"$None_2368"
  ]

"$Some_2295":                                     ; preds = %"$have_gas_2288"
  %"$$c1_9_2296" = bitcast %TName_Option_String* %"$$c1_9_2291" to %CName_Some_String*
  %"$c_gep_2297" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_9_2296", i32 0, i32 1
  %"$c_load_2298" = load %String, %String* %"$c_gep_2297", align 8
  %c5 = alloca %String, align 8
  store %String %"$c_load_2298", %String* %c5, align 8
  %"$gasrem_2299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2300" = icmp ugt i64 1, %"$gasrem_2299"
  br i1 %"$gascmp_2300", label %"$out_of_gas_2301", label %"$have_gas_2302"

"$out_of_gas_2301":                               ; preds = %"$Some_2295"
  call void @_out_of_gas()
  br label %"$have_gas_2302"

"$have_gas_2302":                                 ; preds = %"$out_of_gas_2301", %"$Some_2295"
  %"$consume_2303" = sub i64 %"$gasrem_2299", 1
  store i64 %"$consume_2303", i64* @_gasrem, align 8
  %v6 = alloca %String, align 8
  %"$gasrem_2304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2305" = icmp ugt i64 1, %"$gasrem_2304"
  br i1 %"$gascmp_2305", label %"$out_of_gas_2306", label %"$have_gas_2307"

"$out_of_gas_2306":                               ; preds = %"$have_gas_2302"
  call void @_out_of_gas()
  br label %"$have_gas_2307"

"$have_gas_2307":                                 ; preds = %"$out_of_gas_2306", %"$have_gas_2302"
  %"$consume_2308" = sub i64 %"$gasrem_2304", 1
  store i64 %"$consume_2308", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2309", i32 0, i32 0), i32 3 }, %String* %v6, align 8
  %"$gasrem_2310" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2311" = icmp ugt i64 1, %"$gasrem_2310"
  br i1 %"$gascmp_2311", label %"$out_of_gas_2312", label %"$have_gas_2313"

"$out_of_gas_2312":                               ; preds = %"$have_gas_2307"
  call void @_out_of_gas()
  br label %"$have_gas_2313"

"$have_gas_2313":                                 ; preds = %"$out_of_gas_2312", %"$have_gas_2307"
  %"$consume_2314" = sub i64 %"$gasrem_2310", 1
  store i64 %"$consume_2314", i64* @_gasrem, align 8
  %eq7 = alloca %TName_Bool*, align 8
  %"$_literal_cost_c_2315" = alloca %String, align 8
  %"$c_2316" = load %String, %String* %c5, align 8
  store %String %"$c_2316", %String* %"$_literal_cost_c_2315", align 8
  %"$$_literal_cost_c_2315_2317" = bitcast %String* %"$_literal_cost_c_2315" to i8*
  %"$_literal_cost_call_2318" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_c_2315_2317")
  %"$_literal_cost_v_2319" = alloca %String, align 8
  %"$v_2320" = load %String, %String* %v6, align 8
  store %String %"$v_2320", %String* %"$_literal_cost_v_2319", align 8
  %"$$_literal_cost_v_2319_2321" = bitcast %String* %"$_literal_cost_v_2319" to i8*
  %"$_literal_cost_call_2322" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_v_2319_2321")
  %"$gasmin_2323" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_2318", i64 %"$_literal_cost_call_2322")
  %"$gasrem_2324" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2325" = icmp ugt i64 %"$gasmin_2323", %"$gasrem_2324"
  br i1 %"$gascmp_2325", label %"$out_of_gas_2326", label %"$have_gas_2327"

"$out_of_gas_2326":                               ; preds = %"$have_gas_2313"
  call void @_out_of_gas()
  br label %"$have_gas_2327"

"$have_gas_2327":                                 ; preds = %"$out_of_gas_2326", %"$have_gas_2313"
  %"$consume_2328" = sub i64 %"$gasrem_2324", %"$gasmin_2323"
  store i64 %"$consume_2328", i64* @_gasrem, align 8
  %"$execptr_load_2329" = load i8*, i8** @_execptr, align 8
  %"$c_2330" = load %String, %String* %c5, align 8
  %"$v_2331" = load %String, %String* %v6, align 8
  %"$eq_call_2332" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_2329", %String %"$c_2330", %String %"$v_2331")
  store %TName_Bool* %"$eq_call_2332", %TName_Bool** %eq7, align 8
  %"$gasrem_2334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2335" = icmp ugt i64 2, %"$gasrem_2334"
  br i1 %"$gascmp_2335", label %"$out_of_gas_2336", label %"$have_gas_2337"

"$out_of_gas_2336":                               ; preds = %"$have_gas_2327"
  call void @_out_of_gas()
  br label %"$have_gas_2337"

"$have_gas_2337":                                 ; preds = %"$out_of_gas_2336", %"$have_gas_2327"
  %"$consume_2338" = sub i64 %"$gasrem_2334", 2
  store i64 %"$consume_2338", i64* @_gasrem, align 8
  %"$eq_2340" = load %TName_Bool*, %TName_Bool** %eq7, align 8
  %"$eq_tag_2341" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_2340", i32 0, i32 0
  %"$eq_tag_2342" = load i8, i8* %"$eq_tag_2341", align 1
  switch i8 %"$eq_tag_2342", label %"$empty_default_2343" [
    i8 0, label %"$True_2344"
    i8 1, label %"$False_2346"
  ]

"$True_2344":                                     ; preds = %"$have_gas_2337"
  %"$eq_2345" = bitcast %TName_Bool* %"$eq_2340" to %CName_True*
  br label %"$matchsucc_2339"

"$False_2346":                                    ; preds = %"$have_gas_2337"
  %"$eq_2347" = bitcast %TName_Bool* %"$eq_2340" to %CName_False*
  %"$gasrem_2348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2349" = icmp ugt i64 1, %"$gasrem_2348"
  br i1 %"$gascmp_2349", label %"$out_of_gas_2350", label %"$have_gas_2351"

"$out_of_gas_2350":                               ; preds = %"$False_2346"
  call void @_out_of_gas()
  br label %"$have_gas_2351"

"$have_gas_2351":                                 ; preds = %"$out_of_gas_2350", %"$False_2346"
  %"$consume_2352" = sub i64 %"$gasrem_2348", 1
  store i64 %"$consume_2352", i64* @_gasrem, align 8
  %m8 = alloca %String, align 8
  %"$gasrem_2353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2354" = icmp ugt i64 1, %"$gasrem_2353"
  br i1 %"$gascmp_2354", label %"$out_of_gas_2355", label %"$have_gas_2356"

"$out_of_gas_2355":                               ; preds = %"$have_gas_2351"
  call void @_out_of_gas()
  br label %"$have_gas_2356"

"$have_gas_2356":                                 ; preds = %"$out_of_gas_2355", %"$have_gas_2351"
  %"$consume_2357" = sub i64 %"$gasrem_2353", 1
  store i64 %"$consume_2357", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_2358", i32 0, i32 0), i32 31 }, %String* %m8, align 8
  %"$gasrem_2359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2360" = icmp ugt i64 1, %"$gasrem_2359"
  br i1 %"$gascmp_2360", label %"$out_of_gas_2361", label %"$have_gas_2362"

"$out_of_gas_2361":                               ; preds = %"$have_gas_2356"
  call void @_out_of_gas()
  br label %"$have_gas_2362"

"$have_gas_2362":                                 ; preds = %"$out_of_gas_2361", %"$have_gas_2356"
  %"$consume_2363" = sub i64 %"$gasrem_2359", 1
  store i64 %"$consume_2363", i64* @_gasrem, align 8
  %"$fail_msg__origin_2364" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2364", align 1
  %"$fail_msg__sender_2365" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2365", align 1
  %"$tname_2366" = load %String, %String* %tname, align 8
  %"$m_2367" = load %String, %String* %m8, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2364", [20 x i8]* %"$fail_msg__sender_2365", %String %"$tname_2366", %String %"$m_2367")
  br label %"$matchsucc_2339"

"$empty_default_2343":                            ; preds = %"$have_gas_2337"
  br label %"$matchsucc_2339"

"$matchsucc_2339":                                ; preds = %"$have_gas_2362", %"$True_2344", %"$empty_default_2343"
  br label %"$matchsucc_2290"

"$None_2368":                                     ; preds = %"$have_gas_2288"
  %"$$c1_9_2369" = bitcast %TName_Option_String* %"$$c1_9_2291" to %CName_None_String*
  %"$gasrem_2370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2371" = icmp ugt i64 1, %"$gasrem_2370"
  br i1 %"$gascmp_2371", label %"$out_of_gas_2372", label %"$have_gas_2373"

"$out_of_gas_2372":                               ; preds = %"$None_2368"
  call void @_out_of_gas()
  br label %"$have_gas_2373"

"$have_gas_2373":                                 ; preds = %"$out_of_gas_2372", %"$None_2368"
  %"$consume_2374" = sub i64 %"$gasrem_2370", 1
  store i64 %"$consume_2374", i64* @_gasrem, align 8
  %m9 = alloca %String, align 8
  %"$gasrem_2375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2376" = icmp ugt i64 1, %"$gasrem_2375"
  br i1 %"$gascmp_2376", label %"$out_of_gas_2377", label %"$have_gas_2378"

"$out_of_gas_2377":                               ; preds = %"$have_gas_2373"
  call void @_out_of_gas()
  br label %"$have_gas_2378"

"$have_gas_2378":                                 ; preds = %"$out_of_gas_2377", %"$have_gas_2373"
  %"$consume_2379" = sub i64 %"$gasrem_2375", 1
  store i64 %"$consume_2379", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_2380", i32 0, i32 0), i32 21 }, %String* %m9, align 8
  %"$gasrem_2381" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2382" = icmp ugt i64 1, %"$gasrem_2381"
  br i1 %"$gascmp_2382", label %"$out_of_gas_2383", label %"$have_gas_2384"

"$out_of_gas_2383":                               ; preds = %"$have_gas_2378"
  call void @_out_of_gas()
  br label %"$have_gas_2384"

"$have_gas_2384":                                 ; preds = %"$out_of_gas_2383", %"$have_gas_2378"
  %"$consume_2385" = sub i64 %"$gasrem_2381", 1
  store i64 %"$consume_2385", i64* @_gasrem, align 8
  %"$fail_msg__origin_2386" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2386", align 1
  %"$fail_msg__sender_2387" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2387", align 1
  %"$tname_2388" = load %String, %String* %tname, align 8
  %"$m_2389" = load %String, %String* %m9, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2386", [20 x i8]* %"$fail_msg__sender_2387", %String %"$tname_2388", %String %"$m_2389")
  br label %"$matchsucc_2290"

"$empty_default_2294":                            ; preds = %"$have_gas_2288"
  br label %"$matchsucc_2290"

"$matchsucc_2290":                                ; preds = %"$have_gas_2384", %"$matchsucc_2339", %"$empty_default_2294"
  %"$gasrem_2390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2391" = icmp ugt i64 1, %"$gasrem_2390"
  br i1 %"$gascmp_2391", label %"$out_of_gas_2392", label %"$have_gas_2393"

"$out_of_gas_2392":                               ; preds = %"$matchsucc_2290"
  call void @_out_of_gas()
  br label %"$have_gas_2393"

"$have_gas_2393":                                 ; preds = %"$out_of_gas_2392", %"$matchsucc_2290"
  %"$consume_2394" = sub i64 %"$gasrem_2390", 1
  store i64 %"$consume_2394", i64* @_gasrem, align 8
  %em = alloca %Map_String_String*, align 8
  %"$gasrem_2395" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2396" = icmp ugt i64 1, %"$gasrem_2395"
  br i1 %"$gascmp_2396", label %"$out_of_gas_2397", label %"$have_gas_2398"

"$out_of_gas_2397":                               ; preds = %"$have_gas_2393"
  call void @_out_of_gas()
  br label %"$have_gas_2398"

"$have_gas_2398":                                 ; preds = %"$out_of_gas_2397", %"$have_gas_2393"
  %"$consume_2399" = sub i64 %"$gasrem_2395", 1
  store i64 %"$consume_2399", i64* @_gasrem, align 8
  %"$execptr_load_2400" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2401" = call i8* @_new_empty_map(i8* %"$execptr_load_2400")
  %"$_new_empty_map_2402" = bitcast i8* %"$_new_empty_map_call_2401" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_2402", %Map_String_String** %em, align 8
  %"$em_2403" = load %Map_String_String*, %Map_String_String** %em, align 8
  %"$$em_2403_2404" = bitcast %Map_String_String* %"$em_2403" to i8*
  %"$_literal_cost_call_2405" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_65", i8* %"$$em_2403_2404")
  %"$gasrem_2406" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2407" = icmp ugt i64 %"$_literal_cost_call_2405", %"$gasrem_2406"
  br i1 %"$gascmp_2407", label %"$out_of_gas_2408", label %"$have_gas_2409"

"$out_of_gas_2408":                               ; preds = %"$have_gas_2398"
  call void @_out_of_gas()
  br label %"$have_gas_2409"

"$have_gas_2409":                                 ; preds = %"$out_of_gas_2408", %"$have_gas_2398"
  %"$consume_2410" = sub i64 %"$gasrem_2406", %"$_literal_cost_call_2405"
  store i64 %"$consume_2410", i64* @_gasrem, align 8
  %"$execptr_load_2411" = load i8*, i8** @_execptr, align 8
  %"$em_2413" = load %Map_String_String*, %Map_String_String** %em, align 8
  %"$update_value_2414" = bitcast %Map_String_String* %"$em_2413" to i8*
  call void @_update_field(i8* %"$execptr_load_2411", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2412", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_65", i32 0, i8* null, i8* %"$update_value_2414")
  ret void
}

define void @t8(i8* %0) {
entry:
  %"$_amount_2416" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2417" = bitcast i8* %"$_amount_2416" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2417", align 8
  %"$_origin_2418" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2419" = bitcast i8* %"$_origin_2418" to [20 x i8]*
  %"$_sender_2420" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2421" = bitcast i8* %"$_sender_2420" to [20 x i8]*
  call void @"$t8_2084"(%Uint128 %_amount, [20 x i8]* %"$_origin_2419", [20 x i8]* %"$_sender_2421")
  ret void
}

define internal void @"$t9_2422"(%Uint128 %_amount, [20 x i8]* %"$_origin_2423", [20 x i8]* %"$_sender_2424") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2423", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2424", align 1
  %"$gasrem_2425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2426" = icmp ugt i64 1, %"$gasrem_2425"
  br i1 %"$gascmp_2426", label %"$out_of_gas_2427", label %"$have_gas_2428"

"$out_of_gas_2427":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2428"

"$have_gas_2428":                                 ; preds = %"$out_of_gas_2427", %entry
  %"$consume_2429" = sub i64 %"$gasrem_2425", 1
  store i64 %"$consume_2429", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_2430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2431" = icmp ugt i64 1, %"$gasrem_2430"
  br i1 %"$gascmp_2431", label %"$out_of_gas_2432", label %"$have_gas_2433"

"$out_of_gas_2432":                               ; preds = %"$have_gas_2428"
  call void @_out_of_gas()
  br label %"$have_gas_2433"

"$have_gas_2433":                                 ; preds = %"$out_of_gas_2432", %"$have_gas_2428"
  %"$consume_2434" = sub i64 %"$gasrem_2430", 1
  store i64 %"$consume_2434", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_2435", i32 0, i32 0), i32 2 }, %String* %tname, align 8
  %m1 = alloca %Map_String_String*, align 8
  %"$execptr_load_2437" = load i8*, i8** @_execptr, align 8
  %"$m1_call_2438" = call i8* @_fetch_field(i8* %"$execptr_load_2437", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2436", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_65", i32 0, i8* null, i32 1)
  %"$m1_2439" = bitcast i8* %"$m1_call_2438" to %Map_String_String*
  store %Map_String_String* %"$m1_2439", %Map_String_String** %m1, align 8
  %"$m1_2440" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2440_2441" = bitcast %Map_String_String* %"$m1_2440" to i8*
  %"$_literal_cost_call_2442" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_65", i8* %"$$m1_2440_2441")
  %"$m1_2443" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2443_2444" = bitcast %Map_String_String* %"$m1_2443" to i8*
  %"$_mapsortcost_call_2445" = call i64 @_mapsortcost(i8* %"$$m1_2443_2444")
  %"$gasadd_2446" = add i64 %"$_literal_cost_call_2442", %"$_mapsortcost_call_2445"
  %"$gasrem_2447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2448" = icmp ugt i64 %"$gasadd_2446", %"$gasrem_2447"
  br i1 %"$gascmp_2448", label %"$out_of_gas_2449", label %"$have_gas_2450"

"$out_of_gas_2449":                               ; preds = %"$have_gas_2433"
  call void @_out_of_gas()
  br label %"$have_gas_2450"

"$have_gas_2450":                                 ; preds = %"$out_of_gas_2449", %"$have_gas_2433"
  %"$consume_2451" = sub i64 %"$gasrem_2447", %"$gasadd_2446"
  store i64 %"$consume_2451", i64* @_gasrem, align 8
  %"$gasrem_2452" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2453" = icmp ugt i64 1, %"$gasrem_2452"
  br i1 %"$gascmp_2453", label %"$out_of_gas_2454", label %"$have_gas_2455"

"$out_of_gas_2454":                               ; preds = %"$have_gas_2450"
  call void @_out_of_gas()
  br label %"$have_gas_2455"

"$have_gas_2455":                                 ; preds = %"$out_of_gas_2454", %"$have_gas_2450"
  %"$consume_2456" = sub i64 %"$gasrem_2452", 1
  store i64 %"$consume_2456", i64* @_gasrem, align 8
  %m1_size = alloca %Uint32, align 8
  %"$gasrem_2457" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2458" = icmp ugt i64 1, %"$gasrem_2457"
  br i1 %"$gascmp_2458", label %"$out_of_gas_2459", label %"$have_gas_2460"

"$out_of_gas_2459":                               ; preds = %"$have_gas_2455"
  call void @_out_of_gas()
  br label %"$have_gas_2460"

"$have_gas_2460":                                 ; preds = %"$out_of_gas_2459", %"$have_gas_2455"
  %"$consume_2461" = sub i64 %"$gasrem_2457", 1
  store i64 %"$consume_2461", i64* @_gasrem, align 8
  %"$m1_2462" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2462_2463" = bitcast %Map_String_String* %"$m1_2462" to i8*
  %"$size_call_2464" = call %Uint32 @_size(i8* %"$$m1_2462_2463")
  store %Uint32 %"$size_call_2464", %Uint32* %m1_size, align 4
  %"$gasrem_2465" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2466" = icmp ugt i64 1, %"$gasrem_2465"
  br i1 %"$gascmp_2466", label %"$out_of_gas_2467", label %"$have_gas_2468"

"$out_of_gas_2467":                               ; preds = %"$have_gas_2460"
  call void @_out_of_gas()
  br label %"$have_gas_2468"

"$have_gas_2468":                                 ; preds = %"$out_of_gas_2467", %"$have_gas_2460"
  %"$consume_2469" = sub i64 %"$gasrem_2465", 1
  store i64 %"$consume_2469", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_2470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2471" = icmp ugt i64 1, %"$gasrem_2470"
  br i1 %"$gascmp_2471", label %"$out_of_gas_2472", label %"$have_gas_2473"

"$out_of_gas_2472":                               ; preds = %"$have_gas_2468"
  call void @_out_of_gas()
  br label %"$have_gas_2473"

"$have_gas_2473":                                 ; preds = %"$out_of_gas_2472", %"$have_gas_2468"
  %"$consume_2474" = sub i64 %"$gasrem_2470", 1
  store i64 %"$consume_2474", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_2475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2476" = icmp ugt i64 1, %"$gasrem_2475"
  br i1 %"$gascmp_2476", label %"$out_of_gas_2477", label %"$have_gas_2478"

"$out_of_gas_2477":                               ; preds = %"$have_gas_2473"
  call void @_out_of_gas()
  br label %"$have_gas_2478"

"$have_gas_2478":                                 ; preds = %"$out_of_gas_2477", %"$have_gas_2473"
  %"$consume_2479" = sub i64 %"$gasrem_2475", 1
  store i64 %"$consume_2479", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  %"$gasrem_2480" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2481" = icmp ugt i64 4, %"$gasrem_2480"
  br i1 %"$gascmp_2481", label %"$out_of_gas_2482", label %"$have_gas_2483"

"$out_of_gas_2482":                               ; preds = %"$have_gas_2478"
  call void @_out_of_gas()
  br label %"$have_gas_2483"

"$have_gas_2483":                                 ; preds = %"$out_of_gas_2482", %"$have_gas_2478"
  %"$consume_2484" = sub i64 %"$gasrem_2480", 4
  store i64 %"$consume_2484", i64* @_gasrem, align 8
  %"$execptr_load_2485" = load i8*, i8** @_execptr, align 8
  %"$m1_size_2486" = load %Uint32, %Uint32* %m1_size, align 4
  %"$zero_2487" = load %Uint32, %Uint32* %zero, align 4
  %"$eq_call_2488" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_2485", %Uint32 %"$m1_size_2486", %Uint32 %"$zero_2487")
  store %TName_Bool* %"$eq_call_2488", %TName_Bool** %is_empty, align 8
  %"$gasrem_2490" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2491" = icmp ugt i64 2, %"$gasrem_2490"
  br i1 %"$gascmp_2491", label %"$out_of_gas_2492", label %"$have_gas_2493"

"$out_of_gas_2492":                               ; preds = %"$have_gas_2483"
  call void @_out_of_gas()
  br label %"$have_gas_2493"

"$have_gas_2493":                                 ; preds = %"$out_of_gas_2492", %"$have_gas_2483"
  %"$consume_2494" = sub i64 %"$gasrem_2490", 2
  store i64 %"$consume_2494", i64* @_gasrem, align 8
  %"$is_empty_2496" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_2497" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_2496", i32 0, i32 0
  %"$is_empty_tag_2498" = load i8, i8* %"$is_empty_tag_2497", align 1
  switch i8 %"$is_empty_tag_2498", label %"$empty_default_2499" [
    i8 0, label %"$True_2500"
    i8 1, label %"$False_2502"
  ]

"$True_2500":                                     ; preds = %"$have_gas_2493"
  %"$is_empty_2501" = bitcast %TName_Bool* %"$is_empty_2496" to %CName_True*
  br label %"$matchsucc_2495"

"$False_2502":                                    ; preds = %"$have_gas_2493"
  %"$is_empty_2503" = bitcast %TName_Bool* %"$is_empty_2496" to %CName_False*
  %"$gasrem_2504" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2505" = icmp ugt i64 1, %"$gasrem_2504"
  br i1 %"$gascmp_2505", label %"$out_of_gas_2506", label %"$have_gas_2507"

"$out_of_gas_2506":                               ; preds = %"$False_2502"
  call void @_out_of_gas()
  br label %"$have_gas_2507"

"$have_gas_2507":                                 ; preds = %"$out_of_gas_2506", %"$False_2502"
  %"$consume_2508" = sub i64 %"$gasrem_2504", 1
  store i64 %"$consume_2508", i64* @_gasrem, align 8
  %"$fail__origin_2509" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_2509", align 1
  %"$fail__sender_2510" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_2510", align 1
  %"$tname_2511" = load %String, %String* %tname, align 8
  call void @"$fail_210"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_2509", [20 x i8]* %"$fail__sender_2510", %String %"$tname_2511")
  br label %"$matchsucc_2495"

"$empty_default_2499":                            ; preds = %"$have_gas_2493"
  br label %"$matchsucc_2495"

"$matchsucc_2495":                                ; preds = %"$have_gas_2507", %"$True_2500", %"$empty_default_2499"
  %"$gasrem_2512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2513" = icmp ugt i64 1, %"$gasrem_2512"
  br i1 %"$gascmp_2513", label %"$out_of_gas_2514", label %"$have_gas_2515"

"$out_of_gas_2514":                               ; preds = %"$matchsucc_2495"
  call void @_out_of_gas()
  br label %"$have_gas_2515"

"$have_gas_2515":                                 ; preds = %"$out_of_gas_2514", %"$matchsucc_2495"
  %"$consume_2516" = sub i64 %"$gasrem_2512", 1
  store i64 %"$consume_2516", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_2517" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2518" = icmp ugt i64 1, %"$gasrem_2517"
  br i1 %"$gascmp_2518", label %"$out_of_gas_2519", label %"$have_gas_2520"

"$out_of_gas_2519":                               ; preds = %"$have_gas_2515"
  call void @_out_of_gas()
  br label %"$have_gas_2520"

"$have_gas_2520":                                 ; preds = %"$out_of_gas_2519", %"$have_gas_2515"
  %"$consume_2521" = sub i64 %"$gasrem_2517", 1
  store i64 %"$consume_2521", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2522", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_2523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2524" = icmp ugt i64 1, %"$gasrem_2523"
  br i1 %"$gascmp_2524", label %"$out_of_gas_2525", label %"$have_gas_2526"

"$out_of_gas_2525":                               ; preds = %"$have_gas_2520"
  call void @_out_of_gas()
  br label %"$have_gas_2526"

"$have_gas_2526":                                 ; preds = %"$out_of_gas_2525", %"$have_gas_2520"
  %"$consume_2527" = sub i64 %"$gasrem_2523", 1
  store i64 %"$consume_2527", i64* @_gasrem, align 8
  %val = alloca %String, align 8
  %"$gasrem_2528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2529" = icmp ugt i64 1, %"$gasrem_2528"
  br i1 %"$gascmp_2529", label %"$out_of_gas_2530", label %"$have_gas_2531"

"$out_of_gas_2530":                               ; preds = %"$have_gas_2526"
  call void @_out_of_gas()
  br label %"$have_gas_2531"

"$have_gas_2531":                                 ; preds = %"$out_of_gas_2530", %"$have_gas_2526"
  %"$consume_2532" = sub i64 %"$gasrem_2528", 1
  store i64 %"$consume_2532", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2533", i32 0, i32 0), i32 3 }, %String* %val, align 8
  %"$gasrem_2534" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2535" = icmp ugt i64 1, %"$gasrem_2534"
  br i1 %"$gascmp_2535", label %"$out_of_gas_2536", label %"$have_gas_2537"

"$out_of_gas_2536":                               ; preds = %"$have_gas_2531"
  call void @_out_of_gas()
  br label %"$have_gas_2537"

"$have_gas_2537":                                 ; preds = %"$out_of_gas_2536", %"$have_gas_2531"
  %"$consume_2538" = sub i64 %"$gasrem_2534", 1
  store i64 %"$consume_2538", i64* @_gasrem, align 8
  %"$m1_10" = alloca %Map_String_String*, align 8
  %"$m1_2539" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2539_2540" = bitcast %Map_String_String* %"$m1_2539" to i8*
  %"$_lengthof_call_2541" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_65", i8* %"$$m1_2539_2540")
  %"$gasadd_2542" = add i64 1, %"$_lengthof_call_2541"
  %"$gasrem_2543" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2544" = icmp ugt i64 %"$gasadd_2542", %"$gasrem_2543"
  br i1 %"$gascmp_2544", label %"$out_of_gas_2545", label %"$have_gas_2546"

"$out_of_gas_2545":                               ; preds = %"$have_gas_2537"
  call void @_out_of_gas()
  br label %"$have_gas_2546"

"$have_gas_2546":                                 ; preds = %"$out_of_gas_2545", %"$have_gas_2537"
  %"$consume_2547" = sub i64 %"$gasrem_2543", %"$gasadd_2542"
  store i64 %"$consume_2547", i64* @_gasrem, align 8
  %"$execptr_load_2548" = load i8*, i8** @_execptr, align 8
  %"$m1_2549" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2549_2550" = bitcast %Map_String_String* %"$m1_2549" to i8*
  %"$put_key1a_2551" = alloca %String, align 8
  %"$key1a_2552" = load %String, %String* %key1a, align 8
  store %String %"$key1a_2552", %String* %"$put_key1a_2551", align 8
  %"$$put_key1a_2551_2553" = bitcast %String* %"$put_key1a_2551" to i8*
  %"$put_val_2554" = alloca %String, align 8
  %"$val_2555" = load %String, %String* %val, align 8
  store %String %"$val_2555", %String* %"$put_val_2554", align 8
  %"$$put_val_2554_2556" = bitcast %String* %"$put_val_2554" to i8*
  %"$put_call_2557" = call i8* @_put(i8* %"$execptr_load_2548", %_TyDescrTy_Typ* @"$TyDescr_Map_65", i8* %"$$m1_2549_2550", i8* %"$$put_key1a_2551_2553", i8* %"$$put_val_2554_2556")
  %"$put_2558" = bitcast i8* %"$put_call_2557" to %Map_String_String*
  store %Map_String_String* %"$put_2558", %Map_String_String** %"$m1_10", align 8
  %"$$m1_10_2559" = load %Map_String_String*, %Map_String_String** %"$m1_10", align 8
  %"$$$m1_10_2559_2560" = bitcast %Map_String_String* %"$$m1_10_2559" to i8*
  %"$_literal_cost_call_2561" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_65", i8* %"$$$m1_10_2559_2560")
  %"$gasrem_2562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2563" = icmp ugt i64 %"$_literal_cost_call_2561", %"$gasrem_2562"
  br i1 %"$gascmp_2563", label %"$out_of_gas_2564", label %"$have_gas_2565"

"$out_of_gas_2564":                               ; preds = %"$have_gas_2546"
  call void @_out_of_gas()
  br label %"$have_gas_2565"

"$have_gas_2565":                                 ; preds = %"$out_of_gas_2564", %"$have_gas_2546"
  %"$consume_2566" = sub i64 %"$gasrem_2562", %"$_literal_cost_call_2561"
  store i64 %"$consume_2566", i64* @_gasrem, align 8
  %"$execptr_load_2567" = load i8*, i8** @_execptr, align 8
  %"$$m1_10_2569" = load %Map_String_String*, %Map_String_String** %"$m1_10", align 8
  %"$update_value_2570" = bitcast %Map_String_String* %"$$m1_10_2569" to i8*
  call void @_update_field(i8* %"$execptr_load_2567", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2568", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_65", i32 0, i8* null, i8* %"$update_value_2570")
  ret void
}

declare i64 @_mapsortcost(i8*)

declare %Uint32 @_size(i8*)

declare %TName_Bool* @_eq_Uint32(i8*, %Uint32, %Uint32)

define void @t9(i8* %0) {
entry:
  %"$_amount_2572" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2573" = bitcast i8* %"$_amount_2572" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2573", align 8
  %"$_origin_2574" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2575" = bitcast i8* %"$_origin_2574" to [20 x i8]*
  %"$_sender_2576" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2577" = bitcast i8* %"$_sender_2576" to [20 x i8]*
  call void @"$t9_2422"(%Uint128 %_amount, [20 x i8]* %"$_origin_2575", [20 x i8]* %"$_sender_2577")
  ret void
}

define internal void @"$t10_2578"(%Uint128 %_amount, [20 x i8]* %"$_origin_2579", [20 x i8]* %"$_sender_2580") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2579", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2580", align 1
  %"$gasrem_2581" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2582" = icmp ugt i64 1, %"$gasrem_2581"
  br i1 %"$gascmp_2582", label %"$out_of_gas_2583", label %"$have_gas_2584"

"$out_of_gas_2583":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2584"

"$have_gas_2584":                                 ; preds = %"$out_of_gas_2583", %entry
  %"$consume_2585" = sub i64 %"$gasrem_2581", 1
  store i64 %"$consume_2585", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_2586" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2587" = icmp ugt i64 1, %"$gasrem_2586"
  br i1 %"$gascmp_2587", label %"$out_of_gas_2588", label %"$have_gas_2589"

"$out_of_gas_2588":                               ; preds = %"$have_gas_2584"
  call void @_out_of_gas()
  br label %"$have_gas_2589"

"$have_gas_2589":                                 ; preds = %"$out_of_gas_2588", %"$have_gas_2584"
  %"$consume_2590" = sub i64 %"$gasrem_2586", 1
  store i64 %"$consume_2590", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2591", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %"$gasrem_2592" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2593" = icmp ugt i64 1, %"$gasrem_2592"
  br i1 %"$gascmp_2593", label %"$out_of_gas_2594", label %"$have_gas_2595"

"$out_of_gas_2594":                               ; preds = %"$have_gas_2589"
  call void @_out_of_gas()
  br label %"$have_gas_2595"

"$have_gas_2595":                                 ; preds = %"$out_of_gas_2594", %"$have_gas_2589"
  %"$consume_2596" = sub i64 %"$gasrem_2592", 1
  store i64 %"$consume_2596", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_2597" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2598" = icmp ugt i64 1, %"$gasrem_2597"
  br i1 %"$gascmp_2598", label %"$out_of_gas_2599", label %"$have_gas_2600"

"$out_of_gas_2599":                               ; preds = %"$have_gas_2595"
  call void @_out_of_gas()
  br label %"$have_gas_2600"

"$have_gas_2600":                                 ; preds = %"$out_of_gas_2599", %"$have_gas_2595"
  %"$consume_2601" = sub i64 %"$gasrem_2597", 1
  store i64 %"$consume_2601", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2602", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %m1 = alloca %Map_String_String*, align 8
  %"$execptr_load_2604" = load i8*, i8** @_execptr, align 8
  %"$m1_call_2605" = call i8* @_fetch_field(i8* %"$execptr_load_2604", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2603", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_65", i32 0, i8* null, i32 1)
  %"$m1_2606" = bitcast i8* %"$m1_call_2605" to %Map_String_String*
  store %Map_String_String* %"$m1_2606", %Map_String_String** %m1, align 8
  %"$m1_2607" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2607_2608" = bitcast %Map_String_String* %"$m1_2607" to i8*
  %"$_literal_cost_call_2609" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_65", i8* %"$$m1_2607_2608")
  %"$m1_2610" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2610_2611" = bitcast %Map_String_String* %"$m1_2610" to i8*
  %"$_mapsortcost_call_2612" = call i64 @_mapsortcost(i8* %"$$m1_2610_2611")
  %"$gasadd_2613" = add i64 %"$_literal_cost_call_2609", %"$_mapsortcost_call_2612"
  %"$gasrem_2614" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2615" = icmp ugt i64 %"$gasadd_2613", %"$gasrem_2614"
  br i1 %"$gascmp_2615", label %"$out_of_gas_2616", label %"$have_gas_2617"

"$out_of_gas_2616":                               ; preds = %"$have_gas_2600"
  call void @_out_of_gas()
  br label %"$have_gas_2617"

"$have_gas_2617":                                 ; preds = %"$out_of_gas_2616", %"$have_gas_2600"
  %"$consume_2618" = sub i64 %"$gasrem_2614", %"$gasadd_2613"
  store i64 %"$consume_2618", i64* @_gasrem, align 8
  %"$gasrem_2619" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2620" = icmp ugt i64 1, %"$gasrem_2619"
  br i1 %"$gascmp_2620", label %"$out_of_gas_2621", label %"$have_gas_2622"

"$out_of_gas_2621":                               ; preds = %"$have_gas_2617"
  call void @_out_of_gas()
  br label %"$have_gas_2622"

"$have_gas_2622":                                 ; preds = %"$out_of_gas_2621", %"$have_gas_2617"
  %"$consume_2623" = sub i64 %"$gasrem_2619", 1
  store i64 %"$consume_2623", i64* @_gasrem, align 8
  %c1 = alloca %TName_Option_String*, align 8
  %"$gasrem_2624" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2625" = icmp ugt i64 1, %"$gasrem_2624"
  br i1 %"$gascmp_2625", label %"$out_of_gas_2626", label %"$have_gas_2627"

"$out_of_gas_2626":                               ; preds = %"$have_gas_2622"
  call void @_out_of_gas()
  br label %"$have_gas_2627"

"$have_gas_2627":                                 ; preds = %"$out_of_gas_2626", %"$have_gas_2622"
  %"$consume_2628" = sub i64 %"$gasrem_2624", 1
  store i64 %"$consume_2628", i64* @_gasrem, align 8
  %"$execptr_load_2629" = load i8*, i8** @_execptr, align 8
  %"$m1_2630" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2630_2631" = bitcast %Map_String_String* %"$m1_2630" to i8*
  %"$get_key1a_2632" = alloca %String, align 8
  %"$key1a_2633" = load %String, %String* %key1a, align 8
  store %String %"$key1a_2633", %String* %"$get_key1a_2632", align 8
  %"$$get_key1a_2632_2634" = bitcast %String* %"$get_key1a_2632" to i8*
  %"$get_call_2635" = call i8* @_get(i8* %"$execptr_load_2629", %_TyDescrTy_Typ* @"$TyDescr_Map_65", i8* %"$$m1_2630_2631", i8* %"$$get_key1a_2632_2634")
  %"$get_2636" = bitcast i8* %"$get_call_2635" to %TName_Option_String*
  store %TName_Option_String* %"$get_2636", %TName_Option_String** %c1, align 8
  %"$gasrem_2637" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2638" = icmp ugt i64 2, %"$gasrem_2637"
  br i1 %"$gascmp_2638", label %"$out_of_gas_2639", label %"$have_gas_2640"

"$out_of_gas_2639":                               ; preds = %"$have_gas_2627"
  call void @_out_of_gas()
  br label %"$have_gas_2640"

"$have_gas_2640":                                 ; preds = %"$out_of_gas_2639", %"$have_gas_2627"
  %"$consume_2641" = sub i64 %"$gasrem_2637", 2
  store i64 %"$consume_2641", i64* @_gasrem, align 8
  %"$c1_2643" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$c1_tag_2644" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_2643", i32 0, i32 0
  %"$c1_tag_2645" = load i8, i8* %"$c1_tag_2644", align 1
  switch i8 %"$c1_tag_2645", label %"$empty_default_2646" [
    i8 0, label %"$Some_2647"
    i8 1, label %"$None_2720"
  ]

"$Some_2647":                                     ; preds = %"$have_gas_2640"
  %"$c1_2648" = bitcast %TName_Option_String* %"$c1_2643" to %CName_Some_String*
  %"$c_gep_2649" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_2648", i32 0, i32 1
  %"$c_load_2650" = load %String, %String* %"$c_gep_2649", align 8
  %c = alloca %String, align 8
  store %String %"$c_load_2650", %String* %c, align 8
  %"$gasrem_2651" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2652" = icmp ugt i64 1, %"$gasrem_2651"
  br i1 %"$gascmp_2652", label %"$out_of_gas_2653", label %"$have_gas_2654"

"$out_of_gas_2653":                               ; preds = %"$Some_2647"
  call void @_out_of_gas()
  br label %"$have_gas_2654"

"$have_gas_2654":                                 ; preds = %"$out_of_gas_2653", %"$Some_2647"
  %"$consume_2655" = sub i64 %"$gasrem_2651", 1
  store i64 %"$consume_2655", i64* @_gasrem, align 8
  %v = alloca %String, align 8
  %"$gasrem_2656" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2657" = icmp ugt i64 1, %"$gasrem_2656"
  br i1 %"$gascmp_2657", label %"$out_of_gas_2658", label %"$have_gas_2659"

"$out_of_gas_2658":                               ; preds = %"$have_gas_2654"
  call void @_out_of_gas()
  br label %"$have_gas_2659"

"$have_gas_2659":                                 ; preds = %"$out_of_gas_2658", %"$have_gas_2654"
  %"$consume_2660" = sub i64 %"$gasrem_2656", 1
  store i64 %"$consume_2660", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2661", i32 0, i32 0), i32 3 }, %String* %v, align 8
  %"$gasrem_2662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2663" = icmp ugt i64 1, %"$gasrem_2662"
  br i1 %"$gascmp_2663", label %"$out_of_gas_2664", label %"$have_gas_2665"

"$out_of_gas_2664":                               ; preds = %"$have_gas_2659"
  call void @_out_of_gas()
  br label %"$have_gas_2665"

"$have_gas_2665":                                 ; preds = %"$out_of_gas_2664", %"$have_gas_2659"
  %"$consume_2666" = sub i64 %"$gasrem_2662", 1
  store i64 %"$consume_2666", i64* @_gasrem, align 8
  %eq = alloca %TName_Bool*, align 8
  %"$_literal_cost_c_2667" = alloca %String, align 8
  %"$c_2668" = load %String, %String* %c, align 8
  store %String %"$c_2668", %String* %"$_literal_cost_c_2667", align 8
  %"$$_literal_cost_c_2667_2669" = bitcast %String* %"$_literal_cost_c_2667" to i8*
  %"$_literal_cost_call_2670" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_c_2667_2669")
  %"$_literal_cost_v_2671" = alloca %String, align 8
  %"$v_2672" = load %String, %String* %v, align 8
  store %String %"$v_2672", %String* %"$_literal_cost_v_2671", align 8
  %"$$_literal_cost_v_2671_2673" = bitcast %String* %"$_literal_cost_v_2671" to i8*
  %"$_literal_cost_call_2674" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_v_2671_2673")
  %"$gasmin_2675" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_2670", i64 %"$_literal_cost_call_2674")
  %"$gasrem_2676" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2677" = icmp ugt i64 %"$gasmin_2675", %"$gasrem_2676"
  br i1 %"$gascmp_2677", label %"$out_of_gas_2678", label %"$have_gas_2679"

"$out_of_gas_2678":                               ; preds = %"$have_gas_2665"
  call void @_out_of_gas()
  br label %"$have_gas_2679"

"$have_gas_2679":                                 ; preds = %"$out_of_gas_2678", %"$have_gas_2665"
  %"$consume_2680" = sub i64 %"$gasrem_2676", %"$gasmin_2675"
  store i64 %"$consume_2680", i64* @_gasrem, align 8
  %"$execptr_load_2681" = load i8*, i8** @_execptr, align 8
  %"$c_2682" = load %String, %String* %c, align 8
  %"$v_2683" = load %String, %String* %v, align 8
  %"$eq_call_2684" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_2681", %String %"$c_2682", %String %"$v_2683")
  store %TName_Bool* %"$eq_call_2684", %TName_Bool** %eq, align 8
  %"$gasrem_2686" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2687" = icmp ugt i64 2, %"$gasrem_2686"
  br i1 %"$gascmp_2687", label %"$out_of_gas_2688", label %"$have_gas_2689"

"$out_of_gas_2688":                               ; preds = %"$have_gas_2679"
  call void @_out_of_gas()
  br label %"$have_gas_2689"

"$have_gas_2689":                                 ; preds = %"$out_of_gas_2688", %"$have_gas_2679"
  %"$consume_2690" = sub i64 %"$gasrem_2686", 2
  store i64 %"$consume_2690", i64* @_gasrem, align 8
  %"$eq_2692" = load %TName_Bool*, %TName_Bool** %eq, align 8
  %"$eq_tag_2693" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_2692", i32 0, i32 0
  %"$eq_tag_2694" = load i8, i8* %"$eq_tag_2693", align 1
  switch i8 %"$eq_tag_2694", label %"$empty_default_2695" [
    i8 0, label %"$True_2696"
    i8 1, label %"$False_2698"
  ]

"$True_2696":                                     ; preds = %"$have_gas_2689"
  %"$eq_2697" = bitcast %TName_Bool* %"$eq_2692" to %CName_True*
  br label %"$matchsucc_2691"

"$False_2698":                                    ; preds = %"$have_gas_2689"
  %"$eq_2699" = bitcast %TName_Bool* %"$eq_2692" to %CName_False*
  %"$gasrem_2700" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2701" = icmp ugt i64 1, %"$gasrem_2700"
  br i1 %"$gascmp_2701", label %"$out_of_gas_2702", label %"$have_gas_2703"

"$out_of_gas_2702":                               ; preds = %"$False_2698"
  call void @_out_of_gas()
  br label %"$have_gas_2703"

"$have_gas_2703":                                 ; preds = %"$out_of_gas_2702", %"$False_2698"
  %"$consume_2704" = sub i64 %"$gasrem_2700", 1
  store i64 %"$consume_2704", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  %"$gasrem_2705" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2706" = icmp ugt i64 1, %"$gasrem_2705"
  br i1 %"$gascmp_2706", label %"$out_of_gas_2707", label %"$have_gas_2708"

"$out_of_gas_2707":                               ; preds = %"$have_gas_2703"
  call void @_out_of_gas()
  br label %"$have_gas_2708"

"$have_gas_2708":                                 ; preds = %"$out_of_gas_2707", %"$have_gas_2703"
  %"$consume_2709" = sub i64 %"$gasrem_2705", 1
  store i64 %"$consume_2709", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"$stringlit_2710", i32 0, i32 0), i32 25 }, %String* %m, align 8
  %"$gasrem_2711" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2712" = icmp ugt i64 1, %"$gasrem_2711"
  br i1 %"$gascmp_2712", label %"$out_of_gas_2713", label %"$have_gas_2714"

"$out_of_gas_2713":                               ; preds = %"$have_gas_2708"
  call void @_out_of_gas()
  br label %"$have_gas_2714"

"$have_gas_2714":                                 ; preds = %"$out_of_gas_2713", %"$have_gas_2708"
  %"$consume_2715" = sub i64 %"$gasrem_2711", 1
  store i64 %"$consume_2715", i64* @_gasrem, align 8
  %"$fail_msg__origin_2716" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2716", align 1
  %"$fail_msg__sender_2717" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2717", align 1
  %"$tname_2718" = load %String, %String* %tname, align 8
  %"$m_2719" = load %String, %String* %m, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2716", [20 x i8]* %"$fail_msg__sender_2717", %String %"$tname_2718", %String %"$m_2719")
  br label %"$matchsucc_2691"

"$empty_default_2695":                            ; preds = %"$have_gas_2689"
  br label %"$matchsucc_2691"

"$matchsucc_2691":                                ; preds = %"$have_gas_2714", %"$True_2696", %"$empty_default_2695"
  br label %"$matchsucc_2642"

"$None_2720":                                     ; preds = %"$have_gas_2640"
  %"$c1_2721" = bitcast %TName_Option_String* %"$c1_2643" to %CName_None_String*
  %"$gasrem_2722" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2723" = icmp ugt i64 1, %"$gasrem_2722"
  br i1 %"$gascmp_2723", label %"$out_of_gas_2724", label %"$have_gas_2725"

"$out_of_gas_2724":                               ; preds = %"$None_2720"
  call void @_out_of_gas()
  br label %"$have_gas_2725"

"$have_gas_2725":                                 ; preds = %"$out_of_gas_2724", %"$None_2720"
  %"$consume_2726" = sub i64 %"$gasrem_2722", 1
  store i64 %"$consume_2726", i64* @_gasrem, align 8
  %m2 = alloca %String, align 8
  %"$gasrem_2727" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2728" = icmp ugt i64 1, %"$gasrem_2727"
  br i1 %"$gascmp_2728", label %"$out_of_gas_2729", label %"$have_gas_2730"

"$out_of_gas_2729":                               ; preds = %"$have_gas_2725"
  call void @_out_of_gas()
  br label %"$have_gas_2730"

"$have_gas_2730":                                 ; preds = %"$out_of_gas_2729", %"$have_gas_2725"
  %"$consume_2731" = sub i64 %"$gasrem_2727", 1
  store i64 %"$consume_2731", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_2732", i32 0, i32 0), i32 15 }, %String* %m2, align 8
  %"$gasrem_2733" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2734" = icmp ugt i64 1, %"$gasrem_2733"
  br i1 %"$gascmp_2734", label %"$out_of_gas_2735", label %"$have_gas_2736"

"$out_of_gas_2735":                               ; preds = %"$have_gas_2730"
  call void @_out_of_gas()
  br label %"$have_gas_2736"

"$have_gas_2736":                                 ; preds = %"$out_of_gas_2735", %"$have_gas_2730"
  %"$consume_2737" = sub i64 %"$gasrem_2733", 1
  store i64 %"$consume_2737", i64* @_gasrem, align 8
  %"$fail_msg__origin_2738" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2738", align 1
  %"$fail_msg__sender_2739" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2739", align 1
  %"$tname_2740" = load %String, %String* %tname, align 8
  %"$m_2741" = load %String, %String* %m2, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2738", [20 x i8]* %"$fail_msg__sender_2739", %String %"$tname_2740", %String %"$m_2741")
  br label %"$matchsucc_2642"

"$empty_default_2646":                            ; preds = %"$have_gas_2640"
  br label %"$matchsucc_2642"

"$matchsucc_2642":                                ; preds = %"$have_gas_2736", %"$matchsucc_2691", %"$empty_default_2646"
  %"$gasrem_2742" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2743" = icmp ugt i64 1, %"$gasrem_2742"
  br i1 %"$gascmp_2743", label %"$out_of_gas_2744", label %"$have_gas_2745"

"$out_of_gas_2744":                               ; preds = %"$matchsucc_2642"
  call void @_out_of_gas()
  br label %"$have_gas_2745"

"$have_gas_2745":                                 ; preds = %"$out_of_gas_2744", %"$matchsucc_2642"
  %"$consume_2746" = sub i64 %"$gasrem_2742", 1
  store i64 %"$consume_2746", i64* @_gasrem, align 8
  %"$indices_buf_2747_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2747_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2747_salloc_load", i64 16)
  %"$indices_buf_2747_salloc" = bitcast i8* %"$indices_buf_2747_salloc_salloc" to [16 x i8]*
  %"$indices_buf_2747" = bitcast [16 x i8]* %"$indices_buf_2747_salloc" to i8*
  %"$key1a_2748" = load %String, %String* %key1a, align 8
  %"$indices_gep_2749" = getelementptr i8, i8* %"$indices_buf_2747", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_2749" to %String*
  store %String %"$key1a_2748", %String* %indices_cast, align 8
  %"$execptr_load_2750" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_2750", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2751", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_65", i32 1, i8* %"$indices_buf_2747", i8* null)
  ret void
}

declare i8* @_get(i8*, %_TyDescrTy_Typ*, i8*, i8*)

define void @t10(i8* %0) {
entry:
  %"$_amount_2753" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2754" = bitcast i8* %"$_amount_2753" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2754", align 8
  %"$_origin_2755" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2756" = bitcast i8* %"$_origin_2755" to [20 x i8]*
  %"$_sender_2757" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2758" = bitcast i8* %"$_sender_2757" to [20 x i8]*
  call void @"$t10_2578"(%Uint128 %_amount, [20 x i8]* %"$_origin_2756", [20 x i8]* %"$_sender_2758")
  ret void
}

define internal void @"$t11_2759"(%Uint128 %_amount, [20 x i8]* %"$_origin_2760", [20 x i8]* %"$_sender_2761") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2760", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2761", align 1
  %"$gasrem_2762" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2763" = icmp ugt i64 1, %"$gasrem_2762"
  br i1 %"$gascmp_2763", label %"$out_of_gas_2764", label %"$have_gas_2765"

"$out_of_gas_2764":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2765"

"$have_gas_2765":                                 ; preds = %"$out_of_gas_2764", %entry
  %"$consume_2766" = sub i64 %"$gasrem_2762", 1
  store i64 %"$consume_2766", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_2767" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2768" = icmp ugt i64 1, %"$gasrem_2767"
  br i1 %"$gascmp_2768", label %"$out_of_gas_2769", label %"$have_gas_2770"

"$out_of_gas_2769":                               ; preds = %"$have_gas_2765"
  call void @_out_of_gas()
  br label %"$have_gas_2770"

"$have_gas_2770":                                 ; preds = %"$out_of_gas_2769", %"$have_gas_2765"
  %"$consume_2771" = sub i64 %"$gasrem_2767", 1
  store i64 %"$consume_2771", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2772", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %m1 = alloca %Map_String_String*, align 8
  %"$execptr_load_2774" = load i8*, i8** @_execptr, align 8
  %"$m1_call_2775" = call i8* @_fetch_field(i8* %"$execptr_load_2774", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2773", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_65", i32 0, i8* null, i32 1)
  %"$m1_2776" = bitcast i8* %"$m1_call_2775" to %Map_String_String*
  store %Map_String_String* %"$m1_2776", %Map_String_String** %m1, align 8
  %"$m1_2777" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2777_2778" = bitcast %Map_String_String* %"$m1_2777" to i8*
  %"$_literal_cost_call_2779" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_65", i8* %"$$m1_2777_2778")
  %"$m1_2780" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2780_2781" = bitcast %Map_String_String* %"$m1_2780" to i8*
  %"$_mapsortcost_call_2782" = call i64 @_mapsortcost(i8* %"$$m1_2780_2781")
  %"$gasadd_2783" = add i64 %"$_literal_cost_call_2779", %"$_mapsortcost_call_2782"
  %"$gasrem_2784" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2785" = icmp ugt i64 %"$gasadd_2783", %"$gasrem_2784"
  br i1 %"$gascmp_2785", label %"$out_of_gas_2786", label %"$have_gas_2787"

"$out_of_gas_2786":                               ; preds = %"$have_gas_2770"
  call void @_out_of_gas()
  br label %"$have_gas_2787"

"$have_gas_2787":                                 ; preds = %"$out_of_gas_2786", %"$have_gas_2770"
  %"$consume_2788" = sub i64 %"$gasrem_2784", %"$gasadd_2783"
  store i64 %"$consume_2788", i64* @_gasrem, align 8
  %"$gasrem_2789" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2790" = icmp ugt i64 1, %"$gasrem_2789"
  br i1 %"$gascmp_2790", label %"$out_of_gas_2791", label %"$have_gas_2792"

"$out_of_gas_2791":                               ; preds = %"$have_gas_2787"
  call void @_out_of_gas()
  br label %"$have_gas_2792"

"$have_gas_2792":                                 ; preds = %"$out_of_gas_2791", %"$have_gas_2787"
  %"$consume_2793" = sub i64 %"$gasrem_2789", 1
  store i64 %"$consume_2793", i64* @_gasrem, align 8
  %m1_size = alloca %Uint32, align 8
  %"$gasrem_2794" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2795" = icmp ugt i64 1, %"$gasrem_2794"
  br i1 %"$gascmp_2795", label %"$out_of_gas_2796", label %"$have_gas_2797"

"$out_of_gas_2796":                               ; preds = %"$have_gas_2792"
  call void @_out_of_gas()
  br label %"$have_gas_2797"

"$have_gas_2797":                                 ; preds = %"$out_of_gas_2796", %"$have_gas_2792"
  %"$consume_2798" = sub i64 %"$gasrem_2794", 1
  store i64 %"$consume_2798", i64* @_gasrem, align 8
  %"$m1_2799" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2799_2800" = bitcast %Map_String_String* %"$m1_2799" to i8*
  %"$size_call_2801" = call %Uint32 @_size(i8* %"$$m1_2799_2800")
  store %Uint32 %"$size_call_2801", %Uint32* %m1_size, align 4
  %"$gasrem_2802" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2803" = icmp ugt i64 1, %"$gasrem_2802"
  br i1 %"$gascmp_2803", label %"$out_of_gas_2804", label %"$have_gas_2805"

"$out_of_gas_2804":                               ; preds = %"$have_gas_2797"
  call void @_out_of_gas()
  br label %"$have_gas_2805"

"$have_gas_2805":                                 ; preds = %"$out_of_gas_2804", %"$have_gas_2797"
  %"$consume_2806" = sub i64 %"$gasrem_2802", 1
  store i64 %"$consume_2806", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_2807" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2808" = icmp ugt i64 1, %"$gasrem_2807"
  br i1 %"$gascmp_2808", label %"$out_of_gas_2809", label %"$have_gas_2810"

"$out_of_gas_2809":                               ; preds = %"$have_gas_2805"
  call void @_out_of_gas()
  br label %"$have_gas_2810"

"$have_gas_2810":                                 ; preds = %"$out_of_gas_2809", %"$have_gas_2805"
  %"$consume_2811" = sub i64 %"$gasrem_2807", 1
  store i64 %"$consume_2811", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_2812" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2813" = icmp ugt i64 1, %"$gasrem_2812"
  br i1 %"$gascmp_2813", label %"$out_of_gas_2814", label %"$have_gas_2815"

"$out_of_gas_2814":                               ; preds = %"$have_gas_2810"
  call void @_out_of_gas()
  br label %"$have_gas_2815"

"$have_gas_2815":                                 ; preds = %"$out_of_gas_2814", %"$have_gas_2810"
  %"$consume_2816" = sub i64 %"$gasrem_2812", 1
  store i64 %"$consume_2816", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  %"$gasrem_2817" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2818" = icmp ugt i64 4, %"$gasrem_2817"
  br i1 %"$gascmp_2818", label %"$out_of_gas_2819", label %"$have_gas_2820"

"$out_of_gas_2819":                               ; preds = %"$have_gas_2815"
  call void @_out_of_gas()
  br label %"$have_gas_2820"

"$have_gas_2820":                                 ; preds = %"$out_of_gas_2819", %"$have_gas_2815"
  %"$consume_2821" = sub i64 %"$gasrem_2817", 4
  store i64 %"$consume_2821", i64* @_gasrem, align 8
  %"$execptr_load_2822" = load i8*, i8** @_execptr, align 8
  %"$m1_size_2823" = load %Uint32, %Uint32* %m1_size, align 4
  %"$zero_2824" = load %Uint32, %Uint32* %zero, align 4
  %"$eq_call_2825" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_2822", %Uint32 %"$m1_size_2823", %Uint32 %"$zero_2824")
  store %TName_Bool* %"$eq_call_2825", %TName_Bool** %is_empty, align 8
  %"$gasrem_2827" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2828" = icmp ugt i64 2, %"$gasrem_2827"
  br i1 %"$gascmp_2828", label %"$out_of_gas_2829", label %"$have_gas_2830"

"$out_of_gas_2829":                               ; preds = %"$have_gas_2820"
  call void @_out_of_gas()
  br label %"$have_gas_2830"

"$have_gas_2830":                                 ; preds = %"$out_of_gas_2829", %"$have_gas_2820"
  %"$consume_2831" = sub i64 %"$gasrem_2827", 2
  store i64 %"$consume_2831", i64* @_gasrem, align 8
  %"$is_empty_2833" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_2834" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_2833", i32 0, i32 0
  %"$is_empty_tag_2835" = load i8, i8* %"$is_empty_tag_2834", align 1
  switch i8 %"$is_empty_tag_2835", label %"$empty_default_2836" [
    i8 0, label %"$True_2837"
    i8 1, label %"$False_2839"
  ]

"$True_2837":                                     ; preds = %"$have_gas_2830"
  %"$is_empty_2838" = bitcast %TName_Bool* %"$is_empty_2833" to %CName_True*
  br label %"$matchsucc_2832"

"$False_2839":                                    ; preds = %"$have_gas_2830"
  %"$is_empty_2840" = bitcast %TName_Bool* %"$is_empty_2833" to %CName_False*
  %"$gasrem_2841" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2842" = icmp ugt i64 1, %"$gasrem_2841"
  br i1 %"$gascmp_2842", label %"$out_of_gas_2843", label %"$have_gas_2844"

"$out_of_gas_2843":                               ; preds = %"$False_2839"
  call void @_out_of_gas()
  br label %"$have_gas_2844"

"$have_gas_2844":                                 ; preds = %"$out_of_gas_2843", %"$False_2839"
  %"$consume_2845" = sub i64 %"$gasrem_2841", 1
  store i64 %"$consume_2845", i64* @_gasrem, align 8
  %"$fail__origin_2846" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_2846", align 1
  %"$fail__sender_2847" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_2847", align 1
  %"$tname_2848" = load %String, %String* %tname, align 8
  call void @"$fail_210"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_2846", [20 x i8]* %"$fail__sender_2847", %String %"$tname_2848")
  br label %"$matchsucc_2832"

"$empty_default_2836":                            ; preds = %"$have_gas_2830"
  br label %"$matchsucc_2832"

"$matchsucc_2832":                                ; preds = %"$have_gas_2844", %"$True_2837", %"$empty_default_2836"
  %"$gasrem_2849" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2850" = icmp ugt i64 1, %"$gasrem_2849"
  br i1 %"$gascmp_2850", label %"$out_of_gas_2851", label %"$have_gas_2852"

"$out_of_gas_2851":                               ; preds = %"$matchsucc_2832"
  call void @_out_of_gas()
  br label %"$have_gas_2852"

"$have_gas_2852":                                 ; preds = %"$out_of_gas_2851", %"$matchsucc_2832"
  %"$consume_2853" = sub i64 %"$gasrem_2849", 1
  store i64 %"$consume_2853", i64* @_gasrem, align 8
  %e2 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_2854" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2855" = icmp ugt i64 1, %"$gasrem_2854"
  br i1 %"$gascmp_2855", label %"$out_of_gas_2856", label %"$have_gas_2857"

"$out_of_gas_2856":                               ; preds = %"$have_gas_2852"
  call void @_out_of_gas()
  br label %"$have_gas_2857"

"$have_gas_2857":                                 ; preds = %"$out_of_gas_2856", %"$have_gas_2852"
  %"$consume_2858" = sub i64 %"$gasrem_2854", 1
  store i64 %"$consume_2858", i64* @_gasrem, align 8
  %"$execptr_load_2859" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2860" = call i8* @_new_empty_map(i8* %"$execptr_load_2859")
  %"$_new_empty_map_2861" = bitcast i8* %"$_new_empty_map_call_2860" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_2861", %"Map_String_Map_(String)_(String)"** %e2, align 8
  %"$e2_2862" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e2, align 8
  %"$$e2_2862_2863" = bitcast %"Map_String_Map_(String)_(String)"* %"$e2_2862" to i8*
  %"$_literal_cost_call_2864" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_64", i8* %"$$e2_2862_2863")
  %"$gasrem_2865" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2866" = icmp ugt i64 %"$_literal_cost_call_2864", %"$gasrem_2865"
  br i1 %"$gascmp_2866", label %"$out_of_gas_2867", label %"$have_gas_2868"

"$out_of_gas_2867":                               ; preds = %"$have_gas_2857"
  call void @_out_of_gas()
  br label %"$have_gas_2868"

"$have_gas_2868":                                 ; preds = %"$out_of_gas_2867", %"$have_gas_2857"
  %"$consume_2869" = sub i64 %"$gasrem_2865", %"$_literal_cost_call_2864"
  store i64 %"$consume_2869", i64* @_gasrem, align 8
  %"$execptr_load_2870" = load i8*, i8** @_execptr, align 8
  %"$e2_2872" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e2, align 8
  %"$update_value_2873" = bitcast %"Map_String_Map_(String)_(String)"* %"$e2_2872" to i8*
  call void @_update_field(i8* %"$execptr_load_2870", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2871", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 0, i8* null, i8* %"$update_value_2873")
  ret void
}

define void @t11(i8* %0) {
entry:
  %"$_amount_2875" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2876" = bitcast i8* %"$_amount_2875" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2876", align 8
  %"$_origin_2877" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2878" = bitcast i8* %"$_origin_2877" to [20 x i8]*
  %"$_sender_2879" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2880" = bitcast i8* %"$_sender_2879" to [20 x i8]*
  call void @"$t11_2759"(%Uint128 %_amount, [20 x i8]* %"$_origin_2878", [20 x i8]* %"$_sender_2880")
  ret void
}

define internal void @"$t12_2881"(%Uint128 %_amount, [20 x i8]* %"$_origin_2882", [20 x i8]* %"$_sender_2883") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2882", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2883", align 1
  %"$gasrem_2884" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2885" = icmp ugt i64 1, %"$gasrem_2884"
  br i1 %"$gascmp_2885", label %"$out_of_gas_2886", label %"$have_gas_2887"

"$out_of_gas_2886":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2887"

"$have_gas_2887":                                 ; preds = %"$out_of_gas_2886", %entry
  %"$consume_2888" = sub i64 %"$gasrem_2884", 1
  store i64 %"$consume_2888", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_2889" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2890" = icmp ugt i64 1, %"$gasrem_2889"
  br i1 %"$gascmp_2890", label %"$out_of_gas_2891", label %"$have_gas_2892"

"$out_of_gas_2891":                               ; preds = %"$have_gas_2887"
  call void @_out_of_gas()
  br label %"$have_gas_2892"

"$have_gas_2892":                                 ; preds = %"$out_of_gas_2891", %"$have_gas_2887"
  %"$consume_2893" = sub i64 %"$gasrem_2889", 1
  store i64 %"$consume_2893", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2894", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %m2 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$execptr_load_2896" = load i8*, i8** @_execptr, align 8
  %"$m2_call_2897" = call i8* @_fetch_field(i8* %"$execptr_load_2896", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2895", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 0, i8* null, i32 1)
  %"$m2_2898" = bitcast i8* %"$m2_call_2897" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$m2_2898", %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$m2_2899" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_2899_2900" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_2899" to i8*
  %"$_literal_cost_call_2901" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_64", i8* %"$$m2_2899_2900")
  %"$m2_2902" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_2902_2903" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_2902" to i8*
  %"$_mapsortcost_call_2904" = call i64 @_mapsortcost(i8* %"$$m2_2902_2903")
  %"$gasadd_2905" = add i64 %"$_literal_cost_call_2901", %"$_mapsortcost_call_2904"
  %"$gasrem_2906" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2907" = icmp ugt i64 %"$gasadd_2905", %"$gasrem_2906"
  br i1 %"$gascmp_2907", label %"$out_of_gas_2908", label %"$have_gas_2909"

"$out_of_gas_2908":                               ; preds = %"$have_gas_2892"
  call void @_out_of_gas()
  br label %"$have_gas_2909"

"$have_gas_2909":                                 ; preds = %"$out_of_gas_2908", %"$have_gas_2892"
  %"$consume_2910" = sub i64 %"$gasrem_2906", %"$gasadd_2905"
  store i64 %"$consume_2910", i64* @_gasrem, align 8
  %"$gasrem_2911" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2912" = icmp ugt i64 1, %"$gasrem_2911"
  br i1 %"$gascmp_2912", label %"$out_of_gas_2913", label %"$have_gas_2914"

"$out_of_gas_2913":                               ; preds = %"$have_gas_2909"
  call void @_out_of_gas()
  br label %"$have_gas_2914"

"$have_gas_2914":                                 ; preds = %"$out_of_gas_2913", %"$have_gas_2909"
  %"$consume_2915" = sub i64 %"$gasrem_2911", 1
  store i64 %"$consume_2915", i64* @_gasrem, align 8
  %m2_size = alloca %Uint32, align 8
  %"$gasrem_2916" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2917" = icmp ugt i64 1, %"$gasrem_2916"
  br i1 %"$gascmp_2917", label %"$out_of_gas_2918", label %"$have_gas_2919"

"$out_of_gas_2918":                               ; preds = %"$have_gas_2914"
  call void @_out_of_gas()
  br label %"$have_gas_2919"

"$have_gas_2919":                                 ; preds = %"$out_of_gas_2918", %"$have_gas_2914"
  %"$consume_2920" = sub i64 %"$gasrem_2916", 1
  store i64 %"$consume_2920", i64* @_gasrem, align 8
  %"$m2_2921" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_2921_2922" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_2921" to i8*
  %"$size_call_2923" = call %Uint32 @_size(i8* %"$$m2_2921_2922")
  store %Uint32 %"$size_call_2923", %Uint32* %m2_size, align 4
  %"$gasrem_2924" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2925" = icmp ugt i64 1, %"$gasrem_2924"
  br i1 %"$gascmp_2925", label %"$out_of_gas_2926", label %"$have_gas_2927"

"$out_of_gas_2926":                               ; preds = %"$have_gas_2919"
  call void @_out_of_gas()
  br label %"$have_gas_2927"

"$have_gas_2927":                                 ; preds = %"$out_of_gas_2926", %"$have_gas_2919"
  %"$consume_2928" = sub i64 %"$gasrem_2924", 1
  store i64 %"$consume_2928", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_2929" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2930" = icmp ugt i64 1, %"$gasrem_2929"
  br i1 %"$gascmp_2930", label %"$out_of_gas_2931", label %"$have_gas_2932"

"$out_of_gas_2931":                               ; preds = %"$have_gas_2927"
  call void @_out_of_gas()
  br label %"$have_gas_2932"

"$have_gas_2932":                                 ; preds = %"$out_of_gas_2931", %"$have_gas_2927"
  %"$consume_2933" = sub i64 %"$gasrem_2929", 1
  store i64 %"$consume_2933", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_2934" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2935" = icmp ugt i64 1, %"$gasrem_2934"
  br i1 %"$gascmp_2935", label %"$out_of_gas_2936", label %"$have_gas_2937"

"$out_of_gas_2936":                               ; preds = %"$have_gas_2932"
  call void @_out_of_gas()
  br label %"$have_gas_2937"

"$have_gas_2937":                                 ; preds = %"$out_of_gas_2936", %"$have_gas_2932"
  %"$consume_2938" = sub i64 %"$gasrem_2934", 1
  store i64 %"$consume_2938", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  %"$gasrem_2939" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2940" = icmp ugt i64 4, %"$gasrem_2939"
  br i1 %"$gascmp_2940", label %"$out_of_gas_2941", label %"$have_gas_2942"

"$out_of_gas_2941":                               ; preds = %"$have_gas_2937"
  call void @_out_of_gas()
  br label %"$have_gas_2942"

"$have_gas_2942":                                 ; preds = %"$out_of_gas_2941", %"$have_gas_2937"
  %"$consume_2943" = sub i64 %"$gasrem_2939", 4
  store i64 %"$consume_2943", i64* @_gasrem, align 8
  %"$execptr_load_2944" = load i8*, i8** @_execptr, align 8
  %"$m2_size_2945" = load %Uint32, %Uint32* %m2_size, align 4
  %"$zero_2946" = load %Uint32, %Uint32* %zero, align 4
  %"$eq_call_2947" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_2944", %Uint32 %"$m2_size_2945", %Uint32 %"$zero_2946")
  store %TName_Bool* %"$eq_call_2947", %TName_Bool** %is_empty, align 8
  %"$gasrem_2949" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2950" = icmp ugt i64 2, %"$gasrem_2949"
  br i1 %"$gascmp_2950", label %"$out_of_gas_2951", label %"$have_gas_2952"

"$out_of_gas_2951":                               ; preds = %"$have_gas_2942"
  call void @_out_of_gas()
  br label %"$have_gas_2952"

"$have_gas_2952":                                 ; preds = %"$out_of_gas_2951", %"$have_gas_2942"
  %"$consume_2953" = sub i64 %"$gasrem_2949", 2
  store i64 %"$consume_2953", i64* @_gasrem, align 8
  %"$is_empty_2955" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_2956" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_2955", i32 0, i32 0
  %"$is_empty_tag_2957" = load i8, i8* %"$is_empty_tag_2956", align 1
  switch i8 %"$is_empty_tag_2957", label %"$empty_default_2958" [
    i8 0, label %"$True_2959"
    i8 1, label %"$False_2961"
  ]

"$True_2959":                                     ; preds = %"$have_gas_2952"
  %"$is_empty_2960" = bitcast %TName_Bool* %"$is_empty_2955" to %CName_True*
  br label %"$matchsucc_2954"

"$False_2961":                                    ; preds = %"$have_gas_2952"
  %"$is_empty_2962" = bitcast %TName_Bool* %"$is_empty_2955" to %CName_False*
  %"$gasrem_2963" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2964" = icmp ugt i64 1, %"$gasrem_2963"
  br i1 %"$gascmp_2964", label %"$out_of_gas_2965", label %"$have_gas_2966"

"$out_of_gas_2965":                               ; preds = %"$False_2961"
  call void @_out_of_gas()
  br label %"$have_gas_2966"

"$have_gas_2966":                                 ; preds = %"$out_of_gas_2965", %"$False_2961"
  %"$consume_2967" = sub i64 %"$gasrem_2963", 1
  store i64 %"$consume_2967", i64* @_gasrem, align 8
  %"$fail__origin_2968" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_2968", align 1
  %"$fail__sender_2969" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_2969", align 1
  %"$tname_2970" = load %String, %String* %tname, align 8
  call void @"$fail_210"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_2968", [20 x i8]* %"$fail__sender_2969", %String %"$tname_2970")
  br label %"$matchsucc_2954"

"$empty_default_2958":                            ; preds = %"$have_gas_2952"
  br label %"$matchsucc_2954"

"$matchsucc_2954":                                ; preds = %"$have_gas_2966", %"$True_2959", %"$empty_default_2958"
  %"$gasrem_2971" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2972" = icmp ugt i64 1, %"$gasrem_2971"
  br i1 %"$gascmp_2972", label %"$out_of_gas_2973", label %"$have_gas_2974"

"$out_of_gas_2973":                               ; preds = %"$matchsucc_2954"
  call void @_out_of_gas()
  br label %"$have_gas_2974"

"$have_gas_2974":                                 ; preds = %"$out_of_gas_2973", %"$matchsucc_2954"
  %"$consume_2975" = sub i64 %"$gasrem_2971", 1
  store i64 %"$consume_2975", i64* @_gasrem, align 8
  %e1 = alloca %Map_String_String*, align 8
  %"$gasrem_2976" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2977" = icmp ugt i64 1, %"$gasrem_2976"
  br i1 %"$gascmp_2977", label %"$out_of_gas_2978", label %"$have_gas_2979"

"$out_of_gas_2978":                               ; preds = %"$have_gas_2974"
  call void @_out_of_gas()
  br label %"$have_gas_2979"

"$have_gas_2979":                                 ; preds = %"$out_of_gas_2978", %"$have_gas_2974"
  %"$consume_2980" = sub i64 %"$gasrem_2976", 1
  store i64 %"$consume_2980", i64* @_gasrem, align 8
  %"$execptr_load_2981" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2982" = call i8* @_new_empty_map(i8* %"$execptr_load_2981")
  %"$_new_empty_map_2983" = bitcast i8* %"$_new_empty_map_call_2982" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_2983", %Map_String_String** %e1, align 8
  %"$gasrem_2984" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2985" = icmp ugt i64 1, %"$gasrem_2984"
  br i1 %"$gascmp_2985", label %"$out_of_gas_2986", label %"$have_gas_2987"

"$out_of_gas_2986":                               ; preds = %"$have_gas_2979"
  call void @_out_of_gas()
  br label %"$have_gas_2987"

"$have_gas_2987":                                 ; preds = %"$out_of_gas_2986", %"$have_gas_2979"
  %"$consume_2988" = sub i64 %"$gasrem_2984", 1
  store i64 %"$consume_2988", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_2989" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2990" = icmp ugt i64 1, %"$gasrem_2989"
  br i1 %"$gascmp_2990", label %"$out_of_gas_2991", label %"$have_gas_2992"

"$out_of_gas_2991":                               ; preds = %"$have_gas_2987"
  call void @_out_of_gas()
  br label %"$have_gas_2992"

"$have_gas_2992":                                 ; preds = %"$out_of_gas_2991", %"$have_gas_2987"
  %"$consume_2993" = sub i64 %"$gasrem_2989", 1
  store i64 %"$consume_2993", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2994", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$e1_2995" = load %Map_String_String*, %Map_String_String** %e1, align 8
  %"$$e1_2995_2996" = bitcast %Map_String_String* %"$e1_2995" to i8*
  %"$_literal_cost_call_2997" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_65", i8* %"$$e1_2995_2996")
  %"$gasadd_2998" = add i64 %"$_literal_cost_call_2997", 1
  %"$gasrem_2999" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3000" = icmp ugt i64 %"$gasadd_2998", %"$gasrem_2999"
  br i1 %"$gascmp_3000", label %"$out_of_gas_3001", label %"$have_gas_3002"

"$out_of_gas_3001":                               ; preds = %"$have_gas_2992"
  call void @_out_of_gas()
  br label %"$have_gas_3002"

"$have_gas_3002":                                 ; preds = %"$out_of_gas_3001", %"$have_gas_2992"
  %"$consume_3003" = sub i64 %"$gasrem_2999", %"$gasadd_2998"
  store i64 %"$consume_3003", i64* @_gasrem, align 8
  %"$indices_buf_3004_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3004_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3004_salloc_load", i64 16)
  %"$indices_buf_3004_salloc" = bitcast i8* %"$indices_buf_3004_salloc_salloc" to [16 x i8]*
  %"$indices_buf_3004" = bitcast [16 x i8]* %"$indices_buf_3004_salloc" to i8*
  %"$key1a_3005" = load %String, %String* %key1a, align 8
  %"$indices_gep_3006" = getelementptr i8, i8* %"$indices_buf_3004", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3006" to %String*
  store %String %"$key1a_3005", %String* %indices_cast, align 8
  %"$execptr_load_3007" = load i8*, i8** @_execptr, align 8
  %"$e1_3009" = load %Map_String_String*, %Map_String_String** %e1, align 8
  %"$update_value_3010" = bitcast %Map_String_String* %"$e1_3009" to i8*
  call void @_update_field(i8* %"$execptr_load_3007", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_3008", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 1, i8* %"$indices_buf_3004", i8* %"$update_value_3010")
  ret void
}

define void @t12(i8* %0) {
entry:
  %"$_amount_3012" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3013" = bitcast i8* %"$_amount_3012" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3013", align 8
  %"$_origin_3014" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3015" = bitcast i8* %"$_origin_3014" to [20 x i8]*
  %"$_sender_3016" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3017" = bitcast i8* %"$_sender_3016" to [20 x i8]*
  call void @"$t12_2881"(%Uint128 %_amount, [20 x i8]* %"$_origin_3015", [20 x i8]* %"$_sender_3017")
  ret void
}

define internal void @"$t13_3018"(%Uint128 %_amount, [20 x i8]* %"$_origin_3019", [20 x i8]* %"$_sender_3020") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3019", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3020", align 1
  %"$gasrem_3021" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3022" = icmp ugt i64 1, %"$gasrem_3021"
  br i1 %"$gascmp_3022", label %"$out_of_gas_3023", label %"$have_gas_3024"

"$out_of_gas_3023":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3024"

"$have_gas_3024":                                 ; preds = %"$out_of_gas_3023", %entry
  %"$consume_3025" = sub i64 %"$gasrem_3021", 1
  store i64 %"$consume_3025", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_3026" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3027" = icmp ugt i64 1, %"$gasrem_3026"
  br i1 %"$gascmp_3027", label %"$out_of_gas_3028", label %"$have_gas_3029"

"$out_of_gas_3028":                               ; preds = %"$have_gas_3024"
  call void @_out_of_gas()
  br label %"$have_gas_3029"

"$have_gas_3029":                                 ; preds = %"$out_of_gas_3028", %"$have_gas_3024"
  %"$consume_3030" = sub i64 %"$gasrem_3026", 1
  store i64 %"$consume_3030", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3031", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %"$gasrem_3032" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3033" = icmp ugt i64 1, %"$gasrem_3032"
  br i1 %"$gascmp_3033", label %"$out_of_gas_3034", label %"$have_gas_3035"

"$out_of_gas_3034":                               ; preds = %"$have_gas_3029"
  call void @_out_of_gas()
  br label %"$have_gas_3035"

"$have_gas_3035":                                 ; preds = %"$out_of_gas_3034", %"$have_gas_3029"
  %"$consume_3036" = sub i64 %"$gasrem_3032", 1
  store i64 %"$consume_3036", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_3037" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3038" = icmp ugt i64 1, %"$gasrem_3037"
  br i1 %"$gascmp_3038", label %"$out_of_gas_3039", label %"$have_gas_3040"

"$out_of_gas_3039":                               ; preds = %"$have_gas_3035"
  call void @_out_of_gas()
  br label %"$have_gas_3040"

"$have_gas_3040":                                 ; preds = %"$out_of_gas_3039", %"$have_gas_3035"
  %"$consume_3041" = sub i64 %"$gasrem_3037", 1
  store i64 %"$consume_3041", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3042", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %mo = alloca %"TName_Option_Map_(String)_(String)"*, align 8
  %"$indices_buf_3043_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3043_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3043_salloc_load", i64 16)
  %"$indices_buf_3043_salloc" = bitcast i8* %"$indices_buf_3043_salloc_salloc" to [16 x i8]*
  %"$indices_buf_3043" = bitcast [16 x i8]* %"$indices_buf_3043_salloc" to i8*
  %"$key1a_3044" = load %String, %String* %key1a, align 8
  %"$indices_gep_3045" = getelementptr i8, i8* %"$indices_buf_3043", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3045" to %String*
  store %String %"$key1a_3044", %String* %indices_cast, align 8
  %"$execptr_load_3047" = load i8*, i8** @_execptr, align 8
  %"$mo_call_3048" = call i8* @_fetch_field(i8* %"$execptr_load_3047", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_3046", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 1, i8* %"$indices_buf_3043", i32 1)
  %"$mo_3049" = bitcast i8* %"$mo_call_3048" to %"TName_Option_Map_(String)_(String)"*
  store %"TName_Option_Map_(String)_(String)"* %"$mo_3049", %"TName_Option_Map_(String)_(String)"** %mo, align 8
  %"$mo_3050" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %mo, align 8
  %"$$mo_3050_3051" = bitcast %"TName_Option_Map_(String)_(String)"* %"$mo_3050" to i8*
  %"$_literal_cost_call_3052" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(String)_59", i8* %"$$mo_3050_3051")
  %"$gasadd_3053" = add i64 %"$_literal_cost_call_3052", 0
  %"$gasadd_3054" = add i64 %"$gasadd_3053", 1
  %"$gasrem_3055" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3056" = icmp ugt i64 %"$gasadd_3054", %"$gasrem_3055"
  br i1 %"$gascmp_3056", label %"$out_of_gas_3057", label %"$have_gas_3058"

"$out_of_gas_3057":                               ; preds = %"$have_gas_3040"
  call void @_out_of_gas()
  br label %"$have_gas_3058"

"$have_gas_3058":                                 ; preds = %"$out_of_gas_3057", %"$have_gas_3040"
  %"$consume_3059" = sub i64 %"$gasrem_3055", %"$gasadd_3054"
  store i64 %"$consume_3059", i64* @_gasrem, align 8
  %"$gasrem_3060" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3061" = icmp ugt i64 2, %"$gasrem_3060"
  br i1 %"$gascmp_3061", label %"$out_of_gas_3062", label %"$have_gas_3063"

"$out_of_gas_3062":                               ; preds = %"$have_gas_3058"
  call void @_out_of_gas()
  br label %"$have_gas_3063"

"$have_gas_3063":                                 ; preds = %"$out_of_gas_3062", %"$have_gas_3058"
  %"$consume_3064" = sub i64 %"$gasrem_3060", 2
  store i64 %"$consume_3064", i64* @_gasrem, align 8
  %"$mo_3066" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %mo, align 8
  %"$mo_tag_3067" = getelementptr inbounds %"TName_Option_Map_(String)_(String)", %"TName_Option_Map_(String)_(String)"* %"$mo_3066", i32 0, i32 0
  %"$mo_tag_3068" = load i8, i8* %"$mo_tag_3067", align 1
  switch i8 %"$mo_tag_3068", label %"$empty_default_3069" [
    i8 0, label %"$Some_3070"
    i8 1, label %"$None_3146"
  ]

"$Some_3070":                                     ; preds = %"$have_gas_3063"
  %"$mo_3071" = bitcast %"TName_Option_Map_(String)_(String)"* %"$mo_3066" to %"CName_Some_Map_(String)_(String)"*
  %"$m_gep_3072" = getelementptr inbounds %"CName_Some_Map_(String)_(String)", %"CName_Some_Map_(String)_(String)"* %"$mo_3071", i32 0, i32 1
  %"$m_load_3073" = load %Map_String_String*, %Map_String_String** %"$m_gep_3072", align 8
  %m = alloca %Map_String_String*, align 8
  store %Map_String_String* %"$m_load_3073", %Map_String_String** %m, align 8
  %"$gasrem_3074" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3075" = icmp ugt i64 1, %"$gasrem_3074"
  br i1 %"$gascmp_3075", label %"$out_of_gas_3076", label %"$have_gas_3077"

"$out_of_gas_3076":                               ; preds = %"$Some_3070"
  call void @_out_of_gas()
  br label %"$have_gas_3077"

"$have_gas_3077":                                 ; preds = %"$out_of_gas_3076", %"$Some_3070"
  %"$consume_3078" = sub i64 %"$gasrem_3074", 1
  store i64 %"$consume_3078", i64* @_gasrem, align 8
  %m_size = alloca %Uint32, align 8
  %"$gasrem_3079" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3080" = icmp ugt i64 1, %"$gasrem_3079"
  br i1 %"$gascmp_3080", label %"$out_of_gas_3081", label %"$have_gas_3082"

"$out_of_gas_3081":                               ; preds = %"$have_gas_3077"
  call void @_out_of_gas()
  br label %"$have_gas_3082"

"$have_gas_3082":                                 ; preds = %"$out_of_gas_3081", %"$have_gas_3077"
  %"$consume_3083" = sub i64 %"$gasrem_3079", 1
  store i64 %"$consume_3083", i64* @_gasrem, align 8
  %"$m_3084" = load %Map_String_String*, %Map_String_String** %m, align 8
  %"$$m_3084_3085" = bitcast %Map_String_String* %"$m_3084" to i8*
  %"$size_call_3086" = call %Uint32 @_size(i8* %"$$m_3084_3085")
  store %Uint32 %"$size_call_3086", %Uint32* %m_size, align 4
  %"$gasrem_3087" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3088" = icmp ugt i64 1, %"$gasrem_3087"
  br i1 %"$gascmp_3088", label %"$out_of_gas_3089", label %"$have_gas_3090"

"$out_of_gas_3089":                               ; preds = %"$have_gas_3082"
  call void @_out_of_gas()
  br label %"$have_gas_3090"

"$have_gas_3090":                                 ; preds = %"$out_of_gas_3089", %"$have_gas_3082"
  %"$consume_3091" = sub i64 %"$gasrem_3087", 1
  store i64 %"$consume_3091", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_3092" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3093" = icmp ugt i64 1, %"$gasrem_3092"
  br i1 %"$gascmp_3093", label %"$out_of_gas_3094", label %"$have_gas_3095"

"$out_of_gas_3094":                               ; preds = %"$have_gas_3090"
  call void @_out_of_gas()
  br label %"$have_gas_3095"

"$have_gas_3095":                                 ; preds = %"$out_of_gas_3094", %"$have_gas_3090"
  %"$consume_3096" = sub i64 %"$gasrem_3092", 1
  store i64 %"$consume_3096", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_3097" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3098" = icmp ugt i64 1, %"$gasrem_3097"
  br i1 %"$gascmp_3098", label %"$out_of_gas_3099", label %"$have_gas_3100"

"$out_of_gas_3099":                               ; preds = %"$have_gas_3095"
  call void @_out_of_gas()
  br label %"$have_gas_3100"

"$have_gas_3100":                                 ; preds = %"$out_of_gas_3099", %"$have_gas_3095"
  %"$consume_3101" = sub i64 %"$gasrem_3097", 1
  store i64 %"$consume_3101", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  %"$gasrem_3102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3103" = icmp ugt i64 4, %"$gasrem_3102"
  br i1 %"$gascmp_3103", label %"$out_of_gas_3104", label %"$have_gas_3105"

"$out_of_gas_3104":                               ; preds = %"$have_gas_3100"
  call void @_out_of_gas()
  br label %"$have_gas_3105"

"$have_gas_3105":                                 ; preds = %"$out_of_gas_3104", %"$have_gas_3100"
  %"$consume_3106" = sub i64 %"$gasrem_3102", 4
  store i64 %"$consume_3106", i64* @_gasrem, align 8
  %"$execptr_load_3107" = load i8*, i8** @_execptr, align 8
  %"$m_size_3108" = load %Uint32, %Uint32* %m_size, align 4
  %"$zero_3109" = load %Uint32, %Uint32* %zero, align 4
  %"$eq_call_3110" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3107", %Uint32 %"$m_size_3108", %Uint32 %"$zero_3109")
  store %TName_Bool* %"$eq_call_3110", %TName_Bool** %is_empty, align 8
  %"$gasrem_3112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3113" = icmp ugt i64 2, %"$gasrem_3112"
  br i1 %"$gascmp_3113", label %"$out_of_gas_3114", label %"$have_gas_3115"

"$out_of_gas_3114":                               ; preds = %"$have_gas_3105"
  call void @_out_of_gas()
  br label %"$have_gas_3115"

"$have_gas_3115":                                 ; preds = %"$out_of_gas_3114", %"$have_gas_3105"
  %"$consume_3116" = sub i64 %"$gasrem_3112", 2
  store i64 %"$consume_3116", i64* @_gasrem, align 8
  %"$is_empty_3118" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_3119" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_3118", i32 0, i32 0
  %"$is_empty_tag_3120" = load i8, i8* %"$is_empty_tag_3119", align 1
  switch i8 %"$is_empty_tag_3120", label %"$empty_default_3121" [
    i8 0, label %"$True_3122"
    i8 1, label %"$False_3124"
  ]

"$True_3122":                                     ; preds = %"$have_gas_3115"
  %"$is_empty_3123" = bitcast %TName_Bool* %"$is_empty_3118" to %CName_True*
  br label %"$matchsucc_3117"

"$False_3124":                                    ; preds = %"$have_gas_3115"
  %"$is_empty_3125" = bitcast %TName_Bool* %"$is_empty_3118" to %CName_False*
  %"$gasrem_3126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3127" = icmp ugt i64 1, %"$gasrem_3126"
  br i1 %"$gascmp_3127", label %"$out_of_gas_3128", label %"$have_gas_3129"

"$out_of_gas_3128":                               ; preds = %"$False_3124"
  call void @_out_of_gas()
  br label %"$have_gas_3129"

"$have_gas_3129":                                 ; preds = %"$out_of_gas_3128", %"$False_3124"
  %"$consume_3130" = sub i64 %"$gasrem_3126", 1
  store i64 %"$consume_3130", i64* @_gasrem, align 8
  %msg = alloca %String, align 8
  %"$gasrem_3131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3132" = icmp ugt i64 1, %"$gasrem_3131"
  br i1 %"$gascmp_3132", label %"$out_of_gas_3133", label %"$have_gas_3134"

"$out_of_gas_3133":                               ; preds = %"$have_gas_3129"
  call void @_out_of_gas()
  br label %"$have_gas_3134"

"$have_gas_3134":                                 ; preds = %"$out_of_gas_3133", %"$have_gas_3129"
  %"$consume_3135" = sub i64 %"$gasrem_3131", 1
  store i64 %"$consume_3135", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @"$stringlit_3136", i32 0, i32 0), i32 29 }, %String* %msg, align 8
  %"$gasrem_3137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3138" = icmp ugt i64 1, %"$gasrem_3137"
  br i1 %"$gascmp_3138", label %"$out_of_gas_3139", label %"$have_gas_3140"

"$out_of_gas_3139":                               ; preds = %"$have_gas_3134"
  call void @_out_of_gas()
  br label %"$have_gas_3140"

"$have_gas_3140":                                 ; preds = %"$out_of_gas_3139", %"$have_gas_3134"
  %"$consume_3141" = sub i64 %"$gasrem_3137", 1
  store i64 %"$consume_3141", i64* @_gasrem, align 8
  %"$fail_msg__origin_3142" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3142", align 1
  %"$fail_msg__sender_3143" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3143", align 1
  %"$tname_3144" = load %String, %String* %tname, align 8
  %"$msg_3145" = load %String, %String* %msg, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3142", [20 x i8]* %"$fail_msg__sender_3143", %String %"$tname_3144", %String %"$msg_3145")
  br label %"$matchsucc_3117"

"$empty_default_3121":                            ; preds = %"$have_gas_3115"
  br label %"$matchsucc_3117"

"$matchsucc_3117":                                ; preds = %"$have_gas_3140", %"$True_3122", %"$empty_default_3121"
  br label %"$matchsucc_3065"

"$None_3146":                                     ; preds = %"$have_gas_3063"
  %"$mo_3147" = bitcast %"TName_Option_Map_(String)_(String)"* %"$mo_3066" to %"CName_None_Map_(String)_(String)"*
  %"$gasrem_3148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3149" = icmp ugt i64 1, %"$gasrem_3148"
  br i1 %"$gascmp_3149", label %"$out_of_gas_3150", label %"$have_gas_3151"

"$out_of_gas_3150":                               ; preds = %"$None_3146"
  call void @_out_of_gas()
  br label %"$have_gas_3151"

"$have_gas_3151":                                 ; preds = %"$out_of_gas_3150", %"$None_3146"
  %"$consume_3152" = sub i64 %"$gasrem_3148", 1
  store i64 %"$consume_3152", i64* @_gasrem, align 8
  %"$fail__origin_3153" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_3153", align 1
  %"$fail__sender_3154" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_3154", align 1
  %"$tname_3155" = load %String, %String* %tname, align 8
  call void @"$fail_210"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_3153", [20 x i8]* %"$fail__sender_3154", %String %"$tname_3155")
  br label %"$matchsucc_3065"

"$empty_default_3069":                            ; preds = %"$have_gas_3063"
  br label %"$matchsucc_3065"

"$matchsucc_3065":                                ; preds = %"$have_gas_3151", %"$matchsucc_3117", %"$empty_default_3069"
  %"$gasrem_3156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3157" = icmp ugt i64 1, %"$gasrem_3156"
  br i1 %"$gascmp_3157", label %"$out_of_gas_3158", label %"$have_gas_3159"

"$out_of_gas_3158":                               ; preds = %"$matchsucc_3065"
  call void @_out_of_gas()
  br label %"$have_gas_3159"

"$have_gas_3159":                                 ; preds = %"$out_of_gas_3158", %"$matchsucc_3065"
  %"$consume_3160" = sub i64 %"$gasrem_3156", 1
  store i64 %"$consume_3160", i64* @_gasrem, align 8
  %m3 = alloca %Map_String_String*, align 8
  %"$gasrem_3161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3162" = icmp ugt i64 1, %"$gasrem_3161"
  br i1 %"$gascmp_3162", label %"$out_of_gas_3163", label %"$have_gas_3164"

"$out_of_gas_3163":                               ; preds = %"$have_gas_3159"
  call void @_out_of_gas()
  br label %"$have_gas_3164"

"$have_gas_3164":                                 ; preds = %"$out_of_gas_3163", %"$have_gas_3159"
  %"$consume_3165" = sub i64 %"$gasrem_3161", 1
  store i64 %"$consume_3165", i64* @_gasrem, align 8
  %"$execptr_load_3166" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3167" = call i8* @_new_empty_map(i8* %"$execptr_load_3166")
  %"$_new_empty_map_3168" = bitcast i8* %"$_new_empty_map_call_3167" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_3168", %Map_String_String** %m3, align 8
  %"$gasrem_3169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3170" = icmp ugt i64 1, %"$gasrem_3169"
  br i1 %"$gascmp_3170", label %"$out_of_gas_3171", label %"$have_gas_3172"

"$out_of_gas_3171":                               ; preds = %"$have_gas_3164"
  call void @_out_of_gas()
  br label %"$have_gas_3172"

"$have_gas_3172":                                 ; preds = %"$out_of_gas_3171", %"$have_gas_3164"
  %"$consume_3173" = sub i64 %"$gasrem_3169", 1
  store i64 %"$consume_3173", i64* @_gasrem, align 8
  %m2 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_3174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3175" = icmp ugt i64 1, %"$gasrem_3174"
  br i1 %"$gascmp_3175", label %"$out_of_gas_3176", label %"$have_gas_3177"

"$out_of_gas_3176":                               ; preds = %"$have_gas_3172"
  call void @_out_of_gas()
  br label %"$have_gas_3177"

"$have_gas_3177":                                 ; preds = %"$out_of_gas_3176", %"$have_gas_3172"
  %"$consume_3178" = sub i64 %"$gasrem_3174", 1
  store i64 %"$consume_3178", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_3179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3180" = icmp ugt i64 1, %"$gasrem_3179"
  br i1 %"$gascmp_3180", label %"$out_of_gas_3181", label %"$have_gas_3182"

"$out_of_gas_3181":                               ; preds = %"$have_gas_3177"
  call void @_out_of_gas()
  br label %"$have_gas_3182"

"$have_gas_3182":                                 ; preds = %"$out_of_gas_3181", %"$have_gas_3177"
  %"$consume_3183" = sub i64 %"$gasrem_3179", 1
  store i64 %"$consume_3183", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3184", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %"$gasrem_3185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3186" = icmp ugt i64 1, %"$gasrem_3185"
  br i1 %"$gascmp_3186", label %"$out_of_gas_3187", label %"$have_gas_3188"

"$out_of_gas_3187":                               ; preds = %"$have_gas_3182"
  call void @_out_of_gas()
  br label %"$have_gas_3188"

"$have_gas_3188":                                 ; preds = %"$out_of_gas_3187", %"$have_gas_3182"
  %"$consume_3189" = sub i64 %"$gasrem_3185", 1
  store i64 %"$consume_3189", i64* @_gasrem, align 8
  %e = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_3190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3191" = icmp ugt i64 1, %"$gasrem_3190"
  br i1 %"$gascmp_3191", label %"$out_of_gas_3192", label %"$have_gas_3193"

"$out_of_gas_3192":                               ; preds = %"$have_gas_3188"
  call void @_out_of_gas()
  br label %"$have_gas_3193"

"$have_gas_3193":                                 ; preds = %"$out_of_gas_3192", %"$have_gas_3188"
  %"$consume_3194" = sub i64 %"$gasrem_3190", 1
  store i64 %"$consume_3194", i64* @_gasrem, align 8
  %"$execptr_load_3195" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3196" = call i8* @_new_empty_map(i8* %"$execptr_load_3195")
  %"$_new_empty_map_3197" = bitcast i8* %"$_new_empty_map_call_3196" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_3197", %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$e_3198" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$$e_3198_3199" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_3198" to i8*
  %"$_lengthof_call_3200" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_64", i8* %"$$e_3198_3199")
  %"$gasadd_3201" = add i64 1, %"$_lengthof_call_3200"
  %"$gasrem_3202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3203" = icmp ugt i64 %"$gasadd_3201", %"$gasrem_3202"
  br i1 %"$gascmp_3203", label %"$out_of_gas_3204", label %"$have_gas_3205"

"$out_of_gas_3204":                               ; preds = %"$have_gas_3193"
  call void @_out_of_gas()
  br label %"$have_gas_3205"

"$have_gas_3205":                                 ; preds = %"$out_of_gas_3204", %"$have_gas_3193"
  %"$consume_3206" = sub i64 %"$gasrem_3202", %"$gasadd_3201"
  store i64 %"$consume_3206", i64* @_gasrem, align 8
  %"$execptr_load_3207" = load i8*, i8** @_execptr, align 8
  %"$e_3208" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$$e_3208_3209" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_3208" to i8*
  %"$put_key2a_3210" = alloca %String, align 8
  %"$key2a_3211" = load %String, %String* %key2a, align 8
  store %String %"$key2a_3211", %String* %"$put_key2a_3210", align 8
  %"$$put_key2a_3210_3212" = bitcast %String* %"$put_key2a_3210" to i8*
  %"$m3_3213" = load %Map_String_String*, %Map_String_String** %m3, align 8
  %"$$m3_3213_3214" = bitcast %Map_String_String* %"$m3_3213" to i8*
  %"$put_call_3215" = call i8* @_put(i8* %"$execptr_load_3207", %_TyDescrTy_Typ* @"$TyDescr_Map_64", i8* %"$$e_3208_3209", i8* %"$$put_key2a_3210_3212", i8* %"$$m3_3213_3214")
  %"$put_3216" = bitcast i8* %"$put_call_3215" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$put_3216", %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$gasrem_3217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3218" = icmp ugt i64 1, %"$gasrem_3217"
  br i1 %"$gascmp_3218", label %"$out_of_gas_3219", label %"$have_gas_3220"

"$out_of_gas_3219":                               ; preds = %"$have_gas_3205"
  call void @_out_of_gas()
  br label %"$have_gas_3220"

"$have_gas_3220":                                 ; preds = %"$out_of_gas_3219", %"$have_gas_3205"
  %"$consume_3221" = sub i64 %"$gasrem_3217", 1
  store i64 %"$consume_3221", i64* @_gasrem, align 8
  %"$m3_12" = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*, align 8
  %"$gasrem_3222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3223" = icmp ugt i64 1, %"$gasrem_3222"
  br i1 %"$gascmp_3223", label %"$out_of_gas_3224", label %"$have_gas_3225"

"$out_of_gas_3224":                               ; preds = %"$have_gas_3220"
  call void @_out_of_gas()
  br label %"$have_gas_3225"

"$have_gas_3225":                                 ; preds = %"$out_of_gas_3224", %"$have_gas_3220"
  %"$consume_3226" = sub i64 %"$gasrem_3222", 1
  store i64 %"$consume_3226", i64* @_gasrem, align 8
  %"$e_11" = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*, align 8
  %"$gasrem_3227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3228" = icmp ugt i64 1, %"$gasrem_3227"
  br i1 %"$gascmp_3228", label %"$out_of_gas_3229", label %"$have_gas_3230"

"$out_of_gas_3229":                               ; preds = %"$have_gas_3225"
  call void @_out_of_gas()
  br label %"$have_gas_3230"

"$have_gas_3230":                                 ; preds = %"$out_of_gas_3229", %"$have_gas_3225"
  %"$consume_3231" = sub i64 %"$gasrem_3227", 1
  store i64 %"$consume_3231", i64* @_gasrem, align 8
  %"$execptr_load_3232" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3233" = call i8* @_new_empty_map(i8* %"$execptr_load_3232")
  %"$_new_empty_map_3234" = bitcast i8* %"$_new_empty_map_call_3233" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$_new_empty_map_3234", %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$e_11", align 8
  %"$$e_11_3235" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$e_11", align 8
  %"$$$e_11_3235_3236" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$e_11_3235" to i8*
  %"$_lengthof_call_3237" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_63", i8* %"$$$e_11_3235_3236")
  %"$gasadd_3238" = add i64 1, %"$_lengthof_call_3237"
  %"$gasrem_3239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3240" = icmp ugt i64 %"$gasadd_3238", %"$gasrem_3239"
  br i1 %"$gascmp_3240", label %"$out_of_gas_3241", label %"$have_gas_3242"

"$out_of_gas_3241":                               ; preds = %"$have_gas_3230"
  call void @_out_of_gas()
  br label %"$have_gas_3242"

"$have_gas_3242":                                 ; preds = %"$out_of_gas_3241", %"$have_gas_3230"
  %"$consume_3243" = sub i64 %"$gasrem_3239", %"$gasadd_3238"
  store i64 %"$consume_3243", i64* @_gasrem, align 8
  %"$execptr_load_3244" = load i8*, i8** @_execptr, align 8
  %"$$e_11_3245" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$e_11", align 8
  %"$$$e_11_3245_3246" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$e_11_3245" to i8*
  %"$put_key1a_3247" = alloca %String, align 8
  %"$key1a_3248" = load %String, %String* %key1a, align 8
  store %String %"$key1a_3248", %String* %"$put_key1a_3247", align 8
  %"$$put_key1a_3247_3249" = bitcast %String* %"$put_key1a_3247" to i8*
  %"$m2_3250" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_3250_3251" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_3250" to i8*
  %"$put_call_3252" = call i8* @_put(i8* %"$execptr_load_3244", %_TyDescrTy_Typ* @"$TyDescr_Map_63", i8* %"$$$e_11_3245_3246", i8* %"$$put_key1a_3247_3249", i8* %"$$m2_3250_3251")
  %"$put_3253" = bitcast i8* %"$put_call_3252" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$put_3253", %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$m3_12", align 8
  %"$$m3_12_3254" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$m3_12", align 8
  %"$$$m3_12_3254_3255" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$m3_12_3254" to i8*
  %"$_literal_cost_call_3256" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_63", i8* %"$$$m3_12_3254_3255")
  %"$gasrem_3257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3258" = icmp ugt i64 %"$_literal_cost_call_3256", %"$gasrem_3257"
  br i1 %"$gascmp_3258", label %"$out_of_gas_3259", label %"$have_gas_3260"

"$out_of_gas_3259":                               ; preds = %"$have_gas_3242"
  call void @_out_of_gas()
  br label %"$have_gas_3260"

"$have_gas_3260":                                 ; preds = %"$out_of_gas_3259", %"$have_gas_3242"
  %"$consume_3261" = sub i64 %"$gasrem_3257", %"$_literal_cost_call_3256"
  store i64 %"$consume_3261", i64* @_gasrem, align 8
  %"$execptr_load_3262" = load i8*, i8** @_execptr, align 8
  %"$$m3_12_3264" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$m3_12", align 8
  %"$update_value_3265" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$m3_12_3264" to i8*
  call void @_update_field(i8* %"$execptr_load_3262", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_3263", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_63", i32 0, i8* null, i8* %"$update_value_3265")
  ret void
}

define void @t13(i8* %0) {
entry:
  %"$_amount_3267" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3268" = bitcast i8* %"$_amount_3267" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3268", align 8
  %"$_origin_3269" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3270" = bitcast i8* %"$_origin_3269" to [20 x i8]*
  %"$_sender_3271" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3272" = bitcast i8* %"$_sender_3271" to [20 x i8]*
  call void @"$t13_3018"(%Uint128 %_amount, [20 x i8]* %"$_origin_3270", [20 x i8]* %"$_sender_3272")
  ret void
}

define internal void @"$t14_3273"(%Uint128 %_amount, [20 x i8]* %"$_origin_3274", [20 x i8]* %"$_sender_3275") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3274", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3275", align 1
  %"$gasrem_3276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3277" = icmp ugt i64 1, %"$gasrem_3276"
  br i1 %"$gascmp_3277", label %"$out_of_gas_3278", label %"$have_gas_3279"

"$out_of_gas_3278":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3279"

"$have_gas_3279":                                 ; preds = %"$out_of_gas_3278", %entry
  %"$consume_3280" = sub i64 %"$gasrem_3276", 1
  store i64 %"$consume_3280", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_3281" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3282" = icmp ugt i64 1, %"$gasrem_3281"
  br i1 %"$gascmp_3282", label %"$out_of_gas_3283", label %"$have_gas_3284"

"$out_of_gas_3283":                               ; preds = %"$have_gas_3279"
  call void @_out_of_gas()
  br label %"$have_gas_3284"

"$have_gas_3284":                                 ; preds = %"$out_of_gas_3283", %"$have_gas_3279"
  %"$consume_3285" = sub i64 %"$gasrem_3281", 1
  store i64 %"$consume_3285", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3286", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %m3 = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*, align 8
  %"$execptr_load_3288" = load i8*, i8** @_execptr, align 8
  %"$m3_call_3289" = call i8* @_fetch_field(i8* %"$execptr_load_3288", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_3287", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_63", i32 0, i8* null, i32 1)
  %"$m3_3290" = bitcast i8* %"$m3_call_3289" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3290", %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$m3_3291" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3291_3292" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3291" to i8*
  %"$_literal_cost_call_3293" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_63", i8* %"$$m3_3291_3292")
  %"$m3_3294" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3294_3295" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3294" to i8*
  %"$_mapsortcost_call_3296" = call i64 @_mapsortcost(i8* %"$$m3_3294_3295")
  %"$gasadd_3297" = add i64 %"$_literal_cost_call_3293", %"$_mapsortcost_call_3296"
  %"$gasrem_3298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3299" = icmp ugt i64 %"$gasadd_3297", %"$gasrem_3298"
  br i1 %"$gascmp_3299", label %"$out_of_gas_3300", label %"$have_gas_3301"

"$out_of_gas_3300":                               ; preds = %"$have_gas_3284"
  call void @_out_of_gas()
  br label %"$have_gas_3301"

"$have_gas_3301":                                 ; preds = %"$out_of_gas_3300", %"$have_gas_3284"
  %"$consume_3302" = sub i64 %"$gasrem_3298", %"$gasadd_3297"
  store i64 %"$consume_3302", i64* @_gasrem, align 8
  %"$gasrem_3303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3304" = icmp ugt i64 1, %"$gasrem_3303"
  br i1 %"$gascmp_3304", label %"$out_of_gas_3305", label %"$have_gas_3306"

"$out_of_gas_3305":                               ; preds = %"$have_gas_3301"
  call void @_out_of_gas()
  br label %"$have_gas_3306"

"$have_gas_3306":                                 ; preds = %"$out_of_gas_3305", %"$have_gas_3301"
  %"$consume_3307" = sub i64 %"$gasrem_3303", 1
  store i64 %"$consume_3307", i64* @_gasrem, align 8
  %m3_size = alloca %Uint32, align 8
  %"$gasrem_3308" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3309" = icmp ugt i64 1, %"$gasrem_3308"
  br i1 %"$gascmp_3309", label %"$out_of_gas_3310", label %"$have_gas_3311"

"$out_of_gas_3310":                               ; preds = %"$have_gas_3306"
  call void @_out_of_gas()
  br label %"$have_gas_3311"

"$have_gas_3311":                                 ; preds = %"$out_of_gas_3310", %"$have_gas_3306"
  %"$consume_3312" = sub i64 %"$gasrem_3308", 1
  store i64 %"$consume_3312", i64* @_gasrem, align 8
  %"$m3_3313" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3313_3314" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3313" to i8*
  %"$size_call_3315" = call %Uint32 @_size(i8* %"$$m3_3313_3314")
  store %Uint32 %"$size_call_3315", %Uint32* %m3_size, align 4
  %"$gasrem_3316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3317" = icmp ugt i64 1, %"$gasrem_3316"
  br i1 %"$gascmp_3317", label %"$out_of_gas_3318", label %"$have_gas_3319"

"$out_of_gas_3318":                               ; preds = %"$have_gas_3311"
  call void @_out_of_gas()
  br label %"$have_gas_3319"

"$have_gas_3319":                                 ; preds = %"$out_of_gas_3318", %"$have_gas_3311"
  %"$consume_3320" = sub i64 %"$gasrem_3316", 1
  store i64 %"$consume_3320", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_3321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3322" = icmp ugt i64 1, %"$gasrem_3321"
  br i1 %"$gascmp_3322", label %"$out_of_gas_3323", label %"$have_gas_3324"

"$out_of_gas_3323":                               ; preds = %"$have_gas_3319"
  call void @_out_of_gas()
  br label %"$have_gas_3324"

"$have_gas_3324":                                 ; preds = %"$out_of_gas_3323", %"$have_gas_3319"
  %"$consume_3325" = sub i64 %"$gasrem_3321", 1
  store i64 %"$consume_3325", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4
  %"$gasrem_3326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3327" = icmp ugt i64 1, %"$gasrem_3326"
  br i1 %"$gascmp_3327", label %"$out_of_gas_3328", label %"$have_gas_3329"

"$out_of_gas_3328":                               ; preds = %"$have_gas_3324"
  call void @_out_of_gas()
  br label %"$have_gas_3329"

"$have_gas_3329":                                 ; preds = %"$out_of_gas_3328", %"$have_gas_3324"
  %"$consume_3330" = sub i64 %"$gasrem_3326", 1
  store i64 %"$consume_3330", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  %"$gasrem_3331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3332" = icmp ugt i64 4, %"$gasrem_3331"
  br i1 %"$gascmp_3332", label %"$out_of_gas_3333", label %"$have_gas_3334"

"$out_of_gas_3333":                               ; preds = %"$have_gas_3329"
  call void @_out_of_gas()
  br label %"$have_gas_3334"

"$have_gas_3334":                                 ; preds = %"$out_of_gas_3333", %"$have_gas_3329"
  %"$consume_3335" = sub i64 %"$gasrem_3331", 4
  store i64 %"$consume_3335", i64* @_gasrem, align 8
  %"$execptr_load_3336" = load i8*, i8** @_execptr, align 8
  %"$m3_size_3337" = load %Uint32, %Uint32* %m3_size, align 4
  %"$one_3338" = load %Uint32, %Uint32* %one, align 4
  %"$eq_call_3339" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3336", %Uint32 %"$m3_size_3337", %Uint32 %"$one_3338")
  store %TName_Bool* %"$eq_call_3339", %TName_Bool** %is_empty, align 8
  %"$gasrem_3341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3342" = icmp ugt i64 2, %"$gasrem_3341"
  br i1 %"$gascmp_3342", label %"$out_of_gas_3343", label %"$have_gas_3344"

"$out_of_gas_3343":                               ; preds = %"$have_gas_3334"
  call void @_out_of_gas()
  br label %"$have_gas_3344"

"$have_gas_3344":                                 ; preds = %"$out_of_gas_3343", %"$have_gas_3334"
  %"$consume_3345" = sub i64 %"$gasrem_3341", 2
  store i64 %"$consume_3345", i64* @_gasrem, align 8
  %"$is_empty_3347" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_3348" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_3347", i32 0, i32 0
  %"$is_empty_tag_3349" = load i8, i8* %"$is_empty_tag_3348", align 1
  switch i8 %"$is_empty_tag_3349", label %"$empty_default_3350" [
    i8 0, label %"$True_3351"
    i8 1, label %"$False_3353"
  ]

"$True_3351":                                     ; preds = %"$have_gas_3344"
  %"$is_empty_3352" = bitcast %TName_Bool* %"$is_empty_3347" to %CName_True*
  br label %"$matchsucc_3346"

"$False_3353":                                    ; preds = %"$have_gas_3344"
  %"$is_empty_3354" = bitcast %TName_Bool* %"$is_empty_3347" to %CName_False*
  %"$gasrem_3355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3356" = icmp ugt i64 1, %"$gasrem_3355"
  br i1 %"$gascmp_3356", label %"$out_of_gas_3357", label %"$have_gas_3358"

"$out_of_gas_3357":                               ; preds = %"$False_3353"
  call void @_out_of_gas()
  br label %"$have_gas_3358"

"$have_gas_3358":                                 ; preds = %"$out_of_gas_3357", %"$False_3353"
  %"$consume_3359" = sub i64 %"$gasrem_3355", 1
  store i64 %"$consume_3359", i64* @_gasrem, align 8
  %"$fail__origin_3360" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_3360", align 1
  %"$fail__sender_3361" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_3361", align 1
  %"$tname_3362" = load %String, %String* %tname, align 8
  call void @"$fail_210"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_3360", [20 x i8]* %"$fail__sender_3361", %String %"$tname_3362")
  br label %"$matchsucc_3346"

"$empty_default_3350":                            ; preds = %"$have_gas_3344"
  br label %"$matchsucc_3346"

"$matchsucc_3346":                                ; preds = %"$have_gas_3358", %"$True_3351", %"$empty_default_3350"
  %"$gasrem_3363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3364" = icmp ugt i64 1, %"$gasrem_3363"
  br i1 %"$gascmp_3364", label %"$out_of_gas_3365", label %"$have_gas_3366"

"$out_of_gas_3365":                               ; preds = %"$matchsucc_3346"
  call void @_out_of_gas()
  br label %"$have_gas_3366"

"$have_gas_3366":                                 ; preds = %"$out_of_gas_3365", %"$matchsucc_3346"
  %"$consume_3367" = sub i64 %"$gasrem_3363", 1
  store i64 %"$consume_3367", i64* @_gasrem, align 8
  %e = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_3368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3369" = icmp ugt i64 1, %"$gasrem_3368"
  br i1 %"$gascmp_3369", label %"$out_of_gas_3370", label %"$have_gas_3371"

"$out_of_gas_3370":                               ; preds = %"$have_gas_3366"
  call void @_out_of_gas()
  br label %"$have_gas_3371"

"$have_gas_3371":                                 ; preds = %"$out_of_gas_3370", %"$have_gas_3366"
  %"$consume_3372" = sub i64 %"$gasrem_3368", 1
  store i64 %"$consume_3372", i64* @_gasrem, align 8
  %"$execptr_load_3373" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3374" = call i8* @_new_empty_map(i8* %"$execptr_load_3373")
  %"$_new_empty_map_3375" = bitcast i8* %"$_new_empty_map_call_3374" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_3375", %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$e_3376" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$$e_3376_3377" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_3376" to i8*
  %"$_literal_cost_call_3378" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_64", i8* %"$$e_3376_3377")
  %"$gasrem_3379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3380" = icmp ugt i64 %"$_literal_cost_call_3378", %"$gasrem_3379"
  br i1 %"$gascmp_3380", label %"$out_of_gas_3381", label %"$have_gas_3382"

"$out_of_gas_3381":                               ; preds = %"$have_gas_3371"
  call void @_out_of_gas()
  br label %"$have_gas_3382"

"$have_gas_3382":                                 ; preds = %"$out_of_gas_3381", %"$have_gas_3371"
  %"$consume_3383" = sub i64 %"$gasrem_3379", %"$_literal_cost_call_3378"
  store i64 %"$consume_3383", i64* @_gasrem, align 8
  %"$execptr_load_3384" = load i8*, i8** @_execptr, align 8
  %"$e_3386" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$update_value_3387" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_3386" to i8*
  call void @_update_field(i8* %"$execptr_load_3384", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$f_m_3385", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 0, i8* null, i8* %"$update_value_3387")
  ret void
}

define void @t14(i8* %0) {
entry:
  %"$_amount_3389" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3390" = bitcast i8* %"$_amount_3389" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3390", align 8
  %"$_origin_3391" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3392" = bitcast i8* %"$_origin_3391" to [20 x i8]*
  %"$_sender_3393" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3394" = bitcast i8* %"$_sender_3393" to [20 x i8]*
  call void @"$t14_3273"(%Uint128 %_amount, [20 x i8]* %"$_origin_3392", [20 x i8]* %"$_sender_3394")
  ret void
}

define internal void @"$t15_3395"(%Uint128 %_amount, [20 x i8]* %"$_origin_3396", [20 x i8]* %"$_sender_3397") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3396", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3397", align 1
  %"$gasrem_3398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3399" = icmp ugt i64 1, %"$gasrem_3398"
  br i1 %"$gascmp_3399", label %"$out_of_gas_3400", label %"$have_gas_3401"

"$out_of_gas_3400":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3401"

"$have_gas_3401":                                 ; preds = %"$out_of_gas_3400", %entry
  %"$consume_3402" = sub i64 %"$gasrem_3398", 1
  store i64 %"$consume_3402", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_3403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3404" = icmp ugt i64 1, %"$gasrem_3403"
  br i1 %"$gascmp_3404", label %"$out_of_gas_3405", label %"$have_gas_3406"

"$out_of_gas_3405":                               ; preds = %"$have_gas_3401"
  call void @_out_of_gas()
  br label %"$have_gas_3406"

"$have_gas_3406":                                 ; preds = %"$out_of_gas_3405", %"$have_gas_3401"
  %"$consume_3407" = sub i64 %"$gasrem_3403", 1
  store i64 %"$consume_3407", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3408", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %m3 = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*, align 8
  %"$execptr_load_3410" = load i8*, i8** @_execptr, align 8
  %"$m3_call_3411" = call i8* @_fetch_field(i8* %"$execptr_load_3410", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_3409", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_63", i32 0, i8* null, i32 1)
  %"$m3_3412" = bitcast i8* %"$m3_call_3411" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3412", %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$m3_3413" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3413_3414" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3413" to i8*
  %"$_literal_cost_call_3415" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_63", i8* %"$$m3_3413_3414")
  %"$m3_3416" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3416_3417" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3416" to i8*
  %"$_mapsortcost_call_3418" = call i64 @_mapsortcost(i8* %"$$m3_3416_3417")
  %"$gasadd_3419" = add i64 %"$_literal_cost_call_3415", %"$_mapsortcost_call_3418"
  %"$gasrem_3420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3421" = icmp ugt i64 %"$gasadd_3419", %"$gasrem_3420"
  br i1 %"$gascmp_3421", label %"$out_of_gas_3422", label %"$have_gas_3423"

"$out_of_gas_3422":                               ; preds = %"$have_gas_3406"
  call void @_out_of_gas()
  br label %"$have_gas_3423"

"$have_gas_3423":                                 ; preds = %"$out_of_gas_3422", %"$have_gas_3406"
  %"$consume_3424" = sub i64 %"$gasrem_3420", %"$gasadd_3419"
  store i64 %"$consume_3424", i64* @_gasrem, align 8
  %"$gasrem_3425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3426" = icmp ugt i64 1, %"$gasrem_3425"
  br i1 %"$gascmp_3426", label %"$out_of_gas_3427", label %"$have_gas_3428"

"$out_of_gas_3427":                               ; preds = %"$have_gas_3423"
  call void @_out_of_gas()
  br label %"$have_gas_3428"

"$have_gas_3428":                                 ; preds = %"$out_of_gas_3427", %"$have_gas_3423"
  %"$consume_3429" = sub i64 %"$gasrem_3425", 1
  store i64 %"$consume_3429", i64* @_gasrem, align 8
  %m3_size = alloca %Uint32, align 8
  %"$gasrem_3430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3431" = icmp ugt i64 1, %"$gasrem_3430"
  br i1 %"$gascmp_3431", label %"$out_of_gas_3432", label %"$have_gas_3433"

"$out_of_gas_3432":                               ; preds = %"$have_gas_3428"
  call void @_out_of_gas()
  br label %"$have_gas_3433"

"$have_gas_3433":                                 ; preds = %"$out_of_gas_3432", %"$have_gas_3428"
  %"$consume_3434" = sub i64 %"$gasrem_3430", 1
  store i64 %"$consume_3434", i64* @_gasrem, align 8
  %"$m3_3435" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3435_3436" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3435" to i8*
  %"$size_call_3437" = call %Uint32 @_size(i8* %"$$m3_3435_3436")
  store %Uint32 %"$size_call_3437", %Uint32* %m3_size, align 4
  %"$gasrem_3438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3439" = icmp ugt i64 1, %"$gasrem_3438"
  br i1 %"$gascmp_3439", label %"$out_of_gas_3440", label %"$have_gas_3441"

"$out_of_gas_3440":                               ; preds = %"$have_gas_3433"
  call void @_out_of_gas()
  br label %"$have_gas_3441"

"$have_gas_3441":                                 ; preds = %"$out_of_gas_3440", %"$have_gas_3433"
  %"$consume_3442" = sub i64 %"$gasrem_3438", 1
  store i64 %"$consume_3442", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_3443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3444" = icmp ugt i64 1, %"$gasrem_3443"
  br i1 %"$gascmp_3444", label %"$out_of_gas_3445", label %"$have_gas_3446"

"$out_of_gas_3445":                               ; preds = %"$have_gas_3441"
  call void @_out_of_gas()
  br label %"$have_gas_3446"

"$have_gas_3446":                                 ; preds = %"$out_of_gas_3445", %"$have_gas_3441"
  %"$consume_3447" = sub i64 %"$gasrem_3443", 1
  store i64 %"$consume_3447", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4
  %"$gasrem_3448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3449" = icmp ugt i64 1, %"$gasrem_3448"
  br i1 %"$gascmp_3449", label %"$out_of_gas_3450", label %"$have_gas_3451"

"$out_of_gas_3450":                               ; preds = %"$have_gas_3446"
  call void @_out_of_gas()
  br label %"$have_gas_3451"

"$have_gas_3451":                                 ; preds = %"$out_of_gas_3450", %"$have_gas_3446"
  %"$consume_3452" = sub i64 %"$gasrem_3448", 1
  store i64 %"$consume_3452", i64* @_gasrem, align 8
  %is_one = alloca %TName_Bool*, align 8
  %"$gasrem_3453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3454" = icmp ugt i64 4, %"$gasrem_3453"
  br i1 %"$gascmp_3454", label %"$out_of_gas_3455", label %"$have_gas_3456"

"$out_of_gas_3455":                               ; preds = %"$have_gas_3451"
  call void @_out_of_gas()
  br label %"$have_gas_3456"

"$have_gas_3456":                                 ; preds = %"$out_of_gas_3455", %"$have_gas_3451"
  %"$consume_3457" = sub i64 %"$gasrem_3453", 4
  store i64 %"$consume_3457", i64* @_gasrem, align 8
  %"$execptr_load_3458" = load i8*, i8** @_execptr, align 8
  %"$m3_size_3459" = load %Uint32, %Uint32* %m3_size, align 4
  %"$one_3460" = load %Uint32, %Uint32* %one, align 4
  %"$eq_call_3461" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3458", %Uint32 %"$m3_size_3459", %Uint32 %"$one_3460")
  store %TName_Bool* %"$eq_call_3461", %TName_Bool** %is_one, align 8
  %"$gasrem_3463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3464" = icmp ugt i64 2, %"$gasrem_3463"
  br i1 %"$gascmp_3464", label %"$out_of_gas_3465", label %"$have_gas_3466"

"$out_of_gas_3465":                               ; preds = %"$have_gas_3456"
  call void @_out_of_gas()
  br label %"$have_gas_3466"

"$have_gas_3466":                                 ; preds = %"$out_of_gas_3465", %"$have_gas_3456"
  %"$consume_3467" = sub i64 %"$gasrem_3463", 2
  store i64 %"$consume_3467", i64* @_gasrem, align 8
  %"$is_one_3469" = load %TName_Bool*, %TName_Bool** %is_one, align 8
  %"$is_one_tag_3470" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_one_3469", i32 0, i32 0
  %"$is_one_tag_3471" = load i8, i8* %"$is_one_tag_3470", align 1
  switch i8 %"$is_one_tag_3471", label %"$empty_default_3472" [
    i8 0, label %"$True_3473"
    i8 1, label %"$False_3475"
  ]

"$True_3473":                                     ; preds = %"$have_gas_3466"
  %"$is_one_3474" = bitcast %TName_Bool* %"$is_one_3469" to %CName_True*
  br label %"$matchsucc_3468"

"$False_3475":                                    ; preds = %"$have_gas_3466"
  %"$is_one_3476" = bitcast %TName_Bool* %"$is_one_3469" to %CName_False*
  %"$gasrem_3477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3478" = icmp ugt i64 1, %"$gasrem_3477"
  br i1 %"$gascmp_3478", label %"$out_of_gas_3479", label %"$have_gas_3480"

"$out_of_gas_3479":                               ; preds = %"$False_3475"
  call void @_out_of_gas()
  br label %"$have_gas_3480"

"$have_gas_3480":                                 ; preds = %"$out_of_gas_3479", %"$False_3475"
  %"$consume_3481" = sub i64 %"$gasrem_3477", 1
  store i64 %"$consume_3481", i64* @_gasrem, align 8
  %err = alloca %String, align 8
  %"$gasrem_3482" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3483" = icmp ugt i64 1, %"$gasrem_3482"
  br i1 %"$gascmp_3483", label %"$out_of_gas_3484", label %"$have_gas_3485"

"$out_of_gas_3484":                               ; preds = %"$have_gas_3480"
  call void @_out_of_gas()
  br label %"$have_gas_3485"

"$have_gas_3485":                                 ; preds = %"$out_of_gas_3484", %"$have_gas_3480"
  %"$consume_3486" = sub i64 %"$gasrem_3482", 1
  store i64 %"$consume_3486", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"$stringlit_3487", i32 0, i32 0), i32 22 }, %String* %err, align 8
  %"$gasrem_3488" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3489" = icmp ugt i64 1, %"$gasrem_3488"
  br i1 %"$gascmp_3489", label %"$out_of_gas_3490", label %"$have_gas_3491"

"$out_of_gas_3490":                               ; preds = %"$have_gas_3485"
  call void @_out_of_gas()
  br label %"$have_gas_3491"

"$have_gas_3491":                                 ; preds = %"$out_of_gas_3490", %"$have_gas_3485"
  %"$consume_3492" = sub i64 %"$gasrem_3488", 1
  store i64 %"$consume_3492", i64* @_gasrem, align 8
  %"$fail_msg__origin_3493" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3493", align 1
  %"$fail_msg__sender_3494" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3494", align 1
  %"$tname_3495" = load %String, %String* %tname, align 8
  %"$err_3496" = load %String, %String* %err, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3493", [20 x i8]* %"$fail_msg__sender_3494", %String %"$tname_3495", %String %"$err_3496")
  br label %"$matchsucc_3468"

"$empty_default_3472":                            ; preds = %"$have_gas_3466"
  br label %"$matchsucc_3468"

"$matchsucc_3468":                                ; preds = %"$have_gas_3491", %"$True_3473", %"$empty_default_3472"
  %"$gasrem_3497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3498" = icmp ugt i64 1, %"$gasrem_3497"
  br i1 %"$gascmp_3498", label %"$out_of_gas_3499", label %"$have_gas_3500"

"$out_of_gas_3499":                               ; preds = %"$matchsucc_3468"
  call void @_out_of_gas()
  br label %"$have_gas_3500"

"$have_gas_3500":                                 ; preds = %"$out_of_gas_3499", %"$matchsucc_3468"
  %"$consume_3501" = sub i64 %"$gasrem_3497", 1
  store i64 %"$consume_3501", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_3502" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3503" = icmp ugt i64 1, %"$gasrem_3502"
  br i1 %"$gascmp_3503", label %"$out_of_gas_3504", label %"$have_gas_3505"

"$out_of_gas_3504":                               ; preds = %"$have_gas_3500"
  call void @_out_of_gas()
  br label %"$have_gas_3505"

"$have_gas_3505":                                 ; preds = %"$out_of_gas_3504", %"$have_gas_3500"
  %"$consume_3506" = sub i64 %"$gasrem_3502", 1
  store i64 %"$consume_3506", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3507", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_3508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3509" = icmp ugt i64 1, %"$gasrem_3508"
  br i1 %"$gascmp_3509", label %"$out_of_gas_3510", label %"$have_gas_3511"

"$out_of_gas_3510":                               ; preds = %"$have_gas_3505"
  call void @_out_of_gas()
  br label %"$have_gas_3511"

"$have_gas_3511":                                 ; preds = %"$out_of_gas_3510", %"$have_gas_3505"
  %"$consume_3512" = sub i64 %"$gasrem_3508", 1
  store i64 %"$consume_3512", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_3513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3514" = icmp ugt i64 1, %"$gasrem_3513"
  br i1 %"$gascmp_3514", label %"$out_of_gas_3515", label %"$have_gas_3516"

"$out_of_gas_3515":                               ; preds = %"$have_gas_3511"
  call void @_out_of_gas()
  br label %"$have_gas_3516"

"$have_gas_3516":                                 ; preds = %"$out_of_gas_3515", %"$have_gas_3511"
  %"$consume_3517" = sub i64 %"$gasrem_3513", 1
  store i64 %"$consume_3517", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3518", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %"$gasrem_3519" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3520" = icmp ugt i64 1, %"$gasrem_3519"
  br i1 %"$gascmp_3520", label %"$out_of_gas_3521", label %"$have_gas_3522"

"$out_of_gas_3521":                               ; preds = %"$have_gas_3516"
  call void @_out_of_gas()
  br label %"$have_gas_3522"

"$have_gas_3522":                                 ; preds = %"$out_of_gas_3521", %"$have_gas_3516"
  %"$consume_3523" = sub i64 %"$gasrem_3519", 1
  store i64 %"$consume_3523", i64* @_gasrem, align 8
  %m2o = alloca %"TName_Option_Map_(String)_(Map_(String)_(String))"*, align 8
  %"$gasrem_3524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3525" = icmp ugt i64 1, %"$gasrem_3524"
  br i1 %"$gascmp_3525", label %"$out_of_gas_3526", label %"$have_gas_3527"

"$out_of_gas_3526":                               ; preds = %"$have_gas_3522"
  call void @_out_of_gas()
  br label %"$have_gas_3527"

"$have_gas_3527":                                 ; preds = %"$out_of_gas_3526", %"$have_gas_3522"
  %"$consume_3528" = sub i64 %"$gasrem_3524", 1
  store i64 %"$consume_3528", i64* @_gasrem, align 8
  %"$execptr_load_3529" = load i8*, i8** @_execptr, align 8
  %"$m3_3530" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3530_3531" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3530" to i8*
  %"$get_key1a_3532" = alloca %String, align 8
  %"$key1a_3533" = load %String, %String* %key1a, align 8
  store %String %"$key1a_3533", %String* %"$get_key1a_3532", align 8
  %"$$get_key1a_3532_3534" = bitcast %String* %"$get_key1a_3532" to i8*
  %"$get_call_3535" = call i8* @_get(i8* %"$execptr_load_3529", %_TyDescrTy_Typ* @"$TyDescr_Map_63", i8* %"$$m3_3530_3531", i8* %"$$get_key1a_3532_3534")
  %"$get_3536" = bitcast i8* %"$get_call_3535" to %"TName_Option_Map_(String)_(Map_(String)_(String))"*
  store %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$get_3536", %"TName_Option_Map_(String)_(Map_(String)_(String))"** %m2o, align 8
  %"$gasrem_3537" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3538" = icmp ugt i64 2, %"$gasrem_3537"
  br i1 %"$gascmp_3538", label %"$out_of_gas_3539", label %"$have_gas_3540"

"$out_of_gas_3539":                               ; preds = %"$have_gas_3527"
  call void @_out_of_gas()
  br label %"$have_gas_3540"

"$have_gas_3540":                                 ; preds = %"$out_of_gas_3539", %"$have_gas_3527"
  %"$consume_3541" = sub i64 %"$gasrem_3537", 2
  store i64 %"$consume_3541", i64* @_gasrem, align 8
  %"$m2o_3543" = load %"TName_Option_Map_(String)_(Map_(String)_(String))"*, %"TName_Option_Map_(String)_(Map_(String)_(String))"** %m2o, align 8
  %"$m2o_tag_3544" = getelementptr inbounds %"TName_Option_Map_(String)_(Map_(String)_(String))", %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$m2o_3543", i32 0, i32 0
  %"$m2o_tag_3545" = load i8, i8* %"$m2o_tag_3544", align 1
  switch i8 %"$m2o_tag_3545", label %"$empty_default_3546" [
    i8 0, label %"$Some_3547"
    i8 1, label %"$None_3739"
  ]

"$Some_3547":                                     ; preds = %"$have_gas_3540"
  %"$m2o_3548" = bitcast %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$m2o_3543" to %"CName_Some_Map_(String)_(Map_(String)_(String))"*
  %"$m2_gep_3549" = getelementptr inbounds %"CName_Some_Map_(String)_(Map_(String)_(String))", %"CName_Some_Map_(String)_(Map_(String)_(String))"* %"$m2o_3548", i32 0, i32 1
  %"$m2_load_3550" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %"$m2_gep_3549", align 8
  %m2 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  store %"Map_String_Map_(String)_(String)"* %"$m2_load_3550", %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$gasrem_3551" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3552" = icmp ugt i64 1, %"$gasrem_3551"
  br i1 %"$gascmp_3552", label %"$out_of_gas_3553", label %"$have_gas_3554"

"$out_of_gas_3553":                               ; preds = %"$Some_3547"
  call void @_out_of_gas()
  br label %"$have_gas_3554"

"$have_gas_3554":                                 ; preds = %"$out_of_gas_3553", %"$Some_3547"
  %"$consume_3555" = sub i64 %"$gasrem_3551", 1
  store i64 %"$consume_3555", i64* @_gasrem, align 8
  %m2_size = alloca %Uint32, align 8
  %"$gasrem_3556" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3557" = icmp ugt i64 1, %"$gasrem_3556"
  br i1 %"$gascmp_3557", label %"$out_of_gas_3558", label %"$have_gas_3559"

"$out_of_gas_3558":                               ; preds = %"$have_gas_3554"
  call void @_out_of_gas()
  br label %"$have_gas_3559"

"$have_gas_3559":                                 ; preds = %"$out_of_gas_3558", %"$have_gas_3554"
  %"$consume_3560" = sub i64 %"$gasrem_3556", 1
  store i64 %"$consume_3560", i64* @_gasrem, align 8
  %"$m2_3561" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_3561_3562" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_3561" to i8*
  %"$size_call_3563" = call %Uint32 @_size(i8* %"$$m2_3561_3562")
  store %Uint32 %"$size_call_3563", %Uint32* %m2_size, align 4
  %"$gasrem_3564" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3565" = icmp ugt i64 1, %"$gasrem_3564"
  br i1 %"$gascmp_3565", label %"$out_of_gas_3566", label %"$have_gas_3567"

"$out_of_gas_3566":                               ; preds = %"$have_gas_3559"
  call void @_out_of_gas()
  br label %"$have_gas_3567"

"$have_gas_3567":                                 ; preds = %"$out_of_gas_3566", %"$have_gas_3559"
  %"$consume_3568" = sub i64 %"$gasrem_3564", 1
  store i64 %"$consume_3568", i64* @_gasrem, align 8
  %is_one_1 = alloca %TName_Bool*, align 8
  %"$gasrem_3569" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3570" = icmp ugt i64 4, %"$gasrem_3569"
  br i1 %"$gascmp_3570", label %"$out_of_gas_3571", label %"$have_gas_3572"

"$out_of_gas_3571":                               ; preds = %"$have_gas_3567"
  call void @_out_of_gas()
  br label %"$have_gas_3572"

"$have_gas_3572":                                 ; preds = %"$out_of_gas_3571", %"$have_gas_3567"
  %"$consume_3573" = sub i64 %"$gasrem_3569", 4
  store i64 %"$consume_3573", i64* @_gasrem, align 8
  %"$execptr_load_3574" = load i8*, i8** @_execptr, align 8
  %"$m2_size_3575" = load %Uint32, %Uint32* %m2_size, align 4
  %"$one_3576" = load %Uint32, %Uint32* %one, align 4
  %"$eq_call_3577" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3574", %Uint32 %"$m2_size_3575", %Uint32 %"$one_3576")
  store %TName_Bool* %"$eq_call_3577", %TName_Bool** %is_one_1, align 8
  %"$gasrem_3579" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3580" = icmp ugt i64 2, %"$gasrem_3579"
  br i1 %"$gascmp_3580", label %"$out_of_gas_3581", label %"$have_gas_3582"

"$out_of_gas_3581":                               ; preds = %"$have_gas_3572"
  call void @_out_of_gas()
  br label %"$have_gas_3582"

"$have_gas_3582":                                 ; preds = %"$out_of_gas_3581", %"$have_gas_3572"
  %"$consume_3583" = sub i64 %"$gasrem_3579", 2
  store i64 %"$consume_3583", i64* @_gasrem, align 8
  %"$is_one_1_3585" = load %TName_Bool*, %TName_Bool** %is_one_1, align 8
  %"$is_one_1_tag_3586" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_one_1_3585", i32 0, i32 0
  %"$is_one_1_tag_3587" = load i8, i8* %"$is_one_1_tag_3586", align 1
  switch i8 %"$is_one_1_tag_3587", label %"$empty_default_3588" [
    i8 0, label %"$True_3589"
    i8 1, label %"$False_3717"
  ]

"$True_3589":                                     ; preds = %"$have_gas_3582"
  %"$is_one_1_3590" = bitcast %TName_Bool* %"$is_one_1_3585" to %CName_True*
  %"$gasrem_3591" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3592" = icmp ugt i64 1, %"$gasrem_3591"
  br i1 %"$gascmp_3592", label %"$out_of_gas_3593", label %"$have_gas_3594"

"$out_of_gas_3593":                               ; preds = %"$True_3589"
  call void @_out_of_gas()
  br label %"$have_gas_3594"

"$have_gas_3594":                                 ; preds = %"$out_of_gas_3593", %"$True_3589"
  %"$consume_3595" = sub i64 %"$gasrem_3591", 1
  store i64 %"$consume_3595", i64* @_gasrem, align 8
  %m1o = alloca %"TName_Option_Map_(String)_(String)"*, align 8
  %"$gasrem_3596" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3597" = icmp ugt i64 1, %"$gasrem_3596"
  br i1 %"$gascmp_3597", label %"$out_of_gas_3598", label %"$have_gas_3599"

"$out_of_gas_3598":                               ; preds = %"$have_gas_3594"
  call void @_out_of_gas()
  br label %"$have_gas_3599"

"$have_gas_3599":                                 ; preds = %"$out_of_gas_3598", %"$have_gas_3594"
  %"$consume_3600" = sub i64 %"$gasrem_3596", 1
  store i64 %"$consume_3600", i64* @_gasrem, align 8
  %"$execptr_load_3601" = load i8*, i8** @_execptr, align 8
  %"$m2_3602" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_3602_3603" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_3602" to i8*
  %"$get_key2a_3604" = alloca %String, align 8
  %"$key2a_3605" = load %String, %String* %key2a, align 8
  store %String %"$key2a_3605", %String* %"$get_key2a_3604", align 8
  %"$$get_key2a_3604_3606" = bitcast %String* %"$get_key2a_3604" to i8*
  %"$get_call_3607" = call i8* @_get(i8* %"$execptr_load_3601", %_TyDescrTy_Typ* @"$TyDescr_Map_64", i8* %"$$m2_3602_3603", i8* %"$$get_key2a_3604_3606")
  %"$get_3608" = bitcast i8* %"$get_call_3607" to %"TName_Option_Map_(String)_(String)"*
  store %"TName_Option_Map_(String)_(String)"* %"$get_3608", %"TName_Option_Map_(String)_(String)"** %m1o, align 8
  %"$gasrem_3609" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3610" = icmp ugt i64 2, %"$gasrem_3609"
  br i1 %"$gascmp_3610", label %"$out_of_gas_3611", label %"$have_gas_3612"

"$out_of_gas_3611":                               ; preds = %"$have_gas_3599"
  call void @_out_of_gas()
  br label %"$have_gas_3612"

"$have_gas_3612":                                 ; preds = %"$out_of_gas_3611", %"$have_gas_3599"
  %"$consume_3613" = sub i64 %"$gasrem_3609", 2
  store i64 %"$consume_3613", i64* @_gasrem, align 8
  %"$m1o_3615" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %m1o, align 8
  %"$m1o_tag_3616" = getelementptr inbounds %"TName_Option_Map_(String)_(String)", %"TName_Option_Map_(String)_(String)"* %"$m1o_3615", i32 0, i32 0
  %"$m1o_tag_3617" = load i8, i8* %"$m1o_tag_3616", align 1
  switch i8 %"$m1o_tag_3617", label %"$empty_default_3618" [
    i8 0, label %"$Some_3619"
    i8 1, label %"$None_3695"
  ]

"$Some_3619":                                     ; preds = %"$have_gas_3612"
  %"$m1o_3620" = bitcast %"TName_Option_Map_(String)_(String)"* %"$m1o_3615" to %"CName_Some_Map_(String)_(String)"*
  %"$m1_gep_3621" = getelementptr inbounds %"CName_Some_Map_(String)_(String)", %"CName_Some_Map_(String)_(String)"* %"$m1o_3620", i32 0, i32 1
  %"$m1_load_3622" = load %Map_String_String*, %Map_String_String** %"$m1_gep_3621", align 8
  %m1 = alloca %Map_String_String*, align 8
  store %Map_String_String* %"$m1_load_3622", %Map_String_String** %m1, align 8
  %"$gasrem_3623" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3624" = icmp ugt i64 1, %"$gasrem_3623"
  br i1 %"$gascmp_3624", label %"$out_of_gas_3625", label %"$have_gas_3626"

"$out_of_gas_3625":                               ; preds = %"$Some_3619"
  call void @_out_of_gas()
  br label %"$have_gas_3626"

"$have_gas_3626":                                 ; preds = %"$out_of_gas_3625", %"$Some_3619"
  %"$consume_3627" = sub i64 %"$gasrem_3623", 1
  store i64 %"$consume_3627", i64* @_gasrem, align 8
  %m1_size = alloca %Uint32, align 8
  %"$gasrem_3628" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3629" = icmp ugt i64 1, %"$gasrem_3628"
  br i1 %"$gascmp_3629", label %"$out_of_gas_3630", label %"$have_gas_3631"

"$out_of_gas_3630":                               ; preds = %"$have_gas_3626"
  call void @_out_of_gas()
  br label %"$have_gas_3631"

"$have_gas_3631":                                 ; preds = %"$out_of_gas_3630", %"$have_gas_3626"
  %"$consume_3632" = sub i64 %"$gasrem_3628", 1
  store i64 %"$consume_3632", i64* @_gasrem, align 8
  %"$m1_3633" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_3633_3634" = bitcast %Map_String_String* %"$m1_3633" to i8*
  %"$size_call_3635" = call %Uint32 @_size(i8* %"$$m1_3633_3634")
  store %Uint32 %"$size_call_3635", %Uint32* %m1_size, align 4
  %"$gasrem_3636" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3637" = icmp ugt i64 1, %"$gasrem_3636"
  br i1 %"$gascmp_3637", label %"$out_of_gas_3638", label %"$have_gas_3639"

"$out_of_gas_3638":                               ; preds = %"$have_gas_3631"
  call void @_out_of_gas()
  br label %"$have_gas_3639"

"$have_gas_3639":                                 ; preds = %"$out_of_gas_3638", %"$have_gas_3631"
  %"$consume_3640" = sub i64 %"$gasrem_3636", 1
  store i64 %"$consume_3640", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_3641" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3642" = icmp ugt i64 1, %"$gasrem_3641"
  br i1 %"$gascmp_3642", label %"$out_of_gas_3643", label %"$have_gas_3644"

"$out_of_gas_3643":                               ; preds = %"$have_gas_3639"
  call void @_out_of_gas()
  br label %"$have_gas_3644"

"$have_gas_3644":                                 ; preds = %"$out_of_gas_3643", %"$have_gas_3639"
  %"$consume_3645" = sub i64 %"$gasrem_3641", 1
  store i64 %"$consume_3645", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_3646" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3647" = icmp ugt i64 1, %"$gasrem_3646"
  br i1 %"$gascmp_3647", label %"$out_of_gas_3648", label %"$have_gas_3649"

"$out_of_gas_3648":                               ; preds = %"$have_gas_3644"
  call void @_out_of_gas()
  br label %"$have_gas_3649"

"$have_gas_3649":                                 ; preds = %"$out_of_gas_3648", %"$have_gas_3644"
  %"$consume_3650" = sub i64 %"$gasrem_3646", 1
  store i64 %"$consume_3650", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  %"$gasrem_3651" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3652" = icmp ugt i64 4, %"$gasrem_3651"
  br i1 %"$gascmp_3652", label %"$out_of_gas_3653", label %"$have_gas_3654"

"$out_of_gas_3653":                               ; preds = %"$have_gas_3649"
  call void @_out_of_gas()
  br label %"$have_gas_3654"

"$have_gas_3654":                                 ; preds = %"$out_of_gas_3653", %"$have_gas_3649"
  %"$consume_3655" = sub i64 %"$gasrem_3651", 4
  store i64 %"$consume_3655", i64* @_gasrem, align 8
  %"$execptr_load_3656" = load i8*, i8** @_execptr, align 8
  %"$m1_size_3657" = load %Uint32, %Uint32* %m1_size, align 4
  %"$zero_3658" = load %Uint32, %Uint32* %zero, align 4
  %"$eq_call_3659" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3656", %Uint32 %"$m1_size_3657", %Uint32 %"$zero_3658")
  store %TName_Bool* %"$eq_call_3659", %TName_Bool** %is_empty, align 8
  %"$gasrem_3661" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3662" = icmp ugt i64 2, %"$gasrem_3661"
  br i1 %"$gascmp_3662", label %"$out_of_gas_3663", label %"$have_gas_3664"

"$out_of_gas_3663":                               ; preds = %"$have_gas_3654"
  call void @_out_of_gas()
  br label %"$have_gas_3664"

"$have_gas_3664":                                 ; preds = %"$out_of_gas_3663", %"$have_gas_3654"
  %"$consume_3665" = sub i64 %"$gasrem_3661", 2
  store i64 %"$consume_3665", i64* @_gasrem, align 8
  %"$is_empty_3667" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_3668" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_3667", i32 0, i32 0
  %"$is_empty_tag_3669" = load i8, i8* %"$is_empty_tag_3668", align 1
  switch i8 %"$is_empty_tag_3669", label %"$empty_default_3670" [
    i8 0, label %"$True_3671"
    i8 1, label %"$False_3673"
  ]

"$True_3671":                                     ; preds = %"$have_gas_3664"
  %"$is_empty_3672" = bitcast %TName_Bool* %"$is_empty_3667" to %CName_True*
  br label %"$matchsucc_3666"

"$False_3673":                                    ; preds = %"$have_gas_3664"
  %"$is_empty_3674" = bitcast %TName_Bool* %"$is_empty_3667" to %CName_False*
  %"$gasrem_3675" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3676" = icmp ugt i64 1, %"$gasrem_3675"
  br i1 %"$gascmp_3676", label %"$out_of_gas_3677", label %"$have_gas_3678"

"$out_of_gas_3677":                               ; preds = %"$False_3673"
  call void @_out_of_gas()
  br label %"$have_gas_3678"

"$have_gas_3678":                                 ; preds = %"$out_of_gas_3677", %"$False_3673"
  %"$consume_3679" = sub i64 %"$gasrem_3675", 1
  store i64 %"$consume_3679", i64* @_gasrem, align 8
  %err1 = alloca %String, align 8
  %"$gasrem_3680" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3681" = icmp ugt i64 1, %"$gasrem_3680"
  br i1 %"$gascmp_3681", label %"$out_of_gas_3682", label %"$have_gas_3683"

"$out_of_gas_3682":                               ; preds = %"$have_gas_3678"
  call void @_out_of_gas()
  br label %"$have_gas_3683"

"$have_gas_3683":                                 ; preds = %"$out_of_gas_3682", %"$have_gas_3678"
  %"$consume_3684" = sub i64 %"$gasrem_3680", 1
  store i64 %"$consume_3684", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"$stringlit_3685", i32 0, i32 0), i32 36 }, %String* %err1, align 8
  %"$gasrem_3686" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3687" = icmp ugt i64 1, %"$gasrem_3686"
  br i1 %"$gascmp_3687", label %"$out_of_gas_3688", label %"$have_gas_3689"

"$out_of_gas_3688":                               ; preds = %"$have_gas_3683"
  call void @_out_of_gas()
  br label %"$have_gas_3689"

"$have_gas_3689":                                 ; preds = %"$out_of_gas_3688", %"$have_gas_3683"
  %"$consume_3690" = sub i64 %"$gasrem_3686", 1
  store i64 %"$consume_3690", i64* @_gasrem, align 8
  %"$fail_msg__origin_3691" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3691", align 1
  %"$fail_msg__sender_3692" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3692", align 1
  %"$tname_3693" = load %String, %String* %tname, align 8
  %"$err_3694" = load %String, %String* %err1, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3691", [20 x i8]* %"$fail_msg__sender_3692", %String %"$tname_3693", %String %"$err_3694")
  br label %"$matchsucc_3666"

"$empty_default_3670":                            ; preds = %"$have_gas_3664"
  br label %"$matchsucc_3666"

"$matchsucc_3666":                                ; preds = %"$have_gas_3689", %"$True_3671", %"$empty_default_3670"
  br label %"$matchsucc_3614"

"$None_3695":                                     ; preds = %"$have_gas_3612"
  %"$m1o_3696" = bitcast %"TName_Option_Map_(String)_(String)"* %"$m1o_3615" to %"CName_None_Map_(String)_(String)"*
  %"$gasrem_3697" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3698" = icmp ugt i64 1, %"$gasrem_3697"
  br i1 %"$gascmp_3698", label %"$out_of_gas_3699", label %"$have_gas_3700"

"$out_of_gas_3699":                               ; preds = %"$None_3695"
  call void @_out_of_gas()
  br label %"$have_gas_3700"

"$have_gas_3700":                                 ; preds = %"$out_of_gas_3699", %"$None_3695"
  %"$consume_3701" = sub i64 %"$gasrem_3697", 1
  store i64 %"$consume_3701", i64* @_gasrem, align 8
  %err2 = alloca %String, align 8
  %"$gasrem_3702" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3703" = icmp ugt i64 1, %"$gasrem_3702"
  br i1 %"$gascmp_3703", label %"$out_of_gas_3704", label %"$have_gas_3705"

"$out_of_gas_3704":                               ; preds = %"$have_gas_3700"
  call void @_out_of_gas()
  br label %"$have_gas_3705"

"$have_gas_3705":                                 ; preds = %"$out_of_gas_3704", %"$have_gas_3700"
  %"$consume_3706" = sub i64 %"$gasrem_3702", 1
  store i64 %"$consume_3706", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_3707", i32 0, i32 0), i32 19 }, %String* %err2, align 8
  %"$gasrem_3708" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3709" = icmp ugt i64 1, %"$gasrem_3708"
  br i1 %"$gascmp_3709", label %"$out_of_gas_3710", label %"$have_gas_3711"

"$out_of_gas_3710":                               ; preds = %"$have_gas_3705"
  call void @_out_of_gas()
  br label %"$have_gas_3711"

"$have_gas_3711":                                 ; preds = %"$out_of_gas_3710", %"$have_gas_3705"
  %"$consume_3712" = sub i64 %"$gasrem_3708", 1
  store i64 %"$consume_3712", i64* @_gasrem, align 8
  %"$fail_msg__origin_3713" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3713", align 1
  %"$fail_msg__sender_3714" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3714", align 1
  %"$tname_3715" = load %String, %String* %tname, align 8
  %"$err_3716" = load %String, %String* %err2, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3713", [20 x i8]* %"$fail_msg__sender_3714", %String %"$tname_3715", %String %"$err_3716")
  br label %"$matchsucc_3614"

"$empty_default_3618":                            ; preds = %"$have_gas_3612"
  br label %"$matchsucc_3614"

"$matchsucc_3614":                                ; preds = %"$have_gas_3711", %"$matchsucc_3666", %"$empty_default_3618"
  br label %"$matchsucc_3584"

"$False_3717":                                    ; preds = %"$have_gas_3582"
  %"$is_one_1_3718" = bitcast %TName_Bool* %"$is_one_1_3585" to %CName_False*
  %"$gasrem_3719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3720" = icmp ugt i64 1, %"$gasrem_3719"
  br i1 %"$gascmp_3720", label %"$out_of_gas_3721", label %"$have_gas_3722"

"$out_of_gas_3721":                               ; preds = %"$False_3717"
  call void @_out_of_gas()
  br label %"$have_gas_3722"

"$have_gas_3722":                                 ; preds = %"$out_of_gas_3721", %"$False_3717"
  %"$consume_3723" = sub i64 %"$gasrem_3719", 1
  store i64 %"$consume_3723", i64* @_gasrem, align 8
  %err3 = alloca %String, align 8
  %"$gasrem_3724" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3725" = icmp ugt i64 1, %"$gasrem_3724"
  br i1 %"$gascmp_3725", label %"$out_of_gas_3726", label %"$have_gas_3727"

"$out_of_gas_3726":                               ; preds = %"$have_gas_3722"
  call void @_out_of_gas()
  br label %"$have_gas_3727"

"$have_gas_3727":                                 ; preds = %"$out_of_gas_3726", %"$have_gas_3722"
  %"$consume_3728" = sub i64 %"$gasrem_3724", 1
  store i64 %"$consume_3728", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"$stringlit_3729", i32 0, i32 0), i32 28 }, %String* %err3, align 8
  %"$gasrem_3730" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3731" = icmp ugt i64 1, %"$gasrem_3730"
  br i1 %"$gascmp_3731", label %"$out_of_gas_3732", label %"$have_gas_3733"

"$out_of_gas_3732":                               ; preds = %"$have_gas_3727"
  call void @_out_of_gas()
  br label %"$have_gas_3733"

"$have_gas_3733":                                 ; preds = %"$out_of_gas_3732", %"$have_gas_3727"
  %"$consume_3734" = sub i64 %"$gasrem_3730", 1
  store i64 %"$consume_3734", i64* @_gasrem, align 8
  %"$fail_msg__origin_3735" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3735", align 1
  %"$fail_msg__sender_3736" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3736", align 1
  %"$tname_3737" = load %String, %String* %tname, align 8
  %"$err_3738" = load %String, %String* %err3, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3735", [20 x i8]* %"$fail_msg__sender_3736", %String %"$tname_3737", %String %"$err_3738")
  br label %"$matchsucc_3584"

"$empty_default_3588":                            ; preds = %"$have_gas_3582"
  br label %"$matchsucc_3584"

"$matchsucc_3584":                                ; preds = %"$have_gas_3733", %"$matchsucc_3614", %"$empty_default_3588"
  br label %"$matchsucc_3542"

"$None_3739":                                     ; preds = %"$have_gas_3540"
  %"$m2o_3740" = bitcast %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$m2o_3543" to %"CName_None_Map_(String)_(Map_(String)_(String))"*
  %"$gasrem_3741" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3742" = icmp ugt i64 1, %"$gasrem_3741"
  br i1 %"$gascmp_3742", label %"$out_of_gas_3743", label %"$have_gas_3744"

"$out_of_gas_3743":                               ; preds = %"$None_3739"
  call void @_out_of_gas()
  br label %"$have_gas_3744"

"$have_gas_3744":                                 ; preds = %"$out_of_gas_3743", %"$None_3739"
  %"$consume_3745" = sub i64 %"$gasrem_3741", 1
  store i64 %"$consume_3745", i64* @_gasrem, align 8
  %err4 = alloca %String, align 8
  %"$gasrem_3746" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3747" = icmp ugt i64 1, %"$gasrem_3746"
  br i1 %"$gascmp_3747", label %"$out_of_gas_3748", label %"$have_gas_3749"

"$out_of_gas_3748":                               ; preds = %"$have_gas_3744"
  call void @_out_of_gas()
  br label %"$have_gas_3749"

"$have_gas_3749":                                 ; preds = %"$out_of_gas_3748", %"$have_gas_3744"
  %"$consume_3750" = sub i64 %"$gasrem_3746", 1
  store i64 %"$consume_3750", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_3751", i32 0, i32 0), i32 19 }, %String* %err4, align 8
  %"$gasrem_3752" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3753" = icmp ugt i64 1, %"$gasrem_3752"
  br i1 %"$gascmp_3753", label %"$out_of_gas_3754", label %"$have_gas_3755"

"$out_of_gas_3754":                               ; preds = %"$have_gas_3749"
  call void @_out_of_gas()
  br label %"$have_gas_3755"

"$have_gas_3755":                                 ; preds = %"$out_of_gas_3754", %"$have_gas_3749"
  %"$consume_3756" = sub i64 %"$gasrem_3752", 1
  store i64 %"$consume_3756", i64* @_gasrem, align 8
  %"$fail_msg__origin_3757" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3757", align 1
  %"$fail_msg__sender_3758" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3758", align 1
  %"$tname_3759" = load %String, %String* %tname, align 8
  %"$err_3760" = load %String, %String* %err4, align 8
  call void @"$fail_msg_250"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3757", [20 x i8]* %"$fail_msg__sender_3758", %String %"$tname_3759", %String %"$err_3760")
  br label %"$matchsucc_3542"

"$empty_default_3546":                            ; preds = %"$have_gas_3540"
  br label %"$matchsucc_3542"

"$matchsucc_3542":                                ; preds = %"$have_gas_3755", %"$matchsucc_3584", %"$empty_default_3546"
  %"$gasrem_3761" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3762" = icmp ugt i64 1, %"$gasrem_3761"
  br i1 %"$gascmp_3762", label %"$out_of_gas_3763", label %"$have_gas_3764"

"$out_of_gas_3763":                               ; preds = %"$matchsucc_3542"
  call void @_out_of_gas()
  br label %"$have_gas_3764"

"$have_gas_3764":                                 ; preds = %"$out_of_gas_3763", %"$matchsucc_3542"
  %"$consume_3765" = sub i64 %"$gasrem_3761", 1
  store i64 %"$consume_3765", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  %"$gasrem_3766" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3767" = icmp ugt i64 1, %"$gasrem_3766"
  br i1 %"$gascmp_3767", label %"$out_of_gas_3768", label %"$have_gas_3769"

"$out_of_gas_3768":                               ; preds = %"$have_gas_3764"
  call void @_out_of_gas()
  br label %"$have_gas_3769"

"$have_gas_3769":                                 ; preds = %"$out_of_gas_3768", %"$have_gas_3764"
  %"$consume_3770" = sub i64 %"$gasrem_3766", 1
  store i64 %"$consume_3770", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3771", i32 0, i32 0), i32 5 }, %String* %key1b, align 8
  %"$gasrem_3772" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3773" = icmp ugt i64 1, %"$gasrem_3772"
  br i1 %"$gascmp_3773", label %"$out_of_gas_3774", label %"$have_gas_3775"

"$out_of_gas_3774":                               ; preds = %"$have_gas_3769"
  call void @_out_of_gas()
  br label %"$have_gas_3775"

"$have_gas_3775":                                 ; preds = %"$out_of_gas_3774", %"$have_gas_3769"
  %"$consume_3776" = sub i64 %"$gasrem_3772", 1
  store i64 %"$consume_3776", i64* @_gasrem, align 8
  %key2b = alloca %String, align 8
  %"$gasrem_3777" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3778" = icmp ugt i64 1, %"$gasrem_3777"
  br i1 %"$gascmp_3778", label %"$out_of_gas_3779", label %"$have_gas_3780"

"$out_of_gas_3779":                               ; preds = %"$have_gas_3775"
  call void @_out_of_gas()
  br label %"$have_gas_3780"

"$have_gas_3780":                                 ; preds = %"$out_of_gas_3779", %"$have_gas_3775"
  %"$consume_3781" = sub i64 %"$gasrem_3777", 1
  store i64 %"$consume_3781", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3782", i32 0, i32 0), i32 5 }, %String* %key2b, align 8
  %"$gasrem_3783" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3784" = icmp ugt i64 1, %"$gasrem_3783"
  br i1 %"$gascmp_3784", label %"$out_of_gas_3785", label %"$have_gas_3786"

"$out_of_gas_3785":                               ; preds = %"$have_gas_3780"
  call void @_out_of_gas()
  br label %"$have_gas_3786"

"$have_gas_3786":                                 ; preds = %"$out_of_gas_3785", %"$have_gas_3780"
  %"$consume_3787" = sub i64 %"$gasrem_3783", 1
  store i64 %"$consume_3787", i64* @_gasrem, align 8
  %key1c = alloca %String, align 8
  %"$gasrem_3788" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3789" = icmp ugt i64 1, %"$gasrem_3788"
  br i1 %"$gascmp_3789", label %"$out_of_gas_3790", label %"$have_gas_3791"

"$out_of_gas_3790":                               ; preds = %"$have_gas_3786"
  call void @_out_of_gas()
  br label %"$have_gas_3791"

"$have_gas_3791":                                 ; preds = %"$out_of_gas_3790", %"$have_gas_3786"
  %"$consume_3792" = sub i64 %"$gasrem_3788", 1
  store i64 %"$consume_3792", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3793", i32 0, i32 0), i32 5 }, %String* %key1c, align 8
  %"$gasrem_3794" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3795" = icmp ugt i64 1, %"$gasrem_3794"
  br i1 %"$gascmp_3795", label %"$out_of_gas_3796", label %"$have_gas_3797"

"$out_of_gas_3796":                               ; preds = %"$have_gas_3791"
  call void @_out_of_gas()
  br label %"$have_gas_3797"

"$have_gas_3797":                                 ; preds = %"$out_of_gas_3796", %"$have_gas_3791"
  %"$consume_3798" = sub i64 %"$gasrem_3794", 1
  store i64 %"$consume_3798", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  %"$gasrem_3799" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3800" = icmp ugt i64 1, %"$gasrem_3799"
  br i1 %"$gascmp_3800", label %"$out_of_gas_3801", label %"$have_gas_3802"

"$out_of_gas_3801":                               ; preds = %"$have_gas_3797"
  call void @_out_of_gas()
  br label %"$have_gas_3802"

"$have_gas_3802":                                 ; preds = %"$out_of_gas_3801", %"$have_gas_3797"
  %"$consume_3803" = sub i64 %"$gasrem_3799", 1
  store i64 %"$consume_3803", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3804", i32 0, i32 0), i32 5 }, %String* %key2c, align 8
  %"$gasrem_3805" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3806" = icmp ugt i64 1, %"$gasrem_3805"
  br i1 %"$gascmp_3806", label %"$out_of_gas_3807", label %"$have_gas_3808"

"$out_of_gas_3807":                               ; preds = %"$have_gas_3802"
  call void @_out_of_gas()
  br label %"$have_gas_3808"

"$have_gas_3808":                                 ; preds = %"$out_of_gas_3807", %"$have_gas_3802"
  %"$consume_3809" = sub i64 %"$gasrem_3805", 1
  store i64 %"$consume_3809", i64* @_gasrem, align 8
  %key1d = alloca %String, align 8
  %"$gasrem_3810" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3811" = icmp ugt i64 1, %"$gasrem_3810"
  br i1 %"$gascmp_3811", label %"$out_of_gas_3812", label %"$have_gas_3813"

"$out_of_gas_3812":                               ; preds = %"$have_gas_3808"
  call void @_out_of_gas()
  br label %"$have_gas_3813"

"$have_gas_3813":                                 ; preds = %"$out_of_gas_3812", %"$have_gas_3808"
  %"$consume_3814" = sub i64 %"$gasrem_3810", 1
  store i64 %"$consume_3814", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3815", i32 0, i32 0), i32 5 }, %String* %key1d, align 8
  %"$gasrem_3816" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3817" = icmp ugt i64 1, %"$gasrem_3816"
  br i1 %"$gascmp_3817", label %"$out_of_gas_3818", label %"$have_gas_3819"

"$out_of_gas_3818":                               ; preds = %"$have_gas_3813"
  call void @_out_of_gas()
  br label %"$have_gas_3819"

"$have_gas_3819":                                 ; preds = %"$out_of_gas_3818", %"$have_gas_3813"
  %"$consume_3820" = sub i64 %"$gasrem_3816", 1
  store i64 %"$consume_3820", i64* @_gasrem, align 8
  %key2d = alloca %String, align 8
  %"$gasrem_3821" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3822" = icmp ugt i64 1, %"$gasrem_3821"
  br i1 %"$gascmp_3822", label %"$out_of_gas_3823", label %"$have_gas_3824"

"$out_of_gas_3823":                               ; preds = %"$have_gas_3819"
  call void @_out_of_gas()
  br label %"$have_gas_3824"

"$have_gas_3824":                                 ; preds = %"$out_of_gas_3823", %"$have_gas_3819"
  %"$consume_3825" = sub i64 %"$gasrem_3821", 1
  store i64 %"$consume_3825", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3826", i32 0, i32 0), i32 5 }, %String* %key2d, align 8
  %"$gasrem_3827" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3828" = icmp ugt i64 1, %"$gasrem_3827"
  br i1 %"$gascmp_3828", label %"$out_of_gas_3829", label %"$have_gas_3830"

"$out_of_gas_3829":                               ; preds = %"$have_gas_3824"
  call void @_out_of_gas()
  br label %"$have_gas_3830"

"$have_gas_3830":                                 ; preds = %"$out_of_gas_3829", %"$have_gas_3824"
  %"$consume_3831" = sub i64 %"$gasrem_3827", 1
  store i64 %"$consume_3831", i64* @_gasrem, align 8
  %v1 = alloca %String, align 8
  %"$gasrem_3832" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3833" = icmp ugt i64 1, %"$gasrem_3832"
  br i1 %"$gascmp_3833", label %"$out_of_gas_3834", label %"$have_gas_3835"

"$out_of_gas_3834":                               ; preds = %"$have_gas_3830"
  call void @_out_of_gas()
  br label %"$have_gas_3835"

"$have_gas_3835":                                 ; preds = %"$out_of_gas_3834", %"$have_gas_3830"
  %"$consume_3836" = sub i64 %"$gasrem_3832", 1
  store i64 %"$consume_3836", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3837", i32 0, i32 0), i32 3 }, %String* %v1, align 8
  %"$gasrem_3838" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3839" = icmp ugt i64 1, %"$gasrem_3838"
  br i1 %"$gascmp_3839", label %"$out_of_gas_3840", label %"$have_gas_3841"

"$out_of_gas_3840":                               ; preds = %"$have_gas_3835"
  call void @_out_of_gas()
  br label %"$have_gas_3841"

"$have_gas_3841":                                 ; preds = %"$out_of_gas_3840", %"$have_gas_3835"
  %"$consume_3842" = sub i64 %"$gasrem_3838", 1
  store i64 %"$consume_3842", i64* @_gasrem, align 8
  %v2 = alloca %String, align 8
  %"$gasrem_3843" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3844" = icmp ugt i64 1, %"$gasrem_3843"
  br i1 %"$gascmp_3844", label %"$out_of_gas_3845", label %"$have_gas_3846"

"$out_of_gas_3845":                               ; preds = %"$have_gas_3841"
  call void @_out_of_gas()
  br label %"$have_gas_3846"

"$have_gas_3846":                                 ; preds = %"$out_of_gas_3845", %"$have_gas_3841"
  %"$consume_3847" = sub i64 %"$gasrem_3843", 1
  store i64 %"$consume_3847", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3848", i32 0, i32 0), i32 3 }, %String* %v2, align 8
  %"$gasrem_3849" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3850" = icmp ugt i64 1, %"$gasrem_3849"
  br i1 %"$gascmp_3850", label %"$out_of_gas_3851", label %"$have_gas_3852"

"$out_of_gas_3851":                               ; preds = %"$have_gas_3846"
  call void @_out_of_gas()
  br label %"$have_gas_3852"

"$have_gas_3852":                                 ; preds = %"$out_of_gas_3851", %"$have_gas_3846"
  %"$consume_3853" = sub i64 %"$gasrem_3849", 1
  store i64 %"$consume_3853", i64* @_gasrem, align 8
  %v3 = alloca %String, align 8
  %"$gasrem_3854" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3855" = icmp ugt i64 1, %"$gasrem_3854"
  br i1 %"$gascmp_3855", label %"$out_of_gas_3856", label %"$have_gas_3857"

"$out_of_gas_3856":                               ; preds = %"$have_gas_3852"
  call void @_out_of_gas()
  br label %"$have_gas_3857"

"$have_gas_3857":                                 ; preds = %"$out_of_gas_3856", %"$have_gas_3852"
  %"$consume_3858" = sub i64 %"$gasrem_3854", 1
  store i64 %"$consume_3858", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3859", i32 0, i32 0), i32 3 }, %String* %v3, align 8
  %"$gasrem_3860" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3861" = icmp ugt i64 1, %"$gasrem_3860"
  br i1 %"$gascmp_3861", label %"$out_of_gas_3862", label %"$have_gas_3863"

"$out_of_gas_3862":                               ; preds = %"$have_gas_3857"
  call void @_out_of_gas()
  br label %"$have_gas_3863"

"$have_gas_3863":                                 ; preds = %"$out_of_gas_3862", %"$have_gas_3857"
  %"$consume_3864" = sub i64 %"$gasrem_3860", 1
  store i64 %"$consume_3864", i64* @_gasrem, align 8
  %v4 = alloca %String, align 8
  %"$gasrem_3865" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3866" = icmp ugt i64 1, %"$gasrem_3865"
  br i1 %"$gascmp_3866", label %"$out_of_gas_3867", label %"$have_gas_3868"

"$out_of_gas_3867":                               ; preds = %"$have_gas_3863"
  call void @_out_of_gas()
  br label %"$have_gas_3868"

"$have_gas_3868":                                 ; preds = %"$out_of_gas_3867", %"$have_gas_3863"
  %"$consume_3869" = sub i64 %"$gasrem_3865", 1
  store i64 %"$consume_3869", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3870", i32 0, i32 0), i32 3 }, %String* %v4, align 8
  %"$gasrem_3871" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3872" = icmp ugt i64 1, %"$gasrem_3871"
  br i1 %"$gascmp_3872", label %"$out_of_gas_3873", label %"$have_gas_3874"

"$out_of_gas_3873":                               ; preds = %"$have_gas_3868"
  call void @_out_of_gas()
  br label %"$have_gas_3874"

"$have_gas_3874":                                 ; preds = %"$out_of_gas_3873", %"$have_gas_3868"
  %"$consume_3875" = sub i64 %"$gasrem_3871", 1
  store i64 %"$consume_3875", i64* @_gasrem, align 8
  %m25 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_3876" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3877" = icmp ugt i64 1, %"$gasrem_3876"
  br i1 %"$gascmp_3877", label %"$out_of_gas_3878", label %"$have_gas_3879"

"$out_of_gas_3878":                               ; preds = %"$have_gas_3874"
  call void @_out_of_gas()
  br label %"$have_gas_3879"

"$have_gas_3879":                                 ; preds = %"$out_of_gas_3878", %"$have_gas_3874"
  %"$consume_3880" = sub i64 %"$gasrem_3876", 1
  store i64 %"$consume_3880", i64* @_gasrem, align 8
  %"$execptr_load_3881" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3882" = call i8* @_new_empty_map(i8* %"$execptr_load_3881")
  %"$_new_empty_map_3883" = bitcast i8* %"$_new_empty_map_call_3882" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_3883", %"Map_String_Map_(String)_(String)"** %m25, align 8
  %"$gasrem_3884" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3885" = icmp ugt i64 1, %"$gasrem_3884"
  br i1 %"$gascmp_3885", label %"$out_of_gas_3886", label %"$have_gas_3887"

"$out_of_gas_3886":                               ; preds = %"$have_gas_3879"
  call void @_out_of_gas()
  br label %"$have_gas_3887"

"$have_gas_3887":                                 ; preds = %"$out_of_gas_3886", %"$have_gas_3879"
  %"$consume_3888" = sub i64 %"$gasrem_3884", 1
  store i64 %"$consume_3888", i64* @_gasrem, align 8
  %m16 = alloca %Map_String_String*, align 8
  %"$gasrem_3889" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3890" = icmp ugt i64 1, %"$gasrem_3889"
  br i1 %"$gascmp_3890", label %"$out_of_gas_3891", label %"$have_gas_3892"

"$out_of_gas_3891":                               ; preds = %"$have_gas_3887"
  call void @_out_of_gas()
  br label %"$have_gas_3892"

"$have_gas_3892":                                 ; preds = %"$out_of_gas_3891", %"$have_gas_3887"
  %"$consume_3893" = sub i64 %"$gasrem_3889", 1
  store i64 %"$consume_3893", i64* @_gasrem, align 8
  %"$execptr_load_3894" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3895" = call i8* @_new_empty_map(i8* %"$execptr_load_3894")
  %"$_new_empty_map_3896" = bitcast i8* %"$_new_empty_map_call_3895" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_3896", %Map_String_String** %m16, align 8
  %"$gasrem_3897" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3898" = icmp ugt i64 1, %"$gasrem_3897"
  br i1 %"$gascmp_3898", label %"$out_of_gas_3899", label %"$have_gas_3900"

"$out_of_gas_3899":                               ; preds = %"$have_gas_3892"
  call void @_out_of_gas()
  br label %"$have_gas_3900"

"$have_gas_3900":                                 ; preds = %"$out_of_gas_3899", %"$have_gas_3892"
  %"$consume_3901" = sub i64 %"$gasrem_3897", 1
  store i64 %"$consume_3901", i64* @_gasrem, align 8
  %m2_full = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$gasrem_3902" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3903" = icmp ugt i64 1, %"$gasrem_3902"
  br i1 %"$gascmp_3903", label %"$out_of_gas_3904", label %"$have_gas_3905"

"$out_of_gas_3904":                               ; preds = %"$have_gas_3900"
  call void @_out_of_gas()
  br label %"$have_gas_3905"

"$have_gas_3905":                                 ; preds = %"$out_of_gas_3904", %"$have_gas_3900"
  %"$consume_3906" = sub i64 %"$gasrem_3902", 1
  store i64 %"$consume_3906", i64* @_gasrem, align 8
  %m21 = alloca %Map_String_String*, align 8
  %"$m1_3907" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_3907_3908" = bitcast %Map_String_String* %"$m1_3907" to i8*
  %"$_lengthof_call_3909" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_65", i8* %"$$m1_3907_3908")
  %"$gasadd_3910" = add i64 1, %"$_lengthof_call_3909"
  %"$gasrem_3911" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3912" = icmp ugt i64 %"$gasadd_3910", %"$gasrem_3911"
  br i1 %"$gascmp_3912", label %"$out_of_gas_3913", label %"$have_gas_3914"

"$out_of_gas_3913":                               ; preds = %"$have_gas_3905"
  call void @_out_of_gas()
  br label %"$have_gas_3914"

"$have_gas_3914":                                 ; preds = %"$out_of_gas_3913", %"$have_gas_3905"
  %"$consume_3915" = sub i64 %"$gasrem_3911", %"$gasadd_3910"
  store i64 %"$consume_3915", i64* @_gasrem, align 8
  %"$execptr_load_3916" = load i8*, i8** @_execptr, align 8
  %"$m1_3917" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_3917_3918" = bitcast %Map_String_String* %"$m1_3917" to i8*
  %"$put_key2a_3919" = alloca %String, align 8
  %"$key2a_3920" = load %String, %String* %key2a, align 8
  store %String %"$key2a_3920", %String* %"$put_key2a_3919", align 8
  %"$$put_key2a_3919_3921" = bitcast %String* %"$put_key2a_3919" to i8*
  %"$put_v1_3922" = alloca %String, align 8
  %"$v1_3923" = load %String, %String* %v1, align 8
  store %String %"$v1_3923", %String* %"$put_v1_3922", align 8
  %"$$put_v1_3922_3924" = bitcast %String* %"$put_v1_3922" to i8*
  %"$put_call_3925" = call i8* @_put(i8* %"$execptr_load_3916", %_TyDescrTy_Typ* @"$TyDescr_Map_65", i8* %"$$m1_3917_3918", i8* %"$$put_key2a_3919_3921", i8* %"$$put_v1_3922_3924")
  %"$put_3926" = bitcast i8* %"$put_call_3925" to %Map_String_String*
  store %Map_String_String* %"$put_3926", %Map_String_String** %m21, align 8
  %"$gasrem_3927" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3928" = icmp ugt i64 1, %"$gasrem_3927"
  br i1 %"$gascmp_3928", label %"$out_of_gas_3929", label %"$have_gas_3930"

"$out_of_gas_3929":                               ; preds = %"$have_gas_3914"
  call void @_out_of_gas()
  br label %"$have_gas_3930"

"$have_gas_3930":                                 ; preds = %"$out_of_gas_3929", %"$have_gas_3914"
  %"$consume_3931" = sub i64 %"$gasrem_3927", 1
  store i64 %"$consume_3931", i64* @_gasrem, align 8
  %m22 = alloca %Map_String_String*, align 8
  %"$m1_3932" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_3932_3933" = bitcast %Map_String_String* %"$m1_3932" to i8*
  %"$_lengthof_call_3934" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_65", i8* %"$$m1_3932_3933")
  %"$gasadd_3935" = add i64 1, %"$_lengthof_call_3934"
  %"$gasrem_3936" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3937" = icmp ugt i64 %"$gasadd_3935", %"$gasrem_3936"
  br i1 %"$gascmp_3937", label %"$out_of_gas_3938", label %"$have_gas_3939"

"$out_of_gas_3938":                               ; preds = %"$have_gas_3930"
  call void @_out_of_gas()
  br label %"$have_gas_3939"

"$have_gas_3939":                                 ; preds = %"$out_of_gas_3938", %"$have_gas_3930"
  %"$consume_3940" = sub i64 %"$gasrem_3936", %"$gasadd_3935"
  store i64 %"$consume_3940", i64* @_gasrem, align 8
  %"$execptr_load_3941" = load i8*, i8** @_execptr, align 8
  %"$m1_3942" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_3942_3943" = bitcast %Map_String_String* %"$m1_3942" to i8*
  %"$put_key2b_3944" = alloca %String, align 8
  %"$key2b_3945" = load %String, %String* %key2b, align 8
  store %String %"$key2b_3945", %String* %"$put_key2b_3944", align 8
  %"$$put_key2b_3944_3946" = bitcast %String* %"$put_key2b_3944" to i8*
  %"$put_v2_3947" = alloca %String, align 8
  %"$v2_3948" = load %String, %String* %v2, align 8
  store %String %"$v2_3948", %String* %"$put_v2_3947", align 8
  %"$$put_v2_3947_3949" = bitcast %String* %"$put_v2_3947" to i8*
  %"$put_call_3950" = call i8* @_put(i8* %"$execptr_load_3941", %_TyDescrTy_Typ* @"$TyDescr_Map_65", i8* %"$$m1_3942_3943", i8* %"$$put_key2b_3944_3946", i8* %"$$put_v2_3947_3949")
  %"$put_3951" = bitcast i8* %"$put_call_3950" to %Map_String_String*
  store %Map_String_String* %"$put_3951", %Map_String_String** %m22, align 8
  %"$gasrem_3952" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3953" = icmp ugt i64 1, %"$gasrem_3952"
  br i1 %"$gascmp_3953", label %"$out_of_gas_3954", label %"$have_gas_3955"

"$out_of_gas_3954":                               ; preds = %"$have_gas_3939"
  call void @_out_of_gas()
  br label %"$have_gas_3955"

"$have_gas_3955":                                 ; preds = %"$out_of_gas_3954", %"$have_gas_3939"
  %"$consume_3956" = sub i64 %"$gasrem_3952", 1
  store i64 %"$consume_3956", i64* @_gasrem, align 8
  %m23 = alloca %Map_String_String*, align 8
  %"$m1_3957" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_3957_3958" = bitcast %Map_String_String* %"$m1_3957" to i8*
  %"$_lengthof_call_3959" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_65", i8* %"$$m1_3957_3958")
  %"$gasadd_3960" = add i64 1, %"$_lengthof_call_3959"
  %"$gasrem_3961" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3962" = icmp ugt i64 %"$gasadd_3960", %"$gasrem_3961"
  br i1 %"$gascmp_3962", label %"$out_of_gas_3963", label %"$have_gas_3964"

"$out_of_gas_3963":                               ; preds = %"$have_gas_3955"
  call void @_out_of_gas()
  br label %"$have_gas_3964"

"$have_gas_3964":                                 ; preds = %"$out_of_gas_3963", %"$have_gas_3955"
  %"$consume_3965" = sub i64 %"$gasrem_3961", %"$gasadd_3960"
  store i64 %"$consume_3965", i64* @_gasrem, align 8
  %"$execptr_load_3966" = load i8*, i8** @_execptr, align 8
  %"$m1_3967" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_3967_3968" = bitcast %Map_String_String* %"$m1_3967" to i8*
  %"$put_key2c_3969" = alloca %String, align 8
  %"$key2c_3970" = load %String, %String* %key2c, align 8
  store %String %"$key2c_3970", %String* %"$put_key2c_3969", align 8
  %"$$put_key2c_3969_3971" = bitcast %String* %"$put_key2c_3969" to i8*
  %"$put_v3_3972" = alloca %String, align 8
  %"$v3_3973" = load %String, %String* %v3, align 8
  store %String %"$v3_3973", %String* %"$put_v3_3972", align 8
  %"$$put_v3_3972_3974" = bitcast %String* %"$put_v3_3972" to i8*
  %"$put_call_3975" = call i8* @_put(i8* %"$execptr_load_3966", %_TyDescrTy_Typ* @"$TyDescr_Map_65", i8* %"$$m1_3967_3968", i8* %"$$put_key2c_3969_3971", i8* %"$$put_v3_3972_3974")
  %"$put_3976" = bitcast i8* %"$put_call_3975" to %Map_String_String*
  store %Map_String_String* %"$put_3976", %Map_String_String** %m23, align 8
  %"$gasrem_3977" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3978" = icmp ugt i64 1, %"$gasrem_3977"
  br i1 %"$gascmp_3978", label %"$out_of_gas_3979", label %"$have_gas_3980"

"$out_of_gas_3979":                               ; preds = %"$have_gas_3964"
  call void @_out_of_gas()
  br label %"$have_gas_3980"

"$have_gas_3980":                                 ; preds = %"$out_of_gas_3979", %"$have_gas_3964"
  %"$consume_3981" = sub i64 %"$gasrem_3977", 1
  store i64 %"$consume_3981", i64* @_gasrem, align 8
  %m24 = alloca %Map_String_String*, align 8
  %"$m1_3982" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_3982_3983" = bitcast %Map_String_String* %"$m1_3982" to i8*
  %"$_lengthof_call_3984" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_65", i8* %"$$m1_3982_3983")
  %"$gasadd_3985" = add i64 1, %"$_lengthof_call_3984"
  %"$gasrem_3986" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3987" = icmp ugt i64 %"$gasadd_3985", %"$gasrem_3986"
  br i1 %"$gascmp_3987", label %"$out_of_gas_3988", label %"$have_gas_3989"

"$out_of_gas_3988":                               ; preds = %"$have_gas_3980"
  call void @_out_of_gas()
  br label %"$have_gas_3989"

"$have_gas_3989":                                 ; preds = %"$out_of_gas_3988", %"$have_gas_3980"
  %"$consume_3990" = sub i64 %"$gasrem_3986", %"$gasadd_3985"
  store i64 %"$consume_3990", i64* @_gasrem, align 8
  %"$execptr_load_3991" = load i8*, i8** @_execptr, align 8
  %"$m1_3992" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_3992_3993" = bitcast %Map_String_String* %"$m1_3992" to i8*
  %"$put_key2d_3994" = alloca %String, align 8
  %"$key2d_3995" = load %String, %String* %key2d, align 8
  store %String %"$key2d_3995", %String* %"$put_key2d_3994", align 8
  %"$$put_key2d_3994_3996" = bitcast %String* %"$put_key2d_3994" to i8*
  %"$put_v4_3997" = alloca %String, align 8
  %"$v4_3998" = load %String, %String* %v4, align 8
  store %String %"$v4_3998", %String* %"$put_v4_3997", align 8
  %"$$put_v4_3997_3999" = bitcast %String* %"$put_v4_3997" to i8*
  %"$put_call_4000" = call i8* @_put(i8* %"$execptr_load_3991", %_TyDescrTy_Typ* @"$TyDescr_Map_65", i8* %"$$m1_3992_3993", i8* %"$$put_key2d_3994_3996", i8* %"$$put_v4_3997_3999")
  %"$put_4001" = bitcast i8* %"$put_call_4000" to %Map_String_String*
  store %Map_String_String* %"$put_4001", %Map_String_String** %m24, align 8
  %"$gasrem_4002" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4003" = icmp ugt i64 1, %"$gasrem_4002"
  br i1 %"$gascmp_4003", label %"$out_of_gas_4004", label %"$have_gas_4005"

"$out_of_gas_4004":                               ; preds = %"$have_gas_3989"
  call void @_out_of_gas()
  br label %"$have_gas_4005"

"$have_gas_4005":                                 ; preds = %"$out_of_gas_4004", %"$have_gas_3989"
  %"$consume_4006" = sub i64 %"$gasrem_4002", 1
  store i64 %"$consume_4006", i64* @_gasrem, align 8
  %m11 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$m2_4007" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m25, align 8
  %"$$m2_4007_4008" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_4007" to i8*
  %"$_lengthof_call_4009" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_64", i8* %"$$m2_4007_4008")
  %"$gasadd_4010" = add i64 1, %"$_lengthof_call_4009"
  %"$gasrem_4011" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4012" = icmp ugt i64 %"$gasadd_4010", %"$gasrem_4011"
  br i1 %"$gascmp_4012", label %"$out_of_gas_4013", label %"$have_gas_4014"

"$out_of_gas_4013":                               ; preds = %"$have_gas_4005"
  call void @_out_of_gas()
  br label %"$have_gas_4014"

"$have_gas_4014":                                 ; preds = %"$out_of_gas_4013", %"$have_gas_4005"
  %"$consume_4015" = sub i64 %"$gasrem_4011", %"$gasadd_4010"
  store i64 %"$consume_4015", i64* @_gasrem, align 8
  %"$execptr_load_4016" = load i8*, i8** @_execptr, align 8
  %"$m2_4017" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m25, align 8
  %"$$m2_4017_4018" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_4017" to i8*
  %"$put_key1a_4019" = alloca %String, align 8
  %"$key1a_4020" = load %String, %String* %key1a, align 8
  store %String %"$key1a_4020", %String* %"$put_key1a_4019", align 8
  %"$$put_key1a_4019_4021" = bitcast %String* %"$put_key1a_4019" to i8*
  %"$m21_4022" = load %Map_String_String*, %Map_String_String** %m21, align 8
  %"$$m21_4022_4023" = bitcast %Map_String_String* %"$m21_4022" to i8*
  %"$put_call_4024" = call i8* @_put(i8* %"$execptr_load_4016", %_TyDescrTy_Typ* @"$TyDescr_Map_64", i8* %"$$m2_4017_4018", i8* %"$$put_key1a_4019_4021", i8* %"$$m21_4022_4023")
  %"$put_4025" = bitcast i8* %"$put_call_4024" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$put_4025", %"Map_String_Map_(String)_(String)"** %m11, align 8
  %"$gasrem_4026" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4027" = icmp ugt i64 1, %"$gasrem_4026"
  br i1 %"$gascmp_4027", label %"$out_of_gas_4028", label %"$have_gas_4029"

"$out_of_gas_4028":                               ; preds = %"$have_gas_4014"
  call void @_out_of_gas()
  br label %"$have_gas_4029"

"$have_gas_4029":                                 ; preds = %"$out_of_gas_4028", %"$have_gas_4014"
  %"$consume_4030" = sub i64 %"$gasrem_4026", 1
  store i64 %"$consume_4030", i64* @_gasrem, align 8
  %m12 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$m11_4031" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m11, align 8
  %"$$m11_4031_4032" = bitcast %"Map_String_Map_(String)_(String)"* %"$m11_4031" to i8*
  %"$_lengthof_call_4033" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_64", i8* %"$$m11_4031_4032")
  %"$gasadd_4034" = add i64 1, %"$_lengthof_call_4033"
  %"$gasrem_4035" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4036" = icmp ugt i64 %"$gasadd_4034", %"$gasrem_4035"
  br i1 %"$gascmp_4036", label %"$out_of_gas_4037", label %"$have_gas_4038"

"$out_of_gas_4037":                               ; preds = %"$have_gas_4029"
  call void @_out_of_gas()
  br label %"$have_gas_4038"

"$have_gas_4038":                                 ; preds = %"$out_of_gas_4037", %"$have_gas_4029"
  %"$consume_4039" = sub i64 %"$gasrem_4035", %"$gasadd_4034"
  store i64 %"$consume_4039", i64* @_gasrem, align 8
  %"$execptr_load_4040" = load i8*, i8** @_execptr, align 8
  %"$m11_4041" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m11, align 8
  %"$$m11_4041_4042" = bitcast %"Map_String_Map_(String)_(String)"* %"$m11_4041" to i8*
  %"$put_key1b_4043" = alloca %String, align 8
  %"$key1b_4044" = load %String, %String* %key1b, align 8
  store %String %"$key1b_4044", %String* %"$put_key1b_4043", align 8
  %"$$put_key1b_4043_4045" = bitcast %String* %"$put_key1b_4043" to i8*
  %"$m22_4046" = load %Map_String_String*, %Map_String_String** %m22, align 8
  %"$$m22_4046_4047" = bitcast %Map_String_String* %"$m22_4046" to i8*
  %"$put_call_4048" = call i8* @_put(i8* %"$execptr_load_4040", %_TyDescrTy_Typ* @"$TyDescr_Map_64", i8* %"$$m11_4041_4042", i8* %"$$put_key1b_4043_4045", i8* %"$$m22_4046_4047")
  %"$put_4049" = bitcast i8* %"$put_call_4048" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$put_4049", %"Map_String_Map_(String)_(String)"** %m12, align 8
  %"$gasrem_4050" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4051" = icmp ugt i64 1, %"$gasrem_4050"
  br i1 %"$gascmp_4051", label %"$out_of_gas_4052", label %"$have_gas_4053"

"$out_of_gas_4052":                               ; preds = %"$have_gas_4038"
  call void @_out_of_gas()
  br label %"$have_gas_4053"

"$have_gas_4053":                                 ; preds = %"$out_of_gas_4052", %"$have_gas_4038"
  %"$consume_4054" = sub i64 %"$gasrem_4050", 1
  store i64 %"$consume_4054", i64* @_gasrem, align 8
  %m13 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$m12_4055" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m12, align 8
  %"$$m12_4055_4056" = bitcast %"Map_String_Map_(String)_(String)"* %"$m12_4055" to i8*
  %"$_lengthof_call_4057" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_64", i8* %"$$m12_4055_4056")
  %"$gasadd_4058" = add i64 1, %"$_lengthof_call_4057"
  %"$gasrem_4059" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4060" = icmp ugt i64 %"$gasadd_4058", %"$gasrem_4059"
  br i1 %"$gascmp_4060", label %"$out_of_gas_4061", label %"$have_gas_4062"

"$out_of_gas_4061":                               ; preds = %"$have_gas_4053"
  call void @_out_of_gas()
  br label %"$have_gas_4062"

"$have_gas_4062":                                 ; preds = %"$out_of_gas_4061", %"$have_gas_4053"
  %"$consume_4063" = sub i64 %"$gasrem_4059", %"$gasadd_4058"
  store i64 %"$consume_4063", i64* @_gasrem, align 8
  %"$execptr_load_4064" = load i8*, i8** @_execptr, align 8
  %"$m12_4065" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m12, align 8
  %"$$m12_4065_4066" = bitcast %"Map_String_Map_(String)_(String)"* %"$m12_4065" to i8*
  %"$put_key1c_4067" = alloca %String, align 8
  %"$key1c_4068" = load %String, %String* %key1c, align 8
  store %String %"$key1c_4068", %String* %"$put_key1c_4067", align 8
  %"$$put_key1c_4067_4069" = bitcast %String* %"$put_key1c_4067" to i8*
  %"$m23_4070" = load %Map_String_String*, %Map_String_String** %m23, align 8
  %"$$m23_4070_4071" = bitcast %Map_String_String* %"$m23_4070" to i8*
  %"$put_call_4072" = call i8* @_put(i8* %"$execptr_load_4064", %_TyDescrTy_Typ* @"$TyDescr_Map_64", i8* %"$$m12_4065_4066", i8* %"$$put_key1c_4067_4069", i8* %"$$m23_4070_4071")
  %"$put_4073" = bitcast i8* %"$put_call_4072" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$put_4073", %"Map_String_Map_(String)_(String)"** %m13, align 8
  %"$gasrem_4074" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4075" = icmp ugt i64 1, %"$gasrem_4074"
  br i1 %"$gascmp_4075", label %"$out_of_gas_4076", label %"$have_gas_4077"

"$out_of_gas_4076":                               ; preds = %"$have_gas_4062"
  call void @_out_of_gas()
  br label %"$have_gas_4077"

"$have_gas_4077":                                 ; preds = %"$out_of_gas_4076", %"$have_gas_4062"
  %"$consume_4078" = sub i64 %"$gasrem_4074", 1
  store i64 %"$consume_4078", i64* @_gasrem, align 8
  %m14 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  %"$m13_4079" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m13, align 8
  %"$$m13_4079_4080" = bitcast %"Map_String_Map_(String)_(String)"* %"$m13_4079" to i8*
  %"$_lengthof_call_4081" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_64", i8* %"$$m13_4079_4080")
  %"$gasadd_4082" = add i64 1, %"$_lengthof_call_4081"
  %"$gasrem_4083" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4084" = icmp ugt i64 %"$gasadd_4082", %"$gasrem_4083"
  br i1 %"$gascmp_4084", label %"$out_of_gas_4085", label %"$have_gas_4086"

"$out_of_gas_4085":                               ; preds = %"$have_gas_4077"
  call void @_out_of_gas()
  br label %"$have_gas_4086"

"$have_gas_4086":                                 ; preds = %"$out_of_gas_4085", %"$have_gas_4077"
  %"$consume_4087" = sub i64 %"$gasrem_4083", %"$gasadd_4082"
  store i64 %"$consume_4087", i64* @_gasrem, align 8
  %"$execptr_load_4088" = load i8*, i8** @_execptr, align 8
  %"$m13_4089" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m13, align 8
  %"$$m13_4089_4090" = bitcast %"Map_String_Map_(String)_(String)"* %"$m13_4089" to i8*
  %"$put_key1d_4091" = alloca %String, align 8
  %"$key1d_4092" = load %String, %String* %key1d, align 8
  store %String %"$key1d_4092", %String* %"$put_key1d_4091", align 8
  %"$$put_key1d_4091_4093" = bitcast %String* %"$put_key1d_4091" to i8*
  %"$m24_4094" = load %Map_String_String*, %Map_String_String** %m24, align 8
  %"$$m24_4094_4095" = bitcast %Map_String_String* %"$m24_4094" to i8*
  %"$put_call_4096" = call i8* @_put(i8* %"$execptr_load_4088", %_TyDescrTy_Typ* @"$TyDescr_Map_64", i8* %"$$m13_4089_4090", i8* %"$$put_key1d_4091_4093", i8* %"$$m24_4094_4095")
  %"$put_4097" = bitcast i8* %"$put_call_4096" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$put_4097", %"Map_String_Map_(String)_(String)"** %m14, align 8
  %"$gasrem_4098" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4099" = icmp ugt i64 1, %"$gasrem_4098"
  br i1 %"$gascmp_4099", label %"$out_of_gas_4100", label %"$have_gas_4101"

"$out_of_gas_4100":                               ; preds = %"$have_gas_4086"
  call void @_out_of_gas()
  br label %"$have_gas_4101"

"$have_gas_4101":                                 ; preds = %"$out_of_gas_4100", %"$have_gas_4086"
  %"$consume_4102" = sub i64 %"$gasrem_4098", 1
  store i64 %"$consume_4102", i64* @_gasrem, align 8
  %"$m14_4103" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m14, align 8
  store %"Map_String_Map_(String)_(String)"* %"$m14_4103", %"Map_String_Map_(String)_(String)"** %m2_full, align 8
  %"$m2_full_4104" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2_full, align 8
  %"$$m2_full_4104_4105" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_full_4104" to i8*
  %"$_literal_cost_call_4106" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_64", i8* %"$$m2_full_4104_4105")
  %"$gasrem_4107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4108" = icmp ugt i64 %"$_literal_cost_call_4106", %"$gasrem_4107"
  br i1 %"$gascmp_4108", label %"$out_of_gas_4109", label %"$have_gas_4110"

"$out_of_gas_4109":                               ; preds = %"$have_gas_4101"
  call void @_out_of_gas()
  br label %"$have_gas_4110"

"$have_gas_4110":                                 ; preds = %"$out_of_gas_4109", %"$have_gas_4101"
  %"$consume_4111" = sub i64 %"$gasrem_4107", %"$_literal_cost_call_4106"
  store i64 %"$consume_4111", i64* @_gasrem, align 8
  %"$execptr_load_4112" = load i8*, i8** @_execptr, align 8
  %"$m2_full_4114" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2_full, align 8
  %"$update_value_4115" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_full_4114" to i8*
  call void @_update_field(i8* %"$execptr_load_4112", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_4113", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 0, i8* null, i8* %"$update_value_4115")
  ret void
}

define void @t15(i8* %0) {
entry:
  %"$_amount_4117" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4118" = bitcast i8* %"$_amount_4117" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4118", align 8
  %"$_origin_4119" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4120" = bitcast i8* %"$_origin_4119" to [20 x i8]*
  %"$_sender_4121" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4122" = bitcast i8* %"$_sender_4121" to [20 x i8]*
  call void @"$t15_3395"(%Uint128 %_amount, [20 x i8]* %"$_origin_4120", [20 x i8]* %"$_sender_4122")
  ret void
}

define internal void @"$t16_4123"(%Uint128 %_amount, [20 x i8]* %"$_origin_4124", [20 x i8]* %"$_sender_4125") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4124", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4125", align 1
  %"$gasrem_4126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4127" = icmp ugt i64 1, %"$gasrem_4126"
  br i1 %"$gascmp_4127", label %"$out_of_gas_4128", label %"$have_gas_4129"

"$out_of_gas_4128":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4129"

"$have_gas_4129":                                 ; preds = %"$out_of_gas_4128", %entry
  %"$consume_4130" = sub i64 %"$gasrem_4126", 1
  store i64 %"$consume_4130", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_4131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4132" = icmp ugt i64 1, %"$gasrem_4131"
  br i1 %"$gascmp_4132", label %"$out_of_gas_4133", label %"$have_gas_4134"

"$out_of_gas_4133":                               ; preds = %"$have_gas_4129"
  call void @_out_of_gas()
  br label %"$have_gas_4134"

"$have_gas_4134":                                 ; preds = %"$out_of_gas_4133", %"$have_gas_4129"
  %"$consume_4135" = sub i64 %"$gasrem_4131", 1
  store i64 %"$consume_4135", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4136", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %"$gasrem_4137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4138" = icmp ugt i64 1, %"$gasrem_4137"
  br i1 %"$gascmp_4138", label %"$out_of_gas_4139", label %"$have_gas_4140"

"$out_of_gas_4139":                               ; preds = %"$have_gas_4134"
  call void @_out_of_gas()
  br label %"$have_gas_4140"

"$have_gas_4140":                                 ; preds = %"$out_of_gas_4139", %"$have_gas_4134"
  %"$consume_4141" = sub i64 %"$gasrem_4137", 1
  store i64 %"$consume_4141", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  %"$gasrem_4142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4143" = icmp ugt i64 1, %"$gasrem_4142"
  br i1 %"$gascmp_4143", label %"$out_of_gas_4144", label %"$have_gas_4145"

"$out_of_gas_4144":                               ; preds = %"$have_gas_4140"
  call void @_out_of_gas()
  br label %"$have_gas_4145"

"$have_gas_4145":                                 ; preds = %"$out_of_gas_4144", %"$have_gas_4140"
  %"$consume_4146" = sub i64 %"$gasrem_4142", 1
  store i64 %"$consume_4146", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4147", i32 0, i32 0), i32 5 }, %String* %key1a, align 8
  %"$gasrem_4148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4149" = icmp ugt i64 1, %"$gasrem_4148"
  br i1 %"$gascmp_4149", label %"$out_of_gas_4150", label %"$have_gas_4151"

"$out_of_gas_4150":                               ; preds = %"$have_gas_4145"
  call void @_out_of_gas()
  br label %"$have_gas_4151"

"$have_gas_4151":                                 ; preds = %"$out_of_gas_4150", %"$have_gas_4145"
  %"$consume_4152" = sub i64 %"$gasrem_4148", 1
  store i64 %"$consume_4152", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  %"$gasrem_4153" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4154" = icmp ugt i64 1, %"$gasrem_4153"
  br i1 %"$gascmp_4154", label %"$out_of_gas_4155", label %"$have_gas_4156"

"$out_of_gas_4155":                               ; preds = %"$have_gas_4151"
  call void @_out_of_gas()
  br label %"$have_gas_4156"

"$have_gas_4156":                                 ; preds = %"$out_of_gas_4155", %"$have_gas_4151"
  %"$consume_4157" = sub i64 %"$gasrem_4153", 1
  store i64 %"$consume_4157", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4158", i32 0, i32 0), i32 5 }, %String* %key2a, align 8
  %"$gasrem_4159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4160" = icmp ugt i64 1, %"$gasrem_4159"
  br i1 %"$gascmp_4160", label %"$out_of_gas_4161", label %"$have_gas_4162"

"$out_of_gas_4161":                               ; preds = %"$have_gas_4156"
  call void @_out_of_gas()
  br label %"$have_gas_4162"

"$have_gas_4162":                                 ; preds = %"$out_of_gas_4161", %"$have_gas_4156"
  %"$consume_4163" = sub i64 %"$gasrem_4159", 1
  store i64 %"$consume_4163", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  %"$gasrem_4164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4165" = icmp ugt i64 1, %"$gasrem_4164"
  br i1 %"$gascmp_4165", label %"$out_of_gas_4166", label %"$have_gas_4167"

"$out_of_gas_4166":                               ; preds = %"$have_gas_4162"
  call void @_out_of_gas()
  br label %"$have_gas_4167"

"$have_gas_4167":                                 ; preds = %"$out_of_gas_4166", %"$have_gas_4162"
  %"$consume_4168" = sub i64 %"$gasrem_4164", 1
  store i64 %"$consume_4168", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4169", i32 0, i32 0), i32 5 }, %String* %key1b, align 8
  %"$gasrem_4170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4171" = icmp ugt i64 1, %"$gasrem_4170"
  br i1 %"$gascmp_4171", label %"$out_of_gas_4172", label %"$have_gas_4173"

"$out_of_gas_4172":                               ; preds = %"$have_gas_4167"
  call void @_out_of_gas()
  br label %"$have_gas_4173"

"$have_gas_4173":                                 ; preds = %"$out_of_gas_4172", %"$have_gas_4167"
  %"$consume_4174" = sub i64 %"$gasrem_4170", 1
  store i64 %"$consume_4174", i64* @_gasrem, align 8
  %key2b = alloca %String, align 8
  %"$gasrem_4175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4176" = icmp ugt i64 1, %"$gasrem_4175"
  br i1 %"$gascmp_4176", label %"$out_of_gas_4177", label %"$have_gas_4178"

"$out_of_gas_4177":                               ; preds = %"$have_gas_4173"
  call void @_out_of_gas()
  br label %"$have_gas_4178"

"$have_gas_4178":                                 ; preds = %"$out_of_gas_4177", %"$have_gas_4173"
  %"$consume_4179" = sub i64 %"$gasrem_4175", 1
  store i64 %"$consume_4179", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4180", i32 0, i32 0), i32 5 }, %String* %key2b, align 8
  %"$gasrem_4181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4182" = icmp ugt i64 1, %"$gasrem_4181"
  br i1 %"$gascmp_4182", label %"$out_of_gas_4183", label %"$have_gas_4184"

"$out_of_gas_4183":                               ; preds = %"$have_gas_4178"
  call void @_out_of_gas()
  br label %"$have_gas_4184"

"$have_gas_4184":                                 ; preds = %"$out_of_gas_4183", %"$have_gas_4178"
  %"$consume_4185" = sub i64 %"$gasrem_4181", 1
  store i64 %"$consume_4185", i64* @_gasrem, align 8
  %key1c = alloca %String, align 8
  %"$gasrem_4186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4187" = icmp ugt i64 1, %"$gasrem_4186"
  br i1 %"$gascmp_4187", label %"$out_of_gas_4188", label %"$have_gas_4189"

"$out_of_gas_4188":                               ; preds = %"$have_gas_4184"
  call void @_out_of_gas()
  br label %"$have_gas_4189"

"$have_gas_4189":                                 ; preds = %"$out_of_gas_4188", %"$have_gas_4184"
  %"$consume_4190" = sub i64 %"$gasrem_4186", 1
  store i64 %"$consume_4190", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4191", i32 0, i32 0), i32 5 }, %String* %key1c, align 8
  %"$gasrem_4192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4193" = icmp ugt i64 1, %"$gasrem_4192"
  br i1 %"$gascmp_4193", label %"$out_of_gas_4194", label %"$have_gas_4195"

"$out_of_gas_4194":                               ; preds = %"$have_gas_4189"
  call void @_out_of_gas()
  br label %"$have_gas_4195"

"$have_gas_4195":                                 ; preds = %"$out_of_gas_4194", %"$have_gas_4189"
  %"$consume_4196" = sub i64 %"$gasrem_4192", 1
  store i64 %"$consume_4196", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  %"$gasrem_4197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4198" = icmp ugt i64 1, %"$gasrem_4197"
  br i1 %"$gascmp_4198", label %"$out_of_gas_4199", label %"$have_gas_4200"

"$out_of_gas_4199":                               ; preds = %"$have_gas_4195"
  call void @_out_of_gas()
  br label %"$have_gas_4200"

"$have_gas_4200":                                 ; preds = %"$out_of_gas_4199", %"$have_gas_4195"
  %"$consume_4201" = sub i64 %"$gasrem_4197", 1
  store i64 %"$consume_4201", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4202", i32 0, i32 0), i32 5 }, %String* %key2c, align 8
  %"$gasrem_4203" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4204" = icmp ugt i64 1, %"$gasrem_4203"
  br i1 %"$gascmp_4204", label %"$out_of_gas_4205", label %"$have_gas_4206"

"$out_of_gas_4205":                               ; preds = %"$have_gas_4200"
  call void @_out_of_gas()
  br label %"$have_gas_4206"

"$have_gas_4206":                                 ; preds = %"$out_of_gas_4205", %"$have_gas_4200"
  %"$consume_4207" = sub i64 %"$gasrem_4203", 1
  store i64 %"$consume_4207", i64* @_gasrem, align 8
  %key1d = alloca %String, align 8
  %"$gasrem_4208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4209" = icmp ugt i64 1, %"$gasrem_4208"
  br i1 %"$gascmp_4209", label %"$out_of_gas_4210", label %"$have_gas_4211"

"$out_of_gas_4210":                               ; preds = %"$have_gas_4206"
  call void @_out_of_gas()
  br label %"$have_gas_4211"

"$have_gas_4211":                                 ; preds = %"$out_of_gas_4210", %"$have_gas_4206"
  %"$consume_4212" = sub i64 %"$gasrem_4208", 1
  store i64 %"$consume_4212", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4213", i32 0, i32 0), i32 5 }, %String* %key1d, align 8
  %"$gasrem_4214" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4215" = icmp ugt i64 1, %"$gasrem_4214"
  br i1 %"$gascmp_4215", label %"$out_of_gas_4216", label %"$have_gas_4217"

"$out_of_gas_4216":                               ; preds = %"$have_gas_4211"
  call void @_out_of_gas()
  br label %"$have_gas_4217"

"$have_gas_4217":                                 ; preds = %"$out_of_gas_4216", %"$have_gas_4211"
  %"$consume_4218" = sub i64 %"$gasrem_4214", 1
  store i64 %"$consume_4218", i64* @_gasrem, align 8
  %key2d = alloca %String, align 8
  %"$gasrem_4219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4220" = icmp ugt i64 1, %"$gasrem_4219"
  br i1 %"$gascmp_4220", label %"$out_of_gas_4221", label %"$have_gas_4222"

"$out_of_gas_4221":                               ; preds = %"$have_gas_4217"
  call void @_out_of_gas()
  br label %"$have_gas_4222"

"$have_gas_4222":                                 ; preds = %"$out_of_gas_4221", %"$have_gas_4217"
  %"$consume_4223" = sub i64 %"$gasrem_4219", 1
  store i64 %"$consume_4223", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4224", i32 0, i32 0), i32 5 }, %String* %key2d, align 8
  %t1 = alloca %TName_Option_String*, align 8
  %"$indices_buf_4225_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4225_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4225_salloc_load", i64 32)
  %"$indices_buf_4225_salloc" = bitcast i8* %"$indices_buf_4225_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4225" = bitcast [32 x i8]* %"$indices_buf_4225_salloc" to i8*
  %"$key1a_4226" = load %String, %String* %key1a, align 8
  %"$indices_gep_4227" = getelementptr i8, i8* %"$indices_buf_4225", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4227" to %String*
  store %String %"$key1a_4226", %String* %indices_cast, align 8
  %"$key2a_4228" = load %String, %String* %key2a, align 8
  %"$indices_gep_4229" = getelementptr i8, i8* %"$indices_buf_4225", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_4229" to %String*
  store %String %"$key2a_4228", %String* %indices_cast1, align 8
  %"$execptr_load_4231" = load i8*, i8** @_execptr, align 8
  %"$t1_call_4232" = call i8* @_fetch_field(i8* %"$execptr_load_4231", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_4230", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 2, i8* %"$indices_buf_4225", i32 1)
  %"$t1_4233" = bitcast i8* %"$t1_call_4232" to %TName_Option_String*
  store %TName_Option_String* %"$t1_4233", %TName_Option_String** %t1, align 8
  %"$t1_4234" = load %TName_Option_String*, %TName_Option_String** %t1, align 8
  %"$$t1_4234_4235" = bitcast %TName_Option_String* %"$t1_4234" to i8*
  %"$_literal_cost_call_4236" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_60", i8* %"$$t1_4234_4235")
  %"$gasadd_4237" = add i64 %"$_literal_cost_call_4236", 0
  %"$gasadd_4238" = add i64 %"$gasadd_4237", 2
  %"$gasrem_4239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4240" = icmp ugt i64 %"$gasadd_4238", %"$gasrem_4239"
  br i1 %"$gascmp_4240", label %"$out_of_gas_4241", label %"$have_gas_4242"

"$out_of_gas_4241":                               ; preds = %"$have_gas_4222"
  call void @_out_of_gas()
  br label %"$have_gas_4242"

"$have_gas_4242":                                 ; preds = %"$out_of_gas_4241", %"$have_gas_4222"
  %"$consume_4243" = sub i64 %"$gasrem_4239", %"$gasadd_4238"
  store i64 %"$consume_4243", i64* @_gasrem, align 8
  %t2 = alloca %TName_Option_String*, align 8
  %"$indices_buf_4244_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4244_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4244_salloc_load", i64 32)
  %"$indices_buf_4244_salloc" = bitcast i8* %"$indices_buf_4244_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4244" = bitcast [32 x i8]* %"$indices_buf_4244_salloc" to i8*
  %"$key1b_4245" = load %String, %String* %key1b, align 8
  %"$indices_gep_4246" = getelementptr i8, i8* %"$indices_buf_4244", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_4246" to %String*
  store %String %"$key1b_4245", %String* %indices_cast2, align 8
  %"$key2b_4247" = load %String, %String* %key2b, align 8
  %"$indices_gep_4248" = getelementptr i8, i8* %"$indices_buf_4244", i32 16
  %indices_cast3 = bitcast i8* %"$indices_gep_4248" to %String*
  store %String %"$key2b_4247", %String* %indices_cast3, align 8
  %"$execptr_load_4250" = load i8*, i8** @_execptr, align 8
  %"$t2_call_4251" = call i8* @_fetch_field(i8* %"$execptr_load_4250", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_4249", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 2, i8* %"$indices_buf_4244", i32 1)
  %"$t2_4252" = bitcast i8* %"$t2_call_4251" to %TName_Option_String*
  store %TName_Option_String* %"$t2_4252", %TName_Option_String** %t2, align 8
  %"$t2_4253" = load %TName_Option_String*, %TName_Option_String** %t2, align 8
  %"$$t2_4253_4254" = bitcast %TName_Option_String* %"$t2_4253" to i8*
  %"$_literal_cost_call_4255" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_60", i8* %"$$t2_4253_4254")
  %"$gasadd_4256" = add i64 %"$_literal_cost_call_4255", 0
  %"$gasadd_4257" = add i64 %"$gasadd_4256", 2
  %"$gasrem_4258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4259" = icmp ugt i64 %"$gasadd_4257", %"$gasrem_4258"
  br i1 %"$gascmp_4259", label %"$out_of_gas_4260", label %"$have_gas_4261"

"$out_of_gas_4260":                               ; preds = %"$have_gas_4242"
  call void @_out_of_gas()
  br label %"$have_gas_4261"

"$have_gas_4261":                                 ; preds = %"$out_of_gas_4260", %"$have_gas_4242"
  %"$consume_4262" = sub i64 %"$gasrem_4258", %"$gasadd_4257"
  store i64 %"$consume_4262", i64* @_gasrem, align 8
  %t3 = alloca %TName_Option_String*, align 8
  %"$indices_buf_4263_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4263_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4263_salloc_load", i64 32)
  %"$indices_buf_4263_salloc" = bitcast i8* %"$indices_buf_4263_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4263" = bitcast [32 x i8]* %"$indices_buf_4263_salloc" to i8*
  %"$key1c_4264" = load %String, %String* %key1c, align 8
  %"$indices_gep_4265" = getelementptr i8, i8* %"$indices_buf_4263", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_4265" to %String*
  store %String %"$key1c_4264", %String* %indices_cast4, align 8
  %"$key2c_4266" = load %String, %String* %key2c, align 8
  %"$indices_gep_4267" = getelementptr i8, i8* %"$indices_buf_4263", i32 16
  %indices_cast5 = bitcast i8* %"$indices_gep_4267" to %String*
  store %String %"$key2c_4266", %String* %indices_cast5, align 8
  %"$execptr_load_4269" = load i8*, i8** @_execptr, align 8
  %"$t3_call_4270" = call i8* @_fetch_field(i8* %"$execptr_load_4269", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_4268", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 2, i8* %"$indices_buf_4263", i32 1)
  %"$t3_4271" = bitcast i8* %"$t3_call_4270" to %TName_Option_String*
  store %TName_Option_String* %"$t3_4271", %TName_Option_String** %t3, align 8
  %"$t3_4272" = load %TName_Option_String*, %TName_Option_String** %t3, align 8
  %"$$t3_4272_4273" = bitcast %TName_Option_String* %"$t3_4272" to i8*
  %"$_literal_cost_call_4274" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_60", i8* %"$$t3_4272_4273")
  %"$gasadd_4275" = add i64 %"$_literal_cost_call_4274", 0
  %"$gasadd_4276" = add i64 %"$gasadd_4275", 2
  %"$gasrem_4277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4278" = icmp ugt i64 %"$gasadd_4276", %"$gasrem_4277"
  br i1 %"$gascmp_4278", label %"$out_of_gas_4279", label %"$have_gas_4280"

"$out_of_gas_4279":                               ; preds = %"$have_gas_4261"
  call void @_out_of_gas()
  br label %"$have_gas_4280"

"$have_gas_4280":                                 ; preds = %"$out_of_gas_4279", %"$have_gas_4261"
  %"$consume_4281" = sub i64 %"$gasrem_4277", %"$gasadd_4276"
  store i64 %"$consume_4281", i64* @_gasrem, align 8
  %t4 = alloca %TName_Option_String*, align 8
  %"$indices_buf_4282_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4282_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4282_salloc_load", i64 32)
  %"$indices_buf_4282_salloc" = bitcast i8* %"$indices_buf_4282_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4282" = bitcast [32 x i8]* %"$indices_buf_4282_salloc" to i8*
  %"$key1d_4283" = load %String, %String* %key1d, align 8
  %"$indices_gep_4284" = getelementptr i8, i8* %"$indices_buf_4282", i32 0
  %indices_cast6 = bitcast i8* %"$indices_gep_4284" to %String*
  store %String %"$key1d_4283", %String* %indices_cast6, align 8
  %"$key2d_4285" = load %String, %String* %key2d, align 8
  %"$indices_gep_4286" = getelementptr i8, i8* %"$indices_buf_4282", i32 16
  %indices_cast7 = bitcast i8* %"$indices_gep_4286" to %String*
  store %String %"$key2d_4285", %String* %indices_cast7, align 8
  %"$execptr_load_4288" = load i8*, i8** @_execptr, align 8
  %"$t4_call_4289" = call i8* @_fetch_field(i8* %"$execptr_load_4288", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_4287", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_64", i32 2, i8* %"$indices_buf_4282", i32 1)
  %"$t4_4290" = bitcast i8* %"$t4_call_4289" to %TName_Option_String*
  store %TName_Option_String* %"$t4_4290", %TName_Option_String** %t4, align 8
  %"$t4_4291" = load %TName_Option_String*, %TName_Option_String** %t4, align 8
  %"$$t4_4291_4292" = bitcast %TName_Option_String* %"$t4_4291" to i8*
  %"$_literal_cost_call_4293" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_60", i8* %"$$t4_4291_4292")
  %"$gasadd_4294" = add i64 %"$_literal_cost_call_4293", 0
  %"$gasadd_4295" = add i64 %"$gasadd_4294", 2
  %"$gasrem_4296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4297" = icmp ugt i64 %"$gasadd_4295", %"$gasrem_4296"
  br i1 %"$gascmp_4297", label %"$out_of_gas_4298", label %"$have_gas_4299"

"$out_of_gas_4298":                               ; preds = %"$have_gas_4280"
  call void @_out_of_gas()
  br label %"$have_gas_4299"

"$have_gas_4299":                                 ; preds = %"$out_of_gas_4298", %"$have_gas_4280"
  %"$consume_4300" = sub i64 %"$gasrem_4296", %"$gasadd_4295"
  store i64 %"$consume_4300", i64* @_gasrem, align 8
  %"$gasrem_4301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4302" = icmp ugt i64 1, %"$gasrem_4301"
  br i1 %"$gascmp_4302", label %"$out_of_gas_4303", label %"$have_gas_4304"

"$out_of_gas_4303":                               ; preds = %"$have_gas_4299"
  call void @_out_of_gas()
  br label %"$have_gas_4304"

"$have_gas_4304":                                 ; preds = %"$out_of_gas_4303", %"$have_gas_4299"
  %"$consume_4305" = sub i64 %"$gasrem_4301", 1
  store i64 %"$consume_4305", i64* @_gasrem, align 8
  %v1 = alloca %String, align 8
  %"$gasrem_4306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4307" = icmp ugt i64 1, %"$gasrem_4306"
  br i1 %"$gascmp_4307", label %"$out_of_gas_4308", label %"$have_gas_4309"

"$out_of_gas_4308":                               ; preds = %"$have_gas_4304"
  call void @_out_of_gas()
  br label %"$have_gas_4309"

"$have_gas_4309":                                 ; preds = %"$out_of_gas_4308", %"$have_gas_4304"
  %"$consume_4310" = sub i64 %"$gasrem_4306", 1
  store i64 %"$consume_4310", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4311", i32 0, i32 0), i32 3 }, %String* %v1, align 8
  %"$gasrem_4312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4313" = icmp ugt i64 1, %"$gasrem_4312"
  br i1 %"$gascmp_4313", label %"$out_of_gas_4314", label %"$have_gas_4315"

"$out_of_gas_4314":                               ; preds = %"$have_gas_4309"
  call void @_out_of_gas()
  br label %"$have_gas_4315"

"$have_gas_4315":                                 ; preds = %"$out_of_gas_4314", %"$have_gas_4309"
  %"$consume_4316" = sub i64 %"$gasrem_4312", 1
  store i64 %"$consume_4316", i64* @_gasrem, align 8
  %v2 = alloca %String, align 8
  %"$gasrem_4317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4318" = icmp ugt i64 1, %"$gasrem_4317"
  br i1 %"$gascmp_4318", label %"$out_of_gas_4319", label %"$have_gas_4320"

"$out_of_gas_4319":                               ; preds = %"$have_gas_4315"
  call void @_out_of_gas()
  br label %"$have_gas_4320"

"$have_gas_4320":                                 ; preds = %"$out_of_gas_4319", %"$have_gas_4315"
  %"$consume_4321" = sub i64 %"$gasrem_4317", 1
  store i64 %"$consume_4321", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4322", i32 0, i32 0), i32 3 }, %String* %v2, align 8
  %"$gasrem_4323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4324" = icmp ugt i64 1, %"$gasrem_4323"
  br i1 %"$gascmp_4324", label %"$out_of_gas_4325", label %"$have_gas_4326"

"$out_of_gas_4325":                               ; preds = %"$have_gas_4320"
  call void @_out_of_gas()
  br label %"$have_gas_4326"

"$have_gas_4326":                                 ; preds = %"$out_of_gas_4325", %"$have_gas_4320"
  %"$consume_4327" = sub i64 %"$gasrem_4323", 1
  store i64 %"$consume_4327", i64* @_gasrem, align 8
  %v3 = alloca %String, align 8
  %"$gasrem_4328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4329" = icmp ugt i64 1, %"$gasrem_4328"
  br i1 %"$gascmp_4329", label %"$out_of_gas_4330", label %"$have_gas_4331"

"$out_of_gas_4330":                               ; preds = %"$have_gas_4326"
  call void @_out_of_gas()
  br label %"$have_gas_4331"

"$have_gas_4331":                                 ; preds = %"$out_of_gas_4330", %"$have_gas_4326"
  %"$consume_4332" = sub i64 %"$gasrem_4328", 1
  store i64 %"$consume_4332", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4333", i32 0, i32 0), i32 3 }, %String* %v3, align 8
  %"$gasrem_4334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4335" = icmp ugt i64 1, %"$gasrem_4334"
  br i1 %"$gascmp_4335", label %"$out_of_gas_4336", label %"$have_gas_4337"

"$out_of_gas_4336":                               ; preds = %"$have_gas_4331"
  call void @_out_of_gas()
  br label %"$have_gas_4337"

"$have_gas_4337":                                 ; preds = %"$out_of_gas_4336", %"$have_gas_4331"
  %"$consume_4338" = sub i64 %"$gasrem_4334", 1
  store i64 %"$consume_4338", i64* @_gasrem, align 8
  %v4 = alloca %String, align 8
  %"$gasrem_4339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4340" = icmp ugt i64 1, %"$gasrem_4339"
  br i1 %"$gascmp_4340", label %"$out_of_gas_4341", label %"$have_gas_4342"

"$out_of_gas_4341":                               ; preds = %"$have_gas_4337"
  call void @_out_of_gas()
  br label %"$have_gas_4342"

"$have_gas_4342":                                 ; preds = %"$out_of_gas_4341", %"$have_gas_4337"
  %"$consume_4343" = sub i64 %"$gasrem_4339", 1
  store i64 %"$consume_4343", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4344", i32 0, i32 0), i32 3 }, %String* %v4, align 8
  %"$gasrem_4345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4346" = icmp ugt i64 1, %"$gasrem_4345"
  br i1 %"$gascmp_4346", label %"$out_of_gas_4347", label %"$have_gas_4348"

"$out_of_gas_4347":                               ; preds = %"$have_gas_4342"
  call void @_out_of_gas()
  br label %"$have_gas_4348"

"$have_gas_4348":                                 ; preds = %"$out_of_gas_4347", %"$have_gas_4342"
  %"$consume_4349" = sub i64 %"$gasrem_4345", 1
  store i64 %"$consume_4349", i64* @_gasrem, align 8
  %b1 = alloca %TName_Bool*, align 8
  %"$gasrem_4350" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4351" = icmp ugt i64 2, %"$gasrem_4350"
  br i1 %"$gascmp_4351", label %"$out_of_gas_4352", label %"$have_gas_4353"

"$out_of_gas_4352":                               ; preds = %"$have_gas_4348"
  call void @_out_of_gas()
  br label %"$have_gas_4353"

"$have_gas_4353":                                 ; preds = %"$out_of_gas_4352", %"$have_gas_4348"
  %"$consume_4354" = sub i64 %"$gasrem_4350", 2
  store i64 %"$consume_4354", i64* @_gasrem, align 8
  %"$t1_4356" = load %TName_Option_String*, %TName_Option_String** %t1, align 8
  %"$t1_tag_4357" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t1_4356", i32 0, i32 0
  %"$t1_tag_4358" = load i8, i8* %"$t1_tag_4357", align 1
  switch i8 %"$t1_tag_4358", label %"$empty_default_4359" [
    i8 0, label %"$Some_4360"
    i8 1, label %"$None_4383"
  ]

"$Some_4360":                                     ; preds = %"$have_gas_4353"
  %"$t1_4361" = bitcast %TName_Option_String* %"$t1_4356" to %CName_Some_String*
  %"$t1v_gep_4362" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t1_4361", i32 0, i32 1
  %"$t1v_load_4363" = load %String, %String* %"$t1v_gep_4362", align 8
  %t1v = alloca %String, align 8
  store %String %"$t1v_load_4363", %String* %t1v, align 8
  %"$_literal_cost_t1v_4364" = alloca %String, align 8
  %"$t1v_4365" = load %String, %String* %t1v, align 8
  store %String %"$t1v_4365", %String* %"$_literal_cost_t1v_4364", align 8
  %"$$_literal_cost_t1v_4364_4366" = bitcast %String* %"$_literal_cost_t1v_4364" to i8*
  %"$_literal_cost_call_4367" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_t1v_4364_4366")
  %"$_literal_cost_v1_4368" = alloca %String, align 8
  %"$v1_4369" = load %String, %String* %v1, align 8
  store %String %"$v1_4369", %String* %"$_literal_cost_v1_4368", align 8
  %"$$_literal_cost_v1_4368_4370" = bitcast %String* %"$_literal_cost_v1_4368" to i8*
  %"$_literal_cost_call_4371" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_v1_4368_4370")
  %"$gasmin_4372" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_4367", i64 %"$_literal_cost_call_4371")
  %"$gasrem_4373" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4374" = icmp ugt i64 %"$gasmin_4372", %"$gasrem_4373"
  br i1 %"$gascmp_4374", label %"$out_of_gas_4375", label %"$have_gas_4376"

"$out_of_gas_4375":                               ; preds = %"$Some_4360"
  call void @_out_of_gas()
  br label %"$have_gas_4376"

"$have_gas_4376":                                 ; preds = %"$out_of_gas_4375", %"$Some_4360"
  %"$consume_4377" = sub i64 %"$gasrem_4373", %"$gasmin_4372"
  store i64 %"$consume_4377", i64* @_gasrem, align 8
  %"$execptr_load_4378" = load i8*, i8** @_execptr, align 8
  %"$t1v_4379" = load %String, %String* %t1v, align 8
  %"$v1_4380" = load %String, %String* %v1, align 8
  %"$eq_call_4381" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_4378", %String %"$t1v_4379", %String %"$v1_4380")
  store %TName_Bool* %"$eq_call_4381", %TName_Bool** %b1, align 8
  br label %"$matchsucc_4355"

"$None_4383":                                     ; preds = %"$have_gas_4353"
  %"$t1_4384" = bitcast %TName_Option_String* %"$t1_4356" to %CName_None_String*
  %"$gasrem_4385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4386" = icmp ugt i64 1, %"$gasrem_4385"
  br i1 %"$gascmp_4386", label %"$out_of_gas_4387", label %"$have_gas_4388"

"$out_of_gas_4387":                               ; preds = %"$None_4383"
  call void @_out_of_gas()
  br label %"$have_gas_4388"

"$have_gas_4388":                                 ; preds = %"$out_of_gas_4387", %"$None_4383"
  %"$consume_4389" = sub i64 %"$gasrem_4385", 1
  store i64 %"$consume_4389", i64* @_gasrem, align 8
  %"$adtval_4390_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4390_salloc" = call i8* @_salloc(i8* %"$adtval_4390_load", i64 1)
  %"$adtval_4390" = bitcast i8* %"$adtval_4390_salloc" to %CName_False*
  %"$adtgep_4391" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_4390", i32 0, i32 0
  store i8 1, i8* %"$adtgep_4391", align 1
  %"$adtptr_4392" = bitcast %CName_False* %"$adtval_4390" to %TName_Bool*
  store %TName_Bool* %"$adtptr_4392", %TName_Bool** %b1, align 8
  br label %"$matchsucc_4355"

"$empty_default_4359":                            ; preds = %"$have_gas_4353"
  br label %"$matchsucc_4355"

"$matchsucc_4355":                                ; preds = %"$have_gas_4388", %"$have_gas_4376", %"$empty_default_4359"
  %"$gasrem_4393" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4394" = icmp ugt i64 1, %"$gasrem_4393"
  br i1 %"$gascmp_4394", label %"$out_of_gas_4395", label %"$have_gas_4396"

"$out_of_gas_4395":                               ; preds = %"$matchsucc_4355"
  call void @_out_of_gas()
  br label %"$have_gas_4396"

"$have_gas_4396":                                 ; preds = %"$out_of_gas_4395", %"$matchsucc_4355"
  %"$consume_4397" = sub i64 %"$gasrem_4393", 1
  store i64 %"$consume_4397", i64* @_gasrem, align 8
  %b2 = alloca %TName_Bool*, align 8
  %"$gasrem_4398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4399" = icmp ugt i64 2, %"$gasrem_4398"
  br i1 %"$gascmp_4399", label %"$out_of_gas_4400", label %"$have_gas_4401"

"$out_of_gas_4400":                               ; preds = %"$have_gas_4396"
  call void @_out_of_gas()
  br label %"$have_gas_4401"

"$have_gas_4401":                                 ; preds = %"$out_of_gas_4400", %"$have_gas_4396"
  %"$consume_4402" = sub i64 %"$gasrem_4398", 2
  store i64 %"$consume_4402", i64* @_gasrem, align 8
  %"$t2_4404" = load %TName_Option_String*, %TName_Option_String** %t2, align 8
  %"$t2_tag_4405" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t2_4404", i32 0, i32 0
  %"$t2_tag_4406" = load i8, i8* %"$t2_tag_4405", align 1
  switch i8 %"$t2_tag_4406", label %"$empty_default_4407" [
    i8 0, label %"$Some_4408"
    i8 1, label %"$None_4431"
  ]

"$Some_4408":                                     ; preds = %"$have_gas_4401"
  %"$t2_4409" = bitcast %TName_Option_String* %"$t2_4404" to %CName_Some_String*
  %"$t2v_gep_4410" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t2_4409", i32 0, i32 1
  %"$t2v_load_4411" = load %String, %String* %"$t2v_gep_4410", align 8
  %t2v = alloca %String, align 8
  store %String %"$t2v_load_4411", %String* %t2v, align 8
  %"$_literal_cost_t2v_4412" = alloca %String, align 8
  %"$t2v_4413" = load %String, %String* %t2v, align 8
  store %String %"$t2v_4413", %String* %"$_literal_cost_t2v_4412", align 8
  %"$$_literal_cost_t2v_4412_4414" = bitcast %String* %"$_literal_cost_t2v_4412" to i8*
  %"$_literal_cost_call_4415" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_t2v_4412_4414")
  %"$_literal_cost_v2_4416" = alloca %String, align 8
  %"$v2_4417" = load %String, %String* %v2, align 8
  store %String %"$v2_4417", %String* %"$_literal_cost_v2_4416", align 8
  %"$$_literal_cost_v2_4416_4418" = bitcast %String* %"$_literal_cost_v2_4416" to i8*
  %"$_literal_cost_call_4419" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_v2_4416_4418")
  %"$gasmin_4420" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_4415", i64 %"$_literal_cost_call_4419")
  %"$gasrem_4421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4422" = icmp ugt i64 %"$gasmin_4420", %"$gasrem_4421"
  br i1 %"$gascmp_4422", label %"$out_of_gas_4423", label %"$have_gas_4424"

"$out_of_gas_4423":                               ; preds = %"$Some_4408"
  call void @_out_of_gas()
  br label %"$have_gas_4424"

"$have_gas_4424":                                 ; preds = %"$out_of_gas_4423", %"$Some_4408"
  %"$consume_4425" = sub i64 %"$gasrem_4421", %"$gasmin_4420"
  store i64 %"$consume_4425", i64* @_gasrem, align 8
  %"$execptr_load_4426" = load i8*, i8** @_execptr, align 8
  %"$t2v_4427" = load %String, %String* %t2v, align 8
  %"$v2_4428" = load %String, %String* %v2, align 8
  %"$eq_call_4429" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_4426", %String %"$t2v_4427", %String %"$v2_4428")
  store %TName_Bool* %"$eq_call_4429", %TName_Bool** %b2, align 8
  br label %"$matchsucc_4403"

"$None_4431":                                     ; preds = %"$have_gas_4401"
  %"$t2_4432" = bitcast %TName_Option_String* %"$t2_4404" to %CName_None_String*
  %"$gasrem_4433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4434" = icmp ugt i64 1, %"$gasrem_4433"
  br i1 %"$gascmp_4434", label %"$out_of_gas_4435", label %"$have_gas_4436"

"$out_of_gas_4435":                               ; preds = %"$None_4431"
  call void @_out_of_gas()
  br label %"$have_gas_4436"

"$have_gas_4436":                                 ; preds = %"$out_of_gas_4435", %"$None_4431"
  %"$consume_4437" = sub i64 %"$gasrem_4433", 1
  store i64 %"$consume_4437", i64* @_gasrem, align 8
  %"$adtval_4438_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4438_salloc" = call i8* @_salloc(i8* %"$adtval_4438_load", i64 1)
  %"$adtval_4438" = bitcast i8* %"$adtval_4438_salloc" to %CName_False*
  %"$adtgep_4439" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_4438", i32 0, i32 0
  store i8 1, i8* %"$adtgep_4439", align 1
  %"$adtptr_4440" = bitcast %CName_False* %"$adtval_4438" to %TName_Bool*
  store %TName_Bool* %"$adtptr_4440", %TName_Bool** %b2, align 8
  br label %"$matchsucc_4403"

"$empty_default_4407":                            ; preds = %"$have_gas_4401"
  br label %"$matchsucc_4403"

"$matchsucc_4403":                                ; preds = %"$have_gas_4436", %"$have_gas_4424", %"$empty_default_4407"
  %"$gasrem_4441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4442" = icmp ugt i64 1, %"$gasrem_4441"
  br i1 %"$gascmp_4442", label %"$out_of_gas_4443", label %"$have_gas_4444"

"$out_of_gas_4443":                               ; preds = %"$matchsucc_4403"
  call void @_out_of_gas()
  br label %"$have_gas_4444"

"$have_gas_4444":                                 ; preds = %"$out_of_gas_4443", %"$matchsucc_4403"
  %"$consume_4445" = sub i64 %"$gasrem_4441", 1
  store i64 %"$consume_4445", i64* @_gasrem, align 8
  %b3 = alloca %TName_Bool*, align 8
  %"$gasrem_4446" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4447" = icmp ugt i64 2, %"$gasrem_4446"
  br i1 %"$gascmp_4447", label %"$out_of_gas_4448", label %"$have_gas_4449"

"$out_of_gas_4448":                               ; preds = %"$have_gas_4444"
  call void @_out_of_gas()
  br label %"$have_gas_4449"

"$have_gas_4449":                                 ; preds = %"$out_of_gas_4448", %"$have_gas_4444"
  %"$consume_4450" = sub i64 %"$gasrem_4446", 2
  store i64 %"$consume_4450", i64* @_gasrem, align 8
  %"$t3_4452" = load %TName_Option_String*, %TName_Option_String** %t3, align 8
  %"$t3_tag_4453" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t3_4452", i32 0, i32 0
  %"$t3_tag_4454" = load i8, i8* %"$t3_tag_4453", align 1
  switch i8 %"$t3_tag_4454", label %"$empty_default_4455" [
    i8 0, label %"$Some_4456"
    i8 1, label %"$None_4479"
  ]

"$Some_4456":                                     ; preds = %"$have_gas_4449"
  %"$t3_4457" = bitcast %TName_Option_String* %"$t3_4452" to %CName_Some_String*
  %"$t3v_gep_4458" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t3_4457", i32 0, i32 1
  %"$t3v_load_4459" = load %String, %String* %"$t3v_gep_4458", align 8
  %t3v = alloca %String, align 8
  store %String %"$t3v_load_4459", %String* %t3v, align 8
  %"$_literal_cost_t3v_4460" = alloca %String, align 8
  %"$t3v_4461" = load %String, %String* %t3v, align 8
  store %String %"$t3v_4461", %String* %"$_literal_cost_t3v_4460", align 8
  %"$$_literal_cost_t3v_4460_4462" = bitcast %String* %"$_literal_cost_t3v_4460" to i8*
  %"$_literal_cost_call_4463" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_t3v_4460_4462")
  %"$_literal_cost_v3_4464" = alloca %String, align 8
  %"$v3_4465" = load %String, %String* %v3, align 8
  store %String %"$v3_4465", %String* %"$_literal_cost_v3_4464", align 8
  %"$$_literal_cost_v3_4464_4466" = bitcast %String* %"$_literal_cost_v3_4464" to i8*
  %"$_literal_cost_call_4467" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_v3_4464_4466")
  %"$gasmin_4468" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_4463", i64 %"$_literal_cost_call_4467")
  %"$gasrem_4469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4470" = icmp ugt i64 %"$gasmin_4468", %"$gasrem_4469"
  br i1 %"$gascmp_4470", label %"$out_of_gas_4471", label %"$have_gas_4472"

"$out_of_gas_4471":                               ; preds = %"$Some_4456"
  call void @_out_of_gas()
  br label %"$have_gas_4472"

"$have_gas_4472":                                 ; preds = %"$out_of_gas_4471", %"$Some_4456"
  %"$consume_4473" = sub i64 %"$gasrem_4469", %"$gasmin_4468"
  store i64 %"$consume_4473", i64* @_gasrem, align 8
  %"$execptr_load_4474" = load i8*, i8** @_execptr, align 8
  %"$t3v_4475" = load %String, %String* %t3v, align 8
  %"$v3_4476" = load %String, %String* %v3, align 8
  %"$eq_call_4477" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_4474", %String %"$t3v_4475", %String %"$v3_4476")
  store %TName_Bool* %"$eq_call_4477", %TName_Bool** %b3, align 8
  br label %"$matchsucc_4451"

"$None_4479":                                     ; preds = %"$have_gas_4449"
  %"$t3_4480" = bitcast %TName_Option_String* %"$t3_4452" to %CName_None_String*
  %"$gasrem_4481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4482" = icmp ugt i64 1, %"$gasrem_4481"
  br i1 %"$gascmp_4482", label %"$out_of_gas_4483", label %"$have_gas_4484"

"$out_of_gas_4483":                               ; preds = %"$None_4479"
  call void @_out_of_gas()
  br label %"$have_gas_4484"

"$have_gas_4484":                                 ; preds = %"$out_of_gas_4483", %"$None_4479"
  %"$consume_4485" = sub i64 %"$gasrem_4481", 1
  store i64 %"$consume_4485", i64* @_gasrem, align 8
  %"$adtval_4486_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4486_salloc" = call i8* @_salloc(i8* %"$adtval_4486_load", i64 1)
  %"$adtval_4486" = bitcast i8* %"$adtval_4486_salloc" to %CName_False*
  %"$adtgep_4487" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_4486", i32 0, i32 0
  store i8 1, i8* %"$adtgep_4487", align 1
  %"$adtptr_4488" = bitcast %CName_False* %"$adtval_4486" to %TName_Bool*
  store %TName_Bool* %"$adtptr_4488", %TName_Bool** %b3, align 8
  br label %"$matchsucc_4451"

"$empty_default_4455":                            ; preds = %"$have_gas_4449"
  br label %"$matchsucc_4451"

"$matchsucc_4451":                                ; preds = %"$have_gas_4484", %"$have_gas_4472", %"$empty_default_4455"
  %"$gasrem_4489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4490" = icmp ugt i64 1, %"$gasrem_4489"
  br i1 %"$gascmp_4490", label %"$out_of_gas_4491", label %"$have_gas_4492"

"$out_of_gas_4491":                               ; preds = %"$matchsucc_4451"
  call void @_out_of_gas()
  br label %"$have_gas_4492"

"$have_gas_4492":                                 ; preds = %"$out_of_gas_4491", %"$matchsucc_4451"
  %"$consume_4493" = sub i64 %"$gasrem_4489", 1
  store i64 %"$consume_4493", i64* @_gasrem, align 8
  %b4 = alloca %TName_Bool*, align 8
  %"$gasrem_4494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4495" = icmp ugt i64 2, %"$gasrem_4494"
  br i1 %"$gascmp_4495", label %"$out_of_gas_4496", label %"$have_gas_4497"

"$out_of_gas_4496":                               ; preds = %"$have_gas_4492"
  call void @_out_of_gas()
  br label %"$have_gas_4497"

"$have_gas_4497":                                 ; preds = %"$out_of_gas_4496", %"$have_gas_4492"
  %"$consume_4498" = sub i64 %"$gasrem_4494", 2
  store i64 %"$consume_4498", i64* @_gasrem, align 8
  %"$t4_4500" = load %TName_Option_String*, %TName_Option_String** %t4, align 8
  %"$t4_tag_4501" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t4_4500", i32 0, i32 0
  %"$t4_tag_4502" = load i8, i8* %"$t4_tag_4501", align 1
  switch i8 %"$t4_tag_4502", label %"$empty_default_4503" [
    i8 0, label %"$Some_4504"
    i8 1, label %"$None_4527"
  ]

"$Some_4504":                                     ; preds = %"$have_gas_4497"
  %"$t4_4505" = bitcast %TName_Option_String* %"$t4_4500" to %CName_Some_String*
  %"$t4v_gep_4506" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t4_4505", i32 0, i32 1
  %"$t4v_load_4507" = load %String, %String* %"$t4v_gep_4506", align 8
  %t4v = alloca %String, align 8
  store %String %"$t4v_load_4507", %String* %t4v, align 8
  %"$_literal_cost_t4v_4508" = alloca %String, align 8
  %"$t4v_4509" = load %String, %String* %t4v, align 8
  store %String %"$t4v_4509", %String* %"$_literal_cost_t4v_4508", align 8
  %"$$_literal_cost_t4v_4508_4510" = bitcast %String* %"$_literal_cost_t4v_4508" to i8*
  %"$_literal_cost_call_4511" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_t4v_4508_4510")
  %"$_literal_cost_v4_4512" = alloca %String, align 8
  %"$v4_4513" = load %String, %String* %v4, align 8
  store %String %"$v4_4513", %String* %"$_literal_cost_v4_4512", align 8
  %"$$_literal_cost_v4_4512_4514" = bitcast %String* %"$_literal_cost_v4_4512" to i8*
  %"$_literal_cost_call_4515" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_42", i8* %"$$_literal_cost_v4_4512_4514")
  %"$gasmin_4516" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_4511", i64 %"$_literal_cost_call_4515")
  %"$gasrem_4517" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4518" = icmp ugt i64 %"$gasmin_4516", %"$gasrem_4517"
  br i1 %"$gascmp_4518", label %"$out_of_gas_4519", label %"$have_gas_4520"

"$out_of_gas_4519":                               ; preds = %"$Some_4504"
  call void @_out_of_gas()
  br label %"$have_gas_4520"

"$have_gas_4520":                                 ; preds = %"$out_of_gas_4519", %"$Some_4504"
  %"$consume_4521" = sub i64 %"$gasrem_4517", %"$gasmin_4516"
  store i64 %"$consume_4521", i64* @_gasrem, align 8
  %"$execptr_load_4522" = load i8*, i8** @_execptr, align 8
  %"$t4v_4523" = load %String, %String* %t4v, align 8
  %"$v4_4524" = load %String, %String* %v4, align 8
  %"$eq_call_4525" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_4522", %String %"$t4v_4523", %String %"$v4_4524")
  store %TName_Bool* %"$eq_call_4525", %TName_Bool** %b4, align 8
  br label %"$matchsucc_4499"

"$None_4527":                                     ; preds = %"$have_gas_4497"
  %"$t4_4528" = bitcast %TName_Option_String* %"$t4_4500" to %CName_None_String*
  %"$gasrem_4529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4530" = icmp ugt i64 1, %"$gasrem_4529"
  br i1 %"$gascmp_4530", label %"$out_of_gas_4531", label %"$have_gas_4532"

"$out_of_gas_4531":                               ; preds = %"$None_4527"
  call void @_out_of_gas()
  br label %"$have_gas_4532"

"$have_gas_4532":                                 ; preds = %"$out_of_gas_4531", %"$None_4527"
  %"$consume_4533" = sub i64 %"$gasrem_4529", 1
  store i64 %"$consume_4533", i64* @_gasrem, align 8
  %"$adtval_4534_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4534_salloc" = call i8* @_salloc(i8* %"$adtval_4534_load", i64 1)
  %"$adtval_4534" = bitcast i8* %"$adtval_4534_salloc" to %CName_False*
  %"$adtgep_4535" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_4534", i32 0, i32 0
  store i8 1, i8* %"$adtgep_4535", align 1
  %"$adtptr_4536" = bitcast %CName_False* %"$adtval_4534" to %TName_Bool*
  store %TName_Bool* %"$adtptr_4536", %TName_Bool** %b4, align 8
  br label %"$matchsucc_4499"

"$empty_default_4503":                            ; preds = %"$have_gas_4497"
  br label %"$matchsucc_4499"

"$matchsucc_4499":                                ; preds = %"$have_gas_4532", %"$have_gas_4520", %"$empty_default_4503"
  %"$gasrem_4537" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4538" = icmp ugt i64 1, %"$gasrem_4537"
  br i1 %"$gascmp_4538", label %"$out_of_gas_4539", label %"$have_gas_4540"

"$out_of_gas_4539":                               ; preds = %"$matchsucc_4499"
  call void @_out_of_gas()
  br label %"$have_gas_4540"

"$have_gas_4540":                                 ; preds = %"$out_of_gas_4539", %"$matchsucc_4499"
  %"$consume_4541" = sub i64 %"$gasrem_4537", 1
  store i64 %"$consume_4541", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  %"$gasrem_4542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4543" = icmp ugt i64 1, %"$gasrem_4542"
  br i1 %"$gascmp_4543", label %"$out_of_gas_4544", label %"$have_gas_4545"

"$out_of_gas_4544":                               ; preds = %"$have_gas_4540"
  call void @_out_of_gas()
  br label %"$have_gas_4545"

"$have_gas_4545":                                 ; preds = %"$out_of_gas_4544", %"$have_gas_4540"
  %"$consume_4546" = sub i64 %"$gasrem_4542", 1
  store i64 %"$consume_4546", i64* @_gasrem, align 8
  %a1 = alloca %TName_Bool*, align 8
  %"$gasrem_4547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4548" = icmp ugt i64 1, %"$gasrem_4547"
  br i1 %"$gascmp_4548", label %"$out_of_gas_4549", label %"$have_gas_4550"

"$out_of_gas_4549":                               ; preds = %"$have_gas_4545"
  call void @_out_of_gas()
  br label %"$have_gas_4550"

"$have_gas_4550":                                 ; preds = %"$out_of_gas_4549", %"$have_gas_4545"
  %"$consume_4551" = sub i64 %"$gasrem_4547", 1
  store i64 %"$consume_4551", i64* @_gasrem, align 8
  %"$BoolUtils.andb_4552" = load { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_4553" = extractvalue { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4552", 0
  %"$BoolUtils.andb_envptr_4554" = extractvalue { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4552", 1
  %"$b1_4555" = load %TName_Bool*, %TName_Bool** %b1, align 8
  %"$b2_4556" = load %TName_Bool*, %TName_Bool** %b2, align 8
  %"$BoolUtils.andb_call_4557" = call %TName_Bool* %"$BoolUtils.andb_fptr_4553"(i8* %"$BoolUtils.andb_envptr_4554", %TName_Bool* %"$b1_4555", %TName_Bool* %"$b2_4556")
  store %TName_Bool* %"$BoolUtils.andb_call_4557", %TName_Bool** %a1, align 8
  %"$gasrem_4558" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4559" = icmp ugt i64 1, %"$gasrem_4558"
  br i1 %"$gascmp_4559", label %"$out_of_gas_4560", label %"$have_gas_4561"

"$out_of_gas_4560":                               ; preds = %"$have_gas_4550"
  call void @_out_of_gas()
  br label %"$have_gas_4561"

"$have_gas_4561":                                 ; preds = %"$out_of_gas_4560", %"$have_gas_4550"
  %"$consume_4562" = sub i64 %"$gasrem_4558", 1
  store i64 %"$consume_4562", i64* @_gasrem, align 8
  %a2 = alloca %TName_Bool*, align 8
  %"$gasrem_4563" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4564" = icmp ugt i64 1, %"$gasrem_4563"
  br i1 %"$gascmp_4564", label %"$out_of_gas_4565", label %"$have_gas_4566"

"$out_of_gas_4565":                               ; preds = %"$have_gas_4561"
  call void @_out_of_gas()
  br label %"$have_gas_4566"

"$have_gas_4566":                                 ; preds = %"$out_of_gas_4565", %"$have_gas_4561"
  %"$consume_4567" = sub i64 %"$gasrem_4563", 1
  store i64 %"$consume_4567", i64* @_gasrem, align 8
  %"$BoolUtils.andb_4568" = load { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_4569" = extractvalue { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4568", 0
  %"$BoolUtils.andb_envptr_4570" = extractvalue { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4568", 1
  %"$b3_4571" = load %TName_Bool*, %TName_Bool** %b3, align 8
  %"$b4_4572" = load %TName_Bool*, %TName_Bool** %b4, align 8
  %"$BoolUtils.andb_call_4573" = call %TName_Bool* %"$BoolUtils.andb_fptr_4569"(i8* %"$BoolUtils.andb_envptr_4570", %TName_Bool* %"$b3_4571", %TName_Bool* %"$b4_4572")
  store %TName_Bool* %"$BoolUtils.andb_call_4573", %TName_Bool** %a2, align 8
  %"$gasrem_4574" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4575" = icmp ugt i64 1, %"$gasrem_4574"
  br i1 %"$gascmp_4575", label %"$out_of_gas_4576", label %"$have_gas_4577"

"$out_of_gas_4576":                               ; preds = %"$have_gas_4566"
  call void @_out_of_gas()
  br label %"$have_gas_4577"

"$have_gas_4577":                                 ; preds = %"$out_of_gas_4576", %"$have_gas_4566"
  %"$consume_4578" = sub i64 %"$gasrem_4574", 1
  store i64 %"$consume_4578", i64* @_gasrem, align 8
  %"$BoolUtils.andb_4579" = load { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_4580" = extractvalue { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4579", 0
  %"$BoolUtils.andb_envptr_4581" = extractvalue { %TName_Bool* (i8*, %TName_Bool*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4579", 1
  %"$a1_4582" = load %TName_Bool*, %TName_Bool** %a1, align 8
  %"$a2_4583" = load %TName_Bool*, %TName_Bool** %a2, align 8
  %"$BoolUtils.andb_call_4584" = call %TName_Bool* %"$BoolUtils.andb_fptr_4580"(i8* %"$BoolUtils.andb_envptr_4581", %TName_Bool* %"$a1_4582", %TName_Bool* %"$a2_4583")
  store %TName_Bool* %"$BoolUtils.andb_call_4584", %TName_Bool** %b, align 8
  %"$gasrem_4585" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4586" = icmp ugt i64 2, %"$gasrem_4585"
  br i1 %"$gascmp_4586", label %"$out_of_gas_4587", label %"$have_gas_4588"

"$out_of_gas_4587":                               ; preds = %"$have_gas_4577"
  call void @_out_of_gas()
  br label %"$have_gas_4588"

"$have_gas_4588":                                 ; preds = %"$out_of_gas_4587", %"$have_gas_4577"
  %"$consume_4589" = sub i64 %"$gasrem_4585", 2
  store i64 %"$consume_4589", i64* @_gasrem, align 8
  %"$b_4591" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_4592" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_4591", i32 0, i32 0
  %"$b_tag_4593" = load i8, i8* %"$b_tag_4592", align 1
  switch i8 %"$b_tag_4593", label %"$empty_default_4594" [
    i8 0, label %"$True_4595"
    i8 1, label %"$False_4597"
  ]

"$True_4595":                                     ; preds = %"$have_gas_4588"
  %"$b_4596" = bitcast %TName_Bool* %"$b_4591" to %CName_True*
  br label %"$matchsucc_4590"

"$False_4597":                                    ; preds = %"$have_gas_4588"
  %"$b_4598" = bitcast %TName_Bool* %"$b_4591" to %CName_False*
  %"$gasrem_4599" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4600" = icmp ugt i64 1, %"$gasrem_4599"
  br i1 %"$gascmp_4600", label %"$out_of_gas_4601", label %"$have_gas_4602"

"$out_of_gas_4601":                               ; preds = %"$False_4597"
  call void @_out_of_gas()
  br label %"$have_gas_4602"

"$have_gas_4602":                                 ; preds = %"$out_of_gas_4601", %"$False_4597"
  %"$consume_4603" = sub i64 %"$gasrem_4599", 1
  store i64 %"$consume_4603", i64* @_gasrem, align 8
  %"$fail__origin_4604" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_4604", align 1
  %"$fail__sender_4605" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_4605", align 1
  %"$tname_4606" = load %String, %String* %tname, align 8
  call void @"$fail_210"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_4604", [20 x i8]* %"$fail__sender_4605", %String %"$tname_4606")
  br label %"$matchsucc_4590"

"$empty_default_4594":                            ; preds = %"$have_gas_4588"
  br label %"$matchsucc_4590"

"$matchsucc_4590":                                ; preds = %"$have_gas_4602", %"$True_4595", %"$empty_default_4594"
  %"$gasrem_4607" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4608" = icmp ugt i64 1, %"$gasrem_4607"
  br i1 %"$gascmp_4608", label %"$out_of_gas_4609", label %"$have_gas_4610"

"$out_of_gas_4609":                               ; preds = %"$matchsucc_4590"
  call void @_out_of_gas()
  br label %"$have_gas_4610"

"$have_gas_4610":                                 ; preds = %"$out_of_gas_4609", %"$matchsucc_4590"
  %"$consume_4611" = sub i64 %"$gasrem_4607", 1
  store i64 %"$consume_4611", i64* @_gasrem, align 8
  %m1 = alloca %Map_String_String*, align 8
  %"$gasrem_4612" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4613" = icmp ugt i64 1, %"$gasrem_4612"
  br i1 %"$gascmp_4613", label %"$out_of_gas_4614", label %"$have_gas_4615"

"$out_of_gas_4614":                               ; preds = %"$have_gas_4610"
  call void @_out_of_gas()
  br label %"$have_gas_4615"

"$have_gas_4615":                                 ; preds = %"$out_of_gas_4614", %"$have_gas_4610"
  %"$consume_4616" = sub i64 %"$gasrem_4612", 1
  store i64 %"$consume_4616", i64* @_gasrem, align 8
  %k = alloca %String, align 8
  %"$gasrem_4617" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4618" = icmp ugt i64 1, %"$gasrem_4617"
  br i1 %"$gascmp_4618", label %"$out_of_gas_4619", label %"$have_gas_4620"

"$out_of_gas_4619":                               ; preds = %"$have_gas_4615"
  call void @_out_of_gas()
  br label %"$have_gas_4620"

"$have_gas_4620":                                 ; preds = %"$out_of_gas_4619", %"$have_gas_4615"
  %"$consume_4621" = sub i64 %"$gasrem_4617", 1
  store i64 %"$consume_4621", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_4622", i32 0, i32 0), i32 0 }, %String* %k, align 8
  %"$gasrem_4623" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4624" = icmp ugt i64 1, %"$gasrem_4623"
  br i1 %"$gascmp_4624", label %"$out_of_gas_4625", label %"$have_gas_4626"

"$out_of_gas_4625":                               ; preds = %"$have_gas_4620"
  call void @_out_of_gas()
  br label %"$have_gas_4626"

"$have_gas_4626":                                 ; preds = %"$out_of_gas_4625", %"$have_gas_4620"
  %"$consume_4627" = sub i64 %"$gasrem_4623", 1
  store i64 %"$consume_4627", i64* @_gasrem, align 8
  %v = alloca %String, align 8
  %"$gasrem_4628" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4629" = icmp ugt i64 1, %"$gasrem_4628"
  br i1 %"$gascmp_4629", label %"$out_of_gas_4630", label %"$have_gas_4631"

"$out_of_gas_4630":                               ; preds = %"$have_gas_4626"
  call void @_out_of_gas()
  br label %"$have_gas_4631"

"$have_gas_4631":                                 ; preds = %"$out_of_gas_4630", %"$have_gas_4626"
  %"$consume_4632" = sub i64 %"$gasrem_4628", 1
  store i64 %"$consume_4632", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4633", i32 0, i32 0), i32 3 }, %String* %v, align 8
  %"$gasrem_4634" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4635" = icmp ugt i64 1, %"$gasrem_4634"
  br i1 %"$gascmp_4635", label %"$out_of_gas_4636", label %"$have_gas_4637"

"$out_of_gas_4636":                               ; preds = %"$have_gas_4631"
  call void @_out_of_gas()
  br label %"$have_gas_4637"

"$have_gas_4637":                                 ; preds = %"$out_of_gas_4636", %"$have_gas_4631"
  %"$consume_4638" = sub i64 %"$gasrem_4634", 1
  store i64 %"$consume_4638", i64* @_gasrem, align 8
  %e = alloca %Map_String_String*, align 8
  %"$gasrem_4639" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4640" = icmp ugt i64 1, %"$gasrem_4639"
  br i1 %"$gascmp_4640", label %"$out_of_gas_4641", label %"$have_gas_4642"

"$out_of_gas_4641":                               ; preds = %"$have_gas_4637"
  call void @_out_of_gas()
  br label %"$have_gas_4642"

"$have_gas_4642":                                 ; preds = %"$out_of_gas_4641", %"$have_gas_4637"
  %"$consume_4643" = sub i64 %"$gasrem_4639", 1
  store i64 %"$consume_4643", i64* @_gasrem, align 8
  %"$execptr_load_4644" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_4645" = call i8* @_new_empty_map(i8* %"$execptr_load_4644")
  %"$_new_empty_map_4646" = bitcast i8* %"$_new_empty_map_call_4645" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_4646", %Map_String_String** %e, align 8
  %"$e_4647" = load %Map_String_String*, %Map_String_String** %e, align 8
  %"$$e_4647_4648" = bitcast %Map_String_String* %"$e_4647" to i8*
  %"$_lengthof_call_4649" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_65", i8* %"$$e_4647_4648")
  %"$gasadd_4650" = add i64 1, %"$_lengthof_call_4649"
  %"$gasrem_4651" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4652" = icmp ugt i64 %"$gasadd_4650", %"$gasrem_4651"
  br i1 %"$gascmp_4652", label %"$out_of_gas_4653", label %"$have_gas_4654"

"$out_of_gas_4653":                               ; preds = %"$have_gas_4642"
  call void @_out_of_gas()
  br label %"$have_gas_4654"

"$have_gas_4654":                                 ; preds = %"$out_of_gas_4653", %"$have_gas_4642"
  %"$consume_4655" = sub i64 %"$gasrem_4651", %"$gasadd_4650"
  store i64 %"$consume_4655", i64* @_gasrem, align 8
  %"$execptr_load_4656" = load i8*, i8** @_execptr, align 8
  %"$e_4657" = load %Map_String_String*, %Map_String_String** %e, align 8
  %"$$e_4657_4658" = bitcast %Map_String_String* %"$e_4657" to i8*
  %"$put_k_4659" = alloca %String, align 8
  %"$k_4660" = load %String, %String* %k, align 8
  store %String %"$k_4660", %String* %"$put_k_4659", align 8
  %"$$put_k_4659_4661" = bitcast %String* %"$put_k_4659" to i8*
  %"$put_v_4662" = alloca %String, align 8
  %"$v_4663" = load %String, %String* %v, align 8
  store %String %"$v_4663", %String* %"$put_v_4662", align 8
  %"$$put_v_4662_4664" = bitcast %String* %"$put_v_4662" to i8*
  %"$put_call_4665" = call i8* @_put(i8* %"$execptr_load_4656", %_TyDescrTy_Typ* @"$TyDescr_Map_65", i8* %"$$e_4657_4658", i8* %"$$put_k_4659_4661", i8* %"$$put_v_4662_4664")
  %"$put_4666" = bitcast i8* %"$put_call_4665" to %Map_String_String*
  store %Map_String_String* %"$put_4666", %Map_String_String** %m1, align 8
  %"$m1_4667" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_4667_4668" = bitcast %Map_String_String* %"$m1_4667" to i8*
  %"$_literal_cost_call_4669" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_65", i8* %"$$m1_4667_4668")
  %"$gasrem_4670" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4671" = icmp ugt i64 %"$_literal_cost_call_4669", %"$gasrem_4670"
  br i1 %"$gascmp_4671", label %"$out_of_gas_4672", label %"$have_gas_4673"

"$out_of_gas_4672":                               ; preds = %"$have_gas_4654"
  call void @_out_of_gas()
  br label %"$have_gas_4673"

"$have_gas_4673":                                 ; preds = %"$out_of_gas_4672", %"$have_gas_4654"
  %"$consume_4674" = sub i64 %"$gasrem_4670", %"$_literal_cost_call_4669"
  store i64 %"$consume_4674", i64* @_gasrem, align 8
  %"$execptr_load_4675" = load i8*, i8** @_execptr, align 8
  %"$m1_4677" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$update_value_4678" = bitcast %Map_String_String* %"$m1_4677" to i8*
  call void @_update_field(i8* %"$execptr_load_4675", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_4676", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_65", i32 0, i8* null, i8* %"$update_value_4678")
  ret void
}

define void @t16(i8* %0) {
entry:
  %"$_amount_4680" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4681" = bitcast i8* %"$_amount_4680" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4681", align 8
  %"$_origin_4682" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4683" = bitcast i8* %"$_origin_4682" to [20 x i8]*
  %"$_sender_4684" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4685" = bitcast i8* %"$_sender_4684" to [20 x i8]*
  call void @"$t16_4123"(%Uint128 %_amount, [20 x i8]* %"$_origin_4683", [20 x i8]* %"$_sender_4685")
  ret void
}

define internal void @"$t17_4686"(%Uint128 %_amount, [20 x i8]* %"$_origin_4687", [20 x i8]* %"$_sender_4688") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4687", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4688", align 1
  %"$gasrem_4689" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4690" = icmp ugt i64 1, %"$gasrem_4689"
  br i1 %"$gascmp_4690", label %"$out_of_gas_4691", label %"$have_gas_4692"

"$out_of_gas_4691":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4692"

"$have_gas_4692":                                 ; preds = %"$out_of_gas_4691", %entry
  %"$consume_4693" = sub i64 %"$gasrem_4689", 1
  store i64 %"$consume_4693", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_4694" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4695" = icmp ugt i64 1, %"$gasrem_4694"
  br i1 %"$gascmp_4695", label %"$out_of_gas_4696", label %"$have_gas_4697"

"$out_of_gas_4696":                               ; preds = %"$have_gas_4692"
  call void @_out_of_gas()
  br label %"$have_gas_4697"

"$have_gas_4697":                                 ; preds = %"$out_of_gas_4696", %"$have_gas_4692"
  %"$consume_4698" = sub i64 %"$gasrem_4694", 1
  store i64 %"$consume_4698", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4699", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %"$gasrem_4700" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4701" = icmp ugt i64 1, %"$gasrem_4700"
  br i1 %"$gascmp_4701", label %"$out_of_gas_4702", label %"$have_gas_4703"

"$out_of_gas_4702":                               ; preds = %"$have_gas_4697"
  call void @_out_of_gas()
  br label %"$have_gas_4703"

"$have_gas_4703":                                 ; preds = %"$out_of_gas_4702", %"$have_gas_4697"
  %"$consume_4704" = sub i64 %"$gasrem_4700", 1
  store i64 %"$consume_4704", i64* @_gasrem, align 8
  %key = alloca %String, align 8
  %"$gasrem_4705" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4706" = icmp ugt i64 1, %"$gasrem_4705"
  br i1 %"$gascmp_4706", label %"$out_of_gas_4707", label %"$have_gas_4708"

"$out_of_gas_4707":                               ; preds = %"$have_gas_4703"
  call void @_out_of_gas()
  br label %"$have_gas_4708"

"$have_gas_4708":                                 ; preds = %"$out_of_gas_4707", %"$have_gas_4703"
  %"$consume_4709" = sub i64 %"$gasrem_4705", 1
  store i64 %"$consume_4709", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_4710", i32 0, i32 0), i32 0 }, %String* %key, align 8
  %found = alloca %TName_Bool*, align 8
  %"$indices_buf_4711_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4711_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4711_salloc_load", i64 16)
  %"$indices_buf_4711_salloc" = bitcast i8* %"$indices_buf_4711_salloc_salloc" to [16 x i8]*
  %"$indices_buf_4711" = bitcast [16 x i8]* %"$indices_buf_4711_salloc" to i8*
  %"$key_4712" = load %String, %String* %key, align 8
  %"$indices_gep_4713" = getelementptr i8, i8* %"$indices_buf_4711", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4713" to %String*
  store %String %"$key_4712", %String* %indices_cast, align 8
  %"$execptr_load_4715" = load i8*, i8** @_execptr, align 8
  %"$found_call_4716" = call i8* @_fetch_field(i8* %"$execptr_load_4715", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_4714", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_65", i32 1, i8* %"$indices_buf_4711", i32 0)
  %"$found_4717" = bitcast i8* %"$found_call_4716" to %TName_Bool*
  store %TName_Bool* %"$found_4717", %TName_Bool** %found, align 8
  %"$found_4718" = load %TName_Bool*, %TName_Bool** %found, align 8
  %"$$found_4718_4719" = bitcast %TName_Bool* %"$found_4718" to i8*
  %"$_literal_cost_call_4720" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_61", i8* %"$$found_4718_4719")
  %"$gasadd_4721" = add i64 %"$_literal_cost_call_4720", 0
  %"$gasadd_4722" = add i64 %"$gasadd_4721", 1
  %"$gasrem_4723" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4724" = icmp ugt i64 %"$gasadd_4722", %"$gasrem_4723"
  br i1 %"$gascmp_4724", label %"$out_of_gas_4725", label %"$have_gas_4726"

"$out_of_gas_4725":                               ; preds = %"$have_gas_4708"
  call void @_out_of_gas()
  br label %"$have_gas_4726"

"$have_gas_4726":                                 ; preds = %"$out_of_gas_4725", %"$have_gas_4708"
  %"$consume_4727" = sub i64 %"$gasrem_4723", %"$gasadd_4722"
  store i64 %"$consume_4727", i64* @_gasrem, align 8
  %"$gasrem_4728" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4729" = icmp ugt i64 2, %"$gasrem_4728"
  br i1 %"$gascmp_4729", label %"$out_of_gas_4730", label %"$have_gas_4731"

"$out_of_gas_4730":                               ; preds = %"$have_gas_4726"
  call void @_out_of_gas()
  br label %"$have_gas_4731"

"$have_gas_4731":                                 ; preds = %"$out_of_gas_4730", %"$have_gas_4726"
  %"$consume_4732" = sub i64 %"$gasrem_4728", 2
  store i64 %"$consume_4732", i64* @_gasrem, align 8
  %"$found_4734" = load %TName_Bool*, %TName_Bool** %found, align 8
  %"$found_tag_4735" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$found_4734", i32 0, i32 0
  %"$found_tag_4736" = load i8, i8* %"$found_tag_4735", align 1
  switch i8 %"$found_tag_4736", label %"$empty_default_4737" [
    i8 0, label %"$True_4738"
    i8 1, label %"$False_4740"
  ]

"$True_4738":                                     ; preds = %"$have_gas_4731"
  %"$found_4739" = bitcast %TName_Bool* %"$found_4734" to %CName_True*
  br label %"$matchsucc_4733"

"$False_4740":                                    ; preds = %"$have_gas_4731"
  %"$found_4741" = bitcast %TName_Bool* %"$found_4734" to %CName_False*
  %"$gasrem_4742" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4743" = icmp ugt i64 1, %"$gasrem_4742"
  br i1 %"$gascmp_4743", label %"$out_of_gas_4744", label %"$have_gas_4745"

"$out_of_gas_4744":                               ; preds = %"$False_4740"
  call void @_out_of_gas()
  br label %"$have_gas_4745"

"$have_gas_4745":                                 ; preds = %"$out_of_gas_4744", %"$False_4740"
  %"$consume_4746" = sub i64 %"$gasrem_4742", 1
  store i64 %"$consume_4746", i64* @_gasrem, align 8
  %"$fail__origin_4747" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_4747", align 1
  %"$fail__sender_4748" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_4748", align 1
  %"$tname_4749" = load %String, %String* %tname, align 8
  call void @"$fail_210"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_4747", [20 x i8]* %"$fail__sender_4748", %String %"$tname_4749")
  br label %"$matchsucc_4733"

"$empty_default_4737":                            ; preds = %"$have_gas_4731"
  br label %"$matchsucc_4733"

"$matchsucc_4733":                                ; preds = %"$have_gas_4745", %"$True_4738", %"$empty_default_4737"
  %"$gasrem_4750" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4751" = icmp ugt i64 1, %"$gasrem_4750"
  br i1 %"$gascmp_4751", label %"$out_of_gas_4752", label %"$have_gas_4753"

"$out_of_gas_4752":                               ; preds = %"$matchsucc_4733"
  call void @_out_of_gas()
  br label %"$have_gas_4753"

"$have_gas_4753":                                 ; preds = %"$out_of_gas_4752", %"$matchsucc_4733"
  %"$consume_4754" = sub i64 %"$gasrem_4750", 1
  store i64 %"$consume_4754", i64* @_gasrem, align 8
  %"$indices_buf_4755_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4755_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4755_salloc_load", i64 16)
  %"$indices_buf_4755_salloc" = bitcast i8* %"$indices_buf_4755_salloc_salloc" to [16 x i8]*
  %"$indices_buf_4755" = bitcast [16 x i8]* %"$indices_buf_4755_salloc" to i8*
  %"$key_4756" = load %String, %String* %key, align 8
  %"$indices_gep_4757" = getelementptr i8, i8* %"$indices_buf_4755", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_4757" to %String*
  store %String %"$key_4756", %String* %indices_cast1, align 8
  %"$execptr_load_4758" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_4758", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_4759", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_65", i32 1, i8* %"$indices_buf_4755", i8* null)
  ret void
}

define void @t17(i8* %0) {
entry:
  %"$_amount_4761" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4762" = bitcast i8* %"$_amount_4761" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4762", align 8
  %"$_origin_4763" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4764" = bitcast i8* %"$_origin_4763" to [20 x i8]*
  %"$_sender_4765" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4766" = bitcast i8* %"$_sender_4765" to [20 x i8]*
  call void @"$t17_4686"(%Uint128 %_amount, [20 x i8]* %"$_origin_4764", [20 x i8]* %"$_sender_4766")
  ret void
}

define internal void @"$t18_4767"(%Uint128 %_amount, [20 x i8]* %"$_origin_4768", [20 x i8]* %"$_sender_4769") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4768", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4769", align 1
  %"$gasrem_4770" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4771" = icmp ugt i64 1, %"$gasrem_4770"
  br i1 %"$gascmp_4771", label %"$out_of_gas_4772", label %"$have_gas_4773"

"$out_of_gas_4772":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4773"

"$have_gas_4773":                                 ; preds = %"$out_of_gas_4772", %entry
  %"$consume_4774" = sub i64 %"$gasrem_4770", 1
  store i64 %"$consume_4774", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  %"$gasrem_4775" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4776" = icmp ugt i64 1, %"$gasrem_4775"
  br i1 %"$gascmp_4776", label %"$out_of_gas_4777", label %"$have_gas_4778"

"$out_of_gas_4777":                               ; preds = %"$have_gas_4773"
  call void @_out_of_gas()
  br label %"$have_gas_4778"

"$have_gas_4778":                                 ; preds = %"$out_of_gas_4777", %"$have_gas_4773"
  %"$consume_4779" = sub i64 %"$gasrem_4775", 1
  store i64 %"$consume_4779", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4780", i32 0, i32 0), i32 3 }, %String* %tname, align 8
  %"$gasrem_4781" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4782" = icmp ugt i64 1, %"$gasrem_4781"
  br i1 %"$gascmp_4782", label %"$out_of_gas_4783", label %"$have_gas_4784"

"$out_of_gas_4783":                               ; preds = %"$have_gas_4778"
  call void @_out_of_gas()
  br label %"$have_gas_4784"

"$have_gas_4784":                                 ; preds = %"$out_of_gas_4783", %"$have_gas_4778"
  %"$consume_4785" = sub i64 %"$gasrem_4781", 1
  store i64 %"$consume_4785", i64* @_gasrem, align 8
  %key = alloca %String, align 8
  %"$gasrem_4786" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4787" = icmp ugt i64 1, %"$gasrem_4786"
  br i1 %"$gascmp_4787", label %"$out_of_gas_4788", label %"$have_gas_4789"

"$out_of_gas_4788":                               ; preds = %"$have_gas_4784"
  call void @_out_of_gas()
  br label %"$have_gas_4789"

"$have_gas_4789":                                 ; preds = %"$out_of_gas_4788", %"$have_gas_4784"
  %"$consume_4790" = sub i64 %"$gasrem_4786", 1
  store i64 %"$consume_4790", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_4791", i32 0, i32 0), i32 0 }, %String* %key, align 8
  %found = alloca %TName_Bool*, align 8
  %"$indices_buf_4792_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4792_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4792_salloc_load", i64 16)
  %"$indices_buf_4792_salloc" = bitcast i8* %"$indices_buf_4792_salloc_salloc" to [16 x i8]*
  %"$indices_buf_4792" = bitcast [16 x i8]* %"$indices_buf_4792_salloc" to i8*
  %"$key_4793" = load %String, %String* %key, align 8
  %"$indices_gep_4794" = getelementptr i8, i8* %"$indices_buf_4792", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4794" to %String*
  store %String %"$key_4793", %String* %indices_cast, align 8
  %"$execptr_load_4796" = load i8*, i8** @_execptr, align 8
  %"$found_call_4797" = call i8* @_fetch_field(i8* %"$execptr_load_4796", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_4795", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_65", i32 1, i8* %"$indices_buf_4792", i32 0)
  %"$found_4798" = bitcast i8* %"$found_call_4797" to %TName_Bool*
  store %TName_Bool* %"$found_4798", %TName_Bool** %found, align 8
  %"$found_4799" = load %TName_Bool*, %TName_Bool** %found, align 8
  %"$$found_4799_4800" = bitcast %TName_Bool* %"$found_4799" to i8*
  %"$_literal_cost_call_4801" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_61", i8* %"$$found_4799_4800")
  %"$gasadd_4802" = add i64 %"$_literal_cost_call_4801", 0
  %"$gasadd_4803" = add i64 %"$gasadd_4802", 1
  %"$gasrem_4804" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4805" = icmp ugt i64 %"$gasadd_4803", %"$gasrem_4804"
  br i1 %"$gascmp_4805", label %"$out_of_gas_4806", label %"$have_gas_4807"

"$out_of_gas_4806":                               ; preds = %"$have_gas_4789"
  call void @_out_of_gas()
  br label %"$have_gas_4807"

"$have_gas_4807":                                 ; preds = %"$out_of_gas_4806", %"$have_gas_4789"
  %"$consume_4808" = sub i64 %"$gasrem_4804", %"$gasadd_4803"
  store i64 %"$consume_4808", i64* @_gasrem, align 8
  %"$gasrem_4809" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4810" = icmp ugt i64 2, %"$gasrem_4809"
  br i1 %"$gascmp_4810", label %"$out_of_gas_4811", label %"$have_gas_4812"

"$out_of_gas_4811":                               ; preds = %"$have_gas_4807"
  call void @_out_of_gas()
  br label %"$have_gas_4812"

"$have_gas_4812":                                 ; preds = %"$out_of_gas_4811", %"$have_gas_4807"
  %"$consume_4813" = sub i64 %"$gasrem_4809", 2
  store i64 %"$consume_4813", i64* @_gasrem, align 8
  %"$found_4815" = load %TName_Bool*, %TName_Bool** %found, align 8
  %"$found_tag_4816" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$found_4815", i32 0, i32 0
  %"$found_tag_4817" = load i8, i8* %"$found_tag_4816", align 1
  switch i8 %"$found_tag_4817", label %"$empty_default_4818" [
    i8 0, label %"$True_4819"
    i8 1, label %"$False_4829"
  ]

"$True_4819":                                     ; preds = %"$have_gas_4812"
  %"$found_4820" = bitcast %TName_Bool* %"$found_4815" to %CName_True*
  %"$gasrem_4821" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4822" = icmp ugt i64 1, %"$gasrem_4821"
  br i1 %"$gascmp_4822", label %"$out_of_gas_4823", label %"$have_gas_4824"

"$out_of_gas_4823":                               ; preds = %"$True_4819"
  call void @_out_of_gas()
  br label %"$have_gas_4824"

"$have_gas_4824":                                 ; preds = %"$out_of_gas_4823", %"$True_4819"
  %"$consume_4825" = sub i64 %"$gasrem_4821", 1
  store i64 %"$consume_4825", i64* @_gasrem, align 8
  %"$fail__origin_4826" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_4826", align 1
  %"$fail__sender_4827" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_4827", align 1
  %"$tname_4828" = load %String, %String* %tname, align 8
  call void @"$fail_210"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_4826", [20 x i8]* %"$fail__sender_4827", %String %"$tname_4828")
  br label %"$matchsucc_4814"

"$False_4829":                                    ; preds = %"$have_gas_4812"
  %"$found_4830" = bitcast %TName_Bool* %"$found_4815" to %CName_False*
  br label %"$matchsucc_4814"

"$empty_default_4818":                            ; preds = %"$have_gas_4812"
  br label %"$matchsucc_4814"

"$matchsucc_4814":                                ; preds = %"$False_4829", %"$have_gas_4824", %"$empty_default_4818"
  ret void
}

define void @t18(i8* %0) {
entry:
  %"$_amount_4832" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4833" = bitcast i8* %"$_amount_4832" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4833", align 8
  %"$_origin_4834" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4835" = bitcast i8* %"$_origin_4834" to [20 x i8]*
  %"$_sender_4836" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4837" = bitcast i8* %"$_sender_4836" to [20 x i8]*
  call void @"$t18_4767"(%Uint128 %_amount, [20 x i8]* %"$_origin_4835", [20 x i8]* %"$_sender_4837")
  ret void
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
