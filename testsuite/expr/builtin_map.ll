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

%"$TyDescrTy_PrimTyp_10" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_40" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_39"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_39" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_41"**, %"$TyDescrTy_ADTTyp_40"* }
%"$TyDescrTy_ADTTyp_Constr_41" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_45" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%Uint32 = type { i32 }
%"$$fundef_8_env_83" = type {}
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
@"$TyDescr_Int32_Prim_11" = global %"$TyDescrTy_PrimTyp_10" zeroinitializer
@"$TyDescr_Int32_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int32_Prim_11" to i8*) }
@"$TyDescr_Uint32_Prim_13" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 0 }
@"$TyDescr_Uint32_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint32_Prim_13" to i8*) }
@"$TyDescr_Int64_Prim_15" = global %"$TyDescrTy_PrimTyp_10" { i32 0, i32 1 }
@"$TyDescr_Int64_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int64_Prim_15" to i8*) }
@"$TyDescr_Uint64_Prim_17" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 1 }
@"$TyDescr_Uint64_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint64_Prim_17" to i8*) }
@"$TyDescr_Int128_Prim_19" = global %"$TyDescrTy_PrimTyp_10" { i32 0, i32 2 }
@"$TyDescr_Int128_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int128_Prim_19" to i8*) }
@"$TyDescr_Uint128_Prim_21" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 2 }
@"$TyDescr_Uint128_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint128_Prim_21" to i8*) }
@"$TyDescr_Int256_Prim_23" = global %"$TyDescrTy_PrimTyp_10" { i32 0, i32 3 }
@"$TyDescr_Int256_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int256_Prim_23" to i8*) }
@"$TyDescr_Uint256_Prim_25" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 3 }
@"$TyDescr_Uint256_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint256_Prim_25" to i8*) }
@"$TyDescr_String_Prim_27" = global %"$TyDescrTy_PrimTyp_10" { i32 2, i32 0 }
@"$TyDescr_String_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_String_Prim_27" to i8*) }
@"$TyDescr_Bnum_Prim_29" = global %"$TyDescrTy_PrimTyp_10" { i32 3, i32 0 }
@"$TyDescr_Bnum_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Bnum_Prim_29" to i8*) }
@"$TyDescr_Message_Prim_31" = global %"$TyDescrTy_PrimTyp_10" { i32 4, i32 0 }
@"$TyDescr_Message_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Message_Prim_31" to i8*) }
@"$TyDescr_Event_Prim_33" = global %"$TyDescrTy_PrimTyp_10" { i32 5, i32 0 }
@"$TyDescr_Event_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Event_Prim_33" to i8*) }
@"$TyDescr_Exception_Prim_35" = global %"$TyDescrTy_PrimTyp_10" { i32 6, i32 0 }
@"$TyDescr_Exception_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Exception_Prim_35" to i8*) }
@"$TyDescr_Bystr_Prim_37" = global %"$TyDescrTy_PrimTyp_10" { i32 7, i32 0 }
@"$TyDescr_Bystr_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Bystr_Prim_37" to i8*) }
@"$TyDescr_ADT_Option_Option_(Map_(Uint32)_(Uint32))_42" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_39"* @"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_57" to i8*) }
@"$TyDescr_ADT_Option_Map_(Uint32)_(Uint32)_43" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_39"* @"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_66" to i8*) }
@"$TyDescr_ADT_Bool_44" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_39"* @"$TyDescr_Bool_ADTTyp_Specl_78" to i8*) }
@"$TyDescr_Map_46" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_45"* @"$TyDescr_MapTyp_81" to i8*) }
@"$TyDescr_Map_47" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_45"* @"$TyDescr_MapTyp_82" to i8*) }
@"$TyDescr_Option_ADTTyp_48" = unnamed_addr constant %"$TyDescrTy_ADTTyp_40" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_68", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_39"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_39"*], [2 x %"$TyDescrTy_ADTTyp_Specl_39"*]* @"$TyDescr_Option_ADTTyp_m_specls_67", i32 0, i32 0) }
@"$TyDescr_Option_Some_Option_(Map_(Uint32)_(Uint32))_Constr_m_args_49" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(Uint32)_(Uint32)_43"]
@"$TyDescr_ADT_Some_50" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Constr_51" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_41" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_50", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Option_(Map_(Uint32)_(Uint32))_Constr_m_args_49", i32 0, i32 0) }
@"$TyDescr_Option_None_Option_(Map_(Uint32)_(Uint32))_Constr_m_args_52" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_53" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Constr_54" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_41" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_53", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Option_(Map_(Uint32)_(Uint32))_Constr_m_args_52", i32 0, i32 0) }
@"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_m_constrs_55" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_41"*] [%"$TyDescrTy_ADTTyp_Constr_41"* @"$TyDescr_Option_Some_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Constr_51", %"$TyDescrTy_ADTTyp_Constr_41"* @"$TyDescr_Option_None_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Constr_54"]
@"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_m_TArgs_56" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(Uint32)_(Uint32)_43"]
@"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_57" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_39" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_m_TArgs_56", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_41"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_41"*], [2 x %"$TyDescrTy_ADTTyp_Constr_41"*]* @"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_m_constrs_55", i32 0, i32 0), %"$TyDescrTy_ADTTyp_40"* @"$TyDescr_Option_ADTTyp_48" }
@"$TyDescr_Option_Some_Map_(Uint32)_(Uint32)_Constr_m_args_58" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_47"]
@"$TyDescr_ADT_Some_59" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Map_(Uint32)_(Uint32)_ADTTyp_Constr_60" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_41" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_59", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Map_(Uint32)_(Uint32)_Constr_m_args_58", i32 0, i32 0) }
@"$TyDescr_Option_None_Map_(Uint32)_(Uint32)_Constr_m_args_61" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_62" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Map_(Uint32)_(Uint32)_ADTTyp_Constr_63" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_41" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_62", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Map_(Uint32)_(Uint32)_Constr_m_args_61", i32 0, i32 0) }
@"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_m_constrs_64" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_41"*] [%"$TyDescrTy_ADTTyp_Constr_41"* @"$TyDescr_Option_Some_Map_(Uint32)_(Uint32)_ADTTyp_Constr_60", %"$TyDescrTy_ADTTyp_Constr_41"* @"$TyDescr_Option_None_Map_(Uint32)_(Uint32)_ADTTyp_Constr_63"]
@"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_m_TArgs_65" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_47"]
@"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_66" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_39" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_m_TArgs_65", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_41"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_41"*], [2 x %"$TyDescrTy_ADTTyp_Constr_41"*]* @"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_m_constrs_64", i32 0, i32 0), %"$TyDescrTy_ADTTyp_40"* @"$TyDescr_Option_ADTTyp_48" }
@"$TyDescr_Option_ADTTyp_m_specls_67" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_39"*] [%"$TyDescrTy_ADTTyp_Specl_39"* @"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_57", %"$TyDescrTy_ADTTyp_Specl_39"* @"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_66"]
@"$TyDescr_ADT_Option_68" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Bool_ADTTyp_69" = unnamed_addr constant %"$TyDescrTy_ADTTyp_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_80", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_39"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_39"*], [1 x %"$TyDescrTy_ADTTyp_Specl_39"*]* @"$TyDescr_Bool_ADTTyp_m_specls_79", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_70" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_71" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_72" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_41" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_71", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_70", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_73" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_74" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_75" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_41" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_74", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_73", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_76" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_41"*] [%"$TyDescrTy_ADTTyp_Constr_41"* @"$TyDescr_Bool_True_ADTTyp_Constr_72", %"$TyDescrTy_ADTTyp_Constr_41"* @"$TyDescr_Bool_False_ADTTyp_Constr_75"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_77" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_78" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_39" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_77", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_41"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_41"*], [2 x %"$TyDescrTy_ADTTyp_Constr_41"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_76", i32 0, i32 0), %"$TyDescrTy_ADTTyp_40"* @"$TyDescr_Bool_ADTTyp_69" }
@"$TyDescr_Bool_ADTTyp_m_specls_79" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_39"*] [%"$TyDescrTy_ADTTyp_Specl_39"* @"$TyDescr_Bool_ADTTyp_Specl_78"]
@"$TyDescr_ADT_Bool_80" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_MapTyp_81" = unnamed_addr constant %"$TyDescr_MapTyp_45" { %_TyDescrTy_Typ* @"$TyDescr_Uint32_14", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(Uint32)_(Uint32)_43" }
@"$TyDescr_MapTyp_82" = unnamed_addr constant %"$TyDescr_MapTyp_45" { %_TyDescrTy_Typ* @"$TyDescr_Uint32_14", %_TyDescrTy_Typ* @"$TyDescr_Uint32_14" }

define internal %Uint32 @"$fundef_8"(%"$$fundef_8_env_83"* %0, %TName_Bool* %1) {
entry:
  %"$retval_9" = alloca %Uint32
  %"$gasrem_84" = load i64, i64* @_gasrem
  %"$gascmp_85" = icmp ugt i64 2, %"$gasrem_84"
  br i1 %"$gascmp_85", label %"$out_of_gas_86", label %"$have_gas_87"

"$out_of_gas_86":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_87"

"$have_gas_87":                                   ; preds = %"$out_of_gas_86", %entry
  %"$consume_88" = sub i64 %"$gasrem_84", 2
  store i64 %"$consume_88", i64* @_gasrem
  %"$b_tag_90" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b_tag_91" = load i8, i8* %"$b_tag_90"
  switch i8 %"$b_tag_91", label %"$empty_default_92" [
    i8 0, label %"$True_93"
    i8 1, label %"$False_100"
  ]

"$True_93":                                       ; preds = %"$have_gas_87"
  %"$b_94" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_95" = load i64, i64* @_gasrem
  %"$gascmp_96" = icmp ugt i64 1, %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %"$True_93"
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %"$True_93"
  %"$consume_99" = sub i64 %"$gasrem_95", 1
  store i64 %"$consume_99", i64* @_gasrem
  store %Uint32 { i32 1 }, %Uint32* %"$retval_9"
  br label %"$matchsucc_89"

"$False_100":                                     ; preds = %"$have_gas_87"
  %"$b_101" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_102" = load i64, i64* @_gasrem
  %"$gascmp_103" = icmp ugt i64 1, %"$gasrem_102"
  br i1 %"$gascmp_103", label %"$out_of_gas_104", label %"$have_gas_105"

"$out_of_gas_104":                                ; preds = %"$False_100"
  call void @_out_of_gas()
  br label %"$have_gas_105"

"$have_gas_105":                                  ; preds = %"$out_of_gas_104", %"$False_100"
  %"$consume_106" = sub i64 %"$gasrem_102", 1
  store i64 %"$consume_106", i64* @_gasrem
  store %Uint32 zeroinitializer, %Uint32* %"$retval_9"
  br label %"$matchsucc_89"

"$empty_default_92":                              ; preds = %"$have_gas_87"
  br label %"$matchsucc_89"

"$matchsucc_89":                                  ; preds = %"$have_gas_105", %"$have_gas_98", %"$empty_default_92"
  %"$$retval_9_107" = load %Uint32, %Uint32* %"$retval_9"
  ret %Uint32 %"$$retval_9_107"
}

declare void @_out_of_gas()

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_108"(i8* %0) {
entry:
  %"$expr_7" = alloca %Uint32
  %"$gasrem_109" = load i64, i64* @_gasrem
  %"$gascmp_110" = icmp ugt i64 1, %"$gasrem_109"
  br i1 %"$gascmp_110", label %"$out_of_gas_111", label %"$have_gas_112"

"$out_of_gas_111":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_112"

"$have_gas_112":                                  ; preds = %"$out_of_gas_111", %entry
  %"$consume_113" = sub i64 %"$gasrem_109", 1
  store i64 %"$consume_113", i64* @_gasrem
  %bool_to_uint = alloca { %Uint32 (i8*, %TName_Bool*)*, i8* }
  %"$gasrem_114" = load i64, i64* @_gasrem
  %"$gascmp_115" = icmp ugt i64 1, %"$gasrem_114"
  br i1 %"$gascmp_115", label %"$out_of_gas_116", label %"$have_gas_117"

"$out_of_gas_116":                                ; preds = %"$have_gas_112"
  call void @_out_of_gas()
  br label %"$have_gas_117"

"$have_gas_117":                                  ; preds = %"$out_of_gas_116", %"$have_gas_112"
  %"$consume_118" = sub i64 %"$gasrem_114", 1
  store i64 %"$consume_118", i64* @_gasrem
  store { %Uint32 (i8*, %TName_Bool*)*, i8* } { %Uint32 (i8*, %TName_Bool*)* bitcast (%Uint32 (%"$$fundef_8_env_83"*, %TName_Bool*)* @"$fundef_8" to %Uint32 (i8*, %TName_Bool*)*), i8* null }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint
  %"$gasrem_122" = load i64, i64* @_gasrem
  %"$gascmp_123" = icmp ugt i64 1, %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %"$have_gas_117"
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %"$have_gas_117"
  %"$consume_126" = sub i64 %"$gasrem_122", 1
  store i64 %"$consume_126", i64* @_gasrem
  %i0 = alloca %Uint32
  %"$gasrem_127" = load i64, i64* @_gasrem
  %"$gascmp_128" = icmp ugt i64 1, %"$gasrem_127"
  br i1 %"$gascmp_128", label %"$out_of_gas_129", label %"$have_gas_130"

"$out_of_gas_129":                                ; preds = %"$have_gas_125"
  call void @_out_of_gas()
  br label %"$have_gas_130"

"$have_gas_130":                                  ; preds = %"$out_of_gas_129", %"$have_gas_125"
  %"$consume_131" = sub i64 %"$gasrem_127", 1
  store i64 %"$consume_131", i64* @_gasrem
  store %Uint32 zeroinitializer, %Uint32* %i0
  %"$gasrem_132" = load i64, i64* @_gasrem
  %"$gascmp_133" = icmp ugt i64 1, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %"$have_gas_130"
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %"$have_gas_130"
  %"$consume_136" = sub i64 %"$gasrem_132", 1
  store i64 %"$consume_136", i64* @_gasrem
  %i1 = alloca %Uint32
  %"$gasrem_137" = load i64, i64* @_gasrem
  %"$gascmp_138" = icmp ugt i64 1, %"$gasrem_137"
  br i1 %"$gascmp_138", label %"$out_of_gas_139", label %"$have_gas_140"

"$out_of_gas_139":                                ; preds = %"$have_gas_135"
  call void @_out_of_gas()
  br label %"$have_gas_140"

"$have_gas_140":                                  ; preds = %"$out_of_gas_139", %"$have_gas_135"
  %"$consume_141" = sub i64 %"$gasrem_137", 1
  store i64 %"$consume_141", i64* @_gasrem
  store %Uint32 { i32 1 }, %Uint32* %i1
  %"$gasrem_142" = load i64, i64* @_gasrem
  %"$gascmp_143" = icmp ugt i64 1, %"$gasrem_142"
  br i1 %"$gascmp_143", label %"$out_of_gas_144", label %"$have_gas_145"

"$out_of_gas_144":                                ; preds = %"$have_gas_140"
  call void @_out_of_gas()
  br label %"$have_gas_145"

"$have_gas_145":                                  ; preds = %"$out_of_gas_144", %"$have_gas_140"
  %"$consume_146" = sub i64 %"$gasrem_142", 1
  store i64 %"$consume_146", i64* @_gasrem
  %a = alloca %Map_Uint32_Uint32*
  %"$gasrem_147" = load i64, i64* @_gasrem
  %"$gascmp_148" = icmp ugt i64 1, %"$gasrem_147"
  br i1 %"$gascmp_148", label %"$out_of_gas_149", label %"$have_gas_150"

"$out_of_gas_149":                                ; preds = %"$have_gas_145"
  call void @_out_of_gas()
  br label %"$have_gas_150"

"$have_gas_150":                                  ; preds = %"$out_of_gas_149", %"$have_gas_145"
  %"$consume_151" = sub i64 %"$gasrem_147", 1
  store i64 %"$consume_151", i64* @_gasrem
  %"$execptr_load_152" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_153" = call i8* @_new_empty_map(i8* %"$execptr_load_152")
  %"$Emp_154" = bitcast i8* %"$_new_empty_map_call_153" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$Emp_154", %Map_Uint32_Uint32** %a
  %"$gasrem_155" = load i64, i64* @_gasrem
  %"$gascmp_156" = icmp ugt i64 1, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$have_gas_150"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$have_gas_150"
  %"$consume_159" = sub i64 %"$gasrem_155", 1
  store i64 %"$consume_159", i64* @_gasrem
  %a1 = alloca %Map_Uint32_Uint32*
  %"$execptr_load_160" = load i8*, i8** @_execptr
  %"$a_161" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a
  %"$$a_161_162" = bitcast %Map_Uint32_Uint32* %"$a_161" to i8*
  %"$put_i0_163" = alloca %Uint32
  %"$i0_164" = load %Uint32, %Uint32* %i0
  store %Uint32 %"$i0_164", %Uint32* %"$put_i0_163"
  %"$$put_i0_163_165" = bitcast %Uint32* %"$put_i0_163" to i8*
  %"$put_i1_166" = alloca %Uint32
  %"$i1_167" = load %Uint32, %Uint32* %i1
  store %Uint32 %"$i1_167", %Uint32* %"$put_i1_166"
  %"$$put_i1_166_168" = bitcast %Uint32* %"$put_i1_166" to i8*
  %"$put_call_169" = call i8* @_put(i8* %"$execptr_load_160", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$a_161_162", i8* %"$$put_i0_163_165", i8* %"$$put_i1_166_168")
  %"$_put_170" = bitcast i8* %"$put_call_169" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$_put_170", %Map_Uint32_Uint32** %a1
  %"$gasrem_171" = load i64, i64* @_gasrem
  %"$gascmp_172" = icmp ugt i64 1, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %"$have_gas_158"
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %"$have_gas_158"
  %"$consume_175" = sub i64 %"$gasrem_171", 1
  store i64 %"$consume_175", i64* @_gasrem
  %o = alloca %"TName_Option_Map_(Uint32)_(Uint32)"*
  %"$gasrem_176" = load i64, i64* @_gasrem
  %"$gascmp_177" = icmp ugt i64 1, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %"$have_gas_174"
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %"$have_gas_174"
  %"$consume_180" = sub i64 %"$gasrem_176", 1
  store i64 %"$consume_180", i64* @_gasrem
  %"$a1_181" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a1
  %"$adtval_182_load" = load i8*, i8** @_execptr
  %"$adtval_182_salloc" = call i8* @_salloc(i8* %"$adtval_182_load", i64 9)
  %"$adtval_182" = bitcast i8* %"$adtval_182_salloc" to %"CName_Some_Map_(Uint32)_(Uint32)"*
  %"$adtgep_183" = getelementptr inbounds %"CName_Some_Map_(Uint32)_(Uint32)", %"CName_Some_Map_(Uint32)_(Uint32)"* %"$adtval_182", i32 0, i32 0
  store i8 0, i8* %"$adtgep_183"
  %"$adtgep_184" = getelementptr inbounds %"CName_Some_Map_(Uint32)_(Uint32)", %"CName_Some_Map_(Uint32)_(Uint32)"* %"$adtval_182", i32 0, i32 1
  store %Map_Uint32_Uint32* %"$a1_181", %Map_Uint32_Uint32** %"$adtgep_184"
  %"$adtptr_185" = bitcast %"CName_Some_Map_(Uint32)_(Uint32)"* %"$adtval_182" to %"TName_Option_Map_(Uint32)_(Uint32)"*
  store %"TName_Option_Map_(Uint32)_(Uint32)"* %"$adtptr_185", %"TName_Option_Map_(Uint32)_(Uint32)"** %o
  %"$gasrem_186" = load i64, i64* @_gasrem
  %"$gascmp_187" = icmp ugt i64 1, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %"$have_gas_179"
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %"$have_gas_179"
  %"$consume_190" = sub i64 %"$gasrem_186", 1
  store i64 %"$consume_190", i64* @_gasrem
  %b = alloca %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*
  %"$gasrem_191" = load i64, i64* @_gasrem
  %"$gascmp_192" = icmp ugt i64 1, %"$gasrem_191"
  br i1 %"$gascmp_192", label %"$out_of_gas_193", label %"$have_gas_194"

"$out_of_gas_193":                                ; preds = %"$have_gas_189"
  call void @_out_of_gas()
  br label %"$have_gas_194"

"$have_gas_194":                                  ; preds = %"$out_of_gas_193", %"$have_gas_189"
  %"$consume_195" = sub i64 %"$gasrem_191", 1
  store i64 %"$consume_195", i64* @_gasrem
  %"$execptr_load_196" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_197" = call i8* @_new_empty_map(i8* %"$execptr_load_196")
  %"$Emp_198" = bitcast i8* %"$_new_empty_map_call_197" to %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*
  store %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$Emp_198", %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b
  %"$gasrem_199" = load i64, i64* @_gasrem
  %"$gascmp_200" = icmp ugt i64 1, %"$gasrem_199"
  br i1 %"$gascmp_200", label %"$out_of_gas_201", label %"$have_gas_202"

"$out_of_gas_201":                                ; preds = %"$have_gas_194"
  call void @_out_of_gas()
  br label %"$have_gas_202"

"$have_gas_202":                                  ; preds = %"$out_of_gas_201", %"$have_gas_194"
  %"$consume_203" = sub i64 %"$gasrem_199", 1
  store i64 %"$consume_203", i64* @_gasrem
  %b1 = alloca %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*
  %"$execptr_load_204" = load i8*, i8** @_execptr
  %"$b_205" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b
  %"$$b_205_206" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b_205" to i8*
  %"$put_i1_207" = alloca %Uint32
  %"$i1_208" = load %Uint32, %Uint32* %i1
  store %Uint32 %"$i1_208", %Uint32* %"$put_i1_207"
  %"$$put_i1_207_209" = bitcast %Uint32* %"$put_i1_207" to i8*
  %"$o_210" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %o
  %"$$o_210_211" = bitcast %"TName_Option_Map_(Uint32)_(Uint32)"* %"$o_210" to i8*
  %"$put_call_212" = call i8* @_put(i8* %"$execptr_load_204", %_TyDescrTy_Typ* @"$TyDescr_Map_46", i8* %"$$b_205_206", i8* %"$$put_i1_207_209", i8* %"$$o_210_211")
  %"$_put_213" = bitcast i8* %"$put_call_212" to %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*
  store %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$_put_213", %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1
  %"$gasrem_214" = load i64, i64* @_gasrem
  %"$gascmp_215" = icmp ugt i64 1, %"$gasrem_214"
  br i1 %"$gascmp_215", label %"$out_of_gas_216", label %"$have_gas_217"

"$out_of_gas_216":                                ; preds = %"$have_gas_202"
  call void @_out_of_gas()
  br label %"$have_gas_217"

"$have_gas_217":                                  ; preds = %"$out_of_gas_216", %"$have_gas_202"
  %"$consume_218" = sub i64 %"$gasrem_214", 1
  store i64 %"$consume_218", i64* @_gasrem
  %res1 = alloca %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*
  %"$execptr_load_219" = load i8*, i8** @_execptr
  %"$b1_220" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1
  %"$$b1_220_221" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b1_220" to i8*
  %"$get_i1_222" = alloca %Uint32
  %"$i1_223" = load %Uint32, %Uint32* %i1
  store %Uint32 %"$i1_223", %Uint32* %"$get_i1_222"
  %"$$get_i1_222_224" = bitcast %Uint32* %"$get_i1_222" to i8*
  %"$get_call_225" = call i8* @_get(i8* %"$execptr_load_219", %_TyDescrTy_Typ* @"$TyDescr_Map_46", i8* %"$$b1_220_221", i8* %"$$get_i1_222_224")
  %"$_get_226" = bitcast i8* %"$get_call_225" to %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*
  store %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$_get_226", %"TName_Option_Option_(Map_(Uint32)_(Uint32))"** %res1
  %"$gasrem_227" = load i64, i64* @_gasrem
  %"$gascmp_228" = icmp ugt i64 2, %"$gasrem_227"
  br i1 %"$gascmp_228", label %"$out_of_gas_229", label %"$have_gas_230"

"$out_of_gas_229":                                ; preds = %"$have_gas_217"
  call void @_out_of_gas()
  br label %"$have_gas_230"

"$have_gas_230":                                  ; preds = %"$out_of_gas_229", %"$have_gas_217"
  %"$consume_231" = sub i64 %"$gasrem_227", 2
  store i64 %"$consume_231", i64* @_gasrem
  %"$res1_267" = load %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*, %"TName_Option_Option_(Map_(Uint32)_(Uint32))"** %res1
  %"$res1_tag_268" = getelementptr inbounds %"TName_Option_Option_(Map_(Uint32)_(Uint32))", %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$res1_267", i32 0, i32 0
  %"$res1_tag_269" = load i8, i8* %"$res1_tag_268"
  switch i8 %"$res1_tag_269", label %"$default_270" [
    i8 0, label %"$Some_271"
  ]

"$Some_271":                                      ; preds = %"$have_gas_230"
  %"$res1_272" = bitcast %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$res1_267" to %"CName_Some_Option_(Map_(Uint32)_(Uint32))"*
  %"$$res1_2_gep_273" = getelementptr inbounds %"CName_Some_Option_(Map_(Uint32)_(Uint32))", %"CName_Some_Option_(Map_(Uint32)_(Uint32))"* %"$res1_272", i32 0, i32 1
  %"$$res1_2_load_274" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %"$$res1_2_gep_273"
  %"$res1_2" = alloca %"TName_Option_Map_(Uint32)_(Uint32)"*
  store %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_2_load_274", %"TName_Option_Map_(Uint32)_(Uint32)"** %"$res1_2"
  %"$$res1_2_276" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %"$res1_2"
  %"$$res1_2_tag_277" = getelementptr inbounds %"TName_Option_Map_(Uint32)_(Uint32)", %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_2_276", i32 0, i32 0
  %"$$res1_2_tag_278" = load i8, i8* %"$$res1_2_tag_277"
  switch i8 %"$$res1_2_tag_278", label %"$default_279" [
    i8 0, label %"$Some_280"
  ]

"$Some_280":                                      ; preds = %"$Some_271"
  %"$$res1_2_281" = bitcast %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_2_276" to %"CName_Some_Map_(Uint32)_(Uint32)"*
  %"$$a1_0_gep_282" = getelementptr inbounds %"CName_Some_Map_(Uint32)_(Uint32)", %"CName_Some_Map_(Uint32)_(Uint32)"* %"$$res1_2_281", i32 0, i32 1
  %"$$a1_0_load_283" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$$a1_0_gep_282"
  %"$a1_0" = alloca %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$$a1_0_load_283", %Map_Uint32_Uint32** %"$a1_0"
  %"$gasrem_284" = load i64, i64* @_gasrem
  %"$gascmp_285" = icmp ugt i64 1, %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %"$Some_280"
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %"$Some_280"
  %"$consume_288" = sub i64 %"$gasrem_284", 1
  store i64 %"$consume_288", i64* @_gasrem
  %p11 = alloca %TName_Bool*
  %"$execptr_load_289" = load i8*, i8** @_execptr
  %"$b1_290" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1
  %"$$b1_290_291" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b1_290" to i8*
  %"$contains_i1_292" = alloca %Uint32
  %"$i1_293" = load %Uint32, %Uint32* %i1
  store %Uint32 %"$i1_293", %Uint32* %"$contains_i1_292"
  %"$$contains_i1_292_294" = bitcast %Uint32* %"$contains_i1_292" to i8*
  %"$contains_call_295" = call %TName_Bool* @_contains(i8* %"$execptr_load_289", %_TyDescrTy_Typ* @"$TyDescr_Map_46", i8* %"$$b1_290_291", i8* %"$$contains_i1_292_294")
  store %TName_Bool* %"$contains_call_295", %TName_Bool** %p11
  %"$gasrem_296" = load i64, i64* @_gasrem
  %"$gascmp_297" = icmp ugt i64 1, %"$gasrem_296"
  br i1 %"$gascmp_297", label %"$out_of_gas_298", label %"$have_gas_299"

"$out_of_gas_298":                                ; preds = %"$have_gas_287"
  call void @_out_of_gas()
  br label %"$have_gas_299"

"$have_gas_299":                                  ; preds = %"$out_of_gas_298", %"$have_gas_287"
  %"$consume_300" = sub i64 %"$gasrem_296", 1
  store i64 %"$consume_300", i64* @_gasrem
  %p1_i = alloca %Uint32
  %"$gasrem_301" = load i64, i64* @_gasrem
  %"$gascmp_302" = icmp ugt i64 1, %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %"$have_gas_299"
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %"$have_gas_299"
  %"$consume_305" = sub i64 %"$gasrem_301", 1
  store i64 %"$consume_305", i64* @_gasrem
  %"$bool_to_uint_3" = alloca %Uint32
  %"$bool_to_uint_306" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint
  %"$bool_to_uint_fptr_307" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_306", 0
  %"$bool_to_uint_envptr_308" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_306", 1
  %"$p1_309" = load %TName_Bool*, %TName_Bool** %p11
  %"$bool_to_uint_call_310" = call %Uint32 %"$bool_to_uint_fptr_307"(i8* %"$bool_to_uint_envptr_308", %TName_Bool* %"$p1_309")
  store %Uint32 %"$bool_to_uint_call_310", %Uint32* %"$bool_to_uint_3"
  %"$$bool_to_uint_3_311" = load %Uint32, %Uint32* %"$bool_to_uint_3"
  store %Uint32 %"$$bool_to_uint_3_311", %Uint32* %p1_i
  %"$gasrem_312" = load i64, i64* @_gasrem
  %"$gascmp_313" = icmp ugt i64 1, %"$gasrem_312"
  br i1 %"$gascmp_313", label %"$out_of_gas_314", label %"$have_gas_315"

"$out_of_gas_314":                                ; preds = %"$have_gas_304"
  call void @_out_of_gas()
  br label %"$have_gas_315"

"$have_gas_315":                                  ; preds = %"$out_of_gas_314", %"$have_gas_304"
  %"$consume_316" = sub i64 %"$gasrem_312", 1
  store i64 %"$consume_316", i64* @_gasrem
  %p2 = alloca %TName_Bool*
  %"$execptr_load_317" = load i8*, i8** @_execptr
  %"$$a1_0_318" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_0"
  %"$$$a1_0_318_319" = bitcast %Map_Uint32_Uint32* %"$$a1_0_318" to i8*
  %"$contains_i0_320" = alloca %Uint32
  %"$i0_321" = load %Uint32, %Uint32* %i0
  store %Uint32 %"$i0_321", %Uint32* %"$contains_i0_320"
  %"$$contains_i0_320_322" = bitcast %Uint32* %"$contains_i0_320" to i8*
  %"$contains_call_323" = call %TName_Bool* @_contains(i8* %"$execptr_load_317", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$$a1_0_318_319", i8* %"$$contains_i0_320_322")
  store %TName_Bool* %"$contains_call_323", %TName_Bool** %p2
  %"$gasrem_324" = load i64, i64* @_gasrem
  %"$gascmp_325" = icmp ugt i64 1, %"$gasrem_324"
  br i1 %"$gascmp_325", label %"$out_of_gas_326", label %"$have_gas_327"

"$out_of_gas_326":                                ; preds = %"$have_gas_315"
  call void @_out_of_gas()
  br label %"$have_gas_327"

"$have_gas_327":                                  ; preds = %"$out_of_gas_326", %"$have_gas_315"
  %"$consume_328" = sub i64 %"$gasrem_324", 1
  store i64 %"$consume_328", i64* @_gasrem
  %p2_i = alloca %Uint32
  %"$gasrem_329" = load i64, i64* @_gasrem
  %"$gascmp_330" = icmp ugt i64 1, %"$gasrem_329"
  br i1 %"$gascmp_330", label %"$out_of_gas_331", label %"$have_gas_332"

"$out_of_gas_331":                                ; preds = %"$have_gas_327"
  call void @_out_of_gas()
  br label %"$have_gas_332"

"$have_gas_332":                                  ; preds = %"$out_of_gas_331", %"$have_gas_327"
  %"$consume_333" = sub i64 %"$gasrem_329", 1
  store i64 %"$consume_333", i64* @_gasrem
  %"$bool_to_uint_4" = alloca %Uint32
  %"$bool_to_uint_334" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint
  %"$bool_to_uint_fptr_335" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_334", 0
  %"$bool_to_uint_envptr_336" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_334", 1
  %"$p2_337" = load %TName_Bool*, %TName_Bool** %p2
  %"$bool_to_uint_call_338" = call %Uint32 %"$bool_to_uint_fptr_335"(i8* %"$bool_to_uint_envptr_336", %TName_Bool* %"$p2_337")
  store %Uint32 %"$bool_to_uint_call_338", %Uint32* %"$bool_to_uint_4"
  %"$$bool_to_uint_4_339" = load %Uint32, %Uint32* %"$bool_to_uint_4"
  store %Uint32 %"$$bool_to_uint_4_339", %Uint32* %p2_i
  %"$gasrem_340" = load i64, i64* @_gasrem
  %"$gascmp_341" = icmp ugt i64 1, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %"$have_gas_332"
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %"$have_gas_332"
  %"$consume_344" = sub i64 %"$gasrem_340", 1
  store i64 %"$consume_344", i64* @_gasrem
  %p3 = alloca %Uint32
  %"$p1_i_345" = load %Uint32, %Uint32* %p1_i
  %"$p2_i_346" = load %Uint32, %Uint32* %p2_i
  %"$add_call_347" = call %Uint32 @_add_Uint32(%Uint32 %"$p1_i_345", %Uint32 %"$p2_i_346")
  store %Uint32 %"$add_call_347", %Uint32* %p3
  %"$gasrem_348" = load i64, i64* @_gasrem
  %"$gascmp_349" = icmp ugt i64 1, %"$gasrem_348"
  br i1 %"$gascmp_349", label %"$out_of_gas_350", label %"$have_gas_351"

"$out_of_gas_350":                                ; preds = %"$have_gas_343"
  call void @_out_of_gas()
  br label %"$have_gas_351"

"$have_gas_351":                                  ; preds = %"$out_of_gas_350", %"$have_gas_343"
  %"$consume_352" = sub i64 %"$gasrem_348", 1
  store i64 %"$consume_352", i64* @_gasrem
  %a2 = alloca %Map_Uint32_Uint32*
  %"$execptr_load_353" = load i8*, i8** @_execptr
  %"$$a1_0_354" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_0"
  %"$$$a1_0_354_355" = bitcast %Map_Uint32_Uint32* %"$$a1_0_354" to i8*
  %"$_i1_356" = alloca %Uint32
  %"$i1_357" = load %Uint32, %Uint32* %i1
  store %Uint32 %"$i1_357", %Uint32* %"$_i1_356"
  %"$$_i1_356_358" = bitcast %Uint32* %"$_i1_356" to i8*
  %"$_call_359" = call i8* @_remove(i8* %"$execptr_load_353", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$$a1_0_354_355", i8* %"$$_i1_356_358")
  %"$_remove_360" = bitcast i8* %"$_call_359" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$_remove_360", %Map_Uint32_Uint32** %a2
  %"$gasrem_361" = load i64, i64* @_gasrem
  %"$gascmp_362" = icmp ugt i64 1, %"$gasrem_361"
  br i1 %"$gascmp_362", label %"$out_of_gas_363", label %"$have_gas_364"

"$out_of_gas_363":                                ; preds = %"$have_gas_351"
  call void @_out_of_gas()
  br label %"$have_gas_364"

"$have_gas_364":                                  ; preds = %"$out_of_gas_363", %"$have_gas_351"
  %"$consume_365" = sub i64 %"$gasrem_361", 1
  store i64 %"$consume_365", i64* @_gasrem
  %p5 = alloca %TName_Bool*
  %"$execptr_load_366" = load i8*, i8** @_execptr
  %"$a2_367" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a2
  %"$$a2_367_368" = bitcast %Map_Uint32_Uint32* %"$a2_367" to i8*
  %"$contains_i0_369" = alloca %Uint32
  %"$i0_370" = load %Uint32, %Uint32* %i0
  store %Uint32 %"$i0_370", %Uint32* %"$contains_i0_369"
  %"$$contains_i0_369_371" = bitcast %Uint32* %"$contains_i0_369" to i8*
  %"$contains_call_372" = call %TName_Bool* @_contains(i8* %"$execptr_load_366", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$a2_367_368", i8* %"$$contains_i0_369_371")
  store %TName_Bool* %"$contains_call_372", %TName_Bool** %p5
  %"$gasrem_373" = load i64, i64* @_gasrem
  %"$gascmp_374" = icmp ugt i64 1, %"$gasrem_373"
  br i1 %"$gascmp_374", label %"$out_of_gas_375", label %"$have_gas_376"

"$out_of_gas_375":                                ; preds = %"$have_gas_364"
  call void @_out_of_gas()
  br label %"$have_gas_376"

"$have_gas_376":                                  ; preds = %"$out_of_gas_375", %"$have_gas_364"
  %"$consume_377" = sub i64 %"$gasrem_373", 1
  store i64 %"$consume_377", i64* @_gasrem
  %p5_i = alloca %Uint32
  %"$gasrem_378" = load i64, i64* @_gasrem
  %"$gascmp_379" = icmp ugt i64 1, %"$gasrem_378"
  br i1 %"$gascmp_379", label %"$out_of_gas_380", label %"$have_gas_381"

"$out_of_gas_380":                                ; preds = %"$have_gas_376"
  call void @_out_of_gas()
  br label %"$have_gas_381"

"$have_gas_381":                                  ; preds = %"$out_of_gas_380", %"$have_gas_376"
  %"$consume_382" = sub i64 %"$gasrem_378", 1
  store i64 %"$consume_382", i64* @_gasrem
  %"$bool_to_uint_5" = alloca %Uint32
  %"$bool_to_uint_383" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint
  %"$bool_to_uint_fptr_384" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_383", 0
  %"$bool_to_uint_envptr_385" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_383", 1
  %"$p5_386" = load %TName_Bool*, %TName_Bool** %p5
  %"$bool_to_uint_call_387" = call %Uint32 %"$bool_to_uint_fptr_384"(i8* %"$bool_to_uint_envptr_385", %TName_Bool* %"$p5_386")
  store %Uint32 %"$bool_to_uint_call_387", %Uint32* %"$bool_to_uint_5"
  %"$$bool_to_uint_5_388" = load %Uint32, %Uint32* %"$bool_to_uint_5"
  store %Uint32 %"$$bool_to_uint_5_388", %Uint32* %p5_i
  %"$gasrem_389" = load i64, i64* @_gasrem
  %"$gascmp_390" = icmp ugt i64 1, %"$gasrem_389"
  br i1 %"$gascmp_390", label %"$out_of_gas_391", label %"$have_gas_392"

"$out_of_gas_391":                                ; preds = %"$have_gas_381"
  call void @_out_of_gas()
  br label %"$have_gas_392"

"$have_gas_392":                                  ; preds = %"$out_of_gas_391", %"$have_gas_381"
  %"$consume_393" = sub i64 %"$gasrem_389", 1
  store i64 %"$consume_393", i64* @_gasrem
  %p6 = alloca %Uint32
  %"$p3_394" = load %Uint32, %Uint32* %p3
  %"$p5_i_395" = load %Uint32, %Uint32* %p5_i
  %"$add_call_396" = call %Uint32 @_add_Uint32(%Uint32 %"$p3_394", %Uint32 %"$p5_i_395")
  store %Uint32 %"$add_call_396", %Uint32* %p6
  %"$gasrem_397" = load i64, i64* @_gasrem
  %"$gascmp_398" = icmp ugt i64 1, %"$gasrem_397"
  br i1 %"$gascmp_398", label %"$out_of_gas_399", label %"$have_gas_400"

"$out_of_gas_399":                                ; preds = %"$have_gas_392"
  call void @_out_of_gas()
  br label %"$have_gas_400"

"$have_gas_400":                                  ; preds = %"$out_of_gas_399", %"$have_gas_392"
  %"$consume_401" = sub i64 %"$gasrem_397", 1
  store i64 %"$consume_401", i64* @_gasrem
  %a3 = alloca %Map_Uint32_Uint32*
  %"$execptr_load_402" = load i8*, i8** @_execptr
  %"$$a1_0_403" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_0"
  %"$$$a1_0_403_404" = bitcast %Map_Uint32_Uint32* %"$$a1_0_403" to i8*
  %"$put_i1_405" = alloca %Uint32
  %"$i1_406" = load %Uint32, %Uint32* %i1
  store %Uint32 %"$i1_406", %Uint32* %"$put_i1_405"
  %"$$put_i1_405_407" = bitcast %Uint32* %"$put_i1_405" to i8*
  %"$put_i0_408" = alloca %Uint32
  %"$i0_409" = load %Uint32, %Uint32* %i0
  store %Uint32 %"$i0_409", %Uint32* %"$put_i0_408"
  %"$$put_i0_408_410" = bitcast %Uint32* %"$put_i0_408" to i8*
  %"$put_call_411" = call i8* @_put(i8* %"$execptr_load_402", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$$a1_0_403_404", i8* %"$$put_i1_405_407", i8* %"$$put_i0_408_410")
  %"$_put_412" = bitcast i8* %"$put_call_411" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$_put_412", %Map_Uint32_Uint32** %a3
  %"$gasrem_413" = load i64, i64* @_gasrem
  %"$gascmp_414" = icmp ugt i64 1, %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$have_gas_400"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$have_gas_400"
  %"$consume_417" = sub i64 %"$gasrem_413", 1
  store i64 %"$consume_417", i64* @_gasrem
  %a4 = alloca %Map_Uint32_Uint32*
  %"$execptr_load_418" = load i8*, i8** @_execptr
  %"$a3_419" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a3
  %"$$a3_419_420" = bitcast %Map_Uint32_Uint32* %"$a3_419" to i8*
  %"$put_p6_421" = alloca %Uint32
  %"$p6_422" = load %Uint32, %Uint32* %p6
  store %Uint32 %"$p6_422", %Uint32* %"$put_p6_421"
  %"$$put_p6_421_423" = bitcast %Uint32* %"$put_p6_421" to i8*
  %"$put_p3_424" = alloca %Uint32
  %"$p3_425" = load %Uint32, %Uint32* %p3
  store %Uint32 %"$p3_425", %Uint32* %"$put_p3_424"
  %"$$put_p3_424_426" = bitcast %Uint32* %"$put_p3_424" to i8*
  %"$put_call_427" = call i8* @_put(i8* %"$execptr_load_418", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$a3_419_420", i8* %"$$put_p6_421_423", i8* %"$$put_p3_424_426")
  %"$_put_428" = bitcast i8* %"$put_call_427" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$_put_428", %Map_Uint32_Uint32** %a4
  %"$gasrem_429" = load i64, i64* @_gasrem
  %"$gascmp_430" = icmp ugt i64 1, %"$gasrem_429"
  br i1 %"$gascmp_430", label %"$out_of_gas_431", label %"$have_gas_432"

"$out_of_gas_431":                                ; preds = %"$have_gas_416"
  call void @_out_of_gas()
  br label %"$have_gas_432"

"$have_gas_432":                                  ; preds = %"$out_of_gas_431", %"$have_gas_416"
  %"$consume_433" = sub i64 %"$gasrem_429", 1
  store i64 %"$consume_433", i64* @_gasrem
  %p7_i = alloca %Uint32
  %"$a4_434" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a4
  %"$$a4_434_435" = bitcast %Map_Uint32_Uint32* %"$a4_434" to i8*
  %"$size_call_436" = call %Uint32 @_size(i8* %"$$a4_434_435")
  store %Uint32 %"$size_call_436", %Uint32* %p7_i
  %"$p6_437" = load %Uint32, %Uint32* %p6
  %"$p7_i_438" = load %Uint32, %Uint32* %p7_i
  %"$add_call_439" = call %Uint32 @_add_Uint32(%Uint32 %"$p6_437", %Uint32 %"$p7_i_438")
  store %Uint32 %"$add_call_439", %Uint32* %"$expr_7"
  br label %"$matchsucc_275"

"$default_279":                                   ; preds = %"$Some_271"
  br label %"$joinp_1"

"$matchsucc_275":                                 ; preds = %"$have_gas_432"
  br label %"$matchsucc_232"

"$default_270":                                   ; preds = %"$have_gas_230"
  br label %"$joinp_1"

"$joinp_1":                                       ; preds = %"$default_279", %"$default_270"
  %"$gasrem_233" = load i64, i64* @_gasrem
  %"$gascmp_234" = icmp ugt i64 1, %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$joinp_1"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$joinp_1"
  %"$consume_237" = sub i64 %"$gasrem_233", 1
  store i64 %"$consume_237", i64* @_gasrem
  %p = alloca %TName_Bool*
  %"$execptr_load_238" = load i8*, i8** @_execptr
  %"$a1_239" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a1
  %"$$a1_239_240" = bitcast %Map_Uint32_Uint32* %"$a1_239" to i8*
  %"$contains_i0_241" = alloca %Uint32
  %"$i0_242" = load %Uint32, %Uint32* %i0
  store %Uint32 %"$i0_242", %Uint32* %"$contains_i0_241"
  %"$$contains_i0_241_243" = bitcast %Uint32* %"$contains_i0_241" to i8*
  %"$contains_call_244" = call %TName_Bool* @_contains(i8* %"$execptr_load_238", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$a1_239_240", i8* %"$$contains_i0_241_243")
  store %TName_Bool* %"$contains_call_244", %TName_Bool** %p
  %"$gasrem_245" = load i64, i64* @_gasrem
  %"$gascmp_246" = icmp ugt i64 1, %"$gasrem_245"
  br i1 %"$gascmp_246", label %"$out_of_gas_247", label %"$have_gas_248"

"$out_of_gas_247":                                ; preds = %"$have_gas_236"
  call void @_out_of_gas()
  br label %"$have_gas_248"

"$have_gas_248":                                  ; preds = %"$out_of_gas_247", %"$have_gas_236"
  %"$consume_249" = sub i64 %"$gasrem_245", 1
  store i64 %"$consume_249", i64* @_gasrem
  %p1 = alloca %Uint32
  %"$gasrem_250" = load i64, i64* @_gasrem
  %"$gascmp_251" = icmp ugt i64 1, %"$gasrem_250"
  br i1 %"$gascmp_251", label %"$out_of_gas_252", label %"$have_gas_253"

"$out_of_gas_252":                                ; preds = %"$have_gas_248"
  call void @_out_of_gas()
  br label %"$have_gas_253"

"$have_gas_253":                                  ; preds = %"$out_of_gas_252", %"$have_gas_248"
  %"$consume_254" = sub i64 %"$gasrem_250", 1
  store i64 %"$consume_254", i64* @_gasrem
  %"$bool_to_uint_6" = alloca %Uint32
  %"$bool_to_uint_255" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint
  %"$bool_to_uint_fptr_256" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_255", 0
  %"$bool_to_uint_envptr_257" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_255", 1
  %"$p_258" = load %TName_Bool*, %TName_Bool** %p
  %"$bool_to_uint_call_259" = call %Uint32 %"$bool_to_uint_fptr_256"(i8* %"$bool_to_uint_envptr_257", %TName_Bool* %"$p_258")
  store %Uint32 %"$bool_to_uint_call_259", %Uint32* %"$bool_to_uint_6"
  %"$$bool_to_uint_6_260" = load %Uint32, %Uint32* %"$bool_to_uint_6"
  store %Uint32 %"$$bool_to_uint_6_260", %Uint32* %p1
  %"$gasrem_261" = load i64, i64* @_gasrem
  %"$gascmp_262" = icmp ugt i64 1, %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %"$have_gas_253"
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %"$have_gas_253"
  %"$consume_265" = sub i64 %"$gasrem_261", 1
  store i64 %"$consume_265", i64* @_gasrem
  %"$p1_266" = load %Uint32, %Uint32* %p1
  store %Uint32 %"$p1_266", %Uint32* %"$expr_7"
  br label %"$matchsucc_232"

"$matchsucc_232":                                 ; preds = %"$matchsucc_275", %"$have_gas_264"
  %"$$expr_7_440" = load %Uint32, %Uint32* %"$expr_7"
  ret %Uint32 %"$$expr_7_440"
}

declare i8* @_new_empty_map(i8*)

declare i8* @_put(i8*, %_TyDescrTy_Typ*, i8*, i8*, i8*)

declare i8* @_salloc(i8*, i64)

declare i8* @_get(i8*, %_TyDescrTy_Typ*, i8*, i8*)

declare %TName_Bool* @_contains(i8*, %_TyDescrTy_Typ*, i8*, i8*)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

declare i8* @_remove(i8*, %_TyDescrTy_Typ*, i8*, i8*)

declare %Uint32 @_size(i8*)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_441" = call %Uint32 @"$scilla_expr_108"(i8* null)
  %"$pval_442" = alloca %Uint32
  %"$memvoidcast_443" = bitcast %Uint32* %"$pval_442" to i8*
  store %Uint32 %"$exprval_441", %Uint32* %"$pval_442"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_14", i8* %"$memvoidcast_443")
  ret void
}
