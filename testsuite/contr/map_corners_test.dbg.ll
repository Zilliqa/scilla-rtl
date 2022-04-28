

; gas_remaining: 4001999
; ModuleID = 'MapCornersTest'
source_filename = "MapCornersTest"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_34" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_68" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_67"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_67" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_69"**, %"$TyDescrTy_ADTTyp_68"* }
%"$TyDescrTy_ADTTyp_Constr_69" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_74" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_79" = type { i32, %"$TyDescr_AddrFieldTyp_78"* }
%"$TyDescr_AddrFieldTyp_78" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%Uint32 = type { i32 }
%"$ParamDescr_4966" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_4967" = type { %ParamDescrString, i32, %"$ParamDescr_4966"* }
%"$$fundef_27_env_127" = type { %TName_Bool* }
%"$$fundef_25_env_128" = type {}
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
@"$TyDescr_ReplicateContr_Prim_61" = global %"$TyDescrTy_PrimTyp_34" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_62" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_34"* @"$TyDescr_ReplicateContr_Prim_61" to i8*) }
@"$TyDescr_Bystr_Prim_63" = global %"$TyDescrTy_PrimTyp_34" { i32 7, i32 0 }
@"$TyDescr_Bystr_64" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_34"* @"$TyDescr_Bystr_Prim_63" to i8*) }
@"$TyDescr_Bystr20_Prim_65" = global %"$TyDescrTy_PrimTyp_34" { i32 8, i32 20 }
@"$TyDescr_Bystr20_66" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_34"* @"$TyDescr_Bystr20_Prim_65" to i8*) }
@"$TyDescr_ADT_Option_Map_(String)_(Map_(String)_(String))_70" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_67"* @"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_90" to i8*) }
@"$TyDescr_ADT_Option_Map_(String)_(String)_71" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_67"* @"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_99" to i8*) }
@"$TyDescr_ADT_Option_String_72" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_67"* @"$TyDescr_Option_String_ADTTyp_Specl_108" to i8*) }
@"$TyDescr_ADT_Bool_73" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_67"* @"$TyDescr_Bool_ADTTyp_Specl_120" to i8*) }
@"$TyDescr_Map_75" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_74"* @"$TyDescr_MapTyp_123" to i8*) }
@"$TyDescr_Map_76" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_74"* @"$TyDescr_MapTyp_124" to i8*) }
@"$TyDescr_Map_77" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_74"* @"$TyDescr_MapTyp_125" to i8*) }
@"$TyDescr_Addr_80" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_79"* @"$TyDescr_AddrFields_126" to i8*) }
@"$TyDescr_Option_ADTTyp_81" = unnamed_addr constant %"$TyDescrTy_ADTTyp_68" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_110", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 3, %"$TyDescrTy_ADTTyp_Specl_67"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_67"*], [3 x %"$TyDescrTy_ADTTyp_Specl_67"*]* @"$TyDescr_Option_ADTTyp_m_specls_109", i32 0, i32 0) }
@"$TyDescr_Option_Some_Map_(String)_(Map_(String)_(String))_Constr_m_args_82" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_76"]
@"$TyDescr_ADT_Some_83" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Map_(String)_(Map_(String)_(String))_ADTTyp_Constr_84" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_69" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_83", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Map_(String)_(Map_(String)_(String))_Constr_m_args_82", i32 0, i32 0) }
@"$TyDescr_Option_None_Map_(String)_(Map_(String)_(String))_Constr_m_args_85" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_86" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Map_(String)_(Map_(String)_(String))_ADTTyp_Constr_87" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_69" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_86", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Map_(String)_(Map_(String)_(String))_Constr_m_args_85", i32 0, i32 0) }
@"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_m_constrs_88" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_69"*] [%"$TyDescrTy_ADTTyp_Constr_69"* @"$TyDescr_Option_Some_Map_(String)_(Map_(String)_(String))_ADTTyp_Constr_84", %"$TyDescrTy_ADTTyp_Constr_69"* @"$TyDescr_Option_None_Map_(String)_(Map_(String)_(String))_ADTTyp_Constr_87"]
@"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_m_TArgs_89" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_76"]
@"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_90" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_67" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_m_TArgs_89", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_69"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_69"*], [2 x %"$TyDescrTy_ADTTyp_Constr_69"*]* @"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_m_constrs_88", i32 0, i32 0), %"$TyDescrTy_ADTTyp_68"* @"$TyDescr_Option_ADTTyp_81" }
@"$TyDescr_Option_Some_Map_(String)_(String)_Constr_m_args_91" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_77"]
@"$TyDescr_ADT_Some_92" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Map_(String)_(String)_ADTTyp_Constr_93" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_69" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_92", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Map_(String)_(String)_Constr_m_args_91", i32 0, i32 0) }
@"$TyDescr_Option_None_Map_(String)_(String)_Constr_m_args_94" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_95" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Map_(String)_(String)_ADTTyp_Constr_96" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_69" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_95", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Map_(String)_(String)_Constr_m_args_94", i32 0, i32 0) }
@"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_m_constrs_97" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_69"*] [%"$TyDescrTy_ADTTyp_Constr_69"* @"$TyDescr_Option_Some_Map_(String)_(String)_ADTTyp_Constr_93", %"$TyDescrTy_ADTTyp_Constr_69"* @"$TyDescr_Option_None_Map_(String)_(String)_ADTTyp_Constr_96"]
@"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_m_TArgs_98" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_77"]
@"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_99" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_67" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_m_TArgs_98", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_69"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_69"*], [2 x %"$TyDescrTy_ADTTyp_Constr_69"*]* @"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_m_constrs_97", i32 0, i32 0), %"$TyDescrTy_ADTTyp_68"* @"$TyDescr_Option_ADTTyp_81" }
@"$TyDescr_Option_Some_String_Constr_m_args_100" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_52"]
@"$TyDescr_ADT_Some_101" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_String_ADTTyp_Constr_102" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_69" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_101", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_String_Constr_m_args_100", i32 0, i32 0) }
@"$TyDescr_Option_None_String_Constr_m_args_103" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_104" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_String_ADTTyp_Constr_105" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_69" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_104", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_String_Constr_m_args_103", i32 0, i32 0) }
@"$TyDescr_Option_String_ADTTyp_Specl_m_constrs_106" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_69"*] [%"$TyDescrTy_ADTTyp_Constr_69"* @"$TyDescr_Option_Some_String_ADTTyp_Constr_102", %"$TyDescrTy_ADTTyp_Constr_69"* @"$TyDescr_Option_None_String_ADTTyp_Constr_105"]
@"$TyDescr_Option_String_ADTTyp_Specl_m_TArgs_107" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_52"]
@"$TyDescr_Option_String_ADTTyp_Specl_108" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_67" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_String_ADTTyp_Specl_m_TArgs_107", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_69"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_69"*], [2 x %"$TyDescrTy_ADTTyp_Constr_69"*]* @"$TyDescr_Option_String_ADTTyp_Specl_m_constrs_106", i32 0, i32 0), %"$TyDescrTy_ADTTyp_68"* @"$TyDescr_Option_ADTTyp_81" }
@"$TyDescr_Option_ADTTyp_m_specls_109" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_67"*] [%"$TyDescrTy_ADTTyp_Specl_67"* @"$TyDescr_Option_Map_(String)_(Map_(String)_(String))_ADTTyp_Specl_90", %"$TyDescrTy_ADTTyp_Specl_67"* @"$TyDescr_Option_Map_(String)_(String)_ADTTyp_Specl_99", %"$TyDescrTy_ADTTyp_Specl_67"* @"$TyDescr_Option_String_ADTTyp_Specl_108"]
@"$TyDescr_ADT_Option_110" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Bool_ADTTyp_111" = unnamed_addr constant %"$TyDescrTy_ADTTyp_68" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_122", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_67"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_67"*], [1 x %"$TyDescrTy_ADTTyp_Specl_67"*]* @"$TyDescr_Bool_ADTTyp_m_specls_121", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_112" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_113" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_114" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_69" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_113", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_112", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_115" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_116" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_117" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_69" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_116", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_115", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_118" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_69"*] [%"$TyDescrTy_ADTTyp_Constr_69"* @"$TyDescr_Bool_True_ADTTyp_Constr_114", %"$TyDescrTy_ADTTyp_Constr_69"* @"$TyDescr_Bool_False_ADTTyp_Constr_117"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_119" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_120" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_67" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_119", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_69"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_69"*], [2 x %"$TyDescrTy_ADTTyp_Constr_69"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_118", i32 0, i32 0), %"$TyDescrTy_ADTTyp_68"* @"$TyDescr_Bool_ADTTyp_111" }
@"$TyDescr_Bool_ADTTyp_m_specls_121" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_67"*] [%"$TyDescrTy_ADTTyp_Specl_67"* @"$TyDescr_Bool_ADTTyp_Specl_120"]
@"$TyDescr_ADT_Bool_122" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_MapTyp_123" = unnamed_addr constant %"$TyDescr_MapTyp_74" { %_TyDescrTy_Typ* @"$TyDescr_String_52", %_TyDescrTy_Typ* @"$TyDescr_Map_76" }
@"$TyDescr_MapTyp_124" = unnamed_addr constant %"$TyDescr_MapTyp_74" { %_TyDescrTy_Typ* @"$TyDescr_String_52", %_TyDescrTy_Typ* @"$TyDescr_Map_77" }
@"$TyDescr_MapTyp_125" = unnamed_addr constant %"$TyDescr_MapTyp_74" { %_TyDescrTy_Typ* @"$TyDescr_String_52", %_TyDescrTy_Typ* @"$TyDescr_String_52" }
@"$TyDescr_AddrFields_126" = unnamed_addr constant %"$TyDescr_AddrTyp_79" { i32 -3, %"$TyDescr_AddrFieldTyp_78"* null }
@"$_gas_charge_acc_1" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$stringlit_200" = unnamed_addr constant [3 x i8] c"420"
@"$f_s1_202" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$f_m1_215" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$f_m2_227" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m3_239" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$f_m_251" = unnamed_addr constant [4 x i8] c"f_m\00"
@"$stringlit_268" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_273" = unnamed_addr constant [11 x i8] c"Test Failed"
@"$stringlit_276" = unnamed_addr constant [9 x i8] c"test_name"
@"$stringlit_312" = unnamed_addr constant [10 x i8] c"_exception"
@"$stringlit_317" = unnamed_addr constant [11 x i8] c"Test Failed"
@"$stringlit_320" = unnamed_addr constant [9 x i8] c"test_name"
@"$stringlit_327" = unnamed_addr constant [7 x i8] c"message"
@"$stringlit_363" = unnamed_addr constant [2 x i8] c"t1"
@"$f_s1_364" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$stringlit_389" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_446" = unnamed_addr constant [3 x i8] c"421"
@"$f_s1_457" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$stringlit_484" = unnamed_addr constant [2 x i8] c"t2"
@"$f_s1_485" = unnamed_addr constant [5 x i8] c"f_s1\00"
@"$stringlit_510" = unnamed_addr constant [3 x i8] c"421"
@"$stringlit_567" = unnamed_addr constant [4 x i8] c"key1"
@"$stringlit_578" = unnamed_addr constant [3 x i8] c"420"
@"$f_m1_593" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_620" = unnamed_addr constant [2 x i8] c"t3"
@"$stringlit_631" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_642" = unnamed_addr constant [4 x i8] c"key1"
@"$f_m1_646" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_720" = unnamed_addr constant [23 x i8] c"Incorrect value for key"
@"$stringlit_752" = unnamed_addr constant [4 x i8] c"key2"
@"$f_m1_756" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_794" = unnamed_addr constant [25 x i8] c"Rogue value found for key"
@"$f_m1_815" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_839" = unnamed_addr constant [2 x i8] c"t4"
@"$stringlit_850" = unnamed_addr constant [4 x i8] c"key1"
@"$f_m1_854" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_900" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_911" = unnamed_addr constant [5 x i8] c"key2a"
@"$stringlit_922" = unnamed_addr constant [3 x i8] c"420"
@"$f_m2_939" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_966" = unnamed_addr constant [2 x i8] c"t5"
@"$stringlit_977" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_988" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_999" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_1005" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1081" = unnamed_addr constant [23 x i8] c"Incorrect value fetched"
@"$stringlit_1129" = unnamed_addr constant [5 x i8] c"key2b"
@"$stringlit_1140" = unnamed_addr constant [3 x i8] c"840"
@"$stringlit_1176" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_1187" = unnamed_addr constant [3 x i8] c"841"
@"$stringlit_1218" = unnamed_addr constant [5 x i8] c"key1b"
@"$f_m2_1232" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1258" = unnamed_addr constant [2 x i8] c"t6"
@"$stringlit_1269" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_1280" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_1286" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1324" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_1373" = unnamed_addr constant [31 x i8] c"Incorrect value for key1a,key2a"
@"$stringlit_1395" = unnamed_addr constant [21 x i8] c"key1a,key2a not found"
@"$stringlit_1415" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1426" = unnamed_addr constant [5 x i8] c"key2b"
@"$f_m2_1432" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1470" = unnamed_addr constant [3 x i8] c"840"
@"$stringlit_1519" = unnamed_addr constant [31 x i8] c"Incorrect value for key1b,key2b"
@"$stringlit_1541" = unnamed_addr constant [21 x i8] c"key1b,key2b not found"
@"$stringlit_1561" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1572" = unnamed_addr constant [5 x i8] c"key2c"
@"$f_m2_1578" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1616" = unnamed_addr constant [3 x i8] c"841"
@"$stringlit_1665" = unnamed_addr constant [31 x i8] c"Incorrect value for key1b,key2c"
@"$stringlit_1687" = unnamed_addr constant [21 x i8] c"key1b,key2c not found"
@"$f_m2_1706" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1730" = unnamed_addr constant [2 x i8] c"t7"
@"$stringlit_1741" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_1752" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_1758" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1796" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_1845" = unnamed_addr constant [31 x i8] c"Incorrect value for key1a,key2a"
@"$stringlit_1867" = unnamed_addr constant [21 x i8] c"key1a,key2a not found"
@"$stringlit_1887" = unnamed_addr constant [5 x i8] c"key1b"
@"$f_m2_1891" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_1932" = unnamed_addr constant [36 x i8] c"Fail: deleted value for key1b found!"
@"$stringlit_1954" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_1965" = unnamed_addr constant [5 x i8] c"key2b"
@"$f_m2_1971" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2009" = unnamed_addr constant [42 x i8] c"Fail: deleted value for key1b,key2b found!"
@"$stringlit_2031" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_2042" = unnamed_addr constant [5 x i8] c"key2d"
@"$f_m2_2048" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2086" = unnamed_addr constant [42 x i8] c"Fail: deleted value for key1b,key2d found!"
@"$stringlit_2108" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_2119" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_2130" = unnamed_addr constant [3 x i8] c"121"
@"$f_m2_2147" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2174" = unnamed_addr constant [2 x i8] c"t8"
@"$stringlit_2185" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_2196" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m2_2202" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2240" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_2289" = unnamed_addr constant [31 x i8] c"Incorrect value for key1a,key2a"
@"$stringlit_2311" = unnamed_addr constant [21 x i8] c"key1a,key2a not found"
@"$stringlit_2331" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_2342" = unnamed_addr constant [5 x i8] c"key2c"
@"$f_m2_2348" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2386" = unnamed_addr constant [3 x i8] c"121"
@"$stringlit_2435" = unnamed_addr constant [31 x i8] c"Incorrect value for key1b,key2c"
@"$stringlit_2457" = unnamed_addr constant [21 x i8] c"key1b,key2c not found"
@"$f_m1_2489" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2515" = unnamed_addr constant [2 x i8] c"t9"
@"$f_m1_2516" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2602" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_2613" = unnamed_addr constant [3 x i8] c"420"
@"$f_m1_2648" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2674" = unnamed_addr constant [3 x i8] c"t10"
@"$stringlit_2685" = unnamed_addr constant [5 x i8] c"key1a"
@"$f_m1_2686" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2744" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_2793" = unnamed_addr constant [25 x i8] c"Incorrect value for key1a"
@"$stringlit_2815" = unnamed_addr constant [15 x i8] c"key1a not found"
@"$f_m1_2834" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_2858" = unnamed_addr constant [3 x i8] c"t11"
@"$f_m1_2859" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$f_m2_2957" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_2983" = unnamed_addr constant [3 x i8] c"t12"
@"$f_m2_2984" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_3083" = unnamed_addr constant [5 x i8] c"key1a"
@"$f_m2_3097" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_3123" = unnamed_addr constant [3 x i8] c"t13"
@"$stringlit_3134" = unnamed_addr constant [5 x i8] c"key1a"
@"$f_m2_3138" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_3231" = unnamed_addr constant [29 x i8] c"Submap should have been empty"
@"$stringlit_3279" = unnamed_addr constant [5 x i8] c"key2a"
@"$f_m3_3358" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$stringlit_3384" = unnamed_addr constant [3 x i8] c"t14"
@"$f_m3_3385" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$f_m_3483" = unnamed_addr constant [4 x i8] c"f_m\00"
@"$stringlit_3509" = unnamed_addr constant [3 x i8] c"t15"
@"$f_m3_3510" = unnamed_addr constant [5 x i8] c"f_m3\00"
@"$stringlit_3588" = unnamed_addr constant [22 x i8] c"Incorrect size of f_m3"
@"$stringlit_3608" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_3619" = unnamed_addr constant [5 x i8] c"key2a"
@"$stringlit_3786" = unnamed_addr constant [36 x i8] c"Incorrect size of f_m3[key1a][key2a]"
@"$stringlit_3808" = unnamed_addr constant [19 x i8] c"Unexpected empty m1"
@"$stringlit_3830" = unnamed_addr constant [28 x i8] c"Incorrect size of f_m3[key1]"
@"$stringlit_3852" = unnamed_addr constant [19 x i8] c"Unexpected empty m2"
@"$stringlit_3872" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_3883" = unnamed_addr constant [5 x i8] c"key2b"
@"$stringlit_3894" = unnamed_addr constant [5 x i8] c"key1c"
@"$stringlit_3905" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_3916" = unnamed_addr constant [5 x i8] c"key1d"
@"$stringlit_3927" = unnamed_addr constant [5 x i8] c"key2d"
@"$stringlit_3938" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_3949" = unnamed_addr constant [3 x i8] c"421"
@"$stringlit_3960" = unnamed_addr constant [3 x i8] c"422"
@"$stringlit_3971" = unnamed_addr constant [3 x i8] c"423"
@"$f_m2_4214" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_4240" = unnamed_addr constant [3 x i8] c"t16"
@"$stringlit_4251" = unnamed_addr constant [5 x i8] c"key1a"
@"$stringlit_4262" = unnamed_addr constant [5 x i8] c"key2a"
@"$stringlit_4273" = unnamed_addr constant [5 x i8] c"key1b"
@"$stringlit_4284" = unnamed_addr constant [5 x i8] c"key2b"
@"$stringlit_4295" = unnamed_addr constant [5 x i8] c"key1c"
@"$stringlit_4306" = unnamed_addr constant [5 x i8] c"key2c"
@"$stringlit_4317" = unnamed_addr constant [5 x i8] c"key1d"
@"$stringlit_4328" = unnamed_addr constant [5 x i8] c"key2d"
@"$f_m2_4334" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m2_4353" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m2_4372" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$f_m2_4391" = unnamed_addr constant [5 x i8] c"f_m2\00"
@"$stringlit_4415" = unnamed_addr constant [3 x i8] c"420"
@"$stringlit_4426" = unnamed_addr constant [3 x i8] c"421"
@"$stringlit_4437" = unnamed_addr constant [3 x i8] c"422"
@"$stringlit_4448" = unnamed_addr constant [3 x i8] c"423"
@"$stringlit_4741" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_4752" = unnamed_addr constant [3 x i8] c"420"
@"$f_m1_4795" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_4821" = unnamed_addr constant [3 x i8] c"t17"
@"$stringlit_4832" = unnamed_addr constant [0 x i8] zeroinitializer
@"$f_m1_4836" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$f_m1_4881" = unnamed_addr constant [5 x i8] c"f_m1\00"
@"$stringlit_4905" = unnamed_addr constant [3 x i8] c"t18"
@"$stringlit_4916" = unnamed_addr constant [0 x i8] zeroinitializer
@"$f_m1_4920" = unnamed_addr constant [5 x i8] c"f_m1\00"
@_tydescr_table = constant [24 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_77", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(String)_71", %_TyDescrTy_Typ* @"$TyDescr_Event_58", %_TyDescrTy_Typ* @"$TyDescr_Int64_40", %_TyDescrTy_Typ* @"$TyDescr_Addr_80", %_TyDescrTy_Typ* @"$TyDescr_Map_75", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_73", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_66", %_TyDescrTy_Typ* @"$TyDescr_Uint256_50", %_TyDescrTy_Typ* @"$TyDescr_Uint32_38", %_TyDescrTy_Typ* @"$TyDescr_Map_76", %_TyDescrTy_Typ* @"$TyDescr_Uint64_42", %_TyDescrTy_Typ* @"$TyDescr_Bnum_54", %_TyDescrTy_Typ* @"$TyDescr_Uint128_46", %_TyDescrTy_Typ* @"$TyDescr_Exception_60", %_TyDescrTy_Typ* @"$TyDescr_String_52", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(Map_(String)_(String))_70", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_72", %_TyDescrTy_Typ* @"$TyDescr_Int256_48", %_TyDescrTy_Typ* @"$TyDescr_Int128_44", %_TyDescrTy_Typ* @"$TyDescr_Bystr_64", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_62", %_TyDescrTy_Typ* @"$TyDescr_Message_56", %_TyDescrTy_Typ* @"$TyDescr_Int32_36"]
@_tydescr_table_length = constant i32 24
@"$pname__scilla_version_4968" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_4969" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_4970" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_4966"] [%"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_4968", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_38" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_4969", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_66" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_4970", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_54" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_4971" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4972" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4973" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t1_4974" = unnamed_addr constant [3 x %"$ParamDescr_4966"] [%"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4971", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4972", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4973", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }]
@"$tname_t1_4975" = unnamed_addr constant [2 x i8] c"t1"
@"$tpname__amount_4976" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4977" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4978" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t2_4979" = unnamed_addr constant [3 x %"$ParamDescr_4966"] [%"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4976", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4977", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4978", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }]
@"$tname_t2_4980" = unnamed_addr constant [2 x i8] c"t2"
@"$tpname__amount_4981" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4982" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4983" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t3_4984" = unnamed_addr constant [3 x %"$ParamDescr_4966"] [%"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4981", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4982", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4983", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }]
@"$tname_t3_4985" = unnamed_addr constant [2 x i8] c"t3"
@"$tpname__amount_4986" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4987" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4988" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t4_4989" = unnamed_addr constant [3 x %"$ParamDescr_4966"] [%"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4986", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4987", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4988", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }]
@"$tname_t4_4990" = unnamed_addr constant [2 x i8] c"t4"
@"$tpname__amount_4991" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4992" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4993" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t5_4994" = unnamed_addr constant [3 x %"$ParamDescr_4966"] [%"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4991", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4992", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4993", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }]
@"$tname_t5_4995" = unnamed_addr constant [2 x i8] c"t5"
@"$tpname__amount_4996" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_4997" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_4998" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t6_4999" = unnamed_addr constant [3 x %"$ParamDescr_4966"] [%"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_4996", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_4997", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_4998", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }]
@"$tname_t6_5000" = unnamed_addr constant [2 x i8] c"t6"
@"$tpname__amount_5001" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5002" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5003" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t7_5004" = unnamed_addr constant [3 x %"$ParamDescr_4966"] [%"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5001", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5002", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5003", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }]
@"$tname_t7_5005" = unnamed_addr constant [2 x i8] c"t7"
@"$tpname__amount_5006" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5007" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5008" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t8_5009" = unnamed_addr constant [3 x %"$ParamDescr_4966"] [%"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5006", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5007", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5008", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }]
@"$tname_t8_5010" = unnamed_addr constant [2 x i8] c"t8"
@"$tpname__amount_5011" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5012" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5013" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t9_5014" = unnamed_addr constant [3 x %"$ParamDescr_4966"] [%"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5011", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5012", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5013", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }]
@"$tname_t9_5015" = unnamed_addr constant [2 x i8] c"t9"
@"$tpname__amount_5016" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5017" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5018" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t10_5019" = unnamed_addr constant [3 x %"$ParamDescr_4966"] [%"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5016", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5017", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5018", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }]
@"$tname_t10_5020" = unnamed_addr constant [3 x i8] c"t10"
@"$tpname__amount_5021" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5022" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5023" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t11_5024" = unnamed_addr constant [3 x %"$ParamDescr_4966"] [%"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5021", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5022", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5023", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }]
@"$tname_t11_5025" = unnamed_addr constant [3 x i8] c"t11"
@"$tpname__amount_5026" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5027" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5028" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t12_5029" = unnamed_addr constant [3 x %"$ParamDescr_4966"] [%"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5026", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5027", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5028", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }]
@"$tname_t12_5030" = unnamed_addr constant [3 x i8] c"t12"
@"$tpname__amount_5031" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5032" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5033" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t13_5034" = unnamed_addr constant [3 x %"$ParamDescr_4966"] [%"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5031", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5032", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5033", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }]
@"$tname_t13_5035" = unnamed_addr constant [3 x i8] c"t13"
@"$tpname__amount_5036" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5037" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5038" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t14_5039" = unnamed_addr constant [3 x %"$ParamDescr_4966"] [%"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5036", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5037", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5038", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }]
@"$tname_t14_5040" = unnamed_addr constant [3 x i8] c"t14"
@"$tpname__amount_5041" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5042" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5043" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t15_5044" = unnamed_addr constant [3 x %"$ParamDescr_4966"] [%"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5041", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5042", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5043", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }]
@"$tname_t15_5045" = unnamed_addr constant [3 x i8] c"t15"
@"$tpname__amount_5046" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5047" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5048" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t16_5049" = unnamed_addr constant [3 x %"$ParamDescr_4966"] [%"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5046", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5047", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5048", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }]
@"$tname_t16_5050" = unnamed_addr constant [3 x i8] c"t16"
@"$tpname__amount_5051" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5052" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5053" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t17_5054" = unnamed_addr constant [3 x %"$ParamDescr_4966"] [%"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5051", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5052", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5053", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }]
@"$tname_t17_5055" = unnamed_addr constant [3 x i8] c"t17"
@"$tpname__amount_5056" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_5057" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_5058" = unnamed_addr constant [7 x i8] c"_sender"
@"$tparams_t18_5059" = unnamed_addr constant [3 x %"$ParamDescr_4966"] [%"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_5056", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_46" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_5057", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }, %"$ParamDescr_4966" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_5058", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_80" }]
@"$tname_t18_5060" = unnamed_addr constant [3 x i8] c"t18"
@_transition_parameters = constant [18 x %"$TransDescr_4967"] [%"$TransDescr_4967" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t1_4975", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4966"* getelementptr inbounds ([3 x %"$ParamDescr_4966"], [3 x %"$ParamDescr_4966"]* @"$tparams_t1_4974", i32 0, i32 0) }, %"$TransDescr_4967" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t2_4980", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4966"* getelementptr inbounds ([3 x %"$ParamDescr_4966"], [3 x %"$ParamDescr_4966"]* @"$tparams_t2_4979", i32 0, i32 0) }, %"$TransDescr_4967" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t3_4985", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4966"* getelementptr inbounds ([3 x %"$ParamDescr_4966"], [3 x %"$ParamDescr_4966"]* @"$tparams_t3_4984", i32 0, i32 0) }, %"$TransDescr_4967" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t4_4990", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4966"* getelementptr inbounds ([3 x %"$ParamDescr_4966"], [3 x %"$ParamDescr_4966"]* @"$tparams_t4_4989", i32 0, i32 0) }, %"$TransDescr_4967" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t5_4995", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4966"* getelementptr inbounds ([3 x %"$ParamDescr_4966"], [3 x %"$ParamDescr_4966"]* @"$tparams_t5_4994", i32 0, i32 0) }, %"$TransDescr_4967" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t6_5000", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4966"* getelementptr inbounds ([3 x %"$ParamDescr_4966"], [3 x %"$ParamDescr_4966"]* @"$tparams_t6_4999", i32 0, i32 0) }, %"$TransDescr_4967" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t7_5005", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4966"* getelementptr inbounds ([3 x %"$ParamDescr_4966"], [3 x %"$ParamDescr_4966"]* @"$tparams_t7_5004", i32 0, i32 0) }, %"$TransDescr_4967" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t8_5010", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4966"* getelementptr inbounds ([3 x %"$ParamDescr_4966"], [3 x %"$ParamDescr_4966"]* @"$tparams_t8_5009", i32 0, i32 0) }, %"$TransDescr_4967" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tname_t9_5015", i32 0, i32 0), i32 2 }, i32 3, %"$ParamDescr_4966"* getelementptr inbounds ([3 x %"$ParamDescr_4966"], [3 x %"$ParamDescr_4966"]* @"$tparams_t9_5014", i32 0, i32 0) }, %"$TransDescr_4967" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t10_5020", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4966"* getelementptr inbounds ([3 x %"$ParamDescr_4966"], [3 x %"$ParamDescr_4966"]* @"$tparams_t10_5019", i32 0, i32 0) }, %"$TransDescr_4967" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t11_5025", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4966"* getelementptr inbounds ([3 x %"$ParamDescr_4966"], [3 x %"$ParamDescr_4966"]* @"$tparams_t11_5024", i32 0, i32 0) }, %"$TransDescr_4967" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t12_5030", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4966"* getelementptr inbounds ([3 x %"$ParamDescr_4966"], [3 x %"$ParamDescr_4966"]* @"$tparams_t12_5029", i32 0, i32 0) }, %"$TransDescr_4967" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t13_5035", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4966"* getelementptr inbounds ([3 x %"$ParamDescr_4966"], [3 x %"$ParamDescr_4966"]* @"$tparams_t13_5034", i32 0, i32 0) }, %"$TransDescr_4967" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t14_5040", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4966"* getelementptr inbounds ([3 x %"$ParamDescr_4966"], [3 x %"$ParamDescr_4966"]* @"$tparams_t14_5039", i32 0, i32 0) }, %"$TransDescr_4967" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t15_5045", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4966"* getelementptr inbounds ([3 x %"$ParamDescr_4966"], [3 x %"$ParamDescr_4966"]* @"$tparams_t15_5044", i32 0, i32 0) }, %"$TransDescr_4967" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t16_5050", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4966"* getelementptr inbounds ([3 x %"$ParamDescr_4966"], [3 x %"$ParamDescr_4966"]* @"$tparams_t16_5049", i32 0, i32 0) }, %"$TransDescr_4967" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t17_5055", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4966"* getelementptr inbounds ([3 x %"$ParamDescr_4966"], [3 x %"$ParamDescr_4966"]* @"$tparams_t17_5054", i32 0, i32 0) }, %"$TransDescr_4967" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tname_t18_5060", i32 0, i32 0), i32 3 }, i32 3, %"$ParamDescr_4966"* getelementptr inbounds ([3 x %"$ParamDescr_4966"], [3 x %"$ParamDescr_4966"]* @"$tparams_t18_5059", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 18

define internal %TName_Bool* @"$fundef_27"(%"$$fundef_27_env_127"* %0, %TName_Bool* %1) !dbg !3 {
entry:
  %"$c_171" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$c_171", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$c_171", metadata !9, metadata !DIExpression()), !dbg !12
  %"$$fundef_27_env_b_141" = getelementptr inbounds %"$$fundef_27_env_127", %"$$fundef_27_env_127"* %0, i32 0, i32 0
  %"$b_envload_142" = load %TName_Bool*, %TName_Bool** %"$$fundef_27_env_b_141", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_142", %TName_Bool** %b, align 8
  %"$retval_28" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$retval_28", metadata !13, metadata !DIExpression()), !dbg !14
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 2, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %entry
  %"$consume_147" = sub i64 %"$gasrem_143", 2
  store i64 %"$consume_147", i64* @_gasrem, align 8
  %"$b_149" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_150" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_149", i32 0, i32 0
  %"$b_tag_151" = load i8, i8* %"$b_tag_150", align 1
  switch i8 %"$b_tag_151", label %"$empty_default_152" [
    i8 1, label %"$False_153"
    i8 0, label %"$True_163"
  ], !dbg !14

"$False_153":                                     ; preds = %"$have_gas_146"
  %"$b_154" = bitcast %TName_Bool* %"$b_149" to %CName_False*
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 1, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$False_153"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$False_153"
  %"$consume_159" = sub i64 %"$gasrem_155", 1
  store i64 %"$consume_159", i64* @_gasrem, align 8
  %"$adtval_160_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_160_salloc" = call i8* @_salloc(i8* %"$adtval_160_load", i64 1)
  %"$adtval_160" = bitcast i8* %"$adtval_160_salloc" to %CName_False*
  %"$adtgep_161" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_160", i32 0, i32 0
  store i8 1, i8* %"$adtgep_161", align 1
  %"$adtptr_162" = bitcast %CName_False* %"$adtval_160" to %TName_Bool*
  store %TName_Bool* %"$adtptr_162", %TName_Bool** %"$retval_28", align 8, !dbg !15
  br label %"$matchsucc_148"

"$True_163":                                      ; preds = %"$have_gas_146"
  %"$b_164" = bitcast %TName_Bool* %"$b_149" to %CName_True*
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 1, %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %"$True_163"
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %"$True_163"
  %"$consume_169" = sub i64 %"$gasrem_165", 1
  store i64 %"$consume_169", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_28", align 8, !dbg !18
  br label %"$matchsucc_148"

"$empty_default_152":                             ; preds = %"$have_gas_146"
  br label %"$matchsucc_148"

"$matchsucc_148":                                 ; preds = %"$have_gas_168", %"$have_gas_158", %"$empty_default_152"
  %"$$retval_28_170" = load %TName_Bool*, %TName_Bool** %"$retval_28", align 8
  ret %TName_Bool* %"$$retval_28_170"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_25"(%"$$fundef_25_env_128"* %0, %TName_Bool* %1) !dbg !20 {
entry:
  %"$b_140" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$b_140", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$b_140", metadata !21, metadata !DIExpression()), !dbg !22
  %"$retval_26" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %entry
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  %"$$fundef_27_envp_134_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_27_envp_134_salloc" = call i8* @_salloc(i8* %"$$fundef_27_envp_134_load", i64 8)
  %"$$fundef_27_envp_134" = bitcast i8* %"$$fundef_27_envp_134_salloc" to %"$$fundef_27_env_127"*
  %"$$fundef_27_env_voidp_136" = bitcast %"$$fundef_27_env_127"* %"$$fundef_27_envp_134" to i8*
  %"$$fundef_27_cloval_137" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_27_env_127"*, %TName_Bool*)* @"$fundef_27" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_27_env_voidp_136", 1
  %"$$fundef_27_env_b_138" = getelementptr inbounds %"$$fundef_27_env_127", %"$$fundef_27_env_127"* %"$$fundef_27_envp_134", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_27_env_b_138", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_27_cloval_137", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_26", align 8, !dbg !23
  %"$$retval_26_139" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_26", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_26_139"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

define void @_init_libs() !dbg !24 {
entry:
  %"$gasrem_172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_173" = icmp ugt i64 5, %"$gasrem_172"
  br i1 %"$gascmp_173", label %"$out_of_gas_174", label %"$have_gas_175"

"$out_of_gas_174":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_175"

"$have_gas_175":                                  ; preds = %"$out_of_gas_174", %entry
  %"$consume_176" = sub i64 %"$gasrem_172", 5
  store i64 %"$consume_176", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_1", align 4, !dbg !26
  %"$gasrem_177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_178" = icmp ugt i64 7, %"$gasrem_177"
  br i1 %"$gascmp_178", label %"$out_of_gas_179", label %"$have_gas_180"

"$out_of_gas_179":                                ; preds = %"$have_gas_175"
  call void @_out_of_gas()
  br label %"$have_gas_180"

"$have_gas_180":                                  ; preds = %"$out_of_gas_179", %"$have_gas_175"
  %"$consume_181" = sub i64 %"$gasrem_177", 7
  store i64 %"$consume_181", i64* @_gasrem, align 8
  store %Int32 { i32 7 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !26
  %"$gasrem_182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_183" = icmp ugt i64 1, %"$gasrem_182"
  br i1 %"$gascmp_183", label %"$out_of_gas_184", label %"$have_gas_185"

"$out_of_gas_184":                                ; preds = %"$have_gas_180"
  call void @_out_of_gas()
  br label %"$have_gas_185"

"$have_gas_185":                                  ; preds = %"$out_of_gas_184", %"$have_gas_180"
  %"$consume_186" = sub i64 %"$gasrem_182", 1
  store i64 %"$consume_186", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_25_env_128"*, %TName_Bool*)* @"$fundef_25" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !27
  ret void
}

define void @_deploy_ops() !dbg !28 {
entry:
  %"$gasrem_190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_191" = icmp ugt i64 1, %"$gasrem_190"
  br i1 %"$gascmp_191", label %"$out_of_gas_192", label %"$have_gas_193"

"$out_of_gas_192":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_193"

"$have_gas_193":                                  ; preds = %"$out_of_gas_192", %entry
  %"$consume_194" = sub i64 %"$gasrem_190", 1
  store i64 %"$consume_194", i64* @_gasrem, align 8
  %"$f_s1_29" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$f_s1_29", metadata !29, metadata !DIExpression()), !dbg !31
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 1, %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %"$have_gas_193"
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %"$have_gas_193"
  %"$consume_199" = sub i64 %"$gasrem_195", 1
  store i64 %"$consume_199", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_200", i32 0, i32 0), i32 3 }, %String* %"$f_s1_29", align 8, !dbg !32
  %"$execptr_load_201" = load i8*, i8** @_execptr, align 8
  %"$$f_s1_29_203" = load %String, %String* %"$f_s1_29", align 8
  %"$update_value_204" = alloca %String, align 8
  store %String %"$$f_s1_29_203", %String* %"$update_value_204", align 8
  %"$update_value_205" = bitcast %String* %"$update_value_204" to i8*
  call void @_update_field(i8* %"$execptr_load_201", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_202", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_52", i32 0, i8* null, i8* %"$update_value_205"), !dbg !32
  %"$f_m1_30" = alloca %Map_String_String*, align 8
  call void @llvm.dbg.declare(metadata %Map_String_String** %"$f_m1_30", metadata !33, metadata !DIExpression()), !dbg !36
  %"$gasrem_206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_207" = icmp ugt i64 1, %"$gasrem_206"
  br i1 %"$gascmp_207", label %"$out_of_gas_208", label %"$have_gas_209"

"$out_of_gas_208":                                ; preds = %"$have_gas_198"
  call void @_out_of_gas()
  br label %"$have_gas_209"

"$have_gas_209":                                  ; preds = %"$out_of_gas_208", %"$have_gas_198"
  %"$consume_210" = sub i64 %"$gasrem_206", 1
  store i64 %"$consume_210", i64* @_gasrem, align 8
  %"$execptr_load_211" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_212" = call i8* @_new_empty_map(i8* %"$execptr_load_211")
  %"$_new_empty_map_213" = bitcast i8* %"$_new_empty_map_call_212" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_213", %Map_String_String** %"$f_m1_30", align 8, !dbg !37
  %"$execptr_load_214" = load i8*, i8** @_execptr, align 8
  %"$$f_m1_30_216" = load %Map_String_String*, %Map_String_String** %"$f_m1_30", align 8
  %"$update_value_217" = bitcast %Map_String_String* %"$$f_m1_30_216" to i8*
  call void @_update_field(i8* %"$execptr_load_214", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_215", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_77", i32 0, i8* null, i8* %"$update_value_217"), !dbg !37
  %"$f_m2_31" = alloca %"Map_String_Map_(String)_(String)"*, align 8
  call void @llvm.dbg.declare(metadata %"Map_String_Map_(String)_(String)"** %"$f_m2_31", metadata !38, metadata !DIExpression()), !dbg !41
  %"$gasrem_218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_219" = icmp ugt i64 1, %"$gasrem_218"
  br i1 %"$gascmp_219", label %"$out_of_gas_220", label %"$have_gas_221"

"$out_of_gas_220":                                ; preds = %"$have_gas_209"
  call void @_out_of_gas()
  br label %"$have_gas_221"

"$have_gas_221":                                  ; preds = %"$out_of_gas_220", %"$have_gas_209"
  %"$consume_222" = sub i64 %"$gasrem_218", 1
  store i64 %"$consume_222", i64* @_gasrem, align 8
  %"$execptr_load_223" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_224" = call i8* @_new_empty_map(i8* %"$execptr_load_223")
  %"$_new_empty_map_225" = bitcast i8* %"$_new_empty_map_call_224" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_225", %"Map_String_Map_(String)_(String)"** %"$f_m2_31", align 8, !dbg !42
  %"$execptr_load_226" = load i8*, i8** @_execptr, align 8
  %"$$f_m2_31_228" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %"$f_m2_31", align 8
  %"$update_value_229" = bitcast %"Map_String_Map_(String)_(String)"* %"$$f_m2_31_228" to i8*
  call void @_update_field(i8* %"$execptr_load_226", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_227", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 0, i8* null, i8* %"$update_value_229"), !dbg !42
  %"$f_m3_32" = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*, align 8
  call void @llvm.dbg.declare(metadata %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$f_m3_32", metadata !43, metadata !DIExpression()), !dbg !46
  %"$gasrem_230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_231" = icmp ugt i64 1, %"$gasrem_230"
  br i1 %"$gascmp_231", label %"$out_of_gas_232", label %"$have_gas_233"

"$out_of_gas_232":                                ; preds = %"$have_gas_221"
  call void @_out_of_gas()
  br label %"$have_gas_233"

"$have_gas_233":                                  ; preds = %"$out_of_gas_232", %"$have_gas_221"
  %"$consume_234" = sub i64 %"$gasrem_230", 1
  store i64 %"$consume_234", i64* @_gasrem, align 8
  %"$execptr_load_235" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_236" = call i8* @_new_empty_map(i8* %"$execptr_load_235")
  %"$_new_empty_map_237" = bitcast i8* %"$_new_empty_map_call_236" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$_new_empty_map_237", %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$f_m3_32", align 8, !dbg !47
  %"$execptr_load_238" = load i8*, i8** @_execptr, align 8
  %"$$f_m3_32_240" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$f_m3_32", align 8
  %"$update_value_241" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$f_m3_32_240" to i8*
  call void @_update_field(i8* %"$execptr_load_238", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_239", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 0, i8* null, i8* %"$update_value_241"), !dbg !47
  %"$f_m_33" = alloca %"Map_String_Map_(String)_(String)"*, align 8
  call void @llvm.dbg.declare(metadata %"Map_String_Map_(String)_(String)"** %"$f_m_33", metadata !48, metadata !DIExpression()), !dbg !49
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 1, %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %"$have_gas_233"
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %"$have_gas_233"
  %"$consume_246" = sub i64 %"$gasrem_242", 1
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %"$execptr_load_247" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_248" = call i8* @_new_empty_map(i8* %"$execptr_load_247")
  %"$_new_empty_map_249" = bitcast i8* %"$_new_empty_map_call_248" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_249", %"Map_String_Map_(String)_(String)"** %"$f_m_33", align 8, !dbg !50
  %"$execptr_load_250" = load i8*, i8** @_execptr, align 8
  %"$$f_m_33_252" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %"$f_m_33", align 8
  %"$update_value_253" = bitcast %"Map_String_Map_(String)_(String)"* %"$$f_m_33_252" to i8*
  call void @_update_field(i8* %"$execptr_load_250", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$f_m_251", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 0, i8* null, i8* %"$update_value_253"), !dbg !50
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

declare i8* @_new_empty_map(i8*)

define internal void @"$fail_254"(%Uint128 %_amount, [20 x i8]* %"$_origin_255", [20 x i8]* %"$_sender_256", %String %tname) !dbg !51 {
entry:
  %"$tname_297" = alloca %String, align 8
  store %String %tname, %String* %"$tname_297", align 8
  call void @llvm.dbg.declare(metadata %String* %"$tname_297", metadata !52, metadata !DIExpression()), !dbg !53
  %"$_sender_296" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_256", [20 x i8]** %"$_sender_296", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_296", metadata !54, metadata !DIExpression()), !dbg !56
  %"$_origin_295" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_255", [20 x i8]** %"$_origin_295", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_295", metadata !57, metadata !DIExpression()), !dbg !56
  %"$_amount_294" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_294", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_294", metadata !58, metadata !DIExpression()), !dbg !56
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_255", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_256", align 1
  %"$gasrem_257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_258" = icmp ugt i64 1, %"$gasrem_257"
  br i1 %"$gascmp_258", label %"$out_of_gas_259", label %"$have_gas_260"

"$out_of_gas_259":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_260"

"$have_gas_260":                                  ; preds = %"$out_of_gas_259", %entry
  %"$consume_261" = sub i64 %"$gasrem_257", 1
  store i64 %"$consume_261", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e, metadata !60, metadata !DIExpression()), !dbg !63
  %"$gasrem_262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_263" = icmp ugt i64 1, %"$gasrem_262"
  br i1 %"$gascmp_263", label %"$out_of_gas_264", label %"$have_gas_265"

"$out_of_gas_264":                                ; preds = %"$have_gas_260"
  call void @_out_of_gas()
  br label %"$have_gas_265"

"$have_gas_265":                                  ; preds = %"$out_of_gas_264", %"$have_gas_260"
  %"$consume_266" = sub i64 %"$gasrem_262", 1
  store i64 %"$consume_266", i64* @_gasrem, align 8
  %"$msgobj_267_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_267_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_267_salloc_load", i64 81)
  %"$msgobj_267_salloc" = bitcast i8* %"$msgobj_267_salloc_salloc" to [81 x i8]*
  %"$msgobj_267" = bitcast [81 x i8]* %"$msgobj_267_salloc" to i8*
  store i8 2, i8* %"$msgobj_267", align 1
  %"$msgobj_fname_269" = getelementptr i8, i8* %"$msgobj_267", i32 1
  %"$msgobj_fname_270" = bitcast i8* %"$msgobj_fname_269" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_268", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_270", align 8
  %"$msgobj_td_271" = getelementptr i8, i8* %"$msgobj_267", i32 17
  %"$msgobj_td_272" = bitcast i8* %"$msgobj_td_271" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_52", %_TyDescrTy_Typ** %"$msgobj_td_272", align 8
  %"$msgobj_v_274" = getelementptr i8, i8* %"$msgobj_267", i32 25
  %"$msgobj_v_275" = bitcast i8* %"$msgobj_v_274" to %String*
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_273", i32 0, i32 0), i32 11 }, %String* %"$msgobj_v_275", align 8
  %"$msgobj_fname_277" = getelementptr i8, i8* %"$msgobj_267", i32 41
  %"$msgobj_fname_278" = bitcast i8* %"$msgobj_fname_277" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_276", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_278", align 8
  %"$msgobj_td_279" = getelementptr i8, i8* %"$msgobj_267", i32 57
  %"$msgobj_td_280" = bitcast i8* %"$msgobj_td_279" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_52", %_TyDescrTy_Typ** %"$msgobj_td_280", align 8
  %"$msgobj_v_281" = getelementptr i8, i8* %"$msgobj_267", i32 65
  %"$msgobj_v_282" = bitcast i8* %"$msgobj_v_281" to %String*
  store %String %tname, %String* %"$msgobj_v_282", align 8
  store i8* %"$msgobj_267", i8** %e, align 8, !dbg !64
  %"$e_284" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_286" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_60", i8* %"$e_284")
  %"$gasrem_287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_288" = icmp ugt i64 %"$_literal_cost_call_286", %"$gasrem_287"
  br i1 %"$gascmp_288", label %"$out_of_gas_289", label %"$have_gas_290"

"$out_of_gas_289":                                ; preds = %"$have_gas_265"
  call void @_out_of_gas()
  br label %"$have_gas_290"

"$have_gas_290":                                  ; preds = %"$out_of_gas_289", %"$have_gas_265"
  %"$consume_291" = sub i64 %"$gasrem_287", %"$_literal_cost_call_286"
  store i64 %"$consume_291", i64* @_gasrem, align 8
  %"$execptr_load_292" = load i8*, i8** @_execptr, align 8
  %"$e_293" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_292", %_TyDescrTy_Typ* @"$TyDescr_Exception_60", i8* %"$e_293"), !dbg !65
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_throw(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$_origin_299", [20 x i8]* %"$_sender_300", %String %tname, %String %msg) !dbg !66 {
entry:
  %"$msg_349" = alloca %String, align 8
  store %String %msg, %String* %"$msg_349", align 8
  call void @llvm.dbg.declare(metadata %String* %"$msg_349", metadata !67, metadata !DIExpression()), !dbg !68
  %"$tname_348" = alloca %String, align 8
  store %String %tname, %String* %"$tname_348", align 8
  call void @llvm.dbg.declare(metadata %String* %"$tname_348", metadata !69, metadata !DIExpression()), !dbg !70
  %"$_sender_347" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_300", [20 x i8]** %"$_sender_347", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_347", metadata !71, metadata !DIExpression()), !dbg !72
  %"$_origin_346" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_299", [20 x i8]** %"$_origin_346", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_346", metadata !73, metadata !DIExpression()), !dbg !72
  %"$_amount_345" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_345", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_345", metadata !74, metadata !DIExpression()), !dbg !72
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_299", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_300", align 1
  %"$gasrem_301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_302" = icmp ugt i64 1, %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %entry
  %"$consume_305" = sub i64 %"$gasrem_301", 1
  store i64 %"$consume_305", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %e, metadata !75, metadata !DIExpression()), !dbg !76
  %"$gasrem_306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_307" = icmp ugt i64 1, %"$gasrem_306"
  br i1 %"$gascmp_307", label %"$out_of_gas_308", label %"$have_gas_309"

"$out_of_gas_308":                                ; preds = %"$have_gas_304"
  call void @_out_of_gas()
  br label %"$have_gas_309"

"$have_gas_309":                                  ; preds = %"$out_of_gas_308", %"$have_gas_304"
  %"$consume_310" = sub i64 %"$gasrem_306", 1
  store i64 %"$consume_310", i64* @_gasrem, align 8
  %"$msgobj_311_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_311_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_311_salloc_load", i64 121)
  %"$msgobj_311_salloc" = bitcast i8* %"$msgobj_311_salloc_salloc" to [121 x i8]*
  %"$msgobj_311" = bitcast [121 x i8]* %"$msgobj_311_salloc" to i8*
  store i8 3, i8* %"$msgobj_311", align 1
  %"$msgobj_fname_313" = getelementptr i8, i8* %"$msgobj_311", i32 1
  %"$msgobj_fname_314" = bitcast i8* %"$msgobj_fname_313" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_312", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_314", align 8
  %"$msgobj_td_315" = getelementptr i8, i8* %"$msgobj_311", i32 17
  %"$msgobj_td_316" = bitcast i8* %"$msgobj_td_315" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_52", %_TyDescrTy_Typ** %"$msgobj_td_316", align 8
  %"$msgobj_v_318" = getelementptr i8, i8* %"$msgobj_311", i32 25
  %"$msgobj_v_319" = bitcast i8* %"$msgobj_v_318" to %String*
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_317", i32 0, i32 0), i32 11 }, %String* %"$msgobj_v_319", align 8
  %"$msgobj_fname_321" = getelementptr i8, i8* %"$msgobj_311", i32 41
  %"$msgobj_fname_322" = bitcast i8* %"$msgobj_fname_321" to %String*
  store %String { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$stringlit_320", i32 0, i32 0), i32 9 }, %String* %"$msgobj_fname_322", align 8
  %"$msgobj_td_323" = getelementptr i8, i8* %"$msgobj_311", i32 57
  %"$msgobj_td_324" = bitcast i8* %"$msgobj_td_323" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_52", %_TyDescrTy_Typ** %"$msgobj_td_324", align 8
  %"$msgobj_v_325" = getelementptr i8, i8* %"$msgobj_311", i32 65
  %"$msgobj_v_326" = bitcast i8* %"$msgobj_v_325" to %String*
  store %String %tname, %String* %"$msgobj_v_326", align 8
  %"$msgobj_fname_328" = getelementptr i8, i8* %"$msgobj_311", i32 81
  %"$msgobj_fname_329" = bitcast i8* %"$msgobj_fname_328" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_327", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_329", align 8
  %"$msgobj_td_330" = getelementptr i8, i8* %"$msgobj_311", i32 97
  %"$msgobj_td_331" = bitcast i8* %"$msgobj_td_330" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_52", %_TyDescrTy_Typ** %"$msgobj_td_331", align 8
  %"$msgobj_v_332" = getelementptr i8, i8* %"$msgobj_311", i32 105
  %"$msgobj_v_333" = bitcast i8* %"$msgobj_v_332" to %String*
  store %String %msg, %String* %"$msgobj_v_333", align 8
  store i8* %"$msgobj_311", i8** %e, align 8, !dbg !77
  %"$e_335" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_337" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Exception_60", i8* %"$e_335")
  %"$gasrem_338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_339" = icmp ugt i64 %"$_literal_cost_call_337", %"$gasrem_338"
  br i1 %"$gascmp_339", label %"$out_of_gas_340", label %"$have_gas_341"

"$out_of_gas_340":                                ; preds = %"$have_gas_309"
  call void @_out_of_gas()
  br label %"$have_gas_341"

"$have_gas_341":                                  ; preds = %"$out_of_gas_340", %"$have_gas_309"
  %"$consume_342" = sub i64 %"$gasrem_338", %"$_literal_cost_call_337"
  store i64 %"$consume_342", i64* @_gasrem, align 8
  %"$execptr_load_343" = load i8*, i8** @_execptr, align 8
  %"$e_344" = load i8*, i8** %e, align 8
  call void @_throw(i8* %"$execptr_load_343", %_TyDescrTy_Typ* @"$TyDescr_Exception_60", i8* %"$e_344"), !dbg !78
  ret void
}

define internal void @"$t1_350"(%Uint128 %_amount, [20 x i8]* %"$_origin_351", [20 x i8]* %"$_sender_352") !dbg !79 {
entry:
  %"$_sender_463" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_352", [20 x i8]** %"$_sender_463", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_463", metadata !80, metadata !DIExpression()), !dbg !81
  %"$_origin_462" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_351", [20 x i8]** %"$_origin_462", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_462", metadata !82, metadata !DIExpression()), !dbg !81
  %"$_amount_461" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_461", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_461", metadata !83, metadata !DIExpression()), !dbg !81
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_351", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_352", align 1
  %"$gasrem_353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_354" = icmp ugt i64 1, %"$gasrem_353"
  br i1 %"$gascmp_354", label %"$out_of_gas_355", label %"$have_gas_356"

"$out_of_gas_355":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_356"

"$have_gas_356":                                  ; preds = %"$out_of_gas_355", %entry
  %"$consume_357" = sub i64 %"$gasrem_353", 1
  store i64 %"$consume_357", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %tname, metadata !84, metadata !DIExpression()), !dbg !85
  %"$gasrem_358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_359" = icmp ugt i64 1, %"$gasrem_358"
  br i1 %"$gascmp_359", label %"$out_of_gas_360", label %"$have_gas_361"

"$out_of_gas_360":                                ; preds = %"$have_gas_356"
  call void @_out_of_gas()
  br label %"$have_gas_361"

"$have_gas_361":                                  ; preds = %"$out_of_gas_360", %"$have_gas_356"
  %"$consume_362" = sub i64 %"$gasrem_358", 1
  store i64 %"$consume_362", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_363", i32 0, i32 0), i32 2 }, %String* %tname, align 8, !dbg !86
  %f = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %f, metadata !87, metadata !DIExpression()), !dbg !88
  %"$execptr_load_365" = load i8*, i8** @_execptr, align 8
  %"$f_call_366" = call i8* @_fetch_field(i8* %"$execptr_load_365", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_364", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_52", i32 0, i8* null, i32 1), !dbg !88
  %"$f_367" = bitcast i8* %"$f_call_366" to %String*
  %"$f_368" = load %String, %String* %"$f_367", align 8
  store %String %"$f_368", %String* %f, align 8
  %"$_literal_cost_f_369" = alloca %String, align 8
  %"$f_370" = load %String, %String* %f, align 8
  store %String %"$f_370", %String* %"$_literal_cost_f_369", align 8
  %"$$_literal_cost_f_369_371" = bitcast %String* %"$_literal_cost_f_369" to i8*
  %"$_literal_cost_call_372" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_f_369_371")
  %"$gasadd_373" = add i64 %"$_literal_cost_call_372", 0
  %"$gasrem_374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_375" = icmp ugt i64 %"$gasadd_373", %"$gasrem_374"
  br i1 %"$gascmp_375", label %"$out_of_gas_376", label %"$have_gas_377"

"$out_of_gas_376":                                ; preds = %"$have_gas_361"
  call void @_out_of_gas()
  br label %"$have_gas_377"

"$have_gas_377":                                  ; preds = %"$out_of_gas_376", %"$have_gas_361"
  %"$consume_378" = sub i64 %"$gasrem_374", %"$gasadd_373"
  store i64 %"$consume_378", i64* @_gasrem, align 8
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 1, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %"$have_gas_377"
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %"$have_gas_377"
  %"$consume_383" = sub i64 %"$gasrem_379", 1
  store i64 %"$consume_383", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %s, metadata !89, metadata !DIExpression()), !dbg !90
  %"$gasrem_384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_385" = icmp ugt i64 1, %"$gasrem_384"
  br i1 %"$gascmp_385", label %"$out_of_gas_386", label %"$have_gas_387"

"$out_of_gas_386":                                ; preds = %"$have_gas_382"
  call void @_out_of_gas()
  br label %"$have_gas_387"

"$have_gas_387":                                  ; preds = %"$out_of_gas_386", %"$have_gas_382"
  %"$consume_388" = sub i64 %"$gasrem_384", 1
  store i64 %"$consume_388", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_389", i32 0, i32 0), i32 3 }, %String* %s, align 8, !dbg !91
  %"$gasrem_390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_391" = icmp ugt i64 1, %"$gasrem_390"
  br i1 %"$gascmp_391", label %"$out_of_gas_392", label %"$have_gas_393"

"$out_of_gas_392":                                ; preds = %"$have_gas_387"
  call void @_out_of_gas()
  br label %"$have_gas_393"

"$have_gas_393":                                  ; preds = %"$out_of_gas_392", %"$have_gas_387"
  %"$consume_394" = sub i64 %"$gasrem_390", 1
  store i64 %"$consume_394", i64* @_gasrem, align 8
  %t = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %t, metadata !92, metadata !DIExpression()), !dbg !93
  %"$_literal_cost_f_395" = alloca %String, align 8
  %"$f_396" = load %String, %String* %f, align 8
  store %String %"$f_396", %String* %"$_literal_cost_f_395", align 8
  %"$$_literal_cost_f_395_397" = bitcast %String* %"$_literal_cost_f_395" to i8*
  %"$_literal_cost_call_398" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_f_395_397")
  %"$_literal_cost_s_399" = alloca %String, align 8
  %"$s_400" = load %String, %String* %s, align 8
  store %String %"$s_400", %String* %"$_literal_cost_s_399", align 8
  %"$$_literal_cost_s_399_401" = bitcast %String* %"$_literal_cost_s_399" to i8*
  %"$_literal_cost_call_402" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_s_399_401")
  %"$gasmin_403" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_398", i64 %"$_literal_cost_call_402")
  %"$gasrem_404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_405" = icmp ugt i64 %"$gasmin_403", %"$gasrem_404"
  br i1 %"$gascmp_405", label %"$out_of_gas_406", label %"$have_gas_407"

"$out_of_gas_406":                                ; preds = %"$have_gas_393"
  call void @_out_of_gas()
  br label %"$have_gas_407"

"$have_gas_407":                                  ; preds = %"$out_of_gas_406", %"$have_gas_393"
  %"$consume_408" = sub i64 %"$gasrem_404", %"$gasmin_403"
  store i64 %"$consume_408", i64* @_gasrem, align 8
  %"$execptr_load_409" = load i8*, i8** @_execptr, align 8
  %"$f_410" = load %String, %String* %f, align 8
  %"$s_411" = load %String, %String* %s, align 8
  %"$eq_call_412" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_409", %String %"$f_410", %String %"$s_411"), !dbg !94
  store %TName_Bool* %"$eq_call_412", %TName_Bool** %t, align 8, !dbg !94
  %"$gasrem_414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_415" = icmp ugt i64 2, %"$gasrem_414"
  br i1 %"$gascmp_415", label %"$out_of_gas_416", label %"$have_gas_417"

"$out_of_gas_416":                                ; preds = %"$have_gas_407"
  call void @_out_of_gas()
  br label %"$have_gas_417"

"$have_gas_417":                                  ; preds = %"$out_of_gas_416", %"$have_gas_407"
  %"$consume_418" = sub i64 %"$gasrem_414", 2
  store i64 %"$consume_418", i64* @_gasrem, align 8
  %"$t_420" = load %TName_Bool*, %TName_Bool** %t, align 8
  %"$t_tag_421" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_420", i32 0, i32 0
  %"$t_tag_422" = load i8, i8* %"$t_tag_421", align 1
  switch i8 %"$t_tag_422", label %"$empty_default_423" [
    i8 1, label %"$False_424"
    i8 0, label %"$True_434"
  ], !dbg !95

"$False_424":                                     ; preds = %"$have_gas_417"
  %"$t_425" = bitcast %TName_Bool* %"$t_420" to %CName_False*
  %"$gasrem_426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_427" = icmp ugt i64 1, %"$gasrem_426"
  br i1 %"$gascmp_427", label %"$out_of_gas_428", label %"$have_gas_429"

"$out_of_gas_428":                                ; preds = %"$False_424"
  call void @_out_of_gas()
  br label %"$have_gas_429"

"$have_gas_429":                                  ; preds = %"$out_of_gas_428", %"$False_424"
  %"$consume_430" = sub i64 %"$gasrem_426", 1
  store i64 %"$consume_430", i64* @_gasrem, align 8
  %"$fail__origin_431" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_431", align 1
  %"$fail__sender_432" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_432", align 1
  %"$tname_433" = load %String, %String* %tname, align 8
  call void @"$fail_254"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_431", [20 x i8]* %"$fail__sender_432", %String %"$tname_433"), !dbg !96
  br label %"$matchsucc_419"

"$True_434":                                      ; preds = %"$have_gas_417"
  %"$t_435" = bitcast %TName_Bool* %"$t_420" to %CName_True*
  br label %"$matchsucc_419"

"$empty_default_423":                             ; preds = %"$have_gas_417"
  br label %"$matchsucc_419"

"$matchsucc_419":                                 ; preds = %"$True_434", %"$have_gas_429", %"$empty_default_423"
  %"$gasrem_436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_437" = icmp ugt i64 1, %"$gasrem_436"
  br i1 %"$gascmp_437", label %"$out_of_gas_438", label %"$have_gas_439"

"$out_of_gas_438":                                ; preds = %"$matchsucc_419"
  call void @_out_of_gas()
  br label %"$have_gas_439"

"$have_gas_439":                                  ; preds = %"$out_of_gas_438", %"$matchsucc_419"
  %"$consume_440" = sub i64 %"$gasrem_436", 1
  store i64 %"$consume_440", i64* @_gasrem, align 8
  %s2 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %s2, metadata !99, metadata !DIExpression()), !dbg !100
  %"$gasrem_441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_442" = icmp ugt i64 1, %"$gasrem_441"
  br i1 %"$gascmp_442", label %"$out_of_gas_443", label %"$have_gas_444"

"$out_of_gas_443":                                ; preds = %"$have_gas_439"
  call void @_out_of_gas()
  br label %"$have_gas_444"

"$have_gas_444":                                  ; preds = %"$out_of_gas_443", %"$have_gas_439"
  %"$consume_445" = sub i64 %"$gasrem_441", 1
  store i64 %"$consume_445", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_446", i32 0, i32 0), i32 3 }, %String* %s2, align 8, !dbg !101
  %"$_literal_cost_s2_447" = alloca %String, align 8
  %"$s2_448" = load %String, %String* %s2, align 8
  store %String %"$s2_448", %String* %"$_literal_cost_s2_447", align 8
  %"$$_literal_cost_s2_447_449" = bitcast %String* %"$_literal_cost_s2_447" to i8*
  %"$_literal_cost_call_450" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_s2_447_449")
  %"$gasrem_451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_452" = icmp ugt i64 %"$_literal_cost_call_450", %"$gasrem_451"
  br i1 %"$gascmp_452", label %"$out_of_gas_453", label %"$have_gas_454"

"$out_of_gas_453":                                ; preds = %"$have_gas_444"
  call void @_out_of_gas()
  br label %"$have_gas_454"

"$have_gas_454":                                  ; preds = %"$out_of_gas_453", %"$have_gas_444"
  %"$consume_455" = sub i64 %"$gasrem_451", %"$_literal_cost_call_450"
  store i64 %"$consume_455", i64* @_gasrem, align 8
  %"$execptr_load_456" = load i8*, i8** @_execptr, align 8
  %"$s2_458" = load %String, %String* %s2, align 8
  %"$update_value_459" = alloca %String, align 8
  store %String %"$s2_458", %String* %"$update_value_459", align 8
  %"$update_value_460" = bitcast %String* %"$update_value_459" to i8*
  call void @_update_field(i8* %"$execptr_load_456", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_457", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_52", i32 0, i8* null, i8* %"$update_value_460"), !dbg !102
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #0

declare %TName_Bool* @_eq_String(i8*, %String, %String)

define void @t1(i8* %0) !dbg !103 {
entry:
  %"$_amount_465" = getelementptr i8, i8* %0, i32 0
  %"$_amount_466" = bitcast i8* %"$_amount_465" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_466", align 8
  %"$_origin_467" = getelementptr i8, i8* %0, i32 16
  %"$_origin_468" = bitcast i8* %"$_origin_467" to [20 x i8]*
  %"$_sender_469" = getelementptr i8, i8* %0, i32 36
  %"$_sender_470" = bitcast i8* %"$_sender_469" to [20 x i8]*
  call void @"$t1_350"(%Uint128 %_amount, [20 x i8]* %"$_origin_468", [20 x i8]* %"$_sender_470"), !dbg !104
  ret void
}

define internal void @"$t2_471"(%Uint128 %_amount, [20 x i8]* %"$_origin_472", [20 x i8]* %"$_sender_473") !dbg !105 {
entry:
  %"$_sender_599" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_473", [20 x i8]** %"$_sender_599", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_599", metadata !106, metadata !DIExpression()), !dbg !107
  %"$_origin_598" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_472", [20 x i8]** %"$_origin_598", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_598", metadata !108, metadata !DIExpression()), !dbg !107
  %"$_amount_597" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_597", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_597", metadata !109, metadata !DIExpression()), !dbg !107
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_472", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_473", align 1
  %"$gasrem_474" = load i64, i64* @_gasrem, align 8
  %"$gascmp_475" = icmp ugt i64 1, %"$gasrem_474"
  br i1 %"$gascmp_475", label %"$out_of_gas_476", label %"$have_gas_477"

"$out_of_gas_476":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_477"

"$have_gas_477":                                  ; preds = %"$out_of_gas_476", %entry
  %"$consume_478" = sub i64 %"$gasrem_474", 1
  store i64 %"$consume_478", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %tname, metadata !110, metadata !DIExpression()), !dbg !111
  %"$gasrem_479" = load i64, i64* @_gasrem, align 8
  %"$gascmp_480" = icmp ugt i64 1, %"$gasrem_479"
  br i1 %"$gascmp_480", label %"$out_of_gas_481", label %"$have_gas_482"

"$out_of_gas_481":                                ; preds = %"$have_gas_477"
  call void @_out_of_gas()
  br label %"$have_gas_482"

"$have_gas_482":                                  ; preds = %"$out_of_gas_481", %"$have_gas_477"
  %"$consume_483" = sub i64 %"$gasrem_479", 1
  store i64 %"$consume_483", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_484", i32 0, i32 0), i32 2 }, %String* %tname, align 8, !dbg !112
  %f = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %f, metadata !113, metadata !DIExpression()), !dbg !114
  %"$execptr_load_486" = load i8*, i8** @_execptr, align 8
  %"$f_call_487" = call i8* @_fetch_field(i8* %"$execptr_load_486", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_s1_485", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_String_52", i32 0, i8* null, i32 1), !dbg !114
  %"$f_488" = bitcast i8* %"$f_call_487" to %String*
  %"$f_489" = load %String, %String* %"$f_488", align 8
  store %String %"$f_489", %String* %f, align 8
  %"$_literal_cost_f_490" = alloca %String, align 8
  %"$f_491" = load %String, %String* %f, align 8
  store %String %"$f_491", %String* %"$_literal_cost_f_490", align 8
  %"$$_literal_cost_f_490_492" = bitcast %String* %"$_literal_cost_f_490" to i8*
  %"$_literal_cost_call_493" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_f_490_492")
  %"$gasadd_494" = add i64 %"$_literal_cost_call_493", 0
  %"$gasrem_495" = load i64, i64* @_gasrem, align 8
  %"$gascmp_496" = icmp ugt i64 %"$gasadd_494", %"$gasrem_495"
  br i1 %"$gascmp_496", label %"$out_of_gas_497", label %"$have_gas_498"

"$out_of_gas_497":                                ; preds = %"$have_gas_482"
  call void @_out_of_gas()
  br label %"$have_gas_498"

"$have_gas_498":                                  ; preds = %"$out_of_gas_497", %"$have_gas_482"
  %"$consume_499" = sub i64 %"$gasrem_495", %"$gasadd_494"
  store i64 %"$consume_499", i64* @_gasrem, align 8
  %"$gasrem_500" = load i64, i64* @_gasrem, align 8
  %"$gascmp_501" = icmp ugt i64 1, %"$gasrem_500"
  br i1 %"$gascmp_501", label %"$out_of_gas_502", label %"$have_gas_503"

"$out_of_gas_502":                                ; preds = %"$have_gas_498"
  call void @_out_of_gas()
  br label %"$have_gas_503"

"$have_gas_503":                                  ; preds = %"$out_of_gas_502", %"$have_gas_498"
  %"$consume_504" = sub i64 %"$gasrem_500", 1
  store i64 %"$consume_504", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %s, metadata !115, metadata !DIExpression()), !dbg !116
  %"$gasrem_505" = load i64, i64* @_gasrem, align 8
  %"$gascmp_506" = icmp ugt i64 1, %"$gasrem_505"
  br i1 %"$gascmp_506", label %"$out_of_gas_507", label %"$have_gas_508"

"$out_of_gas_507":                                ; preds = %"$have_gas_503"
  call void @_out_of_gas()
  br label %"$have_gas_508"

"$have_gas_508":                                  ; preds = %"$out_of_gas_507", %"$have_gas_503"
  %"$consume_509" = sub i64 %"$gasrem_505", 1
  store i64 %"$consume_509", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_510", i32 0, i32 0), i32 3 }, %String* %s, align 8, !dbg !117
  %"$gasrem_511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_512" = icmp ugt i64 1, %"$gasrem_511"
  br i1 %"$gascmp_512", label %"$out_of_gas_513", label %"$have_gas_514"

"$out_of_gas_513":                                ; preds = %"$have_gas_508"
  call void @_out_of_gas()
  br label %"$have_gas_514"

"$have_gas_514":                                  ; preds = %"$out_of_gas_513", %"$have_gas_508"
  %"$consume_515" = sub i64 %"$gasrem_511", 1
  store i64 %"$consume_515", i64* @_gasrem, align 8
  %t = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %t, metadata !118, metadata !DIExpression()), !dbg !119
  %"$_literal_cost_f_516" = alloca %String, align 8
  %"$f_517" = load %String, %String* %f, align 8
  store %String %"$f_517", %String* %"$_literal_cost_f_516", align 8
  %"$$_literal_cost_f_516_518" = bitcast %String* %"$_literal_cost_f_516" to i8*
  %"$_literal_cost_call_519" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_f_516_518")
  %"$_literal_cost_s_520" = alloca %String, align 8
  %"$s_521" = load %String, %String* %s, align 8
  store %String %"$s_521", %String* %"$_literal_cost_s_520", align 8
  %"$$_literal_cost_s_520_522" = bitcast %String* %"$_literal_cost_s_520" to i8*
  %"$_literal_cost_call_523" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_s_520_522")
  %"$gasmin_524" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_519", i64 %"$_literal_cost_call_523")
  %"$gasrem_525" = load i64, i64* @_gasrem, align 8
  %"$gascmp_526" = icmp ugt i64 %"$gasmin_524", %"$gasrem_525"
  br i1 %"$gascmp_526", label %"$out_of_gas_527", label %"$have_gas_528"

"$out_of_gas_527":                                ; preds = %"$have_gas_514"
  call void @_out_of_gas()
  br label %"$have_gas_528"

"$have_gas_528":                                  ; preds = %"$out_of_gas_527", %"$have_gas_514"
  %"$consume_529" = sub i64 %"$gasrem_525", %"$gasmin_524"
  store i64 %"$consume_529", i64* @_gasrem, align 8
  %"$execptr_load_530" = load i8*, i8** @_execptr, align 8
  %"$f_531" = load %String, %String* %f, align 8
  %"$s_532" = load %String, %String* %s, align 8
  %"$eq_call_533" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_530", %String %"$f_531", %String %"$s_532"), !dbg !120
  store %TName_Bool* %"$eq_call_533", %TName_Bool** %t, align 8, !dbg !120
  %"$gasrem_535" = load i64, i64* @_gasrem, align 8
  %"$gascmp_536" = icmp ugt i64 2, %"$gasrem_535"
  br i1 %"$gascmp_536", label %"$out_of_gas_537", label %"$have_gas_538"

"$out_of_gas_537":                                ; preds = %"$have_gas_528"
  call void @_out_of_gas()
  br label %"$have_gas_538"

"$have_gas_538":                                  ; preds = %"$out_of_gas_537", %"$have_gas_528"
  %"$consume_539" = sub i64 %"$gasrem_535", 2
  store i64 %"$consume_539", i64* @_gasrem, align 8
  %"$t_541" = load %TName_Bool*, %TName_Bool** %t, align 8
  %"$t_tag_542" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_541", i32 0, i32 0
  %"$t_tag_543" = load i8, i8* %"$t_tag_542", align 1
  switch i8 %"$t_tag_543", label %"$empty_default_544" [
    i8 1, label %"$False_545"
    i8 0, label %"$True_555"
  ], !dbg !121

"$False_545":                                     ; preds = %"$have_gas_538"
  %"$t_546" = bitcast %TName_Bool* %"$t_541" to %CName_False*
  %"$gasrem_547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_548" = icmp ugt i64 1, %"$gasrem_547"
  br i1 %"$gascmp_548", label %"$out_of_gas_549", label %"$have_gas_550"

"$out_of_gas_549":                                ; preds = %"$False_545"
  call void @_out_of_gas()
  br label %"$have_gas_550"

"$have_gas_550":                                  ; preds = %"$out_of_gas_549", %"$False_545"
  %"$consume_551" = sub i64 %"$gasrem_547", 1
  store i64 %"$consume_551", i64* @_gasrem, align 8
  %"$fail__origin_552" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_552", align 1
  %"$fail__sender_553" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_553", align 1
  %"$tname_554" = load %String, %String* %tname, align 8
  call void @"$fail_254"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_552", [20 x i8]* %"$fail__sender_553", %String %"$tname_554"), !dbg !122
  br label %"$matchsucc_540"

"$True_555":                                      ; preds = %"$have_gas_538"
  %"$t_556" = bitcast %TName_Bool* %"$t_541" to %CName_True*
  br label %"$matchsucc_540"

"$empty_default_544":                             ; preds = %"$have_gas_538"
  br label %"$matchsucc_540"

"$matchsucc_540":                                 ; preds = %"$True_555", %"$have_gas_550", %"$empty_default_544"
  %"$gasrem_557" = load i64, i64* @_gasrem, align 8
  %"$gascmp_558" = icmp ugt i64 1, %"$gasrem_557"
  br i1 %"$gascmp_558", label %"$out_of_gas_559", label %"$have_gas_560"

"$out_of_gas_559":                                ; preds = %"$matchsucc_540"
  call void @_out_of_gas()
  br label %"$have_gas_560"

"$have_gas_560":                                  ; preds = %"$out_of_gas_559", %"$matchsucc_540"
  %"$consume_561" = sub i64 %"$gasrem_557", 1
  store i64 %"$consume_561", i64* @_gasrem, align 8
  %key1 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key1, metadata !125, metadata !DIExpression()), !dbg !126
  %"$gasrem_562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_563" = icmp ugt i64 1, %"$gasrem_562"
  br i1 %"$gascmp_563", label %"$out_of_gas_564", label %"$have_gas_565"

"$out_of_gas_564":                                ; preds = %"$have_gas_560"
  call void @_out_of_gas()
  br label %"$have_gas_565"

"$have_gas_565":                                  ; preds = %"$out_of_gas_564", %"$have_gas_560"
  %"$consume_566" = sub i64 %"$gasrem_562", 1
  store i64 %"$consume_566", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_567", i32 0, i32 0), i32 4 }, %String* %key1, align 8, !dbg !127
  %"$gasrem_568" = load i64, i64* @_gasrem, align 8
  %"$gascmp_569" = icmp ugt i64 1, %"$gasrem_568"
  br i1 %"$gascmp_569", label %"$out_of_gas_570", label %"$have_gas_571"

"$out_of_gas_570":                                ; preds = %"$have_gas_565"
  call void @_out_of_gas()
  br label %"$have_gas_571"

"$have_gas_571":                                  ; preds = %"$out_of_gas_570", %"$have_gas_565"
  %"$consume_572" = sub i64 %"$gasrem_568", 1
  store i64 %"$consume_572", i64* @_gasrem, align 8
  %val1 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %val1, metadata !128, metadata !DIExpression()), !dbg !129
  %"$gasrem_573" = load i64, i64* @_gasrem, align 8
  %"$gascmp_574" = icmp ugt i64 1, %"$gasrem_573"
  br i1 %"$gascmp_574", label %"$out_of_gas_575", label %"$have_gas_576"

"$out_of_gas_575":                                ; preds = %"$have_gas_571"
  call void @_out_of_gas()
  br label %"$have_gas_576"

"$have_gas_576":                                  ; preds = %"$out_of_gas_575", %"$have_gas_571"
  %"$consume_577" = sub i64 %"$gasrem_573", 1
  store i64 %"$consume_577", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_578", i32 0, i32 0), i32 3 }, %String* %val1, align 8, !dbg !130
  %"$_literal_cost_val1_579" = alloca %String, align 8
  %"$val1_580" = load %String, %String* %val1, align 8
  store %String %"$val1_580", %String* %"$_literal_cost_val1_579", align 8
  %"$$_literal_cost_val1_579_581" = bitcast %String* %"$_literal_cost_val1_579" to i8*
  %"$_literal_cost_call_582" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_val1_579_581")
  %"$gasadd_583" = add i64 %"$_literal_cost_call_582", 1
  %"$gasrem_584" = load i64, i64* @_gasrem, align 8
  %"$gascmp_585" = icmp ugt i64 %"$gasadd_583", %"$gasrem_584"
  br i1 %"$gascmp_585", label %"$out_of_gas_586", label %"$have_gas_587"

"$out_of_gas_586":                                ; preds = %"$have_gas_576"
  call void @_out_of_gas()
  br label %"$have_gas_587"

"$have_gas_587":                                  ; preds = %"$out_of_gas_586", %"$have_gas_576"
  %"$consume_588" = sub i64 %"$gasrem_584", %"$gasadd_583"
  store i64 %"$consume_588", i64* @_gasrem, align 8
  %"$indices_buf_589_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_589_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_589_salloc_load", i64 16)
  %"$indices_buf_589_salloc" = bitcast i8* %"$indices_buf_589_salloc_salloc" to [16 x i8]*
  %"$indices_buf_589" = bitcast [16 x i8]* %"$indices_buf_589_salloc" to i8*
  %"$key1_590" = load %String, %String* %key1, align 8
  %"$indices_gep_591" = getelementptr i8, i8* %"$indices_buf_589", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_591" to %String*
  store %String %"$key1_590", %String* %indices_cast, align 8
  %"$execptr_load_592" = load i8*, i8** @_execptr, align 8
  %"$val1_594" = load %String, %String* %val1, align 8
  %"$update_value_595" = alloca %String, align 8
  store %String %"$val1_594", %String* %"$update_value_595", align 8
  %"$update_value_596" = bitcast %String* %"$update_value_595" to i8*
  call void @_update_field(i8* %"$execptr_load_592", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_593", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_77", i32 1, i8* %"$indices_buf_589", i8* %"$update_value_596"), !dbg !131
  ret void
}

define void @t2(i8* %0) !dbg !132 {
entry:
  %"$_amount_601" = getelementptr i8, i8* %0, i32 0
  %"$_amount_602" = bitcast i8* %"$_amount_601" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_602", align 8
  %"$_origin_603" = getelementptr i8, i8* %0, i32 16
  %"$_origin_604" = bitcast i8* %"$_origin_603" to [20 x i8]*
  %"$_sender_605" = getelementptr i8, i8* %0, i32 36
  %"$_sender_606" = bitcast i8* %"$_sender_605" to [20 x i8]*
  call void @"$t2_471"(%Uint128 %_amount, [20 x i8]* %"$_origin_604", [20 x i8]* %"$_sender_606"), !dbg !133
  ret void
}

define internal void @"$t3_607"(%Uint128 %_amount, [20 x i8]* %"$_origin_608", [20 x i8]* %"$_sender_609") !dbg !134 {
entry:
  %"$_sender_818" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_609", [20 x i8]** %"$_sender_818", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_818", metadata !135, metadata !DIExpression()), !dbg !136
  %"$_origin_817" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_608", [20 x i8]** %"$_origin_817", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_817", metadata !137, metadata !DIExpression()), !dbg !136
  %"$_amount_816" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_816", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_816", metadata !138, metadata !DIExpression()), !dbg !136
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_608", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_609", align 1
  %"$gasrem_610" = load i64, i64* @_gasrem, align 8
  %"$gascmp_611" = icmp ugt i64 1, %"$gasrem_610"
  br i1 %"$gascmp_611", label %"$out_of_gas_612", label %"$have_gas_613"

"$out_of_gas_612":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_613"

"$have_gas_613":                                  ; preds = %"$out_of_gas_612", %entry
  %"$consume_614" = sub i64 %"$gasrem_610", 1
  store i64 %"$consume_614", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %tname, metadata !139, metadata !DIExpression()), !dbg !140
  %"$gasrem_615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_616" = icmp ugt i64 1, %"$gasrem_615"
  br i1 %"$gascmp_616", label %"$out_of_gas_617", label %"$have_gas_618"

"$out_of_gas_617":                                ; preds = %"$have_gas_613"
  call void @_out_of_gas()
  br label %"$have_gas_618"

"$have_gas_618":                                  ; preds = %"$out_of_gas_617", %"$have_gas_613"
  %"$consume_619" = sub i64 %"$gasrem_615", 1
  store i64 %"$consume_619", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_620", i32 0, i32 0), i32 2 }, %String* %tname, align 8, !dbg !141
  %"$gasrem_621" = load i64, i64* @_gasrem, align 8
  %"$gascmp_622" = icmp ugt i64 1, %"$gasrem_621"
  br i1 %"$gascmp_622", label %"$out_of_gas_623", label %"$have_gas_624"

"$out_of_gas_623":                                ; preds = %"$have_gas_618"
  call void @_out_of_gas()
  br label %"$have_gas_624"

"$have_gas_624":                                  ; preds = %"$out_of_gas_623", %"$have_gas_618"
  %"$consume_625" = sub i64 %"$gasrem_621", 1
  store i64 %"$consume_625", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %s, metadata !142, metadata !DIExpression()), !dbg !143
  %"$gasrem_626" = load i64, i64* @_gasrem, align 8
  %"$gascmp_627" = icmp ugt i64 1, %"$gasrem_626"
  br i1 %"$gascmp_627", label %"$out_of_gas_628", label %"$have_gas_629"

"$out_of_gas_628":                                ; preds = %"$have_gas_624"
  call void @_out_of_gas()
  br label %"$have_gas_629"

"$have_gas_629":                                  ; preds = %"$out_of_gas_628", %"$have_gas_624"
  %"$consume_630" = sub i64 %"$gasrem_626", 1
  store i64 %"$consume_630", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_631", i32 0, i32 0), i32 3 }, %String* %s, align 8, !dbg !144
  %"$gasrem_632" = load i64, i64* @_gasrem, align 8
  %"$gascmp_633" = icmp ugt i64 1, %"$gasrem_632"
  br i1 %"$gascmp_633", label %"$out_of_gas_634", label %"$have_gas_635"

"$out_of_gas_634":                                ; preds = %"$have_gas_629"
  call void @_out_of_gas()
  br label %"$have_gas_635"

"$have_gas_635":                                  ; preds = %"$out_of_gas_634", %"$have_gas_629"
  %"$consume_636" = sub i64 %"$gasrem_632", 1
  store i64 %"$consume_636", i64* @_gasrem, align 8
  %key1 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key1, metadata !145, metadata !DIExpression()), !dbg !146
  %"$gasrem_637" = load i64, i64* @_gasrem, align 8
  %"$gascmp_638" = icmp ugt i64 1, %"$gasrem_637"
  br i1 %"$gascmp_638", label %"$out_of_gas_639", label %"$have_gas_640"

"$out_of_gas_639":                                ; preds = %"$have_gas_635"
  call void @_out_of_gas()
  br label %"$have_gas_640"

"$have_gas_640":                                  ; preds = %"$out_of_gas_639", %"$have_gas_635"
  %"$consume_641" = sub i64 %"$gasrem_637", 1
  store i64 %"$consume_641", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_642", i32 0, i32 0), i32 4 }, %String* %key1, align 8, !dbg !147
  %val1 = alloca %TName_Option_String*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_String** %val1, metadata !148, metadata !DIExpression()), !dbg !151
  %"$indices_buf_643_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_643_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_643_salloc_load", i64 16)
  %"$indices_buf_643_salloc" = bitcast i8* %"$indices_buf_643_salloc_salloc" to [16 x i8]*
  %"$indices_buf_643" = bitcast [16 x i8]* %"$indices_buf_643_salloc" to i8*
  %"$key1_644" = load %String, %String* %key1, align 8
  %"$indices_gep_645" = getelementptr i8, i8* %"$indices_buf_643", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_645" to %String*
  store %String %"$key1_644", %String* %indices_cast, align 8
  %"$execptr_load_647" = load i8*, i8** @_execptr, align 8
  %"$val1_call_648" = call i8* @_fetch_field(i8* %"$execptr_load_647", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_646", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_77", i32 1, i8* %"$indices_buf_643", i32 1), !dbg !151
  %"$val1_649" = bitcast i8* %"$val1_call_648" to %TName_Option_String*
  store %TName_Option_String* %"$val1_649", %TName_Option_String** %val1, align 8
  %"$val1_650" = load %TName_Option_String*, %TName_Option_String** %val1, align 8
  %"$$val1_650_651" = bitcast %TName_Option_String* %"$val1_650" to i8*
  %"$_literal_cost_call_652" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_72", i8* %"$$val1_650_651")
  %"$gasadd_653" = add i64 %"$_literal_cost_call_652", 0
  %"$gasadd_654" = add i64 %"$gasadd_653", 1
  %"$gasrem_655" = load i64, i64* @_gasrem, align 8
  %"$gascmp_656" = icmp ugt i64 %"$gasadd_654", %"$gasrem_655"
  br i1 %"$gascmp_656", label %"$out_of_gas_657", label %"$have_gas_658"

"$out_of_gas_657":                                ; preds = %"$have_gas_640"
  call void @_out_of_gas()
  br label %"$have_gas_658"

"$have_gas_658":                                  ; preds = %"$out_of_gas_657", %"$have_gas_640"
  %"$consume_659" = sub i64 %"$gasrem_655", %"$gasadd_654"
  store i64 %"$consume_659", i64* @_gasrem, align 8
  %"$gasrem_660" = load i64, i64* @_gasrem, align 8
  %"$gascmp_661" = icmp ugt i64 2, %"$gasrem_660"
  br i1 %"$gascmp_661", label %"$out_of_gas_662", label %"$have_gas_663"

"$out_of_gas_662":                                ; preds = %"$have_gas_658"
  call void @_out_of_gas()
  br label %"$have_gas_663"

"$have_gas_663":                                  ; preds = %"$out_of_gas_662", %"$have_gas_658"
  %"$consume_664" = sub i64 %"$gasrem_660", 2
  store i64 %"$consume_664", i64* @_gasrem, align 8
  %"$val1_666" = load %TName_Option_String*, %TName_Option_String** %val1, align 8
  %"$val1_tag_667" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$val1_666", i32 0, i32 0
  %"$val1_tag_668" = load i8, i8* %"$val1_tag_667", align 1
  switch i8 %"$val1_tag_668", label %"$empty_default_669" [
    i8 0, label %"$Some_670"
    i8 1, label %"$None_732"
  ], !dbg !152

"$Some_670":                                      ; preds = %"$have_gas_663"
  %"$val1_671" = bitcast %TName_Option_String* %"$val1_666" to %CName_Some_String*
  %"$val_gep_672" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$val1_671", i32 0, i32 1
  %"$val_load_673" = load %String, %String* %"$val_gep_672", align 8
  %val = alloca %String, align 8
  store %String %"$val_load_673", %String* %val, align 8
  %"$gasrem_674" = load i64, i64* @_gasrem, align 8
  %"$gascmp_675" = icmp ugt i64 1, %"$gasrem_674"
  br i1 %"$gascmp_675", label %"$out_of_gas_676", label %"$have_gas_677"

"$out_of_gas_676":                                ; preds = %"$Some_670"
  call void @_out_of_gas()
  br label %"$have_gas_677"

"$have_gas_677":                                  ; preds = %"$out_of_gas_676", %"$Some_670"
  %"$consume_678" = sub i64 %"$gasrem_674", 1
  store i64 %"$consume_678", i64* @_gasrem, align 8
  %t = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %t, metadata !153, metadata !DIExpression()), !dbg !156
  %"$_literal_cost_val_679" = alloca %String, align 8
  %"$val_680" = load %String, %String* %val, align 8
  store %String %"$val_680", %String* %"$_literal_cost_val_679", align 8
  %"$$_literal_cost_val_679_681" = bitcast %String* %"$_literal_cost_val_679" to i8*
  %"$_literal_cost_call_682" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_val_679_681")
  %"$_literal_cost_s_683" = alloca %String, align 8
  %"$s_684" = load %String, %String* %s, align 8
  store %String %"$s_684", %String* %"$_literal_cost_s_683", align 8
  %"$$_literal_cost_s_683_685" = bitcast %String* %"$_literal_cost_s_683" to i8*
  %"$_literal_cost_call_686" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_s_683_685")
  %"$gasmin_687" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_682", i64 %"$_literal_cost_call_686")
  %"$gasrem_688" = load i64, i64* @_gasrem, align 8
  %"$gascmp_689" = icmp ugt i64 %"$gasmin_687", %"$gasrem_688"
  br i1 %"$gascmp_689", label %"$out_of_gas_690", label %"$have_gas_691"

"$out_of_gas_690":                                ; preds = %"$have_gas_677"
  call void @_out_of_gas()
  br label %"$have_gas_691"

"$have_gas_691":                                  ; preds = %"$out_of_gas_690", %"$have_gas_677"
  %"$consume_692" = sub i64 %"$gasrem_688", %"$gasmin_687"
  store i64 %"$consume_692", i64* @_gasrem, align 8
  %"$execptr_load_693" = load i8*, i8** @_execptr, align 8
  %"$val_694" = load %String, %String* %val, align 8
  %"$s_695" = load %String, %String* %s, align 8
  %"$eq_call_696" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_693", %String %"$val_694", %String %"$s_695"), !dbg !157
  store %TName_Bool* %"$eq_call_696", %TName_Bool** %t, align 8, !dbg !157
  %"$gasrem_698" = load i64, i64* @_gasrem, align 8
  %"$gascmp_699" = icmp ugt i64 2, %"$gasrem_698"
  br i1 %"$gascmp_699", label %"$out_of_gas_700", label %"$have_gas_701"

"$out_of_gas_700":                                ; preds = %"$have_gas_691"
  call void @_out_of_gas()
  br label %"$have_gas_701"

"$have_gas_701":                                  ; preds = %"$out_of_gas_700", %"$have_gas_691"
  %"$consume_702" = sub i64 %"$gasrem_698", 2
  store i64 %"$consume_702", i64* @_gasrem, align 8
  %"$t_704" = load %TName_Bool*, %TName_Bool** %t, align 8
  %"$t_tag_705" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_704", i32 0, i32 0
  %"$t_tag_706" = load i8, i8* %"$t_tag_705", align 1
  switch i8 %"$t_tag_706", label %"$empty_default_707" [
    i8 1, label %"$False_708"
    i8 0, label %"$True_730"
  ], !dbg !158

"$False_708":                                     ; preds = %"$have_gas_701"
  %"$t_709" = bitcast %TName_Bool* %"$t_704" to %CName_False*
  %"$gasrem_710" = load i64, i64* @_gasrem, align 8
  %"$gascmp_711" = icmp ugt i64 1, %"$gasrem_710"
  br i1 %"$gascmp_711", label %"$out_of_gas_712", label %"$have_gas_713"

"$out_of_gas_712":                                ; preds = %"$False_708"
  call void @_out_of_gas()
  br label %"$have_gas_713"

"$have_gas_713":                                  ; preds = %"$out_of_gas_712", %"$False_708"
  %"$consume_714" = sub i64 %"$gasrem_710", 1
  store i64 %"$consume_714", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %m, metadata !159, metadata !DIExpression()), !dbg !162
  %"$gasrem_715" = load i64, i64* @_gasrem, align 8
  %"$gascmp_716" = icmp ugt i64 1, %"$gasrem_715"
  br i1 %"$gascmp_716", label %"$out_of_gas_717", label %"$have_gas_718"

"$out_of_gas_717":                                ; preds = %"$have_gas_713"
  call void @_out_of_gas()
  br label %"$have_gas_718"

"$have_gas_718":                                  ; preds = %"$out_of_gas_717", %"$have_gas_713"
  %"$consume_719" = sub i64 %"$gasrem_715", 1
  store i64 %"$consume_719", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$stringlit_720", i32 0, i32 0), i32 23 }, %String* %m, align 8, !dbg !163
  %"$gasrem_721" = load i64, i64* @_gasrem, align 8
  %"$gascmp_722" = icmp ugt i64 1, %"$gasrem_721"
  br i1 %"$gascmp_722", label %"$out_of_gas_723", label %"$have_gas_724"

"$out_of_gas_723":                                ; preds = %"$have_gas_718"
  call void @_out_of_gas()
  br label %"$have_gas_724"

"$have_gas_724":                                  ; preds = %"$out_of_gas_723", %"$have_gas_718"
  %"$consume_725" = sub i64 %"$gasrem_721", 1
  store i64 %"$consume_725", i64* @_gasrem, align 8
  %"$fail_msg__origin_726" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_726", align 1
  %"$fail_msg__sender_727" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_727", align 1
  %"$tname_728" = load %String, %String* %tname, align 8
  %"$m_729" = load %String, %String* %m, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_726", [20 x i8]* %"$fail_msg__sender_727", %String %"$tname_728", %String %"$m_729"), !dbg !164
  br label %"$matchsucc_703"

"$True_730":                                      ; preds = %"$have_gas_701"
  %"$t_731" = bitcast %TName_Bool* %"$t_704" to %CName_True*
  br label %"$matchsucc_703"

"$empty_default_707":                             ; preds = %"$have_gas_701"
  br label %"$matchsucc_703"

"$matchsucc_703":                                 ; preds = %"$True_730", %"$have_gas_724", %"$empty_default_707"
  br label %"$matchsucc_665"

"$None_732":                                      ; preds = %"$have_gas_663"
  %"$val1_733" = bitcast %TName_Option_String* %"$val1_666" to %CName_None_String*
  %"$gasrem_734" = load i64, i64* @_gasrem, align 8
  %"$gascmp_735" = icmp ugt i64 1, %"$gasrem_734"
  br i1 %"$gascmp_735", label %"$out_of_gas_736", label %"$have_gas_737"

"$out_of_gas_736":                                ; preds = %"$None_732"
  call void @_out_of_gas()
  br label %"$have_gas_737"

"$have_gas_737":                                  ; preds = %"$out_of_gas_736", %"$None_732"
  %"$consume_738" = sub i64 %"$gasrem_734", 1
  store i64 %"$consume_738", i64* @_gasrem, align 8
  %"$fail__origin_739" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_739", align 1
  %"$fail__sender_740" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_740", align 1
  %"$tname_741" = load %String, %String* %tname, align 8
  call void @"$fail_254"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_739", [20 x i8]* %"$fail__sender_740", %String %"$tname_741"), !dbg !165
  br label %"$matchsucc_665"

"$empty_default_669":                             ; preds = %"$have_gas_663"
  br label %"$matchsucc_665"

"$matchsucc_665":                                 ; preds = %"$have_gas_737", %"$matchsucc_703", %"$empty_default_669"
  %"$gasrem_742" = load i64, i64* @_gasrem, align 8
  %"$gascmp_743" = icmp ugt i64 1, %"$gasrem_742"
  br i1 %"$gascmp_743", label %"$out_of_gas_744", label %"$have_gas_745"

"$out_of_gas_744":                                ; preds = %"$matchsucc_665"
  call void @_out_of_gas()
  br label %"$have_gas_745"

"$have_gas_745":                                  ; preds = %"$out_of_gas_744", %"$matchsucc_665"
  %"$consume_746" = sub i64 %"$gasrem_742", 1
  store i64 %"$consume_746", i64* @_gasrem, align 8
  %key2 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key2, metadata !167, metadata !DIExpression()), !dbg !168
  %"$gasrem_747" = load i64, i64* @_gasrem, align 8
  %"$gascmp_748" = icmp ugt i64 1, %"$gasrem_747"
  br i1 %"$gascmp_748", label %"$out_of_gas_749", label %"$have_gas_750"

"$out_of_gas_749":                                ; preds = %"$have_gas_745"
  call void @_out_of_gas()
  br label %"$have_gas_750"

"$have_gas_750":                                  ; preds = %"$out_of_gas_749", %"$have_gas_745"
  %"$consume_751" = sub i64 %"$gasrem_747", 1
  store i64 %"$consume_751", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_752", i32 0, i32 0), i32 4 }, %String* %key2, align 8, !dbg !169
  %val2 = alloca %TName_Option_String*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_String** %val2, metadata !170, metadata !DIExpression()), !dbg !171
  %"$indices_buf_753_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_753_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_753_salloc_load", i64 16)
  %"$indices_buf_753_salloc" = bitcast i8* %"$indices_buf_753_salloc_salloc" to [16 x i8]*
  %"$indices_buf_753" = bitcast [16 x i8]* %"$indices_buf_753_salloc" to i8*
  %"$key2_754" = load %String, %String* %key2, align 8
  %"$indices_gep_755" = getelementptr i8, i8* %"$indices_buf_753", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_755" to %String*
  store %String %"$key2_754", %String* %indices_cast1, align 8
  %"$execptr_load_757" = load i8*, i8** @_execptr, align 8
  %"$val2_call_758" = call i8* @_fetch_field(i8* %"$execptr_load_757", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_756", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_77", i32 1, i8* %"$indices_buf_753", i32 1), !dbg !171
  %"$val2_759" = bitcast i8* %"$val2_call_758" to %TName_Option_String*
  store %TName_Option_String* %"$val2_759", %TName_Option_String** %val2, align 8
  %"$val2_760" = load %TName_Option_String*, %TName_Option_String** %val2, align 8
  %"$$val2_760_761" = bitcast %TName_Option_String* %"$val2_760" to i8*
  %"$_literal_cost_call_762" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_72", i8* %"$$val2_760_761")
  %"$gasadd_763" = add i64 %"$_literal_cost_call_762", 0
  %"$gasadd_764" = add i64 %"$gasadd_763", 1
  %"$gasrem_765" = load i64, i64* @_gasrem, align 8
  %"$gascmp_766" = icmp ugt i64 %"$gasadd_764", %"$gasrem_765"
  br i1 %"$gascmp_766", label %"$out_of_gas_767", label %"$have_gas_768"

"$out_of_gas_767":                                ; preds = %"$have_gas_750"
  call void @_out_of_gas()
  br label %"$have_gas_768"

"$have_gas_768":                                  ; preds = %"$out_of_gas_767", %"$have_gas_750"
  %"$consume_769" = sub i64 %"$gasrem_765", %"$gasadd_764"
  store i64 %"$consume_769", i64* @_gasrem, align 8
  %"$gasrem_770" = load i64, i64* @_gasrem, align 8
  %"$gascmp_771" = icmp ugt i64 2, %"$gasrem_770"
  br i1 %"$gascmp_771", label %"$out_of_gas_772", label %"$have_gas_773"

"$out_of_gas_772":                                ; preds = %"$have_gas_768"
  call void @_out_of_gas()
  br label %"$have_gas_773"

"$have_gas_773":                                  ; preds = %"$out_of_gas_772", %"$have_gas_768"
  %"$consume_774" = sub i64 %"$gasrem_770", 2
  store i64 %"$consume_774", i64* @_gasrem, align 8
  %"$val2_776" = load %TName_Option_String*, %TName_Option_String** %val2, align 8
  %"$val2_tag_777" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$val2_776", i32 0, i32 0
  %"$val2_tag_778" = load i8, i8* %"$val2_tag_777", align 1
  switch i8 %"$val2_tag_778", label %"$empty_default_779" [
    i8 0, label %"$Some_780"
    i8 1, label %"$None_804"
  ], !dbg !172

"$Some_780":                                      ; preds = %"$have_gas_773"
  %"$val2_781" = bitcast %TName_Option_String* %"$val2_776" to %CName_Some_String*
  %"$$val2_15_gep_782" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$val2_781", i32 0, i32 1
  %"$$val2_15_load_783" = load %String, %String* %"$$val2_15_gep_782", align 8
  %"$val2_15" = alloca %String, align 8
  store %String %"$$val2_15_load_783", %String* %"$val2_15", align 8
  %"$gasrem_784" = load i64, i64* @_gasrem, align 8
  %"$gascmp_785" = icmp ugt i64 1, %"$gasrem_784"
  br i1 %"$gascmp_785", label %"$out_of_gas_786", label %"$have_gas_787"

"$out_of_gas_786":                                ; preds = %"$Some_780"
  call void @_out_of_gas()
  br label %"$have_gas_787"

"$have_gas_787":                                  ; preds = %"$out_of_gas_786", %"$Some_780"
  %"$consume_788" = sub i64 %"$gasrem_784", 1
  store i64 %"$consume_788", i64* @_gasrem, align 8
  %m2 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %m2, metadata !173, metadata !DIExpression()), !dbg !176
  %"$gasrem_789" = load i64, i64* @_gasrem, align 8
  %"$gascmp_790" = icmp ugt i64 1, %"$gasrem_789"
  br i1 %"$gascmp_790", label %"$out_of_gas_791", label %"$have_gas_792"

"$out_of_gas_791":                                ; preds = %"$have_gas_787"
  call void @_out_of_gas()
  br label %"$have_gas_792"

"$have_gas_792":                                  ; preds = %"$out_of_gas_791", %"$have_gas_787"
  %"$consume_793" = sub i64 %"$gasrem_789", 1
  store i64 %"$consume_793", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"$stringlit_794", i32 0, i32 0), i32 25 }, %String* %m2, align 8, !dbg !177
  %"$gasrem_795" = load i64, i64* @_gasrem, align 8
  %"$gascmp_796" = icmp ugt i64 1, %"$gasrem_795"
  br i1 %"$gascmp_796", label %"$out_of_gas_797", label %"$have_gas_798"

"$out_of_gas_797":                                ; preds = %"$have_gas_792"
  call void @_out_of_gas()
  br label %"$have_gas_798"

"$have_gas_798":                                  ; preds = %"$out_of_gas_797", %"$have_gas_792"
  %"$consume_799" = sub i64 %"$gasrem_795", 1
  store i64 %"$consume_799", i64* @_gasrem, align 8
  %"$fail_msg__origin_800" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_800", align 1
  %"$fail_msg__sender_801" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_801", align 1
  %"$tname_802" = load %String, %String* %tname, align 8
  %"$m_803" = load %String, %String* %m2, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_800", [20 x i8]* %"$fail_msg__sender_801", %String %"$tname_802", %String %"$m_803"), !dbg !178
  br label %"$matchsucc_775"

"$None_804":                                      ; preds = %"$have_gas_773"
  %"$val2_805" = bitcast %TName_Option_String* %"$val2_776" to %CName_None_String*
  br label %"$matchsucc_775"

"$empty_default_779":                             ; preds = %"$have_gas_773"
  br label %"$matchsucc_775"

"$matchsucc_775":                                 ; preds = %"$None_804", %"$have_gas_798", %"$empty_default_779"
  %"$gasrem_806" = load i64, i64* @_gasrem, align 8
  %"$gascmp_807" = icmp ugt i64 1, %"$gasrem_806"
  br i1 %"$gascmp_807", label %"$out_of_gas_808", label %"$have_gas_809"

"$out_of_gas_808":                                ; preds = %"$matchsucc_775"
  call void @_out_of_gas()
  br label %"$have_gas_809"

"$have_gas_809":                                  ; preds = %"$out_of_gas_808", %"$matchsucc_775"
  %"$consume_810" = sub i64 %"$gasrem_806", 1
  store i64 %"$consume_810", i64* @_gasrem, align 8
  %"$indices_buf_811_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_811_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_811_salloc_load", i64 16)
  %"$indices_buf_811_salloc" = bitcast i8* %"$indices_buf_811_salloc_salloc" to [16 x i8]*
  %"$indices_buf_811" = bitcast [16 x i8]* %"$indices_buf_811_salloc" to i8*
  %"$key1_812" = load %String, %String* %key1, align 8
  %"$indices_gep_813" = getelementptr i8, i8* %"$indices_buf_811", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_813" to %String*
  store %String %"$key1_812", %String* %indices_cast3, align 8
  %"$execptr_load_814" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_814", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_815", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_77", i32 1, i8* %"$indices_buf_811", i8* null), !dbg !179
  ret void
}

define void @t3(i8* %0) !dbg !180 {
entry:
  %"$_amount_820" = getelementptr i8, i8* %0, i32 0
  %"$_amount_821" = bitcast i8* %"$_amount_820" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_821", align 8
  %"$_origin_822" = getelementptr i8, i8* %0, i32 16
  %"$_origin_823" = bitcast i8* %"$_origin_822" to [20 x i8]*
  %"$_sender_824" = getelementptr i8, i8* %0, i32 36
  %"$_sender_825" = bitcast i8* %"$_sender_824" to [20 x i8]*
  call void @"$t3_607"(%Uint128 %_amount, [20 x i8]* %"$_origin_823", [20 x i8]* %"$_sender_825"), !dbg !181
  ret void
}

define internal void @"$t4_826"(%Uint128 %_amount, [20 x i8]* %"$_origin_827", [20 x i8]* %"$_sender_828") !dbg !182 {
entry:
  %"$_sender_945" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_828", [20 x i8]** %"$_sender_945", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_945", metadata !183, metadata !DIExpression()), !dbg !184
  %"$_origin_944" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_827", [20 x i8]** %"$_origin_944", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_944", metadata !185, metadata !DIExpression()), !dbg !184
  %"$_amount_943" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_943", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_943", metadata !186, metadata !DIExpression()), !dbg !184
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_827", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_828", align 1
  %"$gasrem_829" = load i64, i64* @_gasrem, align 8
  %"$gascmp_830" = icmp ugt i64 1, %"$gasrem_829"
  br i1 %"$gascmp_830", label %"$out_of_gas_831", label %"$have_gas_832"

"$out_of_gas_831":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_832"

"$have_gas_832":                                  ; preds = %"$out_of_gas_831", %entry
  %"$consume_833" = sub i64 %"$gasrem_829", 1
  store i64 %"$consume_833", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %tname, metadata !187, metadata !DIExpression()), !dbg !188
  %"$gasrem_834" = load i64, i64* @_gasrem, align 8
  %"$gascmp_835" = icmp ugt i64 1, %"$gasrem_834"
  br i1 %"$gascmp_835", label %"$out_of_gas_836", label %"$have_gas_837"

"$out_of_gas_836":                                ; preds = %"$have_gas_832"
  call void @_out_of_gas()
  br label %"$have_gas_837"

"$have_gas_837":                                  ; preds = %"$out_of_gas_836", %"$have_gas_832"
  %"$consume_838" = sub i64 %"$gasrem_834", 1
  store i64 %"$consume_838", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_839", i32 0, i32 0), i32 2 }, %String* %tname, align 8, !dbg !189
  %"$gasrem_840" = load i64, i64* @_gasrem, align 8
  %"$gascmp_841" = icmp ugt i64 1, %"$gasrem_840"
  br i1 %"$gascmp_841", label %"$out_of_gas_842", label %"$have_gas_843"

"$out_of_gas_842":                                ; preds = %"$have_gas_837"
  call void @_out_of_gas()
  br label %"$have_gas_843"

"$have_gas_843":                                  ; preds = %"$out_of_gas_842", %"$have_gas_837"
  %"$consume_844" = sub i64 %"$gasrem_840", 1
  store i64 %"$consume_844", i64* @_gasrem, align 8
  %key1 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key1, metadata !190, metadata !DIExpression()), !dbg !191
  %"$gasrem_845" = load i64, i64* @_gasrem, align 8
  %"$gascmp_846" = icmp ugt i64 1, %"$gasrem_845"
  br i1 %"$gascmp_846", label %"$out_of_gas_847", label %"$have_gas_848"

"$out_of_gas_847":                                ; preds = %"$have_gas_843"
  call void @_out_of_gas()
  br label %"$have_gas_848"

"$have_gas_848":                                  ; preds = %"$out_of_gas_847", %"$have_gas_843"
  %"$consume_849" = sub i64 %"$gasrem_845", 1
  store i64 %"$consume_849", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_850", i32 0, i32 0), i32 4 }, %String* %key1, align 8, !dbg !192
  %key1_found = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %key1_found, metadata !193, metadata !DIExpression()), !dbg !194
  %"$indices_buf_851_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_851_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_851_salloc_load", i64 16)
  %"$indices_buf_851_salloc" = bitcast i8* %"$indices_buf_851_salloc_salloc" to [16 x i8]*
  %"$indices_buf_851" = bitcast [16 x i8]* %"$indices_buf_851_salloc" to i8*
  %"$key1_852" = load %String, %String* %key1, align 8
  %"$indices_gep_853" = getelementptr i8, i8* %"$indices_buf_851", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_853" to %String*
  store %String %"$key1_852", %String* %indices_cast, align 8
  %"$execptr_load_855" = load i8*, i8** @_execptr, align 8
  %"$key1_found_call_856" = call i8* @_fetch_field(i8* %"$execptr_load_855", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_854", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_77", i32 1, i8* %"$indices_buf_851", i32 0), !dbg !194
  %"$key1_found_857" = bitcast i8* %"$key1_found_call_856" to %TName_Bool*
  store %TName_Bool* %"$key1_found_857", %TName_Bool** %key1_found, align 8
  %"$key1_found_858" = load %TName_Bool*, %TName_Bool** %key1_found, align 8
  %"$$key1_found_858_859" = bitcast %TName_Bool* %"$key1_found_858" to i8*
  %"$_literal_cost_call_860" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_73", i8* %"$$key1_found_858_859")
  %"$gasadd_861" = add i64 %"$_literal_cost_call_860", 0
  %"$gasadd_862" = add i64 %"$gasadd_861", 1
  %"$gasrem_863" = load i64, i64* @_gasrem, align 8
  %"$gascmp_864" = icmp ugt i64 %"$gasadd_862", %"$gasrem_863"
  br i1 %"$gascmp_864", label %"$out_of_gas_865", label %"$have_gas_866"

"$out_of_gas_865":                                ; preds = %"$have_gas_848"
  call void @_out_of_gas()
  br label %"$have_gas_866"

"$have_gas_866":                                  ; preds = %"$out_of_gas_865", %"$have_gas_848"
  %"$consume_867" = sub i64 %"$gasrem_863", %"$gasadd_862"
  store i64 %"$consume_867", i64* @_gasrem, align 8
  %"$gasrem_868" = load i64, i64* @_gasrem, align 8
  %"$gascmp_869" = icmp ugt i64 2, %"$gasrem_868"
  br i1 %"$gascmp_869", label %"$out_of_gas_870", label %"$have_gas_871"

"$out_of_gas_870":                                ; preds = %"$have_gas_866"
  call void @_out_of_gas()
  br label %"$have_gas_871"

"$have_gas_871":                                  ; preds = %"$out_of_gas_870", %"$have_gas_866"
  %"$consume_872" = sub i64 %"$gasrem_868", 2
  store i64 %"$consume_872", i64* @_gasrem, align 8
  %"$key1_found_874" = load %TName_Bool*, %TName_Bool** %key1_found, align 8
  %"$key1_found_tag_875" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$key1_found_874", i32 0, i32 0
  %"$key1_found_tag_876" = load i8, i8* %"$key1_found_tag_875", align 1
  switch i8 %"$key1_found_tag_876", label %"$empty_default_877" [
    i8 0, label %"$True_878"
    i8 1, label %"$False_888"
  ], !dbg !195

"$True_878":                                      ; preds = %"$have_gas_871"
  %"$key1_found_879" = bitcast %TName_Bool* %"$key1_found_874" to %CName_True*
  %"$gasrem_880" = load i64, i64* @_gasrem, align 8
  %"$gascmp_881" = icmp ugt i64 1, %"$gasrem_880"
  br i1 %"$gascmp_881", label %"$out_of_gas_882", label %"$have_gas_883"

"$out_of_gas_882":                                ; preds = %"$True_878"
  call void @_out_of_gas()
  br label %"$have_gas_883"

"$have_gas_883":                                  ; preds = %"$out_of_gas_882", %"$True_878"
  %"$consume_884" = sub i64 %"$gasrem_880", 1
  store i64 %"$consume_884", i64* @_gasrem, align 8
  %"$fail__origin_885" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_885", align 1
  %"$fail__sender_886" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_886", align 1
  %"$tname_887" = load %String, %String* %tname, align 8
  call void @"$fail_254"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_885", [20 x i8]* %"$fail__sender_886", %String %"$tname_887"), !dbg !196
  br label %"$matchsucc_873"

"$False_888":                                     ; preds = %"$have_gas_871"
  %"$key1_found_889" = bitcast %TName_Bool* %"$key1_found_874" to %CName_False*
  br label %"$matchsucc_873"

"$empty_default_877":                             ; preds = %"$have_gas_871"
  br label %"$matchsucc_873"

"$matchsucc_873":                                 ; preds = %"$False_888", %"$have_gas_883", %"$empty_default_877"
  %"$gasrem_890" = load i64, i64* @_gasrem, align 8
  %"$gascmp_891" = icmp ugt i64 1, %"$gasrem_890"
  br i1 %"$gascmp_891", label %"$out_of_gas_892", label %"$have_gas_893"

"$out_of_gas_892":                                ; preds = %"$matchsucc_873"
  call void @_out_of_gas()
  br label %"$have_gas_893"

"$have_gas_893":                                  ; preds = %"$out_of_gas_892", %"$matchsucc_873"
  %"$consume_894" = sub i64 %"$gasrem_890", 1
  store i64 %"$consume_894", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key1a, metadata !199, metadata !DIExpression()), !dbg !200
  %"$gasrem_895" = load i64, i64* @_gasrem, align 8
  %"$gascmp_896" = icmp ugt i64 1, %"$gasrem_895"
  br i1 %"$gascmp_896", label %"$out_of_gas_897", label %"$have_gas_898"

"$out_of_gas_897":                                ; preds = %"$have_gas_893"
  call void @_out_of_gas()
  br label %"$have_gas_898"

"$have_gas_898":                                  ; preds = %"$out_of_gas_897", %"$have_gas_893"
  %"$consume_899" = sub i64 %"$gasrem_895", 1
  store i64 %"$consume_899", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_900", i32 0, i32 0), i32 5 }, %String* %key1a, align 8, !dbg !201
  %"$gasrem_901" = load i64, i64* @_gasrem, align 8
  %"$gascmp_902" = icmp ugt i64 1, %"$gasrem_901"
  br i1 %"$gascmp_902", label %"$out_of_gas_903", label %"$have_gas_904"

"$out_of_gas_903":                                ; preds = %"$have_gas_898"
  call void @_out_of_gas()
  br label %"$have_gas_904"

"$have_gas_904":                                  ; preds = %"$out_of_gas_903", %"$have_gas_898"
  %"$consume_905" = sub i64 %"$gasrem_901", 1
  store i64 %"$consume_905", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key2a, metadata !202, metadata !DIExpression()), !dbg !203
  %"$gasrem_906" = load i64, i64* @_gasrem, align 8
  %"$gascmp_907" = icmp ugt i64 1, %"$gasrem_906"
  br i1 %"$gascmp_907", label %"$out_of_gas_908", label %"$have_gas_909"

"$out_of_gas_908":                                ; preds = %"$have_gas_904"
  call void @_out_of_gas()
  br label %"$have_gas_909"

"$have_gas_909":                                  ; preds = %"$out_of_gas_908", %"$have_gas_904"
  %"$consume_910" = sub i64 %"$gasrem_906", 1
  store i64 %"$consume_910", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_911", i32 0, i32 0), i32 5 }, %String* %key2a, align 8, !dbg !204
  %"$gasrem_912" = load i64, i64* @_gasrem, align 8
  %"$gascmp_913" = icmp ugt i64 1, %"$gasrem_912"
  br i1 %"$gascmp_913", label %"$out_of_gas_914", label %"$have_gas_915"

"$out_of_gas_914":                                ; preds = %"$have_gas_909"
  call void @_out_of_gas()
  br label %"$have_gas_915"

"$have_gas_915":                                  ; preds = %"$out_of_gas_914", %"$have_gas_909"
  %"$consume_916" = sub i64 %"$gasrem_912", 1
  store i64 %"$consume_916", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %s, metadata !205, metadata !DIExpression()), !dbg !206
  %"$gasrem_917" = load i64, i64* @_gasrem, align 8
  %"$gascmp_918" = icmp ugt i64 1, %"$gasrem_917"
  br i1 %"$gascmp_918", label %"$out_of_gas_919", label %"$have_gas_920"

"$out_of_gas_919":                                ; preds = %"$have_gas_915"
  call void @_out_of_gas()
  br label %"$have_gas_920"

"$have_gas_920":                                  ; preds = %"$out_of_gas_919", %"$have_gas_915"
  %"$consume_921" = sub i64 %"$gasrem_917", 1
  store i64 %"$consume_921", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_922", i32 0, i32 0), i32 3 }, %String* %s, align 8, !dbg !207
  %"$_literal_cost_s_923" = alloca %String, align 8
  %"$s_924" = load %String, %String* %s, align 8
  store %String %"$s_924", %String* %"$_literal_cost_s_923", align 8
  %"$$_literal_cost_s_923_925" = bitcast %String* %"$_literal_cost_s_923" to i8*
  %"$_literal_cost_call_926" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_s_923_925")
  %"$gasadd_927" = add i64 %"$_literal_cost_call_926", 2
  %"$gasrem_928" = load i64, i64* @_gasrem, align 8
  %"$gascmp_929" = icmp ugt i64 %"$gasadd_927", %"$gasrem_928"
  br i1 %"$gascmp_929", label %"$out_of_gas_930", label %"$have_gas_931"

"$out_of_gas_930":                                ; preds = %"$have_gas_920"
  call void @_out_of_gas()
  br label %"$have_gas_931"

"$have_gas_931":                                  ; preds = %"$out_of_gas_930", %"$have_gas_920"
  %"$consume_932" = sub i64 %"$gasrem_928", %"$gasadd_927"
  store i64 %"$consume_932", i64* @_gasrem, align 8
  %"$indices_buf_933_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_933_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_933_salloc_load", i64 32)
  %"$indices_buf_933_salloc" = bitcast i8* %"$indices_buf_933_salloc_salloc" to [32 x i8]*
  %"$indices_buf_933" = bitcast [32 x i8]* %"$indices_buf_933_salloc" to i8*
  %"$key1a_934" = load %String, %String* %key1a, align 8
  %"$indices_gep_935" = getelementptr i8, i8* %"$indices_buf_933", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_935" to %String*
  store %String %"$key1a_934", %String* %indices_cast1, align 8
  %"$key2a_936" = load %String, %String* %key2a, align 8
  %"$indices_gep_937" = getelementptr i8, i8* %"$indices_buf_933", i32 16
  %indices_cast2 = bitcast i8* %"$indices_gep_937" to %String*
  store %String %"$key2a_936", %String* %indices_cast2, align 8
  %"$execptr_load_938" = load i8*, i8** @_execptr, align 8
  %"$s_940" = load %String, %String* %s, align 8
  %"$update_value_941" = alloca %String, align 8
  store %String %"$s_940", %String* %"$update_value_941", align 8
  %"$update_value_942" = bitcast %String* %"$update_value_941" to i8*
  call void @_update_field(i8* %"$execptr_load_938", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_939", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 2, i8* %"$indices_buf_933", i8* %"$update_value_942"), !dbg !208
  ret void
}

define void @t4(i8* %0) !dbg !209 {
entry:
  %"$_amount_947" = getelementptr i8, i8* %0, i32 0
  %"$_amount_948" = bitcast i8* %"$_amount_947" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_948", align 8
  %"$_origin_949" = getelementptr i8, i8* %0, i32 16
  %"$_origin_950" = bitcast i8* %"$_origin_949" to [20 x i8]*
  %"$_sender_951" = getelementptr i8, i8* %0, i32 36
  %"$_sender_952" = bitcast i8* %"$_sender_951" to [20 x i8]*
  call void @"$t4_826"(%Uint128 %_amount, [20 x i8]* %"$_origin_950", [20 x i8]* %"$_sender_952"), !dbg !210
  ret void
}

define internal void @"$t5_953"(%Uint128 %_amount, [20 x i8]* %"$_origin_954", [20 x i8]* %"$_sender_955") !dbg !211 {
entry:
  %"$_sender_1237" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_955", [20 x i8]** %"$_sender_1237", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_1237", metadata !212, metadata !DIExpression()), !dbg !213
  %"$_origin_1236" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_954", [20 x i8]** %"$_origin_1236", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_1236", metadata !214, metadata !DIExpression()), !dbg !213
  %"$_amount_1235" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_1235", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_1235", metadata !215, metadata !DIExpression()), !dbg !213
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_954", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_955", align 1
  %"$gasrem_956" = load i64, i64* @_gasrem, align 8
  %"$gascmp_957" = icmp ugt i64 1, %"$gasrem_956"
  br i1 %"$gascmp_957", label %"$out_of_gas_958", label %"$have_gas_959"

"$out_of_gas_958":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_959"

"$have_gas_959":                                  ; preds = %"$out_of_gas_958", %entry
  %"$consume_960" = sub i64 %"$gasrem_956", 1
  store i64 %"$consume_960", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %tname, metadata !216, metadata !DIExpression()), !dbg !217
  %"$gasrem_961" = load i64, i64* @_gasrem, align 8
  %"$gascmp_962" = icmp ugt i64 1, %"$gasrem_961"
  br i1 %"$gascmp_962", label %"$out_of_gas_963", label %"$have_gas_964"

"$out_of_gas_963":                                ; preds = %"$have_gas_959"
  call void @_out_of_gas()
  br label %"$have_gas_964"

"$have_gas_964":                                  ; preds = %"$out_of_gas_963", %"$have_gas_959"
  %"$consume_965" = sub i64 %"$gasrem_961", 1
  store i64 %"$consume_965", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_966", i32 0, i32 0), i32 2 }, %String* %tname, align 8, !dbg !218
  %"$gasrem_967" = load i64, i64* @_gasrem, align 8
  %"$gascmp_968" = icmp ugt i64 1, %"$gasrem_967"
  br i1 %"$gascmp_968", label %"$out_of_gas_969", label %"$have_gas_970"

"$out_of_gas_969":                                ; preds = %"$have_gas_964"
  call void @_out_of_gas()
  br label %"$have_gas_970"

"$have_gas_970":                                  ; preds = %"$out_of_gas_969", %"$have_gas_964"
  %"$consume_971" = sub i64 %"$gasrem_967", 1
  store i64 %"$consume_971", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %s, metadata !219, metadata !DIExpression()), !dbg !220
  %"$gasrem_972" = load i64, i64* @_gasrem, align 8
  %"$gascmp_973" = icmp ugt i64 1, %"$gasrem_972"
  br i1 %"$gascmp_973", label %"$out_of_gas_974", label %"$have_gas_975"

"$out_of_gas_974":                                ; preds = %"$have_gas_970"
  call void @_out_of_gas()
  br label %"$have_gas_975"

"$have_gas_975":                                  ; preds = %"$out_of_gas_974", %"$have_gas_970"
  %"$consume_976" = sub i64 %"$gasrem_972", 1
  store i64 %"$consume_976", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_977", i32 0, i32 0), i32 3 }, %String* %s, align 8, !dbg !221
  %"$gasrem_978" = load i64, i64* @_gasrem, align 8
  %"$gascmp_979" = icmp ugt i64 1, %"$gasrem_978"
  br i1 %"$gascmp_979", label %"$out_of_gas_980", label %"$have_gas_981"

"$out_of_gas_980":                                ; preds = %"$have_gas_975"
  call void @_out_of_gas()
  br label %"$have_gas_981"

"$have_gas_981":                                  ; preds = %"$out_of_gas_980", %"$have_gas_975"
  %"$consume_982" = sub i64 %"$gasrem_978", 1
  store i64 %"$consume_982", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key1a, metadata !222, metadata !DIExpression()), !dbg !223
  %"$gasrem_983" = load i64, i64* @_gasrem, align 8
  %"$gascmp_984" = icmp ugt i64 1, %"$gasrem_983"
  br i1 %"$gascmp_984", label %"$out_of_gas_985", label %"$have_gas_986"

"$out_of_gas_985":                                ; preds = %"$have_gas_981"
  call void @_out_of_gas()
  br label %"$have_gas_986"

"$have_gas_986":                                  ; preds = %"$out_of_gas_985", %"$have_gas_981"
  %"$consume_987" = sub i64 %"$gasrem_983", 1
  store i64 %"$consume_987", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_988", i32 0, i32 0), i32 5 }, %String* %key1a, align 8, !dbg !224
  %"$gasrem_989" = load i64, i64* @_gasrem, align 8
  %"$gascmp_990" = icmp ugt i64 1, %"$gasrem_989"
  br i1 %"$gascmp_990", label %"$out_of_gas_991", label %"$have_gas_992"

"$out_of_gas_991":                                ; preds = %"$have_gas_986"
  call void @_out_of_gas()
  br label %"$have_gas_992"

"$have_gas_992":                                  ; preds = %"$out_of_gas_991", %"$have_gas_986"
  %"$consume_993" = sub i64 %"$gasrem_989", 1
  store i64 %"$consume_993", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key2a, metadata !225, metadata !DIExpression()), !dbg !226
  %"$gasrem_994" = load i64, i64* @_gasrem, align 8
  %"$gascmp_995" = icmp ugt i64 1, %"$gasrem_994"
  br i1 %"$gascmp_995", label %"$out_of_gas_996", label %"$have_gas_997"

"$out_of_gas_996":                                ; preds = %"$have_gas_992"
  call void @_out_of_gas()
  br label %"$have_gas_997"

"$have_gas_997":                                  ; preds = %"$out_of_gas_996", %"$have_gas_992"
  %"$consume_998" = sub i64 %"$gasrem_994", 1
  store i64 %"$consume_998", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_999", i32 0, i32 0), i32 5 }, %String* %key2a, align 8, !dbg !227
  %val = alloca %TName_Option_String*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_String** %val, metadata !228, metadata !DIExpression()), !dbg !229
  %"$indices_buf_1000_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1000_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1000_salloc_load", i64 32)
  %"$indices_buf_1000_salloc" = bitcast i8* %"$indices_buf_1000_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1000" = bitcast [32 x i8]* %"$indices_buf_1000_salloc" to i8*
  %"$key1a_1001" = load %String, %String* %key1a, align 8
  %"$indices_gep_1002" = getelementptr i8, i8* %"$indices_buf_1000", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1002" to %String*
  store %String %"$key1a_1001", %String* %indices_cast, align 8
  %"$key2a_1003" = load %String, %String* %key2a, align 8
  %"$indices_gep_1004" = getelementptr i8, i8* %"$indices_buf_1000", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_1004" to %String*
  store %String %"$key2a_1003", %String* %indices_cast1, align 8
  %"$execptr_load_1006" = load i8*, i8** @_execptr, align 8
  %"$val_call_1007" = call i8* @_fetch_field(i8* %"$execptr_load_1006", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1005", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 2, i8* %"$indices_buf_1000", i32 1), !dbg !229
  %"$val_1008" = bitcast i8* %"$val_call_1007" to %TName_Option_String*
  store %TName_Option_String* %"$val_1008", %TName_Option_String** %val, align 8
  %"$val_1009" = load %TName_Option_String*, %TName_Option_String** %val, align 8
  %"$$val_1009_1010" = bitcast %TName_Option_String* %"$val_1009" to i8*
  %"$_literal_cost_call_1011" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_72", i8* %"$$val_1009_1010")
  %"$gasadd_1012" = add i64 %"$_literal_cost_call_1011", 0
  %"$gasadd_1013" = add i64 %"$gasadd_1012", 2
  %"$gasrem_1014" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1015" = icmp ugt i64 %"$gasadd_1013", %"$gasrem_1014"
  br i1 %"$gascmp_1015", label %"$out_of_gas_1016", label %"$have_gas_1017"

"$out_of_gas_1016":                               ; preds = %"$have_gas_997"
  call void @_out_of_gas()
  br label %"$have_gas_1017"

"$have_gas_1017":                                 ; preds = %"$out_of_gas_1016", %"$have_gas_997"
  %"$consume_1018" = sub i64 %"$gasrem_1014", %"$gasadd_1013"
  store i64 %"$consume_1018", i64* @_gasrem, align 8
  %"$gasrem_1019" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1020" = icmp ugt i64 2, %"$gasrem_1019"
  br i1 %"$gascmp_1020", label %"$out_of_gas_1021", label %"$have_gas_1022"

"$out_of_gas_1021":                               ; preds = %"$have_gas_1017"
  call void @_out_of_gas()
  br label %"$have_gas_1022"

"$have_gas_1022":                                 ; preds = %"$out_of_gas_1021", %"$have_gas_1017"
  %"$consume_1023" = sub i64 %"$gasrem_1019", 2
  store i64 %"$consume_1023", i64* @_gasrem, align 8
  %"$val_1025" = load %TName_Option_String*, %TName_Option_String** %val, align 8
  %"$val_tag_1026" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$val_1025", i32 0, i32 0
  %"$val_tag_1027" = load i8, i8* %"$val_tag_1026", align 1
  switch i8 %"$val_tag_1027", label %"$empty_default_1028" [
    i8 0, label %"$Some_1029"
    i8 1, label %"$None_1091"
  ], !dbg !230

"$Some_1029":                                     ; preds = %"$have_gas_1022"
  %"$val_1030" = bitcast %TName_Option_String* %"$val_1025" to %CName_Some_String*
  %"$v_gep_1031" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$val_1030", i32 0, i32 1
  %"$v_load_1032" = load %String, %String* %"$v_gep_1031", align 8
  %v = alloca %String, align 8
  store %String %"$v_load_1032", %String* %v, align 8
  %"$gasrem_1033" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1034" = icmp ugt i64 1, %"$gasrem_1033"
  br i1 %"$gascmp_1034", label %"$out_of_gas_1035", label %"$have_gas_1036"

"$out_of_gas_1035":                               ; preds = %"$Some_1029"
  call void @_out_of_gas()
  br label %"$have_gas_1036"

"$have_gas_1036":                                 ; preds = %"$out_of_gas_1035", %"$Some_1029"
  %"$consume_1037" = sub i64 %"$gasrem_1033", 1
  store i64 %"$consume_1037", i64* @_gasrem, align 8
  %t = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %t, metadata !231, metadata !DIExpression()), !dbg !234
  %"$_literal_cost_v_1038" = alloca %String, align 8
  %"$v_1039" = load %String, %String* %v, align 8
  store %String %"$v_1039", %String* %"$_literal_cost_v_1038", align 8
  %"$$_literal_cost_v_1038_1040" = bitcast %String* %"$_literal_cost_v_1038" to i8*
  %"$_literal_cost_call_1041" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v_1038_1040")
  %"$_literal_cost_s_1042" = alloca %String, align 8
  %"$s_1043" = load %String, %String* %s, align 8
  store %String %"$s_1043", %String* %"$_literal_cost_s_1042", align 8
  %"$$_literal_cost_s_1042_1044" = bitcast %String* %"$_literal_cost_s_1042" to i8*
  %"$_literal_cost_call_1045" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_s_1042_1044")
  %"$gasmin_1046" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_1041", i64 %"$_literal_cost_call_1045")
  %"$gasrem_1047" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1048" = icmp ugt i64 %"$gasmin_1046", %"$gasrem_1047"
  br i1 %"$gascmp_1048", label %"$out_of_gas_1049", label %"$have_gas_1050"

"$out_of_gas_1049":                               ; preds = %"$have_gas_1036"
  call void @_out_of_gas()
  br label %"$have_gas_1050"

"$have_gas_1050":                                 ; preds = %"$out_of_gas_1049", %"$have_gas_1036"
  %"$consume_1051" = sub i64 %"$gasrem_1047", %"$gasmin_1046"
  store i64 %"$consume_1051", i64* @_gasrem, align 8
  %"$execptr_load_1052" = load i8*, i8** @_execptr, align 8
  %"$v_1053" = load %String, %String* %v, align 8
  %"$s_1054" = load %String, %String* %s, align 8
  %"$eq_call_1055" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1052", %String %"$v_1053", %String %"$s_1054"), !dbg !235
  store %TName_Bool* %"$eq_call_1055", %TName_Bool** %t, align 8, !dbg !235
  %"$gasrem_1057" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1058" = icmp ugt i64 2, %"$gasrem_1057"
  br i1 %"$gascmp_1058", label %"$out_of_gas_1059", label %"$have_gas_1060"

"$out_of_gas_1059":                               ; preds = %"$have_gas_1050"
  call void @_out_of_gas()
  br label %"$have_gas_1060"

"$have_gas_1060":                                 ; preds = %"$out_of_gas_1059", %"$have_gas_1050"
  %"$consume_1061" = sub i64 %"$gasrem_1057", 2
  store i64 %"$consume_1061", i64* @_gasrem, align 8
  %"$t_1063" = load %TName_Bool*, %TName_Bool** %t, align 8
  %"$t_tag_1064" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$t_1063", i32 0, i32 0
  %"$t_tag_1065" = load i8, i8* %"$t_tag_1064", align 1
  switch i8 %"$t_tag_1065", label %"$empty_default_1066" [
    i8 0, label %"$True_1067"
    i8 1, label %"$False_1069"
  ], !dbg !236

"$True_1067":                                     ; preds = %"$have_gas_1060"
  %"$t_1068" = bitcast %TName_Bool* %"$t_1063" to %CName_True*
  br label %"$matchsucc_1062"

"$False_1069":                                    ; preds = %"$have_gas_1060"
  %"$t_1070" = bitcast %TName_Bool* %"$t_1063" to %CName_False*
  %"$gasrem_1071" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1072" = icmp ugt i64 1, %"$gasrem_1071"
  br i1 %"$gascmp_1072", label %"$out_of_gas_1073", label %"$have_gas_1074"

"$out_of_gas_1073":                               ; preds = %"$False_1069"
  call void @_out_of_gas()
  br label %"$have_gas_1074"

"$have_gas_1074":                                 ; preds = %"$out_of_gas_1073", %"$False_1069"
  %"$consume_1075" = sub i64 %"$gasrem_1071", 1
  store i64 %"$consume_1075", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %m, metadata !237, metadata !DIExpression()), !dbg !240
  %"$gasrem_1076" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1077" = icmp ugt i64 1, %"$gasrem_1076"
  br i1 %"$gascmp_1077", label %"$out_of_gas_1078", label %"$have_gas_1079"

"$out_of_gas_1078":                               ; preds = %"$have_gas_1074"
  call void @_out_of_gas()
  br label %"$have_gas_1079"

"$have_gas_1079":                                 ; preds = %"$out_of_gas_1078", %"$have_gas_1074"
  %"$consume_1080" = sub i64 %"$gasrem_1076", 1
  store i64 %"$consume_1080", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$stringlit_1081", i32 0, i32 0), i32 23 }, %String* %m, align 8, !dbg !241
  %"$gasrem_1082" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1083" = icmp ugt i64 1, %"$gasrem_1082"
  br i1 %"$gascmp_1083", label %"$out_of_gas_1084", label %"$have_gas_1085"

"$out_of_gas_1084":                               ; preds = %"$have_gas_1079"
  call void @_out_of_gas()
  br label %"$have_gas_1085"

"$have_gas_1085":                                 ; preds = %"$out_of_gas_1084", %"$have_gas_1079"
  %"$consume_1086" = sub i64 %"$gasrem_1082", 1
  store i64 %"$consume_1086", i64* @_gasrem, align 8
  %"$fail_msg__origin_1087" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1087", align 1
  %"$fail_msg__sender_1088" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1088", align 1
  %"$tname_1089" = load %String, %String* %tname, align 8
  %"$m_1090" = load %String, %String* %m, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1087", [20 x i8]* %"$fail_msg__sender_1088", %String %"$tname_1089", %String %"$m_1090"), !dbg !242
  br label %"$matchsucc_1062"

"$empty_default_1066":                            ; preds = %"$have_gas_1060"
  br label %"$matchsucc_1062"

"$matchsucc_1062":                                ; preds = %"$have_gas_1085", %"$True_1067", %"$empty_default_1066"
  br label %"$matchsucc_1024"

"$None_1091":                                     ; preds = %"$have_gas_1022"
  %"$val_1092" = bitcast %TName_Option_String* %"$val_1025" to %CName_None_String*
  %"$gasrem_1093" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1094" = icmp ugt i64 1, %"$gasrem_1093"
  br i1 %"$gascmp_1094", label %"$out_of_gas_1095", label %"$have_gas_1096"

"$out_of_gas_1095":                               ; preds = %"$None_1091"
  call void @_out_of_gas()
  br label %"$have_gas_1096"

"$have_gas_1096":                                 ; preds = %"$out_of_gas_1095", %"$None_1091"
  %"$consume_1097" = sub i64 %"$gasrem_1093", 1
  store i64 %"$consume_1097", i64* @_gasrem, align 8
  %"$fail__origin_1098" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_1098", align 1
  %"$fail__sender_1099" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_1099", align 1
  %"$tname_1100" = load %String, %String* %tname, align 8
  call void @"$fail_254"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_1098", [20 x i8]* %"$fail__sender_1099", %String %"$tname_1100"), !dbg !243
  br label %"$matchsucc_1024"

"$empty_default_1028":                            ; preds = %"$have_gas_1022"
  br label %"$matchsucc_1024"

"$matchsucc_1024":                                ; preds = %"$have_gas_1096", %"$matchsucc_1062", %"$empty_default_1028"
  %"$gasrem_1101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1102" = icmp ugt i64 1, %"$gasrem_1101"
  br i1 %"$gascmp_1102", label %"$out_of_gas_1103", label %"$have_gas_1104"

"$out_of_gas_1103":                               ; preds = %"$matchsucc_1024"
  call void @_out_of_gas()
  br label %"$have_gas_1104"

"$have_gas_1104":                                 ; preds = %"$out_of_gas_1103", %"$matchsucc_1024"
  %"$consume_1105" = sub i64 %"$gasrem_1101", 1
  store i64 %"$consume_1105", i64* @_gasrem, align 8
  %l_m2 = alloca %Map_String_String*, align 8
  call void @llvm.dbg.declare(metadata %Map_String_String** %l_m2, metadata !245, metadata !DIExpression()), !dbg !246
  %"$gasrem_1106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1107" = icmp ugt i64 1, %"$gasrem_1106"
  br i1 %"$gascmp_1107", label %"$out_of_gas_1108", label %"$have_gas_1109"

"$out_of_gas_1108":                               ; preds = %"$have_gas_1104"
  call void @_out_of_gas()
  br label %"$have_gas_1109"

"$have_gas_1109":                                 ; preds = %"$out_of_gas_1108", %"$have_gas_1104"
  %"$consume_1110" = sub i64 %"$gasrem_1106", 1
  store i64 %"$consume_1110", i64* @_gasrem, align 8
  %e = alloca %Map_String_String*, align 8
  call void @llvm.dbg.declare(metadata %Map_String_String** %e, metadata !247, metadata !DIExpression()), !dbg !248
  %"$gasrem_1111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1112" = icmp ugt i64 1, %"$gasrem_1111"
  br i1 %"$gascmp_1112", label %"$out_of_gas_1113", label %"$have_gas_1114"

"$out_of_gas_1113":                               ; preds = %"$have_gas_1109"
  call void @_out_of_gas()
  br label %"$have_gas_1114"

"$have_gas_1114":                                 ; preds = %"$out_of_gas_1113", %"$have_gas_1109"
  %"$consume_1115" = sub i64 %"$gasrem_1111", 1
  store i64 %"$consume_1115", i64* @_gasrem, align 8
  %"$execptr_load_1116" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_1117" = call i8* @_new_empty_map(i8* %"$execptr_load_1116")
  %"$_new_empty_map_1118" = bitcast i8* %"$_new_empty_map_call_1117" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_1118", %Map_String_String** %e, align 8, !dbg !249
  %"$gasrem_1119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1120" = icmp ugt i64 1, %"$gasrem_1119"
  br i1 %"$gascmp_1120", label %"$out_of_gas_1121", label %"$have_gas_1122"

"$out_of_gas_1121":                               ; preds = %"$have_gas_1114"
  call void @_out_of_gas()
  br label %"$have_gas_1122"

"$have_gas_1122":                                 ; preds = %"$out_of_gas_1121", %"$have_gas_1114"
  %"$consume_1123" = sub i64 %"$gasrem_1119", 1
  store i64 %"$consume_1123", i64* @_gasrem, align 8
  %key2b = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key2b, metadata !250, metadata !DIExpression()), !dbg !251
  %"$gasrem_1124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1125" = icmp ugt i64 1, %"$gasrem_1124"
  br i1 %"$gascmp_1125", label %"$out_of_gas_1126", label %"$have_gas_1127"

"$out_of_gas_1126":                               ; preds = %"$have_gas_1122"
  call void @_out_of_gas()
  br label %"$have_gas_1127"

"$have_gas_1127":                                 ; preds = %"$out_of_gas_1126", %"$have_gas_1122"
  %"$consume_1128" = sub i64 %"$gasrem_1124", 1
  store i64 %"$consume_1128", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1129", i32 0, i32 0), i32 5 }, %String* %key2b, align 8, !dbg !252
  %"$gasrem_1130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1131" = icmp ugt i64 1, %"$gasrem_1130"
  br i1 %"$gascmp_1131", label %"$out_of_gas_1132", label %"$have_gas_1133"

"$out_of_gas_1132":                               ; preds = %"$have_gas_1127"
  call void @_out_of_gas()
  br label %"$have_gas_1133"

"$have_gas_1133":                                 ; preds = %"$out_of_gas_1132", %"$have_gas_1127"
  %"$consume_1134" = sub i64 %"$gasrem_1130", 1
  store i64 %"$consume_1134", i64* @_gasrem, align 8
  %s1 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %s1, metadata !253, metadata !DIExpression()), !dbg !254
  %"$gasrem_1135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1136" = icmp ugt i64 1, %"$gasrem_1135"
  br i1 %"$gascmp_1136", label %"$out_of_gas_1137", label %"$have_gas_1138"

"$out_of_gas_1137":                               ; preds = %"$have_gas_1133"
  call void @_out_of_gas()
  br label %"$have_gas_1138"

"$have_gas_1138":                                 ; preds = %"$out_of_gas_1137", %"$have_gas_1133"
  %"$consume_1139" = sub i64 %"$gasrem_1135", 1
  store i64 %"$consume_1139", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1140", i32 0, i32 0), i32 3 }, %String* %s1, align 8, !dbg !255
  %"$gasrem_1141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1142" = icmp ugt i64 1, %"$gasrem_1141"
  br i1 %"$gascmp_1142", label %"$out_of_gas_1143", label %"$have_gas_1144"

"$out_of_gas_1143":                               ; preds = %"$have_gas_1138"
  call void @_out_of_gas()
  br label %"$have_gas_1144"

"$have_gas_1144":                                 ; preds = %"$out_of_gas_1143", %"$have_gas_1138"
  %"$consume_1145" = sub i64 %"$gasrem_1141", 1
  store i64 %"$consume_1145", i64* @_gasrem, align 8
  %m1 = alloca %Map_String_String*, align 8
  call void @llvm.dbg.declare(metadata %Map_String_String** %m1, metadata !256, metadata !DIExpression()), !dbg !257
  %"$e_1146" = load %Map_String_String*, %Map_String_String** %e, align 8
  %"$$e_1146_1147" = bitcast %Map_String_String* %"$e_1146" to i8*
  %"$_lengthof_call_1148" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$e_1146_1147")
  %"$gasadd_1149" = add i64 1, %"$_lengthof_call_1148"
  %"$gasrem_1150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1151" = icmp ugt i64 %"$gasadd_1149", %"$gasrem_1150"
  br i1 %"$gascmp_1151", label %"$out_of_gas_1152", label %"$have_gas_1153"

"$out_of_gas_1152":                               ; preds = %"$have_gas_1144"
  call void @_out_of_gas()
  br label %"$have_gas_1153"

"$have_gas_1153":                                 ; preds = %"$out_of_gas_1152", %"$have_gas_1144"
  %"$consume_1154" = sub i64 %"$gasrem_1150", %"$gasadd_1149"
  store i64 %"$consume_1154", i64* @_gasrem, align 8
  %"$execptr_load_1155" = load i8*, i8** @_execptr, align 8
  %"$e_1156" = load %Map_String_String*, %Map_String_String** %e, align 8
  %"$$e_1156_1157" = bitcast %Map_String_String* %"$e_1156" to i8*
  %"$put_key2b_1158" = alloca %String, align 8
  %"$key2b_1159" = load %String, %String* %key2b, align 8
  store %String %"$key2b_1159", %String* %"$put_key2b_1158", align 8
  %"$$put_key2b_1158_1160" = bitcast %String* %"$put_key2b_1158" to i8*
  %"$put_s1_1161" = alloca %String, align 8
  %"$s1_1162" = load %String, %String* %s1, align 8
  store %String %"$s1_1162", %String* %"$put_s1_1161", align 8
  %"$$put_s1_1161_1163" = bitcast %String* %"$put_s1_1161" to i8*
  %"$put_call_1164" = call i8* @_put(i8* %"$execptr_load_1155", %_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$e_1156_1157", i8* %"$$put_key2b_1158_1160", i8* %"$$put_s1_1161_1163"), !dbg !258
  %"$put_1165" = bitcast i8* %"$put_call_1164" to %Map_String_String*
  store %Map_String_String* %"$put_1165", %Map_String_String** %m1, align 8, !dbg !258
  %"$gasrem_1166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1167" = icmp ugt i64 1, %"$gasrem_1166"
  br i1 %"$gascmp_1167", label %"$out_of_gas_1168", label %"$have_gas_1169"

"$out_of_gas_1168":                               ; preds = %"$have_gas_1153"
  call void @_out_of_gas()
  br label %"$have_gas_1169"

"$have_gas_1169":                                 ; preds = %"$out_of_gas_1168", %"$have_gas_1153"
  %"$consume_1170" = sub i64 %"$gasrem_1166", 1
  store i64 %"$consume_1170", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key2c, metadata !259, metadata !DIExpression()), !dbg !260
  %"$gasrem_1171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1172" = icmp ugt i64 1, %"$gasrem_1171"
  br i1 %"$gascmp_1172", label %"$out_of_gas_1173", label %"$have_gas_1174"

"$out_of_gas_1173":                               ; preds = %"$have_gas_1169"
  call void @_out_of_gas()
  br label %"$have_gas_1174"

"$have_gas_1174":                                 ; preds = %"$out_of_gas_1173", %"$have_gas_1169"
  %"$consume_1175" = sub i64 %"$gasrem_1171", 1
  store i64 %"$consume_1175", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1176", i32 0, i32 0), i32 5 }, %String* %key2c, align 8, !dbg !261
  %"$gasrem_1177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1178" = icmp ugt i64 1, %"$gasrem_1177"
  br i1 %"$gascmp_1178", label %"$out_of_gas_1179", label %"$have_gas_1180"

"$out_of_gas_1179":                               ; preds = %"$have_gas_1174"
  call void @_out_of_gas()
  br label %"$have_gas_1180"

"$have_gas_1180":                                 ; preds = %"$out_of_gas_1179", %"$have_gas_1174"
  %"$consume_1181" = sub i64 %"$gasrem_1177", 1
  store i64 %"$consume_1181", i64* @_gasrem, align 8
  %s2 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %s2, metadata !262, metadata !DIExpression()), !dbg !263
  %"$gasrem_1182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1183" = icmp ugt i64 1, %"$gasrem_1182"
  br i1 %"$gascmp_1183", label %"$out_of_gas_1184", label %"$have_gas_1185"

"$out_of_gas_1184":                               ; preds = %"$have_gas_1180"
  call void @_out_of_gas()
  br label %"$have_gas_1185"

"$have_gas_1185":                                 ; preds = %"$out_of_gas_1184", %"$have_gas_1180"
  %"$consume_1186" = sub i64 %"$gasrem_1182", 1
  store i64 %"$consume_1186", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1187", i32 0, i32 0), i32 3 }, %String* %s2, align 8, !dbg !264
  %"$m1_1188" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_1188_1189" = bitcast %Map_String_String* %"$m1_1188" to i8*
  %"$_lengthof_call_1190" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$m1_1188_1189")
  %"$gasadd_1191" = add i64 1, %"$_lengthof_call_1190"
  %"$gasrem_1192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1193" = icmp ugt i64 %"$gasadd_1191", %"$gasrem_1192"
  br i1 %"$gascmp_1193", label %"$out_of_gas_1194", label %"$have_gas_1195"

"$out_of_gas_1194":                               ; preds = %"$have_gas_1185"
  call void @_out_of_gas()
  br label %"$have_gas_1195"

"$have_gas_1195":                                 ; preds = %"$out_of_gas_1194", %"$have_gas_1185"
  %"$consume_1196" = sub i64 %"$gasrem_1192", %"$gasadd_1191"
  store i64 %"$consume_1196", i64* @_gasrem, align 8
  %"$execptr_load_1197" = load i8*, i8** @_execptr, align 8
  %"$m1_1198" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_1198_1199" = bitcast %Map_String_String* %"$m1_1198" to i8*
  %"$put_key2c_1200" = alloca %String, align 8
  %"$key2c_1201" = load %String, %String* %key2c, align 8
  store %String %"$key2c_1201", %String* %"$put_key2c_1200", align 8
  %"$$put_key2c_1200_1202" = bitcast %String* %"$put_key2c_1200" to i8*
  %"$put_s2_1203" = alloca %String, align 8
  %"$s2_1204" = load %String, %String* %s2, align 8
  store %String %"$s2_1204", %String* %"$put_s2_1203", align 8
  %"$$put_s2_1203_1205" = bitcast %String* %"$put_s2_1203" to i8*
  %"$put_call_1206" = call i8* @_put(i8* %"$execptr_load_1197", %_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$m1_1198_1199", i8* %"$$put_key2c_1200_1202", i8* %"$$put_s2_1203_1205"), !dbg !265
  %"$put_1207" = bitcast i8* %"$put_call_1206" to %Map_String_String*
  store %Map_String_String* %"$put_1207", %Map_String_String** %l_m2, align 8, !dbg !265
  %"$gasrem_1208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1209" = icmp ugt i64 1, %"$gasrem_1208"
  br i1 %"$gascmp_1209", label %"$out_of_gas_1210", label %"$have_gas_1211"

"$out_of_gas_1210":                               ; preds = %"$have_gas_1195"
  call void @_out_of_gas()
  br label %"$have_gas_1211"

"$have_gas_1211":                                 ; preds = %"$out_of_gas_1210", %"$have_gas_1195"
  %"$consume_1212" = sub i64 %"$gasrem_1208", 1
  store i64 %"$consume_1212", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key1b, metadata !266, metadata !DIExpression()), !dbg !267
  %"$gasrem_1213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1214" = icmp ugt i64 1, %"$gasrem_1213"
  br i1 %"$gascmp_1214", label %"$out_of_gas_1215", label %"$have_gas_1216"

"$out_of_gas_1215":                               ; preds = %"$have_gas_1211"
  call void @_out_of_gas()
  br label %"$have_gas_1216"

"$have_gas_1216":                                 ; preds = %"$out_of_gas_1215", %"$have_gas_1211"
  %"$consume_1217" = sub i64 %"$gasrem_1213", 1
  store i64 %"$consume_1217", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1218", i32 0, i32 0), i32 5 }, %String* %key1b, align 8, !dbg !268
  %"$l_m2_1219" = load %Map_String_String*, %Map_String_String** %l_m2, align 8
  %"$$l_m2_1219_1220" = bitcast %Map_String_String* %"$l_m2_1219" to i8*
  %"$_literal_cost_call_1221" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$l_m2_1219_1220")
  %"$gasadd_1222" = add i64 %"$_literal_cost_call_1221", 1
  %"$gasrem_1223" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1224" = icmp ugt i64 %"$gasadd_1222", %"$gasrem_1223"
  br i1 %"$gascmp_1224", label %"$out_of_gas_1225", label %"$have_gas_1226"

"$out_of_gas_1225":                               ; preds = %"$have_gas_1216"
  call void @_out_of_gas()
  br label %"$have_gas_1226"

"$have_gas_1226":                                 ; preds = %"$out_of_gas_1225", %"$have_gas_1216"
  %"$consume_1227" = sub i64 %"$gasrem_1223", %"$gasadd_1222"
  store i64 %"$consume_1227", i64* @_gasrem, align 8
  %"$indices_buf_1228_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1228_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1228_salloc_load", i64 16)
  %"$indices_buf_1228_salloc" = bitcast i8* %"$indices_buf_1228_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1228" = bitcast [16 x i8]* %"$indices_buf_1228_salloc" to i8*
  %"$key1b_1229" = load %String, %String* %key1b, align 8
  %"$indices_gep_1230" = getelementptr i8, i8* %"$indices_buf_1228", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_1230" to %String*
  store %String %"$key1b_1229", %String* %indices_cast2, align 8
  %"$execptr_load_1231" = load i8*, i8** @_execptr, align 8
  %"$l_m2_1233" = load %Map_String_String*, %Map_String_String** %l_m2, align 8
  %"$update_value_1234" = bitcast %Map_String_String* %"$l_m2_1233" to i8*
  call void @_update_field(i8* %"$execptr_load_1231", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1232", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 1, i8* %"$indices_buf_1228", i8* %"$update_value_1234"), !dbg !269
  ret void
}

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

define void @t5(i8* %0) !dbg !270 {
entry:
  %"$_amount_1239" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1240" = bitcast i8* %"$_amount_1239" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1240", align 8
  %"$_origin_1241" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1242" = bitcast i8* %"$_origin_1241" to [20 x i8]*
  %"$_sender_1243" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1244" = bitcast i8* %"$_sender_1243" to [20 x i8]*
  call void @"$t5_953"(%Uint128 %_amount, [20 x i8]* %"$_origin_1242", [20 x i8]* %"$_sender_1244"), !dbg !271
  ret void
}

define internal void @"$t6_1245"(%Uint128 %_amount, [20 x i8]* %"$_origin_1246", [20 x i8]* %"$_sender_1247") !dbg !272 {
entry:
  %"$_sender_1709" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_1247", [20 x i8]** %"$_sender_1709", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_1709", metadata !273, metadata !DIExpression()), !dbg !274
  %"$_origin_1708" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_1246", [20 x i8]** %"$_origin_1708", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_1708", metadata !275, metadata !DIExpression()), !dbg !274
  %"$_amount_1707" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_1707", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_1707", metadata !276, metadata !DIExpression()), !dbg !274
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1246", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1247", align 1
  %"$gasrem_1248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1249" = icmp ugt i64 1, %"$gasrem_1248"
  br i1 %"$gascmp_1249", label %"$out_of_gas_1250", label %"$have_gas_1251"

"$out_of_gas_1250":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1251"

"$have_gas_1251":                                 ; preds = %"$out_of_gas_1250", %entry
  %"$consume_1252" = sub i64 %"$gasrem_1248", 1
  store i64 %"$consume_1252", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %tname, metadata !277, metadata !DIExpression()), !dbg !278
  %"$gasrem_1253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1254" = icmp ugt i64 1, %"$gasrem_1253"
  br i1 %"$gascmp_1254", label %"$out_of_gas_1255", label %"$have_gas_1256"

"$out_of_gas_1255":                               ; preds = %"$have_gas_1251"
  call void @_out_of_gas()
  br label %"$have_gas_1256"

"$have_gas_1256":                                 ; preds = %"$out_of_gas_1255", %"$have_gas_1251"
  %"$consume_1257" = sub i64 %"$gasrem_1253", 1
  store i64 %"$consume_1257", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_1258", i32 0, i32 0), i32 2 }, %String* %tname, align 8, !dbg !279
  %"$gasrem_1259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1260" = icmp ugt i64 1, %"$gasrem_1259"
  br i1 %"$gascmp_1260", label %"$out_of_gas_1261", label %"$have_gas_1262"

"$out_of_gas_1261":                               ; preds = %"$have_gas_1256"
  call void @_out_of_gas()
  br label %"$have_gas_1262"

"$have_gas_1262":                                 ; preds = %"$out_of_gas_1261", %"$have_gas_1256"
  %"$consume_1263" = sub i64 %"$gasrem_1259", 1
  store i64 %"$consume_1263", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key1a, metadata !280, metadata !DIExpression()), !dbg !281
  %"$gasrem_1264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1265" = icmp ugt i64 1, %"$gasrem_1264"
  br i1 %"$gascmp_1265", label %"$out_of_gas_1266", label %"$have_gas_1267"

"$out_of_gas_1266":                               ; preds = %"$have_gas_1262"
  call void @_out_of_gas()
  br label %"$have_gas_1267"

"$have_gas_1267":                                 ; preds = %"$out_of_gas_1266", %"$have_gas_1262"
  %"$consume_1268" = sub i64 %"$gasrem_1264", 1
  store i64 %"$consume_1268", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1269", i32 0, i32 0), i32 5 }, %String* %key1a, align 8, !dbg !282
  %"$gasrem_1270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1271" = icmp ugt i64 1, %"$gasrem_1270"
  br i1 %"$gascmp_1271", label %"$out_of_gas_1272", label %"$have_gas_1273"

"$out_of_gas_1272":                               ; preds = %"$have_gas_1267"
  call void @_out_of_gas()
  br label %"$have_gas_1273"

"$have_gas_1273":                                 ; preds = %"$out_of_gas_1272", %"$have_gas_1267"
  %"$consume_1274" = sub i64 %"$gasrem_1270", 1
  store i64 %"$consume_1274", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key2a, metadata !283, metadata !DIExpression()), !dbg !284
  %"$gasrem_1275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1276" = icmp ugt i64 1, %"$gasrem_1275"
  br i1 %"$gascmp_1276", label %"$out_of_gas_1277", label %"$have_gas_1278"

"$out_of_gas_1277":                               ; preds = %"$have_gas_1273"
  call void @_out_of_gas()
  br label %"$have_gas_1278"

"$have_gas_1278":                                 ; preds = %"$out_of_gas_1277", %"$have_gas_1273"
  %"$consume_1279" = sub i64 %"$gasrem_1275", 1
  store i64 %"$consume_1279", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1280", i32 0, i32 0), i32 5 }, %String* %key2a, align 8, !dbg !285
  %c1 = alloca %TName_Option_String*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_String** %c1, metadata !286, metadata !DIExpression()), !dbg !287
  %"$indices_buf_1281_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1281_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1281_salloc_load", i64 32)
  %"$indices_buf_1281_salloc" = bitcast i8* %"$indices_buf_1281_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1281" = bitcast [32 x i8]* %"$indices_buf_1281_salloc" to i8*
  %"$key1a_1282" = load %String, %String* %key1a, align 8
  %"$indices_gep_1283" = getelementptr i8, i8* %"$indices_buf_1281", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1283" to %String*
  store %String %"$key1a_1282", %String* %indices_cast, align 8
  %"$key2a_1284" = load %String, %String* %key2a, align 8
  %"$indices_gep_1285" = getelementptr i8, i8* %"$indices_buf_1281", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_1285" to %String*
  store %String %"$key2a_1284", %String* %indices_cast1, align 8
  %"$execptr_load_1287" = load i8*, i8** @_execptr, align 8
  %"$c1_call_1288" = call i8* @_fetch_field(i8* %"$execptr_load_1287", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1286", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 2, i8* %"$indices_buf_1281", i32 1), !dbg !287
  %"$c1_1289" = bitcast i8* %"$c1_call_1288" to %TName_Option_String*
  store %TName_Option_String* %"$c1_1289", %TName_Option_String** %c1, align 8
  %"$c1_1290" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$$c1_1290_1291" = bitcast %TName_Option_String* %"$c1_1290" to i8*
  %"$_literal_cost_call_1292" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_72", i8* %"$$c1_1290_1291")
  %"$gasadd_1293" = add i64 %"$_literal_cost_call_1292", 0
  %"$gasadd_1294" = add i64 %"$gasadd_1293", 2
  %"$gasrem_1295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1296" = icmp ugt i64 %"$gasadd_1294", %"$gasrem_1295"
  br i1 %"$gascmp_1296", label %"$out_of_gas_1297", label %"$have_gas_1298"

"$out_of_gas_1297":                               ; preds = %"$have_gas_1278"
  call void @_out_of_gas()
  br label %"$have_gas_1298"

"$have_gas_1298":                                 ; preds = %"$out_of_gas_1297", %"$have_gas_1278"
  %"$consume_1299" = sub i64 %"$gasrem_1295", %"$gasadd_1294"
  store i64 %"$consume_1299", i64* @_gasrem, align 8
  %"$gasrem_1300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1301" = icmp ugt i64 2, %"$gasrem_1300"
  br i1 %"$gascmp_1301", label %"$out_of_gas_1302", label %"$have_gas_1303"

"$out_of_gas_1302":                               ; preds = %"$have_gas_1298"
  call void @_out_of_gas()
  br label %"$have_gas_1303"

"$have_gas_1303":                                 ; preds = %"$out_of_gas_1302", %"$have_gas_1298"
  %"$consume_1304" = sub i64 %"$gasrem_1300", 2
  store i64 %"$consume_1304", i64* @_gasrem, align 8
  %"$c1_1306" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$c1_tag_1307" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_1306", i32 0, i32 0
  %"$c1_tag_1308" = load i8, i8* %"$c1_tag_1307", align 1
  switch i8 %"$c1_tag_1308", label %"$empty_default_1309" [
    i8 0, label %"$Some_1310"
    i8 1, label %"$None_1383"
  ], !dbg !288

"$Some_1310":                                     ; preds = %"$have_gas_1303"
  %"$c1_1311" = bitcast %TName_Option_String* %"$c1_1306" to %CName_Some_String*
  %"$c_gep_1312" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_1311", i32 0, i32 1
  %"$c_load_1313" = load %String, %String* %"$c_gep_1312", align 8
  %c = alloca %String, align 8
  store %String %"$c_load_1313", %String* %c, align 8
  %"$gasrem_1314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1315" = icmp ugt i64 1, %"$gasrem_1314"
  br i1 %"$gascmp_1315", label %"$out_of_gas_1316", label %"$have_gas_1317"

"$out_of_gas_1316":                               ; preds = %"$Some_1310"
  call void @_out_of_gas()
  br label %"$have_gas_1317"

"$have_gas_1317":                                 ; preds = %"$out_of_gas_1316", %"$Some_1310"
  %"$consume_1318" = sub i64 %"$gasrem_1314", 1
  store i64 %"$consume_1318", i64* @_gasrem, align 8
  %v = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %v, metadata !289, metadata !DIExpression()), !dbg !292
  %"$gasrem_1319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1320" = icmp ugt i64 1, %"$gasrem_1319"
  br i1 %"$gascmp_1320", label %"$out_of_gas_1321", label %"$have_gas_1322"

"$out_of_gas_1321":                               ; preds = %"$have_gas_1317"
  call void @_out_of_gas()
  br label %"$have_gas_1322"

"$have_gas_1322":                                 ; preds = %"$out_of_gas_1321", %"$have_gas_1317"
  %"$consume_1323" = sub i64 %"$gasrem_1319", 1
  store i64 %"$consume_1323", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1324", i32 0, i32 0), i32 3 }, %String* %v, align 8, !dbg !293
  %"$gasrem_1325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1326" = icmp ugt i64 1, %"$gasrem_1325"
  br i1 %"$gascmp_1326", label %"$out_of_gas_1327", label %"$have_gas_1328"

"$out_of_gas_1327":                               ; preds = %"$have_gas_1322"
  call void @_out_of_gas()
  br label %"$have_gas_1328"

"$have_gas_1328":                                 ; preds = %"$out_of_gas_1327", %"$have_gas_1322"
  %"$consume_1329" = sub i64 %"$gasrem_1325", 1
  store i64 %"$consume_1329", i64* @_gasrem, align 8
  %eq = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %eq, metadata !294, metadata !DIExpression()), !dbg !295
  %"$_literal_cost_c_1330" = alloca %String, align 8
  %"$c_1331" = load %String, %String* %c, align 8
  store %String %"$c_1331", %String* %"$_literal_cost_c_1330", align 8
  %"$$_literal_cost_c_1330_1332" = bitcast %String* %"$_literal_cost_c_1330" to i8*
  %"$_literal_cost_call_1333" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_c_1330_1332")
  %"$_literal_cost_v_1334" = alloca %String, align 8
  %"$v_1335" = load %String, %String* %v, align 8
  store %String %"$v_1335", %String* %"$_literal_cost_v_1334", align 8
  %"$$_literal_cost_v_1334_1336" = bitcast %String* %"$_literal_cost_v_1334" to i8*
  %"$_literal_cost_call_1337" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v_1334_1336")
  %"$gasmin_1338" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_1333", i64 %"$_literal_cost_call_1337")
  %"$gasrem_1339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1340" = icmp ugt i64 %"$gasmin_1338", %"$gasrem_1339"
  br i1 %"$gascmp_1340", label %"$out_of_gas_1341", label %"$have_gas_1342"

"$out_of_gas_1341":                               ; preds = %"$have_gas_1328"
  call void @_out_of_gas()
  br label %"$have_gas_1342"

"$have_gas_1342":                                 ; preds = %"$out_of_gas_1341", %"$have_gas_1328"
  %"$consume_1343" = sub i64 %"$gasrem_1339", %"$gasmin_1338"
  store i64 %"$consume_1343", i64* @_gasrem, align 8
  %"$execptr_load_1344" = load i8*, i8** @_execptr, align 8
  %"$c_1345" = load %String, %String* %c, align 8
  %"$v_1346" = load %String, %String* %v, align 8
  %"$eq_call_1347" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1344", %String %"$c_1345", %String %"$v_1346"), !dbg !296
  store %TName_Bool* %"$eq_call_1347", %TName_Bool** %eq, align 8, !dbg !296
  %"$gasrem_1349" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1350" = icmp ugt i64 2, %"$gasrem_1349"
  br i1 %"$gascmp_1350", label %"$out_of_gas_1351", label %"$have_gas_1352"

"$out_of_gas_1351":                               ; preds = %"$have_gas_1342"
  call void @_out_of_gas()
  br label %"$have_gas_1352"

"$have_gas_1352":                                 ; preds = %"$out_of_gas_1351", %"$have_gas_1342"
  %"$consume_1353" = sub i64 %"$gasrem_1349", 2
  store i64 %"$consume_1353", i64* @_gasrem, align 8
  %"$eq_1355" = load %TName_Bool*, %TName_Bool** %eq, align 8
  %"$eq_tag_1356" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_1355", i32 0, i32 0
  %"$eq_tag_1357" = load i8, i8* %"$eq_tag_1356", align 1
  switch i8 %"$eq_tag_1357", label %"$empty_default_1358" [
    i8 0, label %"$True_1359"
    i8 1, label %"$False_1361"
  ], !dbg !297

"$True_1359":                                     ; preds = %"$have_gas_1352"
  %"$eq_1360" = bitcast %TName_Bool* %"$eq_1355" to %CName_True*
  br label %"$matchsucc_1354"

"$False_1361":                                    ; preds = %"$have_gas_1352"
  %"$eq_1362" = bitcast %TName_Bool* %"$eq_1355" to %CName_False*
  %"$gasrem_1363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1364" = icmp ugt i64 1, %"$gasrem_1363"
  br i1 %"$gascmp_1364", label %"$out_of_gas_1365", label %"$have_gas_1366"

"$out_of_gas_1365":                               ; preds = %"$False_1361"
  call void @_out_of_gas()
  br label %"$have_gas_1366"

"$have_gas_1366":                                 ; preds = %"$out_of_gas_1365", %"$False_1361"
  %"$consume_1367" = sub i64 %"$gasrem_1363", 1
  store i64 %"$consume_1367", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %m, metadata !298, metadata !DIExpression()), !dbg !301
  %"$gasrem_1368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1369" = icmp ugt i64 1, %"$gasrem_1368"
  br i1 %"$gascmp_1369", label %"$out_of_gas_1370", label %"$have_gas_1371"

"$out_of_gas_1370":                               ; preds = %"$have_gas_1366"
  call void @_out_of_gas()
  br label %"$have_gas_1371"

"$have_gas_1371":                                 ; preds = %"$out_of_gas_1370", %"$have_gas_1366"
  %"$consume_1372" = sub i64 %"$gasrem_1368", 1
  store i64 %"$consume_1372", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_1373", i32 0, i32 0), i32 31 }, %String* %m, align 8, !dbg !302
  %"$gasrem_1374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1375" = icmp ugt i64 1, %"$gasrem_1374"
  br i1 %"$gascmp_1375", label %"$out_of_gas_1376", label %"$have_gas_1377"

"$out_of_gas_1376":                               ; preds = %"$have_gas_1371"
  call void @_out_of_gas()
  br label %"$have_gas_1377"

"$have_gas_1377":                                 ; preds = %"$out_of_gas_1376", %"$have_gas_1371"
  %"$consume_1378" = sub i64 %"$gasrem_1374", 1
  store i64 %"$consume_1378", i64* @_gasrem, align 8
  %"$fail_msg__origin_1379" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1379", align 1
  %"$fail_msg__sender_1380" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1380", align 1
  %"$tname_1381" = load %String, %String* %tname, align 8
  %"$m_1382" = load %String, %String* %m, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1379", [20 x i8]* %"$fail_msg__sender_1380", %String %"$tname_1381", %String %"$m_1382"), !dbg !303
  br label %"$matchsucc_1354"

"$empty_default_1358":                            ; preds = %"$have_gas_1352"
  br label %"$matchsucc_1354"

"$matchsucc_1354":                                ; preds = %"$have_gas_1377", %"$True_1359", %"$empty_default_1358"
  br label %"$matchsucc_1305"

"$None_1383":                                     ; preds = %"$have_gas_1303"
  %"$c1_1384" = bitcast %TName_Option_String* %"$c1_1306" to %CName_None_String*
  %"$gasrem_1385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1386" = icmp ugt i64 1, %"$gasrem_1385"
  br i1 %"$gascmp_1386", label %"$out_of_gas_1387", label %"$have_gas_1388"

"$out_of_gas_1387":                               ; preds = %"$None_1383"
  call void @_out_of_gas()
  br label %"$have_gas_1388"

"$have_gas_1388":                                 ; preds = %"$out_of_gas_1387", %"$None_1383"
  %"$consume_1389" = sub i64 %"$gasrem_1385", 1
  store i64 %"$consume_1389", i64* @_gasrem, align 8
  %m2 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %m2, metadata !304, metadata !DIExpression()), !dbg !306
  %"$gasrem_1390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1391" = icmp ugt i64 1, %"$gasrem_1390"
  br i1 %"$gascmp_1391", label %"$out_of_gas_1392", label %"$have_gas_1393"

"$out_of_gas_1392":                               ; preds = %"$have_gas_1388"
  call void @_out_of_gas()
  br label %"$have_gas_1393"

"$have_gas_1393":                                 ; preds = %"$out_of_gas_1392", %"$have_gas_1388"
  %"$consume_1394" = sub i64 %"$gasrem_1390", 1
  store i64 %"$consume_1394", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_1395", i32 0, i32 0), i32 21 }, %String* %m2, align 8, !dbg !307
  %"$gasrem_1396" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1397" = icmp ugt i64 1, %"$gasrem_1396"
  br i1 %"$gascmp_1397", label %"$out_of_gas_1398", label %"$have_gas_1399"

"$out_of_gas_1398":                               ; preds = %"$have_gas_1393"
  call void @_out_of_gas()
  br label %"$have_gas_1399"

"$have_gas_1399":                                 ; preds = %"$out_of_gas_1398", %"$have_gas_1393"
  %"$consume_1400" = sub i64 %"$gasrem_1396", 1
  store i64 %"$consume_1400", i64* @_gasrem, align 8
  %"$fail_msg__origin_1401" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1401", align 1
  %"$fail_msg__sender_1402" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1402", align 1
  %"$tname_1403" = load %String, %String* %tname, align 8
  %"$m_1404" = load %String, %String* %m2, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1401", [20 x i8]* %"$fail_msg__sender_1402", %String %"$tname_1403", %String %"$m_1404"), !dbg !308
  br label %"$matchsucc_1305"

"$empty_default_1309":                            ; preds = %"$have_gas_1303"
  br label %"$matchsucc_1305"

"$matchsucc_1305":                                ; preds = %"$have_gas_1399", %"$matchsucc_1354", %"$empty_default_1309"
  %"$gasrem_1405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1406" = icmp ugt i64 1, %"$gasrem_1405"
  br i1 %"$gascmp_1406", label %"$out_of_gas_1407", label %"$have_gas_1408"

"$out_of_gas_1407":                               ; preds = %"$matchsucc_1305"
  call void @_out_of_gas()
  br label %"$have_gas_1408"

"$have_gas_1408":                                 ; preds = %"$out_of_gas_1407", %"$matchsucc_1305"
  %"$consume_1409" = sub i64 %"$gasrem_1405", 1
  store i64 %"$consume_1409", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key1b, metadata !309, metadata !DIExpression()), !dbg !310
  %"$gasrem_1410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1411" = icmp ugt i64 1, %"$gasrem_1410"
  br i1 %"$gascmp_1411", label %"$out_of_gas_1412", label %"$have_gas_1413"

"$out_of_gas_1412":                               ; preds = %"$have_gas_1408"
  call void @_out_of_gas()
  br label %"$have_gas_1413"

"$have_gas_1413":                                 ; preds = %"$out_of_gas_1412", %"$have_gas_1408"
  %"$consume_1414" = sub i64 %"$gasrem_1410", 1
  store i64 %"$consume_1414", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1415", i32 0, i32 0), i32 5 }, %String* %key1b, align 8, !dbg !311
  %"$gasrem_1416" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1417" = icmp ugt i64 1, %"$gasrem_1416"
  br i1 %"$gascmp_1417", label %"$out_of_gas_1418", label %"$have_gas_1419"

"$out_of_gas_1418":                               ; preds = %"$have_gas_1413"
  call void @_out_of_gas()
  br label %"$have_gas_1419"

"$have_gas_1419":                                 ; preds = %"$out_of_gas_1418", %"$have_gas_1413"
  %"$consume_1420" = sub i64 %"$gasrem_1416", 1
  store i64 %"$consume_1420", i64* @_gasrem, align 8
  %key2b = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key2b, metadata !312, metadata !DIExpression()), !dbg !313
  %"$gasrem_1421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1422" = icmp ugt i64 1, %"$gasrem_1421"
  br i1 %"$gascmp_1422", label %"$out_of_gas_1423", label %"$have_gas_1424"

"$out_of_gas_1423":                               ; preds = %"$have_gas_1419"
  call void @_out_of_gas()
  br label %"$have_gas_1424"

"$have_gas_1424":                                 ; preds = %"$out_of_gas_1423", %"$have_gas_1419"
  %"$consume_1425" = sub i64 %"$gasrem_1421", 1
  store i64 %"$consume_1425", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1426", i32 0, i32 0), i32 5 }, %String* %key2b, align 8, !dbg !314
  %"$c1_2" = alloca %TName_Option_String*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_String** %"$c1_2", metadata !315, metadata !DIExpression()), !dbg !316
  %"$indices_buf_1427_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1427_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1427_salloc_load", i64 32)
  %"$indices_buf_1427_salloc" = bitcast i8* %"$indices_buf_1427_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1427" = bitcast [32 x i8]* %"$indices_buf_1427_salloc" to i8*
  %"$key1b_1428" = load %String, %String* %key1b, align 8
  %"$indices_gep_1429" = getelementptr i8, i8* %"$indices_buf_1427", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_1429" to %String*
  store %String %"$key1b_1428", %String* %indices_cast3, align 8
  %"$key2b_1430" = load %String, %String* %key2b, align 8
  %"$indices_gep_1431" = getelementptr i8, i8* %"$indices_buf_1427", i32 16
  %indices_cast4 = bitcast i8* %"$indices_gep_1431" to %String*
  store %String %"$key2b_1430", %String* %indices_cast4, align 8
  %"$execptr_load_1433" = load i8*, i8** @_execptr, align 8
  %"$$c1_2_call_1434" = call i8* @_fetch_field(i8* %"$execptr_load_1433", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1432", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 2, i8* %"$indices_buf_1427", i32 1), !dbg !316
  %"$$c1_2_1435" = bitcast i8* %"$$c1_2_call_1434" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_2_1435", %TName_Option_String** %"$c1_2", align 8
  %"$$c1_2_1436" = load %TName_Option_String*, %TName_Option_String** %"$c1_2", align 8
  %"$$$c1_2_1436_1437" = bitcast %TName_Option_String* %"$$c1_2_1436" to i8*
  %"$_literal_cost_call_1438" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_72", i8* %"$$$c1_2_1436_1437")
  %"$gasadd_1439" = add i64 %"$_literal_cost_call_1438", 0
  %"$gasadd_1440" = add i64 %"$gasadd_1439", 2
  %"$gasrem_1441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1442" = icmp ugt i64 %"$gasadd_1440", %"$gasrem_1441"
  br i1 %"$gascmp_1442", label %"$out_of_gas_1443", label %"$have_gas_1444"

"$out_of_gas_1443":                               ; preds = %"$have_gas_1424"
  call void @_out_of_gas()
  br label %"$have_gas_1444"

"$have_gas_1444":                                 ; preds = %"$out_of_gas_1443", %"$have_gas_1424"
  %"$consume_1445" = sub i64 %"$gasrem_1441", %"$gasadd_1440"
  store i64 %"$consume_1445", i64* @_gasrem, align 8
  %"$gasrem_1446" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1447" = icmp ugt i64 2, %"$gasrem_1446"
  br i1 %"$gascmp_1447", label %"$out_of_gas_1448", label %"$have_gas_1449"

"$out_of_gas_1448":                               ; preds = %"$have_gas_1444"
  call void @_out_of_gas()
  br label %"$have_gas_1449"

"$have_gas_1449":                                 ; preds = %"$out_of_gas_1448", %"$have_gas_1444"
  %"$consume_1450" = sub i64 %"$gasrem_1446", 2
  store i64 %"$consume_1450", i64* @_gasrem, align 8
  %"$$c1_2_1452" = load %TName_Option_String*, %TName_Option_String** %"$c1_2", align 8
  %"$$c1_2_tag_1453" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_2_1452", i32 0, i32 0
  %"$$c1_2_tag_1454" = load i8, i8* %"$$c1_2_tag_1453", align 1
  switch i8 %"$$c1_2_tag_1454", label %"$empty_default_1455" [
    i8 0, label %"$Some_1456"
    i8 1, label %"$None_1529"
  ], !dbg !317

"$Some_1456":                                     ; preds = %"$have_gas_1449"
  %"$$c1_2_1457" = bitcast %TName_Option_String* %"$$c1_2_1452" to %CName_Some_String*
  %"$c_gep_1458" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_2_1457", i32 0, i32 1
  %"$c_load_1459" = load %String, %String* %"$c_gep_1458", align 8
  %c5 = alloca %String, align 8
  store %String %"$c_load_1459", %String* %c5, align 8
  %"$gasrem_1460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1461" = icmp ugt i64 1, %"$gasrem_1460"
  br i1 %"$gascmp_1461", label %"$out_of_gas_1462", label %"$have_gas_1463"

"$out_of_gas_1462":                               ; preds = %"$Some_1456"
  call void @_out_of_gas()
  br label %"$have_gas_1463"

"$have_gas_1463":                                 ; preds = %"$out_of_gas_1462", %"$Some_1456"
  %"$consume_1464" = sub i64 %"$gasrem_1460", 1
  store i64 %"$consume_1464", i64* @_gasrem, align 8
  %v6 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %v6, metadata !318, metadata !DIExpression()), !dbg !321
  %"$gasrem_1465" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1466" = icmp ugt i64 1, %"$gasrem_1465"
  br i1 %"$gascmp_1466", label %"$out_of_gas_1467", label %"$have_gas_1468"

"$out_of_gas_1467":                               ; preds = %"$have_gas_1463"
  call void @_out_of_gas()
  br label %"$have_gas_1468"

"$have_gas_1468":                                 ; preds = %"$out_of_gas_1467", %"$have_gas_1463"
  %"$consume_1469" = sub i64 %"$gasrem_1465", 1
  store i64 %"$consume_1469", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1470", i32 0, i32 0), i32 3 }, %String* %v6, align 8, !dbg !322
  %"$gasrem_1471" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1472" = icmp ugt i64 1, %"$gasrem_1471"
  br i1 %"$gascmp_1472", label %"$out_of_gas_1473", label %"$have_gas_1474"

"$out_of_gas_1473":                               ; preds = %"$have_gas_1468"
  call void @_out_of_gas()
  br label %"$have_gas_1474"

"$have_gas_1474":                                 ; preds = %"$out_of_gas_1473", %"$have_gas_1468"
  %"$consume_1475" = sub i64 %"$gasrem_1471", 1
  store i64 %"$consume_1475", i64* @_gasrem, align 8
  %eq7 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %eq7, metadata !323, metadata !DIExpression()), !dbg !324
  %"$_literal_cost_c_1476" = alloca %String, align 8
  %"$c_1477" = load %String, %String* %c5, align 8
  store %String %"$c_1477", %String* %"$_literal_cost_c_1476", align 8
  %"$$_literal_cost_c_1476_1478" = bitcast %String* %"$_literal_cost_c_1476" to i8*
  %"$_literal_cost_call_1479" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_c_1476_1478")
  %"$_literal_cost_v_1480" = alloca %String, align 8
  %"$v_1481" = load %String, %String* %v6, align 8
  store %String %"$v_1481", %String* %"$_literal_cost_v_1480", align 8
  %"$$_literal_cost_v_1480_1482" = bitcast %String* %"$_literal_cost_v_1480" to i8*
  %"$_literal_cost_call_1483" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v_1480_1482")
  %"$gasmin_1484" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_1479", i64 %"$_literal_cost_call_1483")
  %"$gasrem_1485" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1486" = icmp ugt i64 %"$gasmin_1484", %"$gasrem_1485"
  br i1 %"$gascmp_1486", label %"$out_of_gas_1487", label %"$have_gas_1488"

"$out_of_gas_1487":                               ; preds = %"$have_gas_1474"
  call void @_out_of_gas()
  br label %"$have_gas_1488"

"$have_gas_1488":                                 ; preds = %"$out_of_gas_1487", %"$have_gas_1474"
  %"$consume_1489" = sub i64 %"$gasrem_1485", %"$gasmin_1484"
  store i64 %"$consume_1489", i64* @_gasrem, align 8
  %"$execptr_load_1490" = load i8*, i8** @_execptr, align 8
  %"$c_1491" = load %String, %String* %c5, align 8
  %"$v_1492" = load %String, %String* %v6, align 8
  %"$eq_call_1493" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1490", %String %"$c_1491", %String %"$v_1492"), !dbg !325
  store %TName_Bool* %"$eq_call_1493", %TName_Bool** %eq7, align 8, !dbg !325
  %"$gasrem_1495" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1496" = icmp ugt i64 2, %"$gasrem_1495"
  br i1 %"$gascmp_1496", label %"$out_of_gas_1497", label %"$have_gas_1498"

"$out_of_gas_1497":                               ; preds = %"$have_gas_1488"
  call void @_out_of_gas()
  br label %"$have_gas_1498"

"$have_gas_1498":                                 ; preds = %"$out_of_gas_1497", %"$have_gas_1488"
  %"$consume_1499" = sub i64 %"$gasrem_1495", 2
  store i64 %"$consume_1499", i64* @_gasrem, align 8
  %"$eq_1501" = load %TName_Bool*, %TName_Bool** %eq7, align 8
  %"$eq_tag_1502" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_1501", i32 0, i32 0
  %"$eq_tag_1503" = load i8, i8* %"$eq_tag_1502", align 1
  switch i8 %"$eq_tag_1503", label %"$empty_default_1504" [
    i8 0, label %"$True_1505"
    i8 1, label %"$False_1507"
  ], !dbg !326

"$True_1505":                                     ; preds = %"$have_gas_1498"
  %"$eq_1506" = bitcast %TName_Bool* %"$eq_1501" to %CName_True*
  br label %"$matchsucc_1500"

"$False_1507":                                    ; preds = %"$have_gas_1498"
  %"$eq_1508" = bitcast %TName_Bool* %"$eq_1501" to %CName_False*
  %"$gasrem_1509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1510" = icmp ugt i64 1, %"$gasrem_1509"
  br i1 %"$gascmp_1510", label %"$out_of_gas_1511", label %"$have_gas_1512"

"$out_of_gas_1511":                               ; preds = %"$False_1507"
  call void @_out_of_gas()
  br label %"$have_gas_1512"

"$have_gas_1512":                                 ; preds = %"$out_of_gas_1511", %"$False_1507"
  %"$consume_1513" = sub i64 %"$gasrem_1509", 1
  store i64 %"$consume_1513", i64* @_gasrem, align 8
  %m8 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %m8, metadata !327, metadata !DIExpression()), !dbg !330
  %"$gasrem_1514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1515" = icmp ugt i64 1, %"$gasrem_1514"
  br i1 %"$gascmp_1515", label %"$out_of_gas_1516", label %"$have_gas_1517"

"$out_of_gas_1516":                               ; preds = %"$have_gas_1512"
  call void @_out_of_gas()
  br label %"$have_gas_1517"

"$have_gas_1517":                                 ; preds = %"$out_of_gas_1516", %"$have_gas_1512"
  %"$consume_1518" = sub i64 %"$gasrem_1514", 1
  store i64 %"$consume_1518", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_1519", i32 0, i32 0), i32 31 }, %String* %m8, align 8, !dbg !331
  %"$gasrem_1520" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1521" = icmp ugt i64 1, %"$gasrem_1520"
  br i1 %"$gascmp_1521", label %"$out_of_gas_1522", label %"$have_gas_1523"

"$out_of_gas_1522":                               ; preds = %"$have_gas_1517"
  call void @_out_of_gas()
  br label %"$have_gas_1523"

"$have_gas_1523":                                 ; preds = %"$out_of_gas_1522", %"$have_gas_1517"
  %"$consume_1524" = sub i64 %"$gasrem_1520", 1
  store i64 %"$consume_1524", i64* @_gasrem, align 8
  %"$fail_msg__origin_1525" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1525", align 1
  %"$fail_msg__sender_1526" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1526", align 1
  %"$tname_1527" = load %String, %String* %tname, align 8
  %"$m_1528" = load %String, %String* %m8, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1525", [20 x i8]* %"$fail_msg__sender_1526", %String %"$tname_1527", %String %"$m_1528"), !dbg !332
  br label %"$matchsucc_1500"

"$empty_default_1504":                            ; preds = %"$have_gas_1498"
  br label %"$matchsucc_1500"

"$matchsucc_1500":                                ; preds = %"$have_gas_1523", %"$True_1505", %"$empty_default_1504"
  br label %"$matchsucc_1451"

"$None_1529":                                     ; preds = %"$have_gas_1449"
  %"$$c1_2_1530" = bitcast %TName_Option_String* %"$$c1_2_1452" to %CName_None_String*
  %"$gasrem_1531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1532" = icmp ugt i64 1, %"$gasrem_1531"
  br i1 %"$gascmp_1532", label %"$out_of_gas_1533", label %"$have_gas_1534"

"$out_of_gas_1533":                               ; preds = %"$None_1529"
  call void @_out_of_gas()
  br label %"$have_gas_1534"

"$have_gas_1534":                                 ; preds = %"$out_of_gas_1533", %"$None_1529"
  %"$consume_1535" = sub i64 %"$gasrem_1531", 1
  store i64 %"$consume_1535", i64* @_gasrem, align 8
  %m9 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %m9, metadata !333, metadata !DIExpression()), !dbg !335
  %"$gasrem_1536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1537" = icmp ugt i64 1, %"$gasrem_1536"
  br i1 %"$gascmp_1537", label %"$out_of_gas_1538", label %"$have_gas_1539"

"$out_of_gas_1538":                               ; preds = %"$have_gas_1534"
  call void @_out_of_gas()
  br label %"$have_gas_1539"

"$have_gas_1539":                                 ; preds = %"$out_of_gas_1538", %"$have_gas_1534"
  %"$consume_1540" = sub i64 %"$gasrem_1536", 1
  store i64 %"$consume_1540", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_1541", i32 0, i32 0), i32 21 }, %String* %m9, align 8, !dbg !336
  %"$gasrem_1542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1543" = icmp ugt i64 1, %"$gasrem_1542"
  br i1 %"$gascmp_1543", label %"$out_of_gas_1544", label %"$have_gas_1545"

"$out_of_gas_1544":                               ; preds = %"$have_gas_1539"
  call void @_out_of_gas()
  br label %"$have_gas_1545"

"$have_gas_1545":                                 ; preds = %"$out_of_gas_1544", %"$have_gas_1539"
  %"$consume_1546" = sub i64 %"$gasrem_1542", 1
  store i64 %"$consume_1546", i64* @_gasrem, align 8
  %"$fail_msg__origin_1547" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1547", align 1
  %"$fail_msg__sender_1548" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1548", align 1
  %"$tname_1549" = load %String, %String* %tname, align 8
  %"$m_1550" = load %String, %String* %m9, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1547", [20 x i8]* %"$fail_msg__sender_1548", %String %"$tname_1549", %String %"$m_1550"), !dbg !337
  br label %"$matchsucc_1451"

"$empty_default_1455":                            ; preds = %"$have_gas_1449"
  br label %"$matchsucc_1451"

"$matchsucc_1451":                                ; preds = %"$have_gas_1545", %"$matchsucc_1500", %"$empty_default_1455"
  %"$gasrem_1551" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1552" = icmp ugt i64 1, %"$gasrem_1551"
  br i1 %"$gascmp_1552", label %"$out_of_gas_1553", label %"$have_gas_1554"

"$out_of_gas_1553":                               ; preds = %"$matchsucc_1451"
  call void @_out_of_gas()
  br label %"$have_gas_1554"

"$have_gas_1554":                                 ; preds = %"$out_of_gas_1553", %"$matchsucc_1451"
  %"$consume_1555" = sub i64 %"$gasrem_1551", 1
  store i64 %"$consume_1555", i64* @_gasrem, align 8
  %"$key1b_3" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$key1b_3", metadata !338, metadata !DIExpression()), !dbg !339
  %"$gasrem_1556" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1557" = icmp ugt i64 1, %"$gasrem_1556"
  br i1 %"$gascmp_1557", label %"$out_of_gas_1558", label %"$have_gas_1559"

"$out_of_gas_1558":                               ; preds = %"$have_gas_1554"
  call void @_out_of_gas()
  br label %"$have_gas_1559"

"$have_gas_1559":                                 ; preds = %"$out_of_gas_1558", %"$have_gas_1554"
  %"$consume_1560" = sub i64 %"$gasrem_1556", 1
  store i64 %"$consume_1560", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1561", i32 0, i32 0), i32 5 }, %String* %"$key1b_3", align 8, !dbg !340
  %"$gasrem_1562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1563" = icmp ugt i64 1, %"$gasrem_1562"
  br i1 %"$gascmp_1563", label %"$out_of_gas_1564", label %"$have_gas_1565"

"$out_of_gas_1564":                               ; preds = %"$have_gas_1559"
  call void @_out_of_gas()
  br label %"$have_gas_1565"

"$have_gas_1565":                                 ; preds = %"$out_of_gas_1564", %"$have_gas_1559"
  %"$consume_1566" = sub i64 %"$gasrem_1562", 1
  store i64 %"$consume_1566", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key2c, metadata !341, metadata !DIExpression()), !dbg !342
  %"$gasrem_1567" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1568" = icmp ugt i64 1, %"$gasrem_1567"
  br i1 %"$gascmp_1568", label %"$out_of_gas_1569", label %"$have_gas_1570"

"$out_of_gas_1569":                               ; preds = %"$have_gas_1565"
  call void @_out_of_gas()
  br label %"$have_gas_1570"

"$have_gas_1570":                                 ; preds = %"$out_of_gas_1569", %"$have_gas_1565"
  %"$consume_1571" = sub i64 %"$gasrem_1567", 1
  store i64 %"$consume_1571", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1572", i32 0, i32 0), i32 5 }, %String* %key2c, align 8, !dbg !343
  %"$c1_4" = alloca %TName_Option_String*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_String** %"$c1_4", metadata !344, metadata !DIExpression()), !dbg !345
  %"$indices_buf_1573_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1573_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1573_salloc_load", i64 32)
  %"$indices_buf_1573_salloc" = bitcast i8* %"$indices_buf_1573_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1573" = bitcast [32 x i8]* %"$indices_buf_1573_salloc" to i8*
  %"$$key1b_3_1574" = load %String, %String* %"$key1b_3", align 8
  %"$indices_gep_1575" = getelementptr i8, i8* %"$indices_buf_1573", i32 0
  %indices_cast10 = bitcast i8* %"$indices_gep_1575" to %String*
  store %String %"$$key1b_3_1574", %String* %indices_cast10, align 8
  %"$key2c_1576" = load %String, %String* %key2c, align 8
  %"$indices_gep_1577" = getelementptr i8, i8* %"$indices_buf_1573", i32 16
  %indices_cast11 = bitcast i8* %"$indices_gep_1577" to %String*
  store %String %"$key2c_1576", %String* %indices_cast11, align 8
  %"$execptr_load_1579" = load i8*, i8** @_execptr, align 8
  %"$$c1_4_call_1580" = call i8* @_fetch_field(i8* %"$execptr_load_1579", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1578", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 2, i8* %"$indices_buf_1573", i32 1), !dbg !345
  %"$$c1_4_1581" = bitcast i8* %"$$c1_4_call_1580" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_4_1581", %TName_Option_String** %"$c1_4", align 8
  %"$$c1_4_1582" = load %TName_Option_String*, %TName_Option_String** %"$c1_4", align 8
  %"$$$c1_4_1582_1583" = bitcast %TName_Option_String* %"$$c1_4_1582" to i8*
  %"$_literal_cost_call_1584" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_72", i8* %"$$$c1_4_1582_1583")
  %"$gasadd_1585" = add i64 %"$_literal_cost_call_1584", 0
  %"$gasadd_1586" = add i64 %"$gasadd_1585", 2
  %"$gasrem_1587" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1588" = icmp ugt i64 %"$gasadd_1586", %"$gasrem_1587"
  br i1 %"$gascmp_1588", label %"$out_of_gas_1589", label %"$have_gas_1590"

"$out_of_gas_1589":                               ; preds = %"$have_gas_1570"
  call void @_out_of_gas()
  br label %"$have_gas_1590"

"$have_gas_1590":                                 ; preds = %"$out_of_gas_1589", %"$have_gas_1570"
  %"$consume_1591" = sub i64 %"$gasrem_1587", %"$gasadd_1586"
  store i64 %"$consume_1591", i64* @_gasrem, align 8
  %"$gasrem_1592" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1593" = icmp ugt i64 2, %"$gasrem_1592"
  br i1 %"$gascmp_1593", label %"$out_of_gas_1594", label %"$have_gas_1595"

"$out_of_gas_1594":                               ; preds = %"$have_gas_1590"
  call void @_out_of_gas()
  br label %"$have_gas_1595"

"$have_gas_1595":                                 ; preds = %"$out_of_gas_1594", %"$have_gas_1590"
  %"$consume_1596" = sub i64 %"$gasrem_1592", 2
  store i64 %"$consume_1596", i64* @_gasrem, align 8
  %"$$c1_4_1598" = load %TName_Option_String*, %TName_Option_String** %"$c1_4", align 8
  %"$$c1_4_tag_1599" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_4_1598", i32 0, i32 0
  %"$$c1_4_tag_1600" = load i8, i8* %"$$c1_4_tag_1599", align 1
  switch i8 %"$$c1_4_tag_1600", label %"$empty_default_1601" [
    i8 0, label %"$Some_1602"
    i8 1, label %"$None_1675"
  ], !dbg !346

"$Some_1602":                                     ; preds = %"$have_gas_1595"
  %"$$c1_4_1603" = bitcast %TName_Option_String* %"$$c1_4_1598" to %CName_Some_String*
  %"$c_gep_1604" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_4_1603", i32 0, i32 1
  %"$c_load_1605" = load %String, %String* %"$c_gep_1604", align 8
  %c12 = alloca %String, align 8
  store %String %"$c_load_1605", %String* %c12, align 8
  %"$gasrem_1606" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1607" = icmp ugt i64 1, %"$gasrem_1606"
  br i1 %"$gascmp_1607", label %"$out_of_gas_1608", label %"$have_gas_1609"

"$out_of_gas_1608":                               ; preds = %"$Some_1602"
  call void @_out_of_gas()
  br label %"$have_gas_1609"

"$have_gas_1609":                                 ; preds = %"$out_of_gas_1608", %"$Some_1602"
  %"$consume_1610" = sub i64 %"$gasrem_1606", 1
  store i64 %"$consume_1610", i64* @_gasrem, align 8
  %v13 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %v13, metadata !347, metadata !DIExpression()), !dbg !350
  %"$gasrem_1611" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1612" = icmp ugt i64 1, %"$gasrem_1611"
  br i1 %"$gascmp_1612", label %"$out_of_gas_1613", label %"$have_gas_1614"

"$out_of_gas_1613":                               ; preds = %"$have_gas_1609"
  call void @_out_of_gas()
  br label %"$have_gas_1614"

"$have_gas_1614":                                 ; preds = %"$out_of_gas_1613", %"$have_gas_1609"
  %"$consume_1615" = sub i64 %"$gasrem_1611", 1
  store i64 %"$consume_1615", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1616", i32 0, i32 0), i32 3 }, %String* %v13, align 8, !dbg !351
  %"$gasrem_1617" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1618" = icmp ugt i64 1, %"$gasrem_1617"
  br i1 %"$gascmp_1618", label %"$out_of_gas_1619", label %"$have_gas_1620"

"$out_of_gas_1619":                               ; preds = %"$have_gas_1614"
  call void @_out_of_gas()
  br label %"$have_gas_1620"

"$have_gas_1620":                                 ; preds = %"$out_of_gas_1619", %"$have_gas_1614"
  %"$consume_1621" = sub i64 %"$gasrem_1617", 1
  store i64 %"$consume_1621", i64* @_gasrem, align 8
  %eq14 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %eq14, metadata !352, metadata !DIExpression()), !dbg !353
  %"$_literal_cost_c_1622" = alloca %String, align 8
  %"$c_1623" = load %String, %String* %c12, align 8
  store %String %"$c_1623", %String* %"$_literal_cost_c_1622", align 8
  %"$$_literal_cost_c_1622_1624" = bitcast %String* %"$_literal_cost_c_1622" to i8*
  %"$_literal_cost_call_1625" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_c_1622_1624")
  %"$_literal_cost_v_1626" = alloca %String, align 8
  %"$v_1627" = load %String, %String* %v13, align 8
  store %String %"$v_1627", %String* %"$_literal_cost_v_1626", align 8
  %"$$_literal_cost_v_1626_1628" = bitcast %String* %"$_literal_cost_v_1626" to i8*
  %"$_literal_cost_call_1629" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v_1626_1628")
  %"$gasmin_1630" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_1625", i64 %"$_literal_cost_call_1629")
  %"$gasrem_1631" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1632" = icmp ugt i64 %"$gasmin_1630", %"$gasrem_1631"
  br i1 %"$gascmp_1632", label %"$out_of_gas_1633", label %"$have_gas_1634"

"$out_of_gas_1633":                               ; preds = %"$have_gas_1620"
  call void @_out_of_gas()
  br label %"$have_gas_1634"

"$have_gas_1634":                                 ; preds = %"$out_of_gas_1633", %"$have_gas_1620"
  %"$consume_1635" = sub i64 %"$gasrem_1631", %"$gasmin_1630"
  store i64 %"$consume_1635", i64* @_gasrem, align 8
  %"$execptr_load_1636" = load i8*, i8** @_execptr, align 8
  %"$c_1637" = load %String, %String* %c12, align 8
  %"$v_1638" = load %String, %String* %v13, align 8
  %"$eq_call_1639" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1636", %String %"$c_1637", %String %"$v_1638"), !dbg !354
  store %TName_Bool* %"$eq_call_1639", %TName_Bool** %eq14, align 8, !dbg !354
  %"$gasrem_1641" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1642" = icmp ugt i64 2, %"$gasrem_1641"
  br i1 %"$gascmp_1642", label %"$out_of_gas_1643", label %"$have_gas_1644"

"$out_of_gas_1643":                               ; preds = %"$have_gas_1634"
  call void @_out_of_gas()
  br label %"$have_gas_1644"

"$have_gas_1644":                                 ; preds = %"$out_of_gas_1643", %"$have_gas_1634"
  %"$consume_1645" = sub i64 %"$gasrem_1641", 2
  store i64 %"$consume_1645", i64* @_gasrem, align 8
  %"$eq_1647" = load %TName_Bool*, %TName_Bool** %eq14, align 8
  %"$eq_tag_1648" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_1647", i32 0, i32 0
  %"$eq_tag_1649" = load i8, i8* %"$eq_tag_1648", align 1
  switch i8 %"$eq_tag_1649", label %"$empty_default_1650" [
    i8 0, label %"$True_1651"
    i8 1, label %"$False_1653"
  ], !dbg !355

"$True_1651":                                     ; preds = %"$have_gas_1644"
  %"$eq_1652" = bitcast %TName_Bool* %"$eq_1647" to %CName_True*
  br label %"$matchsucc_1646"

"$False_1653":                                    ; preds = %"$have_gas_1644"
  %"$eq_1654" = bitcast %TName_Bool* %"$eq_1647" to %CName_False*
  %"$gasrem_1655" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1656" = icmp ugt i64 1, %"$gasrem_1655"
  br i1 %"$gascmp_1656", label %"$out_of_gas_1657", label %"$have_gas_1658"

"$out_of_gas_1657":                               ; preds = %"$False_1653"
  call void @_out_of_gas()
  br label %"$have_gas_1658"

"$have_gas_1658":                                 ; preds = %"$out_of_gas_1657", %"$False_1653"
  %"$consume_1659" = sub i64 %"$gasrem_1655", 1
  store i64 %"$consume_1659", i64* @_gasrem, align 8
  %m15 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %m15, metadata !356, metadata !DIExpression()), !dbg !359
  %"$gasrem_1660" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1661" = icmp ugt i64 1, %"$gasrem_1660"
  br i1 %"$gascmp_1661", label %"$out_of_gas_1662", label %"$have_gas_1663"

"$out_of_gas_1662":                               ; preds = %"$have_gas_1658"
  call void @_out_of_gas()
  br label %"$have_gas_1663"

"$have_gas_1663":                                 ; preds = %"$out_of_gas_1662", %"$have_gas_1658"
  %"$consume_1664" = sub i64 %"$gasrem_1660", 1
  store i64 %"$consume_1664", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_1665", i32 0, i32 0), i32 31 }, %String* %m15, align 8, !dbg !360
  %"$gasrem_1666" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1667" = icmp ugt i64 1, %"$gasrem_1666"
  br i1 %"$gascmp_1667", label %"$out_of_gas_1668", label %"$have_gas_1669"

"$out_of_gas_1668":                               ; preds = %"$have_gas_1663"
  call void @_out_of_gas()
  br label %"$have_gas_1669"

"$have_gas_1669":                                 ; preds = %"$out_of_gas_1668", %"$have_gas_1663"
  %"$consume_1670" = sub i64 %"$gasrem_1666", 1
  store i64 %"$consume_1670", i64* @_gasrem, align 8
  %"$fail_msg__origin_1671" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1671", align 1
  %"$fail_msg__sender_1672" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1672", align 1
  %"$tname_1673" = load %String, %String* %tname, align 8
  %"$m_1674" = load %String, %String* %m15, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1671", [20 x i8]* %"$fail_msg__sender_1672", %String %"$tname_1673", %String %"$m_1674"), !dbg !361
  br label %"$matchsucc_1646"

"$empty_default_1650":                            ; preds = %"$have_gas_1644"
  br label %"$matchsucc_1646"

"$matchsucc_1646":                                ; preds = %"$have_gas_1669", %"$True_1651", %"$empty_default_1650"
  br label %"$matchsucc_1597"

"$None_1675":                                     ; preds = %"$have_gas_1595"
  %"$$c1_4_1676" = bitcast %TName_Option_String* %"$$c1_4_1598" to %CName_None_String*
  %"$gasrem_1677" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1678" = icmp ugt i64 1, %"$gasrem_1677"
  br i1 %"$gascmp_1678", label %"$out_of_gas_1679", label %"$have_gas_1680"

"$out_of_gas_1679":                               ; preds = %"$None_1675"
  call void @_out_of_gas()
  br label %"$have_gas_1680"

"$have_gas_1680":                                 ; preds = %"$out_of_gas_1679", %"$None_1675"
  %"$consume_1681" = sub i64 %"$gasrem_1677", 1
  store i64 %"$consume_1681", i64* @_gasrem, align 8
  %m16 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %m16, metadata !362, metadata !DIExpression()), !dbg !364
  %"$gasrem_1682" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1683" = icmp ugt i64 1, %"$gasrem_1682"
  br i1 %"$gascmp_1683", label %"$out_of_gas_1684", label %"$have_gas_1685"

"$out_of_gas_1684":                               ; preds = %"$have_gas_1680"
  call void @_out_of_gas()
  br label %"$have_gas_1685"

"$have_gas_1685":                                 ; preds = %"$out_of_gas_1684", %"$have_gas_1680"
  %"$consume_1686" = sub i64 %"$gasrem_1682", 1
  store i64 %"$consume_1686", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_1687", i32 0, i32 0), i32 21 }, %String* %m16, align 8, !dbg !365
  %"$gasrem_1688" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1689" = icmp ugt i64 1, %"$gasrem_1688"
  br i1 %"$gascmp_1689", label %"$out_of_gas_1690", label %"$have_gas_1691"

"$out_of_gas_1690":                               ; preds = %"$have_gas_1685"
  call void @_out_of_gas()
  br label %"$have_gas_1691"

"$have_gas_1691":                                 ; preds = %"$out_of_gas_1690", %"$have_gas_1685"
  %"$consume_1692" = sub i64 %"$gasrem_1688", 1
  store i64 %"$consume_1692", i64* @_gasrem, align 8
  %"$fail_msg__origin_1693" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1693", align 1
  %"$fail_msg__sender_1694" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1694", align 1
  %"$tname_1695" = load %String, %String* %tname, align 8
  %"$m_1696" = load %String, %String* %m16, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1693", [20 x i8]* %"$fail_msg__sender_1694", %String %"$tname_1695", %String %"$m_1696"), !dbg !366
  br label %"$matchsucc_1597"

"$empty_default_1601":                            ; preds = %"$have_gas_1595"
  br label %"$matchsucc_1597"

"$matchsucc_1597":                                ; preds = %"$have_gas_1691", %"$matchsucc_1646", %"$empty_default_1601"
  %"$gasrem_1697" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1698" = icmp ugt i64 1, %"$gasrem_1697"
  br i1 %"$gascmp_1698", label %"$out_of_gas_1699", label %"$have_gas_1700"

"$out_of_gas_1699":                               ; preds = %"$matchsucc_1597"
  call void @_out_of_gas()
  br label %"$have_gas_1700"

"$have_gas_1700":                                 ; preds = %"$out_of_gas_1699", %"$matchsucc_1597"
  %"$consume_1701" = sub i64 %"$gasrem_1697", 1
  store i64 %"$consume_1701", i64* @_gasrem, align 8
  %"$indices_buf_1702_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1702_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1702_salloc_load", i64 16)
  %"$indices_buf_1702_salloc" = bitcast i8* %"$indices_buf_1702_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1702" = bitcast [16 x i8]* %"$indices_buf_1702_salloc" to i8*
  %"$$key1b_3_1703" = load %String, %String* %"$key1b_3", align 8
  %"$indices_gep_1704" = getelementptr i8, i8* %"$indices_buf_1702", i32 0
  %indices_cast17 = bitcast i8* %"$indices_gep_1704" to %String*
  store %String %"$$key1b_3_1703", %String* %indices_cast17, align 8
  %"$execptr_load_1705" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_1705", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1706", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 1, i8* %"$indices_buf_1702", i8* null), !dbg !367
  ret void
}

define void @t6(i8* %0) !dbg !368 {
entry:
  %"$_amount_1711" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1712" = bitcast i8* %"$_amount_1711" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1712", align 8
  %"$_origin_1713" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1714" = bitcast i8* %"$_origin_1713" to [20 x i8]*
  %"$_sender_1715" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1716" = bitcast i8* %"$_sender_1715" to [20 x i8]*
  call void @"$t6_1245"(%Uint128 %_amount, [20 x i8]* %"$_origin_1714", [20 x i8]* %"$_sender_1716"), !dbg !369
  ret void
}

define internal void @"$t7_1717"(%Uint128 %_amount, [20 x i8]* %"$_origin_1718", [20 x i8]* %"$_sender_1719") !dbg !370 {
entry:
  %"$_sender_2153" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_1719", [20 x i8]** %"$_sender_2153", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_2153", metadata !371, metadata !DIExpression()), !dbg !372
  %"$_origin_2152" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_1718", [20 x i8]** %"$_origin_2152", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_2152", metadata !373, metadata !DIExpression()), !dbg !372
  %"$_amount_2151" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_2151", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_2151", metadata !374, metadata !DIExpression()), !dbg !372
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1718", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1719", align 1
  %"$gasrem_1720" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1721" = icmp ugt i64 1, %"$gasrem_1720"
  br i1 %"$gascmp_1721", label %"$out_of_gas_1722", label %"$have_gas_1723"

"$out_of_gas_1722":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1723"

"$have_gas_1723":                                 ; preds = %"$out_of_gas_1722", %entry
  %"$consume_1724" = sub i64 %"$gasrem_1720", 1
  store i64 %"$consume_1724", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %tname, metadata !375, metadata !DIExpression()), !dbg !376
  %"$gasrem_1725" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1726" = icmp ugt i64 1, %"$gasrem_1725"
  br i1 %"$gascmp_1726", label %"$out_of_gas_1727", label %"$have_gas_1728"

"$out_of_gas_1727":                               ; preds = %"$have_gas_1723"
  call void @_out_of_gas()
  br label %"$have_gas_1728"

"$have_gas_1728":                                 ; preds = %"$out_of_gas_1727", %"$have_gas_1723"
  %"$consume_1729" = sub i64 %"$gasrem_1725", 1
  store i64 %"$consume_1729", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_1730", i32 0, i32 0), i32 2 }, %String* %tname, align 8, !dbg !377
  %"$gasrem_1731" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1732" = icmp ugt i64 1, %"$gasrem_1731"
  br i1 %"$gascmp_1732", label %"$out_of_gas_1733", label %"$have_gas_1734"

"$out_of_gas_1733":                               ; preds = %"$have_gas_1728"
  call void @_out_of_gas()
  br label %"$have_gas_1734"

"$have_gas_1734":                                 ; preds = %"$out_of_gas_1733", %"$have_gas_1728"
  %"$consume_1735" = sub i64 %"$gasrem_1731", 1
  store i64 %"$consume_1735", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key1a, metadata !378, metadata !DIExpression()), !dbg !379
  %"$gasrem_1736" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1737" = icmp ugt i64 1, %"$gasrem_1736"
  br i1 %"$gascmp_1737", label %"$out_of_gas_1738", label %"$have_gas_1739"

"$out_of_gas_1738":                               ; preds = %"$have_gas_1734"
  call void @_out_of_gas()
  br label %"$have_gas_1739"

"$have_gas_1739":                                 ; preds = %"$out_of_gas_1738", %"$have_gas_1734"
  %"$consume_1740" = sub i64 %"$gasrem_1736", 1
  store i64 %"$consume_1740", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1741", i32 0, i32 0), i32 5 }, %String* %key1a, align 8, !dbg !380
  %"$gasrem_1742" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1743" = icmp ugt i64 1, %"$gasrem_1742"
  br i1 %"$gascmp_1743", label %"$out_of_gas_1744", label %"$have_gas_1745"

"$out_of_gas_1744":                               ; preds = %"$have_gas_1739"
  call void @_out_of_gas()
  br label %"$have_gas_1745"

"$have_gas_1745":                                 ; preds = %"$out_of_gas_1744", %"$have_gas_1739"
  %"$consume_1746" = sub i64 %"$gasrem_1742", 1
  store i64 %"$consume_1746", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key2a, metadata !381, metadata !DIExpression()), !dbg !382
  %"$gasrem_1747" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1748" = icmp ugt i64 1, %"$gasrem_1747"
  br i1 %"$gascmp_1748", label %"$out_of_gas_1749", label %"$have_gas_1750"

"$out_of_gas_1749":                               ; preds = %"$have_gas_1745"
  call void @_out_of_gas()
  br label %"$have_gas_1750"

"$have_gas_1750":                                 ; preds = %"$out_of_gas_1749", %"$have_gas_1745"
  %"$consume_1751" = sub i64 %"$gasrem_1747", 1
  store i64 %"$consume_1751", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1752", i32 0, i32 0), i32 5 }, %String* %key2a, align 8, !dbg !383
  %c1 = alloca %TName_Option_String*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_String** %c1, metadata !384, metadata !DIExpression()), !dbg !385
  %"$indices_buf_1753_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1753_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1753_salloc_load", i64 32)
  %"$indices_buf_1753_salloc" = bitcast i8* %"$indices_buf_1753_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1753" = bitcast [32 x i8]* %"$indices_buf_1753_salloc" to i8*
  %"$key1a_1754" = load %String, %String* %key1a, align 8
  %"$indices_gep_1755" = getelementptr i8, i8* %"$indices_buf_1753", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_1755" to %String*
  store %String %"$key1a_1754", %String* %indices_cast, align 8
  %"$key2a_1756" = load %String, %String* %key2a, align 8
  %"$indices_gep_1757" = getelementptr i8, i8* %"$indices_buf_1753", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_1757" to %String*
  store %String %"$key2a_1756", %String* %indices_cast1, align 8
  %"$execptr_load_1759" = load i8*, i8** @_execptr, align 8
  %"$c1_call_1760" = call i8* @_fetch_field(i8* %"$execptr_load_1759", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1758", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 2, i8* %"$indices_buf_1753", i32 1), !dbg !385
  %"$c1_1761" = bitcast i8* %"$c1_call_1760" to %TName_Option_String*
  store %TName_Option_String* %"$c1_1761", %TName_Option_String** %c1, align 8
  %"$c1_1762" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$$c1_1762_1763" = bitcast %TName_Option_String* %"$c1_1762" to i8*
  %"$_literal_cost_call_1764" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_72", i8* %"$$c1_1762_1763")
  %"$gasadd_1765" = add i64 %"$_literal_cost_call_1764", 0
  %"$gasadd_1766" = add i64 %"$gasadd_1765", 2
  %"$gasrem_1767" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1768" = icmp ugt i64 %"$gasadd_1766", %"$gasrem_1767"
  br i1 %"$gascmp_1768", label %"$out_of_gas_1769", label %"$have_gas_1770"

"$out_of_gas_1769":                               ; preds = %"$have_gas_1750"
  call void @_out_of_gas()
  br label %"$have_gas_1770"

"$have_gas_1770":                                 ; preds = %"$out_of_gas_1769", %"$have_gas_1750"
  %"$consume_1771" = sub i64 %"$gasrem_1767", %"$gasadd_1766"
  store i64 %"$consume_1771", i64* @_gasrem, align 8
  %"$gasrem_1772" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1773" = icmp ugt i64 2, %"$gasrem_1772"
  br i1 %"$gascmp_1773", label %"$out_of_gas_1774", label %"$have_gas_1775"

"$out_of_gas_1774":                               ; preds = %"$have_gas_1770"
  call void @_out_of_gas()
  br label %"$have_gas_1775"

"$have_gas_1775":                                 ; preds = %"$out_of_gas_1774", %"$have_gas_1770"
  %"$consume_1776" = sub i64 %"$gasrem_1772", 2
  store i64 %"$consume_1776", i64* @_gasrem, align 8
  %"$c1_1778" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$c1_tag_1779" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_1778", i32 0, i32 0
  %"$c1_tag_1780" = load i8, i8* %"$c1_tag_1779", align 1
  switch i8 %"$c1_tag_1780", label %"$empty_default_1781" [
    i8 0, label %"$Some_1782"
    i8 1, label %"$None_1855"
  ], !dbg !386

"$Some_1782":                                     ; preds = %"$have_gas_1775"
  %"$c1_1783" = bitcast %TName_Option_String* %"$c1_1778" to %CName_Some_String*
  %"$c_gep_1784" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_1783", i32 0, i32 1
  %"$c_load_1785" = load %String, %String* %"$c_gep_1784", align 8
  %c = alloca %String, align 8
  store %String %"$c_load_1785", %String* %c, align 8
  %"$gasrem_1786" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1787" = icmp ugt i64 1, %"$gasrem_1786"
  br i1 %"$gascmp_1787", label %"$out_of_gas_1788", label %"$have_gas_1789"

"$out_of_gas_1788":                               ; preds = %"$Some_1782"
  call void @_out_of_gas()
  br label %"$have_gas_1789"

"$have_gas_1789":                                 ; preds = %"$out_of_gas_1788", %"$Some_1782"
  %"$consume_1790" = sub i64 %"$gasrem_1786", 1
  store i64 %"$consume_1790", i64* @_gasrem, align 8
  %v = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %v, metadata !387, metadata !DIExpression()), !dbg !390
  %"$gasrem_1791" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1792" = icmp ugt i64 1, %"$gasrem_1791"
  br i1 %"$gascmp_1792", label %"$out_of_gas_1793", label %"$have_gas_1794"

"$out_of_gas_1793":                               ; preds = %"$have_gas_1789"
  call void @_out_of_gas()
  br label %"$have_gas_1794"

"$have_gas_1794":                                 ; preds = %"$out_of_gas_1793", %"$have_gas_1789"
  %"$consume_1795" = sub i64 %"$gasrem_1791", 1
  store i64 %"$consume_1795", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_1796", i32 0, i32 0), i32 3 }, %String* %v, align 8, !dbg !391
  %"$gasrem_1797" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1798" = icmp ugt i64 1, %"$gasrem_1797"
  br i1 %"$gascmp_1798", label %"$out_of_gas_1799", label %"$have_gas_1800"

"$out_of_gas_1799":                               ; preds = %"$have_gas_1794"
  call void @_out_of_gas()
  br label %"$have_gas_1800"

"$have_gas_1800":                                 ; preds = %"$out_of_gas_1799", %"$have_gas_1794"
  %"$consume_1801" = sub i64 %"$gasrem_1797", 1
  store i64 %"$consume_1801", i64* @_gasrem, align 8
  %eq = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %eq, metadata !392, metadata !DIExpression()), !dbg !393
  %"$_literal_cost_c_1802" = alloca %String, align 8
  %"$c_1803" = load %String, %String* %c, align 8
  store %String %"$c_1803", %String* %"$_literal_cost_c_1802", align 8
  %"$$_literal_cost_c_1802_1804" = bitcast %String* %"$_literal_cost_c_1802" to i8*
  %"$_literal_cost_call_1805" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_c_1802_1804")
  %"$_literal_cost_v_1806" = alloca %String, align 8
  %"$v_1807" = load %String, %String* %v, align 8
  store %String %"$v_1807", %String* %"$_literal_cost_v_1806", align 8
  %"$$_literal_cost_v_1806_1808" = bitcast %String* %"$_literal_cost_v_1806" to i8*
  %"$_literal_cost_call_1809" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v_1806_1808")
  %"$gasmin_1810" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_1805", i64 %"$_literal_cost_call_1809")
  %"$gasrem_1811" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1812" = icmp ugt i64 %"$gasmin_1810", %"$gasrem_1811"
  br i1 %"$gascmp_1812", label %"$out_of_gas_1813", label %"$have_gas_1814"

"$out_of_gas_1813":                               ; preds = %"$have_gas_1800"
  call void @_out_of_gas()
  br label %"$have_gas_1814"

"$have_gas_1814":                                 ; preds = %"$out_of_gas_1813", %"$have_gas_1800"
  %"$consume_1815" = sub i64 %"$gasrem_1811", %"$gasmin_1810"
  store i64 %"$consume_1815", i64* @_gasrem, align 8
  %"$execptr_load_1816" = load i8*, i8** @_execptr, align 8
  %"$c_1817" = load %String, %String* %c, align 8
  %"$v_1818" = load %String, %String* %v, align 8
  %"$eq_call_1819" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_1816", %String %"$c_1817", %String %"$v_1818"), !dbg !394
  store %TName_Bool* %"$eq_call_1819", %TName_Bool** %eq, align 8, !dbg !394
  %"$gasrem_1821" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1822" = icmp ugt i64 2, %"$gasrem_1821"
  br i1 %"$gascmp_1822", label %"$out_of_gas_1823", label %"$have_gas_1824"

"$out_of_gas_1823":                               ; preds = %"$have_gas_1814"
  call void @_out_of_gas()
  br label %"$have_gas_1824"

"$have_gas_1824":                                 ; preds = %"$out_of_gas_1823", %"$have_gas_1814"
  %"$consume_1825" = sub i64 %"$gasrem_1821", 2
  store i64 %"$consume_1825", i64* @_gasrem, align 8
  %"$eq_1827" = load %TName_Bool*, %TName_Bool** %eq, align 8
  %"$eq_tag_1828" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_1827", i32 0, i32 0
  %"$eq_tag_1829" = load i8, i8* %"$eq_tag_1828", align 1
  switch i8 %"$eq_tag_1829", label %"$empty_default_1830" [
    i8 0, label %"$True_1831"
    i8 1, label %"$False_1833"
  ], !dbg !395

"$True_1831":                                     ; preds = %"$have_gas_1824"
  %"$eq_1832" = bitcast %TName_Bool* %"$eq_1827" to %CName_True*
  br label %"$matchsucc_1826"

"$False_1833":                                    ; preds = %"$have_gas_1824"
  %"$eq_1834" = bitcast %TName_Bool* %"$eq_1827" to %CName_False*
  %"$gasrem_1835" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1836" = icmp ugt i64 1, %"$gasrem_1835"
  br i1 %"$gascmp_1836", label %"$out_of_gas_1837", label %"$have_gas_1838"

"$out_of_gas_1837":                               ; preds = %"$False_1833"
  call void @_out_of_gas()
  br label %"$have_gas_1838"

"$have_gas_1838":                                 ; preds = %"$out_of_gas_1837", %"$False_1833"
  %"$consume_1839" = sub i64 %"$gasrem_1835", 1
  store i64 %"$consume_1839", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %m, metadata !396, metadata !DIExpression()), !dbg !399
  %"$gasrem_1840" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1841" = icmp ugt i64 1, %"$gasrem_1840"
  br i1 %"$gascmp_1841", label %"$out_of_gas_1842", label %"$have_gas_1843"

"$out_of_gas_1842":                               ; preds = %"$have_gas_1838"
  call void @_out_of_gas()
  br label %"$have_gas_1843"

"$have_gas_1843":                                 ; preds = %"$out_of_gas_1842", %"$have_gas_1838"
  %"$consume_1844" = sub i64 %"$gasrem_1840", 1
  store i64 %"$consume_1844", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_1845", i32 0, i32 0), i32 31 }, %String* %m, align 8, !dbg !400
  %"$gasrem_1846" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1847" = icmp ugt i64 1, %"$gasrem_1846"
  br i1 %"$gascmp_1847", label %"$out_of_gas_1848", label %"$have_gas_1849"

"$out_of_gas_1848":                               ; preds = %"$have_gas_1843"
  call void @_out_of_gas()
  br label %"$have_gas_1849"

"$have_gas_1849":                                 ; preds = %"$out_of_gas_1848", %"$have_gas_1843"
  %"$consume_1850" = sub i64 %"$gasrem_1846", 1
  store i64 %"$consume_1850", i64* @_gasrem, align 8
  %"$fail_msg__origin_1851" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1851", align 1
  %"$fail_msg__sender_1852" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1852", align 1
  %"$tname_1853" = load %String, %String* %tname, align 8
  %"$m_1854" = load %String, %String* %m, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1851", [20 x i8]* %"$fail_msg__sender_1852", %String %"$tname_1853", %String %"$m_1854"), !dbg !401
  br label %"$matchsucc_1826"

"$empty_default_1830":                            ; preds = %"$have_gas_1824"
  br label %"$matchsucc_1826"

"$matchsucc_1826":                                ; preds = %"$have_gas_1849", %"$True_1831", %"$empty_default_1830"
  br label %"$matchsucc_1777"

"$None_1855":                                     ; preds = %"$have_gas_1775"
  %"$c1_1856" = bitcast %TName_Option_String* %"$c1_1778" to %CName_None_String*
  %"$gasrem_1857" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1858" = icmp ugt i64 1, %"$gasrem_1857"
  br i1 %"$gascmp_1858", label %"$out_of_gas_1859", label %"$have_gas_1860"

"$out_of_gas_1859":                               ; preds = %"$None_1855"
  call void @_out_of_gas()
  br label %"$have_gas_1860"

"$have_gas_1860":                                 ; preds = %"$out_of_gas_1859", %"$None_1855"
  %"$consume_1861" = sub i64 %"$gasrem_1857", 1
  store i64 %"$consume_1861", i64* @_gasrem, align 8
  %m2 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %m2, metadata !402, metadata !DIExpression()), !dbg !404
  %"$gasrem_1862" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1863" = icmp ugt i64 1, %"$gasrem_1862"
  br i1 %"$gascmp_1863", label %"$out_of_gas_1864", label %"$have_gas_1865"

"$out_of_gas_1864":                               ; preds = %"$have_gas_1860"
  call void @_out_of_gas()
  br label %"$have_gas_1865"

"$have_gas_1865":                                 ; preds = %"$out_of_gas_1864", %"$have_gas_1860"
  %"$consume_1866" = sub i64 %"$gasrem_1862", 1
  store i64 %"$consume_1866", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_1867", i32 0, i32 0), i32 21 }, %String* %m2, align 8, !dbg !405
  %"$gasrem_1868" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1869" = icmp ugt i64 1, %"$gasrem_1868"
  br i1 %"$gascmp_1869", label %"$out_of_gas_1870", label %"$have_gas_1871"

"$out_of_gas_1870":                               ; preds = %"$have_gas_1865"
  call void @_out_of_gas()
  br label %"$have_gas_1871"

"$have_gas_1871":                                 ; preds = %"$out_of_gas_1870", %"$have_gas_1865"
  %"$consume_1872" = sub i64 %"$gasrem_1868", 1
  store i64 %"$consume_1872", i64* @_gasrem, align 8
  %"$fail_msg__origin_1873" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1873", align 1
  %"$fail_msg__sender_1874" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1874", align 1
  %"$tname_1875" = load %String, %String* %tname, align 8
  %"$m_1876" = load %String, %String* %m2, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1873", [20 x i8]* %"$fail_msg__sender_1874", %String %"$tname_1875", %String %"$m_1876"), !dbg !406
  br label %"$matchsucc_1777"

"$empty_default_1781":                            ; preds = %"$have_gas_1775"
  br label %"$matchsucc_1777"

"$matchsucc_1777":                                ; preds = %"$have_gas_1871", %"$matchsucc_1826", %"$empty_default_1781"
  %"$gasrem_1877" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1878" = icmp ugt i64 1, %"$gasrem_1877"
  br i1 %"$gascmp_1878", label %"$out_of_gas_1879", label %"$have_gas_1880"

"$out_of_gas_1879":                               ; preds = %"$matchsucc_1777"
  call void @_out_of_gas()
  br label %"$have_gas_1880"

"$have_gas_1880":                                 ; preds = %"$out_of_gas_1879", %"$matchsucc_1777"
  %"$consume_1881" = sub i64 %"$gasrem_1877", 1
  store i64 %"$consume_1881", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key1b, metadata !407, metadata !DIExpression()), !dbg !408
  %"$gasrem_1882" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1883" = icmp ugt i64 1, %"$gasrem_1882"
  br i1 %"$gascmp_1883", label %"$out_of_gas_1884", label %"$have_gas_1885"

"$out_of_gas_1884":                               ; preds = %"$have_gas_1880"
  call void @_out_of_gas()
  br label %"$have_gas_1885"

"$have_gas_1885":                                 ; preds = %"$out_of_gas_1884", %"$have_gas_1880"
  %"$consume_1886" = sub i64 %"$gasrem_1882", 1
  store i64 %"$consume_1886", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1887", i32 0, i32 0), i32 5 }, %String* %key1b, align 8, !dbg !409
  %"$c1_5" = alloca %"TName_Option_Map_(String)_(String)"*, align 8
  call void @llvm.dbg.declare(metadata %"TName_Option_Map_(String)_(String)"** %"$c1_5", metadata !410, metadata !DIExpression()), !dbg !413
  %"$indices_buf_1888_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1888_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1888_salloc_load", i64 16)
  %"$indices_buf_1888_salloc" = bitcast i8* %"$indices_buf_1888_salloc_salloc" to [16 x i8]*
  %"$indices_buf_1888" = bitcast [16 x i8]* %"$indices_buf_1888_salloc" to i8*
  %"$key1b_1889" = load %String, %String* %key1b, align 8
  %"$indices_gep_1890" = getelementptr i8, i8* %"$indices_buf_1888", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_1890" to %String*
  store %String %"$key1b_1889", %String* %indices_cast3, align 8
  %"$execptr_load_1892" = load i8*, i8** @_execptr, align 8
  %"$$c1_5_call_1893" = call i8* @_fetch_field(i8* %"$execptr_load_1892", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1891", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 1, i8* %"$indices_buf_1888", i32 1), !dbg !413
  %"$$c1_5_1894" = bitcast i8* %"$$c1_5_call_1893" to %"TName_Option_Map_(String)_(String)"*
  store %"TName_Option_Map_(String)_(String)"* %"$$c1_5_1894", %"TName_Option_Map_(String)_(String)"** %"$c1_5", align 8
  %"$$c1_5_1895" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %"$c1_5", align 8
  %"$$$c1_5_1895_1896" = bitcast %"TName_Option_Map_(String)_(String)"* %"$$c1_5_1895" to i8*
  %"$_literal_cost_call_1897" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(String)_71", i8* %"$$$c1_5_1895_1896")
  %"$$c1_5_1898" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %"$c1_5", align 8
  %"$$$c1_5_1898_1899" = bitcast %"TName_Option_Map_(String)_(String)"* %"$$c1_5_1898" to i8*
  %"$_mapsortcost_call_1900" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(String)_71", i8* %"$$$c1_5_1898_1899")
  %"$gasadd_1901" = add i64 %"$_literal_cost_call_1897", %"$_mapsortcost_call_1900"
  %"$gasadd_1902" = add i64 %"$gasadd_1901", 1
  %"$gasrem_1903" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1904" = icmp ugt i64 %"$gasadd_1902", %"$gasrem_1903"
  br i1 %"$gascmp_1904", label %"$out_of_gas_1905", label %"$have_gas_1906"

"$out_of_gas_1905":                               ; preds = %"$have_gas_1885"
  call void @_out_of_gas()
  br label %"$have_gas_1906"

"$have_gas_1906":                                 ; preds = %"$out_of_gas_1905", %"$have_gas_1885"
  %"$consume_1907" = sub i64 %"$gasrem_1903", %"$gasadd_1902"
  store i64 %"$consume_1907", i64* @_gasrem, align 8
  %"$gasrem_1908" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1909" = icmp ugt i64 2, %"$gasrem_1908"
  br i1 %"$gascmp_1909", label %"$out_of_gas_1910", label %"$have_gas_1911"

"$out_of_gas_1910":                               ; preds = %"$have_gas_1906"
  call void @_out_of_gas()
  br label %"$have_gas_1911"

"$have_gas_1911":                                 ; preds = %"$out_of_gas_1910", %"$have_gas_1906"
  %"$consume_1912" = sub i64 %"$gasrem_1908", 2
  store i64 %"$consume_1912", i64* @_gasrem, align 8
  %"$$c1_5_1914" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %"$c1_5", align 8
  %"$$c1_5_tag_1915" = getelementptr inbounds %"TName_Option_Map_(String)_(String)", %"TName_Option_Map_(String)_(String)"* %"$$c1_5_1914", i32 0, i32 0
  %"$$c1_5_tag_1916" = load i8, i8* %"$$c1_5_tag_1915", align 1
  switch i8 %"$$c1_5_tag_1916", label %"$empty_default_1917" [
    i8 0, label %"$Some_1918"
    i8 1, label %"$None_1942"
  ], !dbg !414

"$Some_1918":                                     ; preds = %"$have_gas_1911"
  %"$$c1_5_1919" = bitcast %"TName_Option_Map_(String)_(String)"* %"$$c1_5_1914" to %"CName_Some_Map_(String)_(String)"*
  %"$$$c1_5_18_gep_1920" = getelementptr inbounds %"CName_Some_Map_(String)_(String)", %"CName_Some_Map_(String)_(String)"* %"$$c1_5_1919", i32 0, i32 1
  %"$$$c1_5_18_load_1921" = load %Map_String_String*, %Map_String_String** %"$$$c1_5_18_gep_1920", align 8
  %"$$c1_5_18" = alloca %Map_String_String*, align 8
  store %Map_String_String* %"$$$c1_5_18_load_1921", %Map_String_String** %"$$c1_5_18", align 8
  %"$gasrem_1922" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1923" = icmp ugt i64 1, %"$gasrem_1922"
  br i1 %"$gascmp_1923", label %"$out_of_gas_1924", label %"$have_gas_1925"

"$out_of_gas_1924":                               ; preds = %"$Some_1918"
  call void @_out_of_gas()
  br label %"$have_gas_1925"

"$have_gas_1925":                                 ; preds = %"$out_of_gas_1924", %"$Some_1918"
  %"$consume_1926" = sub i64 %"$gasrem_1922", 1
  store i64 %"$consume_1926", i64* @_gasrem, align 8
  %m4 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %m4, metadata !415, metadata !DIExpression()), !dbg !418
  %"$gasrem_1927" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1928" = icmp ugt i64 1, %"$gasrem_1927"
  br i1 %"$gascmp_1928", label %"$out_of_gas_1929", label %"$have_gas_1930"

"$out_of_gas_1929":                               ; preds = %"$have_gas_1925"
  call void @_out_of_gas()
  br label %"$have_gas_1930"

"$have_gas_1930":                                 ; preds = %"$out_of_gas_1929", %"$have_gas_1925"
  %"$consume_1931" = sub i64 %"$gasrem_1927", 1
  store i64 %"$consume_1931", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"$stringlit_1932", i32 0, i32 0), i32 36 }, %String* %m4, align 8, !dbg !419
  %"$gasrem_1933" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1934" = icmp ugt i64 1, %"$gasrem_1933"
  br i1 %"$gascmp_1934", label %"$out_of_gas_1935", label %"$have_gas_1936"

"$out_of_gas_1935":                               ; preds = %"$have_gas_1930"
  call void @_out_of_gas()
  br label %"$have_gas_1936"

"$have_gas_1936":                                 ; preds = %"$out_of_gas_1935", %"$have_gas_1930"
  %"$consume_1937" = sub i64 %"$gasrem_1933", 1
  store i64 %"$consume_1937", i64* @_gasrem, align 8
  %"$fail_msg__origin_1938" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_1938", align 1
  %"$fail_msg__sender_1939" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_1939", align 1
  %"$tname_1940" = load %String, %String* %tname, align 8
  %"$m_1941" = load %String, %String* %m4, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_1938", [20 x i8]* %"$fail_msg__sender_1939", %String %"$tname_1940", %String %"$m_1941"), !dbg !420
  br label %"$matchsucc_1913"

"$None_1942":                                     ; preds = %"$have_gas_1911"
  %"$$c1_5_1943" = bitcast %"TName_Option_Map_(String)_(String)"* %"$$c1_5_1914" to %"CName_None_Map_(String)_(String)"*
  br label %"$matchsucc_1913"

"$empty_default_1917":                            ; preds = %"$have_gas_1911"
  br label %"$matchsucc_1913"

"$matchsucc_1913":                                ; preds = %"$None_1942", %"$have_gas_1936", %"$empty_default_1917"
  %"$gasrem_1944" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1945" = icmp ugt i64 1, %"$gasrem_1944"
  br i1 %"$gascmp_1945", label %"$out_of_gas_1946", label %"$have_gas_1947"

"$out_of_gas_1946":                               ; preds = %"$matchsucc_1913"
  call void @_out_of_gas()
  br label %"$have_gas_1947"

"$have_gas_1947":                                 ; preds = %"$out_of_gas_1946", %"$matchsucc_1913"
  %"$consume_1948" = sub i64 %"$gasrem_1944", 1
  store i64 %"$consume_1948", i64* @_gasrem, align 8
  %"$key1b_6" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$key1b_6", metadata !421, metadata !DIExpression()), !dbg !422
  %"$gasrem_1949" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1950" = icmp ugt i64 1, %"$gasrem_1949"
  br i1 %"$gascmp_1950", label %"$out_of_gas_1951", label %"$have_gas_1952"

"$out_of_gas_1951":                               ; preds = %"$have_gas_1947"
  call void @_out_of_gas()
  br label %"$have_gas_1952"

"$have_gas_1952":                                 ; preds = %"$out_of_gas_1951", %"$have_gas_1947"
  %"$consume_1953" = sub i64 %"$gasrem_1949", 1
  store i64 %"$consume_1953", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1954", i32 0, i32 0), i32 5 }, %String* %"$key1b_6", align 8, !dbg !423
  %"$gasrem_1955" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1956" = icmp ugt i64 1, %"$gasrem_1955"
  br i1 %"$gascmp_1956", label %"$out_of_gas_1957", label %"$have_gas_1958"

"$out_of_gas_1957":                               ; preds = %"$have_gas_1952"
  call void @_out_of_gas()
  br label %"$have_gas_1958"

"$have_gas_1958":                                 ; preds = %"$out_of_gas_1957", %"$have_gas_1952"
  %"$consume_1959" = sub i64 %"$gasrem_1955", 1
  store i64 %"$consume_1959", i64* @_gasrem, align 8
  %key2b = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key2b, metadata !424, metadata !DIExpression()), !dbg !425
  %"$gasrem_1960" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1961" = icmp ugt i64 1, %"$gasrem_1960"
  br i1 %"$gascmp_1961", label %"$out_of_gas_1962", label %"$have_gas_1963"

"$out_of_gas_1962":                               ; preds = %"$have_gas_1958"
  call void @_out_of_gas()
  br label %"$have_gas_1963"

"$have_gas_1963":                                 ; preds = %"$out_of_gas_1962", %"$have_gas_1958"
  %"$consume_1964" = sub i64 %"$gasrem_1960", 1
  store i64 %"$consume_1964", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_1965", i32 0, i32 0), i32 5 }, %String* %key2b, align 8, !dbg !426
  %"$c1_7" = alloca %TName_Option_String*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_String** %"$c1_7", metadata !427, metadata !DIExpression()), !dbg !428
  %"$indices_buf_1966_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_1966_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_1966_salloc_load", i64 32)
  %"$indices_buf_1966_salloc" = bitcast i8* %"$indices_buf_1966_salloc_salloc" to [32 x i8]*
  %"$indices_buf_1966" = bitcast [32 x i8]* %"$indices_buf_1966_salloc" to i8*
  %"$$key1b_6_1967" = load %String, %String* %"$key1b_6", align 8
  %"$indices_gep_1968" = getelementptr i8, i8* %"$indices_buf_1966", i32 0
  %indices_cast5 = bitcast i8* %"$indices_gep_1968" to %String*
  store %String %"$$key1b_6_1967", %String* %indices_cast5, align 8
  %"$key2b_1969" = load %String, %String* %key2b, align 8
  %"$indices_gep_1970" = getelementptr i8, i8* %"$indices_buf_1966", i32 16
  %indices_cast6 = bitcast i8* %"$indices_gep_1970" to %String*
  store %String %"$key2b_1969", %String* %indices_cast6, align 8
  %"$execptr_load_1972" = load i8*, i8** @_execptr, align 8
  %"$$c1_7_call_1973" = call i8* @_fetch_field(i8* %"$execptr_load_1972", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_1971", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 2, i8* %"$indices_buf_1966", i32 1), !dbg !428
  %"$$c1_7_1974" = bitcast i8* %"$$c1_7_call_1973" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_7_1974", %TName_Option_String** %"$c1_7", align 8
  %"$$c1_7_1975" = load %TName_Option_String*, %TName_Option_String** %"$c1_7", align 8
  %"$$$c1_7_1975_1976" = bitcast %TName_Option_String* %"$$c1_7_1975" to i8*
  %"$_literal_cost_call_1977" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_72", i8* %"$$$c1_7_1975_1976")
  %"$gasadd_1978" = add i64 %"$_literal_cost_call_1977", 0
  %"$gasadd_1979" = add i64 %"$gasadd_1978", 2
  %"$gasrem_1980" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1981" = icmp ugt i64 %"$gasadd_1979", %"$gasrem_1980"
  br i1 %"$gascmp_1981", label %"$out_of_gas_1982", label %"$have_gas_1983"

"$out_of_gas_1982":                               ; preds = %"$have_gas_1963"
  call void @_out_of_gas()
  br label %"$have_gas_1983"

"$have_gas_1983":                                 ; preds = %"$out_of_gas_1982", %"$have_gas_1963"
  %"$consume_1984" = sub i64 %"$gasrem_1980", %"$gasadd_1979"
  store i64 %"$consume_1984", i64* @_gasrem, align 8
  %"$gasrem_1985" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1986" = icmp ugt i64 2, %"$gasrem_1985"
  br i1 %"$gascmp_1986", label %"$out_of_gas_1987", label %"$have_gas_1988"

"$out_of_gas_1987":                               ; preds = %"$have_gas_1983"
  call void @_out_of_gas()
  br label %"$have_gas_1988"

"$have_gas_1988":                                 ; preds = %"$out_of_gas_1987", %"$have_gas_1983"
  %"$consume_1989" = sub i64 %"$gasrem_1985", 2
  store i64 %"$consume_1989", i64* @_gasrem, align 8
  %"$$c1_7_1991" = load %TName_Option_String*, %TName_Option_String** %"$c1_7", align 8
  %"$$c1_7_tag_1992" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_7_1991", i32 0, i32 0
  %"$$c1_7_tag_1993" = load i8, i8* %"$$c1_7_tag_1992", align 1
  switch i8 %"$$c1_7_tag_1993", label %"$empty_default_1994" [
    i8 0, label %"$Some_1995"
    i8 1, label %"$None_2019"
  ], !dbg !429

"$Some_1995":                                     ; preds = %"$have_gas_1988"
  %"$$c1_7_1996" = bitcast %TName_Option_String* %"$$c1_7_1991" to %CName_Some_String*
  %"$$$c1_7_17_gep_1997" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_7_1996", i32 0, i32 1
  %"$$$c1_7_17_load_1998" = load %String, %String* %"$$$c1_7_17_gep_1997", align 8
  %"$$c1_7_17" = alloca %String, align 8
  store %String %"$$$c1_7_17_load_1998", %String* %"$$c1_7_17", align 8
  %"$gasrem_1999" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2000" = icmp ugt i64 1, %"$gasrem_1999"
  br i1 %"$gascmp_2000", label %"$out_of_gas_2001", label %"$have_gas_2002"

"$out_of_gas_2001":                               ; preds = %"$Some_1995"
  call void @_out_of_gas()
  br label %"$have_gas_2002"

"$have_gas_2002":                                 ; preds = %"$out_of_gas_2001", %"$Some_1995"
  %"$consume_2003" = sub i64 %"$gasrem_1999", 1
  store i64 %"$consume_2003", i64* @_gasrem, align 8
  %m7 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %m7, metadata !430, metadata !DIExpression()), !dbg !433
  %"$gasrem_2004" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2005" = icmp ugt i64 1, %"$gasrem_2004"
  br i1 %"$gascmp_2005", label %"$out_of_gas_2006", label %"$have_gas_2007"

"$out_of_gas_2006":                               ; preds = %"$have_gas_2002"
  call void @_out_of_gas()
  br label %"$have_gas_2007"

"$have_gas_2007":                                 ; preds = %"$out_of_gas_2006", %"$have_gas_2002"
  %"$consume_2008" = sub i64 %"$gasrem_2004", 1
  store i64 %"$consume_2008", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"$stringlit_2009", i32 0, i32 0), i32 42 }, %String* %m7, align 8, !dbg !434
  %"$gasrem_2010" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2011" = icmp ugt i64 1, %"$gasrem_2010"
  br i1 %"$gascmp_2011", label %"$out_of_gas_2012", label %"$have_gas_2013"

"$out_of_gas_2012":                               ; preds = %"$have_gas_2007"
  call void @_out_of_gas()
  br label %"$have_gas_2013"

"$have_gas_2013":                                 ; preds = %"$out_of_gas_2012", %"$have_gas_2007"
  %"$consume_2014" = sub i64 %"$gasrem_2010", 1
  store i64 %"$consume_2014", i64* @_gasrem, align 8
  %"$fail_msg__origin_2015" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2015", align 1
  %"$fail_msg__sender_2016" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2016", align 1
  %"$tname_2017" = load %String, %String* %tname, align 8
  %"$m_2018" = load %String, %String* %m7, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2015", [20 x i8]* %"$fail_msg__sender_2016", %String %"$tname_2017", %String %"$m_2018"), !dbg !435
  br label %"$matchsucc_1990"

"$None_2019":                                     ; preds = %"$have_gas_1988"
  %"$$c1_7_2020" = bitcast %TName_Option_String* %"$$c1_7_1991" to %CName_None_String*
  br label %"$matchsucc_1990"

"$empty_default_1994":                            ; preds = %"$have_gas_1988"
  br label %"$matchsucc_1990"

"$matchsucc_1990":                                ; preds = %"$None_2019", %"$have_gas_2013", %"$empty_default_1994"
  %"$gasrem_2021" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2022" = icmp ugt i64 1, %"$gasrem_2021"
  br i1 %"$gascmp_2022", label %"$out_of_gas_2023", label %"$have_gas_2024"

"$out_of_gas_2023":                               ; preds = %"$matchsucc_1990"
  call void @_out_of_gas()
  br label %"$have_gas_2024"

"$have_gas_2024":                                 ; preds = %"$out_of_gas_2023", %"$matchsucc_1990"
  %"$consume_2025" = sub i64 %"$gasrem_2021", 1
  store i64 %"$consume_2025", i64* @_gasrem, align 8
  %"$key1b_8" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$key1b_8", metadata !436, metadata !DIExpression()), !dbg !437
  %"$gasrem_2026" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2027" = icmp ugt i64 1, %"$gasrem_2026"
  br i1 %"$gascmp_2027", label %"$out_of_gas_2028", label %"$have_gas_2029"

"$out_of_gas_2028":                               ; preds = %"$have_gas_2024"
  call void @_out_of_gas()
  br label %"$have_gas_2029"

"$have_gas_2029":                                 ; preds = %"$out_of_gas_2028", %"$have_gas_2024"
  %"$consume_2030" = sub i64 %"$gasrem_2026", 1
  store i64 %"$consume_2030", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2031", i32 0, i32 0), i32 5 }, %String* %"$key1b_8", align 8, !dbg !438
  %"$gasrem_2032" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2033" = icmp ugt i64 1, %"$gasrem_2032"
  br i1 %"$gascmp_2033", label %"$out_of_gas_2034", label %"$have_gas_2035"

"$out_of_gas_2034":                               ; preds = %"$have_gas_2029"
  call void @_out_of_gas()
  br label %"$have_gas_2035"

"$have_gas_2035":                                 ; preds = %"$out_of_gas_2034", %"$have_gas_2029"
  %"$consume_2036" = sub i64 %"$gasrem_2032", 1
  store i64 %"$consume_2036", i64* @_gasrem, align 8
  %key2d = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key2d, metadata !439, metadata !DIExpression()), !dbg !440
  %"$gasrem_2037" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2038" = icmp ugt i64 1, %"$gasrem_2037"
  br i1 %"$gascmp_2038", label %"$out_of_gas_2039", label %"$have_gas_2040"

"$out_of_gas_2039":                               ; preds = %"$have_gas_2035"
  call void @_out_of_gas()
  br label %"$have_gas_2040"

"$have_gas_2040":                                 ; preds = %"$out_of_gas_2039", %"$have_gas_2035"
  %"$consume_2041" = sub i64 %"$gasrem_2037", 1
  store i64 %"$consume_2041", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2042", i32 0, i32 0), i32 5 }, %String* %key2d, align 8, !dbg !441
  %"$c1_9" = alloca %TName_Option_String*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_String** %"$c1_9", metadata !442, metadata !DIExpression()), !dbg !443
  %"$indices_buf_2043_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2043_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2043_salloc_load", i64 32)
  %"$indices_buf_2043_salloc" = bitcast i8* %"$indices_buf_2043_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2043" = bitcast [32 x i8]* %"$indices_buf_2043_salloc" to i8*
  %"$$key1b_8_2044" = load %String, %String* %"$key1b_8", align 8
  %"$indices_gep_2045" = getelementptr i8, i8* %"$indices_buf_2043", i32 0
  %indices_cast8 = bitcast i8* %"$indices_gep_2045" to %String*
  store %String %"$$key1b_8_2044", %String* %indices_cast8, align 8
  %"$key2d_2046" = load %String, %String* %key2d, align 8
  %"$indices_gep_2047" = getelementptr i8, i8* %"$indices_buf_2043", i32 16
  %indices_cast9 = bitcast i8* %"$indices_gep_2047" to %String*
  store %String %"$key2d_2046", %String* %indices_cast9, align 8
  %"$execptr_load_2049" = load i8*, i8** @_execptr, align 8
  %"$$c1_9_call_2050" = call i8* @_fetch_field(i8* %"$execptr_load_2049", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2048", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 2, i8* %"$indices_buf_2043", i32 1), !dbg !443
  %"$$c1_9_2051" = bitcast i8* %"$$c1_9_call_2050" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_9_2051", %TName_Option_String** %"$c1_9", align 8
  %"$$c1_9_2052" = load %TName_Option_String*, %TName_Option_String** %"$c1_9", align 8
  %"$$$c1_9_2052_2053" = bitcast %TName_Option_String* %"$$c1_9_2052" to i8*
  %"$_literal_cost_call_2054" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_72", i8* %"$$$c1_9_2052_2053")
  %"$gasadd_2055" = add i64 %"$_literal_cost_call_2054", 0
  %"$gasadd_2056" = add i64 %"$gasadd_2055", 2
  %"$gasrem_2057" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2058" = icmp ugt i64 %"$gasadd_2056", %"$gasrem_2057"
  br i1 %"$gascmp_2058", label %"$out_of_gas_2059", label %"$have_gas_2060"

"$out_of_gas_2059":                               ; preds = %"$have_gas_2040"
  call void @_out_of_gas()
  br label %"$have_gas_2060"

"$have_gas_2060":                                 ; preds = %"$out_of_gas_2059", %"$have_gas_2040"
  %"$consume_2061" = sub i64 %"$gasrem_2057", %"$gasadd_2056"
  store i64 %"$consume_2061", i64* @_gasrem, align 8
  %"$gasrem_2062" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2063" = icmp ugt i64 2, %"$gasrem_2062"
  br i1 %"$gascmp_2063", label %"$out_of_gas_2064", label %"$have_gas_2065"

"$out_of_gas_2064":                               ; preds = %"$have_gas_2060"
  call void @_out_of_gas()
  br label %"$have_gas_2065"

"$have_gas_2065":                                 ; preds = %"$out_of_gas_2064", %"$have_gas_2060"
  %"$consume_2066" = sub i64 %"$gasrem_2062", 2
  store i64 %"$consume_2066", i64* @_gasrem, align 8
  %"$$c1_9_2068" = load %TName_Option_String*, %TName_Option_String** %"$c1_9", align 8
  %"$$c1_9_tag_2069" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_9_2068", i32 0, i32 0
  %"$$c1_9_tag_2070" = load i8, i8* %"$$c1_9_tag_2069", align 1
  switch i8 %"$$c1_9_tag_2070", label %"$empty_default_2071" [
    i8 0, label %"$Some_2072"
    i8 1, label %"$None_2096"
  ], !dbg !444

"$Some_2072":                                     ; preds = %"$have_gas_2065"
  %"$$c1_9_2073" = bitcast %TName_Option_String* %"$$c1_9_2068" to %CName_Some_String*
  %"$$$c1_9_16_gep_2074" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_9_2073", i32 0, i32 1
  %"$$$c1_9_16_load_2075" = load %String, %String* %"$$$c1_9_16_gep_2074", align 8
  %"$$c1_9_16" = alloca %String, align 8
  store %String %"$$$c1_9_16_load_2075", %String* %"$$c1_9_16", align 8
  %"$gasrem_2076" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2077" = icmp ugt i64 1, %"$gasrem_2076"
  br i1 %"$gascmp_2077", label %"$out_of_gas_2078", label %"$have_gas_2079"

"$out_of_gas_2078":                               ; preds = %"$Some_2072"
  call void @_out_of_gas()
  br label %"$have_gas_2079"

"$have_gas_2079":                                 ; preds = %"$out_of_gas_2078", %"$Some_2072"
  %"$consume_2080" = sub i64 %"$gasrem_2076", 1
  store i64 %"$consume_2080", i64* @_gasrem, align 8
  %m10 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %m10, metadata !445, metadata !DIExpression()), !dbg !448
  %"$gasrem_2081" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2082" = icmp ugt i64 1, %"$gasrem_2081"
  br i1 %"$gascmp_2082", label %"$out_of_gas_2083", label %"$have_gas_2084"

"$out_of_gas_2083":                               ; preds = %"$have_gas_2079"
  call void @_out_of_gas()
  br label %"$have_gas_2084"

"$have_gas_2084":                                 ; preds = %"$out_of_gas_2083", %"$have_gas_2079"
  %"$consume_2085" = sub i64 %"$gasrem_2081", 1
  store i64 %"$consume_2085", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([42 x i8], [42 x i8]* @"$stringlit_2086", i32 0, i32 0), i32 42 }, %String* %m10, align 8, !dbg !449
  %"$gasrem_2087" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2088" = icmp ugt i64 1, %"$gasrem_2087"
  br i1 %"$gascmp_2088", label %"$out_of_gas_2089", label %"$have_gas_2090"

"$out_of_gas_2089":                               ; preds = %"$have_gas_2084"
  call void @_out_of_gas()
  br label %"$have_gas_2090"

"$have_gas_2090":                                 ; preds = %"$out_of_gas_2089", %"$have_gas_2084"
  %"$consume_2091" = sub i64 %"$gasrem_2087", 1
  store i64 %"$consume_2091", i64* @_gasrem, align 8
  %"$fail_msg__origin_2092" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2092", align 1
  %"$fail_msg__sender_2093" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2093", align 1
  %"$tname_2094" = load %String, %String* %tname, align 8
  %"$m_2095" = load %String, %String* %m10, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2092", [20 x i8]* %"$fail_msg__sender_2093", %String %"$tname_2094", %String %"$m_2095"), !dbg !450
  br label %"$matchsucc_2067"

"$None_2096":                                     ; preds = %"$have_gas_2065"
  %"$$c1_9_2097" = bitcast %TName_Option_String* %"$$c1_9_2068" to %CName_None_String*
  br label %"$matchsucc_2067"

"$empty_default_2071":                            ; preds = %"$have_gas_2065"
  br label %"$matchsucc_2067"

"$matchsucc_2067":                                ; preds = %"$None_2096", %"$have_gas_2090", %"$empty_default_2071"
  %"$gasrem_2098" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2099" = icmp ugt i64 1, %"$gasrem_2098"
  br i1 %"$gascmp_2099", label %"$out_of_gas_2100", label %"$have_gas_2101"

"$out_of_gas_2100":                               ; preds = %"$matchsucc_2067"
  call void @_out_of_gas()
  br label %"$have_gas_2101"

"$have_gas_2101":                                 ; preds = %"$out_of_gas_2100", %"$matchsucc_2067"
  %"$consume_2102" = sub i64 %"$gasrem_2098", 1
  store i64 %"$consume_2102", i64* @_gasrem, align 8
  %"$key1b_10" = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %"$key1b_10", metadata !451, metadata !DIExpression()), !dbg !452
  %"$gasrem_2103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2104" = icmp ugt i64 1, %"$gasrem_2103"
  br i1 %"$gascmp_2104", label %"$out_of_gas_2105", label %"$have_gas_2106"

"$out_of_gas_2105":                               ; preds = %"$have_gas_2101"
  call void @_out_of_gas()
  br label %"$have_gas_2106"

"$have_gas_2106":                                 ; preds = %"$out_of_gas_2105", %"$have_gas_2101"
  %"$consume_2107" = sub i64 %"$gasrem_2103", 1
  store i64 %"$consume_2107", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2108", i32 0, i32 0), i32 5 }, %String* %"$key1b_10", align 8, !dbg !453
  %"$gasrem_2109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2110" = icmp ugt i64 1, %"$gasrem_2109"
  br i1 %"$gascmp_2110", label %"$out_of_gas_2111", label %"$have_gas_2112"

"$out_of_gas_2111":                               ; preds = %"$have_gas_2106"
  call void @_out_of_gas()
  br label %"$have_gas_2112"

"$have_gas_2112":                                 ; preds = %"$out_of_gas_2111", %"$have_gas_2106"
  %"$consume_2113" = sub i64 %"$gasrem_2109", 1
  store i64 %"$consume_2113", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key2c, metadata !454, metadata !DIExpression()), !dbg !455
  %"$gasrem_2114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2115" = icmp ugt i64 1, %"$gasrem_2114"
  br i1 %"$gascmp_2115", label %"$out_of_gas_2116", label %"$have_gas_2117"

"$out_of_gas_2116":                               ; preds = %"$have_gas_2112"
  call void @_out_of_gas()
  br label %"$have_gas_2117"

"$have_gas_2117":                                 ; preds = %"$out_of_gas_2116", %"$have_gas_2112"
  %"$consume_2118" = sub i64 %"$gasrem_2114", 1
  store i64 %"$consume_2118", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2119", i32 0, i32 0), i32 5 }, %String* %key2c, align 8, !dbg !456
  %"$gasrem_2120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2121" = icmp ugt i64 1, %"$gasrem_2120"
  br i1 %"$gascmp_2121", label %"$out_of_gas_2122", label %"$have_gas_2123"

"$out_of_gas_2122":                               ; preds = %"$have_gas_2117"
  call void @_out_of_gas()
  br label %"$have_gas_2123"

"$have_gas_2123":                                 ; preds = %"$out_of_gas_2122", %"$have_gas_2117"
  %"$consume_2124" = sub i64 %"$gasrem_2120", 1
  store i64 %"$consume_2124", i64* @_gasrem, align 8
  %s = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %s, metadata !457, metadata !DIExpression()), !dbg !458
  %"$gasrem_2125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2126" = icmp ugt i64 1, %"$gasrem_2125"
  br i1 %"$gascmp_2126", label %"$out_of_gas_2127", label %"$have_gas_2128"

"$out_of_gas_2127":                               ; preds = %"$have_gas_2123"
  call void @_out_of_gas()
  br label %"$have_gas_2128"

"$have_gas_2128":                                 ; preds = %"$out_of_gas_2127", %"$have_gas_2123"
  %"$consume_2129" = sub i64 %"$gasrem_2125", 1
  store i64 %"$consume_2129", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2130", i32 0, i32 0), i32 3 }, %String* %s, align 8, !dbg !459
  %"$_literal_cost_s_2131" = alloca %String, align 8
  %"$s_2132" = load %String, %String* %s, align 8
  store %String %"$s_2132", %String* %"$_literal_cost_s_2131", align 8
  %"$$_literal_cost_s_2131_2133" = bitcast %String* %"$_literal_cost_s_2131" to i8*
  %"$_literal_cost_call_2134" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_s_2131_2133")
  %"$gasadd_2135" = add i64 %"$_literal_cost_call_2134", 2
  %"$gasrem_2136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2137" = icmp ugt i64 %"$gasadd_2135", %"$gasrem_2136"
  br i1 %"$gascmp_2137", label %"$out_of_gas_2138", label %"$have_gas_2139"

"$out_of_gas_2138":                               ; preds = %"$have_gas_2128"
  call void @_out_of_gas()
  br label %"$have_gas_2139"

"$have_gas_2139":                                 ; preds = %"$out_of_gas_2138", %"$have_gas_2128"
  %"$consume_2140" = sub i64 %"$gasrem_2136", %"$gasadd_2135"
  store i64 %"$consume_2140", i64* @_gasrem, align 8
  %"$indices_buf_2141_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2141_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2141_salloc_load", i64 32)
  %"$indices_buf_2141_salloc" = bitcast i8* %"$indices_buf_2141_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2141" = bitcast [32 x i8]* %"$indices_buf_2141_salloc" to i8*
  %"$$key1b_10_2142" = load %String, %String* %"$key1b_10", align 8
  %"$indices_gep_2143" = getelementptr i8, i8* %"$indices_buf_2141", i32 0
  %indices_cast11 = bitcast i8* %"$indices_gep_2143" to %String*
  store %String %"$$key1b_10_2142", %String* %indices_cast11, align 8
  %"$key2c_2144" = load %String, %String* %key2c, align 8
  %"$indices_gep_2145" = getelementptr i8, i8* %"$indices_buf_2141", i32 16
  %indices_cast12 = bitcast i8* %"$indices_gep_2145" to %String*
  store %String %"$key2c_2144", %String* %indices_cast12, align 8
  %"$execptr_load_2146" = load i8*, i8** @_execptr, align 8
  %"$s_2148" = load %String, %String* %s, align 8
  %"$update_value_2149" = alloca %String, align 8
  store %String %"$s_2148", %String* %"$update_value_2149", align 8
  %"$update_value_2150" = bitcast %String* %"$update_value_2149" to i8*
  call void @_update_field(i8* %"$execptr_load_2146", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2147", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 2, i8* %"$indices_buf_2141", i8* %"$update_value_2150"), !dbg !460
  ret void
}

declare i64 @_mapsortcost(%_TyDescrTy_Typ*, i8*)

define void @t7(i8* %0) !dbg !461 {
entry:
  %"$_amount_2155" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2156" = bitcast i8* %"$_amount_2155" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2156", align 8
  %"$_origin_2157" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2158" = bitcast i8* %"$_origin_2157" to [20 x i8]*
  %"$_sender_2159" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2160" = bitcast i8* %"$_sender_2159" to [20 x i8]*
  call void @"$t7_1717"(%Uint128 %_amount, [20 x i8]* %"$_origin_2158", [20 x i8]* %"$_sender_2160"), !dbg !462
  ret void
}

define internal void @"$t8_2161"(%Uint128 %_amount, [20 x i8]* %"$_origin_2162", [20 x i8]* %"$_sender_2163") !dbg !463 {
entry:
  %"$_sender_2494" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_2163", [20 x i8]** %"$_sender_2494", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_2494", metadata !464, metadata !DIExpression()), !dbg !465
  %"$_origin_2493" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_2162", [20 x i8]** %"$_origin_2493", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_2493", metadata !466, metadata !DIExpression()), !dbg !465
  %"$_amount_2492" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_2492", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_2492", metadata !467, metadata !DIExpression()), !dbg !465
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2162", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2163", align 1
  %"$gasrem_2164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2165" = icmp ugt i64 1, %"$gasrem_2164"
  br i1 %"$gascmp_2165", label %"$out_of_gas_2166", label %"$have_gas_2167"

"$out_of_gas_2166":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2167"

"$have_gas_2167":                                 ; preds = %"$out_of_gas_2166", %entry
  %"$consume_2168" = sub i64 %"$gasrem_2164", 1
  store i64 %"$consume_2168", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %tname, metadata !468, metadata !DIExpression()), !dbg !469
  %"$gasrem_2169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2170" = icmp ugt i64 1, %"$gasrem_2169"
  br i1 %"$gascmp_2170", label %"$out_of_gas_2171", label %"$have_gas_2172"

"$out_of_gas_2171":                               ; preds = %"$have_gas_2167"
  call void @_out_of_gas()
  br label %"$have_gas_2172"

"$have_gas_2172":                                 ; preds = %"$out_of_gas_2171", %"$have_gas_2167"
  %"$consume_2173" = sub i64 %"$gasrem_2169", 1
  store i64 %"$consume_2173", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_2174", i32 0, i32 0), i32 2 }, %String* %tname, align 8, !dbg !470
  %"$gasrem_2175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2176" = icmp ugt i64 1, %"$gasrem_2175"
  br i1 %"$gascmp_2176", label %"$out_of_gas_2177", label %"$have_gas_2178"

"$out_of_gas_2177":                               ; preds = %"$have_gas_2172"
  call void @_out_of_gas()
  br label %"$have_gas_2178"

"$have_gas_2178":                                 ; preds = %"$out_of_gas_2177", %"$have_gas_2172"
  %"$consume_2179" = sub i64 %"$gasrem_2175", 1
  store i64 %"$consume_2179", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key1a, metadata !471, metadata !DIExpression()), !dbg !472
  %"$gasrem_2180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2181" = icmp ugt i64 1, %"$gasrem_2180"
  br i1 %"$gascmp_2181", label %"$out_of_gas_2182", label %"$have_gas_2183"

"$out_of_gas_2182":                               ; preds = %"$have_gas_2178"
  call void @_out_of_gas()
  br label %"$have_gas_2183"

"$have_gas_2183":                                 ; preds = %"$out_of_gas_2182", %"$have_gas_2178"
  %"$consume_2184" = sub i64 %"$gasrem_2180", 1
  store i64 %"$consume_2184", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2185", i32 0, i32 0), i32 5 }, %String* %key1a, align 8, !dbg !473
  %"$gasrem_2186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2187" = icmp ugt i64 1, %"$gasrem_2186"
  br i1 %"$gascmp_2187", label %"$out_of_gas_2188", label %"$have_gas_2189"

"$out_of_gas_2188":                               ; preds = %"$have_gas_2183"
  call void @_out_of_gas()
  br label %"$have_gas_2189"

"$have_gas_2189":                                 ; preds = %"$out_of_gas_2188", %"$have_gas_2183"
  %"$consume_2190" = sub i64 %"$gasrem_2186", 1
  store i64 %"$consume_2190", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key2a, metadata !474, metadata !DIExpression()), !dbg !475
  %"$gasrem_2191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2192" = icmp ugt i64 1, %"$gasrem_2191"
  br i1 %"$gascmp_2192", label %"$out_of_gas_2193", label %"$have_gas_2194"

"$out_of_gas_2193":                               ; preds = %"$have_gas_2189"
  call void @_out_of_gas()
  br label %"$have_gas_2194"

"$have_gas_2194":                                 ; preds = %"$out_of_gas_2193", %"$have_gas_2189"
  %"$consume_2195" = sub i64 %"$gasrem_2191", 1
  store i64 %"$consume_2195", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2196", i32 0, i32 0), i32 5 }, %String* %key2a, align 8, !dbg !476
  %c1 = alloca %TName_Option_String*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_String** %c1, metadata !477, metadata !DIExpression()), !dbg !478
  %"$indices_buf_2197_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2197_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2197_salloc_load", i64 32)
  %"$indices_buf_2197_salloc" = bitcast i8* %"$indices_buf_2197_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2197" = bitcast [32 x i8]* %"$indices_buf_2197_salloc" to i8*
  %"$key1a_2198" = load %String, %String* %key1a, align 8
  %"$indices_gep_2199" = getelementptr i8, i8* %"$indices_buf_2197", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_2199" to %String*
  store %String %"$key1a_2198", %String* %indices_cast, align 8
  %"$key2a_2200" = load %String, %String* %key2a, align 8
  %"$indices_gep_2201" = getelementptr i8, i8* %"$indices_buf_2197", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_2201" to %String*
  store %String %"$key2a_2200", %String* %indices_cast1, align 8
  %"$execptr_load_2203" = load i8*, i8** @_execptr, align 8
  %"$c1_call_2204" = call i8* @_fetch_field(i8* %"$execptr_load_2203", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2202", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 2, i8* %"$indices_buf_2197", i32 1), !dbg !478
  %"$c1_2205" = bitcast i8* %"$c1_call_2204" to %TName_Option_String*
  store %TName_Option_String* %"$c1_2205", %TName_Option_String** %c1, align 8
  %"$c1_2206" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$$c1_2206_2207" = bitcast %TName_Option_String* %"$c1_2206" to i8*
  %"$_literal_cost_call_2208" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_72", i8* %"$$c1_2206_2207")
  %"$gasadd_2209" = add i64 %"$_literal_cost_call_2208", 0
  %"$gasadd_2210" = add i64 %"$gasadd_2209", 2
  %"$gasrem_2211" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2212" = icmp ugt i64 %"$gasadd_2210", %"$gasrem_2211"
  br i1 %"$gascmp_2212", label %"$out_of_gas_2213", label %"$have_gas_2214"

"$out_of_gas_2213":                               ; preds = %"$have_gas_2194"
  call void @_out_of_gas()
  br label %"$have_gas_2214"

"$have_gas_2214":                                 ; preds = %"$out_of_gas_2213", %"$have_gas_2194"
  %"$consume_2215" = sub i64 %"$gasrem_2211", %"$gasadd_2210"
  store i64 %"$consume_2215", i64* @_gasrem, align 8
  %"$gasrem_2216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2217" = icmp ugt i64 2, %"$gasrem_2216"
  br i1 %"$gascmp_2217", label %"$out_of_gas_2218", label %"$have_gas_2219"

"$out_of_gas_2218":                               ; preds = %"$have_gas_2214"
  call void @_out_of_gas()
  br label %"$have_gas_2219"

"$have_gas_2219":                                 ; preds = %"$out_of_gas_2218", %"$have_gas_2214"
  %"$consume_2220" = sub i64 %"$gasrem_2216", 2
  store i64 %"$consume_2220", i64* @_gasrem, align 8
  %"$c1_2222" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$c1_tag_2223" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_2222", i32 0, i32 0
  %"$c1_tag_2224" = load i8, i8* %"$c1_tag_2223", align 1
  switch i8 %"$c1_tag_2224", label %"$empty_default_2225" [
    i8 0, label %"$Some_2226"
    i8 1, label %"$None_2299"
  ], !dbg !479

"$Some_2226":                                     ; preds = %"$have_gas_2219"
  %"$c1_2227" = bitcast %TName_Option_String* %"$c1_2222" to %CName_Some_String*
  %"$c_gep_2228" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_2227", i32 0, i32 1
  %"$c_load_2229" = load %String, %String* %"$c_gep_2228", align 8
  %c = alloca %String, align 8
  store %String %"$c_load_2229", %String* %c, align 8
  %"$gasrem_2230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2231" = icmp ugt i64 1, %"$gasrem_2230"
  br i1 %"$gascmp_2231", label %"$out_of_gas_2232", label %"$have_gas_2233"

"$out_of_gas_2232":                               ; preds = %"$Some_2226"
  call void @_out_of_gas()
  br label %"$have_gas_2233"

"$have_gas_2233":                                 ; preds = %"$out_of_gas_2232", %"$Some_2226"
  %"$consume_2234" = sub i64 %"$gasrem_2230", 1
  store i64 %"$consume_2234", i64* @_gasrem, align 8
  %v = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %v, metadata !480, metadata !DIExpression()), !dbg !483
  %"$gasrem_2235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2236" = icmp ugt i64 1, %"$gasrem_2235"
  br i1 %"$gascmp_2236", label %"$out_of_gas_2237", label %"$have_gas_2238"

"$out_of_gas_2237":                               ; preds = %"$have_gas_2233"
  call void @_out_of_gas()
  br label %"$have_gas_2238"

"$have_gas_2238":                                 ; preds = %"$out_of_gas_2237", %"$have_gas_2233"
  %"$consume_2239" = sub i64 %"$gasrem_2235", 1
  store i64 %"$consume_2239", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2240", i32 0, i32 0), i32 3 }, %String* %v, align 8, !dbg !484
  %"$gasrem_2241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2242" = icmp ugt i64 1, %"$gasrem_2241"
  br i1 %"$gascmp_2242", label %"$out_of_gas_2243", label %"$have_gas_2244"

"$out_of_gas_2243":                               ; preds = %"$have_gas_2238"
  call void @_out_of_gas()
  br label %"$have_gas_2244"

"$have_gas_2244":                                 ; preds = %"$out_of_gas_2243", %"$have_gas_2238"
  %"$consume_2245" = sub i64 %"$gasrem_2241", 1
  store i64 %"$consume_2245", i64* @_gasrem, align 8
  %eq = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %eq, metadata !485, metadata !DIExpression()), !dbg !486
  %"$_literal_cost_c_2246" = alloca %String, align 8
  %"$c_2247" = load %String, %String* %c, align 8
  store %String %"$c_2247", %String* %"$_literal_cost_c_2246", align 8
  %"$$_literal_cost_c_2246_2248" = bitcast %String* %"$_literal_cost_c_2246" to i8*
  %"$_literal_cost_call_2249" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_c_2246_2248")
  %"$_literal_cost_v_2250" = alloca %String, align 8
  %"$v_2251" = load %String, %String* %v, align 8
  store %String %"$v_2251", %String* %"$_literal_cost_v_2250", align 8
  %"$$_literal_cost_v_2250_2252" = bitcast %String* %"$_literal_cost_v_2250" to i8*
  %"$_literal_cost_call_2253" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v_2250_2252")
  %"$gasmin_2254" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_2249", i64 %"$_literal_cost_call_2253")
  %"$gasrem_2255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2256" = icmp ugt i64 %"$gasmin_2254", %"$gasrem_2255"
  br i1 %"$gascmp_2256", label %"$out_of_gas_2257", label %"$have_gas_2258"

"$out_of_gas_2257":                               ; preds = %"$have_gas_2244"
  call void @_out_of_gas()
  br label %"$have_gas_2258"

"$have_gas_2258":                                 ; preds = %"$out_of_gas_2257", %"$have_gas_2244"
  %"$consume_2259" = sub i64 %"$gasrem_2255", %"$gasmin_2254"
  store i64 %"$consume_2259", i64* @_gasrem, align 8
  %"$execptr_load_2260" = load i8*, i8** @_execptr, align 8
  %"$c_2261" = load %String, %String* %c, align 8
  %"$v_2262" = load %String, %String* %v, align 8
  %"$eq_call_2263" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_2260", %String %"$c_2261", %String %"$v_2262"), !dbg !487
  store %TName_Bool* %"$eq_call_2263", %TName_Bool** %eq, align 8, !dbg !487
  %"$gasrem_2265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2266" = icmp ugt i64 2, %"$gasrem_2265"
  br i1 %"$gascmp_2266", label %"$out_of_gas_2267", label %"$have_gas_2268"

"$out_of_gas_2267":                               ; preds = %"$have_gas_2258"
  call void @_out_of_gas()
  br label %"$have_gas_2268"

"$have_gas_2268":                                 ; preds = %"$out_of_gas_2267", %"$have_gas_2258"
  %"$consume_2269" = sub i64 %"$gasrem_2265", 2
  store i64 %"$consume_2269", i64* @_gasrem, align 8
  %"$eq_2271" = load %TName_Bool*, %TName_Bool** %eq, align 8
  %"$eq_tag_2272" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_2271", i32 0, i32 0
  %"$eq_tag_2273" = load i8, i8* %"$eq_tag_2272", align 1
  switch i8 %"$eq_tag_2273", label %"$empty_default_2274" [
    i8 0, label %"$True_2275"
    i8 1, label %"$False_2277"
  ], !dbg !488

"$True_2275":                                     ; preds = %"$have_gas_2268"
  %"$eq_2276" = bitcast %TName_Bool* %"$eq_2271" to %CName_True*
  br label %"$matchsucc_2270"

"$False_2277":                                    ; preds = %"$have_gas_2268"
  %"$eq_2278" = bitcast %TName_Bool* %"$eq_2271" to %CName_False*
  %"$gasrem_2279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2280" = icmp ugt i64 1, %"$gasrem_2279"
  br i1 %"$gascmp_2280", label %"$out_of_gas_2281", label %"$have_gas_2282"

"$out_of_gas_2281":                               ; preds = %"$False_2277"
  call void @_out_of_gas()
  br label %"$have_gas_2282"

"$have_gas_2282":                                 ; preds = %"$out_of_gas_2281", %"$False_2277"
  %"$consume_2283" = sub i64 %"$gasrem_2279", 1
  store i64 %"$consume_2283", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %m, metadata !489, metadata !DIExpression()), !dbg !492
  %"$gasrem_2284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2285" = icmp ugt i64 1, %"$gasrem_2284"
  br i1 %"$gascmp_2285", label %"$out_of_gas_2286", label %"$have_gas_2287"

"$out_of_gas_2286":                               ; preds = %"$have_gas_2282"
  call void @_out_of_gas()
  br label %"$have_gas_2287"

"$have_gas_2287":                                 ; preds = %"$out_of_gas_2286", %"$have_gas_2282"
  %"$consume_2288" = sub i64 %"$gasrem_2284", 1
  store i64 %"$consume_2288", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_2289", i32 0, i32 0), i32 31 }, %String* %m, align 8, !dbg !493
  %"$gasrem_2290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2291" = icmp ugt i64 1, %"$gasrem_2290"
  br i1 %"$gascmp_2291", label %"$out_of_gas_2292", label %"$have_gas_2293"

"$out_of_gas_2292":                               ; preds = %"$have_gas_2287"
  call void @_out_of_gas()
  br label %"$have_gas_2293"

"$have_gas_2293":                                 ; preds = %"$out_of_gas_2292", %"$have_gas_2287"
  %"$consume_2294" = sub i64 %"$gasrem_2290", 1
  store i64 %"$consume_2294", i64* @_gasrem, align 8
  %"$fail_msg__origin_2295" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2295", align 1
  %"$fail_msg__sender_2296" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2296", align 1
  %"$tname_2297" = load %String, %String* %tname, align 8
  %"$m_2298" = load %String, %String* %m, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2295", [20 x i8]* %"$fail_msg__sender_2296", %String %"$tname_2297", %String %"$m_2298"), !dbg !494
  br label %"$matchsucc_2270"

"$empty_default_2274":                            ; preds = %"$have_gas_2268"
  br label %"$matchsucc_2270"

"$matchsucc_2270":                                ; preds = %"$have_gas_2293", %"$True_2275", %"$empty_default_2274"
  br label %"$matchsucc_2221"

"$None_2299":                                     ; preds = %"$have_gas_2219"
  %"$c1_2300" = bitcast %TName_Option_String* %"$c1_2222" to %CName_None_String*
  %"$gasrem_2301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2302" = icmp ugt i64 1, %"$gasrem_2301"
  br i1 %"$gascmp_2302", label %"$out_of_gas_2303", label %"$have_gas_2304"

"$out_of_gas_2303":                               ; preds = %"$None_2299"
  call void @_out_of_gas()
  br label %"$have_gas_2304"

"$have_gas_2304":                                 ; preds = %"$out_of_gas_2303", %"$None_2299"
  %"$consume_2305" = sub i64 %"$gasrem_2301", 1
  store i64 %"$consume_2305", i64* @_gasrem, align 8
  %m2 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %m2, metadata !495, metadata !DIExpression()), !dbg !497
  %"$gasrem_2306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2307" = icmp ugt i64 1, %"$gasrem_2306"
  br i1 %"$gascmp_2307", label %"$out_of_gas_2308", label %"$have_gas_2309"

"$out_of_gas_2308":                               ; preds = %"$have_gas_2304"
  call void @_out_of_gas()
  br label %"$have_gas_2309"

"$have_gas_2309":                                 ; preds = %"$out_of_gas_2308", %"$have_gas_2304"
  %"$consume_2310" = sub i64 %"$gasrem_2306", 1
  store i64 %"$consume_2310", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_2311", i32 0, i32 0), i32 21 }, %String* %m2, align 8, !dbg !498
  %"$gasrem_2312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2313" = icmp ugt i64 1, %"$gasrem_2312"
  br i1 %"$gascmp_2313", label %"$out_of_gas_2314", label %"$have_gas_2315"

"$out_of_gas_2314":                               ; preds = %"$have_gas_2309"
  call void @_out_of_gas()
  br label %"$have_gas_2315"

"$have_gas_2315":                                 ; preds = %"$out_of_gas_2314", %"$have_gas_2309"
  %"$consume_2316" = sub i64 %"$gasrem_2312", 1
  store i64 %"$consume_2316", i64* @_gasrem, align 8
  %"$fail_msg__origin_2317" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2317", align 1
  %"$fail_msg__sender_2318" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2318", align 1
  %"$tname_2319" = load %String, %String* %tname, align 8
  %"$m_2320" = load %String, %String* %m2, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2317", [20 x i8]* %"$fail_msg__sender_2318", %String %"$tname_2319", %String %"$m_2320"), !dbg !499
  br label %"$matchsucc_2221"

"$empty_default_2225":                            ; preds = %"$have_gas_2219"
  br label %"$matchsucc_2221"

"$matchsucc_2221":                                ; preds = %"$have_gas_2315", %"$matchsucc_2270", %"$empty_default_2225"
  %"$gasrem_2321" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2322" = icmp ugt i64 1, %"$gasrem_2321"
  br i1 %"$gascmp_2322", label %"$out_of_gas_2323", label %"$have_gas_2324"

"$out_of_gas_2323":                               ; preds = %"$matchsucc_2221"
  call void @_out_of_gas()
  br label %"$have_gas_2324"

"$have_gas_2324":                                 ; preds = %"$out_of_gas_2323", %"$matchsucc_2221"
  %"$consume_2325" = sub i64 %"$gasrem_2321", 1
  store i64 %"$consume_2325", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key1b, metadata !500, metadata !DIExpression()), !dbg !501
  %"$gasrem_2326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2327" = icmp ugt i64 1, %"$gasrem_2326"
  br i1 %"$gascmp_2327", label %"$out_of_gas_2328", label %"$have_gas_2329"

"$out_of_gas_2328":                               ; preds = %"$have_gas_2324"
  call void @_out_of_gas()
  br label %"$have_gas_2329"

"$have_gas_2329":                                 ; preds = %"$out_of_gas_2328", %"$have_gas_2324"
  %"$consume_2330" = sub i64 %"$gasrem_2326", 1
  store i64 %"$consume_2330", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2331", i32 0, i32 0), i32 5 }, %String* %key1b, align 8, !dbg !502
  %"$gasrem_2332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2333" = icmp ugt i64 1, %"$gasrem_2332"
  br i1 %"$gascmp_2333", label %"$out_of_gas_2334", label %"$have_gas_2335"

"$out_of_gas_2334":                               ; preds = %"$have_gas_2329"
  call void @_out_of_gas()
  br label %"$have_gas_2335"

"$have_gas_2335":                                 ; preds = %"$out_of_gas_2334", %"$have_gas_2329"
  %"$consume_2336" = sub i64 %"$gasrem_2332", 1
  store i64 %"$consume_2336", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key2c, metadata !503, metadata !DIExpression()), !dbg !504
  %"$gasrem_2337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2338" = icmp ugt i64 1, %"$gasrem_2337"
  br i1 %"$gascmp_2338", label %"$out_of_gas_2339", label %"$have_gas_2340"

"$out_of_gas_2339":                               ; preds = %"$have_gas_2335"
  call void @_out_of_gas()
  br label %"$have_gas_2340"

"$have_gas_2340":                                 ; preds = %"$out_of_gas_2339", %"$have_gas_2335"
  %"$consume_2341" = sub i64 %"$gasrem_2337", 1
  store i64 %"$consume_2341", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2342", i32 0, i32 0), i32 5 }, %String* %key2c, align 8, !dbg !505
  %"$c1_11" = alloca %TName_Option_String*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_String** %"$c1_11", metadata !506, metadata !DIExpression()), !dbg !507
  %"$indices_buf_2343_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2343_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2343_salloc_load", i64 32)
  %"$indices_buf_2343_salloc" = bitcast i8* %"$indices_buf_2343_salloc_salloc" to [32 x i8]*
  %"$indices_buf_2343" = bitcast [32 x i8]* %"$indices_buf_2343_salloc" to i8*
  %"$key1b_2344" = load %String, %String* %key1b, align 8
  %"$indices_gep_2345" = getelementptr i8, i8* %"$indices_buf_2343", i32 0
  %indices_cast3 = bitcast i8* %"$indices_gep_2345" to %String*
  store %String %"$key1b_2344", %String* %indices_cast3, align 8
  %"$key2c_2346" = load %String, %String* %key2c, align 8
  %"$indices_gep_2347" = getelementptr i8, i8* %"$indices_buf_2343", i32 16
  %indices_cast4 = bitcast i8* %"$indices_gep_2347" to %String*
  store %String %"$key2c_2346", %String* %indices_cast4, align 8
  %"$execptr_load_2349" = load i8*, i8** @_execptr, align 8
  %"$$c1_11_call_2350" = call i8* @_fetch_field(i8* %"$execptr_load_2349", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2348", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 2, i8* %"$indices_buf_2343", i32 1), !dbg !507
  %"$$c1_11_2351" = bitcast i8* %"$$c1_11_call_2350" to %TName_Option_String*
  store %TName_Option_String* %"$$c1_11_2351", %TName_Option_String** %"$c1_11", align 8
  %"$$c1_11_2352" = load %TName_Option_String*, %TName_Option_String** %"$c1_11", align 8
  %"$$$c1_11_2352_2353" = bitcast %TName_Option_String* %"$$c1_11_2352" to i8*
  %"$_literal_cost_call_2354" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_72", i8* %"$$$c1_11_2352_2353")
  %"$gasadd_2355" = add i64 %"$_literal_cost_call_2354", 0
  %"$gasadd_2356" = add i64 %"$gasadd_2355", 2
  %"$gasrem_2357" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2358" = icmp ugt i64 %"$gasadd_2356", %"$gasrem_2357"
  br i1 %"$gascmp_2358", label %"$out_of_gas_2359", label %"$have_gas_2360"

"$out_of_gas_2359":                               ; preds = %"$have_gas_2340"
  call void @_out_of_gas()
  br label %"$have_gas_2360"

"$have_gas_2360":                                 ; preds = %"$out_of_gas_2359", %"$have_gas_2340"
  %"$consume_2361" = sub i64 %"$gasrem_2357", %"$gasadd_2356"
  store i64 %"$consume_2361", i64* @_gasrem, align 8
  %"$gasrem_2362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2363" = icmp ugt i64 2, %"$gasrem_2362"
  br i1 %"$gascmp_2363", label %"$out_of_gas_2364", label %"$have_gas_2365"

"$out_of_gas_2364":                               ; preds = %"$have_gas_2360"
  call void @_out_of_gas()
  br label %"$have_gas_2365"

"$have_gas_2365":                                 ; preds = %"$out_of_gas_2364", %"$have_gas_2360"
  %"$consume_2366" = sub i64 %"$gasrem_2362", 2
  store i64 %"$consume_2366", i64* @_gasrem, align 8
  %"$$c1_11_2368" = load %TName_Option_String*, %TName_Option_String** %"$c1_11", align 8
  %"$$c1_11_tag_2369" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$$c1_11_2368", i32 0, i32 0
  %"$$c1_11_tag_2370" = load i8, i8* %"$$c1_11_tag_2369", align 1
  switch i8 %"$$c1_11_tag_2370", label %"$empty_default_2371" [
    i8 0, label %"$Some_2372"
    i8 1, label %"$None_2445"
  ], !dbg !508

"$Some_2372":                                     ; preds = %"$have_gas_2365"
  %"$$c1_11_2373" = bitcast %TName_Option_String* %"$$c1_11_2368" to %CName_Some_String*
  %"$c_gep_2374" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$$c1_11_2373", i32 0, i32 1
  %"$c_load_2375" = load %String, %String* %"$c_gep_2374", align 8
  %c5 = alloca %String, align 8
  store %String %"$c_load_2375", %String* %c5, align 8
  %"$gasrem_2376" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2377" = icmp ugt i64 1, %"$gasrem_2376"
  br i1 %"$gascmp_2377", label %"$out_of_gas_2378", label %"$have_gas_2379"

"$out_of_gas_2378":                               ; preds = %"$Some_2372"
  call void @_out_of_gas()
  br label %"$have_gas_2379"

"$have_gas_2379":                                 ; preds = %"$out_of_gas_2378", %"$Some_2372"
  %"$consume_2380" = sub i64 %"$gasrem_2376", 1
  store i64 %"$consume_2380", i64* @_gasrem, align 8
  %v6 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %v6, metadata !509, metadata !DIExpression()), !dbg !512
  %"$gasrem_2381" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2382" = icmp ugt i64 1, %"$gasrem_2381"
  br i1 %"$gascmp_2382", label %"$out_of_gas_2383", label %"$have_gas_2384"

"$out_of_gas_2383":                               ; preds = %"$have_gas_2379"
  call void @_out_of_gas()
  br label %"$have_gas_2384"

"$have_gas_2384":                                 ; preds = %"$out_of_gas_2383", %"$have_gas_2379"
  %"$consume_2385" = sub i64 %"$gasrem_2381", 1
  store i64 %"$consume_2385", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2386", i32 0, i32 0), i32 3 }, %String* %v6, align 8, !dbg !513
  %"$gasrem_2387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2388" = icmp ugt i64 1, %"$gasrem_2387"
  br i1 %"$gascmp_2388", label %"$out_of_gas_2389", label %"$have_gas_2390"

"$out_of_gas_2389":                               ; preds = %"$have_gas_2384"
  call void @_out_of_gas()
  br label %"$have_gas_2390"

"$have_gas_2390":                                 ; preds = %"$out_of_gas_2389", %"$have_gas_2384"
  %"$consume_2391" = sub i64 %"$gasrem_2387", 1
  store i64 %"$consume_2391", i64* @_gasrem, align 8
  %eq7 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %eq7, metadata !514, metadata !DIExpression()), !dbg !515
  %"$_literal_cost_c_2392" = alloca %String, align 8
  %"$c_2393" = load %String, %String* %c5, align 8
  store %String %"$c_2393", %String* %"$_literal_cost_c_2392", align 8
  %"$$_literal_cost_c_2392_2394" = bitcast %String* %"$_literal_cost_c_2392" to i8*
  %"$_literal_cost_call_2395" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_c_2392_2394")
  %"$_literal_cost_v_2396" = alloca %String, align 8
  %"$v_2397" = load %String, %String* %v6, align 8
  store %String %"$v_2397", %String* %"$_literal_cost_v_2396", align 8
  %"$$_literal_cost_v_2396_2398" = bitcast %String* %"$_literal_cost_v_2396" to i8*
  %"$_literal_cost_call_2399" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v_2396_2398")
  %"$gasmin_2400" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_2395", i64 %"$_literal_cost_call_2399")
  %"$gasrem_2401" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2402" = icmp ugt i64 %"$gasmin_2400", %"$gasrem_2401"
  br i1 %"$gascmp_2402", label %"$out_of_gas_2403", label %"$have_gas_2404"

"$out_of_gas_2403":                               ; preds = %"$have_gas_2390"
  call void @_out_of_gas()
  br label %"$have_gas_2404"

"$have_gas_2404":                                 ; preds = %"$out_of_gas_2403", %"$have_gas_2390"
  %"$consume_2405" = sub i64 %"$gasrem_2401", %"$gasmin_2400"
  store i64 %"$consume_2405", i64* @_gasrem, align 8
  %"$execptr_load_2406" = load i8*, i8** @_execptr, align 8
  %"$c_2407" = load %String, %String* %c5, align 8
  %"$v_2408" = load %String, %String* %v6, align 8
  %"$eq_call_2409" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_2406", %String %"$c_2407", %String %"$v_2408"), !dbg !516
  store %TName_Bool* %"$eq_call_2409", %TName_Bool** %eq7, align 8, !dbg !516
  %"$gasrem_2411" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2412" = icmp ugt i64 2, %"$gasrem_2411"
  br i1 %"$gascmp_2412", label %"$out_of_gas_2413", label %"$have_gas_2414"

"$out_of_gas_2413":                               ; preds = %"$have_gas_2404"
  call void @_out_of_gas()
  br label %"$have_gas_2414"

"$have_gas_2414":                                 ; preds = %"$out_of_gas_2413", %"$have_gas_2404"
  %"$consume_2415" = sub i64 %"$gasrem_2411", 2
  store i64 %"$consume_2415", i64* @_gasrem, align 8
  %"$eq_2417" = load %TName_Bool*, %TName_Bool** %eq7, align 8
  %"$eq_tag_2418" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_2417", i32 0, i32 0
  %"$eq_tag_2419" = load i8, i8* %"$eq_tag_2418", align 1
  switch i8 %"$eq_tag_2419", label %"$empty_default_2420" [
    i8 0, label %"$True_2421"
    i8 1, label %"$False_2423"
  ], !dbg !517

"$True_2421":                                     ; preds = %"$have_gas_2414"
  %"$eq_2422" = bitcast %TName_Bool* %"$eq_2417" to %CName_True*
  br label %"$matchsucc_2416"

"$False_2423":                                    ; preds = %"$have_gas_2414"
  %"$eq_2424" = bitcast %TName_Bool* %"$eq_2417" to %CName_False*
  %"$gasrem_2425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2426" = icmp ugt i64 1, %"$gasrem_2425"
  br i1 %"$gascmp_2426", label %"$out_of_gas_2427", label %"$have_gas_2428"

"$out_of_gas_2427":                               ; preds = %"$False_2423"
  call void @_out_of_gas()
  br label %"$have_gas_2428"

"$have_gas_2428":                                 ; preds = %"$out_of_gas_2427", %"$False_2423"
  %"$consume_2429" = sub i64 %"$gasrem_2425", 1
  store i64 %"$consume_2429", i64* @_gasrem, align 8
  %m8 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %m8, metadata !518, metadata !DIExpression()), !dbg !521
  %"$gasrem_2430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2431" = icmp ugt i64 1, %"$gasrem_2430"
  br i1 %"$gascmp_2431", label %"$out_of_gas_2432", label %"$have_gas_2433"

"$out_of_gas_2432":                               ; preds = %"$have_gas_2428"
  call void @_out_of_gas()
  br label %"$have_gas_2433"

"$have_gas_2433":                                 ; preds = %"$out_of_gas_2432", %"$have_gas_2428"
  %"$consume_2434" = sub i64 %"$gasrem_2430", 1
  store i64 %"$consume_2434", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([31 x i8], [31 x i8]* @"$stringlit_2435", i32 0, i32 0), i32 31 }, %String* %m8, align 8, !dbg !522
  %"$gasrem_2436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2437" = icmp ugt i64 1, %"$gasrem_2436"
  br i1 %"$gascmp_2437", label %"$out_of_gas_2438", label %"$have_gas_2439"

"$out_of_gas_2438":                               ; preds = %"$have_gas_2433"
  call void @_out_of_gas()
  br label %"$have_gas_2439"

"$have_gas_2439":                                 ; preds = %"$out_of_gas_2438", %"$have_gas_2433"
  %"$consume_2440" = sub i64 %"$gasrem_2436", 1
  store i64 %"$consume_2440", i64* @_gasrem, align 8
  %"$fail_msg__origin_2441" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2441", align 1
  %"$fail_msg__sender_2442" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2442", align 1
  %"$tname_2443" = load %String, %String* %tname, align 8
  %"$m_2444" = load %String, %String* %m8, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2441", [20 x i8]* %"$fail_msg__sender_2442", %String %"$tname_2443", %String %"$m_2444"), !dbg !523
  br label %"$matchsucc_2416"

"$empty_default_2420":                            ; preds = %"$have_gas_2414"
  br label %"$matchsucc_2416"

"$matchsucc_2416":                                ; preds = %"$have_gas_2439", %"$True_2421", %"$empty_default_2420"
  br label %"$matchsucc_2367"

"$None_2445":                                     ; preds = %"$have_gas_2365"
  %"$$c1_11_2446" = bitcast %TName_Option_String* %"$$c1_11_2368" to %CName_None_String*
  %"$gasrem_2447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2448" = icmp ugt i64 1, %"$gasrem_2447"
  br i1 %"$gascmp_2448", label %"$out_of_gas_2449", label %"$have_gas_2450"

"$out_of_gas_2449":                               ; preds = %"$None_2445"
  call void @_out_of_gas()
  br label %"$have_gas_2450"

"$have_gas_2450":                                 ; preds = %"$out_of_gas_2449", %"$None_2445"
  %"$consume_2451" = sub i64 %"$gasrem_2447", 1
  store i64 %"$consume_2451", i64* @_gasrem, align 8
  %m9 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %m9, metadata !524, metadata !DIExpression()), !dbg !526
  %"$gasrem_2452" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2453" = icmp ugt i64 1, %"$gasrem_2452"
  br i1 %"$gascmp_2453", label %"$out_of_gas_2454", label %"$have_gas_2455"

"$out_of_gas_2454":                               ; preds = %"$have_gas_2450"
  call void @_out_of_gas()
  br label %"$have_gas_2455"

"$have_gas_2455":                                 ; preds = %"$out_of_gas_2454", %"$have_gas_2450"
  %"$consume_2456" = sub i64 %"$gasrem_2452", 1
  store i64 %"$consume_2456", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$stringlit_2457", i32 0, i32 0), i32 21 }, %String* %m9, align 8, !dbg !527
  %"$gasrem_2458" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2459" = icmp ugt i64 1, %"$gasrem_2458"
  br i1 %"$gascmp_2459", label %"$out_of_gas_2460", label %"$have_gas_2461"

"$out_of_gas_2460":                               ; preds = %"$have_gas_2455"
  call void @_out_of_gas()
  br label %"$have_gas_2461"

"$have_gas_2461":                                 ; preds = %"$out_of_gas_2460", %"$have_gas_2455"
  %"$consume_2462" = sub i64 %"$gasrem_2458", 1
  store i64 %"$consume_2462", i64* @_gasrem, align 8
  %"$fail_msg__origin_2463" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2463", align 1
  %"$fail_msg__sender_2464" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2464", align 1
  %"$tname_2465" = load %String, %String* %tname, align 8
  %"$m_2466" = load %String, %String* %m9, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2463", [20 x i8]* %"$fail_msg__sender_2464", %String %"$tname_2465", %String %"$m_2466"), !dbg !528
  br label %"$matchsucc_2367"

"$empty_default_2371":                            ; preds = %"$have_gas_2365"
  br label %"$matchsucc_2367"

"$matchsucc_2367":                                ; preds = %"$have_gas_2461", %"$matchsucc_2416", %"$empty_default_2371"
  %"$gasrem_2467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2468" = icmp ugt i64 1, %"$gasrem_2467"
  br i1 %"$gascmp_2468", label %"$out_of_gas_2469", label %"$have_gas_2470"

"$out_of_gas_2469":                               ; preds = %"$matchsucc_2367"
  call void @_out_of_gas()
  br label %"$have_gas_2470"

"$have_gas_2470":                                 ; preds = %"$out_of_gas_2469", %"$matchsucc_2367"
  %"$consume_2471" = sub i64 %"$gasrem_2467", 1
  store i64 %"$consume_2471", i64* @_gasrem, align 8
  %em = alloca %Map_String_String*, align 8
  call void @llvm.dbg.declare(metadata %Map_String_String** %em, metadata !529, metadata !DIExpression()), !dbg !530
  %"$gasrem_2472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2473" = icmp ugt i64 1, %"$gasrem_2472"
  br i1 %"$gascmp_2473", label %"$out_of_gas_2474", label %"$have_gas_2475"

"$out_of_gas_2474":                               ; preds = %"$have_gas_2470"
  call void @_out_of_gas()
  br label %"$have_gas_2475"

"$have_gas_2475":                                 ; preds = %"$out_of_gas_2474", %"$have_gas_2470"
  %"$consume_2476" = sub i64 %"$gasrem_2472", 1
  store i64 %"$consume_2476", i64* @_gasrem, align 8
  %"$execptr_load_2477" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2478" = call i8* @_new_empty_map(i8* %"$execptr_load_2477")
  %"$_new_empty_map_2479" = bitcast i8* %"$_new_empty_map_call_2478" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_2479", %Map_String_String** %em, align 8, !dbg !531
  %"$em_2480" = load %Map_String_String*, %Map_String_String** %em, align 8
  %"$$em_2480_2481" = bitcast %Map_String_String* %"$em_2480" to i8*
  %"$_literal_cost_call_2482" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$em_2480_2481")
  %"$gasrem_2483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2484" = icmp ugt i64 %"$_literal_cost_call_2482", %"$gasrem_2483"
  br i1 %"$gascmp_2484", label %"$out_of_gas_2485", label %"$have_gas_2486"

"$out_of_gas_2485":                               ; preds = %"$have_gas_2475"
  call void @_out_of_gas()
  br label %"$have_gas_2486"

"$have_gas_2486":                                 ; preds = %"$out_of_gas_2485", %"$have_gas_2475"
  %"$consume_2487" = sub i64 %"$gasrem_2483", %"$_literal_cost_call_2482"
  store i64 %"$consume_2487", i64* @_gasrem, align 8
  %"$execptr_load_2488" = load i8*, i8** @_execptr, align 8
  %"$em_2490" = load %Map_String_String*, %Map_String_String** %em, align 8
  %"$update_value_2491" = bitcast %Map_String_String* %"$em_2490" to i8*
  call void @_update_field(i8* %"$execptr_load_2488", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2489", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_77", i32 0, i8* null, i8* %"$update_value_2491"), !dbg !532
  ret void
}

define void @t8(i8* %0) !dbg !533 {
entry:
  %"$_amount_2496" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2497" = bitcast i8* %"$_amount_2496" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2497", align 8
  %"$_origin_2498" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2499" = bitcast i8* %"$_origin_2498" to [20 x i8]*
  %"$_sender_2500" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2501" = bitcast i8* %"$_sender_2500" to [20 x i8]*
  call void @"$t8_2161"(%Uint128 %_amount, [20 x i8]* %"$_origin_2499", [20 x i8]* %"$_sender_2501"), !dbg !534
  ret void
}

define internal void @"$t9_2502"(%Uint128 %_amount, [20 x i8]* %"$_origin_2503", [20 x i8]* %"$_sender_2504") !dbg !535 {
entry:
  %"$_sender_2653" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_2504", [20 x i8]** %"$_sender_2653", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_2653", metadata !536, metadata !DIExpression()), !dbg !537
  %"$_origin_2652" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_2503", [20 x i8]** %"$_origin_2652", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_2652", metadata !538, metadata !DIExpression()), !dbg !537
  %"$_amount_2651" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_2651", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_2651", metadata !539, metadata !DIExpression()), !dbg !537
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2503", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2504", align 1
  %"$gasrem_2505" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2506" = icmp ugt i64 1, %"$gasrem_2505"
  br i1 %"$gascmp_2506", label %"$out_of_gas_2507", label %"$have_gas_2508"

"$out_of_gas_2507":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2508"

"$have_gas_2508":                                 ; preds = %"$out_of_gas_2507", %entry
  %"$consume_2509" = sub i64 %"$gasrem_2505", 1
  store i64 %"$consume_2509", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %tname, metadata !540, metadata !DIExpression()), !dbg !541
  %"$gasrem_2510" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2511" = icmp ugt i64 1, %"$gasrem_2510"
  br i1 %"$gascmp_2511", label %"$out_of_gas_2512", label %"$have_gas_2513"

"$out_of_gas_2512":                               ; preds = %"$have_gas_2508"
  call void @_out_of_gas()
  br label %"$have_gas_2513"

"$have_gas_2513":                                 ; preds = %"$out_of_gas_2512", %"$have_gas_2508"
  %"$consume_2514" = sub i64 %"$gasrem_2510", 1
  store i64 %"$consume_2514", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$stringlit_2515", i32 0, i32 0), i32 2 }, %String* %tname, align 8, !dbg !542
  %m1 = alloca %Map_String_String*, align 8
  call void @llvm.dbg.declare(metadata %Map_String_String** %m1, metadata !543, metadata !DIExpression()), !dbg !544
  %"$execptr_load_2517" = load i8*, i8** @_execptr, align 8
  %"$m1_call_2518" = call i8* @_fetch_field(i8* %"$execptr_load_2517", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2516", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_77", i32 0, i8* null, i32 1), !dbg !544
  %"$m1_2519" = bitcast i8* %"$m1_call_2518" to %Map_String_String*
  store %Map_String_String* %"$m1_2519", %Map_String_String** %m1, align 8
  %"$m1_2520" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2520_2521" = bitcast %Map_String_String* %"$m1_2520" to i8*
  %"$_literal_cost_call_2522" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$m1_2520_2521")
  %"$m1_2523" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2523_2524" = bitcast %Map_String_String* %"$m1_2523" to i8*
  %"$_mapsortcost_call_2525" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$m1_2523_2524")
  %"$gasadd_2526" = add i64 %"$_literal_cost_call_2522", %"$_mapsortcost_call_2525"
  %"$gasrem_2527" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2528" = icmp ugt i64 %"$gasadd_2526", %"$gasrem_2527"
  br i1 %"$gascmp_2528", label %"$out_of_gas_2529", label %"$have_gas_2530"

"$out_of_gas_2529":                               ; preds = %"$have_gas_2513"
  call void @_out_of_gas()
  br label %"$have_gas_2530"

"$have_gas_2530":                                 ; preds = %"$out_of_gas_2529", %"$have_gas_2513"
  %"$consume_2531" = sub i64 %"$gasrem_2527", %"$gasadd_2526"
  store i64 %"$consume_2531", i64* @_gasrem, align 8
  %"$gasrem_2532" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2533" = icmp ugt i64 1, %"$gasrem_2532"
  br i1 %"$gascmp_2533", label %"$out_of_gas_2534", label %"$have_gas_2535"

"$out_of_gas_2534":                               ; preds = %"$have_gas_2530"
  call void @_out_of_gas()
  br label %"$have_gas_2535"

"$have_gas_2535":                                 ; preds = %"$out_of_gas_2534", %"$have_gas_2530"
  %"$consume_2536" = sub i64 %"$gasrem_2532", 1
  store i64 %"$consume_2536", i64* @_gasrem, align 8
  %m1_size = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %m1_size, metadata !545, metadata !DIExpression()), !dbg !547
  %"$gasrem_2537" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2538" = icmp ugt i64 1, %"$gasrem_2537"
  br i1 %"$gascmp_2538", label %"$out_of_gas_2539", label %"$have_gas_2540"

"$out_of_gas_2539":                               ; preds = %"$have_gas_2535"
  call void @_out_of_gas()
  br label %"$have_gas_2540"

"$have_gas_2540":                                 ; preds = %"$out_of_gas_2539", %"$have_gas_2535"
  %"$consume_2541" = sub i64 %"$gasrem_2537", 1
  store i64 %"$consume_2541", i64* @_gasrem, align 8
  %"$m1_2542" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2542_2543" = bitcast %Map_String_String* %"$m1_2542" to i8*
  %"$size_call_2544" = call %Uint32 @_size(i8* %"$$m1_2542_2543"), !dbg !548
  store %Uint32 %"$size_call_2544", %Uint32* %m1_size, align 4, !dbg !548
  %"$gasrem_2545" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2546" = icmp ugt i64 1, %"$gasrem_2545"
  br i1 %"$gascmp_2546", label %"$out_of_gas_2547", label %"$have_gas_2548"

"$out_of_gas_2547":                               ; preds = %"$have_gas_2540"
  call void @_out_of_gas()
  br label %"$have_gas_2548"

"$have_gas_2548":                                 ; preds = %"$out_of_gas_2547", %"$have_gas_2540"
  %"$consume_2549" = sub i64 %"$gasrem_2545", 1
  store i64 %"$consume_2549", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %zero, metadata !549, metadata !DIExpression()), !dbg !550
  %"$gasrem_2550" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2551" = icmp ugt i64 1, %"$gasrem_2550"
  br i1 %"$gascmp_2551", label %"$out_of_gas_2552", label %"$have_gas_2553"

"$out_of_gas_2552":                               ; preds = %"$have_gas_2548"
  call void @_out_of_gas()
  br label %"$have_gas_2553"

"$have_gas_2553":                                 ; preds = %"$out_of_gas_2552", %"$have_gas_2548"
  %"$consume_2554" = sub i64 %"$gasrem_2550", 1
  store i64 %"$consume_2554", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4, !dbg !551
  %"$gasrem_2555" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2556" = icmp ugt i64 1, %"$gasrem_2555"
  br i1 %"$gascmp_2556", label %"$out_of_gas_2557", label %"$have_gas_2558"

"$out_of_gas_2557":                               ; preds = %"$have_gas_2553"
  call void @_out_of_gas()
  br label %"$have_gas_2558"

"$have_gas_2558":                                 ; preds = %"$out_of_gas_2557", %"$have_gas_2553"
  %"$consume_2559" = sub i64 %"$gasrem_2555", 1
  store i64 %"$consume_2559", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %is_empty, metadata !552, metadata !DIExpression()), !dbg !553
  %"$gasrem_2560" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2561" = icmp ugt i64 4, %"$gasrem_2560"
  br i1 %"$gascmp_2561", label %"$out_of_gas_2562", label %"$have_gas_2563"

"$out_of_gas_2562":                               ; preds = %"$have_gas_2558"
  call void @_out_of_gas()
  br label %"$have_gas_2563"

"$have_gas_2563":                                 ; preds = %"$out_of_gas_2562", %"$have_gas_2558"
  %"$consume_2564" = sub i64 %"$gasrem_2560", 4
  store i64 %"$consume_2564", i64* @_gasrem, align 8
  %"$execptr_load_2565" = load i8*, i8** @_execptr, align 8
  %"$m1_size_2566" = load %Uint32, %Uint32* %m1_size, align 4
  %"$zero_2567" = load %Uint32, %Uint32* %zero, align 4
  %"$eq_call_2568" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_2565", %Uint32 %"$m1_size_2566", %Uint32 %"$zero_2567"), !dbg !554
  store %TName_Bool* %"$eq_call_2568", %TName_Bool** %is_empty, align 8, !dbg !554
  %"$gasrem_2570" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2571" = icmp ugt i64 2, %"$gasrem_2570"
  br i1 %"$gascmp_2571", label %"$out_of_gas_2572", label %"$have_gas_2573"

"$out_of_gas_2572":                               ; preds = %"$have_gas_2563"
  call void @_out_of_gas()
  br label %"$have_gas_2573"

"$have_gas_2573":                                 ; preds = %"$out_of_gas_2572", %"$have_gas_2563"
  %"$consume_2574" = sub i64 %"$gasrem_2570", 2
  store i64 %"$consume_2574", i64* @_gasrem, align 8
  %"$is_empty_2576" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_2577" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_2576", i32 0, i32 0
  %"$is_empty_tag_2578" = load i8, i8* %"$is_empty_tag_2577", align 1
  switch i8 %"$is_empty_tag_2578", label %"$empty_default_2579" [
    i8 0, label %"$True_2580"
    i8 1, label %"$False_2582"
  ], !dbg !555

"$True_2580":                                     ; preds = %"$have_gas_2573"
  %"$is_empty_2581" = bitcast %TName_Bool* %"$is_empty_2576" to %CName_True*
  br label %"$matchsucc_2575"

"$False_2582":                                    ; preds = %"$have_gas_2573"
  %"$is_empty_2583" = bitcast %TName_Bool* %"$is_empty_2576" to %CName_False*
  %"$gasrem_2584" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2585" = icmp ugt i64 1, %"$gasrem_2584"
  br i1 %"$gascmp_2585", label %"$out_of_gas_2586", label %"$have_gas_2587"

"$out_of_gas_2586":                               ; preds = %"$False_2582"
  call void @_out_of_gas()
  br label %"$have_gas_2587"

"$have_gas_2587":                                 ; preds = %"$out_of_gas_2586", %"$False_2582"
  %"$consume_2588" = sub i64 %"$gasrem_2584", 1
  store i64 %"$consume_2588", i64* @_gasrem, align 8
  %"$fail__origin_2589" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_2589", align 1
  %"$fail__sender_2590" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_2590", align 1
  %"$tname_2591" = load %String, %String* %tname, align 8
  call void @"$fail_254"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_2589", [20 x i8]* %"$fail__sender_2590", %String %"$tname_2591"), !dbg !556
  br label %"$matchsucc_2575"

"$empty_default_2579":                            ; preds = %"$have_gas_2573"
  br label %"$matchsucc_2575"

"$matchsucc_2575":                                ; preds = %"$have_gas_2587", %"$True_2580", %"$empty_default_2579"
  %"$gasrem_2592" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2593" = icmp ugt i64 1, %"$gasrem_2592"
  br i1 %"$gascmp_2593", label %"$out_of_gas_2594", label %"$have_gas_2595"

"$out_of_gas_2594":                               ; preds = %"$matchsucc_2575"
  call void @_out_of_gas()
  br label %"$have_gas_2595"

"$have_gas_2595":                                 ; preds = %"$out_of_gas_2594", %"$matchsucc_2575"
  %"$consume_2596" = sub i64 %"$gasrem_2592", 1
  store i64 %"$consume_2596", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key1a, metadata !559, metadata !DIExpression()), !dbg !560
  %"$gasrem_2597" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2598" = icmp ugt i64 1, %"$gasrem_2597"
  br i1 %"$gascmp_2598", label %"$out_of_gas_2599", label %"$have_gas_2600"

"$out_of_gas_2599":                               ; preds = %"$have_gas_2595"
  call void @_out_of_gas()
  br label %"$have_gas_2600"

"$have_gas_2600":                                 ; preds = %"$out_of_gas_2599", %"$have_gas_2595"
  %"$consume_2601" = sub i64 %"$gasrem_2597", 1
  store i64 %"$consume_2601", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2602", i32 0, i32 0), i32 5 }, %String* %key1a, align 8, !dbg !561
  %"$gasrem_2603" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2604" = icmp ugt i64 1, %"$gasrem_2603"
  br i1 %"$gascmp_2604", label %"$out_of_gas_2605", label %"$have_gas_2606"

"$out_of_gas_2605":                               ; preds = %"$have_gas_2600"
  call void @_out_of_gas()
  br label %"$have_gas_2606"

"$have_gas_2606":                                 ; preds = %"$out_of_gas_2605", %"$have_gas_2600"
  %"$consume_2607" = sub i64 %"$gasrem_2603", 1
  store i64 %"$consume_2607", i64* @_gasrem, align 8
  %val = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %val, metadata !562, metadata !DIExpression()), !dbg !563
  %"$gasrem_2608" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2609" = icmp ugt i64 1, %"$gasrem_2608"
  br i1 %"$gascmp_2609", label %"$out_of_gas_2610", label %"$have_gas_2611"

"$out_of_gas_2610":                               ; preds = %"$have_gas_2606"
  call void @_out_of_gas()
  br label %"$have_gas_2611"

"$have_gas_2611":                                 ; preds = %"$out_of_gas_2610", %"$have_gas_2606"
  %"$consume_2612" = sub i64 %"$gasrem_2608", 1
  store i64 %"$consume_2612", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2613", i32 0, i32 0), i32 3 }, %String* %val, align 8, !dbg !564
  %"$gasrem_2614" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2615" = icmp ugt i64 1, %"$gasrem_2614"
  br i1 %"$gascmp_2615", label %"$out_of_gas_2616", label %"$have_gas_2617"

"$out_of_gas_2616":                               ; preds = %"$have_gas_2611"
  call void @_out_of_gas()
  br label %"$have_gas_2617"

"$have_gas_2617":                                 ; preds = %"$out_of_gas_2616", %"$have_gas_2611"
  %"$consume_2618" = sub i64 %"$gasrem_2614", 1
  store i64 %"$consume_2618", i64* @_gasrem, align 8
  %"$m1_12" = alloca %Map_String_String*, align 8
  call void @llvm.dbg.declare(metadata %Map_String_String** %"$m1_12", metadata !565, metadata !DIExpression()), !dbg !566
  %"$m1_2619" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2619_2620" = bitcast %Map_String_String* %"$m1_2619" to i8*
  %"$_lengthof_call_2621" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$m1_2619_2620")
  %"$gasadd_2622" = add i64 1, %"$_lengthof_call_2621"
  %"$gasrem_2623" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2624" = icmp ugt i64 %"$gasadd_2622", %"$gasrem_2623"
  br i1 %"$gascmp_2624", label %"$out_of_gas_2625", label %"$have_gas_2626"

"$out_of_gas_2625":                               ; preds = %"$have_gas_2617"
  call void @_out_of_gas()
  br label %"$have_gas_2626"

"$have_gas_2626":                                 ; preds = %"$out_of_gas_2625", %"$have_gas_2617"
  %"$consume_2627" = sub i64 %"$gasrem_2623", %"$gasadd_2622"
  store i64 %"$consume_2627", i64* @_gasrem, align 8
  %"$execptr_load_2628" = load i8*, i8** @_execptr, align 8
  %"$m1_2629" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2629_2630" = bitcast %Map_String_String* %"$m1_2629" to i8*
  %"$put_key1a_2631" = alloca %String, align 8
  %"$key1a_2632" = load %String, %String* %key1a, align 8
  store %String %"$key1a_2632", %String* %"$put_key1a_2631", align 8
  %"$$put_key1a_2631_2633" = bitcast %String* %"$put_key1a_2631" to i8*
  %"$put_val_2634" = alloca %String, align 8
  %"$val_2635" = load %String, %String* %val, align 8
  store %String %"$val_2635", %String* %"$put_val_2634", align 8
  %"$$put_val_2634_2636" = bitcast %String* %"$put_val_2634" to i8*
  %"$put_call_2637" = call i8* @_put(i8* %"$execptr_load_2628", %_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$m1_2629_2630", i8* %"$$put_key1a_2631_2633", i8* %"$$put_val_2634_2636"), !dbg !567
  %"$put_2638" = bitcast i8* %"$put_call_2637" to %Map_String_String*
  store %Map_String_String* %"$put_2638", %Map_String_String** %"$m1_12", align 8, !dbg !567
  %"$$m1_12_2639" = load %Map_String_String*, %Map_String_String** %"$m1_12", align 8
  %"$$$m1_12_2639_2640" = bitcast %Map_String_String* %"$$m1_12_2639" to i8*
  %"$_literal_cost_call_2641" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$$m1_12_2639_2640")
  %"$gasrem_2642" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2643" = icmp ugt i64 %"$_literal_cost_call_2641", %"$gasrem_2642"
  br i1 %"$gascmp_2643", label %"$out_of_gas_2644", label %"$have_gas_2645"

"$out_of_gas_2644":                               ; preds = %"$have_gas_2626"
  call void @_out_of_gas()
  br label %"$have_gas_2645"

"$have_gas_2645":                                 ; preds = %"$out_of_gas_2644", %"$have_gas_2626"
  %"$consume_2646" = sub i64 %"$gasrem_2642", %"$_literal_cost_call_2641"
  store i64 %"$consume_2646", i64* @_gasrem, align 8
  %"$execptr_load_2647" = load i8*, i8** @_execptr, align 8
  %"$$m1_12_2649" = load %Map_String_String*, %Map_String_String** %"$m1_12", align 8
  %"$update_value_2650" = bitcast %Map_String_String* %"$$m1_12_2649" to i8*
  call void @_update_field(i8* %"$execptr_load_2647", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2648", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_77", i32 0, i8* null, i8* %"$update_value_2650"), !dbg !568
  ret void
}

declare %Uint32 @_size(i8*)

declare %TName_Bool* @_eq_Uint32(i8*, %Uint32, %Uint32)

define void @t9(i8* %0) !dbg !569 {
entry:
  %"$_amount_2655" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2656" = bitcast i8* %"$_amount_2655" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2656", align 8
  %"$_origin_2657" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2658" = bitcast i8* %"$_origin_2657" to [20 x i8]*
  %"$_sender_2659" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2660" = bitcast i8* %"$_sender_2659" to [20 x i8]*
  call void @"$t9_2502"(%Uint128 %_amount, [20 x i8]* %"$_origin_2658", [20 x i8]* %"$_sender_2660"), !dbg !570
  ret void
}

define internal void @"$t10_2661"(%Uint128 %_amount, [20 x i8]* %"$_origin_2662", [20 x i8]* %"$_sender_2663") !dbg !571 {
entry:
  %"$_sender_2837" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_2663", [20 x i8]** %"$_sender_2837", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_2837", metadata !572, metadata !DIExpression()), !dbg !573
  %"$_origin_2836" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_2662", [20 x i8]** %"$_origin_2836", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_2836", metadata !574, metadata !DIExpression()), !dbg !573
  %"$_amount_2835" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_2835", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_2835", metadata !575, metadata !DIExpression()), !dbg !573
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2662", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2663", align 1
  %"$gasrem_2664" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2665" = icmp ugt i64 1, %"$gasrem_2664"
  br i1 %"$gascmp_2665", label %"$out_of_gas_2666", label %"$have_gas_2667"

"$out_of_gas_2666":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2667"

"$have_gas_2667":                                 ; preds = %"$out_of_gas_2666", %entry
  %"$consume_2668" = sub i64 %"$gasrem_2664", 1
  store i64 %"$consume_2668", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %tname, metadata !576, metadata !DIExpression()), !dbg !577
  %"$gasrem_2669" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2670" = icmp ugt i64 1, %"$gasrem_2669"
  br i1 %"$gascmp_2670", label %"$out_of_gas_2671", label %"$have_gas_2672"

"$out_of_gas_2671":                               ; preds = %"$have_gas_2667"
  call void @_out_of_gas()
  br label %"$have_gas_2672"

"$have_gas_2672":                                 ; preds = %"$out_of_gas_2671", %"$have_gas_2667"
  %"$consume_2673" = sub i64 %"$gasrem_2669", 1
  store i64 %"$consume_2673", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2674", i32 0, i32 0), i32 3 }, %String* %tname, align 8, !dbg !578
  %"$gasrem_2675" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2676" = icmp ugt i64 1, %"$gasrem_2675"
  br i1 %"$gascmp_2676", label %"$out_of_gas_2677", label %"$have_gas_2678"

"$out_of_gas_2677":                               ; preds = %"$have_gas_2672"
  call void @_out_of_gas()
  br label %"$have_gas_2678"

"$have_gas_2678":                                 ; preds = %"$out_of_gas_2677", %"$have_gas_2672"
  %"$consume_2679" = sub i64 %"$gasrem_2675", 1
  store i64 %"$consume_2679", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key1a, metadata !579, metadata !DIExpression()), !dbg !580
  %"$gasrem_2680" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2681" = icmp ugt i64 1, %"$gasrem_2680"
  br i1 %"$gascmp_2681", label %"$out_of_gas_2682", label %"$have_gas_2683"

"$out_of_gas_2682":                               ; preds = %"$have_gas_2678"
  call void @_out_of_gas()
  br label %"$have_gas_2683"

"$have_gas_2683":                                 ; preds = %"$out_of_gas_2682", %"$have_gas_2678"
  %"$consume_2684" = sub i64 %"$gasrem_2680", 1
  store i64 %"$consume_2684", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_2685", i32 0, i32 0), i32 5 }, %String* %key1a, align 8, !dbg !581
  %m1 = alloca %Map_String_String*, align 8
  call void @llvm.dbg.declare(metadata %Map_String_String** %m1, metadata !582, metadata !DIExpression()), !dbg !583
  %"$execptr_load_2687" = load i8*, i8** @_execptr, align 8
  %"$m1_call_2688" = call i8* @_fetch_field(i8* %"$execptr_load_2687", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2686", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_77", i32 0, i8* null, i32 1), !dbg !583
  %"$m1_2689" = bitcast i8* %"$m1_call_2688" to %Map_String_String*
  store %Map_String_String* %"$m1_2689", %Map_String_String** %m1, align 8
  %"$m1_2690" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2690_2691" = bitcast %Map_String_String* %"$m1_2690" to i8*
  %"$_literal_cost_call_2692" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$m1_2690_2691")
  %"$m1_2693" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2693_2694" = bitcast %Map_String_String* %"$m1_2693" to i8*
  %"$_mapsortcost_call_2695" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$m1_2693_2694")
  %"$gasadd_2696" = add i64 %"$_literal_cost_call_2692", %"$_mapsortcost_call_2695"
  %"$gasrem_2697" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2698" = icmp ugt i64 %"$gasadd_2696", %"$gasrem_2697"
  br i1 %"$gascmp_2698", label %"$out_of_gas_2699", label %"$have_gas_2700"

"$out_of_gas_2699":                               ; preds = %"$have_gas_2683"
  call void @_out_of_gas()
  br label %"$have_gas_2700"

"$have_gas_2700":                                 ; preds = %"$out_of_gas_2699", %"$have_gas_2683"
  %"$consume_2701" = sub i64 %"$gasrem_2697", %"$gasadd_2696"
  store i64 %"$consume_2701", i64* @_gasrem, align 8
  %"$gasrem_2702" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2703" = icmp ugt i64 1, %"$gasrem_2702"
  br i1 %"$gascmp_2703", label %"$out_of_gas_2704", label %"$have_gas_2705"

"$out_of_gas_2704":                               ; preds = %"$have_gas_2700"
  call void @_out_of_gas()
  br label %"$have_gas_2705"

"$have_gas_2705":                                 ; preds = %"$out_of_gas_2704", %"$have_gas_2700"
  %"$consume_2706" = sub i64 %"$gasrem_2702", 1
  store i64 %"$consume_2706", i64* @_gasrem, align 8
  %c1 = alloca %TName_Option_String*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_String** %c1, metadata !584, metadata !DIExpression()), !dbg !585
  %"$gasrem_2707" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2708" = icmp ugt i64 1, %"$gasrem_2707"
  br i1 %"$gascmp_2708", label %"$out_of_gas_2709", label %"$have_gas_2710"

"$out_of_gas_2709":                               ; preds = %"$have_gas_2705"
  call void @_out_of_gas()
  br label %"$have_gas_2710"

"$have_gas_2710":                                 ; preds = %"$out_of_gas_2709", %"$have_gas_2705"
  %"$consume_2711" = sub i64 %"$gasrem_2707", 1
  store i64 %"$consume_2711", i64* @_gasrem, align 8
  %"$execptr_load_2712" = load i8*, i8** @_execptr, align 8
  %"$m1_2713" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2713_2714" = bitcast %Map_String_String* %"$m1_2713" to i8*
  %"$get_key1a_2715" = alloca %String, align 8
  %"$key1a_2716" = load %String, %String* %key1a, align 8
  store %String %"$key1a_2716", %String* %"$get_key1a_2715", align 8
  %"$$get_key1a_2715_2717" = bitcast %String* %"$get_key1a_2715" to i8*
  %"$get_call_2718" = call i8* @_get(i8* %"$execptr_load_2712", %_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$m1_2713_2714", i8* %"$$get_key1a_2715_2717"), !dbg !586
  %"$get_2719" = bitcast i8* %"$get_call_2718" to %TName_Option_String*
  store %TName_Option_String* %"$get_2719", %TName_Option_String** %c1, align 8, !dbg !586
  %"$gasrem_2720" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2721" = icmp ugt i64 2, %"$gasrem_2720"
  br i1 %"$gascmp_2721", label %"$out_of_gas_2722", label %"$have_gas_2723"

"$out_of_gas_2722":                               ; preds = %"$have_gas_2710"
  call void @_out_of_gas()
  br label %"$have_gas_2723"

"$have_gas_2723":                                 ; preds = %"$out_of_gas_2722", %"$have_gas_2710"
  %"$consume_2724" = sub i64 %"$gasrem_2720", 2
  store i64 %"$consume_2724", i64* @_gasrem, align 8
  %"$c1_2726" = load %TName_Option_String*, %TName_Option_String** %c1, align 8
  %"$c1_tag_2727" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$c1_2726", i32 0, i32 0
  %"$c1_tag_2728" = load i8, i8* %"$c1_tag_2727", align 1
  switch i8 %"$c1_tag_2728", label %"$empty_default_2729" [
    i8 0, label %"$Some_2730"
    i8 1, label %"$None_2803"
  ], !dbg !587

"$Some_2730":                                     ; preds = %"$have_gas_2723"
  %"$c1_2731" = bitcast %TName_Option_String* %"$c1_2726" to %CName_Some_String*
  %"$c_gep_2732" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$c1_2731", i32 0, i32 1
  %"$c_load_2733" = load %String, %String* %"$c_gep_2732", align 8
  %c = alloca %String, align 8
  store %String %"$c_load_2733", %String* %c, align 8
  %"$gasrem_2734" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2735" = icmp ugt i64 1, %"$gasrem_2734"
  br i1 %"$gascmp_2735", label %"$out_of_gas_2736", label %"$have_gas_2737"

"$out_of_gas_2736":                               ; preds = %"$Some_2730"
  call void @_out_of_gas()
  br label %"$have_gas_2737"

"$have_gas_2737":                                 ; preds = %"$out_of_gas_2736", %"$Some_2730"
  %"$consume_2738" = sub i64 %"$gasrem_2734", 1
  store i64 %"$consume_2738", i64* @_gasrem, align 8
  %v = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %v, metadata !588, metadata !DIExpression()), !dbg !591
  %"$gasrem_2739" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2740" = icmp ugt i64 1, %"$gasrem_2739"
  br i1 %"$gascmp_2740", label %"$out_of_gas_2741", label %"$have_gas_2742"

"$out_of_gas_2741":                               ; preds = %"$have_gas_2737"
  call void @_out_of_gas()
  br label %"$have_gas_2742"

"$have_gas_2742":                                 ; preds = %"$out_of_gas_2741", %"$have_gas_2737"
  %"$consume_2743" = sub i64 %"$gasrem_2739", 1
  store i64 %"$consume_2743", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2744", i32 0, i32 0), i32 3 }, %String* %v, align 8, !dbg !592
  %"$gasrem_2745" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2746" = icmp ugt i64 1, %"$gasrem_2745"
  br i1 %"$gascmp_2746", label %"$out_of_gas_2747", label %"$have_gas_2748"

"$out_of_gas_2747":                               ; preds = %"$have_gas_2742"
  call void @_out_of_gas()
  br label %"$have_gas_2748"

"$have_gas_2748":                                 ; preds = %"$out_of_gas_2747", %"$have_gas_2742"
  %"$consume_2749" = sub i64 %"$gasrem_2745", 1
  store i64 %"$consume_2749", i64* @_gasrem, align 8
  %eq = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %eq, metadata !593, metadata !DIExpression()), !dbg !594
  %"$_literal_cost_c_2750" = alloca %String, align 8
  %"$c_2751" = load %String, %String* %c, align 8
  store %String %"$c_2751", %String* %"$_literal_cost_c_2750", align 8
  %"$$_literal_cost_c_2750_2752" = bitcast %String* %"$_literal_cost_c_2750" to i8*
  %"$_literal_cost_call_2753" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_c_2750_2752")
  %"$_literal_cost_v_2754" = alloca %String, align 8
  %"$v_2755" = load %String, %String* %v, align 8
  store %String %"$v_2755", %String* %"$_literal_cost_v_2754", align 8
  %"$$_literal_cost_v_2754_2756" = bitcast %String* %"$_literal_cost_v_2754" to i8*
  %"$_literal_cost_call_2757" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v_2754_2756")
  %"$gasmin_2758" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_2753", i64 %"$_literal_cost_call_2757")
  %"$gasrem_2759" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2760" = icmp ugt i64 %"$gasmin_2758", %"$gasrem_2759"
  br i1 %"$gascmp_2760", label %"$out_of_gas_2761", label %"$have_gas_2762"

"$out_of_gas_2761":                               ; preds = %"$have_gas_2748"
  call void @_out_of_gas()
  br label %"$have_gas_2762"

"$have_gas_2762":                                 ; preds = %"$out_of_gas_2761", %"$have_gas_2748"
  %"$consume_2763" = sub i64 %"$gasrem_2759", %"$gasmin_2758"
  store i64 %"$consume_2763", i64* @_gasrem, align 8
  %"$execptr_load_2764" = load i8*, i8** @_execptr, align 8
  %"$c_2765" = load %String, %String* %c, align 8
  %"$v_2766" = load %String, %String* %v, align 8
  %"$eq_call_2767" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_2764", %String %"$c_2765", %String %"$v_2766"), !dbg !595
  store %TName_Bool* %"$eq_call_2767", %TName_Bool** %eq, align 8, !dbg !595
  %"$gasrem_2769" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2770" = icmp ugt i64 2, %"$gasrem_2769"
  br i1 %"$gascmp_2770", label %"$out_of_gas_2771", label %"$have_gas_2772"

"$out_of_gas_2771":                               ; preds = %"$have_gas_2762"
  call void @_out_of_gas()
  br label %"$have_gas_2772"

"$have_gas_2772":                                 ; preds = %"$out_of_gas_2771", %"$have_gas_2762"
  %"$consume_2773" = sub i64 %"$gasrem_2769", 2
  store i64 %"$consume_2773", i64* @_gasrem, align 8
  %"$eq_2775" = load %TName_Bool*, %TName_Bool** %eq, align 8
  %"$eq_tag_2776" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$eq_2775", i32 0, i32 0
  %"$eq_tag_2777" = load i8, i8* %"$eq_tag_2776", align 1
  switch i8 %"$eq_tag_2777", label %"$empty_default_2778" [
    i8 0, label %"$True_2779"
    i8 1, label %"$False_2781"
  ], !dbg !596

"$True_2779":                                     ; preds = %"$have_gas_2772"
  %"$eq_2780" = bitcast %TName_Bool* %"$eq_2775" to %CName_True*
  br label %"$matchsucc_2774"

"$False_2781":                                    ; preds = %"$have_gas_2772"
  %"$eq_2782" = bitcast %TName_Bool* %"$eq_2775" to %CName_False*
  %"$gasrem_2783" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2784" = icmp ugt i64 1, %"$gasrem_2783"
  br i1 %"$gascmp_2784", label %"$out_of_gas_2785", label %"$have_gas_2786"

"$out_of_gas_2785":                               ; preds = %"$False_2781"
  call void @_out_of_gas()
  br label %"$have_gas_2786"

"$have_gas_2786":                                 ; preds = %"$out_of_gas_2785", %"$False_2781"
  %"$consume_2787" = sub i64 %"$gasrem_2783", 1
  store i64 %"$consume_2787", i64* @_gasrem, align 8
  %m = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %m, metadata !597, metadata !DIExpression()), !dbg !600
  %"$gasrem_2788" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2789" = icmp ugt i64 1, %"$gasrem_2788"
  br i1 %"$gascmp_2789", label %"$out_of_gas_2790", label %"$have_gas_2791"

"$out_of_gas_2790":                               ; preds = %"$have_gas_2786"
  call void @_out_of_gas()
  br label %"$have_gas_2791"

"$have_gas_2791":                                 ; preds = %"$out_of_gas_2790", %"$have_gas_2786"
  %"$consume_2792" = sub i64 %"$gasrem_2788", 1
  store i64 %"$consume_2792", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @"$stringlit_2793", i32 0, i32 0), i32 25 }, %String* %m, align 8, !dbg !601
  %"$gasrem_2794" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2795" = icmp ugt i64 1, %"$gasrem_2794"
  br i1 %"$gascmp_2795", label %"$out_of_gas_2796", label %"$have_gas_2797"

"$out_of_gas_2796":                               ; preds = %"$have_gas_2791"
  call void @_out_of_gas()
  br label %"$have_gas_2797"

"$have_gas_2797":                                 ; preds = %"$out_of_gas_2796", %"$have_gas_2791"
  %"$consume_2798" = sub i64 %"$gasrem_2794", 1
  store i64 %"$consume_2798", i64* @_gasrem, align 8
  %"$fail_msg__origin_2799" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2799", align 1
  %"$fail_msg__sender_2800" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2800", align 1
  %"$tname_2801" = load %String, %String* %tname, align 8
  %"$m_2802" = load %String, %String* %m, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2799", [20 x i8]* %"$fail_msg__sender_2800", %String %"$tname_2801", %String %"$m_2802"), !dbg !602
  br label %"$matchsucc_2774"

"$empty_default_2778":                            ; preds = %"$have_gas_2772"
  br label %"$matchsucc_2774"

"$matchsucc_2774":                                ; preds = %"$have_gas_2797", %"$True_2779", %"$empty_default_2778"
  br label %"$matchsucc_2725"

"$None_2803":                                     ; preds = %"$have_gas_2723"
  %"$c1_2804" = bitcast %TName_Option_String* %"$c1_2726" to %CName_None_String*
  %"$gasrem_2805" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2806" = icmp ugt i64 1, %"$gasrem_2805"
  br i1 %"$gascmp_2806", label %"$out_of_gas_2807", label %"$have_gas_2808"

"$out_of_gas_2807":                               ; preds = %"$None_2803"
  call void @_out_of_gas()
  br label %"$have_gas_2808"

"$have_gas_2808":                                 ; preds = %"$out_of_gas_2807", %"$None_2803"
  %"$consume_2809" = sub i64 %"$gasrem_2805", 1
  store i64 %"$consume_2809", i64* @_gasrem, align 8
  %m2 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %m2, metadata !603, metadata !DIExpression()), !dbg !605
  %"$gasrem_2810" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2811" = icmp ugt i64 1, %"$gasrem_2810"
  br i1 %"$gascmp_2811", label %"$out_of_gas_2812", label %"$have_gas_2813"

"$out_of_gas_2812":                               ; preds = %"$have_gas_2808"
  call void @_out_of_gas()
  br label %"$have_gas_2813"

"$have_gas_2813":                                 ; preds = %"$out_of_gas_2812", %"$have_gas_2808"
  %"$consume_2814" = sub i64 %"$gasrem_2810", 1
  store i64 %"$consume_2814", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$stringlit_2815", i32 0, i32 0), i32 15 }, %String* %m2, align 8, !dbg !606
  %"$gasrem_2816" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2817" = icmp ugt i64 1, %"$gasrem_2816"
  br i1 %"$gascmp_2817", label %"$out_of_gas_2818", label %"$have_gas_2819"

"$out_of_gas_2818":                               ; preds = %"$have_gas_2813"
  call void @_out_of_gas()
  br label %"$have_gas_2819"

"$have_gas_2819":                                 ; preds = %"$out_of_gas_2818", %"$have_gas_2813"
  %"$consume_2820" = sub i64 %"$gasrem_2816", 1
  store i64 %"$consume_2820", i64* @_gasrem, align 8
  %"$fail_msg__origin_2821" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_2821", align 1
  %"$fail_msg__sender_2822" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_2822", align 1
  %"$tname_2823" = load %String, %String* %tname, align 8
  %"$m_2824" = load %String, %String* %m2, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_2821", [20 x i8]* %"$fail_msg__sender_2822", %String %"$tname_2823", %String %"$m_2824"), !dbg !607
  br label %"$matchsucc_2725"

"$empty_default_2729":                            ; preds = %"$have_gas_2723"
  br label %"$matchsucc_2725"

"$matchsucc_2725":                                ; preds = %"$have_gas_2819", %"$matchsucc_2774", %"$empty_default_2729"
  %"$gasrem_2825" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2826" = icmp ugt i64 1, %"$gasrem_2825"
  br i1 %"$gascmp_2826", label %"$out_of_gas_2827", label %"$have_gas_2828"

"$out_of_gas_2827":                               ; preds = %"$matchsucc_2725"
  call void @_out_of_gas()
  br label %"$have_gas_2828"

"$have_gas_2828":                                 ; preds = %"$out_of_gas_2827", %"$matchsucc_2725"
  %"$consume_2829" = sub i64 %"$gasrem_2825", 1
  store i64 %"$consume_2829", i64* @_gasrem, align 8
  %"$indices_buf_2830_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_2830_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_2830_salloc_load", i64 16)
  %"$indices_buf_2830_salloc" = bitcast i8* %"$indices_buf_2830_salloc_salloc" to [16 x i8]*
  %"$indices_buf_2830" = bitcast [16 x i8]* %"$indices_buf_2830_salloc" to i8*
  %"$key1a_2831" = load %String, %String* %key1a, align 8
  %"$indices_gep_2832" = getelementptr i8, i8* %"$indices_buf_2830", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_2832" to %String*
  store %String %"$key1a_2831", %String* %indices_cast, align 8
  %"$execptr_load_2833" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_2833", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2834", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_77", i32 1, i8* %"$indices_buf_2830", i8* null), !dbg !608
  ret void
}

declare i8* @_get(i8*, %_TyDescrTy_Typ*, i8*, i8*)

define void @t10(i8* %0) !dbg !609 {
entry:
  %"$_amount_2839" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2840" = bitcast i8* %"$_amount_2839" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2840", align 8
  %"$_origin_2841" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2842" = bitcast i8* %"$_origin_2841" to [20 x i8]*
  %"$_sender_2843" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2844" = bitcast i8* %"$_sender_2843" to [20 x i8]*
  call void @"$t10_2661"(%Uint128 %_amount, [20 x i8]* %"$_origin_2842", [20 x i8]* %"$_sender_2844"), !dbg !610
  ret void
}

define internal void @"$t11_2845"(%Uint128 %_amount, [20 x i8]* %"$_origin_2846", [20 x i8]* %"$_sender_2847") !dbg !611 {
entry:
  %"$_sender_2962" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_2847", [20 x i8]** %"$_sender_2962", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_2962", metadata !612, metadata !DIExpression()), !dbg !613
  %"$_origin_2961" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_2846", [20 x i8]** %"$_origin_2961", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_2961", metadata !614, metadata !DIExpression()), !dbg !613
  %"$_amount_2960" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_2960", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_2960", metadata !615, metadata !DIExpression()), !dbg !613
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2846", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2847", align 1
  %"$gasrem_2848" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2849" = icmp ugt i64 1, %"$gasrem_2848"
  br i1 %"$gascmp_2849", label %"$out_of_gas_2850", label %"$have_gas_2851"

"$out_of_gas_2850":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2851"

"$have_gas_2851":                                 ; preds = %"$out_of_gas_2850", %entry
  %"$consume_2852" = sub i64 %"$gasrem_2848", 1
  store i64 %"$consume_2852", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %tname, metadata !616, metadata !DIExpression()), !dbg !617
  %"$gasrem_2853" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2854" = icmp ugt i64 1, %"$gasrem_2853"
  br i1 %"$gascmp_2854", label %"$out_of_gas_2855", label %"$have_gas_2856"

"$out_of_gas_2855":                               ; preds = %"$have_gas_2851"
  call void @_out_of_gas()
  br label %"$have_gas_2856"

"$have_gas_2856":                                 ; preds = %"$out_of_gas_2855", %"$have_gas_2851"
  %"$consume_2857" = sub i64 %"$gasrem_2853", 1
  store i64 %"$consume_2857", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2858", i32 0, i32 0), i32 3 }, %String* %tname, align 8, !dbg !618
  %m1 = alloca %Map_String_String*, align 8
  call void @llvm.dbg.declare(metadata %Map_String_String** %m1, metadata !619, metadata !DIExpression()), !dbg !620
  %"$execptr_load_2860" = load i8*, i8** @_execptr, align 8
  %"$m1_call_2861" = call i8* @_fetch_field(i8* %"$execptr_load_2860", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_2859", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_77", i32 0, i8* null, i32 1), !dbg !620
  %"$m1_2862" = bitcast i8* %"$m1_call_2861" to %Map_String_String*
  store %Map_String_String* %"$m1_2862", %Map_String_String** %m1, align 8
  %"$m1_2863" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2863_2864" = bitcast %Map_String_String* %"$m1_2863" to i8*
  %"$_literal_cost_call_2865" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$m1_2863_2864")
  %"$m1_2866" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2866_2867" = bitcast %Map_String_String* %"$m1_2866" to i8*
  %"$_mapsortcost_call_2868" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$m1_2866_2867")
  %"$gasadd_2869" = add i64 %"$_literal_cost_call_2865", %"$_mapsortcost_call_2868"
  %"$gasrem_2870" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2871" = icmp ugt i64 %"$gasadd_2869", %"$gasrem_2870"
  br i1 %"$gascmp_2871", label %"$out_of_gas_2872", label %"$have_gas_2873"

"$out_of_gas_2872":                               ; preds = %"$have_gas_2856"
  call void @_out_of_gas()
  br label %"$have_gas_2873"

"$have_gas_2873":                                 ; preds = %"$out_of_gas_2872", %"$have_gas_2856"
  %"$consume_2874" = sub i64 %"$gasrem_2870", %"$gasadd_2869"
  store i64 %"$consume_2874", i64* @_gasrem, align 8
  %"$gasrem_2875" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2876" = icmp ugt i64 1, %"$gasrem_2875"
  br i1 %"$gascmp_2876", label %"$out_of_gas_2877", label %"$have_gas_2878"

"$out_of_gas_2877":                               ; preds = %"$have_gas_2873"
  call void @_out_of_gas()
  br label %"$have_gas_2878"

"$have_gas_2878":                                 ; preds = %"$out_of_gas_2877", %"$have_gas_2873"
  %"$consume_2879" = sub i64 %"$gasrem_2875", 1
  store i64 %"$consume_2879", i64* @_gasrem, align 8
  %m1_size = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %m1_size, metadata !621, metadata !DIExpression()), !dbg !622
  %"$gasrem_2880" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2881" = icmp ugt i64 1, %"$gasrem_2880"
  br i1 %"$gascmp_2881", label %"$out_of_gas_2882", label %"$have_gas_2883"

"$out_of_gas_2882":                               ; preds = %"$have_gas_2878"
  call void @_out_of_gas()
  br label %"$have_gas_2883"

"$have_gas_2883":                                 ; preds = %"$out_of_gas_2882", %"$have_gas_2878"
  %"$consume_2884" = sub i64 %"$gasrem_2880", 1
  store i64 %"$consume_2884", i64* @_gasrem, align 8
  %"$m1_2885" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_2885_2886" = bitcast %Map_String_String* %"$m1_2885" to i8*
  %"$size_call_2887" = call %Uint32 @_size(i8* %"$$m1_2885_2886"), !dbg !623
  store %Uint32 %"$size_call_2887", %Uint32* %m1_size, align 4, !dbg !623
  %"$gasrem_2888" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2889" = icmp ugt i64 1, %"$gasrem_2888"
  br i1 %"$gascmp_2889", label %"$out_of_gas_2890", label %"$have_gas_2891"

"$out_of_gas_2890":                               ; preds = %"$have_gas_2883"
  call void @_out_of_gas()
  br label %"$have_gas_2891"

"$have_gas_2891":                                 ; preds = %"$out_of_gas_2890", %"$have_gas_2883"
  %"$consume_2892" = sub i64 %"$gasrem_2888", 1
  store i64 %"$consume_2892", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %zero, metadata !624, metadata !DIExpression()), !dbg !625
  %"$gasrem_2893" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2894" = icmp ugt i64 1, %"$gasrem_2893"
  br i1 %"$gascmp_2894", label %"$out_of_gas_2895", label %"$have_gas_2896"

"$out_of_gas_2895":                               ; preds = %"$have_gas_2891"
  call void @_out_of_gas()
  br label %"$have_gas_2896"

"$have_gas_2896":                                 ; preds = %"$out_of_gas_2895", %"$have_gas_2891"
  %"$consume_2897" = sub i64 %"$gasrem_2893", 1
  store i64 %"$consume_2897", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4, !dbg !626
  %"$gasrem_2898" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2899" = icmp ugt i64 1, %"$gasrem_2898"
  br i1 %"$gascmp_2899", label %"$out_of_gas_2900", label %"$have_gas_2901"

"$out_of_gas_2900":                               ; preds = %"$have_gas_2896"
  call void @_out_of_gas()
  br label %"$have_gas_2901"

"$have_gas_2901":                                 ; preds = %"$out_of_gas_2900", %"$have_gas_2896"
  %"$consume_2902" = sub i64 %"$gasrem_2898", 1
  store i64 %"$consume_2902", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %is_empty, metadata !627, metadata !DIExpression()), !dbg !628
  %"$gasrem_2903" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2904" = icmp ugt i64 4, %"$gasrem_2903"
  br i1 %"$gascmp_2904", label %"$out_of_gas_2905", label %"$have_gas_2906"

"$out_of_gas_2905":                               ; preds = %"$have_gas_2901"
  call void @_out_of_gas()
  br label %"$have_gas_2906"

"$have_gas_2906":                                 ; preds = %"$out_of_gas_2905", %"$have_gas_2901"
  %"$consume_2907" = sub i64 %"$gasrem_2903", 4
  store i64 %"$consume_2907", i64* @_gasrem, align 8
  %"$execptr_load_2908" = load i8*, i8** @_execptr, align 8
  %"$m1_size_2909" = load %Uint32, %Uint32* %m1_size, align 4
  %"$zero_2910" = load %Uint32, %Uint32* %zero, align 4
  %"$eq_call_2911" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_2908", %Uint32 %"$m1_size_2909", %Uint32 %"$zero_2910"), !dbg !629
  store %TName_Bool* %"$eq_call_2911", %TName_Bool** %is_empty, align 8, !dbg !629
  %"$gasrem_2913" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2914" = icmp ugt i64 2, %"$gasrem_2913"
  br i1 %"$gascmp_2914", label %"$out_of_gas_2915", label %"$have_gas_2916"

"$out_of_gas_2915":                               ; preds = %"$have_gas_2906"
  call void @_out_of_gas()
  br label %"$have_gas_2916"

"$have_gas_2916":                                 ; preds = %"$out_of_gas_2915", %"$have_gas_2906"
  %"$consume_2917" = sub i64 %"$gasrem_2913", 2
  store i64 %"$consume_2917", i64* @_gasrem, align 8
  %"$is_empty_2919" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_2920" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_2919", i32 0, i32 0
  %"$is_empty_tag_2921" = load i8, i8* %"$is_empty_tag_2920", align 1
  switch i8 %"$is_empty_tag_2921", label %"$empty_default_2922" [
    i8 0, label %"$True_2923"
    i8 1, label %"$False_2925"
  ], !dbg !630

"$True_2923":                                     ; preds = %"$have_gas_2916"
  %"$is_empty_2924" = bitcast %TName_Bool* %"$is_empty_2919" to %CName_True*
  br label %"$matchsucc_2918"

"$False_2925":                                    ; preds = %"$have_gas_2916"
  %"$is_empty_2926" = bitcast %TName_Bool* %"$is_empty_2919" to %CName_False*
  %"$gasrem_2927" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2928" = icmp ugt i64 1, %"$gasrem_2927"
  br i1 %"$gascmp_2928", label %"$out_of_gas_2929", label %"$have_gas_2930"

"$out_of_gas_2929":                               ; preds = %"$False_2925"
  call void @_out_of_gas()
  br label %"$have_gas_2930"

"$have_gas_2930":                                 ; preds = %"$out_of_gas_2929", %"$False_2925"
  %"$consume_2931" = sub i64 %"$gasrem_2927", 1
  store i64 %"$consume_2931", i64* @_gasrem, align 8
  %"$fail__origin_2932" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_2932", align 1
  %"$fail__sender_2933" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_2933", align 1
  %"$tname_2934" = load %String, %String* %tname, align 8
  call void @"$fail_254"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_2932", [20 x i8]* %"$fail__sender_2933", %String %"$tname_2934"), !dbg !631
  br label %"$matchsucc_2918"

"$empty_default_2922":                            ; preds = %"$have_gas_2916"
  br label %"$matchsucc_2918"

"$matchsucc_2918":                                ; preds = %"$have_gas_2930", %"$True_2923", %"$empty_default_2922"
  %"$gasrem_2935" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2936" = icmp ugt i64 1, %"$gasrem_2935"
  br i1 %"$gascmp_2936", label %"$out_of_gas_2937", label %"$have_gas_2938"

"$out_of_gas_2937":                               ; preds = %"$matchsucc_2918"
  call void @_out_of_gas()
  br label %"$have_gas_2938"

"$have_gas_2938":                                 ; preds = %"$out_of_gas_2937", %"$matchsucc_2918"
  %"$consume_2939" = sub i64 %"$gasrem_2935", 1
  store i64 %"$consume_2939", i64* @_gasrem, align 8
  %e2 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  call void @llvm.dbg.declare(metadata %"Map_String_Map_(String)_(String)"** %e2, metadata !634, metadata !DIExpression()), !dbg !635
  %"$gasrem_2940" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2941" = icmp ugt i64 1, %"$gasrem_2940"
  br i1 %"$gascmp_2941", label %"$out_of_gas_2942", label %"$have_gas_2943"

"$out_of_gas_2942":                               ; preds = %"$have_gas_2938"
  call void @_out_of_gas()
  br label %"$have_gas_2943"

"$have_gas_2943":                                 ; preds = %"$out_of_gas_2942", %"$have_gas_2938"
  %"$consume_2944" = sub i64 %"$gasrem_2940", 1
  store i64 %"$consume_2944", i64* @_gasrem, align 8
  %"$execptr_load_2945" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_2946" = call i8* @_new_empty_map(i8* %"$execptr_load_2945")
  %"$_new_empty_map_2947" = bitcast i8* %"$_new_empty_map_call_2946" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_2947", %"Map_String_Map_(String)_(String)"** %e2, align 8, !dbg !636
  %"$e2_2948" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e2, align 8
  %"$$e2_2948_2949" = bitcast %"Map_String_Map_(String)_(String)"* %"$e2_2948" to i8*
  %"$_literal_cost_call_2950" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_76", i8* %"$$e2_2948_2949")
  %"$gasrem_2951" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2952" = icmp ugt i64 %"$_literal_cost_call_2950", %"$gasrem_2951"
  br i1 %"$gascmp_2952", label %"$out_of_gas_2953", label %"$have_gas_2954"

"$out_of_gas_2953":                               ; preds = %"$have_gas_2943"
  call void @_out_of_gas()
  br label %"$have_gas_2954"

"$have_gas_2954":                                 ; preds = %"$out_of_gas_2953", %"$have_gas_2943"
  %"$consume_2955" = sub i64 %"$gasrem_2951", %"$_literal_cost_call_2950"
  store i64 %"$consume_2955", i64* @_gasrem, align 8
  %"$execptr_load_2956" = load i8*, i8** @_execptr, align 8
  %"$e2_2958" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e2, align 8
  %"$update_value_2959" = bitcast %"Map_String_Map_(String)_(String)"* %"$e2_2958" to i8*
  call void @_update_field(i8* %"$execptr_load_2956", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2957", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 0, i8* null, i8* %"$update_value_2959"), !dbg !637
  ret void
}

define void @t11(i8* %0) !dbg !638 {
entry:
  %"$_amount_2964" = getelementptr i8, i8* %0, i32 0
  %"$_amount_2965" = bitcast i8* %"$_amount_2964" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_2965", align 8
  %"$_origin_2966" = getelementptr i8, i8* %0, i32 16
  %"$_origin_2967" = bitcast i8* %"$_origin_2966" to [20 x i8]*
  %"$_sender_2968" = getelementptr i8, i8* %0, i32 36
  %"$_sender_2969" = bitcast i8* %"$_sender_2968" to [20 x i8]*
  call void @"$t11_2845"(%Uint128 %_amount, [20 x i8]* %"$_origin_2967", [20 x i8]* %"$_sender_2969"), !dbg !639
  ret void
}

define internal void @"$t12_2970"(%Uint128 %_amount, [20 x i8]* %"$_origin_2971", [20 x i8]* %"$_sender_2972") !dbg !640 {
entry:
  %"$_sender_3102" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_2972", [20 x i8]** %"$_sender_3102", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_3102", metadata !641, metadata !DIExpression()), !dbg !642
  %"$_origin_3101" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_2971", [20 x i8]** %"$_origin_3101", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_3101", metadata !643, metadata !DIExpression()), !dbg !642
  %"$_amount_3100" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_3100", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_3100", metadata !644, metadata !DIExpression()), !dbg !642
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_2971", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_2972", align 1
  %"$gasrem_2973" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2974" = icmp ugt i64 1, %"$gasrem_2973"
  br i1 %"$gascmp_2974", label %"$out_of_gas_2975", label %"$have_gas_2976"

"$out_of_gas_2975":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_2976"

"$have_gas_2976":                                 ; preds = %"$out_of_gas_2975", %entry
  %"$consume_2977" = sub i64 %"$gasrem_2973", 1
  store i64 %"$consume_2977", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %tname, metadata !645, metadata !DIExpression()), !dbg !646
  %"$gasrem_2978" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2979" = icmp ugt i64 1, %"$gasrem_2978"
  br i1 %"$gascmp_2979", label %"$out_of_gas_2980", label %"$have_gas_2981"

"$out_of_gas_2980":                               ; preds = %"$have_gas_2976"
  call void @_out_of_gas()
  br label %"$have_gas_2981"

"$have_gas_2981":                                 ; preds = %"$out_of_gas_2980", %"$have_gas_2976"
  %"$consume_2982" = sub i64 %"$gasrem_2978", 1
  store i64 %"$consume_2982", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_2983", i32 0, i32 0), i32 3 }, %String* %tname, align 8, !dbg !647
  %m2 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  call void @llvm.dbg.declare(metadata %"Map_String_Map_(String)_(String)"** %m2, metadata !648, metadata !DIExpression()), !dbg !649
  %"$execptr_load_2985" = load i8*, i8** @_execptr, align 8
  %"$m2_call_2986" = call i8* @_fetch_field(i8* %"$execptr_load_2985", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_2984", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 0, i8* null, i32 1), !dbg !649
  %"$m2_2987" = bitcast i8* %"$m2_call_2986" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$m2_2987", %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$m2_2988" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_2988_2989" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_2988" to i8*
  %"$_literal_cost_call_2990" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_76", i8* %"$$m2_2988_2989")
  %"$m2_2991" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_2991_2992" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_2991" to i8*
  %"$_mapsortcost_call_2993" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_76", i8* %"$$m2_2991_2992")
  %"$gasadd_2994" = add i64 %"$_literal_cost_call_2990", %"$_mapsortcost_call_2993"
  %"$gasrem_2995" = load i64, i64* @_gasrem, align 8
  %"$gascmp_2996" = icmp ugt i64 %"$gasadd_2994", %"$gasrem_2995"
  br i1 %"$gascmp_2996", label %"$out_of_gas_2997", label %"$have_gas_2998"

"$out_of_gas_2997":                               ; preds = %"$have_gas_2981"
  call void @_out_of_gas()
  br label %"$have_gas_2998"

"$have_gas_2998":                                 ; preds = %"$out_of_gas_2997", %"$have_gas_2981"
  %"$consume_2999" = sub i64 %"$gasrem_2995", %"$gasadd_2994"
  store i64 %"$consume_2999", i64* @_gasrem, align 8
  %"$gasrem_3000" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3001" = icmp ugt i64 1, %"$gasrem_3000"
  br i1 %"$gascmp_3001", label %"$out_of_gas_3002", label %"$have_gas_3003"

"$out_of_gas_3002":                               ; preds = %"$have_gas_2998"
  call void @_out_of_gas()
  br label %"$have_gas_3003"

"$have_gas_3003":                                 ; preds = %"$out_of_gas_3002", %"$have_gas_2998"
  %"$consume_3004" = sub i64 %"$gasrem_3000", 1
  store i64 %"$consume_3004", i64* @_gasrem, align 8
  %m2_size = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %m2_size, metadata !650, metadata !DIExpression()), !dbg !651
  %"$gasrem_3005" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3006" = icmp ugt i64 1, %"$gasrem_3005"
  br i1 %"$gascmp_3006", label %"$out_of_gas_3007", label %"$have_gas_3008"

"$out_of_gas_3007":                               ; preds = %"$have_gas_3003"
  call void @_out_of_gas()
  br label %"$have_gas_3008"

"$have_gas_3008":                                 ; preds = %"$out_of_gas_3007", %"$have_gas_3003"
  %"$consume_3009" = sub i64 %"$gasrem_3005", 1
  store i64 %"$consume_3009", i64* @_gasrem, align 8
  %"$m2_3010" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_3010_3011" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_3010" to i8*
  %"$size_call_3012" = call %Uint32 @_size(i8* %"$$m2_3010_3011"), !dbg !652
  store %Uint32 %"$size_call_3012", %Uint32* %m2_size, align 4, !dbg !652
  %"$gasrem_3013" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3014" = icmp ugt i64 1, %"$gasrem_3013"
  br i1 %"$gascmp_3014", label %"$out_of_gas_3015", label %"$have_gas_3016"

"$out_of_gas_3015":                               ; preds = %"$have_gas_3008"
  call void @_out_of_gas()
  br label %"$have_gas_3016"

"$have_gas_3016":                                 ; preds = %"$out_of_gas_3015", %"$have_gas_3008"
  %"$consume_3017" = sub i64 %"$gasrem_3013", 1
  store i64 %"$consume_3017", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %zero, metadata !653, metadata !DIExpression()), !dbg !654
  %"$gasrem_3018" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3019" = icmp ugt i64 1, %"$gasrem_3018"
  br i1 %"$gascmp_3019", label %"$out_of_gas_3020", label %"$have_gas_3021"

"$out_of_gas_3020":                               ; preds = %"$have_gas_3016"
  call void @_out_of_gas()
  br label %"$have_gas_3021"

"$have_gas_3021":                                 ; preds = %"$out_of_gas_3020", %"$have_gas_3016"
  %"$consume_3022" = sub i64 %"$gasrem_3018", 1
  store i64 %"$consume_3022", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4, !dbg !655
  %"$gasrem_3023" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3024" = icmp ugt i64 1, %"$gasrem_3023"
  br i1 %"$gascmp_3024", label %"$out_of_gas_3025", label %"$have_gas_3026"

"$out_of_gas_3025":                               ; preds = %"$have_gas_3021"
  call void @_out_of_gas()
  br label %"$have_gas_3026"

"$have_gas_3026":                                 ; preds = %"$out_of_gas_3025", %"$have_gas_3021"
  %"$consume_3027" = sub i64 %"$gasrem_3023", 1
  store i64 %"$consume_3027", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %is_empty, metadata !656, metadata !DIExpression()), !dbg !657
  %"$gasrem_3028" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3029" = icmp ugt i64 4, %"$gasrem_3028"
  br i1 %"$gascmp_3029", label %"$out_of_gas_3030", label %"$have_gas_3031"

"$out_of_gas_3030":                               ; preds = %"$have_gas_3026"
  call void @_out_of_gas()
  br label %"$have_gas_3031"

"$have_gas_3031":                                 ; preds = %"$out_of_gas_3030", %"$have_gas_3026"
  %"$consume_3032" = sub i64 %"$gasrem_3028", 4
  store i64 %"$consume_3032", i64* @_gasrem, align 8
  %"$execptr_load_3033" = load i8*, i8** @_execptr, align 8
  %"$m2_size_3034" = load %Uint32, %Uint32* %m2_size, align 4
  %"$zero_3035" = load %Uint32, %Uint32* %zero, align 4
  %"$eq_call_3036" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3033", %Uint32 %"$m2_size_3034", %Uint32 %"$zero_3035"), !dbg !658
  store %TName_Bool* %"$eq_call_3036", %TName_Bool** %is_empty, align 8, !dbg !658
  %"$gasrem_3038" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3039" = icmp ugt i64 2, %"$gasrem_3038"
  br i1 %"$gascmp_3039", label %"$out_of_gas_3040", label %"$have_gas_3041"

"$out_of_gas_3040":                               ; preds = %"$have_gas_3031"
  call void @_out_of_gas()
  br label %"$have_gas_3041"

"$have_gas_3041":                                 ; preds = %"$out_of_gas_3040", %"$have_gas_3031"
  %"$consume_3042" = sub i64 %"$gasrem_3038", 2
  store i64 %"$consume_3042", i64* @_gasrem, align 8
  %"$is_empty_3044" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_3045" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_3044", i32 0, i32 0
  %"$is_empty_tag_3046" = load i8, i8* %"$is_empty_tag_3045", align 1
  switch i8 %"$is_empty_tag_3046", label %"$empty_default_3047" [
    i8 0, label %"$True_3048"
    i8 1, label %"$False_3050"
  ], !dbg !659

"$True_3048":                                     ; preds = %"$have_gas_3041"
  %"$is_empty_3049" = bitcast %TName_Bool* %"$is_empty_3044" to %CName_True*
  br label %"$matchsucc_3043"

"$False_3050":                                    ; preds = %"$have_gas_3041"
  %"$is_empty_3051" = bitcast %TName_Bool* %"$is_empty_3044" to %CName_False*
  %"$gasrem_3052" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3053" = icmp ugt i64 1, %"$gasrem_3052"
  br i1 %"$gascmp_3053", label %"$out_of_gas_3054", label %"$have_gas_3055"

"$out_of_gas_3054":                               ; preds = %"$False_3050"
  call void @_out_of_gas()
  br label %"$have_gas_3055"

"$have_gas_3055":                                 ; preds = %"$out_of_gas_3054", %"$False_3050"
  %"$consume_3056" = sub i64 %"$gasrem_3052", 1
  store i64 %"$consume_3056", i64* @_gasrem, align 8
  %"$fail__origin_3057" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_3057", align 1
  %"$fail__sender_3058" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_3058", align 1
  %"$tname_3059" = load %String, %String* %tname, align 8
  call void @"$fail_254"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_3057", [20 x i8]* %"$fail__sender_3058", %String %"$tname_3059"), !dbg !660
  br label %"$matchsucc_3043"

"$empty_default_3047":                            ; preds = %"$have_gas_3041"
  br label %"$matchsucc_3043"

"$matchsucc_3043":                                ; preds = %"$have_gas_3055", %"$True_3048", %"$empty_default_3047"
  %"$gasrem_3060" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3061" = icmp ugt i64 1, %"$gasrem_3060"
  br i1 %"$gascmp_3061", label %"$out_of_gas_3062", label %"$have_gas_3063"

"$out_of_gas_3062":                               ; preds = %"$matchsucc_3043"
  call void @_out_of_gas()
  br label %"$have_gas_3063"

"$have_gas_3063":                                 ; preds = %"$out_of_gas_3062", %"$matchsucc_3043"
  %"$consume_3064" = sub i64 %"$gasrem_3060", 1
  store i64 %"$consume_3064", i64* @_gasrem, align 8
  %e1 = alloca %Map_String_String*, align 8
  call void @llvm.dbg.declare(metadata %Map_String_String** %e1, metadata !663, metadata !DIExpression()), !dbg !664
  %"$gasrem_3065" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3066" = icmp ugt i64 1, %"$gasrem_3065"
  br i1 %"$gascmp_3066", label %"$out_of_gas_3067", label %"$have_gas_3068"

"$out_of_gas_3067":                               ; preds = %"$have_gas_3063"
  call void @_out_of_gas()
  br label %"$have_gas_3068"

"$have_gas_3068":                                 ; preds = %"$out_of_gas_3067", %"$have_gas_3063"
  %"$consume_3069" = sub i64 %"$gasrem_3065", 1
  store i64 %"$consume_3069", i64* @_gasrem, align 8
  %"$execptr_load_3070" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3071" = call i8* @_new_empty_map(i8* %"$execptr_load_3070")
  %"$_new_empty_map_3072" = bitcast i8* %"$_new_empty_map_call_3071" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_3072", %Map_String_String** %e1, align 8, !dbg !665
  %"$gasrem_3073" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3074" = icmp ugt i64 1, %"$gasrem_3073"
  br i1 %"$gascmp_3074", label %"$out_of_gas_3075", label %"$have_gas_3076"

"$out_of_gas_3075":                               ; preds = %"$have_gas_3068"
  call void @_out_of_gas()
  br label %"$have_gas_3076"

"$have_gas_3076":                                 ; preds = %"$out_of_gas_3075", %"$have_gas_3068"
  %"$consume_3077" = sub i64 %"$gasrem_3073", 1
  store i64 %"$consume_3077", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key1a, metadata !666, metadata !DIExpression()), !dbg !667
  %"$gasrem_3078" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3079" = icmp ugt i64 1, %"$gasrem_3078"
  br i1 %"$gascmp_3079", label %"$out_of_gas_3080", label %"$have_gas_3081"

"$out_of_gas_3080":                               ; preds = %"$have_gas_3076"
  call void @_out_of_gas()
  br label %"$have_gas_3081"

"$have_gas_3081":                                 ; preds = %"$out_of_gas_3080", %"$have_gas_3076"
  %"$consume_3082" = sub i64 %"$gasrem_3078", 1
  store i64 %"$consume_3082", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3083", i32 0, i32 0), i32 5 }, %String* %key1a, align 8, !dbg !668
  %"$e1_3084" = load %Map_String_String*, %Map_String_String** %e1, align 8
  %"$$e1_3084_3085" = bitcast %Map_String_String* %"$e1_3084" to i8*
  %"$_literal_cost_call_3086" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$e1_3084_3085")
  %"$gasadd_3087" = add i64 %"$_literal_cost_call_3086", 1
  %"$gasrem_3088" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3089" = icmp ugt i64 %"$gasadd_3087", %"$gasrem_3088"
  br i1 %"$gascmp_3089", label %"$out_of_gas_3090", label %"$have_gas_3091"

"$out_of_gas_3090":                               ; preds = %"$have_gas_3081"
  call void @_out_of_gas()
  br label %"$have_gas_3091"

"$have_gas_3091":                                 ; preds = %"$out_of_gas_3090", %"$have_gas_3081"
  %"$consume_3092" = sub i64 %"$gasrem_3088", %"$gasadd_3087"
  store i64 %"$consume_3092", i64* @_gasrem, align 8
  %"$indices_buf_3093_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3093_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3093_salloc_load", i64 16)
  %"$indices_buf_3093_salloc" = bitcast i8* %"$indices_buf_3093_salloc_salloc" to [16 x i8]*
  %"$indices_buf_3093" = bitcast [16 x i8]* %"$indices_buf_3093_salloc" to i8*
  %"$key1a_3094" = load %String, %String* %key1a, align 8
  %"$indices_gep_3095" = getelementptr i8, i8* %"$indices_buf_3093", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3095" to %String*
  store %String %"$key1a_3094", %String* %indices_cast, align 8
  %"$execptr_load_3096" = load i8*, i8** @_execptr, align 8
  %"$e1_3098" = load %Map_String_String*, %Map_String_String** %e1, align 8
  %"$update_value_3099" = bitcast %Map_String_String* %"$e1_3098" to i8*
  call void @_update_field(i8* %"$execptr_load_3096", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_3097", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 1, i8* %"$indices_buf_3093", i8* %"$update_value_3099"), !dbg !669
  ret void
}

define void @t12(i8* %0) !dbg !670 {
entry:
  %"$_amount_3104" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3105" = bitcast i8* %"$_amount_3104" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3105", align 8
  %"$_origin_3106" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3107" = bitcast i8* %"$_origin_3106" to [20 x i8]*
  %"$_sender_3108" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3109" = bitcast i8* %"$_sender_3108" to [20 x i8]*
  call void @"$t12_2970"(%Uint128 %_amount, [20 x i8]* %"$_origin_3107", [20 x i8]* %"$_sender_3109"), !dbg !671
  ret void
}

define internal void @"$t13_3110"(%Uint128 %_amount, [20 x i8]* %"$_origin_3111", [20 x i8]* %"$_sender_3112") !dbg !672 {
entry:
  %"$_sender_3363" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_3112", [20 x i8]** %"$_sender_3363", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_3363", metadata !673, metadata !DIExpression()), !dbg !674
  %"$_origin_3362" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_3111", [20 x i8]** %"$_origin_3362", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_3362", metadata !675, metadata !DIExpression()), !dbg !674
  %"$_amount_3361" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_3361", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_3361", metadata !676, metadata !DIExpression()), !dbg !674
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3111", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3112", align 1
  %"$gasrem_3113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3114" = icmp ugt i64 1, %"$gasrem_3113"
  br i1 %"$gascmp_3114", label %"$out_of_gas_3115", label %"$have_gas_3116"

"$out_of_gas_3115":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3116"

"$have_gas_3116":                                 ; preds = %"$out_of_gas_3115", %entry
  %"$consume_3117" = sub i64 %"$gasrem_3113", 1
  store i64 %"$consume_3117", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %tname, metadata !677, metadata !DIExpression()), !dbg !678
  %"$gasrem_3118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3119" = icmp ugt i64 1, %"$gasrem_3118"
  br i1 %"$gascmp_3119", label %"$out_of_gas_3120", label %"$have_gas_3121"

"$out_of_gas_3120":                               ; preds = %"$have_gas_3116"
  call void @_out_of_gas()
  br label %"$have_gas_3121"

"$have_gas_3121":                                 ; preds = %"$out_of_gas_3120", %"$have_gas_3116"
  %"$consume_3122" = sub i64 %"$gasrem_3118", 1
  store i64 %"$consume_3122", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3123", i32 0, i32 0), i32 3 }, %String* %tname, align 8, !dbg !679
  %"$gasrem_3124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3125" = icmp ugt i64 1, %"$gasrem_3124"
  br i1 %"$gascmp_3125", label %"$out_of_gas_3126", label %"$have_gas_3127"

"$out_of_gas_3126":                               ; preds = %"$have_gas_3121"
  call void @_out_of_gas()
  br label %"$have_gas_3127"

"$have_gas_3127":                                 ; preds = %"$out_of_gas_3126", %"$have_gas_3121"
  %"$consume_3128" = sub i64 %"$gasrem_3124", 1
  store i64 %"$consume_3128", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key1a, metadata !680, metadata !DIExpression()), !dbg !681
  %"$gasrem_3129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3130" = icmp ugt i64 1, %"$gasrem_3129"
  br i1 %"$gascmp_3130", label %"$out_of_gas_3131", label %"$have_gas_3132"

"$out_of_gas_3131":                               ; preds = %"$have_gas_3127"
  call void @_out_of_gas()
  br label %"$have_gas_3132"

"$have_gas_3132":                                 ; preds = %"$out_of_gas_3131", %"$have_gas_3127"
  %"$consume_3133" = sub i64 %"$gasrem_3129", 1
  store i64 %"$consume_3133", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3134", i32 0, i32 0), i32 5 }, %String* %key1a, align 8, !dbg !682
  %mo = alloca %"TName_Option_Map_(String)_(String)"*, align 8
  call void @llvm.dbg.declare(metadata %"TName_Option_Map_(String)_(String)"** %mo, metadata !683, metadata !DIExpression()), !dbg !684
  %"$indices_buf_3135_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_3135_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_3135_salloc_load", i64 16)
  %"$indices_buf_3135_salloc" = bitcast i8* %"$indices_buf_3135_salloc_salloc" to [16 x i8]*
  %"$indices_buf_3135" = bitcast [16 x i8]* %"$indices_buf_3135_salloc" to i8*
  %"$key1a_3136" = load %String, %String* %key1a, align 8
  %"$indices_gep_3137" = getelementptr i8, i8* %"$indices_buf_3135", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_3137" to %String*
  store %String %"$key1a_3136", %String* %indices_cast, align 8
  %"$execptr_load_3139" = load i8*, i8** @_execptr, align 8
  %"$mo_call_3140" = call i8* @_fetch_field(i8* %"$execptr_load_3139", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_3138", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 1, i8* %"$indices_buf_3135", i32 1), !dbg !684
  %"$mo_3141" = bitcast i8* %"$mo_call_3140" to %"TName_Option_Map_(String)_(String)"*
  store %"TName_Option_Map_(String)_(String)"* %"$mo_3141", %"TName_Option_Map_(String)_(String)"** %mo, align 8
  %"$mo_3142" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %mo, align 8
  %"$$mo_3142_3143" = bitcast %"TName_Option_Map_(String)_(String)"* %"$mo_3142" to i8*
  %"$_literal_cost_call_3144" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(String)_71", i8* %"$$mo_3142_3143")
  %"$mo_3145" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %mo, align 8
  %"$$mo_3145_3146" = bitcast %"TName_Option_Map_(String)_(String)"* %"$mo_3145" to i8*
  %"$_mapsortcost_call_3147" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(String)_(String)_71", i8* %"$$mo_3145_3146")
  %"$gasadd_3148" = add i64 %"$_literal_cost_call_3144", %"$_mapsortcost_call_3147"
  %"$gasadd_3149" = add i64 %"$gasadd_3148", 1
  %"$gasrem_3150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3151" = icmp ugt i64 %"$gasadd_3149", %"$gasrem_3150"
  br i1 %"$gascmp_3151", label %"$out_of_gas_3152", label %"$have_gas_3153"

"$out_of_gas_3152":                               ; preds = %"$have_gas_3132"
  call void @_out_of_gas()
  br label %"$have_gas_3153"

"$have_gas_3153":                                 ; preds = %"$out_of_gas_3152", %"$have_gas_3132"
  %"$consume_3154" = sub i64 %"$gasrem_3150", %"$gasadd_3149"
  store i64 %"$consume_3154", i64* @_gasrem, align 8
  %"$gasrem_3155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3156" = icmp ugt i64 2, %"$gasrem_3155"
  br i1 %"$gascmp_3156", label %"$out_of_gas_3157", label %"$have_gas_3158"

"$out_of_gas_3157":                               ; preds = %"$have_gas_3153"
  call void @_out_of_gas()
  br label %"$have_gas_3158"

"$have_gas_3158":                                 ; preds = %"$out_of_gas_3157", %"$have_gas_3153"
  %"$consume_3159" = sub i64 %"$gasrem_3155", 2
  store i64 %"$consume_3159", i64* @_gasrem, align 8
  %"$mo_3161" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %mo, align 8
  %"$mo_tag_3162" = getelementptr inbounds %"TName_Option_Map_(String)_(String)", %"TName_Option_Map_(String)_(String)"* %"$mo_3161", i32 0, i32 0
  %"$mo_tag_3163" = load i8, i8* %"$mo_tag_3162", align 1
  switch i8 %"$mo_tag_3163", label %"$empty_default_3164" [
    i8 0, label %"$Some_3165"
    i8 1, label %"$None_3241"
  ], !dbg !685

"$Some_3165":                                     ; preds = %"$have_gas_3158"
  %"$mo_3166" = bitcast %"TName_Option_Map_(String)_(String)"* %"$mo_3161" to %"CName_Some_Map_(String)_(String)"*
  %"$m_gep_3167" = getelementptr inbounds %"CName_Some_Map_(String)_(String)", %"CName_Some_Map_(String)_(String)"* %"$mo_3166", i32 0, i32 1
  %"$m_load_3168" = load %Map_String_String*, %Map_String_String** %"$m_gep_3167", align 8
  %m = alloca %Map_String_String*, align 8
  store %Map_String_String* %"$m_load_3168", %Map_String_String** %m, align 8
  %"$gasrem_3169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3170" = icmp ugt i64 1, %"$gasrem_3169"
  br i1 %"$gascmp_3170", label %"$out_of_gas_3171", label %"$have_gas_3172"

"$out_of_gas_3171":                               ; preds = %"$Some_3165"
  call void @_out_of_gas()
  br label %"$have_gas_3172"

"$have_gas_3172":                                 ; preds = %"$out_of_gas_3171", %"$Some_3165"
  %"$consume_3173" = sub i64 %"$gasrem_3169", 1
  store i64 %"$consume_3173", i64* @_gasrem, align 8
  %m_size = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %m_size, metadata !686, metadata !DIExpression()), !dbg !689
  %"$gasrem_3174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3175" = icmp ugt i64 1, %"$gasrem_3174"
  br i1 %"$gascmp_3175", label %"$out_of_gas_3176", label %"$have_gas_3177"

"$out_of_gas_3176":                               ; preds = %"$have_gas_3172"
  call void @_out_of_gas()
  br label %"$have_gas_3177"

"$have_gas_3177":                                 ; preds = %"$out_of_gas_3176", %"$have_gas_3172"
  %"$consume_3178" = sub i64 %"$gasrem_3174", 1
  store i64 %"$consume_3178", i64* @_gasrem, align 8
  %"$m_3179" = load %Map_String_String*, %Map_String_String** %m, align 8
  %"$$m_3179_3180" = bitcast %Map_String_String* %"$m_3179" to i8*
  %"$size_call_3181" = call %Uint32 @_size(i8* %"$$m_3179_3180"), !dbg !690
  store %Uint32 %"$size_call_3181", %Uint32* %m_size, align 4, !dbg !690
  %"$gasrem_3182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3183" = icmp ugt i64 1, %"$gasrem_3182"
  br i1 %"$gascmp_3183", label %"$out_of_gas_3184", label %"$have_gas_3185"

"$out_of_gas_3184":                               ; preds = %"$have_gas_3177"
  call void @_out_of_gas()
  br label %"$have_gas_3185"

"$have_gas_3185":                                 ; preds = %"$out_of_gas_3184", %"$have_gas_3177"
  %"$consume_3186" = sub i64 %"$gasrem_3182", 1
  store i64 %"$consume_3186", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %zero, metadata !691, metadata !DIExpression()), !dbg !692
  %"$gasrem_3187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3188" = icmp ugt i64 1, %"$gasrem_3187"
  br i1 %"$gascmp_3188", label %"$out_of_gas_3189", label %"$have_gas_3190"

"$out_of_gas_3189":                               ; preds = %"$have_gas_3185"
  call void @_out_of_gas()
  br label %"$have_gas_3190"

"$have_gas_3190":                                 ; preds = %"$out_of_gas_3189", %"$have_gas_3185"
  %"$consume_3191" = sub i64 %"$gasrem_3187", 1
  store i64 %"$consume_3191", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4, !dbg !693
  %"$gasrem_3192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3193" = icmp ugt i64 1, %"$gasrem_3192"
  br i1 %"$gascmp_3193", label %"$out_of_gas_3194", label %"$have_gas_3195"

"$out_of_gas_3194":                               ; preds = %"$have_gas_3190"
  call void @_out_of_gas()
  br label %"$have_gas_3195"

"$have_gas_3195":                                 ; preds = %"$out_of_gas_3194", %"$have_gas_3190"
  %"$consume_3196" = sub i64 %"$gasrem_3192", 1
  store i64 %"$consume_3196", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %is_empty, metadata !694, metadata !DIExpression()), !dbg !695
  %"$gasrem_3197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3198" = icmp ugt i64 4, %"$gasrem_3197"
  br i1 %"$gascmp_3198", label %"$out_of_gas_3199", label %"$have_gas_3200"

"$out_of_gas_3199":                               ; preds = %"$have_gas_3195"
  call void @_out_of_gas()
  br label %"$have_gas_3200"

"$have_gas_3200":                                 ; preds = %"$out_of_gas_3199", %"$have_gas_3195"
  %"$consume_3201" = sub i64 %"$gasrem_3197", 4
  store i64 %"$consume_3201", i64* @_gasrem, align 8
  %"$execptr_load_3202" = load i8*, i8** @_execptr, align 8
  %"$m_size_3203" = load %Uint32, %Uint32* %m_size, align 4
  %"$zero_3204" = load %Uint32, %Uint32* %zero, align 4
  %"$eq_call_3205" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3202", %Uint32 %"$m_size_3203", %Uint32 %"$zero_3204"), !dbg !696
  store %TName_Bool* %"$eq_call_3205", %TName_Bool** %is_empty, align 8, !dbg !696
  %"$gasrem_3207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3208" = icmp ugt i64 2, %"$gasrem_3207"
  br i1 %"$gascmp_3208", label %"$out_of_gas_3209", label %"$have_gas_3210"

"$out_of_gas_3209":                               ; preds = %"$have_gas_3200"
  call void @_out_of_gas()
  br label %"$have_gas_3210"

"$have_gas_3210":                                 ; preds = %"$out_of_gas_3209", %"$have_gas_3200"
  %"$consume_3211" = sub i64 %"$gasrem_3207", 2
  store i64 %"$consume_3211", i64* @_gasrem, align 8
  %"$is_empty_3213" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_3214" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_3213", i32 0, i32 0
  %"$is_empty_tag_3215" = load i8, i8* %"$is_empty_tag_3214", align 1
  switch i8 %"$is_empty_tag_3215", label %"$empty_default_3216" [
    i8 0, label %"$True_3217"
    i8 1, label %"$False_3219"
  ], !dbg !697

"$True_3217":                                     ; preds = %"$have_gas_3210"
  %"$is_empty_3218" = bitcast %TName_Bool* %"$is_empty_3213" to %CName_True*
  br label %"$matchsucc_3212"

"$False_3219":                                    ; preds = %"$have_gas_3210"
  %"$is_empty_3220" = bitcast %TName_Bool* %"$is_empty_3213" to %CName_False*
  %"$gasrem_3221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3222" = icmp ugt i64 1, %"$gasrem_3221"
  br i1 %"$gascmp_3222", label %"$out_of_gas_3223", label %"$have_gas_3224"

"$out_of_gas_3223":                               ; preds = %"$False_3219"
  call void @_out_of_gas()
  br label %"$have_gas_3224"

"$have_gas_3224":                                 ; preds = %"$out_of_gas_3223", %"$False_3219"
  %"$consume_3225" = sub i64 %"$gasrem_3221", 1
  store i64 %"$consume_3225", i64* @_gasrem, align 8
  %msg = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %msg, metadata !698, metadata !DIExpression()), !dbg !701
  %"$gasrem_3226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3227" = icmp ugt i64 1, %"$gasrem_3226"
  br i1 %"$gascmp_3227", label %"$out_of_gas_3228", label %"$have_gas_3229"

"$out_of_gas_3228":                               ; preds = %"$have_gas_3224"
  call void @_out_of_gas()
  br label %"$have_gas_3229"

"$have_gas_3229":                                 ; preds = %"$out_of_gas_3228", %"$have_gas_3224"
  %"$consume_3230" = sub i64 %"$gasrem_3226", 1
  store i64 %"$consume_3230", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @"$stringlit_3231", i32 0, i32 0), i32 29 }, %String* %msg, align 8, !dbg !702
  %"$gasrem_3232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3233" = icmp ugt i64 1, %"$gasrem_3232"
  br i1 %"$gascmp_3233", label %"$out_of_gas_3234", label %"$have_gas_3235"

"$out_of_gas_3234":                               ; preds = %"$have_gas_3229"
  call void @_out_of_gas()
  br label %"$have_gas_3235"

"$have_gas_3235":                                 ; preds = %"$out_of_gas_3234", %"$have_gas_3229"
  %"$consume_3236" = sub i64 %"$gasrem_3232", 1
  store i64 %"$consume_3236", i64* @_gasrem, align 8
  %"$fail_msg__origin_3237" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3237", align 1
  %"$fail_msg__sender_3238" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3238", align 1
  %"$tname_3239" = load %String, %String* %tname, align 8
  %"$msg_3240" = load %String, %String* %msg, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3237", [20 x i8]* %"$fail_msg__sender_3238", %String %"$tname_3239", %String %"$msg_3240"), !dbg !703
  br label %"$matchsucc_3212"

"$empty_default_3216":                            ; preds = %"$have_gas_3210"
  br label %"$matchsucc_3212"

"$matchsucc_3212":                                ; preds = %"$have_gas_3235", %"$True_3217", %"$empty_default_3216"
  br label %"$matchsucc_3160"

"$None_3241":                                     ; preds = %"$have_gas_3158"
  %"$mo_3242" = bitcast %"TName_Option_Map_(String)_(String)"* %"$mo_3161" to %"CName_None_Map_(String)_(String)"*
  %"$gasrem_3243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3244" = icmp ugt i64 1, %"$gasrem_3243"
  br i1 %"$gascmp_3244", label %"$out_of_gas_3245", label %"$have_gas_3246"

"$out_of_gas_3245":                               ; preds = %"$None_3241"
  call void @_out_of_gas()
  br label %"$have_gas_3246"

"$have_gas_3246":                                 ; preds = %"$out_of_gas_3245", %"$None_3241"
  %"$consume_3247" = sub i64 %"$gasrem_3243", 1
  store i64 %"$consume_3247", i64* @_gasrem, align 8
  %"$fail__origin_3248" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_3248", align 1
  %"$fail__sender_3249" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_3249", align 1
  %"$tname_3250" = load %String, %String* %tname, align 8
  call void @"$fail_254"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_3248", [20 x i8]* %"$fail__sender_3249", %String %"$tname_3250"), !dbg !704
  br label %"$matchsucc_3160"

"$empty_default_3164":                            ; preds = %"$have_gas_3158"
  br label %"$matchsucc_3160"

"$matchsucc_3160":                                ; preds = %"$have_gas_3246", %"$matchsucc_3212", %"$empty_default_3164"
  %"$gasrem_3251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3252" = icmp ugt i64 1, %"$gasrem_3251"
  br i1 %"$gascmp_3252", label %"$out_of_gas_3253", label %"$have_gas_3254"

"$out_of_gas_3253":                               ; preds = %"$matchsucc_3160"
  call void @_out_of_gas()
  br label %"$have_gas_3254"

"$have_gas_3254":                                 ; preds = %"$out_of_gas_3253", %"$matchsucc_3160"
  %"$consume_3255" = sub i64 %"$gasrem_3251", 1
  store i64 %"$consume_3255", i64* @_gasrem, align 8
  %m3 = alloca %Map_String_String*, align 8
  call void @llvm.dbg.declare(metadata %Map_String_String** %m3, metadata !706, metadata !DIExpression()), !dbg !707
  %"$gasrem_3256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3257" = icmp ugt i64 1, %"$gasrem_3256"
  br i1 %"$gascmp_3257", label %"$out_of_gas_3258", label %"$have_gas_3259"

"$out_of_gas_3258":                               ; preds = %"$have_gas_3254"
  call void @_out_of_gas()
  br label %"$have_gas_3259"

"$have_gas_3259":                                 ; preds = %"$out_of_gas_3258", %"$have_gas_3254"
  %"$consume_3260" = sub i64 %"$gasrem_3256", 1
  store i64 %"$consume_3260", i64* @_gasrem, align 8
  %"$execptr_load_3261" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3262" = call i8* @_new_empty_map(i8* %"$execptr_load_3261")
  %"$_new_empty_map_3263" = bitcast i8* %"$_new_empty_map_call_3262" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_3263", %Map_String_String** %m3, align 8, !dbg !708
  %"$gasrem_3264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3265" = icmp ugt i64 1, %"$gasrem_3264"
  br i1 %"$gascmp_3265", label %"$out_of_gas_3266", label %"$have_gas_3267"

"$out_of_gas_3266":                               ; preds = %"$have_gas_3259"
  call void @_out_of_gas()
  br label %"$have_gas_3267"

"$have_gas_3267":                                 ; preds = %"$out_of_gas_3266", %"$have_gas_3259"
  %"$consume_3268" = sub i64 %"$gasrem_3264", 1
  store i64 %"$consume_3268", i64* @_gasrem, align 8
  %m2 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  call void @llvm.dbg.declare(metadata %"Map_String_Map_(String)_(String)"** %m2, metadata !709, metadata !DIExpression()), !dbg !710
  %"$gasrem_3269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3270" = icmp ugt i64 1, %"$gasrem_3269"
  br i1 %"$gascmp_3270", label %"$out_of_gas_3271", label %"$have_gas_3272"

"$out_of_gas_3271":                               ; preds = %"$have_gas_3267"
  call void @_out_of_gas()
  br label %"$have_gas_3272"

"$have_gas_3272":                                 ; preds = %"$out_of_gas_3271", %"$have_gas_3267"
  %"$consume_3273" = sub i64 %"$gasrem_3269", 1
  store i64 %"$consume_3273", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key2a, metadata !711, metadata !DIExpression()), !dbg !712
  %"$gasrem_3274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3275" = icmp ugt i64 1, %"$gasrem_3274"
  br i1 %"$gascmp_3275", label %"$out_of_gas_3276", label %"$have_gas_3277"

"$out_of_gas_3276":                               ; preds = %"$have_gas_3272"
  call void @_out_of_gas()
  br label %"$have_gas_3277"

"$have_gas_3277":                                 ; preds = %"$out_of_gas_3276", %"$have_gas_3272"
  %"$consume_3278" = sub i64 %"$gasrem_3274", 1
  store i64 %"$consume_3278", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3279", i32 0, i32 0), i32 5 }, %String* %key2a, align 8, !dbg !713
  %"$gasrem_3280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3281" = icmp ugt i64 1, %"$gasrem_3280"
  br i1 %"$gascmp_3281", label %"$out_of_gas_3282", label %"$have_gas_3283"

"$out_of_gas_3282":                               ; preds = %"$have_gas_3277"
  call void @_out_of_gas()
  br label %"$have_gas_3283"

"$have_gas_3283":                                 ; preds = %"$out_of_gas_3282", %"$have_gas_3277"
  %"$consume_3284" = sub i64 %"$gasrem_3280", 1
  store i64 %"$consume_3284", i64* @_gasrem, align 8
  %e = alloca %"Map_String_Map_(String)_(String)"*, align 8
  call void @llvm.dbg.declare(metadata %"Map_String_Map_(String)_(String)"** %e, metadata !714, metadata !DIExpression()), !dbg !715
  %"$gasrem_3285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3286" = icmp ugt i64 1, %"$gasrem_3285"
  br i1 %"$gascmp_3286", label %"$out_of_gas_3287", label %"$have_gas_3288"

"$out_of_gas_3287":                               ; preds = %"$have_gas_3283"
  call void @_out_of_gas()
  br label %"$have_gas_3288"

"$have_gas_3288":                                 ; preds = %"$out_of_gas_3287", %"$have_gas_3283"
  %"$consume_3289" = sub i64 %"$gasrem_3285", 1
  store i64 %"$consume_3289", i64* @_gasrem, align 8
  %"$execptr_load_3290" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3291" = call i8* @_new_empty_map(i8* %"$execptr_load_3290")
  %"$_new_empty_map_3292" = bitcast i8* %"$_new_empty_map_call_3291" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_3292", %"Map_String_Map_(String)_(String)"** %e, align 8, !dbg !716
  %"$e_3293" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$$e_3293_3294" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_3293" to i8*
  %"$_lengthof_call_3295" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_76", i8* %"$$e_3293_3294")
  %"$gasadd_3296" = add i64 1, %"$_lengthof_call_3295"
  %"$gasrem_3297" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3298" = icmp ugt i64 %"$gasadd_3296", %"$gasrem_3297"
  br i1 %"$gascmp_3298", label %"$out_of_gas_3299", label %"$have_gas_3300"

"$out_of_gas_3299":                               ; preds = %"$have_gas_3288"
  call void @_out_of_gas()
  br label %"$have_gas_3300"

"$have_gas_3300":                                 ; preds = %"$out_of_gas_3299", %"$have_gas_3288"
  %"$consume_3301" = sub i64 %"$gasrem_3297", %"$gasadd_3296"
  store i64 %"$consume_3301", i64* @_gasrem, align 8
  %"$execptr_load_3302" = load i8*, i8** @_execptr, align 8
  %"$e_3303" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$$e_3303_3304" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_3303" to i8*
  %"$put_key2a_3305" = alloca %String, align 8
  %"$key2a_3306" = load %String, %String* %key2a, align 8
  store %String %"$key2a_3306", %String* %"$put_key2a_3305", align 8
  %"$$put_key2a_3305_3307" = bitcast %String* %"$put_key2a_3305" to i8*
  %"$m3_3308" = load %Map_String_String*, %Map_String_String** %m3, align 8
  %"$$m3_3308_3309" = bitcast %Map_String_String* %"$m3_3308" to i8*
  %"$put_call_3310" = call i8* @_put(i8* %"$execptr_load_3302", %_TyDescrTy_Typ* @"$TyDescr_Map_76", i8* %"$$e_3303_3304", i8* %"$$put_key2a_3305_3307", i8* %"$$m3_3308_3309"), !dbg !717
  %"$put_3311" = bitcast i8* %"$put_call_3310" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$put_3311", %"Map_String_Map_(String)_(String)"** %m2, align 8, !dbg !717
  %"$gasrem_3312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3313" = icmp ugt i64 1, %"$gasrem_3312"
  br i1 %"$gascmp_3313", label %"$out_of_gas_3314", label %"$have_gas_3315"

"$out_of_gas_3314":                               ; preds = %"$have_gas_3300"
  call void @_out_of_gas()
  br label %"$have_gas_3315"

"$have_gas_3315":                                 ; preds = %"$out_of_gas_3314", %"$have_gas_3300"
  %"$consume_3316" = sub i64 %"$gasrem_3312", 1
  store i64 %"$consume_3316", i64* @_gasrem, align 8
  %"$m3_14" = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*, align 8
  call void @llvm.dbg.declare(metadata %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$m3_14", metadata !718, metadata !DIExpression()), !dbg !719
  %"$gasrem_3317" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3318" = icmp ugt i64 1, %"$gasrem_3317"
  br i1 %"$gascmp_3318", label %"$out_of_gas_3319", label %"$have_gas_3320"

"$out_of_gas_3319":                               ; preds = %"$have_gas_3315"
  call void @_out_of_gas()
  br label %"$have_gas_3320"

"$have_gas_3320":                                 ; preds = %"$out_of_gas_3319", %"$have_gas_3315"
  %"$consume_3321" = sub i64 %"$gasrem_3317", 1
  store i64 %"$consume_3321", i64* @_gasrem, align 8
  %"$e_13" = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*, align 8
  call void @llvm.dbg.declare(metadata %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$e_13", metadata !720, metadata !DIExpression()), !dbg !721
  %"$gasrem_3322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3323" = icmp ugt i64 1, %"$gasrem_3322"
  br i1 %"$gascmp_3323", label %"$out_of_gas_3324", label %"$have_gas_3325"

"$out_of_gas_3324":                               ; preds = %"$have_gas_3320"
  call void @_out_of_gas()
  br label %"$have_gas_3325"

"$have_gas_3325":                                 ; preds = %"$out_of_gas_3324", %"$have_gas_3320"
  %"$consume_3326" = sub i64 %"$gasrem_3322", 1
  store i64 %"$consume_3326", i64* @_gasrem, align 8
  %"$execptr_load_3327" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3328" = call i8* @_new_empty_map(i8* %"$execptr_load_3327")
  %"$_new_empty_map_3329" = bitcast i8* %"$_new_empty_map_call_3328" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$_new_empty_map_3329", %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$e_13", align 8, !dbg !722
  %"$$e_13_3330" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$e_13", align 8
  %"$$$e_13_3330_3331" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$e_13_3330" to i8*
  %"$_lengthof_call_3332" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$$e_13_3330_3331")
  %"$gasadd_3333" = add i64 1, %"$_lengthof_call_3332"
  %"$gasrem_3334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3335" = icmp ugt i64 %"$gasadd_3333", %"$gasrem_3334"
  br i1 %"$gascmp_3335", label %"$out_of_gas_3336", label %"$have_gas_3337"

"$out_of_gas_3336":                               ; preds = %"$have_gas_3325"
  call void @_out_of_gas()
  br label %"$have_gas_3337"

"$have_gas_3337":                                 ; preds = %"$out_of_gas_3336", %"$have_gas_3325"
  %"$consume_3338" = sub i64 %"$gasrem_3334", %"$gasadd_3333"
  store i64 %"$consume_3338", i64* @_gasrem, align 8
  %"$execptr_load_3339" = load i8*, i8** @_execptr, align 8
  %"$$e_13_3340" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$e_13", align 8
  %"$$$e_13_3340_3341" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$e_13_3340" to i8*
  %"$put_key1a_3342" = alloca %String, align 8
  %"$key1a_3343" = load %String, %String* %key1a, align 8
  store %String %"$key1a_3343", %String* %"$put_key1a_3342", align 8
  %"$$put_key1a_3342_3344" = bitcast %String* %"$put_key1a_3342" to i8*
  %"$m2_3345" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_3345_3346" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_3345" to i8*
  %"$put_call_3347" = call i8* @_put(i8* %"$execptr_load_3339", %_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$$e_13_3340_3341", i8* %"$$put_key1a_3342_3344", i8* %"$$m2_3345_3346"), !dbg !723
  %"$put_3348" = bitcast i8* %"$put_call_3347" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$put_3348", %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$m3_14", align 8, !dbg !723
  %"$$m3_14_3349" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$m3_14", align 8
  %"$$$m3_14_3349_3350" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$m3_14_3349" to i8*
  %"$_literal_cost_call_3351" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$$m3_14_3349_3350")
  %"$gasrem_3352" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3353" = icmp ugt i64 %"$_literal_cost_call_3351", %"$gasrem_3352"
  br i1 %"$gascmp_3353", label %"$out_of_gas_3354", label %"$have_gas_3355"

"$out_of_gas_3354":                               ; preds = %"$have_gas_3337"
  call void @_out_of_gas()
  br label %"$have_gas_3355"

"$have_gas_3355":                                 ; preds = %"$out_of_gas_3354", %"$have_gas_3337"
  %"$consume_3356" = sub i64 %"$gasrem_3352", %"$_literal_cost_call_3351"
  store i64 %"$consume_3356", i64* @_gasrem, align 8
  %"$execptr_load_3357" = load i8*, i8** @_execptr, align 8
  %"$$m3_14_3359" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %"$m3_14", align 8
  %"$update_value_3360" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$$m3_14_3359" to i8*
  call void @_update_field(i8* %"$execptr_load_3357", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_3358", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 0, i8* null, i8* %"$update_value_3360"), !dbg !724
  ret void
}

define void @t13(i8* %0) !dbg !725 {
entry:
  %"$_amount_3365" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3366" = bitcast i8* %"$_amount_3365" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3366", align 8
  %"$_origin_3367" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3368" = bitcast i8* %"$_origin_3367" to [20 x i8]*
  %"$_sender_3369" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3370" = bitcast i8* %"$_sender_3369" to [20 x i8]*
  call void @"$t13_3110"(%Uint128 %_amount, [20 x i8]* %"$_origin_3368", [20 x i8]* %"$_sender_3370"), !dbg !726
  ret void
}

define internal void @"$t14_3371"(%Uint128 %_amount, [20 x i8]* %"$_origin_3372", [20 x i8]* %"$_sender_3373") !dbg !727 {
entry:
  %"$_sender_3488" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_3373", [20 x i8]** %"$_sender_3488", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_3488", metadata !728, metadata !DIExpression()), !dbg !729
  %"$_origin_3487" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_3372", [20 x i8]** %"$_origin_3487", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_3487", metadata !730, metadata !DIExpression()), !dbg !729
  %"$_amount_3486" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_3486", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_3486", metadata !731, metadata !DIExpression()), !dbg !729
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3372", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3373", align 1
  %"$gasrem_3374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3375" = icmp ugt i64 1, %"$gasrem_3374"
  br i1 %"$gascmp_3375", label %"$out_of_gas_3376", label %"$have_gas_3377"

"$out_of_gas_3376":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3377"

"$have_gas_3377":                                 ; preds = %"$out_of_gas_3376", %entry
  %"$consume_3378" = sub i64 %"$gasrem_3374", 1
  store i64 %"$consume_3378", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %tname, metadata !732, metadata !DIExpression()), !dbg !733
  %"$gasrem_3379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3380" = icmp ugt i64 1, %"$gasrem_3379"
  br i1 %"$gascmp_3380", label %"$out_of_gas_3381", label %"$have_gas_3382"

"$out_of_gas_3381":                               ; preds = %"$have_gas_3377"
  call void @_out_of_gas()
  br label %"$have_gas_3382"

"$have_gas_3382":                                 ; preds = %"$out_of_gas_3381", %"$have_gas_3377"
  %"$consume_3383" = sub i64 %"$gasrem_3379", 1
  store i64 %"$consume_3383", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3384", i32 0, i32 0), i32 3 }, %String* %tname, align 8, !dbg !734
  %m3 = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*, align 8
  call void @llvm.dbg.declare(metadata %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, metadata !735, metadata !DIExpression()), !dbg !736
  %"$execptr_load_3386" = load i8*, i8** @_execptr, align 8
  %"$m3_call_3387" = call i8* @_fetch_field(i8* %"$execptr_load_3386", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_3385", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 0, i8* null, i32 1), !dbg !736
  %"$m3_3388" = bitcast i8* %"$m3_call_3387" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3388", %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$m3_3389" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3389_3390" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3389" to i8*
  %"$_literal_cost_call_3391" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m3_3389_3390")
  %"$m3_3392" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3392_3393" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3392" to i8*
  %"$_mapsortcost_call_3394" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m3_3392_3393")
  %"$gasadd_3395" = add i64 %"$_literal_cost_call_3391", %"$_mapsortcost_call_3394"
  %"$gasrem_3396" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3397" = icmp ugt i64 %"$gasadd_3395", %"$gasrem_3396"
  br i1 %"$gascmp_3397", label %"$out_of_gas_3398", label %"$have_gas_3399"

"$out_of_gas_3398":                               ; preds = %"$have_gas_3382"
  call void @_out_of_gas()
  br label %"$have_gas_3399"

"$have_gas_3399":                                 ; preds = %"$out_of_gas_3398", %"$have_gas_3382"
  %"$consume_3400" = sub i64 %"$gasrem_3396", %"$gasadd_3395"
  store i64 %"$consume_3400", i64* @_gasrem, align 8
  %"$gasrem_3401" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3402" = icmp ugt i64 1, %"$gasrem_3401"
  br i1 %"$gascmp_3402", label %"$out_of_gas_3403", label %"$have_gas_3404"

"$out_of_gas_3403":                               ; preds = %"$have_gas_3399"
  call void @_out_of_gas()
  br label %"$have_gas_3404"

"$have_gas_3404":                                 ; preds = %"$out_of_gas_3403", %"$have_gas_3399"
  %"$consume_3405" = sub i64 %"$gasrem_3401", 1
  store i64 %"$consume_3405", i64* @_gasrem, align 8
  %m3_size = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %m3_size, metadata !737, metadata !DIExpression()), !dbg !738
  %"$gasrem_3406" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3407" = icmp ugt i64 1, %"$gasrem_3406"
  br i1 %"$gascmp_3407", label %"$out_of_gas_3408", label %"$have_gas_3409"

"$out_of_gas_3408":                               ; preds = %"$have_gas_3404"
  call void @_out_of_gas()
  br label %"$have_gas_3409"

"$have_gas_3409":                                 ; preds = %"$out_of_gas_3408", %"$have_gas_3404"
  %"$consume_3410" = sub i64 %"$gasrem_3406", 1
  store i64 %"$consume_3410", i64* @_gasrem, align 8
  %"$m3_3411" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3411_3412" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3411" to i8*
  %"$size_call_3413" = call %Uint32 @_size(i8* %"$$m3_3411_3412"), !dbg !739
  store %Uint32 %"$size_call_3413", %Uint32* %m3_size, align 4, !dbg !739
  %"$gasrem_3414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3415" = icmp ugt i64 1, %"$gasrem_3414"
  br i1 %"$gascmp_3415", label %"$out_of_gas_3416", label %"$have_gas_3417"

"$out_of_gas_3416":                               ; preds = %"$have_gas_3409"
  call void @_out_of_gas()
  br label %"$have_gas_3417"

"$have_gas_3417":                                 ; preds = %"$out_of_gas_3416", %"$have_gas_3409"
  %"$consume_3418" = sub i64 %"$gasrem_3414", 1
  store i64 %"$consume_3418", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %one, metadata !740, metadata !DIExpression()), !dbg !741
  %"$gasrem_3419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3420" = icmp ugt i64 1, %"$gasrem_3419"
  br i1 %"$gascmp_3420", label %"$out_of_gas_3421", label %"$have_gas_3422"

"$out_of_gas_3421":                               ; preds = %"$have_gas_3417"
  call void @_out_of_gas()
  br label %"$have_gas_3422"

"$have_gas_3422":                                 ; preds = %"$out_of_gas_3421", %"$have_gas_3417"
  %"$consume_3423" = sub i64 %"$gasrem_3419", 1
  store i64 %"$consume_3423", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !742
  %"$gasrem_3424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3425" = icmp ugt i64 1, %"$gasrem_3424"
  br i1 %"$gascmp_3425", label %"$out_of_gas_3426", label %"$have_gas_3427"

"$out_of_gas_3426":                               ; preds = %"$have_gas_3422"
  call void @_out_of_gas()
  br label %"$have_gas_3427"

"$have_gas_3427":                                 ; preds = %"$out_of_gas_3426", %"$have_gas_3422"
  %"$consume_3428" = sub i64 %"$gasrem_3424", 1
  store i64 %"$consume_3428", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %is_empty, metadata !743, metadata !DIExpression()), !dbg !744
  %"$gasrem_3429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3430" = icmp ugt i64 4, %"$gasrem_3429"
  br i1 %"$gascmp_3430", label %"$out_of_gas_3431", label %"$have_gas_3432"

"$out_of_gas_3431":                               ; preds = %"$have_gas_3427"
  call void @_out_of_gas()
  br label %"$have_gas_3432"

"$have_gas_3432":                                 ; preds = %"$out_of_gas_3431", %"$have_gas_3427"
  %"$consume_3433" = sub i64 %"$gasrem_3429", 4
  store i64 %"$consume_3433", i64* @_gasrem, align 8
  %"$execptr_load_3434" = load i8*, i8** @_execptr, align 8
  %"$m3_size_3435" = load %Uint32, %Uint32* %m3_size, align 4
  %"$one_3436" = load %Uint32, %Uint32* %one, align 4
  %"$eq_call_3437" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3434", %Uint32 %"$m3_size_3435", %Uint32 %"$one_3436"), !dbg !745
  store %TName_Bool* %"$eq_call_3437", %TName_Bool** %is_empty, align 8, !dbg !745
  %"$gasrem_3439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3440" = icmp ugt i64 2, %"$gasrem_3439"
  br i1 %"$gascmp_3440", label %"$out_of_gas_3441", label %"$have_gas_3442"

"$out_of_gas_3441":                               ; preds = %"$have_gas_3432"
  call void @_out_of_gas()
  br label %"$have_gas_3442"

"$have_gas_3442":                                 ; preds = %"$out_of_gas_3441", %"$have_gas_3432"
  %"$consume_3443" = sub i64 %"$gasrem_3439", 2
  store i64 %"$consume_3443", i64* @_gasrem, align 8
  %"$is_empty_3445" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_3446" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_3445", i32 0, i32 0
  %"$is_empty_tag_3447" = load i8, i8* %"$is_empty_tag_3446", align 1
  switch i8 %"$is_empty_tag_3447", label %"$empty_default_3448" [
    i8 0, label %"$True_3449"
    i8 1, label %"$False_3451"
  ], !dbg !746

"$True_3449":                                     ; preds = %"$have_gas_3442"
  %"$is_empty_3450" = bitcast %TName_Bool* %"$is_empty_3445" to %CName_True*
  br label %"$matchsucc_3444"

"$False_3451":                                    ; preds = %"$have_gas_3442"
  %"$is_empty_3452" = bitcast %TName_Bool* %"$is_empty_3445" to %CName_False*
  %"$gasrem_3453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3454" = icmp ugt i64 1, %"$gasrem_3453"
  br i1 %"$gascmp_3454", label %"$out_of_gas_3455", label %"$have_gas_3456"

"$out_of_gas_3455":                               ; preds = %"$False_3451"
  call void @_out_of_gas()
  br label %"$have_gas_3456"

"$have_gas_3456":                                 ; preds = %"$out_of_gas_3455", %"$False_3451"
  %"$consume_3457" = sub i64 %"$gasrem_3453", 1
  store i64 %"$consume_3457", i64* @_gasrem, align 8
  %"$fail__origin_3458" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_3458", align 1
  %"$fail__sender_3459" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_3459", align 1
  %"$tname_3460" = load %String, %String* %tname, align 8
  call void @"$fail_254"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_3458", [20 x i8]* %"$fail__sender_3459", %String %"$tname_3460"), !dbg !747
  br label %"$matchsucc_3444"

"$empty_default_3448":                            ; preds = %"$have_gas_3442"
  br label %"$matchsucc_3444"

"$matchsucc_3444":                                ; preds = %"$have_gas_3456", %"$True_3449", %"$empty_default_3448"
  %"$gasrem_3461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3462" = icmp ugt i64 1, %"$gasrem_3461"
  br i1 %"$gascmp_3462", label %"$out_of_gas_3463", label %"$have_gas_3464"

"$out_of_gas_3463":                               ; preds = %"$matchsucc_3444"
  call void @_out_of_gas()
  br label %"$have_gas_3464"

"$have_gas_3464":                                 ; preds = %"$out_of_gas_3463", %"$matchsucc_3444"
  %"$consume_3465" = sub i64 %"$gasrem_3461", 1
  store i64 %"$consume_3465", i64* @_gasrem, align 8
  %e = alloca %"Map_String_Map_(String)_(String)"*, align 8
  call void @llvm.dbg.declare(metadata %"Map_String_Map_(String)_(String)"** %e, metadata !750, metadata !DIExpression()), !dbg !751
  %"$gasrem_3466" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3467" = icmp ugt i64 1, %"$gasrem_3466"
  br i1 %"$gascmp_3467", label %"$out_of_gas_3468", label %"$have_gas_3469"

"$out_of_gas_3468":                               ; preds = %"$have_gas_3464"
  call void @_out_of_gas()
  br label %"$have_gas_3469"

"$have_gas_3469":                                 ; preds = %"$out_of_gas_3468", %"$have_gas_3464"
  %"$consume_3470" = sub i64 %"$gasrem_3466", 1
  store i64 %"$consume_3470", i64* @_gasrem, align 8
  %"$execptr_load_3471" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3472" = call i8* @_new_empty_map(i8* %"$execptr_load_3471")
  %"$_new_empty_map_3473" = bitcast i8* %"$_new_empty_map_call_3472" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_3473", %"Map_String_Map_(String)_(String)"** %e, align 8, !dbg !752
  %"$e_3474" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$$e_3474_3475" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_3474" to i8*
  %"$_literal_cost_call_3476" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_76", i8* %"$$e_3474_3475")
  %"$gasrem_3477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3478" = icmp ugt i64 %"$_literal_cost_call_3476", %"$gasrem_3477"
  br i1 %"$gascmp_3478", label %"$out_of_gas_3479", label %"$have_gas_3480"

"$out_of_gas_3479":                               ; preds = %"$have_gas_3469"
  call void @_out_of_gas()
  br label %"$have_gas_3480"

"$have_gas_3480":                                 ; preds = %"$out_of_gas_3479", %"$have_gas_3469"
  %"$consume_3481" = sub i64 %"$gasrem_3477", %"$_literal_cost_call_3476"
  store i64 %"$consume_3481", i64* @_gasrem, align 8
  %"$execptr_load_3482" = load i8*, i8** @_execptr, align 8
  %"$e_3484" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %e, align 8
  %"$update_value_3485" = bitcast %"Map_String_Map_(String)_(String)"* %"$e_3484" to i8*
  call void @_update_field(i8* %"$execptr_load_3482", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$f_m_3483", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 0, i8* null, i8* %"$update_value_3485"), !dbg !753
  ret void
}

define void @t14(i8* %0) !dbg !754 {
entry:
  %"$_amount_3490" = getelementptr i8, i8* %0, i32 0
  %"$_amount_3491" = bitcast i8* %"$_amount_3490" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_3491", align 8
  %"$_origin_3492" = getelementptr i8, i8* %0, i32 16
  %"$_origin_3493" = bitcast i8* %"$_origin_3492" to [20 x i8]*
  %"$_sender_3494" = getelementptr i8, i8* %0, i32 36
  %"$_sender_3495" = bitcast i8* %"$_sender_3494" to [20 x i8]*
  call void @"$t14_3371"(%Uint128 %_amount, [20 x i8]* %"$_origin_3493", [20 x i8]* %"$_sender_3495"), !dbg !755
  ret void
}

define internal void @"$t15_3496"(%Uint128 %_amount, [20 x i8]* %"$_origin_3497", [20 x i8]* %"$_sender_3498") !dbg !756 {
entry:
  %"$_sender_4219" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_3498", [20 x i8]** %"$_sender_4219", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_4219", metadata !757, metadata !DIExpression()), !dbg !758
  %"$_origin_4218" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_3497", [20 x i8]** %"$_origin_4218", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_4218", metadata !759, metadata !DIExpression()), !dbg !758
  %"$_amount_4217" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_4217", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_4217", metadata !760, metadata !DIExpression()), !dbg !758
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_3497", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_3498", align 1
  %"$gasrem_3499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3500" = icmp ugt i64 1, %"$gasrem_3499"
  br i1 %"$gascmp_3500", label %"$out_of_gas_3501", label %"$have_gas_3502"

"$out_of_gas_3501":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_3502"

"$have_gas_3502":                                 ; preds = %"$out_of_gas_3501", %entry
  %"$consume_3503" = sub i64 %"$gasrem_3499", 1
  store i64 %"$consume_3503", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %tname, metadata !761, metadata !DIExpression()), !dbg !762
  %"$gasrem_3504" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3505" = icmp ugt i64 1, %"$gasrem_3504"
  br i1 %"$gascmp_3505", label %"$out_of_gas_3506", label %"$have_gas_3507"

"$out_of_gas_3506":                               ; preds = %"$have_gas_3502"
  call void @_out_of_gas()
  br label %"$have_gas_3507"

"$have_gas_3507":                                 ; preds = %"$out_of_gas_3506", %"$have_gas_3502"
  %"$consume_3508" = sub i64 %"$gasrem_3504", 1
  store i64 %"$consume_3508", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3509", i32 0, i32 0), i32 3 }, %String* %tname, align 8, !dbg !763
  %m3 = alloca %"Map_String_Map_(String)_(Map_(String)_(String))"*, align 8
  call void @llvm.dbg.declare(metadata %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, metadata !764, metadata !DIExpression()), !dbg !765
  %"$execptr_load_3511" = load i8*, i8** @_execptr, align 8
  %"$m3_call_3512" = call i8* @_fetch_field(i8* %"$execptr_load_3511", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m3_3510", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_75", i32 0, i8* null, i32 1), !dbg !765
  %"$m3_3513" = bitcast i8* %"$m3_call_3512" to %"Map_String_Map_(String)_(Map_(String)_(String))"*
  store %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3513", %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$m3_3514" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3514_3515" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3514" to i8*
  %"$_literal_cost_call_3516" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m3_3514_3515")
  %"$m3_3517" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3517_3518" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3517" to i8*
  %"$_mapsortcost_call_3519" = call i64 @_mapsortcost(%_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m3_3517_3518")
  %"$gasadd_3520" = add i64 %"$_literal_cost_call_3516", %"$_mapsortcost_call_3519"
  %"$gasrem_3521" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3522" = icmp ugt i64 %"$gasadd_3520", %"$gasrem_3521"
  br i1 %"$gascmp_3522", label %"$out_of_gas_3523", label %"$have_gas_3524"

"$out_of_gas_3523":                               ; preds = %"$have_gas_3507"
  call void @_out_of_gas()
  br label %"$have_gas_3524"

"$have_gas_3524":                                 ; preds = %"$out_of_gas_3523", %"$have_gas_3507"
  %"$consume_3525" = sub i64 %"$gasrem_3521", %"$gasadd_3520"
  store i64 %"$consume_3525", i64* @_gasrem, align 8
  %"$gasrem_3526" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3527" = icmp ugt i64 1, %"$gasrem_3526"
  br i1 %"$gascmp_3527", label %"$out_of_gas_3528", label %"$have_gas_3529"

"$out_of_gas_3528":                               ; preds = %"$have_gas_3524"
  call void @_out_of_gas()
  br label %"$have_gas_3529"

"$have_gas_3529":                                 ; preds = %"$out_of_gas_3528", %"$have_gas_3524"
  %"$consume_3530" = sub i64 %"$gasrem_3526", 1
  store i64 %"$consume_3530", i64* @_gasrem, align 8
  %m3_size = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %m3_size, metadata !766, metadata !DIExpression()), !dbg !767
  %"$gasrem_3531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3532" = icmp ugt i64 1, %"$gasrem_3531"
  br i1 %"$gascmp_3532", label %"$out_of_gas_3533", label %"$have_gas_3534"

"$out_of_gas_3533":                               ; preds = %"$have_gas_3529"
  call void @_out_of_gas()
  br label %"$have_gas_3534"

"$have_gas_3534":                                 ; preds = %"$out_of_gas_3533", %"$have_gas_3529"
  %"$consume_3535" = sub i64 %"$gasrem_3531", 1
  store i64 %"$consume_3535", i64* @_gasrem, align 8
  %"$m3_3536" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3536_3537" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3536" to i8*
  %"$size_call_3538" = call %Uint32 @_size(i8* %"$$m3_3536_3537"), !dbg !768
  store %Uint32 %"$size_call_3538", %Uint32* %m3_size, align 4, !dbg !768
  %"$gasrem_3539" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3540" = icmp ugt i64 1, %"$gasrem_3539"
  br i1 %"$gascmp_3540", label %"$out_of_gas_3541", label %"$have_gas_3542"

"$out_of_gas_3541":                               ; preds = %"$have_gas_3534"
  call void @_out_of_gas()
  br label %"$have_gas_3542"

"$have_gas_3542":                                 ; preds = %"$out_of_gas_3541", %"$have_gas_3534"
  %"$consume_3543" = sub i64 %"$gasrem_3539", 1
  store i64 %"$consume_3543", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %one, metadata !769, metadata !DIExpression()), !dbg !770
  %"$gasrem_3544" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3545" = icmp ugt i64 1, %"$gasrem_3544"
  br i1 %"$gascmp_3545", label %"$out_of_gas_3546", label %"$have_gas_3547"

"$out_of_gas_3546":                               ; preds = %"$have_gas_3542"
  call void @_out_of_gas()
  br label %"$have_gas_3547"

"$have_gas_3547":                                 ; preds = %"$out_of_gas_3546", %"$have_gas_3542"
  %"$consume_3548" = sub i64 %"$gasrem_3544", 1
  store i64 %"$consume_3548", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !771
  %"$gasrem_3549" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3550" = icmp ugt i64 1, %"$gasrem_3549"
  br i1 %"$gascmp_3550", label %"$out_of_gas_3551", label %"$have_gas_3552"

"$out_of_gas_3551":                               ; preds = %"$have_gas_3547"
  call void @_out_of_gas()
  br label %"$have_gas_3552"

"$have_gas_3552":                                 ; preds = %"$out_of_gas_3551", %"$have_gas_3547"
  %"$consume_3553" = sub i64 %"$gasrem_3549", 1
  store i64 %"$consume_3553", i64* @_gasrem, align 8
  %is_one = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %is_one, metadata !772, metadata !DIExpression()), !dbg !773
  %"$gasrem_3554" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3555" = icmp ugt i64 4, %"$gasrem_3554"
  br i1 %"$gascmp_3555", label %"$out_of_gas_3556", label %"$have_gas_3557"

"$out_of_gas_3556":                               ; preds = %"$have_gas_3552"
  call void @_out_of_gas()
  br label %"$have_gas_3557"

"$have_gas_3557":                                 ; preds = %"$out_of_gas_3556", %"$have_gas_3552"
  %"$consume_3558" = sub i64 %"$gasrem_3554", 4
  store i64 %"$consume_3558", i64* @_gasrem, align 8
  %"$execptr_load_3559" = load i8*, i8** @_execptr, align 8
  %"$m3_size_3560" = load %Uint32, %Uint32* %m3_size, align 4
  %"$one_3561" = load %Uint32, %Uint32* %one, align 4
  %"$eq_call_3562" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3559", %Uint32 %"$m3_size_3560", %Uint32 %"$one_3561"), !dbg !774
  store %TName_Bool* %"$eq_call_3562", %TName_Bool** %is_one, align 8, !dbg !774
  %"$gasrem_3564" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3565" = icmp ugt i64 2, %"$gasrem_3564"
  br i1 %"$gascmp_3565", label %"$out_of_gas_3566", label %"$have_gas_3567"

"$out_of_gas_3566":                               ; preds = %"$have_gas_3557"
  call void @_out_of_gas()
  br label %"$have_gas_3567"

"$have_gas_3567":                                 ; preds = %"$out_of_gas_3566", %"$have_gas_3557"
  %"$consume_3568" = sub i64 %"$gasrem_3564", 2
  store i64 %"$consume_3568", i64* @_gasrem, align 8
  %"$is_one_3570" = load %TName_Bool*, %TName_Bool** %is_one, align 8
  %"$is_one_tag_3571" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_one_3570", i32 0, i32 0
  %"$is_one_tag_3572" = load i8, i8* %"$is_one_tag_3571", align 1
  switch i8 %"$is_one_tag_3572", label %"$empty_default_3573" [
    i8 0, label %"$True_3574"
    i8 1, label %"$False_3576"
  ], !dbg !775

"$True_3574":                                     ; preds = %"$have_gas_3567"
  %"$is_one_3575" = bitcast %TName_Bool* %"$is_one_3570" to %CName_True*
  br label %"$matchsucc_3569"

"$False_3576":                                    ; preds = %"$have_gas_3567"
  %"$is_one_3577" = bitcast %TName_Bool* %"$is_one_3570" to %CName_False*
  %"$gasrem_3578" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3579" = icmp ugt i64 1, %"$gasrem_3578"
  br i1 %"$gascmp_3579", label %"$out_of_gas_3580", label %"$have_gas_3581"

"$out_of_gas_3580":                               ; preds = %"$False_3576"
  call void @_out_of_gas()
  br label %"$have_gas_3581"

"$have_gas_3581":                                 ; preds = %"$out_of_gas_3580", %"$False_3576"
  %"$consume_3582" = sub i64 %"$gasrem_3578", 1
  store i64 %"$consume_3582", i64* @_gasrem, align 8
  %err = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %err, metadata !776, metadata !DIExpression()), !dbg !779
  %"$gasrem_3583" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3584" = icmp ugt i64 1, %"$gasrem_3583"
  br i1 %"$gascmp_3584", label %"$out_of_gas_3585", label %"$have_gas_3586"

"$out_of_gas_3585":                               ; preds = %"$have_gas_3581"
  call void @_out_of_gas()
  br label %"$have_gas_3586"

"$have_gas_3586":                                 ; preds = %"$out_of_gas_3585", %"$have_gas_3581"
  %"$consume_3587" = sub i64 %"$gasrem_3583", 1
  store i64 %"$consume_3587", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @"$stringlit_3588", i32 0, i32 0), i32 22 }, %String* %err, align 8, !dbg !780
  %"$gasrem_3589" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3590" = icmp ugt i64 1, %"$gasrem_3589"
  br i1 %"$gascmp_3590", label %"$out_of_gas_3591", label %"$have_gas_3592"

"$out_of_gas_3591":                               ; preds = %"$have_gas_3586"
  call void @_out_of_gas()
  br label %"$have_gas_3592"

"$have_gas_3592":                                 ; preds = %"$out_of_gas_3591", %"$have_gas_3586"
  %"$consume_3593" = sub i64 %"$gasrem_3589", 1
  store i64 %"$consume_3593", i64* @_gasrem, align 8
  %"$fail_msg__origin_3594" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3594", align 1
  %"$fail_msg__sender_3595" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3595", align 1
  %"$tname_3596" = load %String, %String* %tname, align 8
  %"$err_3597" = load %String, %String* %err, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3594", [20 x i8]* %"$fail_msg__sender_3595", %String %"$tname_3596", %String %"$err_3597"), !dbg !781
  br label %"$matchsucc_3569"

"$empty_default_3573":                            ; preds = %"$have_gas_3567"
  br label %"$matchsucc_3569"

"$matchsucc_3569":                                ; preds = %"$have_gas_3592", %"$True_3574", %"$empty_default_3573"
  %"$gasrem_3598" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3599" = icmp ugt i64 1, %"$gasrem_3598"
  br i1 %"$gascmp_3599", label %"$out_of_gas_3600", label %"$have_gas_3601"

"$out_of_gas_3600":                               ; preds = %"$matchsucc_3569"
  call void @_out_of_gas()
  br label %"$have_gas_3601"

"$have_gas_3601":                                 ; preds = %"$out_of_gas_3600", %"$matchsucc_3569"
  %"$consume_3602" = sub i64 %"$gasrem_3598", 1
  store i64 %"$consume_3602", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key1a, metadata !782, metadata !DIExpression()), !dbg !783
  %"$gasrem_3603" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3604" = icmp ugt i64 1, %"$gasrem_3603"
  br i1 %"$gascmp_3604", label %"$out_of_gas_3605", label %"$have_gas_3606"

"$out_of_gas_3605":                               ; preds = %"$have_gas_3601"
  call void @_out_of_gas()
  br label %"$have_gas_3606"

"$have_gas_3606":                                 ; preds = %"$out_of_gas_3605", %"$have_gas_3601"
  %"$consume_3607" = sub i64 %"$gasrem_3603", 1
  store i64 %"$consume_3607", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3608", i32 0, i32 0), i32 5 }, %String* %key1a, align 8, !dbg !784
  %"$gasrem_3609" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3610" = icmp ugt i64 1, %"$gasrem_3609"
  br i1 %"$gascmp_3610", label %"$out_of_gas_3611", label %"$have_gas_3612"

"$out_of_gas_3611":                               ; preds = %"$have_gas_3606"
  call void @_out_of_gas()
  br label %"$have_gas_3612"

"$have_gas_3612":                                 ; preds = %"$out_of_gas_3611", %"$have_gas_3606"
  %"$consume_3613" = sub i64 %"$gasrem_3609", 1
  store i64 %"$consume_3613", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key2a, metadata !785, metadata !DIExpression()), !dbg !786
  %"$gasrem_3614" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3615" = icmp ugt i64 1, %"$gasrem_3614"
  br i1 %"$gascmp_3615", label %"$out_of_gas_3616", label %"$have_gas_3617"

"$out_of_gas_3616":                               ; preds = %"$have_gas_3612"
  call void @_out_of_gas()
  br label %"$have_gas_3617"

"$have_gas_3617":                                 ; preds = %"$out_of_gas_3616", %"$have_gas_3612"
  %"$consume_3618" = sub i64 %"$gasrem_3614", 1
  store i64 %"$consume_3618", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3619", i32 0, i32 0), i32 5 }, %String* %key2a, align 8, !dbg !787
  %"$gasrem_3620" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3621" = icmp ugt i64 1, %"$gasrem_3620"
  br i1 %"$gascmp_3621", label %"$out_of_gas_3622", label %"$have_gas_3623"

"$out_of_gas_3622":                               ; preds = %"$have_gas_3617"
  call void @_out_of_gas()
  br label %"$have_gas_3623"

"$have_gas_3623":                                 ; preds = %"$out_of_gas_3622", %"$have_gas_3617"
  %"$consume_3624" = sub i64 %"$gasrem_3620", 1
  store i64 %"$consume_3624", i64* @_gasrem, align 8
  %m2o = alloca %"TName_Option_Map_(String)_(Map_(String)_(String))"*, align 8
  call void @llvm.dbg.declare(metadata %"TName_Option_Map_(String)_(Map_(String)_(String))"** %m2o, metadata !788, metadata !DIExpression()), !dbg !791
  %"$gasrem_3625" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3626" = icmp ugt i64 1, %"$gasrem_3625"
  br i1 %"$gascmp_3626", label %"$out_of_gas_3627", label %"$have_gas_3628"

"$out_of_gas_3627":                               ; preds = %"$have_gas_3623"
  call void @_out_of_gas()
  br label %"$have_gas_3628"

"$have_gas_3628":                                 ; preds = %"$out_of_gas_3627", %"$have_gas_3623"
  %"$consume_3629" = sub i64 %"$gasrem_3625", 1
  store i64 %"$consume_3629", i64* @_gasrem, align 8
  %"$execptr_load_3630" = load i8*, i8** @_execptr, align 8
  %"$m3_3631" = load %"Map_String_Map_(String)_(Map_(String)_(String))"*, %"Map_String_Map_(String)_(Map_(String)_(String))"** %m3, align 8
  %"$$m3_3631_3632" = bitcast %"Map_String_Map_(String)_(Map_(String)_(String))"* %"$m3_3631" to i8*
  %"$get_key1a_3633" = alloca %String, align 8
  %"$key1a_3634" = load %String, %String* %key1a, align 8
  store %String %"$key1a_3634", %String* %"$get_key1a_3633", align 8
  %"$$get_key1a_3633_3635" = bitcast %String* %"$get_key1a_3633" to i8*
  %"$get_call_3636" = call i8* @_get(i8* %"$execptr_load_3630", %_TyDescrTy_Typ* @"$TyDescr_Map_75", i8* %"$$m3_3631_3632", i8* %"$$get_key1a_3633_3635"), !dbg !792
  %"$get_3637" = bitcast i8* %"$get_call_3636" to %"TName_Option_Map_(String)_(Map_(String)_(String))"*
  store %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$get_3637", %"TName_Option_Map_(String)_(Map_(String)_(String))"** %m2o, align 8, !dbg !792
  %"$gasrem_3638" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3639" = icmp ugt i64 2, %"$gasrem_3638"
  br i1 %"$gascmp_3639", label %"$out_of_gas_3640", label %"$have_gas_3641"

"$out_of_gas_3640":                               ; preds = %"$have_gas_3628"
  call void @_out_of_gas()
  br label %"$have_gas_3641"

"$have_gas_3641":                                 ; preds = %"$out_of_gas_3640", %"$have_gas_3628"
  %"$consume_3642" = sub i64 %"$gasrem_3638", 2
  store i64 %"$consume_3642", i64* @_gasrem, align 8
  %"$m2o_3644" = load %"TName_Option_Map_(String)_(Map_(String)_(String))"*, %"TName_Option_Map_(String)_(Map_(String)_(String))"** %m2o, align 8
  %"$m2o_tag_3645" = getelementptr inbounds %"TName_Option_Map_(String)_(Map_(String)_(String))", %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$m2o_3644", i32 0, i32 0
  %"$m2o_tag_3646" = load i8, i8* %"$m2o_tag_3645", align 1
  switch i8 %"$m2o_tag_3646", label %"$empty_default_3647" [
    i8 0, label %"$Some_3648"
    i8 1, label %"$None_3840"
  ], !dbg !793

"$Some_3648":                                     ; preds = %"$have_gas_3641"
  %"$m2o_3649" = bitcast %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$m2o_3644" to %"CName_Some_Map_(String)_(Map_(String)_(String))"*
  %"$m2_gep_3650" = getelementptr inbounds %"CName_Some_Map_(String)_(Map_(String)_(String))", %"CName_Some_Map_(String)_(Map_(String)_(String))"* %"$m2o_3649", i32 0, i32 1
  %"$m2_load_3651" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %"$m2_gep_3650", align 8
  %m2 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  store %"Map_String_Map_(String)_(String)"* %"$m2_load_3651", %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$gasrem_3652" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3653" = icmp ugt i64 1, %"$gasrem_3652"
  br i1 %"$gascmp_3653", label %"$out_of_gas_3654", label %"$have_gas_3655"

"$out_of_gas_3654":                               ; preds = %"$Some_3648"
  call void @_out_of_gas()
  br label %"$have_gas_3655"

"$have_gas_3655":                                 ; preds = %"$out_of_gas_3654", %"$Some_3648"
  %"$consume_3656" = sub i64 %"$gasrem_3652", 1
  store i64 %"$consume_3656", i64* @_gasrem, align 8
  %m2_size = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %m2_size, metadata !794, metadata !DIExpression()), !dbg !797
  %"$gasrem_3657" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3658" = icmp ugt i64 1, %"$gasrem_3657"
  br i1 %"$gascmp_3658", label %"$out_of_gas_3659", label %"$have_gas_3660"

"$out_of_gas_3659":                               ; preds = %"$have_gas_3655"
  call void @_out_of_gas()
  br label %"$have_gas_3660"

"$have_gas_3660":                                 ; preds = %"$out_of_gas_3659", %"$have_gas_3655"
  %"$consume_3661" = sub i64 %"$gasrem_3657", 1
  store i64 %"$consume_3661", i64* @_gasrem, align 8
  %"$m2_3662" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_3662_3663" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_3662" to i8*
  %"$size_call_3664" = call %Uint32 @_size(i8* %"$$m2_3662_3663"), !dbg !798
  store %Uint32 %"$size_call_3664", %Uint32* %m2_size, align 4, !dbg !798
  %"$gasrem_3665" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3666" = icmp ugt i64 1, %"$gasrem_3665"
  br i1 %"$gascmp_3666", label %"$out_of_gas_3667", label %"$have_gas_3668"

"$out_of_gas_3667":                               ; preds = %"$have_gas_3660"
  call void @_out_of_gas()
  br label %"$have_gas_3668"

"$have_gas_3668":                                 ; preds = %"$out_of_gas_3667", %"$have_gas_3660"
  %"$consume_3669" = sub i64 %"$gasrem_3665", 1
  store i64 %"$consume_3669", i64* @_gasrem, align 8
  %is_one_1 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %is_one_1, metadata !799, metadata !DIExpression()), !dbg !800
  %"$gasrem_3670" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3671" = icmp ugt i64 4, %"$gasrem_3670"
  br i1 %"$gascmp_3671", label %"$out_of_gas_3672", label %"$have_gas_3673"

"$out_of_gas_3672":                               ; preds = %"$have_gas_3668"
  call void @_out_of_gas()
  br label %"$have_gas_3673"

"$have_gas_3673":                                 ; preds = %"$out_of_gas_3672", %"$have_gas_3668"
  %"$consume_3674" = sub i64 %"$gasrem_3670", 4
  store i64 %"$consume_3674", i64* @_gasrem, align 8
  %"$execptr_load_3675" = load i8*, i8** @_execptr, align 8
  %"$m2_size_3676" = load %Uint32, %Uint32* %m2_size, align 4
  %"$one_3677" = load %Uint32, %Uint32* %one, align 4
  %"$eq_call_3678" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3675", %Uint32 %"$m2_size_3676", %Uint32 %"$one_3677"), !dbg !801
  store %TName_Bool* %"$eq_call_3678", %TName_Bool** %is_one_1, align 8, !dbg !801
  %"$gasrem_3680" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3681" = icmp ugt i64 2, %"$gasrem_3680"
  br i1 %"$gascmp_3681", label %"$out_of_gas_3682", label %"$have_gas_3683"

"$out_of_gas_3682":                               ; preds = %"$have_gas_3673"
  call void @_out_of_gas()
  br label %"$have_gas_3683"

"$have_gas_3683":                                 ; preds = %"$out_of_gas_3682", %"$have_gas_3673"
  %"$consume_3684" = sub i64 %"$gasrem_3680", 2
  store i64 %"$consume_3684", i64* @_gasrem, align 8
  %"$is_one_1_3686" = load %TName_Bool*, %TName_Bool** %is_one_1, align 8
  %"$is_one_1_tag_3687" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_one_1_3686", i32 0, i32 0
  %"$is_one_1_tag_3688" = load i8, i8* %"$is_one_1_tag_3687", align 1
  switch i8 %"$is_one_1_tag_3688", label %"$empty_default_3689" [
    i8 0, label %"$True_3690"
    i8 1, label %"$False_3818"
  ], !dbg !802

"$True_3690":                                     ; preds = %"$have_gas_3683"
  %"$is_one_1_3691" = bitcast %TName_Bool* %"$is_one_1_3686" to %CName_True*
  %"$gasrem_3692" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3693" = icmp ugt i64 1, %"$gasrem_3692"
  br i1 %"$gascmp_3693", label %"$out_of_gas_3694", label %"$have_gas_3695"

"$out_of_gas_3694":                               ; preds = %"$True_3690"
  call void @_out_of_gas()
  br label %"$have_gas_3695"

"$have_gas_3695":                                 ; preds = %"$out_of_gas_3694", %"$True_3690"
  %"$consume_3696" = sub i64 %"$gasrem_3692", 1
  store i64 %"$consume_3696", i64* @_gasrem, align 8
  %m1o = alloca %"TName_Option_Map_(String)_(String)"*, align 8
  call void @llvm.dbg.declare(metadata %"TName_Option_Map_(String)_(String)"** %m1o, metadata !803, metadata !DIExpression()), !dbg !806
  %"$gasrem_3697" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3698" = icmp ugt i64 1, %"$gasrem_3697"
  br i1 %"$gascmp_3698", label %"$out_of_gas_3699", label %"$have_gas_3700"

"$out_of_gas_3699":                               ; preds = %"$have_gas_3695"
  call void @_out_of_gas()
  br label %"$have_gas_3700"

"$have_gas_3700":                                 ; preds = %"$out_of_gas_3699", %"$have_gas_3695"
  %"$consume_3701" = sub i64 %"$gasrem_3697", 1
  store i64 %"$consume_3701", i64* @_gasrem, align 8
  %"$execptr_load_3702" = load i8*, i8** @_execptr, align 8
  %"$m2_3703" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2, align 8
  %"$$m2_3703_3704" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_3703" to i8*
  %"$get_key2a_3705" = alloca %String, align 8
  %"$key2a_3706" = load %String, %String* %key2a, align 8
  store %String %"$key2a_3706", %String* %"$get_key2a_3705", align 8
  %"$$get_key2a_3705_3707" = bitcast %String* %"$get_key2a_3705" to i8*
  %"$get_call_3708" = call i8* @_get(i8* %"$execptr_load_3702", %_TyDescrTy_Typ* @"$TyDescr_Map_76", i8* %"$$m2_3703_3704", i8* %"$$get_key2a_3705_3707"), !dbg !807
  %"$get_3709" = bitcast i8* %"$get_call_3708" to %"TName_Option_Map_(String)_(String)"*
  store %"TName_Option_Map_(String)_(String)"* %"$get_3709", %"TName_Option_Map_(String)_(String)"** %m1o, align 8, !dbg !807
  %"$gasrem_3710" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3711" = icmp ugt i64 2, %"$gasrem_3710"
  br i1 %"$gascmp_3711", label %"$out_of_gas_3712", label %"$have_gas_3713"

"$out_of_gas_3712":                               ; preds = %"$have_gas_3700"
  call void @_out_of_gas()
  br label %"$have_gas_3713"

"$have_gas_3713":                                 ; preds = %"$out_of_gas_3712", %"$have_gas_3700"
  %"$consume_3714" = sub i64 %"$gasrem_3710", 2
  store i64 %"$consume_3714", i64* @_gasrem, align 8
  %"$m1o_3716" = load %"TName_Option_Map_(String)_(String)"*, %"TName_Option_Map_(String)_(String)"** %m1o, align 8
  %"$m1o_tag_3717" = getelementptr inbounds %"TName_Option_Map_(String)_(String)", %"TName_Option_Map_(String)_(String)"* %"$m1o_3716", i32 0, i32 0
  %"$m1o_tag_3718" = load i8, i8* %"$m1o_tag_3717", align 1
  switch i8 %"$m1o_tag_3718", label %"$empty_default_3719" [
    i8 0, label %"$Some_3720"
    i8 1, label %"$None_3796"
  ], !dbg !808

"$Some_3720":                                     ; preds = %"$have_gas_3713"
  %"$m1o_3721" = bitcast %"TName_Option_Map_(String)_(String)"* %"$m1o_3716" to %"CName_Some_Map_(String)_(String)"*
  %"$m1_gep_3722" = getelementptr inbounds %"CName_Some_Map_(String)_(String)", %"CName_Some_Map_(String)_(String)"* %"$m1o_3721", i32 0, i32 1
  %"$m1_load_3723" = load %Map_String_String*, %Map_String_String** %"$m1_gep_3722", align 8
  %m1 = alloca %Map_String_String*, align 8
  store %Map_String_String* %"$m1_load_3723", %Map_String_String** %m1, align 8
  %"$gasrem_3724" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3725" = icmp ugt i64 1, %"$gasrem_3724"
  br i1 %"$gascmp_3725", label %"$out_of_gas_3726", label %"$have_gas_3727"

"$out_of_gas_3726":                               ; preds = %"$Some_3720"
  call void @_out_of_gas()
  br label %"$have_gas_3727"

"$have_gas_3727":                                 ; preds = %"$out_of_gas_3726", %"$Some_3720"
  %"$consume_3728" = sub i64 %"$gasrem_3724", 1
  store i64 %"$consume_3728", i64* @_gasrem, align 8
  %m1_size = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %m1_size, metadata !809, metadata !DIExpression()), !dbg !812
  %"$gasrem_3729" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3730" = icmp ugt i64 1, %"$gasrem_3729"
  br i1 %"$gascmp_3730", label %"$out_of_gas_3731", label %"$have_gas_3732"

"$out_of_gas_3731":                               ; preds = %"$have_gas_3727"
  call void @_out_of_gas()
  br label %"$have_gas_3732"

"$have_gas_3732":                                 ; preds = %"$out_of_gas_3731", %"$have_gas_3727"
  %"$consume_3733" = sub i64 %"$gasrem_3729", 1
  store i64 %"$consume_3733", i64* @_gasrem, align 8
  %"$m1_3734" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_3734_3735" = bitcast %Map_String_String* %"$m1_3734" to i8*
  %"$size_call_3736" = call %Uint32 @_size(i8* %"$$m1_3734_3735"), !dbg !813
  store %Uint32 %"$size_call_3736", %Uint32* %m1_size, align 4, !dbg !813
  %"$gasrem_3737" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3738" = icmp ugt i64 1, %"$gasrem_3737"
  br i1 %"$gascmp_3738", label %"$out_of_gas_3739", label %"$have_gas_3740"

"$out_of_gas_3739":                               ; preds = %"$have_gas_3732"
  call void @_out_of_gas()
  br label %"$have_gas_3740"

"$have_gas_3740":                                 ; preds = %"$out_of_gas_3739", %"$have_gas_3732"
  %"$consume_3741" = sub i64 %"$gasrem_3737", 1
  store i64 %"$consume_3741", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %zero, metadata !814, metadata !DIExpression()), !dbg !815
  %"$gasrem_3742" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3743" = icmp ugt i64 1, %"$gasrem_3742"
  br i1 %"$gascmp_3743", label %"$out_of_gas_3744", label %"$have_gas_3745"

"$out_of_gas_3744":                               ; preds = %"$have_gas_3740"
  call void @_out_of_gas()
  br label %"$have_gas_3745"

"$have_gas_3745":                                 ; preds = %"$out_of_gas_3744", %"$have_gas_3740"
  %"$consume_3746" = sub i64 %"$gasrem_3742", 1
  store i64 %"$consume_3746", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4, !dbg !816
  %"$gasrem_3747" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3748" = icmp ugt i64 1, %"$gasrem_3747"
  br i1 %"$gascmp_3748", label %"$out_of_gas_3749", label %"$have_gas_3750"

"$out_of_gas_3749":                               ; preds = %"$have_gas_3745"
  call void @_out_of_gas()
  br label %"$have_gas_3750"

"$have_gas_3750":                                 ; preds = %"$out_of_gas_3749", %"$have_gas_3745"
  %"$consume_3751" = sub i64 %"$gasrem_3747", 1
  store i64 %"$consume_3751", i64* @_gasrem, align 8
  %is_empty = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %is_empty, metadata !817, metadata !DIExpression()), !dbg !818
  %"$gasrem_3752" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3753" = icmp ugt i64 4, %"$gasrem_3752"
  br i1 %"$gascmp_3753", label %"$out_of_gas_3754", label %"$have_gas_3755"

"$out_of_gas_3754":                               ; preds = %"$have_gas_3750"
  call void @_out_of_gas()
  br label %"$have_gas_3755"

"$have_gas_3755":                                 ; preds = %"$out_of_gas_3754", %"$have_gas_3750"
  %"$consume_3756" = sub i64 %"$gasrem_3752", 4
  store i64 %"$consume_3756", i64* @_gasrem, align 8
  %"$execptr_load_3757" = load i8*, i8** @_execptr, align 8
  %"$m1_size_3758" = load %Uint32, %Uint32* %m1_size, align 4
  %"$zero_3759" = load %Uint32, %Uint32* %zero, align 4
  %"$eq_call_3760" = call %TName_Bool* @_eq_Uint32(i8* %"$execptr_load_3757", %Uint32 %"$m1_size_3758", %Uint32 %"$zero_3759"), !dbg !819
  store %TName_Bool* %"$eq_call_3760", %TName_Bool** %is_empty, align 8, !dbg !819
  %"$gasrem_3762" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3763" = icmp ugt i64 2, %"$gasrem_3762"
  br i1 %"$gascmp_3763", label %"$out_of_gas_3764", label %"$have_gas_3765"

"$out_of_gas_3764":                               ; preds = %"$have_gas_3755"
  call void @_out_of_gas()
  br label %"$have_gas_3765"

"$have_gas_3765":                                 ; preds = %"$out_of_gas_3764", %"$have_gas_3755"
  %"$consume_3766" = sub i64 %"$gasrem_3762", 2
  store i64 %"$consume_3766", i64* @_gasrem, align 8
  %"$is_empty_3768" = load %TName_Bool*, %TName_Bool** %is_empty, align 8
  %"$is_empty_tag_3769" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$is_empty_3768", i32 0, i32 0
  %"$is_empty_tag_3770" = load i8, i8* %"$is_empty_tag_3769", align 1
  switch i8 %"$is_empty_tag_3770", label %"$empty_default_3771" [
    i8 0, label %"$True_3772"
    i8 1, label %"$False_3774"
  ], !dbg !820

"$True_3772":                                     ; preds = %"$have_gas_3765"
  %"$is_empty_3773" = bitcast %TName_Bool* %"$is_empty_3768" to %CName_True*
  br label %"$matchsucc_3767"

"$False_3774":                                    ; preds = %"$have_gas_3765"
  %"$is_empty_3775" = bitcast %TName_Bool* %"$is_empty_3768" to %CName_False*
  %"$gasrem_3776" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3777" = icmp ugt i64 1, %"$gasrem_3776"
  br i1 %"$gascmp_3777", label %"$out_of_gas_3778", label %"$have_gas_3779"

"$out_of_gas_3778":                               ; preds = %"$False_3774"
  call void @_out_of_gas()
  br label %"$have_gas_3779"

"$have_gas_3779":                                 ; preds = %"$out_of_gas_3778", %"$False_3774"
  %"$consume_3780" = sub i64 %"$gasrem_3776", 1
  store i64 %"$consume_3780", i64* @_gasrem, align 8
  %err1 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %err1, metadata !821, metadata !DIExpression()), !dbg !824
  %"$gasrem_3781" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3782" = icmp ugt i64 1, %"$gasrem_3781"
  br i1 %"$gascmp_3782", label %"$out_of_gas_3783", label %"$have_gas_3784"

"$out_of_gas_3783":                               ; preds = %"$have_gas_3779"
  call void @_out_of_gas()
  br label %"$have_gas_3784"

"$have_gas_3784":                                 ; preds = %"$out_of_gas_3783", %"$have_gas_3779"
  %"$consume_3785" = sub i64 %"$gasrem_3781", 1
  store i64 %"$consume_3785", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @"$stringlit_3786", i32 0, i32 0), i32 36 }, %String* %err1, align 8, !dbg !825
  %"$gasrem_3787" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3788" = icmp ugt i64 1, %"$gasrem_3787"
  br i1 %"$gascmp_3788", label %"$out_of_gas_3789", label %"$have_gas_3790"

"$out_of_gas_3789":                               ; preds = %"$have_gas_3784"
  call void @_out_of_gas()
  br label %"$have_gas_3790"

"$have_gas_3790":                                 ; preds = %"$out_of_gas_3789", %"$have_gas_3784"
  %"$consume_3791" = sub i64 %"$gasrem_3787", 1
  store i64 %"$consume_3791", i64* @_gasrem, align 8
  %"$fail_msg__origin_3792" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3792", align 1
  %"$fail_msg__sender_3793" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3793", align 1
  %"$tname_3794" = load %String, %String* %tname, align 8
  %"$err_3795" = load %String, %String* %err1, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3792", [20 x i8]* %"$fail_msg__sender_3793", %String %"$tname_3794", %String %"$err_3795"), !dbg !826
  br label %"$matchsucc_3767"

"$empty_default_3771":                            ; preds = %"$have_gas_3765"
  br label %"$matchsucc_3767"

"$matchsucc_3767":                                ; preds = %"$have_gas_3790", %"$True_3772", %"$empty_default_3771"
  br label %"$matchsucc_3715"

"$None_3796":                                     ; preds = %"$have_gas_3713"
  %"$m1o_3797" = bitcast %"TName_Option_Map_(String)_(String)"* %"$m1o_3716" to %"CName_None_Map_(String)_(String)"*
  %"$gasrem_3798" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3799" = icmp ugt i64 1, %"$gasrem_3798"
  br i1 %"$gascmp_3799", label %"$out_of_gas_3800", label %"$have_gas_3801"

"$out_of_gas_3800":                               ; preds = %"$None_3796"
  call void @_out_of_gas()
  br label %"$have_gas_3801"

"$have_gas_3801":                                 ; preds = %"$out_of_gas_3800", %"$None_3796"
  %"$consume_3802" = sub i64 %"$gasrem_3798", 1
  store i64 %"$consume_3802", i64* @_gasrem, align 8
  %err2 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %err2, metadata !827, metadata !DIExpression()), !dbg !829
  %"$gasrem_3803" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3804" = icmp ugt i64 1, %"$gasrem_3803"
  br i1 %"$gascmp_3804", label %"$out_of_gas_3805", label %"$have_gas_3806"

"$out_of_gas_3805":                               ; preds = %"$have_gas_3801"
  call void @_out_of_gas()
  br label %"$have_gas_3806"

"$have_gas_3806":                                 ; preds = %"$out_of_gas_3805", %"$have_gas_3801"
  %"$consume_3807" = sub i64 %"$gasrem_3803", 1
  store i64 %"$consume_3807", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_3808", i32 0, i32 0), i32 19 }, %String* %err2, align 8, !dbg !830
  %"$gasrem_3809" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3810" = icmp ugt i64 1, %"$gasrem_3809"
  br i1 %"$gascmp_3810", label %"$out_of_gas_3811", label %"$have_gas_3812"

"$out_of_gas_3811":                               ; preds = %"$have_gas_3806"
  call void @_out_of_gas()
  br label %"$have_gas_3812"

"$have_gas_3812":                                 ; preds = %"$out_of_gas_3811", %"$have_gas_3806"
  %"$consume_3813" = sub i64 %"$gasrem_3809", 1
  store i64 %"$consume_3813", i64* @_gasrem, align 8
  %"$fail_msg__origin_3814" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3814", align 1
  %"$fail_msg__sender_3815" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3815", align 1
  %"$tname_3816" = load %String, %String* %tname, align 8
  %"$err_3817" = load %String, %String* %err2, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3814", [20 x i8]* %"$fail_msg__sender_3815", %String %"$tname_3816", %String %"$err_3817"), !dbg !831
  br label %"$matchsucc_3715"

"$empty_default_3719":                            ; preds = %"$have_gas_3713"
  br label %"$matchsucc_3715"

"$matchsucc_3715":                                ; preds = %"$have_gas_3812", %"$matchsucc_3767", %"$empty_default_3719"
  br label %"$matchsucc_3685"

"$False_3818":                                    ; preds = %"$have_gas_3683"
  %"$is_one_1_3819" = bitcast %TName_Bool* %"$is_one_1_3686" to %CName_False*
  %"$gasrem_3820" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3821" = icmp ugt i64 1, %"$gasrem_3820"
  br i1 %"$gascmp_3821", label %"$out_of_gas_3822", label %"$have_gas_3823"

"$out_of_gas_3822":                               ; preds = %"$False_3818"
  call void @_out_of_gas()
  br label %"$have_gas_3823"

"$have_gas_3823":                                 ; preds = %"$out_of_gas_3822", %"$False_3818"
  %"$consume_3824" = sub i64 %"$gasrem_3820", 1
  store i64 %"$consume_3824", i64* @_gasrem, align 8
  %err3 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %err3, metadata !832, metadata !DIExpression()), !dbg !834
  %"$gasrem_3825" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3826" = icmp ugt i64 1, %"$gasrem_3825"
  br i1 %"$gascmp_3826", label %"$out_of_gas_3827", label %"$have_gas_3828"

"$out_of_gas_3827":                               ; preds = %"$have_gas_3823"
  call void @_out_of_gas()
  br label %"$have_gas_3828"

"$have_gas_3828":                                 ; preds = %"$out_of_gas_3827", %"$have_gas_3823"
  %"$consume_3829" = sub i64 %"$gasrem_3825", 1
  store i64 %"$consume_3829", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @"$stringlit_3830", i32 0, i32 0), i32 28 }, %String* %err3, align 8, !dbg !835
  %"$gasrem_3831" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3832" = icmp ugt i64 1, %"$gasrem_3831"
  br i1 %"$gascmp_3832", label %"$out_of_gas_3833", label %"$have_gas_3834"

"$out_of_gas_3833":                               ; preds = %"$have_gas_3828"
  call void @_out_of_gas()
  br label %"$have_gas_3834"

"$have_gas_3834":                                 ; preds = %"$out_of_gas_3833", %"$have_gas_3828"
  %"$consume_3835" = sub i64 %"$gasrem_3831", 1
  store i64 %"$consume_3835", i64* @_gasrem, align 8
  %"$fail_msg__origin_3836" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3836", align 1
  %"$fail_msg__sender_3837" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3837", align 1
  %"$tname_3838" = load %String, %String* %tname, align 8
  %"$err_3839" = load %String, %String* %err3, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3836", [20 x i8]* %"$fail_msg__sender_3837", %String %"$tname_3838", %String %"$err_3839"), !dbg !836
  br label %"$matchsucc_3685"

"$empty_default_3689":                            ; preds = %"$have_gas_3683"
  br label %"$matchsucc_3685"

"$matchsucc_3685":                                ; preds = %"$have_gas_3834", %"$matchsucc_3715", %"$empty_default_3689"
  br label %"$matchsucc_3643"

"$None_3840":                                     ; preds = %"$have_gas_3641"
  %"$m2o_3841" = bitcast %"TName_Option_Map_(String)_(Map_(String)_(String))"* %"$m2o_3644" to %"CName_None_Map_(String)_(Map_(String)_(String))"*
  %"$gasrem_3842" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3843" = icmp ugt i64 1, %"$gasrem_3842"
  br i1 %"$gascmp_3843", label %"$out_of_gas_3844", label %"$have_gas_3845"

"$out_of_gas_3844":                               ; preds = %"$None_3840"
  call void @_out_of_gas()
  br label %"$have_gas_3845"

"$have_gas_3845":                                 ; preds = %"$out_of_gas_3844", %"$None_3840"
  %"$consume_3846" = sub i64 %"$gasrem_3842", 1
  store i64 %"$consume_3846", i64* @_gasrem, align 8
  %err4 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %err4, metadata !837, metadata !DIExpression()), !dbg !839
  %"$gasrem_3847" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3848" = icmp ugt i64 1, %"$gasrem_3847"
  br i1 %"$gascmp_3848", label %"$out_of_gas_3849", label %"$have_gas_3850"

"$out_of_gas_3849":                               ; preds = %"$have_gas_3845"
  call void @_out_of_gas()
  br label %"$have_gas_3850"

"$have_gas_3850":                                 ; preds = %"$out_of_gas_3849", %"$have_gas_3845"
  %"$consume_3851" = sub i64 %"$gasrem_3847", 1
  store i64 %"$consume_3851", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_3852", i32 0, i32 0), i32 19 }, %String* %err4, align 8, !dbg !840
  %"$gasrem_3853" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3854" = icmp ugt i64 1, %"$gasrem_3853"
  br i1 %"$gascmp_3854", label %"$out_of_gas_3855", label %"$have_gas_3856"

"$out_of_gas_3855":                               ; preds = %"$have_gas_3850"
  call void @_out_of_gas()
  br label %"$have_gas_3856"

"$have_gas_3856":                                 ; preds = %"$out_of_gas_3855", %"$have_gas_3850"
  %"$consume_3857" = sub i64 %"$gasrem_3853", 1
  store i64 %"$consume_3857", i64* @_gasrem, align 8
  %"$fail_msg__origin_3858" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail_msg__origin_3858", align 1
  %"$fail_msg__sender_3859" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail_msg__sender_3859", align 1
  %"$tname_3860" = load %String, %String* %tname, align 8
  %"$err_3861" = load %String, %String* %err4, align 8
  call void @"$fail_msg_298"(%Uint128 %_amount, [20 x i8]* %"$fail_msg__origin_3858", [20 x i8]* %"$fail_msg__sender_3859", %String %"$tname_3860", %String %"$err_3861"), !dbg !841
  br label %"$matchsucc_3643"

"$empty_default_3647":                            ; preds = %"$have_gas_3641"
  br label %"$matchsucc_3643"

"$matchsucc_3643":                                ; preds = %"$have_gas_3856", %"$matchsucc_3685", %"$empty_default_3647"
  %"$gasrem_3862" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3863" = icmp ugt i64 1, %"$gasrem_3862"
  br i1 %"$gascmp_3863", label %"$out_of_gas_3864", label %"$have_gas_3865"

"$out_of_gas_3864":                               ; preds = %"$matchsucc_3643"
  call void @_out_of_gas()
  br label %"$have_gas_3865"

"$have_gas_3865":                                 ; preds = %"$out_of_gas_3864", %"$matchsucc_3643"
  %"$consume_3866" = sub i64 %"$gasrem_3862", 1
  store i64 %"$consume_3866", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key1b, metadata !842, metadata !DIExpression()), !dbg !843
  %"$gasrem_3867" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3868" = icmp ugt i64 1, %"$gasrem_3867"
  br i1 %"$gascmp_3868", label %"$out_of_gas_3869", label %"$have_gas_3870"

"$out_of_gas_3869":                               ; preds = %"$have_gas_3865"
  call void @_out_of_gas()
  br label %"$have_gas_3870"

"$have_gas_3870":                                 ; preds = %"$out_of_gas_3869", %"$have_gas_3865"
  %"$consume_3871" = sub i64 %"$gasrem_3867", 1
  store i64 %"$consume_3871", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3872", i32 0, i32 0), i32 5 }, %String* %key1b, align 8, !dbg !844
  %"$gasrem_3873" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3874" = icmp ugt i64 1, %"$gasrem_3873"
  br i1 %"$gascmp_3874", label %"$out_of_gas_3875", label %"$have_gas_3876"

"$out_of_gas_3875":                               ; preds = %"$have_gas_3870"
  call void @_out_of_gas()
  br label %"$have_gas_3876"

"$have_gas_3876":                                 ; preds = %"$out_of_gas_3875", %"$have_gas_3870"
  %"$consume_3877" = sub i64 %"$gasrem_3873", 1
  store i64 %"$consume_3877", i64* @_gasrem, align 8
  %key2b = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key2b, metadata !845, metadata !DIExpression()), !dbg !846
  %"$gasrem_3878" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3879" = icmp ugt i64 1, %"$gasrem_3878"
  br i1 %"$gascmp_3879", label %"$out_of_gas_3880", label %"$have_gas_3881"

"$out_of_gas_3880":                               ; preds = %"$have_gas_3876"
  call void @_out_of_gas()
  br label %"$have_gas_3881"

"$have_gas_3881":                                 ; preds = %"$out_of_gas_3880", %"$have_gas_3876"
  %"$consume_3882" = sub i64 %"$gasrem_3878", 1
  store i64 %"$consume_3882", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3883", i32 0, i32 0), i32 5 }, %String* %key2b, align 8, !dbg !847
  %"$gasrem_3884" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3885" = icmp ugt i64 1, %"$gasrem_3884"
  br i1 %"$gascmp_3885", label %"$out_of_gas_3886", label %"$have_gas_3887"

"$out_of_gas_3886":                               ; preds = %"$have_gas_3881"
  call void @_out_of_gas()
  br label %"$have_gas_3887"

"$have_gas_3887":                                 ; preds = %"$out_of_gas_3886", %"$have_gas_3881"
  %"$consume_3888" = sub i64 %"$gasrem_3884", 1
  store i64 %"$consume_3888", i64* @_gasrem, align 8
  %key1c = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key1c, metadata !848, metadata !DIExpression()), !dbg !849
  %"$gasrem_3889" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3890" = icmp ugt i64 1, %"$gasrem_3889"
  br i1 %"$gascmp_3890", label %"$out_of_gas_3891", label %"$have_gas_3892"

"$out_of_gas_3891":                               ; preds = %"$have_gas_3887"
  call void @_out_of_gas()
  br label %"$have_gas_3892"

"$have_gas_3892":                                 ; preds = %"$out_of_gas_3891", %"$have_gas_3887"
  %"$consume_3893" = sub i64 %"$gasrem_3889", 1
  store i64 %"$consume_3893", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3894", i32 0, i32 0), i32 5 }, %String* %key1c, align 8, !dbg !850
  %"$gasrem_3895" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3896" = icmp ugt i64 1, %"$gasrem_3895"
  br i1 %"$gascmp_3896", label %"$out_of_gas_3897", label %"$have_gas_3898"

"$out_of_gas_3897":                               ; preds = %"$have_gas_3892"
  call void @_out_of_gas()
  br label %"$have_gas_3898"

"$have_gas_3898":                                 ; preds = %"$out_of_gas_3897", %"$have_gas_3892"
  %"$consume_3899" = sub i64 %"$gasrem_3895", 1
  store i64 %"$consume_3899", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key2c, metadata !851, metadata !DIExpression()), !dbg !852
  %"$gasrem_3900" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3901" = icmp ugt i64 1, %"$gasrem_3900"
  br i1 %"$gascmp_3901", label %"$out_of_gas_3902", label %"$have_gas_3903"

"$out_of_gas_3902":                               ; preds = %"$have_gas_3898"
  call void @_out_of_gas()
  br label %"$have_gas_3903"

"$have_gas_3903":                                 ; preds = %"$out_of_gas_3902", %"$have_gas_3898"
  %"$consume_3904" = sub i64 %"$gasrem_3900", 1
  store i64 %"$consume_3904", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3905", i32 0, i32 0), i32 5 }, %String* %key2c, align 8, !dbg !853
  %"$gasrem_3906" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3907" = icmp ugt i64 1, %"$gasrem_3906"
  br i1 %"$gascmp_3907", label %"$out_of_gas_3908", label %"$have_gas_3909"

"$out_of_gas_3908":                               ; preds = %"$have_gas_3903"
  call void @_out_of_gas()
  br label %"$have_gas_3909"

"$have_gas_3909":                                 ; preds = %"$out_of_gas_3908", %"$have_gas_3903"
  %"$consume_3910" = sub i64 %"$gasrem_3906", 1
  store i64 %"$consume_3910", i64* @_gasrem, align 8
  %key1d = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key1d, metadata !854, metadata !DIExpression()), !dbg !855
  %"$gasrem_3911" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3912" = icmp ugt i64 1, %"$gasrem_3911"
  br i1 %"$gascmp_3912", label %"$out_of_gas_3913", label %"$have_gas_3914"

"$out_of_gas_3913":                               ; preds = %"$have_gas_3909"
  call void @_out_of_gas()
  br label %"$have_gas_3914"

"$have_gas_3914":                                 ; preds = %"$out_of_gas_3913", %"$have_gas_3909"
  %"$consume_3915" = sub i64 %"$gasrem_3911", 1
  store i64 %"$consume_3915", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3916", i32 0, i32 0), i32 5 }, %String* %key1d, align 8, !dbg !856
  %"$gasrem_3917" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3918" = icmp ugt i64 1, %"$gasrem_3917"
  br i1 %"$gascmp_3918", label %"$out_of_gas_3919", label %"$have_gas_3920"

"$out_of_gas_3919":                               ; preds = %"$have_gas_3914"
  call void @_out_of_gas()
  br label %"$have_gas_3920"

"$have_gas_3920":                                 ; preds = %"$out_of_gas_3919", %"$have_gas_3914"
  %"$consume_3921" = sub i64 %"$gasrem_3917", 1
  store i64 %"$consume_3921", i64* @_gasrem, align 8
  %key2d = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key2d, metadata !857, metadata !DIExpression()), !dbg !858
  %"$gasrem_3922" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3923" = icmp ugt i64 1, %"$gasrem_3922"
  br i1 %"$gascmp_3923", label %"$out_of_gas_3924", label %"$have_gas_3925"

"$out_of_gas_3924":                               ; preds = %"$have_gas_3920"
  call void @_out_of_gas()
  br label %"$have_gas_3925"

"$have_gas_3925":                                 ; preds = %"$out_of_gas_3924", %"$have_gas_3920"
  %"$consume_3926" = sub i64 %"$gasrem_3922", 1
  store i64 %"$consume_3926", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_3927", i32 0, i32 0), i32 5 }, %String* %key2d, align 8, !dbg !859
  %"$gasrem_3928" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3929" = icmp ugt i64 1, %"$gasrem_3928"
  br i1 %"$gascmp_3929", label %"$out_of_gas_3930", label %"$have_gas_3931"

"$out_of_gas_3930":                               ; preds = %"$have_gas_3925"
  call void @_out_of_gas()
  br label %"$have_gas_3931"

"$have_gas_3931":                                 ; preds = %"$out_of_gas_3930", %"$have_gas_3925"
  %"$consume_3932" = sub i64 %"$gasrem_3928", 1
  store i64 %"$consume_3932", i64* @_gasrem, align 8
  %v1 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %v1, metadata !860, metadata !DIExpression()), !dbg !861
  %"$gasrem_3933" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3934" = icmp ugt i64 1, %"$gasrem_3933"
  br i1 %"$gascmp_3934", label %"$out_of_gas_3935", label %"$have_gas_3936"

"$out_of_gas_3935":                               ; preds = %"$have_gas_3931"
  call void @_out_of_gas()
  br label %"$have_gas_3936"

"$have_gas_3936":                                 ; preds = %"$out_of_gas_3935", %"$have_gas_3931"
  %"$consume_3937" = sub i64 %"$gasrem_3933", 1
  store i64 %"$consume_3937", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3938", i32 0, i32 0), i32 3 }, %String* %v1, align 8, !dbg !862
  %"$gasrem_3939" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3940" = icmp ugt i64 1, %"$gasrem_3939"
  br i1 %"$gascmp_3940", label %"$out_of_gas_3941", label %"$have_gas_3942"

"$out_of_gas_3941":                               ; preds = %"$have_gas_3936"
  call void @_out_of_gas()
  br label %"$have_gas_3942"

"$have_gas_3942":                                 ; preds = %"$out_of_gas_3941", %"$have_gas_3936"
  %"$consume_3943" = sub i64 %"$gasrem_3939", 1
  store i64 %"$consume_3943", i64* @_gasrem, align 8
  %v2 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %v2, metadata !863, metadata !DIExpression()), !dbg !864
  %"$gasrem_3944" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3945" = icmp ugt i64 1, %"$gasrem_3944"
  br i1 %"$gascmp_3945", label %"$out_of_gas_3946", label %"$have_gas_3947"

"$out_of_gas_3946":                               ; preds = %"$have_gas_3942"
  call void @_out_of_gas()
  br label %"$have_gas_3947"

"$have_gas_3947":                                 ; preds = %"$out_of_gas_3946", %"$have_gas_3942"
  %"$consume_3948" = sub i64 %"$gasrem_3944", 1
  store i64 %"$consume_3948", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3949", i32 0, i32 0), i32 3 }, %String* %v2, align 8, !dbg !865
  %"$gasrem_3950" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3951" = icmp ugt i64 1, %"$gasrem_3950"
  br i1 %"$gascmp_3951", label %"$out_of_gas_3952", label %"$have_gas_3953"

"$out_of_gas_3952":                               ; preds = %"$have_gas_3947"
  call void @_out_of_gas()
  br label %"$have_gas_3953"

"$have_gas_3953":                                 ; preds = %"$out_of_gas_3952", %"$have_gas_3947"
  %"$consume_3954" = sub i64 %"$gasrem_3950", 1
  store i64 %"$consume_3954", i64* @_gasrem, align 8
  %v3 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %v3, metadata !866, metadata !DIExpression()), !dbg !867
  %"$gasrem_3955" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3956" = icmp ugt i64 1, %"$gasrem_3955"
  br i1 %"$gascmp_3956", label %"$out_of_gas_3957", label %"$have_gas_3958"

"$out_of_gas_3957":                               ; preds = %"$have_gas_3953"
  call void @_out_of_gas()
  br label %"$have_gas_3958"

"$have_gas_3958":                                 ; preds = %"$out_of_gas_3957", %"$have_gas_3953"
  %"$consume_3959" = sub i64 %"$gasrem_3955", 1
  store i64 %"$consume_3959", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3960", i32 0, i32 0), i32 3 }, %String* %v3, align 8, !dbg !868
  %"$gasrem_3961" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3962" = icmp ugt i64 1, %"$gasrem_3961"
  br i1 %"$gascmp_3962", label %"$out_of_gas_3963", label %"$have_gas_3964"

"$out_of_gas_3963":                               ; preds = %"$have_gas_3958"
  call void @_out_of_gas()
  br label %"$have_gas_3964"

"$have_gas_3964":                                 ; preds = %"$out_of_gas_3963", %"$have_gas_3958"
  %"$consume_3965" = sub i64 %"$gasrem_3961", 1
  store i64 %"$consume_3965", i64* @_gasrem, align 8
  %v4 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %v4, metadata !869, metadata !DIExpression()), !dbg !870
  %"$gasrem_3966" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3967" = icmp ugt i64 1, %"$gasrem_3966"
  br i1 %"$gascmp_3967", label %"$out_of_gas_3968", label %"$have_gas_3969"

"$out_of_gas_3968":                               ; preds = %"$have_gas_3964"
  call void @_out_of_gas()
  br label %"$have_gas_3969"

"$have_gas_3969":                                 ; preds = %"$out_of_gas_3968", %"$have_gas_3964"
  %"$consume_3970" = sub i64 %"$gasrem_3966", 1
  store i64 %"$consume_3970", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_3971", i32 0, i32 0), i32 3 }, %String* %v4, align 8, !dbg !871
  %"$gasrem_3972" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3973" = icmp ugt i64 1, %"$gasrem_3972"
  br i1 %"$gascmp_3973", label %"$out_of_gas_3974", label %"$have_gas_3975"

"$out_of_gas_3974":                               ; preds = %"$have_gas_3969"
  call void @_out_of_gas()
  br label %"$have_gas_3975"

"$have_gas_3975":                                 ; preds = %"$out_of_gas_3974", %"$have_gas_3969"
  %"$consume_3976" = sub i64 %"$gasrem_3972", 1
  store i64 %"$consume_3976", i64* @_gasrem, align 8
  %m25 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  call void @llvm.dbg.declare(metadata %"Map_String_Map_(String)_(String)"** %m25, metadata !872, metadata !DIExpression()), !dbg !873
  %"$gasrem_3977" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3978" = icmp ugt i64 1, %"$gasrem_3977"
  br i1 %"$gascmp_3978", label %"$out_of_gas_3979", label %"$have_gas_3980"

"$out_of_gas_3979":                               ; preds = %"$have_gas_3975"
  call void @_out_of_gas()
  br label %"$have_gas_3980"

"$have_gas_3980":                                 ; preds = %"$out_of_gas_3979", %"$have_gas_3975"
  %"$consume_3981" = sub i64 %"$gasrem_3977", 1
  store i64 %"$consume_3981", i64* @_gasrem, align 8
  %"$execptr_load_3982" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3983" = call i8* @_new_empty_map(i8* %"$execptr_load_3982")
  %"$_new_empty_map_3984" = bitcast i8* %"$_new_empty_map_call_3983" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$_new_empty_map_3984", %"Map_String_Map_(String)_(String)"** %m25, align 8, !dbg !874
  %"$gasrem_3985" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3986" = icmp ugt i64 1, %"$gasrem_3985"
  br i1 %"$gascmp_3986", label %"$out_of_gas_3987", label %"$have_gas_3988"

"$out_of_gas_3987":                               ; preds = %"$have_gas_3980"
  call void @_out_of_gas()
  br label %"$have_gas_3988"

"$have_gas_3988":                                 ; preds = %"$out_of_gas_3987", %"$have_gas_3980"
  %"$consume_3989" = sub i64 %"$gasrem_3985", 1
  store i64 %"$consume_3989", i64* @_gasrem, align 8
  %m16 = alloca %Map_String_String*, align 8
  call void @llvm.dbg.declare(metadata %Map_String_String** %m16, metadata !875, metadata !DIExpression()), !dbg !876
  %"$gasrem_3990" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3991" = icmp ugt i64 1, %"$gasrem_3990"
  br i1 %"$gascmp_3991", label %"$out_of_gas_3992", label %"$have_gas_3993"

"$out_of_gas_3992":                               ; preds = %"$have_gas_3988"
  call void @_out_of_gas()
  br label %"$have_gas_3993"

"$have_gas_3993":                                 ; preds = %"$out_of_gas_3992", %"$have_gas_3988"
  %"$consume_3994" = sub i64 %"$gasrem_3990", 1
  store i64 %"$consume_3994", i64* @_gasrem, align 8
  %"$execptr_load_3995" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_3996" = call i8* @_new_empty_map(i8* %"$execptr_load_3995")
  %"$_new_empty_map_3997" = bitcast i8* %"$_new_empty_map_call_3996" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_3997", %Map_String_String** %m16, align 8, !dbg !877
  %"$gasrem_3998" = load i64, i64* @_gasrem, align 8
  %"$gascmp_3999" = icmp ugt i64 1, %"$gasrem_3998"
  br i1 %"$gascmp_3999", label %"$out_of_gas_4000", label %"$have_gas_4001"

"$out_of_gas_4000":                               ; preds = %"$have_gas_3993"
  call void @_out_of_gas()
  br label %"$have_gas_4001"

"$have_gas_4001":                                 ; preds = %"$out_of_gas_4000", %"$have_gas_3993"
  %"$consume_4002" = sub i64 %"$gasrem_3998", 1
  store i64 %"$consume_4002", i64* @_gasrem, align 8
  %m2_full = alloca %"Map_String_Map_(String)_(String)"*, align 8
  call void @llvm.dbg.declare(metadata %"Map_String_Map_(String)_(String)"** %m2_full, metadata !878, metadata !DIExpression()), !dbg !879
  %"$gasrem_4003" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4004" = icmp ugt i64 1, %"$gasrem_4003"
  br i1 %"$gascmp_4004", label %"$out_of_gas_4005", label %"$have_gas_4006"

"$out_of_gas_4005":                               ; preds = %"$have_gas_4001"
  call void @_out_of_gas()
  br label %"$have_gas_4006"

"$have_gas_4006":                                 ; preds = %"$out_of_gas_4005", %"$have_gas_4001"
  %"$consume_4007" = sub i64 %"$gasrem_4003", 1
  store i64 %"$consume_4007", i64* @_gasrem, align 8
  %m21 = alloca %Map_String_String*, align 8
  call void @llvm.dbg.declare(metadata %Map_String_String** %m21, metadata !880, metadata !DIExpression()), !dbg !881
  %"$m1_4008" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_4008_4009" = bitcast %Map_String_String* %"$m1_4008" to i8*
  %"$_lengthof_call_4010" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$m1_4008_4009")
  %"$gasadd_4011" = add i64 1, %"$_lengthof_call_4010"
  %"$gasrem_4012" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4013" = icmp ugt i64 %"$gasadd_4011", %"$gasrem_4012"
  br i1 %"$gascmp_4013", label %"$out_of_gas_4014", label %"$have_gas_4015"

"$out_of_gas_4014":                               ; preds = %"$have_gas_4006"
  call void @_out_of_gas()
  br label %"$have_gas_4015"

"$have_gas_4015":                                 ; preds = %"$out_of_gas_4014", %"$have_gas_4006"
  %"$consume_4016" = sub i64 %"$gasrem_4012", %"$gasadd_4011"
  store i64 %"$consume_4016", i64* @_gasrem, align 8
  %"$execptr_load_4017" = load i8*, i8** @_execptr, align 8
  %"$m1_4018" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_4018_4019" = bitcast %Map_String_String* %"$m1_4018" to i8*
  %"$put_key2a_4020" = alloca %String, align 8
  %"$key2a_4021" = load %String, %String* %key2a, align 8
  store %String %"$key2a_4021", %String* %"$put_key2a_4020", align 8
  %"$$put_key2a_4020_4022" = bitcast %String* %"$put_key2a_4020" to i8*
  %"$put_v1_4023" = alloca %String, align 8
  %"$v1_4024" = load %String, %String* %v1, align 8
  store %String %"$v1_4024", %String* %"$put_v1_4023", align 8
  %"$$put_v1_4023_4025" = bitcast %String* %"$put_v1_4023" to i8*
  %"$put_call_4026" = call i8* @_put(i8* %"$execptr_load_4017", %_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$m1_4018_4019", i8* %"$$put_key2a_4020_4022", i8* %"$$put_v1_4023_4025"), !dbg !882
  %"$put_4027" = bitcast i8* %"$put_call_4026" to %Map_String_String*
  store %Map_String_String* %"$put_4027", %Map_String_String** %m21, align 8, !dbg !882
  %"$gasrem_4028" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4029" = icmp ugt i64 1, %"$gasrem_4028"
  br i1 %"$gascmp_4029", label %"$out_of_gas_4030", label %"$have_gas_4031"

"$out_of_gas_4030":                               ; preds = %"$have_gas_4015"
  call void @_out_of_gas()
  br label %"$have_gas_4031"

"$have_gas_4031":                                 ; preds = %"$out_of_gas_4030", %"$have_gas_4015"
  %"$consume_4032" = sub i64 %"$gasrem_4028", 1
  store i64 %"$consume_4032", i64* @_gasrem, align 8
  %m22 = alloca %Map_String_String*, align 8
  call void @llvm.dbg.declare(metadata %Map_String_String** %m22, metadata !883, metadata !DIExpression()), !dbg !884
  %"$m1_4033" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_4033_4034" = bitcast %Map_String_String* %"$m1_4033" to i8*
  %"$_lengthof_call_4035" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$m1_4033_4034")
  %"$gasadd_4036" = add i64 1, %"$_lengthof_call_4035"
  %"$gasrem_4037" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4038" = icmp ugt i64 %"$gasadd_4036", %"$gasrem_4037"
  br i1 %"$gascmp_4038", label %"$out_of_gas_4039", label %"$have_gas_4040"

"$out_of_gas_4039":                               ; preds = %"$have_gas_4031"
  call void @_out_of_gas()
  br label %"$have_gas_4040"

"$have_gas_4040":                                 ; preds = %"$out_of_gas_4039", %"$have_gas_4031"
  %"$consume_4041" = sub i64 %"$gasrem_4037", %"$gasadd_4036"
  store i64 %"$consume_4041", i64* @_gasrem, align 8
  %"$execptr_load_4042" = load i8*, i8** @_execptr, align 8
  %"$m1_4043" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_4043_4044" = bitcast %Map_String_String* %"$m1_4043" to i8*
  %"$put_key2b_4045" = alloca %String, align 8
  %"$key2b_4046" = load %String, %String* %key2b, align 8
  store %String %"$key2b_4046", %String* %"$put_key2b_4045", align 8
  %"$$put_key2b_4045_4047" = bitcast %String* %"$put_key2b_4045" to i8*
  %"$put_v2_4048" = alloca %String, align 8
  %"$v2_4049" = load %String, %String* %v2, align 8
  store %String %"$v2_4049", %String* %"$put_v2_4048", align 8
  %"$$put_v2_4048_4050" = bitcast %String* %"$put_v2_4048" to i8*
  %"$put_call_4051" = call i8* @_put(i8* %"$execptr_load_4042", %_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$m1_4043_4044", i8* %"$$put_key2b_4045_4047", i8* %"$$put_v2_4048_4050"), !dbg !885
  %"$put_4052" = bitcast i8* %"$put_call_4051" to %Map_String_String*
  store %Map_String_String* %"$put_4052", %Map_String_String** %m22, align 8, !dbg !885
  %"$gasrem_4053" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4054" = icmp ugt i64 1, %"$gasrem_4053"
  br i1 %"$gascmp_4054", label %"$out_of_gas_4055", label %"$have_gas_4056"

"$out_of_gas_4055":                               ; preds = %"$have_gas_4040"
  call void @_out_of_gas()
  br label %"$have_gas_4056"

"$have_gas_4056":                                 ; preds = %"$out_of_gas_4055", %"$have_gas_4040"
  %"$consume_4057" = sub i64 %"$gasrem_4053", 1
  store i64 %"$consume_4057", i64* @_gasrem, align 8
  %m23 = alloca %Map_String_String*, align 8
  call void @llvm.dbg.declare(metadata %Map_String_String** %m23, metadata !886, metadata !DIExpression()), !dbg !887
  %"$m1_4058" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_4058_4059" = bitcast %Map_String_String* %"$m1_4058" to i8*
  %"$_lengthof_call_4060" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$m1_4058_4059")
  %"$gasadd_4061" = add i64 1, %"$_lengthof_call_4060"
  %"$gasrem_4062" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4063" = icmp ugt i64 %"$gasadd_4061", %"$gasrem_4062"
  br i1 %"$gascmp_4063", label %"$out_of_gas_4064", label %"$have_gas_4065"

"$out_of_gas_4064":                               ; preds = %"$have_gas_4056"
  call void @_out_of_gas()
  br label %"$have_gas_4065"

"$have_gas_4065":                                 ; preds = %"$out_of_gas_4064", %"$have_gas_4056"
  %"$consume_4066" = sub i64 %"$gasrem_4062", %"$gasadd_4061"
  store i64 %"$consume_4066", i64* @_gasrem, align 8
  %"$execptr_load_4067" = load i8*, i8** @_execptr, align 8
  %"$m1_4068" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_4068_4069" = bitcast %Map_String_String* %"$m1_4068" to i8*
  %"$put_key2c_4070" = alloca %String, align 8
  %"$key2c_4071" = load %String, %String* %key2c, align 8
  store %String %"$key2c_4071", %String* %"$put_key2c_4070", align 8
  %"$$put_key2c_4070_4072" = bitcast %String* %"$put_key2c_4070" to i8*
  %"$put_v3_4073" = alloca %String, align 8
  %"$v3_4074" = load %String, %String* %v3, align 8
  store %String %"$v3_4074", %String* %"$put_v3_4073", align 8
  %"$$put_v3_4073_4075" = bitcast %String* %"$put_v3_4073" to i8*
  %"$put_call_4076" = call i8* @_put(i8* %"$execptr_load_4067", %_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$m1_4068_4069", i8* %"$$put_key2c_4070_4072", i8* %"$$put_v3_4073_4075"), !dbg !888
  %"$put_4077" = bitcast i8* %"$put_call_4076" to %Map_String_String*
  store %Map_String_String* %"$put_4077", %Map_String_String** %m23, align 8, !dbg !888
  %"$gasrem_4078" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4079" = icmp ugt i64 1, %"$gasrem_4078"
  br i1 %"$gascmp_4079", label %"$out_of_gas_4080", label %"$have_gas_4081"

"$out_of_gas_4080":                               ; preds = %"$have_gas_4065"
  call void @_out_of_gas()
  br label %"$have_gas_4081"

"$have_gas_4081":                                 ; preds = %"$out_of_gas_4080", %"$have_gas_4065"
  %"$consume_4082" = sub i64 %"$gasrem_4078", 1
  store i64 %"$consume_4082", i64* @_gasrem, align 8
  %m24 = alloca %Map_String_String*, align 8
  call void @llvm.dbg.declare(metadata %Map_String_String** %m24, metadata !889, metadata !DIExpression()), !dbg !890
  %"$m1_4083" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_4083_4084" = bitcast %Map_String_String* %"$m1_4083" to i8*
  %"$_lengthof_call_4085" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$m1_4083_4084")
  %"$gasadd_4086" = add i64 1, %"$_lengthof_call_4085"
  %"$gasrem_4087" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4088" = icmp ugt i64 %"$gasadd_4086", %"$gasrem_4087"
  br i1 %"$gascmp_4088", label %"$out_of_gas_4089", label %"$have_gas_4090"

"$out_of_gas_4089":                               ; preds = %"$have_gas_4081"
  call void @_out_of_gas()
  br label %"$have_gas_4090"

"$have_gas_4090":                                 ; preds = %"$out_of_gas_4089", %"$have_gas_4081"
  %"$consume_4091" = sub i64 %"$gasrem_4087", %"$gasadd_4086"
  store i64 %"$consume_4091", i64* @_gasrem, align 8
  %"$execptr_load_4092" = load i8*, i8** @_execptr, align 8
  %"$m1_4093" = load %Map_String_String*, %Map_String_String** %m16, align 8
  %"$$m1_4093_4094" = bitcast %Map_String_String* %"$m1_4093" to i8*
  %"$put_key2d_4095" = alloca %String, align 8
  %"$key2d_4096" = load %String, %String* %key2d, align 8
  store %String %"$key2d_4096", %String* %"$put_key2d_4095", align 8
  %"$$put_key2d_4095_4097" = bitcast %String* %"$put_key2d_4095" to i8*
  %"$put_v4_4098" = alloca %String, align 8
  %"$v4_4099" = load %String, %String* %v4, align 8
  store %String %"$v4_4099", %String* %"$put_v4_4098", align 8
  %"$$put_v4_4098_4100" = bitcast %String* %"$put_v4_4098" to i8*
  %"$put_call_4101" = call i8* @_put(i8* %"$execptr_load_4092", %_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$m1_4093_4094", i8* %"$$put_key2d_4095_4097", i8* %"$$put_v4_4098_4100"), !dbg !891
  %"$put_4102" = bitcast i8* %"$put_call_4101" to %Map_String_String*
  store %Map_String_String* %"$put_4102", %Map_String_String** %m24, align 8, !dbg !891
  %"$gasrem_4103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4104" = icmp ugt i64 1, %"$gasrem_4103"
  br i1 %"$gascmp_4104", label %"$out_of_gas_4105", label %"$have_gas_4106"

"$out_of_gas_4105":                               ; preds = %"$have_gas_4090"
  call void @_out_of_gas()
  br label %"$have_gas_4106"

"$have_gas_4106":                                 ; preds = %"$out_of_gas_4105", %"$have_gas_4090"
  %"$consume_4107" = sub i64 %"$gasrem_4103", 1
  store i64 %"$consume_4107", i64* @_gasrem, align 8
  %m11 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  call void @llvm.dbg.declare(metadata %"Map_String_Map_(String)_(String)"** %m11, metadata !892, metadata !DIExpression()), !dbg !893
  %"$m2_4108" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m25, align 8
  %"$$m2_4108_4109" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_4108" to i8*
  %"$_lengthof_call_4110" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_76", i8* %"$$m2_4108_4109")
  %"$gasadd_4111" = add i64 1, %"$_lengthof_call_4110"
  %"$gasrem_4112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4113" = icmp ugt i64 %"$gasadd_4111", %"$gasrem_4112"
  br i1 %"$gascmp_4113", label %"$out_of_gas_4114", label %"$have_gas_4115"

"$out_of_gas_4114":                               ; preds = %"$have_gas_4106"
  call void @_out_of_gas()
  br label %"$have_gas_4115"

"$have_gas_4115":                                 ; preds = %"$out_of_gas_4114", %"$have_gas_4106"
  %"$consume_4116" = sub i64 %"$gasrem_4112", %"$gasadd_4111"
  store i64 %"$consume_4116", i64* @_gasrem, align 8
  %"$execptr_load_4117" = load i8*, i8** @_execptr, align 8
  %"$m2_4118" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m25, align 8
  %"$$m2_4118_4119" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_4118" to i8*
  %"$put_key1a_4120" = alloca %String, align 8
  %"$key1a_4121" = load %String, %String* %key1a, align 8
  store %String %"$key1a_4121", %String* %"$put_key1a_4120", align 8
  %"$$put_key1a_4120_4122" = bitcast %String* %"$put_key1a_4120" to i8*
  %"$m21_4123" = load %Map_String_String*, %Map_String_String** %m21, align 8
  %"$$m21_4123_4124" = bitcast %Map_String_String* %"$m21_4123" to i8*
  %"$put_call_4125" = call i8* @_put(i8* %"$execptr_load_4117", %_TyDescrTy_Typ* @"$TyDescr_Map_76", i8* %"$$m2_4118_4119", i8* %"$$put_key1a_4120_4122", i8* %"$$m21_4123_4124"), !dbg !894
  %"$put_4126" = bitcast i8* %"$put_call_4125" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$put_4126", %"Map_String_Map_(String)_(String)"** %m11, align 8, !dbg !894
  %"$gasrem_4127" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4128" = icmp ugt i64 1, %"$gasrem_4127"
  br i1 %"$gascmp_4128", label %"$out_of_gas_4129", label %"$have_gas_4130"

"$out_of_gas_4129":                               ; preds = %"$have_gas_4115"
  call void @_out_of_gas()
  br label %"$have_gas_4130"

"$have_gas_4130":                                 ; preds = %"$out_of_gas_4129", %"$have_gas_4115"
  %"$consume_4131" = sub i64 %"$gasrem_4127", 1
  store i64 %"$consume_4131", i64* @_gasrem, align 8
  %m12 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  call void @llvm.dbg.declare(metadata %"Map_String_Map_(String)_(String)"** %m12, metadata !895, metadata !DIExpression()), !dbg !896
  %"$m11_4132" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m11, align 8
  %"$$m11_4132_4133" = bitcast %"Map_String_Map_(String)_(String)"* %"$m11_4132" to i8*
  %"$_lengthof_call_4134" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_76", i8* %"$$m11_4132_4133")
  %"$gasadd_4135" = add i64 1, %"$_lengthof_call_4134"
  %"$gasrem_4136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4137" = icmp ugt i64 %"$gasadd_4135", %"$gasrem_4136"
  br i1 %"$gascmp_4137", label %"$out_of_gas_4138", label %"$have_gas_4139"

"$out_of_gas_4138":                               ; preds = %"$have_gas_4130"
  call void @_out_of_gas()
  br label %"$have_gas_4139"

"$have_gas_4139":                                 ; preds = %"$out_of_gas_4138", %"$have_gas_4130"
  %"$consume_4140" = sub i64 %"$gasrem_4136", %"$gasadd_4135"
  store i64 %"$consume_4140", i64* @_gasrem, align 8
  %"$execptr_load_4141" = load i8*, i8** @_execptr, align 8
  %"$m11_4142" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m11, align 8
  %"$$m11_4142_4143" = bitcast %"Map_String_Map_(String)_(String)"* %"$m11_4142" to i8*
  %"$put_key1b_4144" = alloca %String, align 8
  %"$key1b_4145" = load %String, %String* %key1b, align 8
  store %String %"$key1b_4145", %String* %"$put_key1b_4144", align 8
  %"$$put_key1b_4144_4146" = bitcast %String* %"$put_key1b_4144" to i8*
  %"$m22_4147" = load %Map_String_String*, %Map_String_String** %m22, align 8
  %"$$m22_4147_4148" = bitcast %Map_String_String* %"$m22_4147" to i8*
  %"$put_call_4149" = call i8* @_put(i8* %"$execptr_load_4141", %_TyDescrTy_Typ* @"$TyDescr_Map_76", i8* %"$$m11_4142_4143", i8* %"$$put_key1b_4144_4146", i8* %"$$m22_4147_4148"), !dbg !897
  %"$put_4150" = bitcast i8* %"$put_call_4149" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$put_4150", %"Map_String_Map_(String)_(String)"** %m12, align 8, !dbg !897
  %"$gasrem_4151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4152" = icmp ugt i64 1, %"$gasrem_4151"
  br i1 %"$gascmp_4152", label %"$out_of_gas_4153", label %"$have_gas_4154"

"$out_of_gas_4153":                               ; preds = %"$have_gas_4139"
  call void @_out_of_gas()
  br label %"$have_gas_4154"

"$have_gas_4154":                                 ; preds = %"$out_of_gas_4153", %"$have_gas_4139"
  %"$consume_4155" = sub i64 %"$gasrem_4151", 1
  store i64 %"$consume_4155", i64* @_gasrem, align 8
  %m13 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  call void @llvm.dbg.declare(metadata %"Map_String_Map_(String)_(String)"** %m13, metadata !898, metadata !DIExpression()), !dbg !899
  %"$m12_4156" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m12, align 8
  %"$$m12_4156_4157" = bitcast %"Map_String_Map_(String)_(String)"* %"$m12_4156" to i8*
  %"$_lengthof_call_4158" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_76", i8* %"$$m12_4156_4157")
  %"$gasadd_4159" = add i64 1, %"$_lengthof_call_4158"
  %"$gasrem_4160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4161" = icmp ugt i64 %"$gasadd_4159", %"$gasrem_4160"
  br i1 %"$gascmp_4161", label %"$out_of_gas_4162", label %"$have_gas_4163"

"$out_of_gas_4162":                               ; preds = %"$have_gas_4154"
  call void @_out_of_gas()
  br label %"$have_gas_4163"

"$have_gas_4163":                                 ; preds = %"$out_of_gas_4162", %"$have_gas_4154"
  %"$consume_4164" = sub i64 %"$gasrem_4160", %"$gasadd_4159"
  store i64 %"$consume_4164", i64* @_gasrem, align 8
  %"$execptr_load_4165" = load i8*, i8** @_execptr, align 8
  %"$m12_4166" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m12, align 8
  %"$$m12_4166_4167" = bitcast %"Map_String_Map_(String)_(String)"* %"$m12_4166" to i8*
  %"$put_key1c_4168" = alloca %String, align 8
  %"$key1c_4169" = load %String, %String* %key1c, align 8
  store %String %"$key1c_4169", %String* %"$put_key1c_4168", align 8
  %"$$put_key1c_4168_4170" = bitcast %String* %"$put_key1c_4168" to i8*
  %"$m23_4171" = load %Map_String_String*, %Map_String_String** %m23, align 8
  %"$$m23_4171_4172" = bitcast %Map_String_String* %"$m23_4171" to i8*
  %"$put_call_4173" = call i8* @_put(i8* %"$execptr_load_4165", %_TyDescrTy_Typ* @"$TyDescr_Map_76", i8* %"$$m12_4166_4167", i8* %"$$put_key1c_4168_4170", i8* %"$$m23_4171_4172"), !dbg !900
  %"$put_4174" = bitcast i8* %"$put_call_4173" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$put_4174", %"Map_String_Map_(String)_(String)"** %m13, align 8, !dbg !900
  %"$gasrem_4175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4176" = icmp ugt i64 1, %"$gasrem_4175"
  br i1 %"$gascmp_4176", label %"$out_of_gas_4177", label %"$have_gas_4178"

"$out_of_gas_4177":                               ; preds = %"$have_gas_4163"
  call void @_out_of_gas()
  br label %"$have_gas_4178"

"$have_gas_4178":                                 ; preds = %"$out_of_gas_4177", %"$have_gas_4163"
  %"$consume_4179" = sub i64 %"$gasrem_4175", 1
  store i64 %"$consume_4179", i64* @_gasrem, align 8
  %m14 = alloca %"Map_String_Map_(String)_(String)"*, align 8
  call void @llvm.dbg.declare(metadata %"Map_String_Map_(String)_(String)"** %m14, metadata !901, metadata !DIExpression()), !dbg !902
  %"$m13_4180" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m13, align 8
  %"$$m13_4180_4181" = bitcast %"Map_String_Map_(String)_(String)"* %"$m13_4180" to i8*
  %"$_lengthof_call_4182" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_76", i8* %"$$m13_4180_4181")
  %"$gasadd_4183" = add i64 1, %"$_lengthof_call_4182"
  %"$gasrem_4184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4185" = icmp ugt i64 %"$gasadd_4183", %"$gasrem_4184"
  br i1 %"$gascmp_4185", label %"$out_of_gas_4186", label %"$have_gas_4187"

"$out_of_gas_4186":                               ; preds = %"$have_gas_4178"
  call void @_out_of_gas()
  br label %"$have_gas_4187"

"$have_gas_4187":                                 ; preds = %"$out_of_gas_4186", %"$have_gas_4178"
  %"$consume_4188" = sub i64 %"$gasrem_4184", %"$gasadd_4183"
  store i64 %"$consume_4188", i64* @_gasrem, align 8
  %"$execptr_load_4189" = load i8*, i8** @_execptr, align 8
  %"$m13_4190" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m13, align 8
  %"$$m13_4190_4191" = bitcast %"Map_String_Map_(String)_(String)"* %"$m13_4190" to i8*
  %"$put_key1d_4192" = alloca %String, align 8
  %"$key1d_4193" = load %String, %String* %key1d, align 8
  store %String %"$key1d_4193", %String* %"$put_key1d_4192", align 8
  %"$$put_key1d_4192_4194" = bitcast %String* %"$put_key1d_4192" to i8*
  %"$m24_4195" = load %Map_String_String*, %Map_String_String** %m24, align 8
  %"$$m24_4195_4196" = bitcast %Map_String_String* %"$m24_4195" to i8*
  %"$put_call_4197" = call i8* @_put(i8* %"$execptr_load_4189", %_TyDescrTy_Typ* @"$TyDescr_Map_76", i8* %"$$m13_4190_4191", i8* %"$$put_key1d_4192_4194", i8* %"$$m24_4195_4196"), !dbg !903
  %"$put_4198" = bitcast i8* %"$put_call_4197" to %"Map_String_Map_(String)_(String)"*
  store %"Map_String_Map_(String)_(String)"* %"$put_4198", %"Map_String_Map_(String)_(String)"** %m14, align 8, !dbg !903
  %"$gasrem_4199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4200" = icmp ugt i64 1, %"$gasrem_4199"
  br i1 %"$gascmp_4200", label %"$out_of_gas_4201", label %"$have_gas_4202"

"$out_of_gas_4201":                               ; preds = %"$have_gas_4187"
  call void @_out_of_gas()
  br label %"$have_gas_4202"

"$have_gas_4202":                                 ; preds = %"$out_of_gas_4201", %"$have_gas_4187"
  %"$consume_4203" = sub i64 %"$gasrem_4199", 1
  store i64 %"$consume_4203", i64* @_gasrem, align 8
  %"$m14_4204" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m14, align 8
  store %"Map_String_Map_(String)_(String)"* %"$m14_4204", %"Map_String_Map_(String)_(String)"** %m2_full, align 8, !dbg !904
  %"$m2_full_4205" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2_full, align 8
  %"$$m2_full_4205_4206" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_full_4205" to i8*
  %"$_literal_cost_call_4207" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_76", i8* %"$$m2_full_4205_4206")
  %"$gasrem_4208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4209" = icmp ugt i64 %"$_literal_cost_call_4207", %"$gasrem_4208"
  br i1 %"$gascmp_4209", label %"$out_of_gas_4210", label %"$have_gas_4211"

"$out_of_gas_4210":                               ; preds = %"$have_gas_4202"
  call void @_out_of_gas()
  br label %"$have_gas_4211"

"$have_gas_4211":                                 ; preds = %"$out_of_gas_4210", %"$have_gas_4202"
  %"$consume_4212" = sub i64 %"$gasrem_4208", %"$_literal_cost_call_4207"
  store i64 %"$consume_4212", i64* @_gasrem, align 8
  %"$execptr_load_4213" = load i8*, i8** @_execptr, align 8
  %"$m2_full_4215" = load %"Map_String_Map_(String)_(String)"*, %"Map_String_Map_(String)_(String)"** %m2_full, align 8
  %"$update_value_4216" = bitcast %"Map_String_Map_(String)_(String)"* %"$m2_full_4215" to i8*
  call void @_update_field(i8* %"$execptr_load_4213", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_4214", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 0, i8* null, i8* %"$update_value_4216"), !dbg !905
  ret void
}

define void @t15(i8* %0) !dbg !906 {
entry:
  %"$_amount_4221" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4222" = bitcast i8* %"$_amount_4221" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4222", align 8
  %"$_origin_4223" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4224" = bitcast i8* %"$_origin_4223" to [20 x i8]*
  %"$_sender_4225" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4226" = bitcast i8* %"$_sender_4225" to [20 x i8]*
  call void @"$t15_3496"(%Uint128 %_amount, [20 x i8]* %"$_origin_4224", [20 x i8]* %"$_sender_4226"), !dbg !907
  ret void
}

define internal void @"$t16_4227"(%Uint128 %_amount, [20 x i8]* %"$_origin_4228", [20 x i8]* %"$_sender_4229") !dbg !908 {
entry:
  %"$_sender_4800" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_4229", [20 x i8]** %"$_sender_4800", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_4800", metadata !909, metadata !DIExpression()), !dbg !910
  %"$_origin_4799" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_4228", [20 x i8]** %"$_origin_4799", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_4799", metadata !911, metadata !DIExpression()), !dbg !910
  %"$_amount_4798" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_4798", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_4798", metadata !912, metadata !DIExpression()), !dbg !910
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4228", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4229", align 1
  %"$gasrem_4230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4231" = icmp ugt i64 1, %"$gasrem_4230"
  br i1 %"$gascmp_4231", label %"$out_of_gas_4232", label %"$have_gas_4233"

"$out_of_gas_4232":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4233"

"$have_gas_4233":                                 ; preds = %"$out_of_gas_4232", %entry
  %"$consume_4234" = sub i64 %"$gasrem_4230", 1
  store i64 %"$consume_4234", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %tname, metadata !913, metadata !DIExpression()), !dbg !914
  %"$gasrem_4235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4236" = icmp ugt i64 1, %"$gasrem_4235"
  br i1 %"$gascmp_4236", label %"$out_of_gas_4237", label %"$have_gas_4238"

"$out_of_gas_4237":                               ; preds = %"$have_gas_4233"
  call void @_out_of_gas()
  br label %"$have_gas_4238"

"$have_gas_4238":                                 ; preds = %"$out_of_gas_4237", %"$have_gas_4233"
  %"$consume_4239" = sub i64 %"$gasrem_4235", 1
  store i64 %"$consume_4239", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4240", i32 0, i32 0), i32 3 }, %String* %tname, align 8, !dbg !915
  %"$gasrem_4241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4242" = icmp ugt i64 1, %"$gasrem_4241"
  br i1 %"$gascmp_4242", label %"$out_of_gas_4243", label %"$have_gas_4244"

"$out_of_gas_4243":                               ; preds = %"$have_gas_4238"
  call void @_out_of_gas()
  br label %"$have_gas_4244"

"$have_gas_4244":                                 ; preds = %"$out_of_gas_4243", %"$have_gas_4238"
  %"$consume_4245" = sub i64 %"$gasrem_4241", 1
  store i64 %"$consume_4245", i64* @_gasrem, align 8
  %key1a = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key1a, metadata !916, metadata !DIExpression()), !dbg !917
  %"$gasrem_4246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4247" = icmp ugt i64 1, %"$gasrem_4246"
  br i1 %"$gascmp_4247", label %"$out_of_gas_4248", label %"$have_gas_4249"

"$out_of_gas_4248":                               ; preds = %"$have_gas_4244"
  call void @_out_of_gas()
  br label %"$have_gas_4249"

"$have_gas_4249":                                 ; preds = %"$out_of_gas_4248", %"$have_gas_4244"
  %"$consume_4250" = sub i64 %"$gasrem_4246", 1
  store i64 %"$consume_4250", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4251", i32 0, i32 0), i32 5 }, %String* %key1a, align 8, !dbg !918
  %"$gasrem_4252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4253" = icmp ugt i64 1, %"$gasrem_4252"
  br i1 %"$gascmp_4253", label %"$out_of_gas_4254", label %"$have_gas_4255"

"$out_of_gas_4254":                               ; preds = %"$have_gas_4249"
  call void @_out_of_gas()
  br label %"$have_gas_4255"

"$have_gas_4255":                                 ; preds = %"$out_of_gas_4254", %"$have_gas_4249"
  %"$consume_4256" = sub i64 %"$gasrem_4252", 1
  store i64 %"$consume_4256", i64* @_gasrem, align 8
  %key2a = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key2a, metadata !919, metadata !DIExpression()), !dbg !920
  %"$gasrem_4257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4258" = icmp ugt i64 1, %"$gasrem_4257"
  br i1 %"$gascmp_4258", label %"$out_of_gas_4259", label %"$have_gas_4260"

"$out_of_gas_4259":                               ; preds = %"$have_gas_4255"
  call void @_out_of_gas()
  br label %"$have_gas_4260"

"$have_gas_4260":                                 ; preds = %"$out_of_gas_4259", %"$have_gas_4255"
  %"$consume_4261" = sub i64 %"$gasrem_4257", 1
  store i64 %"$consume_4261", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4262", i32 0, i32 0), i32 5 }, %String* %key2a, align 8, !dbg !921
  %"$gasrem_4263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4264" = icmp ugt i64 1, %"$gasrem_4263"
  br i1 %"$gascmp_4264", label %"$out_of_gas_4265", label %"$have_gas_4266"

"$out_of_gas_4265":                               ; preds = %"$have_gas_4260"
  call void @_out_of_gas()
  br label %"$have_gas_4266"

"$have_gas_4266":                                 ; preds = %"$out_of_gas_4265", %"$have_gas_4260"
  %"$consume_4267" = sub i64 %"$gasrem_4263", 1
  store i64 %"$consume_4267", i64* @_gasrem, align 8
  %key1b = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key1b, metadata !922, metadata !DIExpression()), !dbg !923
  %"$gasrem_4268" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4269" = icmp ugt i64 1, %"$gasrem_4268"
  br i1 %"$gascmp_4269", label %"$out_of_gas_4270", label %"$have_gas_4271"

"$out_of_gas_4270":                               ; preds = %"$have_gas_4266"
  call void @_out_of_gas()
  br label %"$have_gas_4271"

"$have_gas_4271":                                 ; preds = %"$out_of_gas_4270", %"$have_gas_4266"
  %"$consume_4272" = sub i64 %"$gasrem_4268", 1
  store i64 %"$consume_4272", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4273", i32 0, i32 0), i32 5 }, %String* %key1b, align 8, !dbg !924
  %"$gasrem_4274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4275" = icmp ugt i64 1, %"$gasrem_4274"
  br i1 %"$gascmp_4275", label %"$out_of_gas_4276", label %"$have_gas_4277"

"$out_of_gas_4276":                               ; preds = %"$have_gas_4271"
  call void @_out_of_gas()
  br label %"$have_gas_4277"

"$have_gas_4277":                                 ; preds = %"$out_of_gas_4276", %"$have_gas_4271"
  %"$consume_4278" = sub i64 %"$gasrem_4274", 1
  store i64 %"$consume_4278", i64* @_gasrem, align 8
  %key2b = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key2b, metadata !925, metadata !DIExpression()), !dbg !926
  %"$gasrem_4279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4280" = icmp ugt i64 1, %"$gasrem_4279"
  br i1 %"$gascmp_4280", label %"$out_of_gas_4281", label %"$have_gas_4282"

"$out_of_gas_4281":                               ; preds = %"$have_gas_4277"
  call void @_out_of_gas()
  br label %"$have_gas_4282"

"$have_gas_4282":                                 ; preds = %"$out_of_gas_4281", %"$have_gas_4277"
  %"$consume_4283" = sub i64 %"$gasrem_4279", 1
  store i64 %"$consume_4283", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4284", i32 0, i32 0), i32 5 }, %String* %key2b, align 8, !dbg !927
  %"$gasrem_4285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4286" = icmp ugt i64 1, %"$gasrem_4285"
  br i1 %"$gascmp_4286", label %"$out_of_gas_4287", label %"$have_gas_4288"

"$out_of_gas_4287":                               ; preds = %"$have_gas_4282"
  call void @_out_of_gas()
  br label %"$have_gas_4288"

"$have_gas_4288":                                 ; preds = %"$out_of_gas_4287", %"$have_gas_4282"
  %"$consume_4289" = sub i64 %"$gasrem_4285", 1
  store i64 %"$consume_4289", i64* @_gasrem, align 8
  %key1c = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key1c, metadata !928, metadata !DIExpression()), !dbg !929
  %"$gasrem_4290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4291" = icmp ugt i64 1, %"$gasrem_4290"
  br i1 %"$gascmp_4291", label %"$out_of_gas_4292", label %"$have_gas_4293"

"$out_of_gas_4292":                               ; preds = %"$have_gas_4288"
  call void @_out_of_gas()
  br label %"$have_gas_4293"

"$have_gas_4293":                                 ; preds = %"$out_of_gas_4292", %"$have_gas_4288"
  %"$consume_4294" = sub i64 %"$gasrem_4290", 1
  store i64 %"$consume_4294", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4295", i32 0, i32 0), i32 5 }, %String* %key1c, align 8, !dbg !930
  %"$gasrem_4296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4297" = icmp ugt i64 1, %"$gasrem_4296"
  br i1 %"$gascmp_4297", label %"$out_of_gas_4298", label %"$have_gas_4299"

"$out_of_gas_4298":                               ; preds = %"$have_gas_4293"
  call void @_out_of_gas()
  br label %"$have_gas_4299"

"$have_gas_4299":                                 ; preds = %"$out_of_gas_4298", %"$have_gas_4293"
  %"$consume_4300" = sub i64 %"$gasrem_4296", 1
  store i64 %"$consume_4300", i64* @_gasrem, align 8
  %key2c = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key2c, metadata !931, metadata !DIExpression()), !dbg !932
  %"$gasrem_4301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4302" = icmp ugt i64 1, %"$gasrem_4301"
  br i1 %"$gascmp_4302", label %"$out_of_gas_4303", label %"$have_gas_4304"

"$out_of_gas_4303":                               ; preds = %"$have_gas_4299"
  call void @_out_of_gas()
  br label %"$have_gas_4304"

"$have_gas_4304":                                 ; preds = %"$out_of_gas_4303", %"$have_gas_4299"
  %"$consume_4305" = sub i64 %"$gasrem_4301", 1
  store i64 %"$consume_4305", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4306", i32 0, i32 0), i32 5 }, %String* %key2c, align 8, !dbg !933
  %"$gasrem_4307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4308" = icmp ugt i64 1, %"$gasrem_4307"
  br i1 %"$gascmp_4308", label %"$out_of_gas_4309", label %"$have_gas_4310"

"$out_of_gas_4309":                               ; preds = %"$have_gas_4304"
  call void @_out_of_gas()
  br label %"$have_gas_4310"

"$have_gas_4310":                                 ; preds = %"$out_of_gas_4309", %"$have_gas_4304"
  %"$consume_4311" = sub i64 %"$gasrem_4307", 1
  store i64 %"$consume_4311", i64* @_gasrem, align 8
  %key1d = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key1d, metadata !934, metadata !DIExpression()), !dbg !935
  %"$gasrem_4312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4313" = icmp ugt i64 1, %"$gasrem_4312"
  br i1 %"$gascmp_4313", label %"$out_of_gas_4314", label %"$have_gas_4315"

"$out_of_gas_4314":                               ; preds = %"$have_gas_4310"
  call void @_out_of_gas()
  br label %"$have_gas_4315"

"$have_gas_4315":                                 ; preds = %"$out_of_gas_4314", %"$have_gas_4310"
  %"$consume_4316" = sub i64 %"$gasrem_4312", 1
  store i64 %"$consume_4316", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4317", i32 0, i32 0), i32 5 }, %String* %key1d, align 8, !dbg !936
  %"$gasrem_4318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4319" = icmp ugt i64 1, %"$gasrem_4318"
  br i1 %"$gascmp_4319", label %"$out_of_gas_4320", label %"$have_gas_4321"

"$out_of_gas_4320":                               ; preds = %"$have_gas_4315"
  call void @_out_of_gas()
  br label %"$have_gas_4321"

"$have_gas_4321":                                 ; preds = %"$out_of_gas_4320", %"$have_gas_4315"
  %"$consume_4322" = sub i64 %"$gasrem_4318", 1
  store i64 %"$consume_4322", i64* @_gasrem, align 8
  %key2d = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key2d, metadata !937, metadata !DIExpression()), !dbg !938
  %"$gasrem_4323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4324" = icmp ugt i64 1, %"$gasrem_4323"
  br i1 %"$gascmp_4324", label %"$out_of_gas_4325", label %"$have_gas_4326"

"$out_of_gas_4325":                               ; preds = %"$have_gas_4321"
  call void @_out_of_gas()
  br label %"$have_gas_4326"

"$have_gas_4326":                                 ; preds = %"$out_of_gas_4325", %"$have_gas_4321"
  %"$consume_4327" = sub i64 %"$gasrem_4323", 1
  store i64 %"$consume_4327", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_4328", i32 0, i32 0), i32 5 }, %String* %key2d, align 8, !dbg !939
  %t1 = alloca %TName_Option_String*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_String** %t1, metadata !940, metadata !DIExpression()), !dbg !941
  %"$indices_buf_4329_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4329_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4329_salloc_load", i64 32)
  %"$indices_buf_4329_salloc" = bitcast i8* %"$indices_buf_4329_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4329" = bitcast [32 x i8]* %"$indices_buf_4329_salloc" to i8*
  %"$key1a_4330" = load %String, %String* %key1a, align 8
  %"$indices_gep_4331" = getelementptr i8, i8* %"$indices_buf_4329", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4331" to %String*
  store %String %"$key1a_4330", %String* %indices_cast, align 8
  %"$key2a_4332" = load %String, %String* %key2a, align 8
  %"$indices_gep_4333" = getelementptr i8, i8* %"$indices_buf_4329", i32 16
  %indices_cast1 = bitcast i8* %"$indices_gep_4333" to %String*
  store %String %"$key2a_4332", %String* %indices_cast1, align 8
  %"$execptr_load_4335" = load i8*, i8** @_execptr, align 8
  %"$t1_call_4336" = call i8* @_fetch_field(i8* %"$execptr_load_4335", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_4334", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 2, i8* %"$indices_buf_4329", i32 1), !dbg !941
  %"$t1_4337" = bitcast i8* %"$t1_call_4336" to %TName_Option_String*
  store %TName_Option_String* %"$t1_4337", %TName_Option_String** %t1, align 8
  %"$t1_4338" = load %TName_Option_String*, %TName_Option_String** %t1, align 8
  %"$$t1_4338_4339" = bitcast %TName_Option_String* %"$t1_4338" to i8*
  %"$_literal_cost_call_4340" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_72", i8* %"$$t1_4338_4339")
  %"$gasadd_4341" = add i64 %"$_literal_cost_call_4340", 0
  %"$gasadd_4342" = add i64 %"$gasadd_4341", 2
  %"$gasrem_4343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4344" = icmp ugt i64 %"$gasadd_4342", %"$gasrem_4343"
  br i1 %"$gascmp_4344", label %"$out_of_gas_4345", label %"$have_gas_4346"

"$out_of_gas_4345":                               ; preds = %"$have_gas_4326"
  call void @_out_of_gas()
  br label %"$have_gas_4346"

"$have_gas_4346":                                 ; preds = %"$out_of_gas_4345", %"$have_gas_4326"
  %"$consume_4347" = sub i64 %"$gasrem_4343", %"$gasadd_4342"
  store i64 %"$consume_4347", i64* @_gasrem, align 8
  %t2 = alloca %TName_Option_String*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_String** %t2, metadata !942, metadata !DIExpression()), !dbg !943
  %"$indices_buf_4348_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4348_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4348_salloc_load", i64 32)
  %"$indices_buf_4348_salloc" = bitcast i8* %"$indices_buf_4348_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4348" = bitcast [32 x i8]* %"$indices_buf_4348_salloc" to i8*
  %"$key1b_4349" = load %String, %String* %key1b, align 8
  %"$indices_gep_4350" = getelementptr i8, i8* %"$indices_buf_4348", i32 0
  %indices_cast2 = bitcast i8* %"$indices_gep_4350" to %String*
  store %String %"$key1b_4349", %String* %indices_cast2, align 8
  %"$key2b_4351" = load %String, %String* %key2b, align 8
  %"$indices_gep_4352" = getelementptr i8, i8* %"$indices_buf_4348", i32 16
  %indices_cast3 = bitcast i8* %"$indices_gep_4352" to %String*
  store %String %"$key2b_4351", %String* %indices_cast3, align 8
  %"$execptr_load_4354" = load i8*, i8** @_execptr, align 8
  %"$t2_call_4355" = call i8* @_fetch_field(i8* %"$execptr_load_4354", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_4353", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 2, i8* %"$indices_buf_4348", i32 1), !dbg !943
  %"$t2_4356" = bitcast i8* %"$t2_call_4355" to %TName_Option_String*
  store %TName_Option_String* %"$t2_4356", %TName_Option_String** %t2, align 8
  %"$t2_4357" = load %TName_Option_String*, %TName_Option_String** %t2, align 8
  %"$$t2_4357_4358" = bitcast %TName_Option_String* %"$t2_4357" to i8*
  %"$_literal_cost_call_4359" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_72", i8* %"$$t2_4357_4358")
  %"$gasadd_4360" = add i64 %"$_literal_cost_call_4359", 0
  %"$gasadd_4361" = add i64 %"$gasadd_4360", 2
  %"$gasrem_4362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4363" = icmp ugt i64 %"$gasadd_4361", %"$gasrem_4362"
  br i1 %"$gascmp_4363", label %"$out_of_gas_4364", label %"$have_gas_4365"

"$out_of_gas_4364":                               ; preds = %"$have_gas_4346"
  call void @_out_of_gas()
  br label %"$have_gas_4365"

"$have_gas_4365":                                 ; preds = %"$out_of_gas_4364", %"$have_gas_4346"
  %"$consume_4366" = sub i64 %"$gasrem_4362", %"$gasadd_4361"
  store i64 %"$consume_4366", i64* @_gasrem, align 8
  %t3 = alloca %TName_Option_String*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_String** %t3, metadata !944, metadata !DIExpression()), !dbg !945
  %"$indices_buf_4367_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4367_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4367_salloc_load", i64 32)
  %"$indices_buf_4367_salloc" = bitcast i8* %"$indices_buf_4367_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4367" = bitcast [32 x i8]* %"$indices_buf_4367_salloc" to i8*
  %"$key1c_4368" = load %String, %String* %key1c, align 8
  %"$indices_gep_4369" = getelementptr i8, i8* %"$indices_buf_4367", i32 0
  %indices_cast4 = bitcast i8* %"$indices_gep_4369" to %String*
  store %String %"$key1c_4368", %String* %indices_cast4, align 8
  %"$key2c_4370" = load %String, %String* %key2c, align 8
  %"$indices_gep_4371" = getelementptr i8, i8* %"$indices_buf_4367", i32 16
  %indices_cast5 = bitcast i8* %"$indices_gep_4371" to %String*
  store %String %"$key2c_4370", %String* %indices_cast5, align 8
  %"$execptr_load_4373" = load i8*, i8** @_execptr, align 8
  %"$t3_call_4374" = call i8* @_fetch_field(i8* %"$execptr_load_4373", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_4372", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 2, i8* %"$indices_buf_4367", i32 1), !dbg !945
  %"$t3_4375" = bitcast i8* %"$t3_call_4374" to %TName_Option_String*
  store %TName_Option_String* %"$t3_4375", %TName_Option_String** %t3, align 8
  %"$t3_4376" = load %TName_Option_String*, %TName_Option_String** %t3, align 8
  %"$$t3_4376_4377" = bitcast %TName_Option_String* %"$t3_4376" to i8*
  %"$_literal_cost_call_4378" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_72", i8* %"$$t3_4376_4377")
  %"$gasadd_4379" = add i64 %"$_literal_cost_call_4378", 0
  %"$gasadd_4380" = add i64 %"$gasadd_4379", 2
  %"$gasrem_4381" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4382" = icmp ugt i64 %"$gasadd_4380", %"$gasrem_4381"
  br i1 %"$gascmp_4382", label %"$out_of_gas_4383", label %"$have_gas_4384"

"$out_of_gas_4383":                               ; preds = %"$have_gas_4365"
  call void @_out_of_gas()
  br label %"$have_gas_4384"

"$have_gas_4384":                                 ; preds = %"$out_of_gas_4383", %"$have_gas_4365"
  %"$consume_4385" = sub i64 %"$gasrem_4381", %"$gasadd_4380"
  store i64 %"$consume_4385", i64* @_gasrem, align 8
  %t4 = alloca %TName_Option_String*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_String** %t4, metadata !946, metadata !DIExpression()), !dbg !947
  %"$indices_buf_4386_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4386_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4386_salloc_load", i64 32)
  %"$indices_buf_4386_salloc" = bitcast i8* %"$indices_buf_4386_salloc_salloc" to [32 x i8]*
  %"$indices_buf_4386" = bitcast [32 x i8]* %"$indices_buf_4386_salloc" to i8*
  %"$key1d_4387" = load %String, %String* %key1d, align 8
  %"$indices_gep_4388" = getelementptr i8, i8* %"$indices_buf_4386", i32 0
  %indices_cast6 = bitcast i8* %"$indices_gep_4388" to %String*
  store %String %"$key1d_4387", %String* %indices_cast6, align 8
  %"$key2d_4389" = load %String, %String* %key2d, align 8
  %"$indices_gep_4390" = getelementptr i8, i8* %"$indices_buf_4386", i32 16
  %indices_cast7 = bitcast i8* %"$indices_gep_4390" to %String*
  store %String %"$key2d_4389", %String* %indices_cast7, align 8
  %"$execptr_load_4392" = load i8*, i8** @_execptr, align 8
  %"$t4_call_4393" = call i8* @_fetch_field(i8* %"$execptr_load_4392", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m2_4391", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_76", i32 2, i8* %"$indices_buf_4386", i32 1), !dbg !947
  %"$t4_4394" = bitcast i8* %"$t4_call_4393" to %TName_Option_String*
  store %TName_Option_String* %"$t4_4394", %TName_Option_String** %t4, align 8
  %"$t4_4395" = load %TName_Option_String*, %TName_Option_String** %t4, align 8
  %"$$t4_4395_4396" = bitcast %TName_Option_String* %"$t4_4395" to i8*
  %"$_literal_cost_call_4397" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_String_72", i8* %"$$t4_4395_4396")
  %"$gasadd_4398" = add i64 %"$_literal_cost_call_4397", 0
  %"$gasadd_4399" = add i64 %"$gasadd_4398", 2
  %"$gasrem_4400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4401" = icmp ugt i64 %"$gasadd_4399", %"$gasrem_4400"
  br i1 %"$gascmp_4401", label %"$out_of_gas_4402", label %"$have_gas_4403"

"$out_of_gas_4402":                               ; preds = %"$have_gas_4384"
  call void @_out_of_gas()
  br label %"$have_gas_4403"

"$have_gas_4403":                                 ; preds = %"$out_of_gas_4402", %"$have_gas_4384"
  %"$consume_4404" = sub i64 %"$gasrem_4400", %"$gasadd_4399"
  store i64 %"$consume_4404", i64* @_gasrem, align 8
  %"$gasrem_4405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4406" = icmp ugt i64 1, %"$gasrem_4405"
  br i1 %"$gascmp_4406", label %"$out_of_gas_4407", label %"$have_gas_4408"

"$out_of_gas_4407":                               ; preds = %"$have_gas_4403"
  call void @_out_of_gas()
  br label %"$have_gas_4408"

"$have_gas_4408":                                 ; preds = %"$out_of_gas_4407", %"$have_gas_4403"
  %"$consume_4409" = sub i64 %"$gasrem_4405", 1
  store i64 %"$consume_4409", i64* @_gasrem, align 8
  %v1 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %v1, metadata !948, metadata !DIExpression()), !dbg !949
  %"$gasrem_4410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4411" = icmp ugt i64 1, %"$gasrem_4410"
  br i1 %"$gascmp_4411", label %"$out_of_gas_4412", label %"$have_gas_4413"

"$out_of_gas_4412":                               ; preds = %"$have_gas_4408"
  call void @_out_of_gas()
  br label %"$have_gas_4413"

"$have_gas_4413":                                 ; preds = %"$out_of_gas_4412", %"$have_gas_4408"
  %"$consume_4414" = sub i64 %"$gasrem_4410", 1
  store i64 %"$consume_4414", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4415", i32 0, i32 0), i32 3 }, %String* %v1, align 8, !dbg !950
  %"$gasrem_4416" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4417" = icmp ugt i64 1, %"$gasrem_4416"
  br i1 %"$gascmp_4417", label %"$out_of_gas_4418", label %"$have_gas_4419"

"$out_of_gas_4418":                               ; preds = %"$have_gas_4413"
  call void @_out_of_gas()
  br label %"$have_gas_4419"

"$have_gas_4419":                                 ; preds = %"$out_of_gas_4418", %"$have_gas_4413"
  %"$consume_4420" = sub i64 %"$gasrem_4416", 1
  store i64 %"$consume_4420", i64* @_gasrem, align 8
  %v2 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %v2, metadata !951, metadata !DIExpression()), !dbg !952
  %"$gasrem_4421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4422" = icmp ugt i64 1, %"$gasrem_4421"
  br i1 %"$gascmp_4422", label %"$out_of_gas_4423", label %"$have_gas_4424"

"$out_of_gas_4423":                               ; preds = %"$have_gas_4419"
  call void @_out_of_gas()
  br label %"$have_gas_4424"

"$have_gas_4424":                                 ; preds = %"$out_of_gas_4423", %"$have_gas_4419"
  %"$consume_4425" = sub i64 %"$gasrem_4421", 1
  store i64 %"$consume_4425", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4426", i32 0, i32 0), i32 3 }, %String* %v2, align 8, !dbg !953
  %"$gasrem_4427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4428" = icmp ugt i64 1, %"$gasrem_4427"
  br i1 %"$gascmp_4428", label %"$out_of_gas_4429", label %"$have_gas_4430"

"$out_of_gas_4429":                               ; preds = %"$have_gas_4424"
  call void @_out_of_gas()
  br label %"$have_gas_4430"

"$have_gas_4430":                                 ; preds = %"$out_of_gas_4429", %"$have_gas_4424"
  %"$consume_4431" = sub i64 %"$gasrem_4427", 1
  store i64 %"$consume_4431", i64* @_gasrem, align 8
  %v3 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %v3, metadata !954, metadata !DIExpression()), !dbg !955
  %"$gasrem_4432" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4433" = icmp ugt i64 1, %"$gasrem_4432"
  br i1 %"$gascmp_4433", label %"$out_of_gas_4434", label %"$have_gas_4435"

"$out_of_gas_4434":                               ; preds = %"$have_gas_4430"
  call void @_out_of_gas()
  br label %"$have_gas_4435"

"$have_gas_4435":                                 ; preds = %"$out_of_gas_4434", %"$have_gas_4430"
  %"$consume_4436" = sub i64 %"$gasrem_4432", 1
  store i64 %"$consume_4436", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4437", i32 0, i32 0), i32 3 }, %String* %v3, align 8, !dbg !956
  %"$gasrem_4438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4439" = icmp ugt i64 1, %"$gasrem_4438"
  br i1 %"$gascmp_4439", label %"$out_of_gas_4440", label %"$have_gas_4441"

"$out_of_gas_4440":                               ; preds = %"$have_gas_4435"
  call void @_out_of_gas()
  br label %"$have_gas_4441"

"$have_gas_4441":                                 ; preds = %"$out_of_gas_4440", %"$have_gas_4435"
  %"$consume_4442" = sub i64 %"$gasrem_4438", 1
  store i64 %"$consume_4442", i64* @_gasrem, align 8
  %v4 = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %v4, metadata !957, metadata !DIExpression()), !dbg !958
  %"$gasrem_4443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4444" = icmp ugt i64 1, %"$gasrem_4443"
  br i1 %"$gascmp_4444", label %"$out_of_gas_4445", label %"$have_gas_4446"

"$out_of_gas_4445":                               ; preds = %"$have_gas_4441"
  call void @_out_of_gas()
  br label %"$have_gas_4446"

"$have_gas_4446":                                 ; preds = %"$out_of_gas_4445", %"$have_gas_4441"
  %"$consume_4447" = sub i64 %"$gasrem_4443", 1
  store i64 %"$consume_4447", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4448", i32 0, i32 0), i32 3 }, %String* %v4, align 8, !dbg !959
  %"$gasrem_4449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4450" = icmp ugt i64 1, %"$gasrem_4449"
  br i1 %"$gascmp_4450", label %"$out_of_gas_4451", label %"$have_gas_4452"

"$out_of_gas_4451":                               ; preds = %"$have_gas_4446"
  call void @_out_of_gas()
  br label %"$have_gas_4452"

"$have_gas_4452":                                 ; preds = %"$out_of_gas_4451", %"$have_gas_4446"
  %"$consume_4453" = sub i64 %"$gasrem_4449", 1
  store i64 %"$consume_4453", i64* @_gasrem, align 8
  %b1 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b1, metadata !960, metadata !DIExpression()), !dbg !961
  %"$gasrem_4454" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4455" = icmp ugt i64 2, %"$gasrem_4454"
  br i1 %"$gascmp_4455", label %"$out_of_gas_4456", label %"$have_gas_4457"

"$out_of_gas_4456":                               ; preds = %"$have_gas_4452"
  call void @_out_of_gas()
  br label %"$have_gas_4457"

"$have_gas_4457":                                 ; preds = %"$out_of_gas_4456", %"$have_gas_4452"
  %"$consume_4458" = sub i64 %"$gasrem_4454", 2
  store i64 %"$consume_4458", i64* @_gasrem, align 8
  %"$t1_4460" = load %TName_Option_String*, %TName_Option_String** %t1, align 8
  %"$t1_tag_4461" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t1_4460", i32 0, i32 0
  %"$t1_tag_4462" = load i8, i8* %"$t1_tag_4461", align 1
  switch i8 %"$t1_tag_4462", label %"$empty_default_4463" [
    i8 0, label %"$Some_4464"
    i8 1, label %"$None_4487"
  ], !dbg !962

"$Some_4464":                                     ; preds = %"$have_gas_4457"
  %"$t1_4465" = bitcast %TName_Option_String* %"$t1_4460" to %CName_Some_String*
  %"$t1v_gep_4466" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t1_4465", i32 0, i32 1
  %"$t1v_load_4467" = load %String, %String* %"$t1v_gep_4466", align 8
  %t1v = alloca %String, align 8
  store %String %"$t1v_load_4467", %String* %t1v, align 8
  %"$_literal_cost_t1v_4468" = alloca %String, align 8
  %"$t1v_4469" = load %String, %String* %t1v, align 8
  store %String %"$t1v_4469", %String* %"$_literal_cost_t1v_4468", align 8
  %"$$_literal_cost_t1v_4468_4470" = bitcast %String* %"$_literal_cost_t1v_4468" to i8*
  %"$_literal_cost_call_4471" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_t1v_4468_4470")
  %"$_literal_cost_v1_4472" = alloca %String, align 8
  %"$v1_4473" = load %String, %String* %v1, align 8
  store %String %"$v1_4473", %String* %"$_literal_cost_v1_4472", align 8
  %"$$_literal_cost_v1_4472_4474" = bitcast %String* %"$_literal_cost_v1_4472" to i8*
  %"$_literal_cost_call_4475" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v1_4472_4474")
  %"$gasmin_4476" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_4471", i64 %"$_literal_cost_call_4475")
  %"$gasrem_4477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4478" = icmp ugt i64 %"$gasmin_4476", %"$gasrem_4477"
  br i1 %"$gascmp_4478", label %"$out_of_gas_4479", label %"$have_gas_4480"

"$out_of_gas_4479":                               ; preds = %"$Some_4464"
  call void @_out_of_gas()
  br label %"$have_gas_4480"

"$have_gas_4480":                                 ; preds = %"$out_of_gas_4479", %"$Some_4464"
  %"$consume_4481" = sub i64 %"$gasrem_4477", %"$gasmin_4476"
  store i64 %"$consume_4481", i64* @_gasrem, align 8
  %"$execptr_load_4482" = load i8*, i8** @_execptr, align 8
  %"$t1v_4483" = load %String, %String* %t1v, align 8
  %"$v1_4484" = load %String, %String* %v1, align 8
  %"$eq_call_4485" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_4482", %String %"$t1v_4483", %String %"$v1_4484"), !dbg !963
  store %TName_Bool* %"$eq_call_4485", %TName_Bool** %b1, align 8, !dbg !963
  br label %"$matchsucc_4459"

"$None_4487":                                     ; preds = %"$have_gas_4457"
  %"$t1_4488" = bitcast %TName_Option_String* %"$t1_4460" to %CName_None_String*
  %"$gasrem_4489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4490" = icmp ugt i64 1, %"$gasrem_4489"
  br i1 %"$gascmp_4490", label %"$out_of_gas_4491", label %"$have_gas_4492"

"$out_of_gas_4491":                               ; preds = %"$None_4487"
  call void @_out_of_gas()
  br label %"$have_gas_4492"

"$have_gas_4492":                                 ; preds = %"$out_of_gas_4491", %"$None_4487"
  %"$consume_4493" = sub i64 %"$gasrem_4489", 1
  store i64 %"$consume_4493", i64* @_gasrem, align 8
  %"$adtval_4494_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4494_salloc" = call i8* @_salloc(i8* %"$adtval_4494_load", i64 1)
  %"$adtval_4494" = bitcast i8* %"$adtval_4494_salloc" to %CName_False*
  %"$adtgep_4495" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_4494", i32 0, i32 0
  store i8 1, i8* %"$adtgep_4495", align 1
  %"$adtptr_4496" = bitcast %CName_False* %"$adtval_4494" to %TName_Bool*
  store %TName_Bool* %"$adtptr_4496", %TName_Bool** %b1, align 8, !dbg !966
  br label %"$matchsucc_4459"

"$empty_default_4463":                            ; preds = %"$have_gas_4457"
  br label %"$matchsucc_4459"

"$matchsucc_4459":                                ; preds = %"$have_gas_4492", %"$have_gas_4480", %"$empty_default_4463"
  %"$gasrem_4497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4498" = icmp ugt i64 1, %"$gasrem_4497"
  br i1 %"$gascmp_4498", label %"$out_of_gas_4499", label %"$have_gas_4500"

"$out_of_gas_4499":                               ; preds = %"$matchsucc_4459"
  call void @_out_of_gas()
  br label %"$have_gas_4500"

"$have_gas_4500":                                 ; preds = %"$out_of_gas_4499", %"$matchsucc_4459"
  %"$consume_4501" = sub i64 %"$gasrem_4497", 1
  store i64 %"$consume_4501", i64* @_gasrem, align 8
  %b2 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b2, metadata !968, metadata !DIExpression()), !dbg !969
  %"$gasrem_4502" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4503" = icmp ugt i64 2, %"$gasrem_4502"
  br i1 %"$gascmp_4503", label %"$out_of_gas_4504", label %"$have_gas_4505"

"$out_of_gas_4504":                               ; preds = %"$have_gas_4500"
  call void @_out_of_gas()
  br label %"$have_gas_4505"

"$have_gas_4505":                                 ; preds = %"$out_of_gas_4504", %"$have_gas_4500"
  %"$consume_4506" = sub i64 %"$gasrem_4502", 2
  store i64 %"$consume_4506", i64* @_gasrem, align 8
  %"$t2_4508" = load %TName_Option_String*, %TName_Option_String** %t2, align 8
  %"$t2_tag_4509" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t2_4508", i32 0, i32 0
  %"$t2_tag_4510" = load i8, i8* %"$t2_tag_4509", align 1
  switch i8 %"$t2_tag_4510", label %"$empty_default_4511" [
    i8 0, label %"$Some_4512"
    i8 1, label %"$None_4535"
  ], !dbg !970

"$Some_4512":                                     ; preds = %"$have_gas_4505"
  %"$t2_4513" = bitcast %TName_Option_String* %"$t2_4508" to %CName_Some_String*
  %"$t2v_gep_4514" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t2_4513", i32 0, i32 1
  %"$t2v_load_4515" = load %String, %String* %"$t2v_gep_4514", align 8
  %t2v = alloca %String, align 8
  store %String %"$t2v_load_4515", %String* %t2v, align 8
  %"$_literal_cost_t2v_4516" = alloca %String, align 8
  %"$t2v_4517" = load %String, %String* %t2v, align 8
  store %String %"$t2v_4517", %String* %"$_literal_cost_t2v_4516", align 8
  %"$$_literal_cost_t2v_4516_4518" = bitcast %String* %"$_literal_cost_t2v_4516" to i8*
  %"$_literal_cost_call_4519" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_t2v_4516_4518")
  %"$_literal_cost_v2_4520" = alloca %String, align 8
  %"$v2_4521" = load %String, %String* %v2, align 8
  store %String %"$v2_4521", %String* %"$_literal_cost_v2_4520", align 8
  %"$$_literal_cost_v2_4520_4522" = bitcast %String* %"$_literal_cost_v2_4520" to i8*
  %"$_literal_cost_call_4523" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v2_4520_4522")
  %"$gasmin_4524" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_4519", i64 %"$_literal_cost_call_4523")
  %"$gasrem_4525" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4526" = icmp ugt i64 %"$gasmin_4524", %"$gasrem_4525"
  br i1 %"$gascmp_4526", label %"$out_of_gas_4527", label %"$have_gas_4528"

"$out_of_gas_4527":                               ; preds = %"$Some_4512"
  call void @_out_of_gas()
  br label %"$have_gas_4528"

"$have_gas_4528":                                 ; preds = %"$out_of_gas_4527", %"$Some_4512"
  %"$consume_4529" = sub i64 %"$gasrem_4525", %"$gasmin_4524"
  store i64 %"$consume_4529", i64* @_gasrem, align 8
  %"$execptr_load_4530" = load i8*, i8** @_execptr, align 8
  %"$t2v_4531" = load %String, %String* %t2v, align 8
  %"$v2_4532" = load %String, %String* %v2, align 8
  %"$eq_call_4533" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_4530", %String %"$t2v_4531", %String %"$v2_4532"), !dbg !971
  store %TName_Bool* %"$eq_call_4533", %TName_Bool** %b2, align 8, !dbg !971
  br label %"$matchsucc_4507"

"$None_4535":                                     ; preds = %"$have_gas_4505"
  %"$t2_4536" = bitcast %TName_Option_String* %"$t2_4508" to %CName_None_String*
  %"$gasrem_4537" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4538" = icmp ugt i64 1, %"$gasrem_4537"
  br i1 %"$gascmp_4538", label %"$out_of_gas_4539", label %"$have_gas_4540"

"$out_of_gas_4539":                               ; preds = %"$None_4535"
  call void @_out_of_gas()
  br label %"$have_gas_4540"

"$have_gas_4540":                                 ; preds = %"$out_of_gas_4539", %"$None_4535"
  %"$consume_4541" = sub i64 %"$gasrem_4537", 1
  store i64 %"$consume_4541", i64* @_gasrem, align 8
  %"$adtval_4542_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4542_salloc" = call i8* @_salloc(i8* %"$adtval_4542_load", i64 1)
  %"$adtval_4542" = bitcast i8* %"$adtval_4542_salloc" to %CName_False*
  %"$adtgep_4543" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_4542", i32 0, i32 0
  store i8 1, i8* %"$adtgep_4543", align 1
  %"$adtptr_4544" = bitcast %CName_False* %"$adtval_4542" to %TName_Bool*
  store %TName_Bool* %"$adtptr_4544", %TName_Bool** %b2, align 8, !dbg !974
  br label %"$matchsucc_4507"

"$empty_default_4511":                            ; preds = %"$have_gas_4505"
  br label %"$matchsucc_4507"

"$matchsucc_4507":                                ; preds = %"$have_gas_4540", %"$have_gas_4528", %"$empty_default_4511"
  %"$gasrem_4545" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4546" = icmp ugt i64 1, %"$gasrem_4545"
  br i1 %"$gascmp_4546", label %"$out_of_gas_4547", label %"$have_gas_4548"

"$out_of_gas_4547":                               ; preds = %"$matchsucc_4507"
  call void @_out_of_gas()
  br label %"$have_gas_4548"

"$have_gas_4548":                                 ; preds = %"$out_of_gas_4547", %"$matchsucc_4507"
  %"$consume_4549" = sub i64 %"$gasrem_4545", 1
  store i64 %"$consume_4549", i64* @_gasrem, align 8
  %b3 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b3, metadata !976, metadata !DIExpression()), !dbg !977
  %"$gasrem_4550" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4551" = icmp ugt i64 2, %"$gasrem_4550"
  br i1 %"$gascmp_4551", label %"$out_of_gas_4552", label %"$have_gas_4553"

"$out_of_gas_4552":                               ; preds = %"$have_gas_4548"
  call void @_out_of_gas()
  br label %"$have_gas_4553"

"$have_gas_4553":                                 ; preds = %"$out_of_gas_4552", %"$have_gas_4548"
  %"$consume_4554" = sub i64 %"$gasrem_4550", 2
  store i64 %"$consume_4554", i64* @_gasrem, align 8
  %"$t3_4556" = load %TName_Option_String*, %TName_Option_String** %t3, align 8
  %"$t3_tag_4557" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t3_4556", i32 0, i32 0
  %"$t3_tag_4558" = load i8, i8* %"$t3_tag_4557", align 1
  switch i8 %"$t3_tag_4558", label %"$empty_default_4559" [
    i8 0, label %"$Some_4560"
    i8 1, label %"$None_4583"
  ], !dbg !978

"$Some_4560":                                     ; preds = %"$have_gas_4553"
  %"$t3_4561" = bitcast %TName_Option_String* %"$t3_4556" to %CName_Some_String*
  %"$t3v_gep_4562" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t3_4561", i32 0, i32 1
  %"$t3v_load_4563" = load %String, %String* %"$t3v_gep_4562", align 8
  %t3v = alloca %String, align 8
  store %String %"$t3v_load_4563", %String* %t3v, align 8
  %"$_literal_cost_t3v_4564" = alloca %String, align 8
  %"$t3v_4565" = load %String, %String* %t3v, align 8
  store %String %"$t3v_4565", %String* %"$_literal_cost_t3v_4564", align 8
  %"$$_literal_cost_t3v_4564_4566" = bitcast %String* %"$_literal_cost_t3v_4564" to i8*
  %"$_literal_cost_call_4567" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_t3v_4564_4566")
  %"$_literal_cost_v3_4568" = alloca %String, align 8
  %"$v3_4569" = load %String, %String* %v3, align 8
  store %String %"$v3_4569", %String* %"$_literal_cost_v3_4568", align 8
  %"$$_literal_cost_v3_4568_4570" = bitcast %String* %"$_literal_cost_v3_4568" to i8*
  %"$_literal_cost_call_4571" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v3_4568_4570")
  %"$gasmin_4572" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_4567", i64 %"$_literal_cost_call_4571")
  %"$gasrem_4573" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4574" = icmp ugt i64 %"$gasmin_4572", %"$gasrem_4573"
  br i1 %"$gascmp_4574", label %"$out_of_gas_4575", label %"$have_gas_4576"

"$out_of_gas_4575":                               ; preds = %"$Some_4560"
  call void @_out_of_gas()
  br label %"$have_gas_4576"

"$have_gas_4576":                                 ; preds = %"$out_of_gas_4575", %"$Some_4560"
  %"$consume_4577" = sub i64 %"$gasrem_4573", %"$gasmin_4572"
  store i64 %"$consume_4577", i64* @_gasrem, align 8
  %"$execptr_load_4578" = load i8*, i8** @_execptr, align 8
  %"$t3v_4579" = load %String, %String* %t3v, align 8
  %"$v3_4580" = load %String, %String* %v3, align 8
  %"$eq_call_4581" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_4578", %String %"$t3v_4579", %String %"$v3_4580"), !dbg !979
  store %TName_Bool* %"$eq_call_4581", %TName_Bool** %b3, align 8, !dbg !979
  br label %"$matchsucc_4555"

"$None_4583":                                     ; preds = %"$have_gas_4553"
  %"$t3_4584" = bitcast %TName_Option_String* %"$t3_4556" to %CName_None_String*
  %"$gasrem_4585" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4586" = icmp ugt i64 1, %"$gasrem_4585"
  br i1 %"$gascmp_4586", label %"$out_of_gas_4587", label %"$have_gas_4588"

"$out_of_gas_4587":                               ; preds = %"$None_4583"
  call void @_out_of_gas()
  br label %"$have_gas_4588"

"$have_gas_4588":                                 ; preds = %"$out_of_gas_4587", %"$None_4583"
  %"$consume_4589" = sub i64 %"$gasrem_4585", 1
  store i64 %"$consume_4589", i64* @_gasrem, align 8
  %"$adtval_4590_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4590_salloc" = call i8* @_salloc(i8* %"$adtval_4590_load", i64 1)
  %"$adtval_4590" = bitcast i8* %"$adtval_4590_salloc" to %CName_False*
  %"$adtgep_4591" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_4590", i32 0, i32 0
  store i8 1, i8* %"$adtgep_4591", align 1
  %"$adtptr_4592" = bitcast %CName_False* %"$adtval_4590" to %TName_Bool*
  store %TName_Bool* %"$adtptr_4592", %TName_Bool** %b3, align 8, !dbg !982
  br label %"$matchsucc_4555"

"$empty_default_4559":                            ; preds = %"$have_gas_4553"
  br label %"$matchsucc_4555"

"$matchsucc_4555":                                ; preds = %"$have_gas_4588", %"$have_gas_4576", %"$empty_default_4559"
  %"$gasrem_4593" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4594" = icmp ugt i64 1, %"$gasrem_4593"
  br i1 %"$gascmp_4594", label %"$out_of_gas_4595", label %"$have_gas_4596"

"$out_of_gas_4595":                               ; preds = %"$matchsucc_4555"
  call void @_out_of_gas()
  br label %"$have_gas_4596"

"$have_gas_4596":                                 ; preds = %"$out_of_gas_4595", %"$matchsucc_4555"
  %"$consume_4597" = sub i64 %"$gasrem_4593", 1
  store i64 %"$consume_4597", i64* @_gasrem, align 8
  %b4 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b4, metadata !984, metadata !DIExpression()), !dbg !985
  %"$gasrem_4598" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4599" = icmp ugt i64 2, %"$gasrem_4598"
  br i1 %"$gascmp_4599", label %"$out_of_gas_4600", label %"$have_gas_4601"

"$out_of_gas_4600":                               ; preds = %"$have_gas_4596"
  call void @_out_of_gas()
  br label %"$have_gas_4601"

"$have_gas_4601":                                 ; preds = %"$out_of_gas_4600", %"$have_gas_4596"
  %"$consume_4602" = sub i64 %"$gasrem_4598", 2
  store i64 %"$consume_4602", i64* @_gasrem, align 8
  %"$t4_4604" = load %TName_Option_String*, %TName_Option_String** %t4, align 8
  %"$t4_tag_4605" = getelementptr inbounds %TName_Option_String, %TName_Option_String* %"$t4_4604", i32 0, i32 0
  %"$t4_tag_4606" = load i8, i8* %"$t4_tag_4605", align 1
  switch i8 %"$t4_tag_4606", label %"$empty_default_4607" [
    i8 0, label %"$Some_4608"
    i8 1, label %"$None_4631"
  ], !dbg !986

"$Some_4608":                                     ; preds = %"$have_gas_4601"
  %"$t4_4609" = bitcast %TName_Option_String* %"$t4_4604" to %CName_Some_String*
  %"$t4v_gep_4610" = getelementptr inbounds %CName_Some_String, %CName_Some_String* %"$t4_4609", i32 0, i32 1
  %"$t4v_load_4611" = load %String, %String* %"$t4v_gep_4610", align 8
  %t4v = alloca %String, align 8
  store %String %"$t4v_load_4611", %String* %t4v, align 8
  %"$_literal_cost_t4v_4612" = alloca %String, align 8
  %"$t4v_4613" = load %String, %String* %t4v, align 8
  store %String %"$t4v_4613", %String* %"$_literal_cost_t4v_4612", align 8
  %"$$_literal_cost_t4v_4612_4614" = bitcast %String* %"$_literal_cost_t4v_4612" to i8*
  %"$_literal_cost_call_4615" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_t4v_4612_4614")
  %"$_literal_cost_v4_4616" = alloca %String, align 8
  %"$v4_4617" = load %String, %String* %v4, align 8
  store %String %"$v4_4617", %String* %"$_literal_cost_v4_4616", align 8
  %"$$_literal_cost_v4_4616_4618" = bitcast %String* %"$_literal_cost_v4_4616" to i8*
  %"$_literal_cost_call_4619" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_52", i8* %"$$_literal_cost_v4_4616_4618")
  %"$gasmin_4620" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_4615", i64 %"$_literal_cost_call_4619")
  %"$gasrem_4621" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4622" = icmp ugt i64 %"$gasmin_4620", %"$gasrem_4621"
  br i1 %"$gascmp_4622", label %"$out_of_gas_4623", label %"$have_gas_4624"

"$out_of_gas_4623":                               ; preds = %"$Some_4608"
  call void @_out_of_gas()
  br label %"$have_gas_4624"

"$have_gas_4624":                                 ; preds = %"$out_of_gas_4623", %"$Some_4608"
  %"$consume_4625" = sub i64 %"$gasrem_4621", %"$gasmin_4620"
  store i64 %"$consume_4625", i64* @_gasrem, align 8
  %"$execptr_load_4626" = load i8*, i8** @_execptr, align 8
  %"$t4v_4627" = load %String, %String* %t4v, align 8
  %"$v4_4628" = load %String, %String* %v4, align 8
  %"$eq_call_4629" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_4626", %String %"$t4v_4627", %String %"$v4_4628"), !dbg !987
  store %TName_Bool* %"$eq_call_4629", %TName_Bool** %b4, align 8, !dbg !987
  br label %"$matchsucc_4603"

"$None_4631":                                     ; preds = %"$have_gas_4601"
  %"$t4_4632" = bitcast %TName_Option_String* %"$t4_4604" to %CName_None_String*
  %"$gasrem_4633" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4634" = icmp ugt i64 1, %"$gasrem_4633"
  br i1 %"$gascmp_4634", label %"$out_of_gas_4635", label %"$have_gas_4636"

"$out_of_gas_4635":                               ; preds = %"$None_4631"
  call void @_out_of_gas()
  br label %"$have_gas_4636"

"$have_gas_4636":                                 ; preds = %"$out_of_gas_4635", %"$None_4631"
  %"$consume_4637" = sub i64 %"$gasrem_4633", 1
  store i64 %"$consume_4637", i64* @_gasrem, align 8
  %"$adtval_4638_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_4638_salloc" = call i8* @_salloc(i8* %"$adtval_4638_load", i64 1)
  %"$adtval_4638" = bitcast i8* %"$adtval_4638_salloc" to %CName_False*
  %"$adtgep_4639" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_4638", i32 0, i32 0
  store i8 1, i8* %"$adtgep_4639", align 1
  %"$adtptr_4640" = bitcast %CName_False* %"$adtval_4638" to %TName_Bool*
  store %TName_Bool* %"$adtptr_4640", %TName_Bool** %b4, align 8, !dbg !990
  br label %"$matchsucc_4603"

"$empty_default_4607":                            ; preds = %"$have_gas_4601"
  br label %"$matchsucc_4603"

"$matchsucc_4603":                                ; preds = %"$have_gas_4636", %"$have_gas_4624", %"$empty_default_4607"
  %"$gasrem_4641" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4642" = icmp ugt i64 1, %"$gasrem_4641"
  br i1 %"$gascmp_4642", label %"$out_of_gas_4643", label %"$have_gas_4644"

"$out_of_gas_4643":                               ; preds = %"$matchsucc_4603"
  call void @_out_of_gas()
  br label %"$have_gas_4644"

"$have_gas_4644":                                 ; preds = %"$out_of_gas_4643", %"$matchsucc_4603"
  %"$consume_4645" = sub i64 %"$gasrem_4641", 1
  store i64 %"$consume_4645", i64* @_gasrem, align 8
  %b = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %b, metadata !992, metadata !DIExpression()), !dbg !993
  %"$gasrem_4646" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4647" = icmp ugt i64 1, %"$gasrem_4646"
  br i1 %"$gascmp_4647", label %"$out_of_gas_4648", label %"$have_gas_4649"

"$out_of_gas_4648":                               ; preds = %"$have_gas_4644"
  call void @_out_of_gas()
  br label %"$have_gas_4649"

"$have_gas_4649":                                 ; preds = %"$out_of_gas_4648", %"$have_gas_4644"
  %"$consume_4650" = sub i64 %"$gasrem_4646", 1
  store i64 %"$consume_4650", i64* @_gasrem, align 8
  %a1 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %a1, metadata !994, metadata !DIExpression()), !dbg !995
  %"$gasrem_4651" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4652" = icmp ugt i64 1, %"$gasrem_4651"
  br i1 %"$gascmp_4652", label %"$out_of_gas_4653", label %"$have_gas_4654"

"$out_of_gas_4653":                               ; preds = %"$have_gas_4649"
  call void @_out_of_gas()
  br label %"$have_gas_4654"

"$have_gas_4654":                                 ; preds = %"$out_of_gas_4653", %"$have_gas_4649"
  %"$consume_4655" = sub i64 %"$gasrem_4651", 1
  store i64 %"$consume_4655", i64* @_gasrem, align 8
  %"$BoolUtils.andb_19" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_4656" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_4657" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4656", 0
  %"$BoolUtils.andb_envptr_4658" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4656", 1
  %"$b1_4659" = load %TName_Bool*, %TName_Bool** %b1, align 8
  %"$BoolUtils.andb_call_4660" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_4657"(i8* %"$BoolUtils.andb_envptr_4658", %TName_Bool* %"$b1_4659"), !dbg !996
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_4660", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_19", align 8, !dbg !996
  %"$BoolUtils.andb_20" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_20", metadata !997, metadata !DIExpression()), !dbg !996
  %"$$BoolUtils.andb_19_4661" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_19", align 8
  %"$$BoolUtils.andb_19_fptr_4662" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_19_4661", 0
  %"$$BoolUtils.andb_19_envptr_4663" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_19_4661", 1
  %"$b2_4664" = load %TName_Bool*, %TName_Bool** %b2, align 8
  %"$$BoolUtils.andb_19_call_4665" = call %TName_Bool* %"$$BoolUtils.andb_19_fptr_4662"(i8* %"$$BoolUtils.andb_19_envptr_4663", %TName_Bool* %"$b2_4664"), !dbg !996
  store %TName_Bool* %"$$BoolUtils.andb_19_call_4665", %TName_Bool** %"$BoolUtils.andb_20", align 8, !dbg !996
  %"$$BoolUtils.andb_20_4666" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_20", align 8
  store %TName_Bool* %"$$BoolUtils.andb_20_4666", %TName_Bool** %a1, align 8, !dbg !996
  %"$gasrem_4667" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4668" = icmp ugt i64 1, %"$gasrem_4667"
  br i1 %"$gascmp_4668", label %"$out_of_gas_4669", label %"$have_gas_4670"

"$out_of_gas_4669":                               ; preds = %"$have_gas_4654"
  call void @_out_of_gas()
  br label %"$have_gas_4670"

"$have_gas_4670":                                 ; preds = %"$out_of_gas_4669", %"$have_gas_4654"
  %"$consume_4671" = sub i64 %"$gasrem_4667", 1
  store i64 %"$consume_4671", i64* @_gasrem, align 8
  %a2 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %a2, metadata !998, metadata !DIExpression()), !dbg !999
  %"$gasrem_4672" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4673" = icmp ugt i64 1, %"$gasrem_4672"
  br i1 %"$gascmp_4673", label %"$out_of_gas_4674", label %"$have_gas_4675"

"$out_of_gas_4674":                               ; preds = %"$have_gas_4670"
  call void @_out_of_gas()
  br label %"$have_gas_4675"

"$have_gas_4675":                                 ; preds = %"$out_of_gas_4674", %"$have_gas_4670"
  %"$consume_4676" = sub i64 %"$gasrem_4672", 1
  store i64 %"$consume_4676", i64* @_gasrem, align 8
  %"$BoolUtils.andb_21" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_4677" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_4678" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4677", 0
  %"$BoolUtils.andb_envptr_4679" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4677", 1
  %"$b3_4680" = load %TName_Bool*, %TName_Bool** %b3, align 8
  %"$BoolUtils.andb_call_4681" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_4678"(i8* %"$BoolUtils.andb_envptr_4679", %TName_Bool* %"$b3_4680"), !dbg !1000
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_4681", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_21", align 8, !dbg !1000
  %"$BoolUtils.andb_22" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_22", metadata !1001, metadata !DIExpression()), !dbg !1000
  %"$$BoolUtils.andb_21_4682" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_21", align 8
  %"$$BoolUtils.andb_21_fptr_4683" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_21_4682", 0
  %"$$BoolUtils.andb_21_envptr_4684" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_21_4682", 1
  %"$b4_4685" = load %TName_Bool*, %TName_Bool** %b4, align 8
  %"$$BoolUtils.andb_21_call_4686" = call %TName_Bool* %"$$BoolUtils.andb_21_fptr_4683"(i8* %"$$BoolUtils.andb_21_envptr_4684", %TName_Bool* %"$b4_4685"), !dbg !1000
  store %TName_Bool* %"$$BoolUtils.andb_21_call_4686", %TName_Bool** %"$BoolUtils.andb_22", align 8, !dbg !1000
  %"$$BoolUtils.andb_22_4687" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_22", align 8
  store %TName_Bool* %"$$BoolUtils.andb_22_4687", %TName_Bool** %a2, align 8, !dbg !1000
  %"$gasrem_4688" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4689" = icmp ugt i64 1, %"$gasrem_4688"
  br i1 %"$gascmp_4689", label %"$out_of_gas_4690", label %"$have_gas_4691"

"$out_of_gas_4690":                               ; preds = %"$have_gas_4675"
  call void @_out_of_gas()
  br label %"$have_gas_4691"

"$have_gas_4691":                                 ; preds = %"$out_of_gas_4690", %"$have_gas_4675"
  %"$consume_4692" = sub i64 %"$gasrem_4688", 1
  store i64 %"$consume_4692", i64* @_gasrem, align 8
  %"$BoolUtils.andb_23" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_4693" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_4694" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4693", 0
  %"$BoolUtils.andb_envptr_4695" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_4693", 1
  %"$a1_4696" = load %TName_Bool*, %TName_Bool** %a1, align 8
  %"$BoolUtils.andb_call_4697" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_4694"(i8* %"$BoolUtils.andb_envptr_4695", %TName_Bool* %"$a1_4696"), !dbg !1002
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_4697", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_23", align 8, !dbg !1002
  %"$BoolUtils.andb_24" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$BoolUtils.andb_24", metadata !1003, metadata !DIExpression()), !dbg !1002
  %"$$BoolUtils.andb_23_4698" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_23", align 8
  %"$$BoolUtils.andb_23_fptr_4699" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_23_4698", 0
  %"$$BoolUtils.andb_23_envptr_4700" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_23_4698", 1
  %"$a2_4701" = load %TName_Bool*, %TName_Bool** %a2, align 8
  %"$$BoolUtils.andb_23_call_4702" = call %TName_Bool* %"$$BoolUtils.andb_23_fptr_4699"(i8* %"$$BoolUtils.andb_23_envptr_4700", %TName_Bool* %"$a2_4701"), !dbg !1002
  store %TName_Bool* %"$$BoolUtils.andb_23_call_4702", %TName_Bool** %"$BoolUtils.andb_24", align 8, !dbg !1002
  %"$$BoolUtils.andb_24_4703" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_24", align 8
  store %TName_Bool* %"$$BoolUtils.andb_24_4703", %TName_Bool** %b, align 8, !dbg !1002
  %"$gasrem_4704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4705" = icmp ugt i64 2, %"$gasrem_4704"
  br i1 %"$gascmp_4705", label %"$out_of_gas_4706", label %"$have_gas_4707"

"$out_of_gas_4706":                               ; preds = %"$have_gas_4691"
  call void @_out_of_gas()
  br label %"$have_gas_4707"

"$have_gas_4707":                                 ; preds = %"$out_of_gas_4706", %"$have_gas_4691"
  %"$consume_4708" = sub i64 %"$gasrem_4704", 2
  store i64 %"$consume_4708", i64* @_gasrem, align 8
  %"$b_4710" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_4711" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_4710", i32 0, i32 0
  %"$b_tag_4712" = load i8, i8* %"$b_tag_4711", align 1
  switch i8 %"$b_tag_4712", label %"$empty_default_4713" [
    i8 0, label %"$True_4714"
    i8 1, label %"$False_4716"
  ], !dbg !1004

"$True_4714":                                     ; preds = %"$have_gas_4707"
  %"$b_4715" = bitcast %TName_Bool* %"$b_4710" to %CName_True*
  br label %"$matchsucc_4709"

"$False_4716":                                    ; preds = %"$have_gas_4707"
  %"$b_4717" = bitcast %TName_Bool* %"$b_4710" to %CName_False*
  %"$gasrem_4718" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4719" = icmp ugt i64 1, %"$gasrem_4718"
  br i1 %"$gascmp_4719", label %"$out_of_gas_4720", label %"$have_gas_4721"

"$out_of_gas_4720":                               ; preds = %"$False_4716"
  call void @_out_of_gas()
  br label %"$have_gas_4721"

"$have_gas_4721":                                 ; preds = %"$out_of_gas_4720", %"$False_4716"
  %"$consume_4722" = sub i64 %"$gasrem_4718", 1
  store i64 %"$consume_4722", i64* @_gasrem, align 8
  %"$fail__origin_4723" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_4723", align 1
  %"$fail__sender_4724" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_4724", align 1
  %"$tname_4725" = load %String, %String* %tname, align 8
  call void @"$fail_254"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_4723", [20 x i8]* %"$fail__sender_4724", %String %"$tname_4725"), !dbg !1005
  br label %"$matchsucc_4709"

"$empty_default_4713":                            ; preds = %"$have_gas_4707"
  br label %"$matchsucc_4709"

"$matchsucc_4709":                                ; preds = %"$have_gas_4721", %"$True_4714", %"$empty_default_4713"
  %"$gasrem_4726" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4727" = icmp ugt i64 1, %"$gasrem_4726"
  br i1 %"$gascmp_4727", label %"$out_of_gas_4728", label %"$have_gas_4729"

"$out_of_gas_4728":                               ; preds = %"$matchsucc_4709"
  call void @_out_of_gas()
  br label %"$have_gas_4729"

"$have_gas_4729":                                 ; preds = %"$out_of_gas_4728", %"$matchsucc_4709"
  %"$consume_4730" = sub i64 %"$gasrem_4726", 1
  store i64 %"$consume_4730", i64* @_gasrem, align 8
  %m1 = alloca %Map_String_String*, align 8
  call void @llvm.dbg.declare(metadata %Map_String_String** %m1, metadata !1008, metadata !DIExpression()), !dbg !1009
  %"$gasrem_4731" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4732" = icmp ugt i64 1, %"$gasrem_4731"
  br i1 %"$gascmp_4732", label %"$out_of_gas_4733", label %"$have_gas_4734"

"$out_of_gas_4733":                               ; preds = %"$have_gas_4729"
  call void @_out_of_gas()
  br label %"$have_gas_4734"

"$have_gas_4734":                                 ; preds = %"$out_of_gas_4733", %"$have_gas_4729"
  %"$consume_4735" = sub i64 %"$gasrem_4731", 1
  store i64 %"$consume_4735", i64* @_gasrem, align 8
  %k = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %k, metadata !1010, metadata !DIExpression()), !dbg !1011
  %"$gasrem_4736" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4737" = icmp ugt i64 1, %"$gasrem_4736"
  br i1 %"$gascmp_4737", label %"$out_of_gas_4738", label %"$have_gas_4739"

"$out_of_gas_4738":                               ; preds = %"$have_gas_4734"
  call void @_out_of_gas()
  br label %"$have_gas_4739"

"$have_gas_4739":                                 ; preds = %"$out_of_gas_4738", %"$have_gas_4734"
  %"$consume_4740" = sub i64 %"$gasrem_4736", 1
  store i64 %"$consume_4740", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_4741", i32 0, i32 0), i32 0 }, %String* %k, align 8, !dbg !1012
  %"$gasrem_4742" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4743" = icmp ugt i64 1, %"$gasrem_4742"
  br i1 %"$gascmp_4743", label %"$out_of_gas_4744", label %"$have_gas_4745"

"$out_of_gas_4744":                               ; preds = %"$have_gas_4739"
  call void @_out_of_gas()
  br label %"$have_gas_4745"

"$have_gas_4745":                                 ; preds = %"$out_of_gas_4744", %"$have_gas_4739"
  %"$consume_4746" = sub i64 %"$gasrem_4742", 1
  store i64 %"$consume_4746", i64* @_gasrem, align 8
  %v = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %v, metadata !1013, metadata !DIExpression()), !dbg !1014
  %"$gasrem_4747" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4748" = icmp ugt i64 1, %"$gasrem_4747"
  br i1 %"$gascmp_4748", label %"$out_of_gas_4749", label %"$have_gas_4750"

"$out_of_gas_4749":                               ; preds = %"$have_gas_4745"
  call void @_out_of_gas()
  br label %"$have_gas_4750"

"$have_gas_4750":                                 ; preds = %"$out_of_gas_4749", %"$have_gas_4745"
  %"$consume_4751" = sub i64 %"$gasrem_4747", 1
  store i64 %"$consume_4751", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4752", i32 0, i32 0), i32 3 }, %String* %v, align 8, !dbg !1015
  %"$gasrem_4753" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4754" = icmp ugt i64 1, %"$gasrem_4753"
  br i1 %"$gascmp_4754", label %"$out_of_gas_4755", label %"$have_gas_4756"

"$out_of_gas_4755":                               ; preds = %"$have_gas_4750"
  call void @_out_of_gas()
  br label %"$have_gas_4756"

"$have_gas_4756":                                 ; preds = %"$out_of_gas_4755", %"$have_gas_4750"
  %"$consume_4757" = sub i64 %"$gasrem_4753", 1
  store i64 %"$consume_4757", i64* @_gasrem, align 8
  %e = alloca %Map_String_String*, align 8
  call void @llvm.dbg.declare(metadata %Map_String_String** %e, metadata !1016, metadata !DIExpression()), !dbg !1017
  %"$gasrem_4758" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4759" = icmp ugt i64 1, %"$gasrem_4758"
  br i1 %"$gascmp_4759", label %"$out_of_gas_4760", label %"$have_gas_4761"

"$out_of_gas_4760":                               ; preds = %"$have_gas_4756"
  call void @_out_of_gas()
  br label %"$have_gas_4761"

"$have_gas_4761":                                 ; preds = %"$out_of_gas_4760", %"$have_gas_4756"
  %"$consume_4762" = sub i64 %"$gasrem_4758", 1
  store i64 %"$consume_4762", i64* @_gasrem, align 8
  %"$execptr_load_4763" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_4764" = call i8* @_new_empty_map(i8* %"$execptr_load_4763")
  %"$_new_empty_map_4765" = bitcast i8* %"$_new_empty_map_call_4764" to %Map_String_String*
  store %Map_String_String* %"$_new_empty_map_4765", %Map_String_String** %e, align 8, !dbg !1018
  %"$e_4766" = load %Map_String_String*, %Map_String_String** %e, align 8
  %"$$e_4766_4767" = bitcast %Map_String_String* %"$e_4766" to i8*
  %"$_lengthof_call_4768" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$e_4766_4767")
  %"$gasadd_4769" = add i64 1, %"$_lengthof_call_4768"
  %"$gasrem_4770" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4771" = icmp ugt i64 %"$gasadd_4769", %"$gasrem_4770"
  br i1 %"$gascmp_4771", label %"$out_of_gas_4772", label %"$have_gas_4773"

"$out_of_gas_4772":                               ; preds = %"$have_gas_4761"
  call void @_out_of_gas()
  br label %"$have_gas_4773"

"$have_gas_4773":                                 ; preds = %"$out_of_gas_4772", %"$have_gas_4761"
  %"$consume_4774" = sub i64 %"$gasrem_4770", %"$gasadd_4769"
  store i64 %"$consume_4774", i64* @_gasrem, align 8
  %"$execptr_load_4775" = load i8*, i8** @_execptr, align 8
  %"$e_4776" = load %Map_String_String*, %Map_String_String** %e, align 8
  %"$$e_4776_4777" = bitcast %Map_String_String* %"$e_4776" to i8*
  %"$put_k_4778" = alloca %String, align 8
  %"$k_4779" = load %String, %String* %k, align 8
  store %String %"$k_4779", %String* %"$put_k_4778", align 8
  %"$$put_k_4778_4780" = bitcast %String* %"$put_k_4778" to i8*
  %"$put_v_4781" = alloca %String, align 8
  %"$v_4782" = load %String, %String* %v, align 8
  store %String %"$v_4782", %String* %"$put_v_4781", align 8
  %"$$put_v_4781_4783" = bitcast %String* %"$put_v_4781" to i8*
  %"$put_call_4784" = call i8* @_put(i8* %"$execptr_load_4775", %_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$e_4776_4777", i8* %"$$put_k_4778_4780", i8* %"$$put_v_4781_4783"), !dbg !1019
  %"$put_4785" = bitcast i8* %"$put_call_4784" to %Map_String_String*
  store %Map_String_String* %"$put_4785", %Map_String_String** %m1, align 8, !dbg !1019
  %"$m1_4786" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$$m1_4786_4787" = bitcast %Map_String_String* %"$m1_4786" to i8*
  %"$_literal_cost_call_4788" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Map_77", i8* %"$$m1_4786_4787")
  %"$gasrem_4789" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4790" = icmp ugt i64 %"$_literal_cost_call_4788", %"$gasrem_4789"
  br i1 %"$gascmp_4790", label %"$out_of_gas_4791", label %"$have_gas_4792"

"$out_of_gas_4791":                               ; preds = %"$have_gas_4773"
  call void @_out_of_gas()
  br label %"$have_gas_4792"

"$have_gas_4792":                                 ; preds = %"$out_of_gas_4791", %"$have_gas_4773"
  %"$consume_4793" = sub i64 %"$gasrem_4789", %"$_literal_cost_call_4788"
  store i64 %"$consume_4793", i64* @_gasrem, align 8
  %"$execptr_load_4794" = load i8*, i8** @_execptr, align 8
  %"$m1_4796" = load %Map_String_String*, %Map_String_String** %m1, align 8
  %"$update_value_4797" = bitcast %Map_String_String* %"$m1_4796" to i8*
  call void @_update_field(i8* %"$execptr_load_4794", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_4795", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_77", i32 0, i8* null, i8* %"$update_value_4797"), !dbg !1020
  ret void
}

define void @t16(i8* %0) !dbg !1021 {
entry:
  %"$_amount_4802" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4803" = bitcast i8* %"$_amount_4802" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4803", align 8
  %"$_origin_4804" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4805" = bitcast i8* %"$_origin_4804" to [20 x i8]*
  %"$_sender_4806" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4807" = bitcast i8* %"$_sender_4806" to [20 x i8]*
  call void @"$t16_4227"(%Uint128 %_amount, [20 x i8]* %"$_origin_4805", [20 x i8]* %"$_sender_4807"), !dbg !1022
  ret void
}

define internal void @"$t17_4808"(%Uint128 %_amount, [20 x i8]* %"$_origin_4809", [20 x i8]* %"$_sender_4810") !dbg !1023 {
entry:
  %"$_sender_4884" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_4810", [20 x i8]** %"$_sender_4884", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_4884", metadata !1024, metadata !DIExpression()), !dbg !1025
  %"$_origin_4883" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_4809", [20 x i8]** %"$_origin_4883", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_4883", metadata !1026, metadata !DIExpression()), !dbg !1025
  %"$_amount_4882" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_4882", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_4882", metadata !1027, metadata !DIExpression()), !dbg !1025
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4809", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4810", align 1
  %"$gasrem_4811" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4812" = icmp ugt i64 1, %"$gasrem_4811"
  br i1 %"$gascmp_4812", label %"$out_of_gas_4813", label %"$have_gas_4814"

"$out_of_gas_4813":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4814"

"$have_gas_4814":                                 ; preds = %"$out_of_gas_4813", %entry
  %"$consume_4815" = sub i64 %"$gasrem_4811", 1
  store i64 %"$consume_4815", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %tname, metadata !1028, metadata !DIExpression()), !dbg !1029
  %"$gasrem_4816" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4817" = icmp ugt i64 1, %"$gasrem_4816"
  br i1 %"$gascmp_4817", label %"$out_of_gas_4818", label %"$have_gas_4819"

"$out_of_gas_4818":                               ; preds = %"$have_gas_4814"
  call void @_out_of_gas()
  br label %"$have_gas_4819"

"$have_gas_4819":                                 ; preds = %"$out_of_gas_4818", %"$have_gas_4814"
  %"$consume_4820" = sub i64 %"$gasrem_4816", 1
  store i64 %"$consume_4820", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4821", i32 0, i32 0), i32 3 }, %String* %tname, align 8, !dbg !1030
  %"$gasrem_4822" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4823" = icmp ugt i64 1, %"$gasrem_4822"
  br i1 %"$gascmp_4823", label %"$out_of_gas_4824", label %"$have_gas_4825"

"$out_of_gas_4824":                               ; preds = %"$have_gas_4819"
  call void @_out_of_gas()
  br label %"$have_gas_4825"

"$have_gas_4825":                                 ; preds = %"$out_of_gas_4824", %"$have_gas_4819"
  %"$consume_4826" = sub i64 %"$gasrem_4822", 1
  store i64 %"$consume_4826", i64* @_gasrem, align 8
  %key = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key, metadata !1031, metadata !DIExpression()), !dbg !1032
  %"$gasrem_4827" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4828" = icmp ugt i64 1, %"$gasrem_4827"
  br i1 %"$gascmp_4828", label %"$out_of_gas_4829", label %"$have_gas_4830"

"$out_of_gas_4829":                               ; preds = %"$have_gas_4825"
  call void @_out_of_gas()
  br label %"$have_gas_4830"

"$have_gas_4830":                                 ; preds = %"$out_of_gas_4829", %"$have_gas_4825"
  %"$consume_4831" = sub i64 %"$gasrem_4827", 1
  store i64 %"$consume_4831", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_4832", i32 0, i32 0), i32 0 }, %String* %key, align 8, !dbg !1033
  %found = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %found, metadata !1034, metadata !DIExpression()), !dbg !1035
  %"$indices_buf_4833_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4833_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4833_salloc_load", i64 16)
  %"$indices_buf_4833_salloc" = bitcast i8* %"$indices_buf_4833_salloc_salloc" to [16 x i8]*
  %"$indices_buf_4833" = bitcast [16 x i8]* %"$indices_buf_4833_salloc" to i8*
  %"$key_4834" = load %String, %String* %key, align 8
  %"$indices_gep_4835" = getelementptr i8, i8* %"$indices_buf_4833", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4835" to %String*
  store %String %"$key_4834", %String* %indices_cast, align 8
  %"$execptr_load_4837" = load i8*, i8** @_execptr, align 8
  %"$found_call_4838" = call i8* @_fetch_field(i8* %"$execptr_load_4837", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_4836", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_77", i32 1, i8* %"$indices_buf_4833", i32 0), !dbg !1035
  %"$found_4839" = bitcast i8* %"$found_call_4838" to %TName_Bool*
  store %TName_Bool* %"$found_4839", %TName_Bool** %found, align 8
  %"$found_4840" = load %TName_Bool*, %TName_Bool** %found, align 8
  %"$$found_4840_4841" = bitcast %TName_Bool* %"$found_4840" to i8*
  %"$_literal_cost_call_4842" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_73", i8* %"$$found_4840_4841")
  %"$gasadd_4843" = add i64 %"$_literal_cost_call_4842", 0
  %"$gasadd_4844" = add i64 %"$gasadd_4843", 1
  %"$gasrem_4845" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4846" = icmp ugt i64 %"$gasadd_4844", %"$gasrem_4845"
  br i1 %"$gascmp_4846", label %"$out_of_gas_4847", label %"$have_gas_4848"

"$out_of_gas_4847":                               ; preds = %"$have_gas_4830"
  call void @_out_of_gas()
  br label %"$have_gas_4848"

"$have_gas_4848":                                 ; preds = %"$out_of_gas_4847", %"$have_gas_4830"
  %"$consume_4849" = sub i64 %"$gasrem_4845", %"$gasadd_4844"
  store i64 %"$consume_4849", i64* @_gasrem, align 8
  %"$gasrem_4850" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4851" = icmp ugt i64 2, %"$gasrem_4850"
  br i1 %"$gascmp_4851", label %"$out_of_gas_4852", label %"$have_gas_4853"

"$out_of_gas_4852":                               ; preds = %"$have_gas_4848"
  call void @_out_of_gas()
  br label %"$have_gas_4853"

"$have_gas_4853":                                 ; preds = %"$out_of_gas_4852", %"$have_gas_4848"
  %"$consume_4854" = sub i64 %"$gasrem_4850", 2
  store i64 %"$consume_4854", i64* @_gasrem, align 8
  %"$found_4856" = load %TName_Bool*, %TName_Bool** %found, align 8
  %"$found_tag_4857" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$found_4856", i32 0, i32 0
  %"$found_tag_4858" = load i8, i8* %"$found_tag_4857", align 1
  switch i8 %"$found_tag_4858", label %"$empty_default_4859" [
    i8 0, label %"$True_4860"
    i8 1, label %"$False_4862"
  ], !dbg !1036

"$True_4860":                                     ; preds = %"$have_gas_4853"
  %"$found_4861" = bitcast %TName_Bool* %"$found_4856" to %CName_True*
  br label %"$matchsucc_4855"

"$False_4862":                                    ; preds = %"$have_gas_4853"
  %"$found_4863" = bitcast %TName_Bool* %"$found_4856" to %CName_False*
  %"$gasrem_4864" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4865" = icmp ugt i64 1, %"$gasrem_4864"
  br i1 %"$gascmp_4865", label %"$out_of_gas_4866", label %"$have_gas_4867"

"$out_of_gas_4866":                               ; preds = %"$False_4862"
  call void @_out_of_gas()
  br label %"$have_gas_4867"

"$have_gas_4867":                                 ; preds = %"$out_of_gas_4866", %"$False_4862"
  %"$consume_4868" = sub i64 %"$gasrem_4864", 1
  store i64 %"$consume_4868", i64* @_gasrem, align 8
  %"$fail__origin_4869" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_4869", align 1
  %"$fail__sender_4870" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_4870", align 1
  %"$tname_4871" = load %String, %String* %tname, align 8
  call void @"$fail_254"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_4869", [20 x i8]* %"$fail__sender_4870", %String %"$tname_4871"), !dbg !1037
  br label %"$matchsucc_4855"

"$empty_default_4859":                            ; preds = %"$have_gas_4853"
  br label %"$matchsucc_4855"

"$matchsucc_4855":                                ; preds = %"$have_gas_4867", %"$True_4860", %"$empty_default_4859"
  %"$gasrem_4872" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4873" = icmp ugt i64 1, %"$gasrem_4872"
  br i1 %"$gascmp_4873", label %"$out_of_gas_4874", label %"$have_gas_4875"

"$out_of_gas_4874":                               ; preds = %"$matchsucc_4855"
  call void @_out_of_gas()
  br label %"$have_gas_4875"

"$have_gas_4875":                                 ; preds = %"$out_of_gas_4874", %"$matchsucc_4855"
  %"$consume_4876" = sub i64 %"$gasrem_4872", 1
  store i64 %"$consume_4876", i64* @_gasrem, align 8
  %"$indices_buf_4877_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4877_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4877_salloc_load", i64 16)
  %"$indices_buf_4877_salloc" = bitcast i8* %"$indices_buf_4877_salloc_salloc" to [16 x i8]*
  %"$indices_buf_4877" = bitcast [16 x i8]* %"$indices_buf_4877_salloc" to i8*
  %"$key_4878" = load %String, %String* %key, align 8
  %"$indices_gep_4879" = getelementptr i8, i8* %"$indices_buf_4877", i32 0
  %indices_cast1 = bitcast i8* %"$indices_gep_4879" to %String*
  store %String %"$key_4878", %String* %indices_cast1, align 8
  %"$execptr_load_4880" = load i8*, i8** @_execptr, align 8
  call void @_update_field(i8* %"$execptr_load_4880", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_4881", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_77", i32 1, i8* %"$indices_buf_4877", i8* null), !dbg !1040
  ret void
}

define void @t17(i8* %0) !dbg !1041 {
entry:
  %"$_amount_4886" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4887" = bitcast i8* %"$_amount_4886" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4887", align 8
  %"$_origin_4888" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4889" = bitcast i8* %"$_origin_4888" to [20 x i8]*
  %"$_sender_4890" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4891" = bitcast i8* %"$_sender_4890" to [20 x i8]*
  call void @"$t17_4808"(%Uint128 %_amount, [20 x i8]* %"$_origin_4889", [20 x i8]* %"$_sender_4891"), !dbg !1042
  ret void
}

define internal void @"$t18_4892"(%Uint128 %_amount, [20 x i8]* %"$_origin_4893", [20 x i8]* %"$_sender_4894") !dbg !1043 {
entry:
  %"$_sender_4958" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_4894", [20 x i8]** %"$_sender_4958", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_4958", metadata !1044, metadata !DIExpression()), !dbg !1045
  %"$_origin_4957" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_4893", [20 x i8]** %"$_origin_4957", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_4957", metadata !1046, metadata !DIExpression()), !dbg !1045
  %"$_amount_4956" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_4956", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_4956", metadata !1047, metadata !DIExpression()), !dbg !1045
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_4893", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_4894", align 1
  %"$gasrem_4895" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4896" = icmp ugt i64 1, %"$gasrem_4895"
  br i1 %"$gascmp_4896", label %"$out_of_gas_4897", label %"$have_gas_4898"

"$out_of_gas_4897":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_4898"

"$have_gas_4898":                                 ; preds = %"$out_of_gas_4897", %entry
  %"$consume_4899" = sub i64 %"$gasrem_4895", 1
  store i64 %"$consume_4899", i64* @_gasrem, align 8
  %tname = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %tname, metadata !1048, metadata !DIExpression()), !dbg !1049
  %"$gasrem_4900" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4901" = icmp ugt i64 1, %"$gasrem_4900"
  br i1 %"$gascmp_4901", label %"$out_of_gas_4902", label %"$have_gas_4903"

"$out_of_gas_4902":                               ; preds = %"$have_gas_4898"
  call void @_out_of_gas()
  br label %"$have_gas_4903"

"$have_gas_4903":                                 ; preds = %"$out_of_gas_4902", %"$have_gas_4898"
  %"$consume_4904" = sub i64 %"$gasrem_4900", 1
  store i64 %"$consume_4904", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$stringlit_4905", i32 0, i32 0), i32 3 }, %String* %tname, align 8, !dbg !1050
  %"$gasrem_4906" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4907" = icmp ugt i64 1, %"$gasrem_4906"
  br i1 %"$gascmp_4907", label %"$out_of_gas_4908", label %"$have_gas_4909"

"$out_of_gas_4908":                               ; preds = %"$have_gas_4903"
  call void @_out_of_gas()
  br label %"$have_gas_4909"

"$have_gas_4909":                                 ; preds = %"$out_of_gas_4908", %"$have_gas_4903"
  %"$consume_4910" = sub i64 %"$gasrem_4906", 1
  store i64 %"$consume_4910", i64* @_gasrem, align 8
  %key = alloca %String, align 8
  call void @llvm.dbg.declare(metadata %String* %key, metadata !1051, metadata !DIExpression()), !dbg !1052
  %"$gasrem_4911" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4912" = icmp ugt i64 1, %"$gasrem_4911"
  br i1 %"$gascmp_4912", label %"$out_of_gas_4913", label %"$have_gas_4914"

"$out_of_gas_4913":                               ; preds = %"$have_gas_4909"
  call void @_out_of_gas()
  br label %"$have_gas_4914"

"$have_gas_4914":                                 ; preds = %"$out_of_gas_4913", %"$have_gas_4909"
  %"$consume_4915" = sub i64 %"$gasrem_4911", 1
  store i64 %"$consume_4915", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_4916", i32 0, i32 0), i32 0 }, %String* %key, align 8, !dbg !1053
  %found = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %found, metadata !1054, metadata !DIExpression()), !dbg !1055
  %"$indices_buf_4917_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$indices_buf_4917_salloc_salloc" = call i8* @_salloc(i8* %"$indices_buf_4917_salloc_load", i64 16)
  %"$indices_buf_4917_salloc" = bitcast i8* %"$indices_buf_4917_salloc_salloc" to [16 x i8]*
  %"$indices_buf_4917" = bitcast [16 x i8]* %"$indices_buf_4917_salloc" to i8*
  %"$key_4918" = load %String, %String* %key, align 8
  %"$indices_gep_4919" = getelementptr i8, i8* %"$indices_buf_4917", i32 0
  %indices_cast = bitcast i8* %"$indices_gep_4919" to %String*
  store %String %"$key_4918", %String* %indices_cast, align 8
  %"$execptr_load_4921" = load i8*, i8** @_execptr, align 8
  %"$found_call_4922" = call i8* @_fetch_field(i8* %"$execptr_load_4921", i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$f_m1_4920", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Map_77", i32 1, i8* %"$indices_buf_4917", i32 0), !dbg !1055
  %"$found_4923" = bitcast i8* %"$found_call_4922" to %TName_Bool*
  store %TName_Bool* %"$found_4923", %TName_Bool** %found, align 8
  %"$found_4924" = load %TName_Bool*, %TName_Bool** %found, align 8
  %"$$found_4924_4925" = bitcast %TName_Bool* %"$found_4924" to i8*
  %"$_literal_cost_call_4926" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_73", i8* %"$$found_4924_4925")
  %"$gasadd_4927" = add i64 %"$_literal_cost_call_4926", 0
  %"$gasadd_4928" = add i64 %"$gasadd_4927", 1
  %"$gasrem_4929" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4930" = icmp ugt i64 %"$gasadd_4928", %"$gasrem_4929"
  br i1 %"$gascmp_4930", label %"$out_of_gas_4931", label %"$have_gas_4932"

"$out_of_gas_4931":                               ; preds = %"$have_gas_4914"
  call void @_out_of_gas()
  br label %"$have_gas_4932"

"$have_gas_4932":                                 ; preds = %"$out_of_gas_4931", %"$have_gas_4914"
  %"$consume_4933" = sub i64 %"$gasrem_4929", %"$gasadd_4928"
  store i64 %"$consume_4933", i64* @_gasrem, align 8
  %"$gasrem_4934" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4935" = icmp ugt i64 2, %"$gasrem_4934"
  br i1 %"$gascmp_4935", label %"$out_of_gas_4936", label %"$have_gas_4937"

"$out_of_gas_4936":                               ; preds = %"$have_gas_4932"
  call void @_out_of_gas()
  br label %"$have_gas_4937"

"$have_gas_4937":                                 ; preds = %"$out_of_gas_4936", %"$have_gas_4932"
  %"$consume_4938" = sub i64 %"$gasrem_4934", 2
  store i64 %"$consume_4938", i64* @_gasrem, align 8
  %"$found_4940" = load %TName_Bool*, %TName_Bool** %found, align 8
  %"$found_tag_4941" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$found_4940", i32 0, i32 0
  %"$found_tag_4942" = load i8, i8* %"$found_tag_4941", align 1
  switch i8 %"$found_tag_4942", label %"$empty_default_4943" [
    i8 0, label %"$True_4944"
    i8 1, label %"$False_4954"
  ], !dbg !1056

"$True_4944":                                     ; preds = %"$have_gas_4937"
  %"$found_4945" = bitcast %TName_Bool* %"$found_4940" to %CName_True*
  %"$gasrem_4946" = load i64, i64* @_gasrem, align 8
  %"$gascmp_4947" = icmp ugt i64 1, %"$gasrem_4946"
  br i1 %"$gascmp_4947", label %"$out_of_gas_4948", label %"$have_gas_4949"

"$out_of_gas_4948":                               ; preds = %"$True_4944"
  call void @_out_of_gas()
  br label %"$have_gas_4949"

"$have_gas_4949":                                 ; preds = %"$out_of_gas_4948", %"$True_4944"
  %"$consume_4950" = sub i64 %"$gasrem_4946", 1
  store i64 %"$consume_4950", i64* @_gasrem, align 8
  %"$fail__origin_4951" = alloca [20 x i8], align 1
  store [20 x i8] %_origin, [20 x i8]* %"$fail__origin_4951", align 1
  %"$fail__sender_4952" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$fail__sender_4952", align 1
  %"$tname_4953" = load %String, %String* %tname, align 8
  call void @"$fail_254"(%Uint128 %_amount, [20 x i8]* %"$fail__origin_4951", [20 x i8]* %"$fail__sender_4952", %String %"$tname_4953"), !dbg !1057
  br label %"$matchsucc_4939"

"$False_4954":                                    ; preds = %"$have_gas_4937"
  %"$found_4955" = bitcast %TName_Bool* %"$found_4940" to %CName_False*
  br label %"$matchsucc_4939"

"$empty_default_4943":                            ; preds = %"$have_gas_4937"
  br label %"$matchsucc_4939"

"$matchsucc_4939":                                ; preds = %"$False_4954", %"$have_gas_4949", %"$empty_default_4943"
  ret void
}

define void @t18(i8* %0) !dbg !1060 {
entry:
  %"$_amount_4960" = getelementptr i8, i8* %0, i32 0
  %"$_amount_4961" = bitcast i8* %"$_amount_4960" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_4961", align 8
  %"$_origin_4962" = getelementptr i8, i8* %0, i32 16
  %"$_origin_4963" = bitcast i8* %"$_origin_4962" to [20 x i8]*
  %"$_sender_4964" = getelementptr i8, i8* %0, i32 36
  %"$_sender_4965" = bitcast i8* %"$_sender_4964" to [20 x i8]*
  call void @"$t18_4892"(%Uint128 %_amount, [20 x i8]* %"$_origin_4963", [20 x i8]* %"$_sender_4965"), !dbg !1061
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "map_corners_test.scilla", directory: "codegen/contr")
!3 = distinct !DISubprogram(name: "$fundef_27", linkageName: "$fundef_27", scope: !4, file: !4, line: 8, type: !5, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!4 = !DIFile(filename: "BoolUtils.scillib", directory: "../src/stdlib")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !{}
!9 = !DILocalVariable(name: "c", scope: !3, file: !4, line: 7, type: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !11, size: 8, align: 8, dwarfAddressSpace: 0)
!11 = !DIBasicType(name: "Bool", size: 8)
!12 = !DILocation(line: 7, column: 8, scope: !3)
!13 = !DILocalVariable(name: "$retval_28", scope: !3, file: !4, line: 8, type: !10)
!14 = !DILocation(line: 8, column: 5, scope: !3)
!15 = !DILocation(line: 9, column: 16, scope: !16)
!16 = distinct !DILexicalBlock(scope: !17, file: !4, line: 9, column: 7)
!17 = distinct !DILexicalBlock(scope: !3, file: !4, line: 8, column: 5)
!18 = !DILocation(line: 10, column: 16, scope: !19)
!19 = distinct !DILexicalBlock(scope: !17, file: !4, line: 10, column: 7)
!20 = distinct !DISubprogram(name: "$fundef_25", linkageName: "$fundef_25", scope: !4, file: !4, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!21 = !DILocalVariable(name: "b", scope: !20, file: !4, line: 6, type: !10)
!22 = !DILocation(line: 6, column: 8, scope: !20)
!23 = !DILocation(line: 8, column: 5, scope: !20)
!24 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !25, file: !25, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!25 = !DIFile(filename: ".", directory: ".")
!26 = !DILocation(line: 0, scope: !24)
!27 = !DILocation(line: 7, column: 3, scope: !24)
!28 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !25, file: !25, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!29 = !DILocalVariable(name: "$f_s1_29", scope: !28, file: !2, line: 11, type: !30)
!30 = !DIBasicType(name: "String", size: 16)
!31 = !DILocation(line: 11, column: 7, scope: !28)
!32 = !DILocation(line: 11, column: 27, scope: !28)
!33 = !DILocalVariable(name: "$f_m1_30", scope: !28, file: !2, line: 12, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Map (String) (String)", baseType: !35, size: 8, align: 8, dwarfAddressSpace: 0)
!35 = !DIBasicType(name: "Map (String) (String)", size: 8)
!36 = !DILocation(line: 12, column: 7, scope: !28)
!37 = !DILocation(line: 12, column: 34, scope: !28)
!38 = !DILocalVariable(name: "$f_m2_31", scope: !28, file: !2, line: 13, type: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Map (String) (Map (String) (String))", baseType: !40, size: 8, align: 8, dwarfAddressSpace: 0)
!40 = !DIBasicType(name: "Map (String) (Map (String) (String))", size: 8)
!41 = !DILocation(line: 13, column: 7, scope: !28)
!42 = !DILocation(line: 13, column: 47, scope: !28)
!43 = !DILocalVariable(name: "$f_m3_32", scope: !28, file: !2, line: 14, type: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Map (String) (Map (String) (Map (String) (String)))", baseType: !45, size: 8, align: 8, dwarfAddressSpace: 0)
!45 = !DIBasicType(name: "Map (String) (Map (String) (Map (String) (String)))", size: 8)
!46 = !DILocation(line: 14, column: 7, scope: !28)
!47 = !DILocation(line: 14, column: 60, scope: !28)
!48 = !DILocalVariable(name: "$f_m_33", scope: !28, file: !2, line: 15, type: !39)
!49 = !DILocation(line: 15, column: 7, scope: !28)
!50 = !DILocation(line: 15, column: 46, scope: !28)
!51 = distinct !DISubprogram(name: "fail", linkageName: "fail", scope: !2, file: !2, line: 17, type: !5, scopeLine: 17, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!52 = !DILocalVariable(name: "tname", scope: !51, file: !2, line: 17, type: !30)
!53 = !DILocation(line: 17, column: 17, scope: !51)
!54 = !DILocalVariable(name: "_sender", scope: !51, file: !2, line: 17, type: !55)
!55 = !DIBasicType(name: "ByStr20 with end", size: 20)
!56 = !DILocation(line: 17, column: 11, scope: !51)
!57 = !DILocalVariable(name: "_origin", scope: !51, file: !2, line: 17, type: !55)
!58 = !DILocalVariable(name: "_amount", scope: !51, file: !2, line: 17, type: !59)
!59 = !DIBasicType(name: "Uint128", size: 16)
!60 = !DILocalVariable(name: "e", scope: !51, file: !2, line: 18, type: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Exception", baseType: !62, size: 8, align: 8, dwarfAddressSpace: 0)
!62 = !DIBasicType(name: "Exception", size: 8)
!63 = !DILocation(line: 18, column: 3, scope: !51)
!64 = !DILocation(line: 18, column: 7, scope: !51)
!65 = !DILocation(line: 19, column: 3, scope: !51)
!66 = distinct !DISubprogram(name: "fail_msg", linkageName: "fail_msg", scope: !2, file: !2, line: 22, type: !5, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!67 = !DILocalVariable(name: "msg", scope: !66, file: !2, line: 22, type: !30)
!68 = !DILocation(line: 22, column: 37, scope: !66)
!69 = !DILocalVariable(name: "tname", scope: !66, file: !2, line: 22, type: !30)
!70 = !DILocation(line: 22, column: 21, scope: !66)
!71 = !DILocalVariable(name: "_sender", scope: !66, file: !2, line: 22, type: !55)
!72 = !DILocation(line: 22, column: 11, scope: !66)
!73 = !DILocalVariable(name: "_origin", scope: !66, file: !2, line: 22, type: !55)
!74 = !DILocalVariable(name: "_amount", scope: !66, file: !2, line: 22, type: !59)
!75 = !DILocalVariable(name: "e", scope: !66, file: !2, line: 23, type: !61)
!76 = !DILocation(line: 23, column: 3, scope: !66)
!77 = !DILocation(line: 23, column: 7, scope: !66)
!78 = !DILocation(line: 24, column: 3, scope: !66)
!79 = distinct !DISubprogram(name: "t1", linkageName: "t1", scope: !2, file: !2, line: 28, type: !5, scopeLine: 28, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!80 = !DILocalVariable(name: "_sender", scope: !79, file: !2, line: 28, type: !55)
!81 = !DILocation(line: 28, column: 12, scope: !79)
!82 = !DILocalVariable(name: "_origin", scope: !79, file: !2, line: 28, type: !55)
!83 = !DILocalVariable(name: "_amount", scope: !79, file: !2, line: 28, type: !59)
!84 = !DILocalVariable(name: "tname", scope: !79, file: !2, line: 30, type: !30)
!85 = !DILocation(line: 30, column: 3, scope: !79)
!86 = !DILocation(line: 30, column: 14, scope: !79)
!87 = !DILocalVariable(name: "f", scope: !79, file: !2, line: 31, type: !30)
!88 = !DILocation(line: 31, column: 3, scope: !79)
!89 = !DILocalVariable(name: "s", scope: !79, file: !2, line: 32, type: !30)
!90 = !DILocation(line: 32, column: 3, scope: !79)
!91 = !DILocation(line: 32, column: 11, scope: !79)
!92 = !DILocalVariable(name: "t", scope: !79, file: !2, line: 33, type: !10)
!93 = !DILocation(line: 33, column: 3, scope: !79)
!94 = !DILocation(line: 33, column: 7, scope: !79)
!95 = !DILocation(line: 34, column: 3, scope: !79)
!96 = !DILocation(line: 36, column: 5, scope: !97)
!97 = distinct !DILexicalBlock(scope: !98, file: !2, line: 35, column: 5)
!98 = distinct !DILexicalBlock(scope: !79, file: !2, line: 34, column: 3)
!99 = !DILocalVariable(name: "s2", scope: !79, file: !2, line: 41, type: !30)
!100 = !DILocation(line: 41, column: 3, scope: !79)
!101 = !DILocation(line: 41, column: 12, scope: !79)
!102 = !DILocation(line: 42, column: 3, scope: !79)
!103 = distinct !DISubprogram(name: "t1", linkageName: "t1", scope: !2, file: !2, line: 28, type: !5, scopeLine: 28, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!104 = !DILocation(line: 28, column: 12, scope: !103)
!105 = distinct !DISubprogram(name: "t2", linkageName: "t2", scope: !2, file: !2, line: 46, type: !5, scopeLine: 46, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!106 = !DILocalVariable(name: "_sender", scope: !105, file: !2, line: 46, type: !55)
!107 = !DILocation(line: 46, column: 12, scope: !105)
!108 = !DILocalVariable(name: "_origin", scope: !105, file: !2, line: 46, type: !55)
!109 = !DILocalVariable(name: "_amount", scope: !105, file: !2, line: 46, type: !59)
!110 = !DILocalVariable(name: "tname", scope: !105, file: !2, line: 48, type: !30)
!111 = !DILocation(line: 48, column: 3, scope: !105)
!112 = !DILocation(line: 48, column: 14, scope: !105)
!113 = !DILocalVariable(name: "f", scope: !105, file: !2, line: 49, type: !30)
!114 = !DILocation(line: 49, column: 3, scope: !105)
!115 = !DILocalVariable(name: "s", scope: !105, file: !2, line: 50, type: !30)
!116 = !DILocation(line: 50, column: 3, scope: !105)
!117 = !DILocation(line: 50, column: 11, scope: !105)
!118 = !DILocalVariable(name: "t", scope: !105, file: !2, line: 51, type: !10)
!119 = !DILocation(line: 51, column: 3, scope: !105)
!120 = !DILocation(line: 51, column: 7, scope: !105)
!121 = !DILocation(line: 52, column: 3, scope: !105)
!122 = !DILocation(line: 54, column: 5, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !2, line: 53, column: 5)
!124 = distinct !DILexicalBlock(scope: !105, file: !2, line: 52, column: 3)
!125 = !DILocalVariable(name: "key1", scope: !105, file: !2, line: 59, type: !30)
!126 = !DILocation(line: 59, column: 3, scope: !105)
!127 = !DILocation(line: 59, column: 15, scope: !105)
!128 = !DILocalVariable(name: "val1", scope: !105, file: !2, line: 60, type: !30)
!129 = !DILocation(line: 60, column: 3, scope: !105)
!130 = !DILocation(line: 60, column: 14, scope: !105)
!131 = !DILocation(line: 61, column: 3, scope: !105)
!132 = distinct !DISubprogram(name: "t2", linkageName: "t2", scope: !2, file: !2, line: 46, type: !5, scopeLine: 46, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!133 = !DILocation(line: 46, column: 12, scope: !132)
!134 = distinct !DISubprogram(name: "t3", linkageName: "t3", scope: !2, file: !2, line: 65, type: !5, scopeLine: 65, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!135 = !DILocalVariable(name: "_sender", scope: !134, file: !2, line: 65, type: !55)
!136 = !DILocation(line: 65, column: 12, scope: !134)
!137 = !DILocalVariable(name: "_origin", scope: !134, file: !2, line: 65, type: !55)
!138 = !DILocalVariable(name: "_amount", scope: !134, file: !2, line: 65, type: !59)
!139 = !DILocalVariable(name: "tname", scope: !134, file: !2, line: 66, type: !30)
!140 = !DILocation(line: 66, column: 3, scope: !134)
!141 = !DILocation(line: 66, column: 14, scope: !134)
!142 = !DILocalVariable(name: "s", scope: !134, file: !2, line: 67, type: !30)
!143 = !DILocation(line: 67, column: 3, scope: !134)
!144 = !DILocation(line: 67, column: 11, scope: !134)
!145 = !DILocalVariable(name: "key1", scope: !134, file: !2, line: 69, type: !30)
!146 = !DILocation(line: 69, column: 3, scope: !134)
!147 = !DILocation(line: 69, column: 15, scope: !134)
!148 = !DILocalVariable(name: "val1", scope: !134, file: !2, line: 70, type: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (String)", baseType: !150, size: 8, align: 8, dwarfAddressSpace: 0)
!150 = !DIBasicType(name: "Option (String)", size: 8)
!151 = !DILocation(line: 70, column: 3, scope: !134)
!152 = !DILocation(line: 71, column: 3, scope: !134)
!153 = !DILocalVariable(name: "t", scope: !154, file: !2, line: 73, type: !10)
!154 = distinct !DILexicalBlock(scope: !155, file: !2, line: 72, column: 5)
!155 = distinct !DILexicalBlock(scope: !134, file: !2, line: 71, column: 3)
!156 = !DILocation(line: 73, column: 5, scope: !154)
!157 = !DILocation(line: 73, column: 9, scope: !154)
!158 = !DILocation(line: 74, column: 5, scope: !154)
!159 = !DILocalVariable(name: "m", scope: !160, file: !2, line: 76, type: !30)
!160 = distinct !DILexicalBlock(scope: !161, file: !2, line: 75, column: 7)
!161 = distinct !DILexicalBlock(scope: !154, file: !2, line: 74, column: 5)
!162 = !DILocation(line: 76, column: 7, scope: !160)
!163 = !DILocation(line: 76, column: 35, scope: !160)
!164 = !DILocation(line: 77, column: 7, scope: !160)
!165 = !DILocation(line: 81, column: 5, scope: !166)
!166 = distinct !DILexicalBlock(scope: !155, file: !2, line: 80, column: 5)
!167 = !DILocalVariable(name: "key2", scope: !134, file: !2, line: 85, type: !30)
!168 = !DILocation(line: 85, column: 3, scope: !134)
!169 = !DILocation(line: 85, column: 15, scope: !134)
!170 = !DILocalVariable(name: "val2", scope: !134, file: !2, line: 86, type: !149)
!171 = !DILocation(line: 86, column: 3, scope: !134)
!172 = !DILocation(line: 87, column: 3, scope: !134)
!173 = !DILocalVariable(name: "m", scope: !174, file: !2, line: 89, type: !30)
!174 = distinct !DILexicalBlock(scope: !175, file: !2, line: 88, column: 5)
!175 = distinct !DILexicalBlock(scope: !134, file: !2, line: 87, column: 3)
!176 = !DILocation(line: 89, column: 5, scope: !174)
!177 = !DILocation(line: 89, column: 35, scope: !174)
!178 = !DILocation(line: 90, column: 5, scope: !174)
!179 = !DILocation(line: 95, column: 3, scope: !134)
!180 = distinct !DISubprogram(name: "t3", linkageName: "t3", scope: !2, file: !2, line: 65, type: !5, scopeLine: 65, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!181 = !DILocation(line: 65, column: 12, scope: !180)
!182 = distinct !DISubprogram(name: "t4", linkageName: "t4", scope: !2, file: !2, line: 99, type: !5, scopeLine: 99, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!183 = !DILocalVariable(name: "_sender", scope: !182, file: !2, line: 99, type: !55)
!184 = !DILocation(line: 99, column: 12, scope: !182)
!185 = !DILocalVariable(name: "_origin", scope: !182, file: !2, line: 99, type: !55)
!186 = !DILocalVariable(name: "_amount", scope: !182, file: !2, line: 99, type: !59)
!187 = !DILocalVariable(name: "tname", scope: !182, file: !2, line: 100, type: !30)
!188 = !DILocation(line: 100, column: 3, scope: !182)
!189 = !DILocation(line: 100, column: 14, scope: !182)
!190 = !DILocalVariable(name: "key1", scope: !182, file: !2, line: 103, type: !30)
!191 = !DILocation(line: 103, column: 3, scope: !182)
!192 = !DILocation(line: 103, column: 15, scope: !182)
!193 = !DILocalVariable(name: "key1_found", scope: !182, file: !2, line: 104, type: !10)
!194 = !DILocation(line: 104, column: 3, scope: !182)
!195 = !DILocation(line: 105, column: 3, scope: !182)
!196 = !DILocation(line: 107, column: 5, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !2, line: 106, column: 5)
!198 = distinct !DILexicalBlock(scope: !182, file: !2, line: 105, column: 3)
!199 = !DILocalVariable(name: "key1a", scope: !182, file: !2, line: 112, type: !30)
!200 = !DILocation(line: 112, column: 3, scope: !182)
!201 = !DILocation(line: 112, column: 17, scope: !182)
!202 = !DILocalVariable(name: "key2a", scope: !182, file: !2, line: 113, type: !30)
!203 = !DILocation(line: 113, column: 3, scope: !182)
!204 = !DILocation(line: 113, column: 17, scope: !182)
!205 = !DILocalVariable(name: "s", scope: !182, file: !2, line: 114, type: !30)
!206 = !DILocation(line: 114, column: 3, scope: !182)
!207 = !DILocation(line: 114, column: 11, scope: !182)
!208 = !DILocation(line: 115, column: 3, scope: !182)
!209 = distinct !DISubprogram(name: "t4", linkageName: "t4", scope: !2, file: !2, line: 99, type: !5, scopeLine: 99, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!210 = !DILocation(line: 99, column: 12, scope: !209)
!211 = distinct !DISubprogram(name: "t5", linkageName: "t5", scope: !2, file: !2, line: 119, type: !5, scopeLine: 119, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!212 = !DILocalVariable(name: "_sender", scope: !211, file: !2, line: 119, type: !55)
!213 = !DILocation(line: 119, column: 12, scope: !211)
!214 = !DILocalVariable(name: "_origin", scope: !211, file: !2, line: 119, type: !55)
!215 = !DILocalVariable(name: "_amount", scope: !211, file: !2, line: 119, type: !59)
!216 = !DILocalVariable(name: "tname", scope: !211, file: !2, line: 120, type: !30)
!217 = !DILocation(line: 120, column: 3, scope: !211)
!218 = !DILocation(line: 120, column: 14, scope: !211)
!219 = !DILocalVariable(name: "s", scope: !211, file: !2, line: 121, type: !30)
!220 = !DILocation(line: 121, column: 3, scope: !211)
!221 = !DILocation(line: 121, column: 11, scope: !211)
!222 = !DILocalVariable(name: "key1a", scope: !211, file: !2, line: 124, type: !30)
!223 = !DILocation(line: 124, column: 3, scope: !211)
!224 = !DILocation(line: 124, column: 17, scope: !211)
!225 = !DILocalVariable(name: "key2a", scope: !211, file: !2, line: 125, type: !30)
!226 = !DILocation(line: 125, column: 3, scope: !211)
!227 = !DILocation(line: 125, column: 17, scope: !211)
!228 = !DILocalVariable(name: "val", scope: !211, file: !2, line: 126, type: !149)
!229 = !DILocation(line: 126, column: 3, scope: !211)
!230 = !DILocation(line: 127, column: 3, scope: !211)
!231 = !DILocalVariable(name: "t", scope: !232, file: !2, line: 129, type: !10)
!232 = distinct !DILexicalBlock(scope: !233, file: !2, line: 128, column: 5)
!233 = distinct !DILexicalBlock(scope: !211, file: !2, line: 127, column: 3)
!234 = !DILocation(line: 129, column: 5, scope: !232)
!235 = !DILocation(line: 129, column: 9, scope: !232)
!236 = !DILocation(line: 130, column: 5, scope: !232)
!237 = !DILocalVariable(name: "m", scope: !238, file: !2, line: 133, type: !30)
!238 = distinct !DILexicalBlock(scope: !239, file: !2, line: 132, column: 7)
!239 = distinct !DILexicalBlock(scope: !232, file: !2, line: 130, column: 5)
!240 = !DILocation(line: 133, column: 7, scope: !238)
!241 = !DILocation(line: 133, column: 35, scope: !238)
!242 = !DILocation(line: 134, column: 7, scope: !238)
!243 = !DILocation(line: 137, column: 5, scope: !244)
!244 = distinct !DILexicalBlock(scope: !233, file: !2, line: 136, column: 5)
!245 = !DILocalVariable(name: "l_m2", scope: !211, file: !2, line: 141, type: !34)
!246 = !DILocation(line: 141, column: 3, scope: !211)
!247 = !DILocalVariable(name: "e", scope: !211, file: !2, line: 142, type: !34)
!248 = !DILocation(line: 142, column: 9, scope: !211)
!249 = !DILocation(line: 142, column: 13, scope: !211)
!250 = !DILocalVariable(name: "key2b", scope: !211, file: !2, line: 143, type: !30)
!251 = !DILocation(line: 143, column: 9, scope: !211)
!252 = !DILocation(line: 143, column: 23, scope: !211)
!253 = !DILocalVariable(name: "s1", scope: !211, file: !2, line: 144, type: !30)
!254 = !DILocation(line: 144, column: 9, scope: !211)
!255 = !DILocation(line: 144, column: 18, scope: !211)
!256 = !DILocalVariable(name: "m1", scope: !211, file: !2, line: 145, type: !34)
!257 = !DILocation(line: 145, column: 9, scope: !211)
!258 = !DILocation(line: 145, column: 14, scope: !211)
!259 = !DILocalVariable(name: "key2c", scope: !211, file: !2, line: 146, type: !30)
!260 = !DILocation(line: 146, column: 9, scope: !211)
!261 = !DILocation(line: 146, column: 23, scope: !211)
!262 = !DILocalVariable(name: "s2", scope: !211, file: !2, line: 147, type: !30)
!263 = !DILocation(line: 147, column: 9, scope: !211)
!264 = !DILocation(line: 147, column: 18, scope: !211)
!265 = !DILocation(line: 148, column: 5, scope: !211)
!266 = !DILocalVariable(name: "key1b", scope: !211, file: !2, line: 149, type: !30)
!267 = !DILocation(line: 149, column: 3, scope: !211)
!268 = !DILocation(line: 149, column: 17, scope: !211)
!269 = !DILocation(line: 150, column: 3, scope: !211)
!270 = distinct !DISubprogram(name: "t5", linkageName: "t5", scope: !2, file: !2, line: 119, type: !5, scopeLine: 119, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!271 = !DILocation(line: 119, column: 12, scope: !270)
!272 = distinct !DISubprogram(name: "t6", linkageName: "t6", scope: !2, file: !2, line: 155, type: !5, scopeLine: 155, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!273 = !DILocalVariable(name: "_sender", scope: !272, file: !2, line: 155, type: !55)
!274 = !DILocation(line: 155, column: 12, scope: !272)
!275 = !DILocalVariable(name: "_origin", scope: !272, file: !2, line: 155, type: !55)
!276 = !DILocalVariable(name: "_amount", scope: !272, file: !2, line: 155, type: !59)
!277 = !DILocalVariable(name: "tname", scope: !272, file: !2, line: 156, type: !30)
!278 = !DILocation(line: 156, column: 3, scope: !272)
!279 = !DILocation(line: 156, column: 14, scope: !272)
!280 = !DILocalVariable(name: "key1a", scope: !272, file: !2, line: 162, type: !30)
!281 = !DILocation(line: 162, column: 3, scope: !272)
!282 = !DILocation(line: 162, column: 17, scope: !272)
!283 = !DILocalVariable(name: "key2a", scope: !272, file: !2, line: 162, type: !30)
!284 = !DILocation(line: 162, column: 20, scope: !272)
!285 = !DILocation(line: 162, column: 34, scope: !272)
!286 = !DILocalVariable(name: "c1", scope: !272, file: !2, line: 163, type: !149)
!287 = !DILocation(line: 163, column: 3, scope: !272)
!288 = !DILocation(line: 164, column: 3, scope: !272)
!289 = !DILocalVariable(name: "v", scope: !290, file: !2, line: 166, type: !30)
!290 = distinct !DILexicalBlock(scope: !291, file: !2, line: 165, column: 5)
!291 = distinct !DILexicalBlock(scope: !272, file: !2, line: 164, column: 3)
!292 = !DILocation(line: 166, column: 5, scope: !290)
!293 = !DILocation(line: 166, column: 13, scope: !290)
!294 = !DILocalVariable(name: "eq", scope: !290, file: !2, line: 167, type: !10)
!295 = !DILocation(line: 167, column: 5, scope: !290)
!296 = !DILocation(line: 167, column: 10, scope: !290)
!297 = !DILocation(line: 168, column: 5, scope: !290)
!298 = !DILocalVariable(name: "m", scope: !299, file: !2, line: 171, type: !30)
!299 = distinct !DILexicalBlock(scope: !300, file: !2, line: 170, column: 7)
!300 = distinct !DILexicalBlock(scope: !290, file: !2, line: 168, column: 5)
!301 = !DILocation(line: 171, column: 7, scope: !299)
!302 = !DILocation(line: 171, column: 43, scope: !299)
!303 = !DILocation(line: 172, column: 7, scope: !299)
!304 = !DILocalVariable(name: "m", scope: !305, file: !2, line: 175, type: !30)
!305 = distinct !DILexicalBlock(scope: !291, file: !2, line: 174, column: 5)
!306 = !DILocation(line: 175, column: 5, scope: !305)
!307 = !DILocation(line: 175, column: 31, scope: !305)
!308 = !DILocation(line: 176, column: 5, scope: !305)
!309 = !DILocalVariable(name: "key1b", scope: !272, file: !2, line: 179, type: !30)
!310 = !DILocation(line: 179, column: 3, scope: !272)
!311 = !DILocation(line: 179, column: 17, scope: !272)
!312 = !DILocalVariable(name: "key2b", scope: !272, file: !2, line: 179, type: !30)
!313 = !DILocation(line: 179, column: 20, scope: !272)
!314 = !DILocation(line: 179, column: 34, scope: !272)
!315 = !DILocalVariable(name: "$c1_2", scope: !272, file: !2, line: 180, type: !149)
!316 = !DILocation(line: 180, column: 3, scope: !272)
!317 = !DILocation(line: 181, column: 3, scope: !272)
!318 = !DILocalVariable(name: "v", scope: !319, file: !2, line: 183, type: !30)
!319 = distinct !DILexicalBlock(scope: !320, file: !2, line: 182, column: 5)
!320 = distinct !DILexicalBlock(scope: !272, file: !2, line: 181, column: 3)
!321 = !DILocation(line: 183, column: 5, scope: !319)
!322 = !DILocation(line: 183, column: 13, scope: !319)
!323 = !DILocalVariable(name: "eq", scope: !319, file: !2, line: 184, type: !10)
!324 = !DILocation(line: 184, column: 5, scope: !319)
!325 = !DILocation(line: 184, column: 10, scope: !319)
!326 = !DILocation(line: 185, column: 5, scope: !319)
!327 = !DILocalVariable(name: "m", scope: !328, file: !2, line: 188, type: !30)
!328 = distinct !DILexicalBlock(scope: !329, file: !2, line: 187, column: 7)
!329 = distinct !DILexicalBlock(scope: !319, file: !2, line: 185, column: 5)
!330 = !DILocation(line: 188, column: 7, scope: !328)
!331 = !DILocation(line: 188, column: 43, scope: !328)
!332 = !DILocation(line: 189, column: 7, scope: !328)
!333 = !DILocalVariable(name: "m", scope: !334, file: !2, line: 192, type: !30)
!334 = distinct !DILexicalBlock(scope: !320, file: !2, line: 191, column: 5)
!335 = !DILocation(line: 192, column: 5, scope: !334)
!336 = !DILocation(line: 192, column: 31, scope: !334)
!337 = !DILocation(line: 193, column: 5, scope: !334)
!338 = !DILocalVariable(name: "$key1b_3", scope: !272, file: !2, line: 196, type: !30)
!339 = !DILocation(line: 196, column: 3, scope: !272)
!340 = !DILocation(line: 196, column: 17, scope: !272)
!341 = !DILocalVariable(name: "key2c", scope: !272, file: !2, line: 196, type: !30)
!342 = !DILocation(line: 196, column: 20, scope: !272)
!343 = !DILocation(line: 196, column: 34, scope: !272)
!344 = !DILocalVariable(name: "$c1_4", scope: !272, file: !2, line: 197, type: !149)
!345 = !DILocation(line: 197, column: 3, scope: !272)
!346 = !DILocation(line: 198, column: 3, scope: !272)
!347 = !DILocalVariable(name: "v", scope: !348, file: !2, line: 200, type: !30)
!348 = distinct !DILexicalBlock(scope: !349, file: !2, line: 199, column: 5)
!349 = distinct !DILexicalBlock(scope: !272, file: !2, line: 198, column: 3)
!350 = !DILocation(line: 200, column: 5, scope: !348)
!351 = !DILocation(line: 200, column: 13, scope: !348)
!352 = !DILocalVariable(name: "eq", scope: !348, file: !2, line: 201, type: !10)
!353 = !DILocation(line: 201, column: 5, scope: !348)
!354 = !DILocation(line: 201, column: 10, scope: !348)
!355 = !DILocation(line: 202, column: 5, scope: !348)
!356 = !DILocalVariable(name: "m", scope: !357, file: !2, line: 205, type: !30)
!357 = distinct !DILexicalBlock(scope: !358, file: !2, line: 204, column: 7)
!358 = distinct !DILexicalBlock(scope: !348, file: !2, line: 202, column: 5)
!359 = !DILocation(line: 205, column: 7, scope: !357)
!360 = !DILocation(line: 205, column: 43, scope: !357)
!361 = !DILocation(line: 206, column: 7, scope: !357)
!362 = !DILocalVariable(name: "m", scope: !363, file: !2, line: 209, type: !30)
!363 = distinct !DILexicalBlock(scope: !349, file: !2, line: 208, column: 5)
!364 = !DILocation(line: 209, column: 5, scope: !363)
!365 = !DILocation(line: 209, column: 31, scope: !363)
!366 = !DILocation(line: 210, column: 5, scope: !363)
!367 = !DILocation(line: 214, column: 3, scope: !272)
!368 = distinct !DISubprogram(name: "t6", linkageName: "t6", scope: !2, file: !2, line: 155, type: !5, scopeLine: 155, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!369 = !DILocation(line: 155, column: 12, scope: !368)
!370 = distinct !DISubprogram(name: "t7", linkageName: "t7", scope: !2, file: !2, line: 219, type: !5, scopeLine: 219, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!371 = !DILocalVariable(name: "_sender", scope: !370, file: !2, line: 219, type: !55)
!372 = !DILocation(line: 219, column: 12, scope: !370)
!373 = !DILocalVariable(name: "_origin", scope: !370, file: !2, line: 219, type: !55)
!374 = !DILocalVariable(name: "_amount", scope: !370, file: !2, line: 219, type: !59)
!375 = !DILocalVariable(name: "tname", scope: !370, file: !2, line: 220, type: !30)
!376 = !DILocation(line: 220, column: 3, scope: !370)
!377 = !DILocation(line: 220, column: 14, scope: !370)
!378 = !DILocalVariable(name: "key1a", scope: !370, file: !2, line: 224, type: !30)
!379 = !DILocation(line: 224, column: 3, scope: !370)
!380 = !DILocation(line: 224, column: 17, scope: !370)
!381 = !DILocalVariable(name: "key2a", scope: !370, file: !2, line: 224, type: !30)
!382 = !DILocation(line: 224, column: 20, scope: !370)
!383 = !DILocation(line: 224, column: 34, scope: !370)
!384 = !DILocalVariable(name: "c1", scope: !370, file: !2, line: 225, type: !149)
!385 = !DILocation(line: 225, column: 3, scope: !370)
!386 = !DILocation(line: 226, column: 3, scope: !370)
!387 = !DILocalVariable(name: "v", scope: !388, file: !2, line: 228, type: !30)
!388 = distinct !DILexicalBlock(scope: !389, file: !2, line: 227, column: 5)
!389 = distinct !DILexicalBlock(scope: !370, file: !2, line: 226, column: 3)
!390 = !DILocation(line: 228, column: 5, scope: !388)
!391 = !DILocation(line: 228, column: 13, scope: !388)
!392 = !DILocalVariable(name: "eq", scope: !388, file: !2, line: 229, type: !10)
!393 = !DILocation(line: 229, column: 5, scope: !388)
!394 = !DILocation(line: 229, column: 10, scope: !388)
!395 = !DILocation(line: 230, column: 5, scope: !388)
!396 = !DILocalVariable(name: "m", scope: !397, file: !2, line: 233, type: !30)
!397 = distinct !DILexicalBlock(scope: !398, file: !2, line: 232, column: 7)
!398 = distinct !DILexicalBlock(scope: !388, file: !2, line: 230, column: 5)
!399 = !DILocation(line: 233, column: 7, scope: !397)
!400 = !DILocation(line: 233, column: 43, scope: !397)
!401 = !DILocation(line: 234, column: 7, scope: !397)
!402 = !DILocalVariable(name: "m", scope: !403, file: !2, line: 237, type: !30)
!403 = distinct !DILexicalBlock(scope: !389, file: !2, line: 236, column: 5)
!404 = !DILocation(line: 237, column: 5, scope: !403)
!405 = !DILocation(line: 237, column: 31, scope: !403)
!406 = !DILocation(line: 238, column: 5, scope: !403)
!407 = !DILocalVariable(name: "key1b", scope: !370, file: !2, line: 242, type: !30)
!408 = !DILocation(line: 242, column: 3, scope: !370)
!409 = !DILocation(line: 242, column: 17, scope: !370)
!410 = !DILocalVariable(name: "$c1_5", scope: !370, file: !2, line: 243, type: !411)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (Map (String) (String))", baseType: !412, size: 8, align: 8, dwarfAddressSpace: 0)
!412 = !DIBasicType(name: "Option (Map (String) (String))", size: 8)
!413 = !DILocation(line: 243, column: 3, scope: !370)
!414 = !DILocation(line: 244, column: 3, scope: !370)
!415 = !DILocalVariable(name: "m", scope: !416, file: !2, line: 246, type: !30)
!416 = distinct !DILexicalBlock(scope: !417, file: !2, line: 245, column: 5)
!417 = distinct !DILexicalBlock(scope: !370, file: !2, line: 244, column: 3)
!418 = !DILocation(line: 246, column: 7, scope: !416)
!419 = !DILocation(line: 246, column: 48, scope: !416)
!420 = !DILocation(line: 247, column: 7, scope: !416)
!421 = !DILocalVariable(name: "$key1b_6", scope: !370, file: !2, line: 252, type: !30)
!422 = !DILocation(line: 252, column: 3, scope: !370)
!423 = !DILocation(line: 252, column: 17, scope: !370)
!424 = !DILocalVariable(name: "key2b", scope: !370, file: !2, line: 252, type: !30)
!425 = !DILocation(line: 252, column: 20, scope: !370)
!426 = !DILocation(line: 252, column: 34, scope: !370)
!427 = !DILocalVariable(name: "$c1_7", scope: !370, file: !2, line: 253, type: !149)
!428 = !DILocation(line: 253, column: 3, scope: !370)
!429 = !DILocation(line: 254, column: 3, scope: !370)
!430 = !DILocalVariable(name: "m", scope: !431, file: !2, line: 256, type: !30)
!431 = distinct !DILexicalBlock(scope: !432, file: !2, line: 255, column: 5)
!432 = distinct !DILexicalBlock(scope: !370, file: !2, line: 254, column: 3)
!433 = !DILocation(line: 256, column: 7, scope: !431)
!434 = !DILocation(line: 256, column: 54, scope: !431)
!435 = !DILocation(line: 257, column: 7, scope: !431)
!436 = !DILocalVariable(name: "$key1b_8", scope: !370, file: !2, line: 262, type: !30)
!437 = !DILocation(line: 262, column: 3, scope: !370)
!438 = !DILocation(line: 262, column: 17, scope: !370)
!439 = !DILocalVariable(name: "key2d", scope: !370, file: !2, line: 262, type: !30)
!440 = !DILocation(line: 262, column: 20, scope: !370)
!441 = !DILocation(line: 262, column: 34, scope: !370)
!442 = !DILocalVariable(name: "$c1_9", scope: !370, file: !2, line: 263, type: !149)
!443 = !DILocation(line: 263, column: 3, scope: !370)
!444 = !DILocation(line: 264, column: 3, scope: !370)
!445 = !DILocalVariable(name: "m", scope: !446, file: !2, line: 266, type: !30)
!446 = distinct !DILexicalBlock(scope: !447, file: !2, line: 265, column: 5)
!447 = distinct !DILexicalBlock(scope: !370, file: !2, line: 264, column: 3)
!448 = !DILocation(line: 266, column: 7, scope: !446)
!449 = !DILocation(line: 266, column: 54, scope: !446)
!450 = !DILocation(line: 267, column: 7, scope: !446)
!451 = !DILocalVariable(name: "$key1b_10", scope: !370, file: !2, line: 272, type: !30)
!452 = !DILocation(line: 272, column: 3, scope: !370)
!453 = !DILocation(line: 272, column: 17, scope: !370)
!454 = !DILocalVariable(name: "key2c", scope: !370, file: !2, line: 272, type: !30)
!455 = !DILocation(line: 272, column: 20, scope: !370)
!456 = !DILocation(line: 272, column: 34, scope: !370)
!457 = !DILocalVariable(name: "s", scope: !370, file: !2, line: 273, type: !30)
!458 = !DILocation(line: 273, column: 3, scope: !370)
!459 = !DILocation(line: 273, column: 11, scope: !370)
!460 = !DILocation(line: 274, column: 3, scope: !370)
!461 = distinct !DISubprogram(name: "t7", linkageName: "t7", scope: !2, file: !2, line: 219, type: !5, scopeLine: 219, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!462 = !DILocation(line: 219, column: 12, scope: !461)
!463 = distinct !DISubprogram(name: "t8", linkageName: "t8", scope: !2, file: !2, line: 279, type: !5, scopeLine: 279, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!464 = !DILocalVariable(name: "_sender", scope: !463, file: !2, line: 279, type: !55)
!465 = !DILocation(line: 279, column: 12, scope: !463)
!466 = !DILocalVariable(name: "_origin", scope: !463, file: !2, line: 279, type: !55)
!467 = !DILocalVariable(name: "_amount", scope: !463, file: !2, line: 279, type: !59)
!468 = !DILocalVariable(name: "tname", scope: !463, file: !2, line: 280, type: !30)
!469 = !DILocation(line: 280, column: 3, scope: !463)
!470 = !DILocation(line: 280, column: 14, scope: !463)
!471 = !DILocalVariable(name: "key1a", scope: !463, file: !2, line: 285, type: !30)
!472 = !DILocation(line: 285, column: 3, scope: !463)
!473 = !DILocation(line: 285, column: 17, scope: !463)
!474 = !DILocalVariable(name: "key2a", scope: !463, file: !2, line: 285, type: !30)
!475 = !DILocation(line: 285, column: 20, scope: !463)
!476 = !DILocation(line: 285, column: 34, scope: !463)
!477 = !DILocalVariable(name: "c1", scope: !463, file: !2, line: 286, type: !149)
!478 = !DILocation(line: 286, column: 3, scope: !463)
!479 = !DILocation(line: 287, column: 3, scope: !463)
!480 = !DILocalVariable(name: "v", scope: !481, file: !2, line: 289, type: !30)
!481 = distinct !DILexicalBlock(scope: !482, file: !2, line: 288, column: 5)
!482 = distinct !DILexicalBlock(scope: !463, file: !2, line: 287, column: 3)
!483 = !DILocation(line: 289, column: 5, scope: !481)
!484 = !DILocation(line: 289, column: 13, scope: !481)
!485 = !DILocalVariable(name: "eq", scope: !481, file: !2, line: 290, type: !10)
!486 = !DILocation(line: 290, column: 5, scope: !481)
!487 = !DILocation(line: 290, column: 10, scope: !481)
!488 = !DILocation(line: 291, column: 5, scope: !481)
!489 = !DILocalVariable(name: "m", scope: !490, file: !2, line: 294, type: !30)
!490 = distinct !DILexicalBlock(scope: !491, file: !2, line: 293, column: 7)
!491 = distinct !DILexicalBlock(scope: !481, file: !2, line: 291, column: 5)
!492 = !DILocation(line: 294, column: 7, scope: !490)
!493 = !DILocation(line: 294, column: 43, scope: !490)
!494 = !DILocation(line: 295, column: 7, scope: !490)
!495 = !DILocalVariable(name: "m", scope: !496, file: !2, line: 298, type: !30)
!496 = distinct !DILexicalBlock(scope: !482, file: !2, line: 297, column: 5)
!497 = !DILocation(line: 298, column: 5, scope: !496)
!498 = !DILocation(line: 298, column: 31, scope: !496)
!499 = !DILocation(line: 299, column: 5, scope: !496)
!500 = !DILocalVariable(name: "key1b", scope: !463, file: !2, line: 302, type: !30)
!501 = !DILocation(line: 302, column: 3, scope: !463)
!502 = !DILocation(line: 302, column: 17, scope: !463)
!503 = !DILocalVariable(name: "key2c", scope: !463, file: !2, line: 302, type: !30)
!504 = !DILocation(line: 302, column: 20, scope: !463)
!505 = !DILocation(line: 302, column: 34, scope: !463)
!506 = !DILocalVariable(name: "$c1_11", scope: !463, file: !2, line: 303, type: !149)
!507 = !DILocation(line: 303, column: 3, scope: !463)
!508 = !DILocation(line: 304, column: 3, scope: !463)
!509 = !DILocalVariable(name: "v", scope: !510, file: !2, line: 306, type: !30)
!510 = distinct !DILexicalBlock(scope: !511, file: !2, line: 305, column: 5)
!511 = distinct !DILexicalBlock(scope: !463, file: !2, line: 304, column: 3)
!512 = !DILocation(line: 306, column: 5, scope: !510)
!513 = !DILocation(line: 306, column: 13, scope: !510)
!514 = !DILocalVariable(name: "eq", scope: !510, file: !2, line: 307, type: !10)
!515 = !DILocation(line: 307, column: 5, scope: !510)
!516 = !DILocation(line: 307, column: 10, scope: !510)
!517 = !DILocation(line: 308, column: 5, scope: !510)
!518 = !DILocalVariable(name: "m", scope: !519, file: !2, line: 311, type: !30)
!519 = distinct !DILexicalBlock(scope: !520, file: !2, line: 310, column: 7)
!520 = distinct !DILexicalBlock(scope: !510, file: !2, line: 308, column: 5)
!521 = !DILocation(line: 311, column: 7, scope: !519)
!522 = !DILocation(line: 311, column: 43, scope: !519)
!523 = !DILocation(line: 312, column: 7, scope: !519)
!524 = !DILocalVariable(name: "m", scope: !525, file: !2, line: 315, type: !30)
!525 = distinct !DILexicalBlock(scope: !511, file: !2, line: 314, column: 5)
!526 = !DILocation(line: 315, column: 5, scope: !525)
!527 = !DILocation(line: 315, column: 31, scope: !525)
!528 = !DILocation(line: 316, column: 5, scope: !525)
!529 = !DILocalVariable(name: "em", scope: !463, file: !2, line: 320, type: !34)
!530 = !DILocation(line: 320, column: 3, scope: !463)
!531 = !DILocation(line: 320, column: 8, scope: !463)
!532 = !DILocation(line: 321, column: 3, scope: !463)
!533 = distinct !DISubprogram(name: "t8", linkageName: "t8", scope: !2, file: !2, line: 279, type: !5, scopeLine: 279, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!534 = !DILocation(line: 279, column: 12, scope: !533)
!535 = distinct !DISubprogram(name: "t9", linkageName: "t9", scope: !2, file: !2, line: 326, type: !5, scopeLine: 326, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!536 = !DILocalVariable(name: "_sender", scope: !535, file: !2, line: 326, type: !55)
!537 = !DILocation(line: 326, column: 12, scope: !535)
!538 = !DILocalVariable(name: "_origin", scope: !535, file: !2, line: 326, type: !55)
!539 = !DILocalVariable(name: "_amount", scope: !535, file: !2, line: 326, type: !59)
!540 = !DILocalVariable(name: "tname", scope: !535, file: !2, line: 327, type: !30)
!541 = !DILocation(line: 327, column: 3, scope: !535)
!542 = !DILocation(line: 327, column: 14, scope: !535)
!543 = !DILocalVariable(name: "m1", scope: !535, file: !2, line: 330, type: !34)
!544 = !DILocation(line: 330, column: 3, scope: !535)
!545 = !DILocalVariable(name: "m1_size", scope: !535, file: !2, line: 331, type: !546)
!546 = !DIBasicType(name: "Uint32", size: 4)
!547 = !DILocation(line: 331, column: 3, scope: !535)
!548 = !DILocation(line: 331, column: 13, scope: !535)
!549 = !DILocalVariable(name: "zero", scope: !535, file: !2, line: 332, type: !546)
!550 = !DILocation(line: 332, column: 3, scope: !535)
!551 = !DILocation(line: 332, column: 10, scope: !535)
!552 = !DILocalVariable(name: "is_empty", scope: !535, file: !2, line: 333, type: !10)
!553 = !DILocation(line: 333, column: 3, scope: !535)
!554 = !DILocation(line: 333, column: 14, scope: !535)
!555 = !DILocation(line: 334, column: 3, scope: !535)
!556 = !DILocation(line: 337, column: 5, scope: !557)
!557 = distinct !DILexicalBlock(scope: !558, file: !2, line: 336, column: 5)
!558 = distinct !DILexicalBlock(scope: !535, file: !2, line: 334, column: 3)
!559 = !DILocalVariable(name: "key1a", scope: !535, file: !2, line: 341, type: !30)
!560 = !DILocation(line: 341, column: 3, scope: !535)
!561 = !DILocation(line: 341, column: 17, scope: !535)
!562 = !DILocalVariable(name: "val", scope: !535, file: !2, line: 342, type: !30)
!563 = !DILocation(line: 342, column: 3, scope: !535)
!564 = !DILocation(line: 342, column: 13, scope: !535)
!565 = !DILocalVariable(name: "$m1_12", scope: !535, file: !2, line: 343, type: !34)
!566 = !DILocation(line: 343, column: 3, scope: !535)
!567 = !DILocation(line: 343, column: 8, scope: !535)
!568 = !DILocation(line: 344, column: 3, scope: !535)
!569 = distinct !DISubprogram(name: "t9", linkageName: "t9", scope: !2, file: !2, line: 326, type: !5, scopeLine: 326, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!570 = !DILocation(line: 326, column: 12, scope: !569)
!571 = distinct !DISubprogram(name: "t10", linkageName: "t10", scope: !2, file: !2, line: 348, type: !5, scopeLine: 348, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!572 = !DILocalVariable(name: "_sender", scope: !571, file: !2, line: 348, type: !55)
!573 = !DILocation(line: 348, column: 12, scope: !571)
!574 = !DILocalVariable(name: "_origin", scope: !571, file: !2, line: 348, type: !55)
!575 = !DILocalVariable(name: "_amount", scope: !571, file: !2, line: 348, type: !59)
!576 = !DILocalVariable(name: "tname", scope: !571, file: !2, line: 349, type: !30)
!577 = !DILocation(line: 349, column: 3, scope: !571)
!578 = !DILocation(line: 349, column: 15, scope: !571)
!579 = !DILocalVariable(name: "key1a", scope: !571, file: !2, line: 353, type: !30)
!580 = !DILocation(line: 353, column: 3, scope: !571)
!581 = !DILocation(line: 353, column: 17, scope: !571)
!582 = !DILocalVariable(name: "m1", scope: !571, file: !2, line: 354, type: !34)
!583 = !DILocation(line: 354, column: 3, scope: !571)
!584 = !DILocalVariable(name: "c1", scope: !571, file: !2, line: 355, type: !149)
!585 = !DILocation(line: 355, column: 3, scope: !571)
!586 = !DILocation(line: 355, column: 8, scope: !571)
!587 = !DILocation(line: 356, column: 3, scope: !571)
!588 = !DILocalVariable(name: "v", scope: !589, file: !2, line: 358, type: !30)
!589 = distinct !DILexicalBlock(scope: !590, file: !2, line: 357, column: 5)
!590 = distinct !DILexicalBlock(scope: !571, file: !2, line: 356, column: 3)
!591 = !DILocation(line: 358, column: 5, scope: !589)
!592 = !DILocation(line: 358, column: 13, scope: !589)
!593 = !DILocalVariable(name: "eq", scope: !589, file: !2, line: 359, type: !10)
!594 = !DILocation(line: 359, column: 5, scope: !589)
!595 = !DILocation(line: 359, column: 10, scope: !589)
!596 = !DILocation(line: 360, column: 5, scope: !589)
!597 = !DILocalVariable(name: "m", scope: !598, file: !2, line: 363, type: !30)
!598 = distinct !DILexicalBlock(scope: !599, file: !2, line: 362, column: 7)
!599 = distinct !DILexicalBlock(scope: !589, file: !2, line: 360, column: 5)
!600 = !DILocation(line: 363, column: 7, scope: !598)
!601 = !DILocation(line: 363, column: 37, scope: !598)
!602 = !DILocation(line: 364, column: 7, scope: !598)
!603 = !DILocalVariable(name: "m", scope: !604, file: !2, line: 367, type: !30)
!604 = distinct !DILexicalBlock(scope: !590, file: !2, line: 366, column: 5)
!605 = !DILocation(line: 367, column: 5, scope: !604)
!606 = !DILocation(line: 367, column: 25, scope: !604)
!607 = !DILocation(line: 368, column: 5, scope: !604)
!608 = !DILocation(line: 372, column: 3, scope: !571)
!609 = distinct !DISubprogram(name: "t10", linkageName: "t10", scope: !2, file: !2, line: 348, type: !5, scopeLine: 348, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!610 = !DILocation(line: 348, column: 12, scope: !609)
!611 = distinct !DISubprogram(name: "t11", linkageName: "t11", scope: !2, file: !2, line: 377, type: !5, scopeLine: 377, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!612 = !DILocalVariable(name: "_sender", scope: !611, file: !2, line: 377, type: !55)
!613 = !DILocation(line: 377, column: 12, scope: !611)
!614 = !DILocalVariable(name: "_origin", scope: !611, file: !2, line: 377, type: !55)
!615 = !DILocalVariable(name: "_amount", scope: !611, file: !2, line: 377, type: !59)
!616 = !DILocalVariable(name: "tname", scope: !611, file: !2, line: 378, type: !30)
!617 = !DILocation(line: 378, column: 3, scope: !611)
!618 = !DILocation(line: 378, column: 15, scope: !611)
!619 = !DILocalVariable(name: "m1", scope: !611, file: !2, line: 381, type: !34)
!620 = !DILocation(line: 381, column: 3, scope: !611)
!621 = !DILocalVariable(name: "m1_size", scope: !611, file: !2, line: 382, type: !546)
!622 = !DILocation(line: 382, column: 3, scope: !611)
!623 = !DILocation(line: 382, column: 13, scope: !611)
!624 = !DILocalVariable(name: "zero", scope: !611, file: !2, line: 383, type: !546)
!625 = !DILocation(line: 383, column: 3, scope: !611)
!626 = !DILocation(line: 383, column: 10, scope: !611)
!627 = !DILocalVariable(name: "is_empty", scope: !611, file: !2, line: 384, type: !10)
!628 = !DILocation(line: 384, column: 3, scope: !611)
!629 = !DILocation(line: 384, column: 14, scope: !611)
!630 = !DILocation(line: 385, column: 3, scope: !611)
!631 = !DILocation(line: 388, column: 5, scope: !632)
!632 = distinct !DILexicalBlock(scope: !633, file: !2, line: 387, column: 5)
!633 = distinct !DILexicalBlock(scope: !611, file: !2, line: 385, column: 3)
!634 = !DILocalVariable(name: "e2", scope: !611, file: !2, line: 392, type: !39)
!635 = !DILocation(line: 392, column: 3, scope: !611)
!636 = !DILocation(line: 392, column: 8, scope: !611)
!637 = !DILocation(line: 393, column: 3, scope: !611)
!638 = distinct !DISubprogram(name: "t11", linkageName: "t11", scope: !2, file: !2, line: 377, type: !5, scopeLine: 377, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!639 = !DILocation(line: 377, column: 12, scope: !638)
!640 = distinct !DISubprogram(name: "t12", linkageName: "t12", scope: !2, file: !2, line: 397, type: !5, scopeLine: 397, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!641 = !DILocalVariable(name: "_sender", scope: !640, file: !2, line: 397, type: !55)
!642 = !DILocation(line: 397, column: 12, scope: !640)
!643 = !DILocalVariable(name: "_origin", scope: !640, file: !2, line: 397, type: !55)
!644 = !DILocalVariable(name: "_amount", scope: !640, file: !2, line: 397, type: !59)
!645 = !DILocalVariable(name: "tname", scope: !640, file: !2, line: 398, type: !30)
!646 = !DILocation(line: 398, column: 3, scope: !640)
!647 = !DILocation(line: 398, column: 15, scope: !640)
!648 = !DILocalVariable(name: "m2", scope: !640, file: !2, line: 401, type: !39)
!649 = !DILocation(line: 401, column: 3, scope: !640)
!650 = !DILocalVariable(name: "m2_size", scope: !640, file: !2, line: 402, type: !546)
!651 = !DILocation(line: 402, column: 3, scope: !640)
!652 = !DILocation(line: 402, column: 13, scope: !640)
!653 = !DILocalVariable(name: "zero", scope: !640, file: !2, line: 403, type: !546)
!654 = !DILocation(line: 403, column: 3, scope: !640)
!655 = !DILocation(line: 403, column: 10, scope: !640)
!656 = !DILocalVariable(name: "is_empty", scope: !640, file: !2, line: 404, type: !10)
!657 = !DILocation(line: 404, column: 3, scope: !640)
!658 = !DILocation(line: 404, column: 14, scope: !640)
!659 = !DILocation(line: 405, column: 3, scope: !640)
!660 = !DILocation(line: 408, column: 5, scope: !661)
!661 = distinct !DILexicalBlock(scope: !662, file: !2, line: 407, column: 5)
!662 = distinct !DILexicalBlock(scope: !640, file: !2, line: 405, column: 3)
!663 = !DILocalVariable(name: "e1", scope: !640, file: !2, line: 412, type: !34)
!664 = !DILocation(line: 412, column: 3, scope: !640)
!665 = !DILocation(line: 412, column: 8, scope: !640)
!666 = !DILocalVariable(name: "key1a", scope: !640, file: !2, line: 413, type: !30)
!667 = !DILocation(line: 413, column: 3, scope: !640)
!668 = !DILocation(line: 413, column: 17, scope: !640)
!669 = !DILocation(line: 414, column: 3, scope: !640)
!670 = distinct !DISubprogram(name: "t12", linkageName: "t12", scope: !2, file: !2, line: 397, type: !5, scopeLine: 397, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!671 = !DILocation(line: 397, column: 12, scope: !670)
!672 = distinct !DISubprogram(name: "t13", linkageName: "t13", scope: !2, file: !2, line: 418, type: !5, scopeLine: 418, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!673 = !DILocalVariable(name: "_sender", scope: !672, file: !2, line: 418, type: !55)
!674 = !DILocation(line: 418, column: 12, scope: !672)
!675 = !DILocalVariable(name: "_origin", scope: !672, file: !2, line: 418, type: !55)
!676 = !DILocalVariable(name: "_amount", scope: !672, file: !2, line: 418, type: !59)
!677 = !DILocalVariable(name: "tname", scope: !672, file: !2, line: 419, type: !30)
!678 = !DILocation(line: 419, column: 3, scope: !672)
!679 = !DILocation(line: 419, column: 15, scope: !672)
!680 = !DILocalVariable(name: "key1a", scope: !672, file: !2, line: 422, type: !30)
!681 = !DILocation(line: 422, column: 3, scope: !672)
!682 = !DILocation(line: 422, column: 17, scope: !672)
!683 = !DILocalVariable(name: "mo", scope: !672, file: !2, line: 423, type: !411)
!684 = !DILocation(line: 423, column: 3, scope: !672)
!685 = !DILocation(line: 424, column: 3, scope: !672)
!686 = !DILocalVariable(name: "m_size", scope: !687, file: !2, line: 426, type: !546)
!687 = distinct !DILexicalBlock(scope: !688, file: !2, line: 425, column: 5)
!688 = distinct !DILexicalBlock(scope: !672, file: !2, line: 424, column: 3)
!689 = !DILocation(line: 426, column: 5, scope: !687)
!690 = !DILocation(line: 426, column: 14, scope: !687)
!691 = !DILocalVariable(name: "zero", scope: !687, file: !2, line: 427, type: !546)
!692 = !DILocation(line: 427, column: 5, scope: !687)
!693 = !DILocation(line: 427, column: 12, scope: !687)
!694 = !DILocalVariable(name: "is_empty", scope: !687, file: !2, line: 428, type: !10)
!695 = !DILocation(line: 428, column: 5, scope: !687)
!696 = !DILocation(line: 428, column: 16, scope: !687)
!697 = !DILocation(line: 429, column: 5, scope: !687)
!698 = !DILocalVariable(name: "msg", scope: !699, file: !2, line: 432, type: !30)
!699 = distinct !DILexicalBlock(scope: !700, file: !2, line: 431, column: 7)
!700 = distinct !DILexicalBlock(scope: !687, file: !2, line: 429, column: 5)
!701 = !DILocation(line: 432, column: 7, scope: !699)
!702 = !DILocation(line: 432, column: 43, scope: !699)
!703 = !DILocation(line: 433, column: 7, scope: !699)
!704 = !DILocation(line: 436, column: 5, scope: !705)
!705 = distinct !DILexicalBlock(scope: !688, file: !2, line: 435, column: 5)
!706 = !DILocalVariable(name: "m3", scope: !672, file: !2, line: 440, type: !34)
!707 = !DILocation(line: 440, column: 3, scope: !672)
!708 = !DILocation(line: 440, column: 8, scope: !672)
!709 = !DILocalVariable(name: "m2", scope: !672, file: !2, line: 441, type: !39)
!710 = !DILocation(line: 441, column: 3, scope: !672)
!711 = !DILocalVariable(name: "key2a", scope: !672, file: !2, line: 442, type: !30)
!712 = !DILocation(line: 442, column: 9, scope: !672)
!713 = !DILocation(line: 442, column: 23, scope: !672)
!714 = !DILocalVariable(name: "e", scope: !672, file: !2, line: 443, type: !39)
!715 = !DILocation(line: 443, column: 9, scope: !672)
!716 = !DILocation(line: 443, column: 13, scope: !672)
!717 = !DILocation(line: 444, column: 5, scope: !672)
!718 = !DILocalVariable(name: "$m3_14", scope: !672, file: !2, line: 445, type: !44)
!719 = !DILocation(line: 445, column: 3, scope: !672)
!720 = !DILocalVariable(name: "$e_13", scope: !672, file: !2, line: 446, type: !44)
!721 = !DILocation(line: 446, column: 9, scope: !672)
!722 = !DILocation(line: 446, column: 13, scope: !672)
!723 = !DILocation(line: 447, column: 5, scope: !672)
!724 = !DILocation(line: 449, column: 3, scope: !672)
!725 = distinct !DISubprogram(name: "t13", linkageName: "t13", scope: !2, file: !2, line: 418, type: !5, scopeLine: 418, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!726 = !DILocation(line: 418, column: 12, scope: !725)
!727 = distinct !DISubprogram(name: "t14", linkageName: "t14", scope: !2, file: !2, line: 454, type: !5, scopeLine: 454, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!728 = !DILocalVariable(name: "_sender", scope: !727, file: !2, line: 454, type: !55)
!729 = !DILocation(line: 454, column: 12, scope: !727)
!730 = !DILocalVariable(name: "_origin", scope: !727, file: !2, line: 454, type: !55)
!731 = !DILocalVariable(name: "_amount", scope: !727, file: !2, line: 454, type: !59)
!732 = !DILocalVariable(name: "tname", scope: !727, file: !2, line: 455, type: !30)
!733 = !DILocation(line: 455, column: 3, scope: !727)
!734 = !DILocation(line: 455, column: 15, scope: !727)
!735 = !DILocalVariable(name: "m3", scope: !727, file: !2, line: 458, type: !44)
!736 = !DILocation(line: 458, column: 3, scope: !727)
!737 = !DILocalVariable(name: "m3_size", scope: !727, file: !2, line: 459, type: !546)
!738 = !DILocation(line: 459, column: 3, scope: !727)
!739 = !DILocation(line: 459, column: 13, scope: !727)
!740 = !DILocalVariable(name: "one", scope: !727, file: !2, line: 460, type: !546)
!741 = !DILocation(line: 460, column: 3, scope: !727)
!742 = !DILocation(line: 460, column: 9, scope: !727)
!743 = !DILocalVariable(name: "is_empty", scope: !727, file: !2, line: 461, type: !10)
!744 = !DILocation(line: 461, column: 3, scope: !727)
!745 = !DILocation(line: 461, column: 14, scope: !727)
!746 = !DILocation(line: 462, column: 3, scope: !727)
!747 = !DILocation(line: 465, column: 5, scope: !748)
!748 = distinct !DILexicalBlock(scope: !749, file: !2, line: 464, column: 5)
!749 = distinct !DILexicalBlock(scope: !727, file: !2, line: 462, column: 3)
!750 = !DILocalVariable(name: "e", scope: !727, file: !2, line: 469, type: !39)
!751 = !DILocation(line: 469, column: 2, scope: !727)
!752 = !DILocation(line: 469, column: 6, scope: !727)
!753 = !DILocation(line: 470, column: 2, scope: !727)
!754 = distinct !DISubprogram(name: "t14", linkageName: "t14", scope: !2, file: !2, line: 454, type: !5, scopeLine: 454, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!755 = !DILocation(line: 454, column: 12, scope: !754)
!756 = distinct !DISubprogram(name: "t15", linkageName: "t15", scope: !2, file: !2, line: 475, type: !5, scopeLine: 475, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!757 = !DILocalVariable(name: "_sender", scope: !756, file: !2, line: 475, type: !55)
!758 = !DILocation(line: 475, column: 12, scope: !756)
!759 = !DILocalVariable(name: "_origin", scope: !756, file: !2, line: 475, type: !55)
!760 = !DILocalVariable(name: "_amount", scope: !756, file: !2, line: 475, type: !59)
!761 = !DILocalVariable(name: "tname", scope: !756, file: !2, line: 476, type: !30)
!762 = !DILocation(line: 476, column: 3, scope: !756)
!763 = !DILocation(line: 476, column: 15, scope: !756)
!764 = !DILocalVariable(name: "m3", scope: !756, file: !2, line: 479, type: !44)
!765 = !DILocation(line: 479, column: 3, scope: !756)
!766 = !DILocalVariable(name: "m3_size", scope: !756, file: !2, line: 480, type: !546)
!767 = !DILocation(line: 480, column: 3, scope: !756)
!768 = !DILocation(line: 480, column: 13, scope: !756)
!769 = !DILocalVariable(name: "one", scope: !756, file: !2, line: 481, type: !546)
!770 = !DILocation(line: 481, column: 3, scope: !756)
!771 = !DILocation(line: 481, column: 9, scope: !756)
!772 = !DILocalVariable(name: "is_one", scope: !756, file: !2, line: 482, type: !10)
!773 = !DILocation(line: 482, column: 3, scope: !756)
!774 = !DILocation(line: 482, column: 12, scope: !756)
!775 = !DILocation(line: 483, column: 3, scope: !756)
!776 = !DILocalVariable(name: "err", scope: !777, file: !2, line: 486, type: !30)
!777 = distinct !DILexicalBlock(scope: !778, file: !2, line: 485, column: 5)
!778 = distinct !DILexicalBlock(scope: !756, file: !2, line: 483, column: 3)
!779 = !DILocation(line: 486, column: 5, scope: !777)
!780 = !DILocation(line: 486, column: 34, scope: !777)
!781 = !DILocation(line: 487, column: 5, scope: !777)
!782 = !DILocalVariable(name: "key1a", scope: !756, file: !2, line: 490, type: !30)
!783 = !DILocation(line: 490, column: 3, scope: !756)
!784 = !DILocation(line: 490, column: 17, scope: !756)
!785 = !DILocalVariable(name: "key2a", scope: !756, file: !2, line: 491, type: !30)
!786 = !DILocation(line: 491, column: 3, scope: !756)
!787 = !DILocation(line: 491, column: 17, scope: !756)
!788 = !DILocalVariable(name: "m2o", scope: !756, file: !2, line: 492, type: !789)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (Map (String) (Map (String) (String)))", baseType: !790, size: 8, align: 8, dwarfAddressSpace: 0)
!790 = !DIBasicType(name: "Option (Map (String) (Map (String) (String)))", size: 8)
!791 = !DILocation(line: 492, column: 3, scope: !756)
!792 = !DILocation(line: 492, column: 9, scope: !756)
!793 = !DILocation(line: 493, column: 3, scope: !756)
!794 = !DILocalVariable(name: "m2_size", scope: !795, file: !2, line: 495, type: !546)
!795 = distinct !DILexicalBlock(scope: !796, file: !2, line: 494, column: 5)
!796 = distinct !DILexicalBlock(scope: !756, file: !2, line: 493, column: 3)
!797 = !DILocation(line: 495, column: 5, scope: !795)
!798 = !DILocation(line: 495, column: 15, scope: !795)
!799 = !DILocalVariable(name: "is_one_1", scope: !795, file: !2, line: 496, type: !10)
!800 = !DILocation(line: 496, column: 5, scope: !795)
!801 = !DILocation(line: 496, column: 16, scope: !795)
!802 = !DILocation(line: 497, column: 5, scope: !795)
!803 = !DILocalVariable(name: "m1o", scope: !804, file: !2, line: 499, type: !411)
!804 = distinct !DILexicalBlock(scope: !805, file: !2, line: 498, column: 7)
!805 = distinct !DILexicalBlock(scope: !795, file: !2, line: 497, column: 5)
!806 = !DILocation(line: 499, column: 7, scope: !804)
!807 = !DILocation(line: 499, column: 13, scope: !804)
!808 = !DILocation(line: 500, column: 7, scope: !804)
!809 = !DILocalVariable(name: "m1_size", scope: !810, file: !2, line: 502, type: !546)
!810 = distinct !DILexicalBlock(scope: !811, file: !2, line: 501, column: 9)
!811 = distinct !DILexicalBlock(scope: !804, file: !2, line: 500, column: 7)
!812 = !DILocation(line: 502, column: 9, scope: !810)
!813 = !DILocation(line: 502, column: 19, scope: !810)
!814 = !DILocalVariable(name: "zero", scope: !810, file: !2, line: 503, type: !546)
!815 = !DILocation(line: 503, column: 9, scope: !810)
!816 = !DILocation(line: 503, column: 16, scope: !810)
!817 = !DILocalVariable(name: "is_empty", scope: !810, file: !2, line: 504, type: !10)
!818 = !DILocation(line: 504, column: 9, scope: !810)
!819 = !DILocation(line: 504, column: 20, scope: !810)
!820 = !DILocation(line: 505, column: 9, scope: !810)
!821 = !DILocalVariable(name: "err", scope: !822, file: !2, line: 508, type: !30)
!822 = distinct !DILexicalBlock(scope: !823, file: !2, line: 507, column: 11)
!823 = distinct !DILexicalBlock(scope: !810, file: !2, line: 505, column: 9)
!824 = !DILocation(line: 508, column: 11, scope: !822)
!825 = !DILocation(line: 508, column: 54, scope: !822)
!826 = !DILocation(line: 509, column: 11, scope: !822)
!827 = !DILocalVariable(name: "err", scope: !828, file: !2, line: 512, type: !30)
!828 = distinct !DILexicalBlock(scope: !811, file: !2, line: 511, column: 9)
!829 = !DILocation(line: 512, column: 9, scope: !828)
!830 = !DILocation(line: 512, column: 35, scope: !828)
!831 = !DILocation(line: 513, column: 9, scope: !828)
!832 = !DILocalVariable(name: "err", scope: !833, file: !2, line: 516, type: !30)
!833 = distinct !DILexicalBlock(scope: !805, file: !2, line: 515, column: 7)
!834 = !DILocation(line: 516, column: 7, scope: !833)
!835 = !DILocation(line: 516, column: 42, scope: !833)
!836 = !DILocation(line: 517, column: 7, scope: !833)
!837 = !DILocalVariable(name: "err", scope: !838, file: !2, line: 520, type: !30)
!838 = distinct !DILexicalBlock(scope: !796, file: !2, line: 519, column: 5)
!839 = !DILocation(line: 520, column: 5, scope: !838)
!840 = !DILocation(line: 520, column: 31, scope: !838)
!841 = !DILocation(line: 521, column: 5, scope: !838)
!842 = !DILocalVariable(name: "key1b", scope: !756, file: !2, line: 525, type: !30)
!843 = !DILocation(line: 525, column: 3, scope: !756)
!844 = !DILocation(line: 525, column: 17, scope: !756)
!845 = !DILocalVariable(name: "key2b", scope: !756, file: !2, line: 525, type: !30)
!846 = !DILocation(line: 525, column: 20, scope: !756)
!847 = !DILocation(line: 525, column: 34, scope: !756)
!848 = !DILocalVariable(name: "key1c", scope: !756, file: !2, line: 526, type: !30)
!849 = !DILocation(line: 526, column: 3, scope: !756)
!850 = !DILocation(line: 526, column: 17, scope: !756)
!851 = !DILocalVariable(name: "key2c", scope: !756, file: !2, line: 526, type: !30)
!852 = !DILocation(line: 526, column: 20, scope: !756)
!853 = !DILocation(line: 526, column: 34, scope: !756)
!854 = !DILocalVariable(name: "key1d", scope: !756, file: !2, line: 527, type: !30)
!855 = !DILocation(line: 527, column: 3, scope: !756)
!856 = !DILocation(line: 527, column: 17, scope: !756)
!857 = !DILocalVariable(name: "key2d", scope: !756, file: !2, line: 527, type: !30)
!858 = !DILocation(line: 527, column: 20, scope: !756)
!859 = !DILocation(line: 527, column: 34, scope: !756)
!860 = !DILocalVariable(name: "v1", scope: !756, file: !2, line: 528, type: !30)
!861 = !DILocation(line: 528, column: 3, scope: !756)
!862 = !DILocation(line: 528, column: 12, scope: !756)
!863 = !DILocalVariable(name: "v2", scope: !756, file: !2, line: 528, type: !30)
!864 = !DILocation(line: 528, column: 15, scope: !756)
!865 = !DILocation(line: 528, column: 24, scope: !756)
!866 = !DILocalVariable(name: "v3", scope: !756, file: !2, line: 528, type: !30)
!867 = !DILocation(line: 528, column: 27, scope: !756)
!868 = !DILocation(line: 528, column: 36, scope: !756)
!869 = !DILocalVariable(name: "v4", scope: !756, file: !2, line: 528, type: !30)
!870 = !DILocation(line: 528, column: 39, scope: !756)
!871 = !DILocation(line: 528, column: 48, scope: !756)
!872 = !DILocalVariable(name: "m2", scope: !756, file: !2, line: 529, type: !39)
!873 = !DILocation(line: 529, column: 3, scope: !756)
!874 = !DILocation(line: 529, column: 8, scope: !756)
!875 = !DILocalVariable(name: "m1", scope: !756, file: !2, line: 530, type: !34)
!876 = !DILocation(line: 530, column: 3, scope: !756)
!877 = !DILocation(line: 530, column: 8, scope: !756)
!878 = !DILocalVariable(name: "m2_full", scope: !756, file: !2, line: 531, type: !39)
!879 = !DILocation(line: 531, column: 3, scope: !756)
!880 = !DILocalVariable(name: "m21", scope: !756, file: !2, line: 532, type: !34)
!881 = !DILocation(line: 532, column: 9, scope: !756)
!882 = !DILocation(line: 532, column: 15, scope: !756)
!883 = !DILocalVariable(name: "m22", scope: !756, file: !2, line: 533, type: !34)
!884 = !DILocation(line: 533, column: 9, scope: !756)
!885 = !DILocation(line: 533, column: 15, scope: !756)
!886 = !DILocalVariable(name: "m23", scope: !756, file: !2, line: 534, type: !34)
!887 = !DILocation(line: 534, column: 9, scope: !756)
!888 = !DILocation(line: 534, column: 15, scope: !756)
!889 = !DILocalVariable(name: "m24", scope: !756, file: !2, line: 535, type: !34)
!890 = !DILocation(line: 535, column: 9, scope: !756)
!891 = !DILocation(line: 535, column: 15, scope: !756)
!892 = !DILocalVariable(name: "m11", scope: !756, file: !2, line: 536, type: !39)
!893 = !DILocation(line: 536, column: 9, scope: !756)
!894 = !DILocation(line: 536, column: 15, scope: !756)
!895 = !DILocalVariable(name: "m12", scope: !756, file: !2, line: 537, type: !39)
!896 = !DILocation(line: 537, column: 9, scope: !756)
!897 = !DILocation(line: 537, column: 15, scope: !756)
!898 = !DILocalVariable(name: "m13", scope: !756, file: !2, line: 538, type: !39)
!899 = !DILocation(line: 538, column: 9, scope: !756)
!900 = !DILocation(line: 538, column: 15, scope: !756)
!901 = !DILocalVariable(name: "m14", scope: !756, file: !2, line: 539, type: !39)
!902 = !DILocation(line: 539, column: 9, scope: !756)
!903 = !DILocation(line: 539, column: 15, scope: !756)
!904 = !DILocation(line: 540, column: 5, scope: !756)
!905 = !DILocation(line: 541, column: 3, scope: !756)
!906 = distinct !DISubprogram(name: "t15", linkageName: "t15", scope: !2, file: !2, line: 475, type: !5, scopeLine: 475, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!907 = !DILocation(line: 475, column: 12, scope: !906)
!908 = distinct !DISubprogram(name: "t16", linkageName: "t16", scope: !2, file: !2, line: 545, type: !5, scopeLine: 545, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!909 = !DILocalVariable(name: "_sender", scope: !908, file: !2, line: 545, type: !55)
!910 = !DILocation(line: 545, column: 12, scope: !908)
!911 = !DILocalVariable(name: "_origin", scope: !908, file: !2, line: 545, type: !55)
!912 = !DILocalVariable(name: "_amount", scope: !908, file: !2, line: 545, type: !59)
!913 = !DILocalVariable(name: "tname", scope: !908, file: !2, line: 546, type: !30)
!914 = !DILocation(line: 546, column: 3, scope: !908)
!915 = !DILocation(line: 546, column: 15, scope: !908)
!916 = !DILocalVariable(name: "key1a", scope: !908, file: !2, line: 553, type: !30)
!917 = !DILocation(line: 553, column: 3, scope: !908)
!918 = !DILocation(line: 553, column: 17, scope: !908)
!919 = !DILocalVariable(name: "key2a", scope: !908, file: !2, line: 553, type: !30)
!920 = !DILocation(line: 553, column: 20, scope: !908)
!921 = !DILocation(line: 553, column: 34, scope: !908)
!922 = !DILocalVariable(name: "key1b", scope: !908, file: !2, line: 554, type: !30)
!923 = !DILocation(line: 554, column: 3, scope: !908)
!924 = !DILocation(line: 554, column: 17, scope: !908)
!925 = !DILocalVariable(name: "key2b", scope: !908, file: !2, line: 554, type: !30)
!926 = !DILocation(line: 554, column: 20, scope: !908)
!927 = !DILocation(line: 554, column: 34, scope: !908)
!928 = !DILocalVariable(name: "key1c", scope: !908, file: !2, line: 555, type: !30)
!929 = !DILocation(line: 555, column: 3, scope: !908)
!930 = !DILocation(line: 555, column: 17, scope: !908)
!931 = !DILocalVariable(name: "key2c", scope: !908, file: !2, line: 555, type: !30)
!932 = !DILocation(line: 555, column: 20, scope: !908)
!933 = !DILocation(line: 555, column: 34, scope: !908)
!934 = !DILocalVariable(name: "key1d", scope: !908, file: !2, line: 556, type: !30)
!935 = !DILocation(line: 556, column: 3, scope: !908)
!936 = !DILocation(line: 556, column: 17, scope: !908)
!937 = !DILocalVariable(name: "key2d", scope: !908, file: !2, line: 556, type: !30)
!938 = !DILocation(line: 556, column: 20, scope: !908)
!939 = !DILocation(line: 556, column: 34, scope: !908)
!940 = !DILocalVariable(name: "t1", scope: !908, file: !2, line: 558, type: !149)
!941 = !DILocation(line: 558, column: 3, scope: !908)
!942 = !DILocalVariable(name: "t2", scope: !908, file: !2, line: 559, type: !149)
!943 = !DILocation(line: 559, column: 3, scope: !908)
!944 = !DILocalVariable(name: "t3", scope: !908, file: !2, line: 560, type: !149)
!945 = !DILocation(line: 560, column: 3, scope: !908)
!946 = !DILocalVariable(name: "t4", scope: !908, file: !2, line: 561, type: !149)
!947 = !DILocation(line: 561, column: 3, scope: !908)
!948 = !DILocalVariable(name: "v1", scope: !908, file: !2, line: 562, type: !30)
!949 = !DILocation(line: 562, column: 3, scope: !908)
!950 = !DILocation(line: 562, column: 12, scope: !908)
!951 = !DILocalVariable(name: "v2", scope: !908, file: !2, line: 562, type: !30)
!952 = !DILocation(line: 562, column: 15, scope: !908)
!953 = !DILocation(line: 562, column: 24, scope: !908)
!954 = !DILocalVariable(name: "v3", scope: !908, file: !2, line: 562, type: !30)
!955 = !DILocation(line: 562, column: 27, scope: !908)
!956 = !DILocation(line: 562, column: 36, scope: !908)
!957 = !DILocalVariable(name: "v4", scope: !908, file: !2, line: 562, type: !30)
!958 = !DILocation(line: 562, column: 39, scope: !908)
!959 = !DILocation(line: 562, column: 48, scope: !908)
!960 = !DILocalVariable(name: "b1", scope: !908, file: !2, line: 564, type: !10)
!961 = !DILocation(line: 564, column: 3, scope: !908)
!962 = !DILocation(line: 564, column: 8, scope: !908)
!963 = !DILocation(line: 566, column: 9, scope: !964)
!964 = distinct !DILexicalBlock(scope: !965, file: !2, line: 565, column: 9)
!965 = distinct !DILexicalBlock(scope: !908, file: !2, line: 564, column: 8)
!966 = !DILocation(line: 567, column: 17, scope: !967)
!967 = distinct !DILexicalBlock(scope: !965, file: !2, line: 567, column: 9)
!968 = !DILocalVariable(name: "b2", scope: !908, file: !2, line: 570, type: !10)
!969 = !DILocation(line: 570, column: 3, scope: !908)
!970 = !DILocation(line: 570, column: 8, scope: !908)
!971 = !DILocation(line: 572, column: 9, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !2, line: 571, column: 9)
!973 = distinct !DILexicalBlock(scope: !908, file: !2, line: 570, column: 8)
!974 = !DILocation(line: 573, column: 17, scope: !975)
!975 = distinct !DILexicalBlock(scope: !973, file: !2, line: 573, column: 9)
!976 = !DILocalVariable(name: "b3", scope: !908, file: !2, line: 576, type: !10)
!977 = !DILocation(line: 576, column: 3, scope: !908)
!978 = !DILocation(line: 576, column: 8, scope: !908)
!979 = !DILocation(line: 578, column: 9, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !2, line: 577, column: 9)
!981 = distinct !DILexicalBlock(scope: !908, file: !2, line: 576, column: 8)
!982 = !DILocation(line: 579, column: 17, scope: !983)
!983 = distinct !DILexicalBlock(scope: !981, file: !2, line: 579, column: 9)
!984 = !DILocalVariable(name: "b4", scope: !908, file: !2, line: 582, type: !10)
!985 = !DILocation(line: 582, column: 3, scope: !908)
!986 = !DILocation(line: 582, column: 8, scope: !908)
!987 = !DILocation(line: 584, column: 9, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !2, line: 583, column: 9)
!989 = distinct !DILexicalBlock(scope: !908, file: !2, line: 582, column: 8)
!990 = !DILocation(line: 585, column: 17, scope: !991)
!991 = distinct !DILexicalBlock(scope: !989, file: !2, line: 585, column: 9)
!992 = !DILocalVariable(name: "b", scope: !908, file: !2, line: 588, type: !10)
!993 = !DILocation(line: 588, column: 3, scope: !908)
!994 = !DILocalVariable(name: "a1", scope: !908, file: !2, line: 589, type: !10)
!995 = !DILocation(line: 589, column: 9, scope: !908)
!996 = !DILocation(line: 589, column: 14, scope: !908)
!997 = !DILocalVariable(name: "$BoolUtils.andb_20", scope: !908, file: !2, line: 589, type: !10)
!998 = !DILocalVariable(name: "a2", scope: !908, file: !2, line: 590, type: !10)
!999 = !DILocation(line: 590, column: 9, scope: !908)
!1000 = !DILocation(line: 590, column: 14, scope: !908)
!1001 = !DILocalVariable(name: "$BoolUtils.andb_22", scope: !908, file: !2, line: 590, type: !10)
!1002 = !DILocation(line: 591, column: 5, scope: !908)
!1003 = !DILocalVariable(name: "$BoolUtils.andb_24", scope: !908, file: !2, line: 591, type: !10)
!1004 = !DILocation(line: 593, column: 3, scope: !908)
!1005 = !DILocation(line: 596, column: 5, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 595, column: 5)
!1007 = distinct !DILexicalBlock(scope: !908, file: !2, line: 593, column: 3)
!1008 = !DILocalVariable(name: "m1", scope: !908, file: !2, line: 600, type: !34)
!1009 = !DILocation(line: 600, column: 3, scope: !908)
!1010 = !DILocalVariable(name: "k", scope: !908, file: !2, line: 601, type: !30)
!1011 = !DILocation(line: 601, column: 9, scope: !908)
!1012 = !DILocation(line: 601, column: 14, scope: !908)
!1013 = !DILocalVariable(name: "v", scope: !908, file: !2, line: 602, type: !30)
!1014 = !DILocation(line: 602, column: 9, scope: !908)
!1015 = !DILocation(line: 602, column: 17, scope: !908)
!1016 = !DILocalVariable(name: "e", scope: !908, file: !2, line: 603, type: !34)
!1017 = !DILocation(line: 603, column: 9, scope: !908)
!1018 = !DILocation(line: 603, column: 13, scope: !908)
!1019 = !DILocation(line: 604, column: 5, scope: !908)
!1020 = !DILocation(line: 606, column: 3, scope: !908)
!1021 = distinct !DISubprogram(name: "t16", linkageName: "t16", scope: !2, file: !2, line: 545, type: !5, scopeLine: 545, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!1022 = !DILocation(line: 545, column: 12, scope: !1021)
!1023 = distinct !DISubprogram(name: "t17", linkageName: "t17", scope: !2, file: !2, line: 611, type: !5, scopeLine: 611, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!1024 = !DILocalVariable(name: "_sender", scope: !1023, file: !2, line: 611, type: !55)
!1025 = !DILocation(line: 611, column: 12, scope: !1023)
!1026 = !DILocalVariable(name: "_origin", scope: !1023, file: !2, line: 611, type: !55)
!1027 = !DILocalVariable(name: "_amount", scope: !1023, file: !2, line: 611, type: !59)
!1028 = !DILocalVariable(name: "tname", scope: !1023, file: !2, line: 613, type: !30)
!1029 = !DILocation(line: 613, column: 3, scope: !1023)
!1030 = !DILocation(line: 613, column: 15, scope: !1023)
!1031 = !DILocalVariable(name: "key", scope: !1023, file: !2, line: 617, type: !30)
!1032 = !DILocation(line: 617, column: 3, scope: !1023)
!1033 = !DILocation(line: 617, column: 10, scope: !1023)
!1034 = !DILocalVariable(name: "found", scope: !1023, file: !2, line: 618, type: !10)
!1035 = !DILocation(line: 618, column: 3, scope: !1023)
!1036 = !DILocation(line: 619, column: 3, scope: !1023)
!1037 = !DILocation(line: 622, column: 5, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !2, line: 621, column: 5)
!1039 = distinct !DILexicalBlock(scope: !1023, file: !2, line: 619, column: 3)
!1040 = !DILocation(line: 626, column: 3, scope: !1023)
!1041 = distinct !DISubprogram(name: "t17", linkageName: "t17", scope: !2, file: !2, line: 611, type: !5, scopeLine: 611, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!1042 = !DILocation(line: 611, column: 12, scope: !1041)
!1043 = distinct !DISubprogram(name: "t18", linkageName: "t18", scope: !2, file: !2, line: 630, type: !5, scopeLine: 630, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!1044 = !DILocalVariable(name: "_sender", scope: !1043, file: !2, line: 630, type: !55)
!1045 = !DILocation(line: 630, column: 12, scope: !1043)
!1046 = !DILocalVariable(name: "_origin", scope: !1043, file: !2, line: 630, type: !55)
!1047 = !DILocalVariable(name: "_amount", scope: !1043, file: !2, line: 630, type: !59)
!1048 = !DILocalVariable(name: "tname", scope: !1043, file: !2, line: 632, type: !30)
!1049 = !DILocation(line: 632, column: 3, scope: !1043)
!1050 = !DILocation(line: 632, column: 15, scope: !1043)
!1051 = !DILocalVariable(name: "key", scope: !1043, file: !2, line: 636, type: !30)
!1052 = !DILocation(line: 636, column: 3, scope: !1043)
!1053 = !DILocation(line: 636, column: 10, scope: !1043)
!1054 = !DILocalVariable(name: "found", scope: !1043, file: !2, line: 637, type: !10)
!1055 = !DILocation(line: 637, column: 3, scope: !1043)
!1056 = !DILocation(line: 638, column: 3, scope: !1043)
!1057 = !DILocation(line: 640, column: 5, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !2, line: 639, column: 5)
!1059 = distinct !DILexicalBlock(scope: !1043, file: !2, line: 638, column: 3)
!1060 = distinct !DISubprogram(name: "t18", linkageName: "t18", scope: !2, file: !2, line: 630, type: !5, scopeLine: 630, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!1061 = !DILocation(line: 630, column: 12, scope: !1060)
