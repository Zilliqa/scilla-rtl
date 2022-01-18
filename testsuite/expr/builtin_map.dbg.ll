; let bool_to_uint =
; fun (b : Bool) =>
; match b with
; | True => Uint32 1
; | False => Uint32 0
; end
; in
; let i0 = Uint32 0 in
; let i1 = Uint32 1 in
; let a = Emp Uint32 Uint32 in
; let a1 = builtin put a i0 i1 in
; let o = Some {Map Uint32 Uint32} a1 in
; let b = Emp Uint32 (Option (Map Uint32 Uint32)) in
; let b1 = builtin put b i1 o in
; let res1 = builtin get b1 i1 in
; match res1 with
; | Some (Some a1) =>
; let p1 = builtin contains b1 i1 in
; let p1_i = bool_to_uint p1 in
; let p2 = builtin contains a1 i0 in
; let p2_i = bool_to_uint p2 in
; let p3 = builtin add p1_i p2_i in
; let a2 = builtin remove a1 i1 in
; let p5 = builtin contains a2 i0 in
; let p5_i = bool_to_uint p5 in
; let p6 = builtin add p3 p5_i in
; let a3 = builtin put a1 i1 i0 in
; let a4 = builtin put a3 p6 p3 in
; let p7_i = builtin size a4 in
; builtin add p6 p7_i
; | _ =>
; let p = builtin contains a1 i0 in
; let p1 = bool_to_uint p in
; p1
; end
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_16" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_46" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_45"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_45" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_47"**, %"$TyDescrTy_ADTTyp_46"* }
%"$TyDescrTy_ADTTyp_Constr_47" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_51" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%"$ParamDescr_576" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_577" = type { %ParamDescrString, i32, %"$ParamDescr_576"* }
%Uint32 = type { i32 }
%"$$fundef_14_env_91" = type {}
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%Map_Uint32_Uint32 = type { %Uint32, %Uint32 }
%"TName_Option_Map_(Uint32)_(Uint32)" = type { i8, %"CName_Some_Map_(Uint32)_(Uint32)"*, %"CName_None_Map_(Uint32)_(Uint32)"* }
%"CName_Some_Map_(Uint32)_(Uint32)" = type <{ i8, %Map_Uint32_Uint32* }>
%"CName_None_Map_(Uint32)_(Uint32)" = type <{ i8 }>
%"Map_Uint32_Option_(Map_(Uint32)_(Uint32))" = type { %Uint32, %"TName_Option_Map_(Uint32)_(Uint32)"* }
%"TName_Option_Option_(Map_(Uint32)_(Uint32))" = type { i8, %"CName_Some_Option_(Map_(Uint32)_(Uint32))"*, %"CName_None_Option_(Map_(Uint32)_(Uint32))"* }
%"CName_Some_Option_(Map_(Uint32)_(Uint32))" = type <{ i8, %"TName_Option_Map_(Uint32)_(Uint32)"* }>
%"CName_None_Option_(Map_(Uint32)_(Uint32))" = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_17" = global %"$TyDescrTy_PrimTyp_16" zeroinitializer
@"$TyDescr_Int32_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Int32_Prim_17" to i8*) }
@"$TyDescr_Uint32_Prim_19" = global %"$TyDescrTy_PrimTyp_16" { i32 1, i32 0 }
@"$TyDescr_Uint32_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Uint32_Prim_19" to i8*) }
@"$TyDescr_Int64_Prim_21" = global %"$TyDescrTy_PrimTyp_16" { i32 0, i32 1 }
@"$TyDescr_Int64_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Int64_Prim_21" to i8*) }
@"$TyDescr_Uint64_Prim_23" = global %"$TyDescrTy_PrimTyp_16" { i32 1, i32 1 }
@"$TyDescr_Uint64_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Uint64_Prim_23" to i8*) }
@"$TyDescr_Int128_Prim_25" = global %"$TyDescrTy_PrimTyp_16" { i32 0, i32 2 }
@"$TyDescr_Int128_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Int128_Prim_25" to i8*) }
@"$TyDescr_Uint128_Prim_27" = global %"$TyDescrTy_PrimTyp_16" { i32 1, i32 2 }
@"$TyDescr_Uint128_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Uint128_Prim_27" to i8*) }
@"$TyDescr_Int256_Prim_29" = global %"$TyDescrTy_PrimTyp_16" { i32 0, i32 3 }
@"$TyDescr_Int256_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Int256_Prim_29" to i8*) }
@"$TyDescr_Uint256_Prim_31" = global %"$TyDescrTy_PrimTyp_16" { i32 1, i32 3 }
@"$TyDescr_Uint256_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Uint256_Prim_31" to i8*) }
@"$TyDescr_String_Prim_33" = global %"$TyDescrTy_PrimTyp_16" { i32 2, i32 0 }
@"$TyDescr_String_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_String_Prim_33" to i8*) }
@"$TyDescr_Bnum_Prim_35" = global %"$TyDescrTy_PrimTyp_16" { i32 3, i32 0 }
@"$TyDescr_Bnum_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Bnum_Prim_35" to i8*) }
@"$TyDescr_Message_Prim_37" = global %"$TyDescrTy_PrimTyp_16" { i32 4, i32 0 }
@"$TyDescr_Message_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Message_Prim_37" to i8*) }
@"$TyDescr_Event_Prim_39" = global %"$TyDescrTy_PrimTyp_16" { i32 5, i32 0 }
@"$TyDescr_Event_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Event_Prim_39" to i8*) }
@"$TyDescr_Exception_Prim_41" = global %"$TyDescrTy_PrimTyp_16" { i32 6, i32 0 }
@"$TyDescr_Exception_42" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Exception_Prim_41" to i8*) }
@"$TyDescr_Bystr_Prim_43" = global %"$TyDescrTy_PrimTyp_16" { i32 7, i32 0 }
@"$TyDescr_Bystr_44" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Bystr_Prim_43" to i8*) }
@"$TyDescr_ADT_Option_Option_(Map_(Uint32)_(Uint32))_48" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_45"* @"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_65" to i8*) }
@"$TyDescr_ADT_Option_Map_(Uint32)_(Uint32)_49" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_45"* @"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_74" to i8*) }
@"$TyDescr_ADT_Bool_50" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_45"* @"$TyDescr_Bool_ADTTyp_Specl_86" to i8*) }
@"$TyDescr_Map_52" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_51"* @"$TyDescr_MapTyp_89" to i8*) }
@"$TyDescr_Map_53" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_51"* @"$TyDescr_MapTyp_90" to i8*) }
@"$TyDescr_Option_ADTTyp_56" = unnamed_addr constant %"$TyDescrTy_ADTTyp_46" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_76", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_45"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_45"*], [2 x %"$TyDescrTy_ADTTyp_Specl_45"*]* @"$TyDescr_Option_ADTTyp_m_specls_75", i32 0, i32 0) }
@"$TyDescr_Option_Some_Option_(Map_(Uint32)_(Uint32))_Constr_m_args_57" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(Uint32)_(Uint32)_49"]
@"$TyDescr_ADT_Some_58" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Constr_59" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_47" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_58", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Option_(Map_(Uint32)_(Uint32))_Constr_m_args_57", i32 0, i32 0) }
@"$TyDescr_Option_None_Option_(Map_(Uint32)_(Uint32))_Constr_m_args_60" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_61" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Constr_62" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_47" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_61", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Option_(Map_(Uint32)_(Uint32))_Constr_m_args_60", i32 0, i32 0) }
@"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_m_constrs_63" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_47"*] [%"$TyDescrTy_ADTTyp_Constr_47"* @"$TyDescr_Option_Some_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Constr_59", %"$TyDescrTy_ADTTyp_Constr_47"* @"$TyDescr_Option_None_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Constr_62"]
@"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_m_TArgs_64" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(Uint32)_(Uint32)_49"]
@"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_65" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_45" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_m_TArgs_64", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_47"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_47"*], [2 x %"$TyDescrTy_ADTTyp_Constr_47"*]* @"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_m_constrs_63", i32 0, i32 0), %"$TyDescrTy_ADTTyp_46"* @"$TyDescr_Option_ADTTyp_56" }
@"$TyDescr_Option_Some_Map_(Uint32)_(Uint32)_Constr_m_args_66" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_53"]
@"$TyDescr_ADT_Some_67" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Map_(Uint32)_(Uint32)_ADTTyp_Constr_68" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_47" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_67", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Map_(Uint32)_(Uint32)_Constr_m_args_66", i32 0, i32 0) }
@"$TyDescr_Option_None_Map_(Uint32)_(Uint32)_Constr_m_args_69" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_70" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Map_(Uint32)_(Uint32)_ADTTyp_Constr_71" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_47" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_70", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Map_(Uint32)_(Uint32)_Constr_m_args_69", i32 0, i32 0) }
@"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_m_constrs_72" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_47"*] [%"$TyDescrTy_ADTTyp_Constr_47"* @"$TyDescr_Option_Some_Map_(Uint32)_(Uint32)_ADTTyp_Constr_68", %"$TyDescrTy_ADTTyp_Constr_47"* @"$TyDescr_Option_None_Map_(Uint32)_(Uint32)_ADTTyp_Constr_71"]
@"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_m_TArgs_73" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_53"]
@"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_74" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_45" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_m_TArgs_73", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_47"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_47"*], [2 x %"$TyDescrTy_ADTTyp_Constr_47"*]* @"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_m_constrs_72", i32 0, i32 0), %"$TyDescrTy_ADTTyp_46"* @"$TyDescr_Option_ADTTyp_56" }
@"$TyDescr_Option_ADTTyp_m_specls_75" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_45"*] [%"$TyDescrTy_ADTTyp_Specl_45"* @"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_65", %"$TyDescrTy_ADTTyp_Specl_45"* @"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_74"]
@"$TyDescr_ADT_Option_76" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Bool_ADTTyp_77" = unnamed_addr constant %"$TyDescrTy_ADTTyp_46" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_88", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_45"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_45"*], [1 x %"$TyDescrTy_ADTTyp_Specl_45"*]* @"$TyDescr_Bool_ADTTyp_m_specls_87", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_78" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_79" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_80" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_47" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_79", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_78", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_81" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_82" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_83" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_47" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_82", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_81", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_84" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_47"*] [%"$TyDescrTy_ADTTyp_Constr_47"* @"$TyDescr_Bool_True_ADTTyp_Constr_80", %"$TyDescrTy_ADTTyp_Constr_47"* @"$TyDescr_Bool_False_ADTTyp_Constr_83"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_85" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_86" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_45" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_85", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_47"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_47"*], [2 x %"$TyDescrTy_ADTTyp_Constr_47"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_84", i32 0, i32 0), %"$TyDescrTy_ADTTyp_46"* @"$TyDescr_Bool_ADTTyp_77" }
@"$TyDescr_Bool_ADTTyp_m_specls_87" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_45"*] [%"$TyDescrTy_ADTTyp_Specl_45"* @"$TyDescr_Bool_ADTTyp_Specl_86"]
@"$TyDescr_ADT_Bool_88" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_MapTyp_89" = unnamed_addr constant %"$TyDescr_MapTyp_51" { %_TyDescrTy_Typ* @"$TyDescr_Uint32_20", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(Uint32)_(Uint32)_49" }
@"$TyDescr_MapTyp_90" = unnamed_addr constant %"$TyDescr_MapTyp_51" { %_TyDescrTy_Typ* @"$TyDescr_Uint32_20", %_TyDescrTy_Typ* @"$TyDescr_Uint32_20" }
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_40", %_TyDescrTy_Typ* @"$TyDescr_Int64_22", %_TyDescrTy_Typ* @"$TyDescr_Map_52", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_50", %_TyDescrTy_Typ* @"$TyDescr_Uint256_32", %_TyDescrTy_Typ* @"$TyDescr_Uint32_20", %_TyDescrTy_Typ* @"$TyDescr_Uint64_24", %_TyDescrTy_Typ* @"$TyDescr_Bnum_36", %_TyDescrTy_Typ* @"$TyDescr_Uint128_28", %_TyDescrTy_Typ* @"$TyDescr_Exception_42", %_TyDescrTy_Typ* @"$TyDescr_String_34", %_TyDescrTy_Typ* @"$TyDescr_Int256_30", %_TyDescrTy_Typ* @"$TyDescr_Int128_26", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(Uint32)_(Uint32)_49", %_TyDescrTy_Typ* @"$TyDescr_Bystr_44", %_TyDescrTy_Typ* @"$TyDescr_Message_38", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Option_(Map_(Uint32)_(Uint32))_48", %_TyDescrTy_Typ* @"$TyDescr_Map_53", %_TyDescrTy_Typ* @"$TyDescr_Int32_18"]
@_tydescr_table_length = constant i32 19
@_contract_parameters = constant [0 x %"$ParamDescr_576"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_577"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Uint32 @"$fundef_14"(%"$$fundef_14_env_91"* %0, %TName_Bool* %1) !dbg !4 {
entry:
  %"$retval_15" = alloca %Uint32, align 8
  %"$gasrem_92" = load i64, i64* @_gasrem, align 8
  %"$gascmp_93" = icmp ugt i64 2, %"$gasrem_92"
  br i1 %"$gascmp_93", label %"$out_of_gas_94", label %"$have_gas_95"

"$out_of_gas_94":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_95"

"$have_gas_95":                                   ; preds = %"$out_of_gas_94", %entry
  %"$consume_96" = sub i64 %"$gasrem_92", 2
  store i64 %"$consume_96", i64* @_gasrem, align 8
  %"$b_tag_98" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b_tag_99" = load i8, i8* %"$b_tag_98", align 1
  switch i8 %"$b_tag_99", label %"$empty_default_100" [
    i8 0, label %"$True_101"
    i8 1, label %"$False_108"
  ], !dbg !8

"$True_101":                                      ; preds = %"$have_gas_95"
  %"$b_102" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_104" = icmp ugt i64 1, %"$gasrem_103"
  br i1 %"$gascmp_104", label %"$out_of_gas_105", label %"$have_gas_106"

"$out_of_gas_105":                                ; preds = %"$True_101"
  call void @_out_of_gas()
  br label %"$have_gas_106"

"$have_gas_106":                                  ; preds = %"$out_of_gas_105", %"$True_101"
  %"$consume_107" = sub i64 %"$gasrem_103", 1
  store i64 %"$consume_107", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %"$retval_15", align 4, !dbg !9
  br label %"$matchsucc_97"

"$False_108":                                     ; preds = %"$have_gas_95"
  %"$b_109" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 1, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %"$False_108"
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %"$False_108"
  %"$consume_114" = sub i64 %"$gasrem_110", 1
  store i64 %"$consume_114", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %"$retval_15", align 4, !dbg !12
  br label %"$matchsucc_97"

"$empty_default_100":                             ; preds = %"$have_gas_95"
  br label %"$matchsucc_97"

"$matchsucc_97":                                  ; preds = %"$have_gas_113", %"$have_gas_106", %"$empty_default_100"
  %"$$retval_15_115" = load %Uint32, %Uint32* %"$retval_15", align 4
  ret %Uint32 %"$$retval_15_115"
}

declare void @_out_of_gas()

define void @_init_libs() !dbg !14 {
entry:
  %"$gasrem_116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_117" = icmp ugt i64 5, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %entry
  %"$consume_120" = sub i64 %"$gasrem_116", 5
  store i64 %"$consume_120", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !16
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 8, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %"$have_gas_119"
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %"$have_gas_119"
  %"$consume_125" = sub i64 %"$gasrem_121", 8
  store i64 %"$consume_125", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !16
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 196, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %"$have_gas_124"
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %"$have_gas_124"
  %"$consume_130" = sub i64 %"$gasrem_126", 196
  store i64 %"$consume_130", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !16
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 20, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$have_gas_129"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$have_gas_129"
  %"$consume_135" = sub i64 %"$gasrem_131", 20
  store i64 %"$consume_135", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !16
  %"$gasrem_136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_137" = icmp ugt i64 12, %"$gasrem_136"
  br i1 %"$gascmp_137", label %"$out_of_gas_138", label %"$have_gas_139"

"$out_of_gas_138":                                ; preds = %"$have_gas_134"
  call void @_out_of_gas()
  br label %"$have_gas_139"

"$have_gas_139":                                  ; preds = %"$out_of_gas_138", %"$have_gas_134"
  %"$consume_140" = sub i64 %"$gasrem_136", 12
  store i64 %"$consume_140", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !16
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 2, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %"$have_gas_139"
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %"$have_gas_139"
  %"$consume_145" = sub i64 %"$gasrem_141", 2
  store i64 %"$consume_145", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !16
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !17 {
entry:
  %"$expr_13" = alloca %Uint32, align 8
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %entry
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem, align 8
  %bool_to_uint = alloca { %Uint32 (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 1, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %"$have_gas_149"
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %"$have_gas_149"
  %"$consume_155" = sub i64 %"$gasrem_151", 1
  store i64 %"$consume_155", i64* @_gasrem, align 8
  store { %Uint32 (i8*, %TName_Bool*)*, i8* } { %Uint32 (i8*, %TName_Bool*)* bitcast (%Uint32 (%"$$fundef_14_env_91"*, %TName_Bool*)* @"$fundef_14" to %Uint32 (i8*, %TName_Bool*)*), i8* null }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8, !dbg !18
  %"$gasrem_159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_160" = icmp ugt i64 1, %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %"$have_gas_154"
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %"$have_gas_154"
  %"$consume_163" = sub i64 %"$gasrem_159", 1
  store i64 %"$consume_163", i64* @_gasrem, align 8
  %i0 = alloca %Uint32, align 8
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 1, %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %"$have_gas_162"
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %"$have_gas_162"
  %"$consume_168" = sub i64 %"$gasrem_164", 1
  store i64 %"$consume_168", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %i0, align 4, !dbg !19
  %"$gasrem_169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_170" = icmp ugt i64 1, %"$gasrem_169"
  br i1 %"$gascmp_170", label %"$out_of_gas_171", label %"$have_gas_172"

"$out_of_gas_171":                                ; preds = %"$have_gas_167"
  call void @_out_of_gas()
  br label %"$have_gas_172"

"$have_gas_172":                                  ; preds = %"$out_of_gas_171", %"$have_gas_167"
  %"$consume_173" = sub i64 %"$gasrem_169", 1
  store i64 %"$consume_173", i64* @_gasrem, align 8
  %i1 = alloca %Uint32, align 8
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %"$have_gas_172"
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %"$have_gas_172"
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %i1, align 4, !dbg !20
  %"$gasrem_179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_180" = icmp ugt i64 1, %"$gasrem_179"
  br i1 %"$gascmp_180", label %"$out_of_gas_181", label %"$have_gas_182"

"$out_of_gas_181":                                ; preds = %"$have_gas_177"
  call void @_out_of_gas()
  br label %"$have_gas_182"

"$have_gas_182":                                  ; preds = %"$out_of_gas_181", %"$have_gas_177"
  %"$consume_183" = sub i64 %"$gasrem_179", 1
  store i64 %"$consume_183", i64* @_gasrem, align 8
  %a = alloca %Map_Uint32_Uint32*, align 8
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %"$have_gas_182"
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %"$have_gas_182"
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem, align 8
  %"$execptr_load_189" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_190" = call i8* @_new_empty_map(i8* %"$execptr_load_189")
  %"$_new_empty_map_191" = bitcast i8* %"$_new_empty_map_call_190" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$_new_empty_map_191", %Map_Uint32_Uint32** %a, align 8, !dbg !21
  %"$gasrem_192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_193" = icmp ugt i64 1, %"$gasrem_192"
  br i1 %"$gascmp_193", label %"$out_of_gas_194", label %"$have_gas_195"

"$out_of_gas_194":                                ; preds = %"$have_gas_187"
  call void @_out_of_gas()
  br label %"$have_gas_195"

"$have_gas_195":                                  ; preds = %"$out_of_gas_194", %"$have_gas_187"
  %"$consume_196" = sub i64 %"$gasrem_192", 1
  store i64 %"$consume_196", i64* @_gasrem, align 8
  %a1 = alloca %Map_Uint32_Uint32*, align 8
  %"$a_197" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a, align 8
  %"$$a_197_198" = bitcast %Map_Uint32_Uint32* %"$a_197" to i8*
  %"$_lengthof_call_199" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_53", i8* %"$$a_197_198")
  %"$gasadd_200" = add i64 1, %"$_lengthof_call_199"
  %"$gasrem_201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_202" = icmp ugt i64 %"$gasadd_200", %"$gasrem_201"
  br i1 %"$gascmp_202", label %"$out_of_gas_203", label %"$have_gas_204"

"$out_of_gas_203":                                ; preds = %"$have_gas_195"
  call void @_out_of_gas()
  br label %"$have_gas_204"

"$have_gas_204":                                  ; preds = %"$out_of_gas_203", %"$have_gas_195"
  %"$consume_205" = sub i64 %"$gasrem_201", %"$gasadd_200"
  store i64 %"$consume_205", i64* @_gasrem, align 8
  %"$execptr_load_206" = load i8*, i8** @_execptr, align 8
  %"$a_207" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a, align 8
  %"$$a_207_208" = bitcast %Map_Uint32_Uint32* %"$a_207" to i8*
  %"$put_i0_209" = alloca %Uint32, align 8
  %"$i0_210" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_210", %Uint32* %"$put_i0_209", align 4
  %"$$put_i0_209_211" = bitcast %Uint32* %"$put_i0_209" to i8*
  %"$put_i1_212" = alloca %Uint32, align 8
  %"$i1_213" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_213", %Uint32* %"$put_i1_212", align 4
  %"$$put_i1_212_214" = bitcast %Uint32* %"$put_i1_212" to i8*
  %"$put_call_215" = call i8* @_put(i8* %"$execptr_load_206", %_TyDescrTy_Typ* @"$TyDescr_Map_53", i8* %"$$a_207_208", i8* %"$$put_i0_209_211", i8* %"$$put_i1_212_214"), !dbg !22
  %"$put_216" = bitcast i8* %"$put_call_215" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$put_216", %Map_Uint32_Uint32** %a1, align 8, !dbg !22
  %"$gasrem_217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_218" = icmp ugt i64 1, %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %"$have_gas_204"
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %"$have_gas_204"
  %"$consume_221" = sub i64 %"$gasrem_217", 1
  store i64 %"$consume_221", i64* @_gasrem, align 8
  %o = alloca %"TName_Option_Map_(Uint32)_(Uint32)"*, align 8
  %"$gasrem_222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_223" = icmp ugt i64 1, %"$gasrem_222"
  br i1 %"$gascmp_223", label %"$out_of_gas_224", label %"$have_gas_225"

"$out_of_gas_224":                                ; preds = %"$have_gas_220"
  call void @_out_of_gas()
  br label %"$have_gas_225"

"$have_gas_225":                                  ; preds = %"$out_of_gas_224", %"$have_gas_220"
  %"$consume_226" = sub i64 %"$gasrem_222", 1
  store i64 %"$consume_226", i64* @_gasrem, align 8
  %"$a1_227" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a1, align 8
  %"$adtval_228_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_228_salloc" = call i8* @_salloc(i8* %"$adtval_228_load", i64 9)
  %"$adtval_228" = bitcast i8* %"$adtval_228_salloc" to %"CName_Some_Map_(Uint32)_(Uint32)"*
  %"$adtgep_229" = getelementptr inbounds %"CName_Some_Map_(Uint32)_(Uint32)", %"CName_Some_Map_(Uint32)_(Uint32)"* %"$adtval_228", i32 0, i32 0
  store i8 0, i8* %"$adtgep_229", align 1
  %"$adtgep_230" = getelementptr inbounds %"CName_Some_Map_(Uint32)_(Uint32)", %"CName_Some_Map_(Uint32)_(Uint32)"* %"$adtval_228", i32 0, i32 1
  store %Map_Uint32_Uint32* %"$a1_227", %Map_Uint32_Uint32** %"$adtgep_230", align 8
  %"$adtptr_231" = bitcast %"CName_Some_Map_(Uint32)_(Uint32)"* %"$adtval_228" to %"TName_Option_Map_(Uint32)_(Uint32)"*
  store %"TName_Option_Map_(Uint32)_(Uint32)"* %"$adtptr_231", %"TName_Option_Map_(Uint32)_(Uint32)"** %o, align 8, !dbg !23
  %"$gasrem_232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_233" = icmp ugt i64 1, %"$gasrem_232"
  br i1 %"$gascmp_233", label %"$out_of_gas_234", label %"$have_gas_235"

"$out_of_gas_234":                                ; preds = %"$have_gas_225"
  call void @_out_of_gas()
  br label %"$have_gas_235"

"$have_gas_235":                                  ; preds = %"$out_of_gas_234", %"$have_gas_225"
  %"$consume_236" = sub i64 %"$gasrem_232", 1
  store i64 %"$consume_236", i64* @_gasrem, align 8
  %b = alloca %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, align 8
  %"$gasrem_237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_238" = icmp ugt i64 1, %"$gasrem_237"
  br i1 %"$gascmp_238", label %"$out_of_gas_239", label %"$have_gas_240"

"$out_of_gas_239":                                ; preds = %"$have_gas_235"
  call void @_out_of_gas()
  br label %"$have_gas_240"

"$have_gas_240":                                  ; preds = %"$out_of_gas_239", %"$have_gas_235"
  %"$consume_241" = sub i64 %"$gasrem_237", 1
  store i64 %"$consume_241", i64* @_gasrem, align 8
  %"$execptr_load_242" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_243" = call i8* @_new_empty_map(i8* %"$execptr_load_242")
  %"$_new_empty_map_244" = bitcast i8* %"$_new_empty_map_call_243" to %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*
  store %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$_new_empty_map_244", %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b, align 8, !dbg !24
  %"$gasrem_245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_246" = icmp ugt i64 1, %"$gasrem_245"
  br i1 %"$gascmp_246", label %"$out_of_gas_247", label %"$have_gas_248"

"$out_of_gas_247":                                ; preds = %"$have_gas_240"
  call void @_out_of_gas()
  br label %"$have_gas_248"

"$have_gas_248":                                  ; preds = %"$out_of_gas_247", %"$have_gas_240"
  %"$consume_249" = sub i64 %"$gasrem_245", 1
  store i64 %"$consume_249", i64* @_gasrem, align 8
  %b1 = alloca %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, align 8
  %"$b_250" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b, align 8
  %"$$b_250_251" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b_250" to i8*
  %"$_lengthof_call_252" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_52", i8* %"$$b_250_251")
  %"$gasadd_253" = add i64 1, %"$_lengthof_call_252"
  %"$gasrem_254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_255" = icmp ugt i64 %"$gasadd_253", %"$gasrem_254"
  br i1 %"$gascmp_255", label %"$out_of_gas_256", label %"$have_gas_257"

"$out_of_gas_256":                                ; preds = %"$have_gas_248"
  call void @_out_of_gas()
  br label %"$have_gas_257"

"$have_gas_257":                                  ; preds = %"$out_of_gas_256", %"$have_gas_248"
  %"$consume_258" = sub i64 %"$gasrem_254", %"$gasadd_253"
  store i64 %"$consume_258", i64* @_gasrem, align 8
  %"$execptr_load_259" = load i8*, i8** @_execptr, align 8
  %"$b_260" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b, align 8
  %"$$b_260_261" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b_260" to i8*
  %"$put_i1_262" = alloca %Uint32, align 8
  %"$i1_263" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_263", %Uint32* %"$put_i1_262", align 4
  %"$$put_i1_262_264" = bitcast %Uint32* %"$put_i1_262" to i8*
  %"$o_265" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %o, align 8
  %"$$o_265_266" = bitcast %"TName_Option_Map_(Uint32)_(Uint32)"* %"$o_265" to i8*
  %"$put_call_267" = call i8* @_put(i8* %"$execptr_load_259", %_TyDescrTy_Typ* @"$TyDescr_Map_52", i8* %"$$b_260_261", i8* %"$$put_i1_262_264", i8* %"$$o_265_266"), !dbg !25
  %"$put_268" = bitcast i8* %"$put_call_267" to %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*
  store %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$put_268", %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1, align 8, !dbg !25
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 1, %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %"$have_gas_257"
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %"$have_gas_257"
  %"$consume_273" = sub i64 %"$gasrem_269", 1
  store i64 %"$consume_273", i64* @_gasrem, align 8
  %res1 = alloca %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*, align 8
  %"$gasrem_274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_275" = icmp ugt i64 1, %"$gasrem_274"
  br i1 %"$gascmp_275", label %"$out_of_gas_276", label %"$have_gas_277"

"$out_of_gas_276":                                ; preds = %"$have_gas_272"
  call void @_out_of_gas()
  br label %"$have_gas_277"

"$have_gas_277":                                  ; preds = %"$out_of_gas_276", %"$have_gas_272"
  %"$consume_278" = sub i64 %"$gasrem_274", 1
  store i64 %"$consume_278", i64* @_gasrem, align 8
  %"$execptr_load_279" = load i8*, i8** @_execptr, align 8
  %"$b1_280" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1, align 8
  %"$$b1_280_281" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b1_280" to i8*
  %"$get_i1_282" = alloca %Uint32, align 8
  %"$i1_283" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_283", %Uint32* %"$get_i1_282", align 4
  %"$$get_i1_282_284" = bitcast %Uint32* %"$get_i1_282" to i8*
  %"$get_call_285" = call i8* @_get(i8* %"$execptr_load_279", %_TyDescrTy_Typ* @"$TyDescr_Map_52", i8* %"$$b1_280_281", i8* %"$$get_i1_282_284"), !dbg !26
  %"$get_286" = bitcast i8* %"$get_call_285" to %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*
  store %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$get_286", %"TName_Option_Option_(Map_(Uint32)_(Uint32))"** %res1, align 8, !dbg !26
  %"$gasrem_287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_288" = icmp ugt i64 2, %"$gasrem_287"
  br i1 %"$gascmp_288", label %"$out_of_gas_289", label %"$have_gas_290"

"$out_of_gas_289":                                ; preds = %"$have_gas_277"
  call void @_out_of_gas()
  br label %"$have_gas_290"

"$have_gas_290":                                  ; preds = %"$out_of_gas_289", %"$have_gas_277"
  %"$consume_291" = sub i64 %"$gasrem_287", 2
  store i64 %"$consume_291", i64* @_gasrem, align 8
  %"$res1_333" = load %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*, %"TName_Option_Option_(Map_(Uint32)_(Uint32))"** %res1, align 8
  %"$res1_tag_334" = getelementptr inbounds %"TName_Option_Option_(Map_(Uint32)_(Uint32))", %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$res1_333", i32 0, i32 0
  %"$res1_tag_335" = load i8, i8* %"$res1_tag_334", align 1
  switch i8 %"$res1_tag_335", label %"$default_336" [
    i8 0, label %"$Some_337"
  ], !dbg !27

"$Some_337":                                      ; preds = %"$have_gas_290"
  %"$res1_338" = bitcast %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$res1_333" to %"CName_Some_Option_(Map_(Uint32)_(Uint32))"*
  %"$$res1_8_gep_339" = getelementptr inbounds %"CName_Some_Option_(Map_(Uint32)_(Uint32))", %"CName_Some_Option_(Map_(Uint32)_(Uint32))"* %"$res1_338", i32 0, i32 1
  %"$$res1_8_load_340" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %"$$res1_8_gep_339", align 8
  %"$res1_8" = alloca %"TName_Option_Map_(Uint32)_(Uint32)"*, align 8
  store %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_8_load_340", %"TName_Option_Map_(Uint32)_(Uint32)"** %"$res1_8", align 8
  %"$$res1_8_342" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %"$res1_8", align 8
  %"$$res1_8_tag_343" = getelementptr inbounds %"TName_Option_Map_(Uint32)_(Uint32)", %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_8_342", i32 0, i32 0
  %"$$res1_8_tag_344" = load i8, i8* %"$$res1_8_tag_343", align 1
  switch i8 %"$$res1_8_tag_344", label %"$default_345" [
    i8 0, label %"$Some_346"
  ], !dbg !28

"$Some_346":                                      ; preds = %"$Some_337"
  %"$$res1_8_347" = bitcast %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_8_342" to %"CName_Some_Map_(Uint32)_(Uint32)"*
  %"$$a1_6_gep_348" = getelementptr inbounds %"CName_Some_Map_(Uint32)_(Uint32)", %"CName_Some_Map_(Uint32)_(Uint32)"* %"$$res1_8_347", i32 0, i32 1
  %"$$a1_6_load_349" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$$a1_6_gep_348", align 8
  %"$a1_6" = alloca %Map_Uint32_Uint32*, align 8
  store %Map_Uint32_Uint32* %"$$a1_6_load_349", %Map_Uint32_Uint32** %"$a1_6", align 8
  %"$gasrem_350" = load i64, i64* @_gasrem, align 8
  %"$gascmp_351" = icmp ugt i64 1, %"$gasrem_350"
  br i1 %"$gascmp_351", label %"$out_of_gas_352", label %"$have_gas_353"

"$out_of_gas_352":                                ; preds = %"$Some_346"
  call void @_out_of_gas()
  br label %"$have_gas_353"

"$have_gas_353":                                  ; preds = %"$out_of_gas_352", %"$Some_346"
  %"$consume_354" = sub i64 %"$gasrem_350", 1
  store i64 %"$consume_354", i64* @_gasrem, align 8
  %p11 = alloca %TName_Bool*, align 8
  %"$gasrem_355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_356" = icmp ugt i64 1, %"$gasrem_355"
  br i1 %"$gascmp_356", label %"$out_of_gas_357", label %"$have_gas_358"

"$out_of_gas_357":                                ; preds = %"$have_gas_353"
  call void @_out_of_gas()
  br label %"$have_gas_358"

"$have_gas_358":                                  ; preds = %"$out_of_gas_357", %"$have_gas_353"
  %"$consume_359" = sub i64 %"$gasrem_355", 1
  store i64 %"$consume_359", i64* @_gasrem, align 8
  %"$execptr_load_360" = load i8*, i8** @_execptr, align 8
  %"$b1_361" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1, align 8
  %"$$b1_361_362" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b1_361" to i8*
  %"$contains_i1_363" = alloca %Uint32, align 8
  %"$i1_364" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_364", %Uint32* %"$contains_i1_363", align 4
  %"$$contains_i1_363_365" = bitcast %Uint32* %"$contains_i1_363" to i8*
  %"$contains_call_366" = call %TName_Bool* @_contains(i8* %"$execptr_load_360", %_TyDescrTy_Typ* @"$TyDescr_Map_52", i8* %"$$b1_361_362", i8* %"$$contains_i1_363_365"), !dbg !31
  store %TName_Bool* %"$contains_call_366", %TName_Bool** %p11, align 8, !dbg !31
  %"$gasrem_368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_369" = icmp ugt i64 1, %"$gasrem_368"
  br i1 %"$gascmp_369", label %"$out_of_gas_370", label %"$have_gas_371"

"$out_of_gas_370":                                ; preds = %"$have_gas_358"
  call void @_out_of_gas()
  br label %"$have_gas_371"

"$have_gas_371":                                  ; preds = %"$out_of_gas_370", %"$have_gas_358"
  %"$consume_372" = sub i64 %"$gasrem_368", 1
  store i64 %"$consume_372", i64* @_gasrem, align 8
  %p1_i = alloca %Uint32, align 8
  %"$gasrem_373" = load i64, i64* @_gasrem, align 8
  %"$gascmp_374" = icmp ugt i64 1, %"$gasrem_373"
  br i1 %"$gascmp_374", label %"$out_of_gas_375", label %"$have_gas_376"

"$out_of_gas_375":                                ; preds = %"$have_gas_371"
  call void @_out_of_gas()
  br label %"$have_gas_376"

"$have_gas_376":                                  ; preds = %"$out_of_gas_375", %"$have_gas_371"
  %"$consume_377" = sub i64 %"$gasrem_373", 1
  store i64 %"$consume_377", i64* @_gasrem, align 8
  %"$bool_to_uint_9" = alloca %Uint32, align 8
  %"$bool_to_uint_378" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_379" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_378", 0
  %"$bool_to_uint_envptr_380" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_378", 1
  %"$p1_381" = load %TName_Bool*, %TName_Bool** %p11, align 8
  %"$bool_to_uint_call_382" = call %Uint32 %"$bool_to_uint_fptr_379"(i8* %"$bool_to_uint_envptr_380", %TName_Bool* %"$p1_381"), !dbg !34
  store %Uint32 %"$bool_to_uint_call_382", %Uint32* %"$bool_to_uint_9", align 4, !dbg !34
  %"$$bool_to_uint_9_383" = load %Uint32, %Uint32* %"$bool_to_uint_9", align 4
  store %Uint32 %"$$bool_to_uint_9_383", %Uint32* %p1_i, align 4, !dbg !34
  %"$gasrem_384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_385" = icmp ugt i64 1, %"$gasrem_384"
  br i1 %"$gascmp_385", label %"$out_of_gas_386", label %"$have_gas_387"

"$out_of_gas_386":                                ; preds = %"$have_gas_376"
  call void @_out_of_gas()
  br label %"$have_gas_387"

"$have_gas_387":                                  ; preds = %"$out_of_gas_386", %"$have_gas_376"
  %"$consume_388" = sub i64 %"$gasrem_384", 1
  store i64 %"$consume_388", i64* @_gasrem, align 8
  %p2 = alloca %TName_Bool*, align 8
  %"$gasrem_389" = load i64, i64* @_gasrem, align 8
  %"$gascmp_390" = icmp ugt i64 1, %"$gasrem_389"
  br i1 %"$gascmp_390", label %"$out_of_gas_391", label %"$have_gas_392"

"$out_of_gas_391":                                ; preds = %"$have_gas_387"
  call void @_out_of_gas()
  br label %"$have_gas_392"

"$have_gas_392":                                  ; preds = %"$out_of_gas_391", %"$have_gas_387"
  %"$consume_393" = sub i64 %"$gasrem_389", 1
  store i64 %"$consume_393", i64* @_gasrem, align 8
  %"$execptr_load_394" = load i8*, i8** @_execptr, align 8
  %"$$a1_6_395" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_6", align 8
  %"$$$a1_6_395_396" = bitcast %Map_Uint32_Uint32* %"$$a1_6_395" to i8*
  %"$contains_i0_397" = alloca %Uint32, align 8
  %"$i0_398" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_398", %Uint32* %"$contains_i0_397", align 4
  %"$$contains_i0_397_399" = bitcast %Uint32* %"$contains_i0_397" to i8*
  %"$contains_call_400" = call %TName_Bool* @_contains(i8* %"$execptr_load_394", %_TyDescrTy_Typ* @"$TyDescr_Map_53", i8* %"$$$a1_6_395_396", i8* %"$$contains_i0_397_399"), !dbg !35
  store %TName_Bool* %"$contains_call_400", %TName_Bool** %p2, align 8, !dbg !35
  %"$gasrem_402" = load i64, i64* @_gasrem, align 8
  %"$gascmp_403" = icmp ugt i64 1, %"$gasrem_402"
  br i1 %"$gascmp_403", label %"$out_of_gas_404", label %"$have_gas_405"

"$out_of_gas_404":                                ; preds = %"$have_gas_392"
  call void @_out_of_gas()
  br label %"$have_gas_405"

"$have_gas_405":                                  ; preds = %"$out_of_gas_404", %"$have_gas_392"
  %"$consume_406" = sub i64 %"$gasrem_402", 1
  store i64 %"$consume_406", i64* @_gasrem, align 8
  %p2_i = alloca %Uint32, align 8
  %"$gasrem_407" = load i64, i64* @_gasrem, align 8
  %"$gascmp_408" = icmp ugt i64 1, %"$gasrem_407"
  br i1 %"$gascmp_408", label %"$out_of_gas_409", label %"$have_gas_410"

"$out_of_gas_409":                                ; preds = %"$have_gas_405"
  call void @_out_of_gas()
  br label %"$have_gas_410"

"$have_gas_410":                                  ; preds = %"$out_of_gas_409", %"$have_gas_405"
  %"$consume_411" = sub i64 %"$gasrem_407", 1
  store i64 %"$consume_411", i64* @_gasrem, align 8
  %"$bool_to_uint_10" = alloca %Uint32, align 8
  %"$bool_to_uint_412" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_413" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_412", 0
  %"$bool_to_uint_envptr_414" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_412", 1
  %"$p2_415" = load %TName_Bool*, %TName_Bool** %p2, align 8
  %"$bool_to_uint_call_416" = call %Uint32 %"$bool_to_uint_fptr_413"(i8* %"$bool_to_uint_envptr_414", %TName_Bool* %"$p2_415"), !dbg !36
  store %Uint32 %"$bool_to_uint_call_416", %Uint32* %"$bool_to_uint_10", align 4, !dbg !36
  %"$$bool_to_uint_10_417" = load %Uint32, %Uint32* %"$bool_to_uint_10", align 4
  store %Uint32 %"$$bool_to_uint_10_417", %Uint32* %p2_i, align 4, !dbg !36
  %"$gasrem_418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_419" = icmp ugt i64 1, %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %"$have_gas_410"
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %"$have_gas_410"
  %"$consume_422" = sub i64 %"$gasrem_418", 1
  store i64 %"$consume_422", i64* @_gasrem, align 8
  %p3 = alloca %Uint32, align 8
  %"$gasrem_423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_424" = icmp ugt i64 4, %"$gasrem_423"
  br i1 %"$gascmp_424", label %"$out_of_gas_425", label %"$have_gas_426"

"$out_of_gas_425":                                ; preds = %"$have_gas_421"
  call void @_out_of_gas()
  br label %"$have_gas_426"

"$have_gas_426":                                  ; preds = %"$out_of_gas_425", %"$have_gas_421"
  %"$consume_427" = sub i64 %"$gasrem_423", 4
  store i64 %"$consume_427", i64* @_gasrem, align 8
  %"$p1_i_428" = load %Uint32, %Uint32* %p1_i, align 4
  %"$p2_i_429" = load %Uint32, %Uint32* %p2_i, align 4
  %"$add_call_430" = call %Uint32 @_add_Uint32(%Uint32 %"$p1_i_428", %Uint32 %"$p2_i_429"), !dbg !37
  store %Uint32 %"$add_call_430", %Uint32* %p3, align 4, !dbg !37
  %"$gasrem_431" = load i64, i64* @_gasrem, align 8
  %"$gascmp_432" = icmp ugt i64 1, %"$gasrem_431"
  br i1 %"$gascmp_432", label %"$out_of_gas_433", label %"$have_gas_434"

"$out_of_gas_433":                                ; preds = %"$have_gas_426"
  call void @_out_of_gas()
  br label %"$have_gas_434"

"$have_gas_434":                                  ; preds = %"$out_of_gas_433", %"$have_gas_426"
  %"$consume_435" = sub i64 %"$gasrem_431", 1
  store i64 %"$consume_435", i64* @_gasrem, align 8
  %a2 = alloca %Map_Uint32_Uint32*, align 8
  %"$$a1_6_436" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_6", align 8
  %"$$$a1_6_436_437" = bitcast %Map_Uint32_Uint32* %"$$a1_6_436" to i8*
  %"$_lengthof_call_438" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_53", i8* %"$$$a1_6_436_437")
  %"$gasadd_439" = add i64 1, %"$_lengthof_call_438"
  %"$gasrem_440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_441" = icmp ugt i64 %"$gasadd_439", %"$gasrem_440"
  br i1 %"$gascmp_441", label %"$out_of_gas_442", label %"$have_gas_443"

"$out_of_gas_442":                                ; preds = %"$have_gas_434"
  call void @_out_of_gas()
  br label %"$have_gas_443"

"$have_gas_443":                                  ; preds = %"$out_of_gas_442", %"$have_gas_434"
  %"$consume_444" = sub i64 %"$gasrem_440", %"$gasadd_439"
  store i64 %"$consume_444", i64* @_gasrem, align 8
  %"$execptr_load_445" = load i8*, i8** @_execptr, align 8
  %"$$a1_6_446" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_6", align 8
  %"$$$a1_6_446_447" = bitcast %Map_Uint32_Uint32* %"$$a1_6_446" to i8*
  %"$remove_i1_448" = alloca %Uint32, align 8
  %"$i1_449" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_449", %Uint32* %"$remove_i1_448", align 4
  %"$$remove_i1_448_450" = bitcast %Uint32* %"$remove_i1_448" to i8*
  %"$remove_call_451" = call i8* @_remove(i8* %"$execptr_load_445", %_TyDescrTy_Typ* @"$TyDescr_Map_53", i8* %"$$$a1_6_446_447", i8* %"$$remove_i1_448_450"), !dbg !38
  %"$remove_452" = bitcast i8* %"$remove_call_451" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$remove_452", %Map_Uint32_Uint32** %a2, align 8, !dbg !38
  %"$gasrem_453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_454" = icmp ugt i64 1, %"$gasrem_453"
  br i1 %"$gascmp_454", label %"$out_of_gas_455", label %"$have_gas_456"

"$out_of_gas_455":                                ; preds = %"$have_gas_443"
  call void @_out_of_gas()
  br label %"$have_gas_456"

"$have_gas_456":                                  ; preds = %"$out_of_gas_455", %"$have_gas_443"
  %"$consume_457" = sub i64 %"$gasrem_453", 1
  store i64 %"$consume_457", i64* @_gasrem, align 8
  %p5 = alloca %TName_Bool*, align 8
  %"$gasrem_458" = load i64, i64* @_gasrem, align 8
  %"$gascmp_459" = icmp ugt i64 1, %"$gasrem_458"
  br i1 %"$gascmp_459", label %"$out_of_gas_460", label %"$have_gas_461"

"$out_of_gas_460":                                ; preds = %"$have_gas_456"
  call void @_out_of_gas()
  br label %"$have_gas_461"

"$have_gas_461":                                  ; preds = %"$out_of_gas_460", %"$have_gas_456"
  %"$consume_462" = sub i64 %"$gasrem_458", 1
  store i64 %"$consume_462", i64* @_gasrem, align 8
  %"$execptr_load_463" = load i8*, i8** @_execptr, align 8
  %"$a2_464" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a2, align 8
  %"$$a2_464_465" = bitcast %Map_Uint32_Uint32* %"$a2_464" to i8*
  %"$contains_i0_466" = alloca %Uint32, align 8
  %"$i0_467" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_467", %Uint32* %"$contains_i0_466", align 4
  %"$$contains_i0_466_468" = bitcast %Uint32* %"$contains_i0_466" to i8*
  %"$contains_call_469" = call %TName_Bool* @_contains(i8* %"$execptr_load_463", %_TyDescrTy_Typ* @"$TyDescr_Map_53", i8* %"$$a2_464_465", i8* %"$$contains_i0_466_468"), !dbg !39
  store %TName_Bool* %"$contains_call_469", %TName_Bool** %p5, align 8, !dbg !39
  %"$gasrem_471" = load i64, i64* @_gasrem, align 8
  %"$gascmp_472" = icmp ugt i64 1, %"$gasrem_471"
  br i1 %"$gascmp_472", label %"$out_of_gas_473", label %"$have_gas_474"

"$out_of_gas_473":                                ; preds = %"$have_gas_461"
  call void @_out_of_gas()
  br label %"$have_gas_474"

"$have_gas_474":                                  ; preds = %"$out_of_gas_473", %"$have_gas_461"
  %"$consume_475" = sub i64 %"$gasrem_471", 1
  store i64 %"$consume_475", i64* @_gasrem, align 8
  %p5_i = alloca %Uint32, align 8
  %"$gasrem_476" = load i64, i64* @_gasrem, align 8
  %"$gascmp_477" = icmp ugt i64 1, %"$gasrem_476"
  br i1 %"$gascmp_477", label %"$out_of_gas_478", label %"$have_gas_479"

"$out_of_gas_478":                                ; preds = %"$have_gas_474"
  call void @_out_of_gas()
  br label %"$have_gas_479"

"$have_gas_479":                                  ; preds = %"$out_of_gas_478", %"$have_gas_474"
  %"$consume_480" = sub i64 %"$gasrem_476", 1
  store i64 %"$consume_480", i64* @_gasrem, align 8
  %"$bool_to_uint_11" = alloca %Uint32, align 8
  %"$bool_to_uint_481" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_482" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_481", 0
  %"$bool_to_uint_envptr_483" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_481", 1
  %"$p5_484" = load %TName_Bool*, %TName_Bool** %p5, align 8
  %"$bool_to_uint_call_485" = call %Uint32 %"$bool_to_uint_fptr_482"(i8* %"$bool_to_uint_envptr_483", %TName_Bool* %"$p5_484"), !dbg !40
  store %Uint32 %"$bool_to_uint_call_485", %Uint32* %"$bool_to_uint_11", align 4, !dbg !40
  %"$$bool_to_uint_11_486" = load %Uint32, %Uint32* %"$bool_to_uint_11", align 4
  store %Uint32 %"$$bool_to_uint_11_486", %Uint32* %p5_i, align 4, !dbg !40
  %"$gasrem_487" = load i64, i64* @_gasrem, align 8
  %"$gascmp_488" = icmp ugt i64 1, %"$gasrem_487"
  br i1 %"$gascmp_488", label %"$out_of_gas_489", label %"$have_gas_490"

"$out_of_gas_489":                                ; preds = %"$have_gas_479"
  call void @_out_of_gas()
  br label %"$have_gas_490"

"$have_gas_490":                                  ; preds = %"$out_of_gas_489", %"$have_gas_479"
  %"$consume_491" = sub i64 %"$gasrem_487", 1
  store i64 %"$consume_491", i64* @_gasrem, align 8
  %p6 = alloca %Uint32, align 8
  %"$gasrem_492" = load i64, i64* @_gasrem, align 8
  %"$gascmp_493" = icmp ugt i64 4, %"$gasrem_492"
  br i1 %"$gascmp_493", label %"$out_of_gas_494", label %"$have_gas_495"

"$out_of_gas_494":                                ; preds = %"$have_gas_490"
  call void @_out_of_gas()
  br label %"$have_gas_495"

"$have_gas_495":                                  ; preds = %"$out_of_gas_494", %"$have_gas_490"
  %"$consume_496" = sub i64 %"$gasrem_492", 4
  store i64 %"$consume_496", i64* @_gasrem, align 8
  %"$p3_497" = load %Uint32, %Uint32* %p3, align 4
  %"$p5_i_498" = load %Uint32, %Uint32* %p5_i, align 4
  %"$add_call_499" = call %Uint32 @_add_Uint32(%Uint32 %"$p3_497", %Uint32 %"$p5_i_498"), !dbg !41
  store %Uint32 %"$add_call_499", %Uint32* %p6, align 4, !dbg !41
  %"$gasrem_500" = load i64, i64* @_gasrem, align 8
  %"$gascmp_501" = icmp ugt i64 1, %"$gasrem_500"
  br i1 %"$gascmp_501", label %"$out_of_gas_502", label %"$have_gas_503"

"$out_of_gas_502":                                ; preds = %"$have_gas_495"
  call void @_out_of_gas()
  br label %"$have_gas_503"

"$have_gas_503":                                  ; preds = %"$out_of_gas_502", %"$have_gas_495"
  %"$consume_504" = sub i64 %"$gasrem_500", 1
  store i64 %"$consume_504", i64* @_gasrem, align 8
  %a3 = alloca %Map_Uint32_Uint32*, align 8
  %"$$a1_6_505" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_6", align 8
  %"$$$a1_6_505_506" = bitcast %Map_Uint32_Uint32* %"$$a1_6_505" to i8*
  %"$_lengthof_call_507" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_53", i8* %"$$$a1_6_505_506")
  %"$gasadd_508" = add i64 1, %"$_lengthof_call_507"
  %"$gasrem_509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_510" = icmp ugt i64 %"$gasadd_508", %"$gasrem_509"
  br i1 %"$gascmp_510", label %"$out_of_gas_511", label %"$have_gas_512"

"$out_of_gas_511":                                ; preds = %"$have_gas_503"
  call void @_out_of_gas()
  br label %"$have_gas_512"

"$have_gas_512":                                  ; preds = %"$out_of_gas_511", %"$have_gas_503"
  %"$consume_513" = sub i64 %"$gasrem_509", %"$gasadd_508"
  store i64 %"$consume_513", i64* @_gasrem, align 8
  %"$execptr_load_514" = load i8*, i8** @_execptr, align 8
  %"$$a1_6_515" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_6", align 8
  %"$$$a1_6_515_516" = bitcast %Map_Uint32_Uint32* %"$$a1_6_515" to i8*
  %"$put_i1_517" = alloca %Uint32, align 8
  %"$i1_518" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_518", %Uint32* %"$put_i1_517", align 4
  %"$$put_i1_517_519" = bitcast %Uint32* %"$put_i1_517" to i8*
  %"$put_i0_520" = alloca %Uint32, align 8
  %"$i0_521" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_521", %Uint32* %"$put_i0_520", align 4
  %"$$put_i0_520_522" = bitcast %Uint32* %"$put_i0_520" to i8*
  %"$put_call_523" = call i8* @_put(i8* %"$execptr_load_514", %_TyDescrTy_Typ* @"$TyDescr_Map_53", i8* %"$$$a1_6_515_516", i8* %"$$put_i1_517_519", i8* %"$$put_i0_520_522"), !dbg !42
  %"$put_524" = bitcast i8* %"$put_call_523" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$put_524", %Map_Uint32_Uint32** %a3, align 8, !dbg !42
  %"$gasrem_525" = load i64, i64* @_gasrem, align 8
  %"$gascmp_526" = icmp ugt i64 1, %"$gasrem_525"
  br i1 %"$gascmp_526", label %"$out_of_gas_527", label %"$have_gas_528"

"$out_of_gas_527":                                ; preds = %"$have_gas_512"
  call void @_out_of_gas()
  br label %"$have_gas_528"

"$have_gas_528":                                  ; preds = %"$out_of_gas_527", %"$have_gas_512"
  %"$consume_529" = sub i64 %"$gasrem_525", 1
  store i64 %"$consume_529", i64* @_gasrem, align 8
  %a4 = alloca %Map_Uint32_Uint32*, align 8
  %"$a3_530" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a3, align 8
  %"$$a3_530_531" = bitcast %Map_Uint32_Uint32* %"$a3_530" to i8*
  %"$_lengthof_call_532" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_53", i8* %"$$a3_530_531")
  %"$gasadd_533" = add i64 1, %"$_lengthof_call_532"
  %"$gasrem_534" = load i64, i64* @_gasrem, align 8
  %"$gascmp_535" = icmp ugt i64 %"$gasadd_533", %"$gasrem_534"
  br i1 %"$gascmp_535", label %"$out_of_gas_536", label %"$have_gas_537"

"$out_of_gas_536":                                ; preds = %"$have_gas_528"
  call void @_out_of_gas()
  br label %"$have_gas_537"

"$have_gas_537":                                  ; preds = %"$out_of_gas_536", %"$have_gas_528"
  %"$consume_538" = sub i64 %"$gasrem_534", %"$gasadd_533"
  store i64 %"$consume_538", i64* @_gasrem, align 8
  %"$execptr_load_539" = load i8*, i8** @_execptr, align 8
  %"$a3_540" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a3, align 8
  %"$$a3_540_541" = bitcast %Map_Uint32_Uint32* %"$a3_540" to i8*
  %"$put_p6_542" = alloca %Uint32, align 8
  %"$p6_543" = load %Uint32, %Uint32* %p6, align 4
  store %Uint32 %"$p6_543", %Uint32* %"$put_p6_542", align 4
  %"$$put_p6_542_544" = bitcast %Uint32* %"$put_p6_542" to i8*
  %"$put_p3_545" = alloca %Uint32, align 8
  %"$p3_546" = load %Uint32, %Uint32* %p3, align 4
  store %Uint32 %"$p3_546", %Uint32* %"$put_p3_545", align 4
  %"$$put_p3_545_547" = bitcast %Uint32* %"$put_p3_545" to i8*
  %"$put_call_548" = call i8* @_put(i8* %"$execptr_load_539", %_TyDescrTy_Typ* @"$TyDescr_Map_53", i8* %"$$a3_540_541", i8* %"$$put_p6_542_544", i8* %"$$put_p3_545_547"), !dbg !43
  %"$put_549" = bitcast i8* %"$put_call_548" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$put_549", %Map_Uint32_Uint32** %a4, align 8, !dbg !43
  %"$gasrem_550" = load i64, i64* @_gasrem, align 8
  %"$gascmp_551" = icmp ugt i64 1, %"$gasrem_550"
  br i1 %"$gascmp_551", label %"$out_of_gas_552", label %"$have_gas_553"

"$out_of_gas_552":                                ; preds = %"$have_gas_537"
  call void @_out_of_gas()
  br label %"$have_gas_553"

"$have_gas_553":                                  ; preds = %"$out_of_gas_552", %"$have_gas_537"
  %"$consume_554" = sub i64 %"$gasrem_550", 1
  store i64 %"$consume_554", i64* @_gasrem, align 8
  %p7_i = alloca %Uint32, align 8
  %"$gasrem_555" = load i64, i64* @_gasrem, align 8
  %"$gascmp_556" = icmp ugt i64 1, %"$gasrem_555"
  br i1 %"$gascmp_556", label %"$out_of_gas_557", label %"$have_gas_558"

"$out_of_gas_557":                                ; preds = %"$have_gas_553"
  call void @_out_of_gas()
  br label %"$have_gas_558"

"$have_gas_558":                                  ; preds = %"$out_of_gas_557", %"$have_gas_553"
  %"$consume_559" = sub i64 %"$gasrem_555", 1
  store i64 %"$consume_559", i64* @_gasrem, align 8
  %"$a4_560" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a4, align 8
  %"$$a4_560_561" = bitcast %Map_Uint32_Uint32* %"$a4_560" to i8*
  %"$size_call_562" = call %Uint32 @_size(i8* %"$$a4_560_561"), !dbg !44
  store %Uint32 %"$size_call_562", %Uint32* %p7_i, align 4, !dbg !44
  %"$gasrem_563" = load i64, i64* @_gasrem, align 8
  %"$gascmp_564" = icmp ugt i64 4, %"$gasrem_563"
  br i1 %"$gascmp_564", label %"$out_of_gas_565", label %"$have_gas_566"

"$out_of_gas_565":                                ; preds = %"$have_gas_558"
  call void @_out_of_gas()
  br label %"$have_gas_566"

"$have_gas_566":                                  ; preds = %"$out_of_gas_565", %"$have_gas_558"
  %"$consume_567" = sub i64 %"$gasrem_563", 4
  store i64 %"$consume_567", i64* @_gasrem, align 8
  %"$p6_568" = load %Uint32, %Uint32* %p6, align 4
  %"$p7_i_569" = load %Uint32, %Uint32* %p7_i, align 4
  %"$add_call_570" = call %Uint32 @_add_Uint32(%Uint32 %"$p6_568", %Uint32 %"$p7_i_569"), !dbg !45
  store %Uint32 %"$add_call_570", %Uint32* %"$expr_13", align 4, !dbg !45
  br label %"$matchsucc_341"

"$default_345":                                   ; preds = %"$Some_337"
  br label %"$joinp_7"

"$matchsucc_341":                                 ; preds = %"$have_gas_566"
  br label %"$matchsucc_292"

"$default_336":                                   ; preds = %"$have_gas_290"
  br label %"$joinp_7"

"$joinp_7":                                       ; preds = %"$default_345", %"$default_336"
  %"$gasrem_293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_294" = icmp ugt i64 1, %"$gasrem_293"
  br i1 %"$gascmp_294", label %"$out_of_gas_295", label %"$have_gas_296"

"$out_of_gas_295":                                ; preds = %"$joinp_7"
  call void @_out_of_gas()
  br label %"$have_gas_296"

"$have_gas_296":                                  ; preds = %"$out_of_gas_295", %"$joinp_7"
  %"$consume_297" = sub i64 %"$gasrem_293", 1
  store i64 %"$consume_297", i64* @_gasrem, align 8
  %p = alloca %TName_Bool*, align 8
  %"$gasrem_298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_299" = icmp ugt i64 1, %"$gasrem_298"
  br i1 %"$gascmp_299", label %"$out_of_gas_300", label %"$have_gas_301"

"$out_of_gas_300":                                ; preds = %"$have_gas_296"
  call void @_out_of_gas()
  br label %"$have_gas_301"

"$have_gas_301":                                  ; preds = %"$out_of_gas_300", %"$have_gas_296"
  %"$consume_302" = sub i64 %"$gasrem_298", 1
  store i64 %"$consume_302", i64* @_gasrem, align 8
  %"$execptr_load_303" = load i8*, i8** @_execptr, align 8
  %"$a1_304" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a1, align 8
  %"$$a1_304_305" = bitcast %Map_Uint32_Uint32* %"$a1_304" to i8*
  %"$contains_i0_306" = alloca %Uint32, align 8
  %"$i0_307" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_307", %Uint32* %"$contains_i0_306", align 4
  %"$$contains_i0_306_308" = bitcast %Uint32* %"$contains_i0_306" to i8*
  %"$contains_call_309" = call %TName_Bool* @_contains(i8* %"$execptr_load_303", %_TyDescrTy_Typ* @"$TyDescr_Map_53", i8* %"$$a1_304_305", i8* %"$$contains_i0_306_308"), !dbg !46
  store %TName_Bool* %"$contains_call_309", %TName_Bool** %p, align 8, !dbg !46
  %"$gasrem_311" = load i64, i64* @_gasrem, align 8
  %"$gascmp_312" = icmp ugt i64 1, %"$gasrem_311"
  br i1 %"$gascmp_312", label %"$out_of_gas_313", label %"$have_gas_314"

"$out_of_gas_313":                                ; preds = %"$have_gas_301"
  call void @_out_of_gas()
  br label %"$have_gas_314"

"$have_gas_314":                                  ; preds = %"$out_of_gas_313", %"$have_gas_301"
  %"$consume_315" = sub i64 %"$gasrem_311", 1
  store i64 %"$consume_315", i64* @_gasrem, align 8
  %p1 = alloca %Uint32, align 8
  %"$gasrem_316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_317" = icmp ugt i64 1, %"$gasrem_316"
  br i1 %"$gascmp_317", label %"$out_of_gas_318", label %"$have_gas_319"

"$out_of_gas_318":                                ; preds = %"$have_gas_314"
  call void @_out_of_gas()
  br label %"$have_gas_319"

"$have_gas_319":                                  ; preds = %"$out_of_gas_318", %"$have_gas_314"
  %"$consume_320" = sub i64 %"$gasrem_316", 1
  store i64 %"$consume_320", i64* @_gasrem, align 8
  %"$bool_to_uint_12" = alloca %Uint32, align 8
  %"$bool_to_uint_321" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_322" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_321", 0
  %"$bool_to_uint_envptr_323" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_321", 1
  %"$p_324" = load %TName_Bool*, %TName_Bool** %p, align 8
  %"$bool_to_uint_call_325" = call %Uint32 %"$bool_to_uint_fptr_322"(i8* %"$bool_to_uint_envptr_323", %TName_Bool* %"$p_324"), !dbg !48
  store %Uint32 %"$bool_to_uint_call_325", %Uint32* %"$bool_to_uint_12", align 4, !dbg !48
  %"$$bool_to_uint_12_326" = load %Uint32, %Uint32* %"$bool_to_uint_12", align 4
  store %Uint32 %"$$bool_to_uint_12_326", %Uint32* %p1, align 4, !dbg !48
  %"$gasrem_327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_328" = icmp ugt i64 1, %"$gasrem_327"
  br i1 %"$gascmp_328", label %"$out_of_gas_329", label %"$have_gas_330"

"$out_of_gas_329":                                ; preds = %"$have_gas_319"
  call void @_out_of_gas()
  br label %"$have_gas_330"

"$have_gas_330":                                  ; preds = %"$out_of_gas_329", %"$have_gas_319"
  %"$consume_331" = sub i64 %"$gasrem_327", 1
  store i64 %"$consume_331", i64* @_gasrem, align 8
  %"$p1_332" = load %Uint32, %Uint32* %p1, align 4
  store %Uint32 %"$p1_332", %Uint32* %"$expr_13", align 4, !dbg !49
  br label %"$matchsucc_292"

"$matchsucc_292":                                 ; preds = %"$matchsucc_341", %"$have_gas_330"
  %"$$expr_13_571" = load %Uint32, %Uint32* %"$expr_13", align 4
  ret %Uint32 %"$$expr_13_571"
}

declare i8* @_new_empty_map(i8*)

declare i64 @_lengthof(%_TyDescrTy_Typ*, i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

declare i8* @_salloc(i8*, i64)

declare i8* @_get(i8*, %_TyDescrTy_Typ*, i8*, i8*)

declare %TName_Bool* @_contains(i8*, %_TyDescrTy_Typ*, i8*, i8*)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

declare i8* @_remove(i8*, %_TyDescrTy_Typ*, i8*, i8*)

declare %Uint32 @_size(i8*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_572" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_573" = alloca %Uint32, align 8
  %"$memvoidcast_574" = bitcast %Uint32* %"$pval_573" to i8*
  store %Uint32 %"$exprval_572", %Uint32* %"$pval_573", align 4
  %"$execptr_load_575" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_575", %_TyDescrTy_Typ* @"$TyDescr_Uint32_20", i8* %"$memvoidcast_574")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_map.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_14", linkageName: "$fundef_14", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 3, column: 5, scope: !4)
!9 = !DILocation(line: 4, column: 15, scope: !10)
!10 = distinct !DILexicalBlock(scope: !11, file: !2, line: 4, column: 7)
!11 = distinct !DILexicalBlock(scope: !4, file: !2, line: 3, column: 5)
!12 = !DILocation(line: 5, column: 16, scope: !13)
!13 = distinct !DILexicalBlock(scope: !11, file: !2, line: 5, column: 7)
!14 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !15, file: !15, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = !DIFile(filename: ".", directory: ".")
!16 = !DILocation(line: 0, scope: !14)
!17 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DILocation(line: 3, column: 5, scope: !17)
!19 = !DILocation(line: 8, column: 10, scope: !17)
!20 = !DILocation(line: 9, column: 10, scope: !17)
!21 = !DILocation(line: 10, column: 9, scope: !17)
!22 = !DILocation(line: 11, column: 10, scope: !17)
!23 = !DILocation(line: 12, column: 9, scope: !17)
!24 = !DILocation(line: 13, column: 9, scope: !17)
!25 = !DILocation(line: 14, column: 10, scope: !17)
!26 = !DILocation(line: 15, column: 12, scope: !17)
!27 = !DILocation(line: 16, column: 1, scope: !17)
!28 = !DILocation(line: 16, column: 1, scope: !29)
!29 = distinct !DILexicalBlock(scope: !30, file: !2, line: 17, column: 3)
!30 = distinct !DILexicalBlock(scope: !17, file: !2, line: 16, column: 1)
!31 = !DILocation(line: 18, column: 12, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !2, line: 17, column: 9)
!33 = distinct !DILexicalBlock(scope: !29, file: !2, line: 16, column: 1)
!34 = !DILocation(line: 19, column: 14, scope: !32)
!35 = !DILocation(line: 20, column: 12, scope: !32)
!36 = !DILocation(line: 21, column: 14, scope: !32)
!37 = !DILocation(line: 22, column: 12, scope: !32)
!38 = !DILocation(line: 23, column: 12, scope: !32)
!39 = !DILocation(line: 24, column: 12, scope: !32)
!40 = !DILocation(line: 25, column: 14, scope: !32)
!41 = !DILocation(line: 26, column: 12, scope: !32)
!42 = !DILocation(line: 27, column: 12, scope: !32)
!43 = !DILocation(line: 28, column: 12, scope: !32)
!44 = !DILocation(line: 29, column: 14, scope: !32)
!45 = !DILocation(line: 30, column: 3, scope: !32)
!46 = !DILocation(line: 32, column: 11, scope: !47)
!47 = distinct !DILexicalBlock(scope: !30, file: !2, line: 16, column: 1)
!48 = !DILocation(line: 33, column: 12, scope: !47)
!49 = !DILocation(line: 34, column: 3, scope: !47)
