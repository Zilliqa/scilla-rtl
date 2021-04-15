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
target triple = "x86_64-unknown-linux-gnu"

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

define internal %Uint32 @"$fundef_8"(%"$$fundef_8_env_83"* %0, %TName_Bool* %1) !dbg !4 {
entry:
  %"$retval_9" = alloca %Uint32, align 8
  %"$gasrem_84" = load i64, i64* @_gasrem, align 8
  %"$gascmp_85" = icmp ugt i64 2, %"$gasrem_84"
  br i1 %"$gascmp_85", label %"$out_of_gas_86", label %"$have_gas_87"

"$out_of_gas_86":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_87"

"$have_gas_87":                                   ; preds = %"$out_of_gas_86", %entry
  %"$consume_88" = sub i64 %"$gasrem_84", 2
  store i64 %"$consume_88", i64* @_gasrem, align 8
  %"$b_tag_90" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b_tag_91" = load i8, i8* %"$b_tag_90", align 1
  switch i8 %"$b_tag_91", label %"$empty_default_92" [
    i8 0, label %"$True_93"
    i8 1, label %"$False_100"
  ], !dbg !8

"$True_93":                                       ; preds = %"$have_gas_87"
  %"$b_94" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_95" = load i64, i64* @_gasrem, align 8
  %"$gascmp_96" = icmp ugt i64 1, %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %"$True_93"
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %"$True_93"
  %"$consume_99" = sub i64 %"$gasrem_95", 1
  store i64 %"$consume_99", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %"$retval_9", align 4, !dbg !9
  br label %"$matchsucc_89"

"$False_100":                                     ; preds = %"$have_gas_87"
  %"$b_101" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_103" = icmp ugt i64 1, %"$gasrem_102"
  br i1 %"$gascmp_103", label %"$out_of_gas_104", label %"$have_gas_105"

"$out_of_gas_104":                                ; preds = %"$False_100"
  call void @_out_of_gas()
  br label %"$have_gas_105"

"$have_gas_105":                                  ; preds = %"$out_of_gas_104", %"$False_100"
  %"$consume_106" = sub i64 %"$gasrem_102", 1
  store i64 %"$consume_106", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %"$retval_9", align 4, !dbg !12
  br label %"$matchsucc_89"

"$empty_default_92":                              ; preds = %"$have_gas_87"
  br label %"$matchsucc_89"

"$matchsucc_89":                                  ; preds = %"$have_gas_105", %"$have_gas_98", %"$empty_default_92"
  %"$$retval_9_107" = load %Uint32, %Uint32* %"$retval_9", align 4
  ret %Uint32 %"$$retval_9_107"
}

declare void @_out_of_gas()

define void @_init_libs() !dbg !14 {
entry:
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !16 {
entry:
  %"$expr_7" = alloca %Uint32, align 8
  %"$gasrem_108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_109" = icmp ugt i64 1, %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %entry
  %"$consume_112" = sub i64 %"$gasrem_108", 1
  store i64 %"$consume_112", i64* @_gasrem, align 8
  %bool_to_uint = alloca { %Uint32 (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_114" = icmp ugt i64 1, %"$gasrem_113"
  br i1 %"$gascmp_114", label %"$out_of_gas_115", label %"$have_gas_116"

"$out_of_gas_115":                                ; preds = %"$have_gas_111"
  call void @_out_of_gas()
  br label %"$have_gas_116"

"$have_gas_116":                                  ; preds = %"$out_of_gas_115", %"$have_gas_111"
  %"$consume_117" = sub i64 %"$gasrem_113", 1
  store i64 %"$consume_117", i64* @_gasrem, align 8
  store { %Uint32 (i8*, %TName_Bool*)*, i8* } { %Uint32 (i8*, %TName_Bool*)* bitcast (%Uint32 (%"$$fundef_8_env_83"*, %TName_Bool*)* @"$fundef_8" to %Uint32 (i8*, %TName_Bool*)*), i8* null }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8, !dbg !17
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 1, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %"$have_gas_116"
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %"$have_gas_116"
  %"$consume_125" = sub i64 %"$gasrem_121", 1
  store i64 %"$consume_125", i64* @_gasrem, align 8
  %i0 = alloca %Uint32, align 8
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 1, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %"$have_gas_124"
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %"$have_gas_124"
  %"$consume_130" = sub i64 %"$gasrem_126", 1
  store i64 %"$consume_130", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %i0, align 4, !dbg !18
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$have_gas_129"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$have_gas_129"
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem, align 8
  %i1 = alloca %Uint32, align 8
  %"$gasrem_136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_137" = icmp ugt i64 1, %"$gasrem_136"
  br i1 %"$gascmp_137", label %"$out_of_gas_138", label %"$have_gas_139"

"$out_of_gas_138":                                ; preds = %"$have_gas_134"
  call void @_out_of_gas()
  br label %"$have_gas_139"

"$have_gas_139":                                  ; preds = %"$out_of_gas_138", %"$have_gas_134"
  %"$consume_140" = sub i64 %"$gasrem_136", 1
  store i64 %"$consume_140", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %i1, align 4, !dbg !19
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 1, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %"$have_gas_139"
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %"$have_gas_139"
  %"$consume_145" = sub i64 %"$gasrem_141", 1
  store i64 %"$consume_145", i64* @_gasrem, align 8
  %a = alloca %Map_Uint32_Uint32*, align 8
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_144"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_144"
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem, align 8
  %"$execptr_load_151" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_152" = call i8* @_new_empty_map(i8* %"$execptr_load_151")
  %"$Emp_153" = bitcast i8* %"$_new_empty_map_call_152" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$Emp_153", %Map_Uint32_Uint32** %a, align 8, !dbg !20
  %"$gasrem_154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_155" = icmp ugt i64 1, %"$gasrem_154"
  br i1 %"$gascmp_155", label %"$out_of_gas_156", label %"$have_gas_157"

"$out_of_gas_156":                                ; preds = %"$have_gas_149"
  call void @_out_of_gas()
  br label %"$have_gas_157"

"$have_gas_157":                                  ; preds = %"$out_of_gas_156", %"$have_gas_149"
  %"$consume_158" = sub i64 %"$gasrem_154", 1
  store i64 %"$consume_158", i64* @_gasrem, align 8
  %a1 = alloca %Map_Uint32_Uint32*, align 8
  %"$execptr_load_159" = load i8*, i8** @_execptr, align 8
  %"$a_160" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a, align 8
  %"$$a_160_161" = bitcast %Map_Uint32_Uint32* %"$a_160" to i8*
  %"$put_i0_162" = alloca %Uint32, align 8
  %"$i0_163" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_163", %Uint32* %"$put_i0_162", align 4
  %"$$put_i0_162_164" = bitcast %Uint32* %"$put_i0_162" to i8*
  %"$put_i1_165" = alloca %Uint32, align 8
  %"$i1_166" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_166", %Uint32* %"$put_i1_165", align 4
  %"$$put_i1_165_167" = bitcast %Uint32* %"$put_i1_165" to i8*
  %"$put_call_168" = call i8* @_put(i8* %"$execptr_load_159", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$a_160_161", i8* %"$$put_i0_162_164", i8* %"$$put_i1_165_167")
  %"$_put_169" = bitcast i8* %"$put_call_168" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$_put_169", %Map_Uint32_Uint32** %a1, align 8, !dbg !21
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 1, %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %"$have_gas_157"
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %"$have_gas_157"
  %"$consume_174" = sub i64 %"$gasrem_170", 1
  store i64 %"$consume_174", i64* @_gasrem, align 8
  %o = alloca %"TName_Option_Map_(Uint32)_(Uint32)"*, align 8
  %"$gasrem_175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_176" = icmp ugt i64 1, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %"$have_gas_173"
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %"$have_gas_173"
  %"$consume_179" = sub i64 %"$gasrem_175", 1
  store i64 %"$consume_179", i64* @_gasrem, align 8
  %"$a1_180" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a1, align 8
  %"$adtval_181_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_181_salloc" = call i8* @_salloc(i8* %"$adtval_181_load", i64 9)
  %"$adtval_181" = bitcast i8* %"$adtval_181_salloc" to %"CName_Some_Map_(Uint32)_(Uint32)"*
  %"$adtgep_182" = getelementptr inbounds %"CName_Some_Map_(Uint32)_(Uint32)", %"CName_Some_Map_(Uint32)_(Uint32)"* %"$adtval_181", i32 0, i32 0
  store i8 0, i8* %"$adtgep_182", align 1
  %"$adtgep_183" = getelementptr inbounds %"CName_Some_Map_(Uint32)_(Uint32)", %"CName_Some_Map_(Uint32)_(Uint32)"* %"$adtval_181", i32 0, i32 1
  store %Map_Uint32_Uint32* %"$a1_180", %Map_Uint32_Uint32** %"$adtgep_183", align 8
  %"$adtptr_184" = bitcast %"CName_Some_Map_(Uint32)_(Uint32)"* %"$adtval_181" to %"TName_Option_Map_(Uint32)_(Uint32)"*
  store %"TName_Option_Map_(Uint32)_(Uint32)"* %"$adtptr_184", %"TName_Option_Map_(Uint32)_(Uint32)"** %o, align 8, !dbg !22
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 1, %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %"$have_gas_178"
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %"$have_gas_178"
  %"$consume_189" = sub i64 %"$gasrem_185", 1
  store i64 %"$consume_189", i64* @_gasrem, align 8
  %b = alloca %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, align 8
  %"$gasrem_190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_191" = icmp ugt i64 1, %"$gasrem_190"
  br i1 %"$gascmp_191", label %"$out_of_gas_192", label %"$have_gas_193"

"$out_of_gas_192":                                ; preds = %"$have_gas_188"
  call void @_out_of_gas()
  br label %"$have_gas_193"

"$have_gas_193":                                  ; preds = %"$out_of_gas_192", %"$have_gas_188"
  %"$consume_194" = sub i64 %"$gasrem_190", 1
  store i64 %"$consume_194", i64* @_gasrem, align 8
  %"$execptr_load_195" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_196" = call i8* @_new_empty_map(i8* %"$execptr_load_195")
  %"$Emp_197" = bitcast i8* %"$_new_empty_map_call_196" to %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*
  store %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$Emp_197", %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b, align 8, !dbg !23
  %"$gasrem_198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_199" = icmp ugt i64 1, %"$gasrem_198"
  br i1 %"$gascmp_199", label %"$out_of_gas_200", label %"$have_gas_201"

"$out_of_gas_200":                                ; preds = %"$have_gas_193"
  call void @_out_of_gas()
  br label %"$have_gas_201"

"$have_gas_201":                                  ; preds = %"$out_of_gas_200", %"$have_gas_193"
  %"$consume_202" = sub i64 %"$gasrem_198", 1
  store i64 %"$consume_202", i64* @_gasrem, align 8
  %b1 = alloca %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, align 8
  %"$execptr_load_203" = load i8*, i8** @_execptr, align 8
  %"$b_204" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b, align 8
  %"$$b_204_205" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b_204" to i8*
  %"$put_i1_206" = alloca %Uint32, align 8
  %"$i1_207" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_207", %Uint32* %"$put_i1_206", align 4
  %"$$put_i1_206_208" = bitcast %Uint32* %"$put_i1_206" to i8*
  %"$o_209" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %o, align 8
  %"$$o_209_210" = bitcast %"TName_Option_Map_(Uint32)_(Uint32)"* %"$o_209" to i8*
  %"$put_call_211" = call i8* @_put(i8* %"$execptr_load_203", %_TyDescrTy_Typ* @"$TyDescr_Map_46", i8* %"$$b_204_205", i8* %"$$put_i1_206_208", i8* %"$$o_209_210")
  %"$_put_212" = bitcast i8* %"$put_call_211" to %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*
  store %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$_put_212", %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1, align 8, !dbg !24
  %"$gasrem_213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_214" = icmp ugt i64 1, %"$gasrem_213"
  br i1 %"$gascmp_214", label %"$out_of_gas_215", label %"$have_gas_216"

"$out_of_gas_215":                                ; preds = %"$have_gas_201"
  call void @_out_of_gas()
  br label %"$have_gas_216"

"$have_gas_216":                                  ; preds = %"$out_of_gas_215", %"$have_gas_201"
  %"$consume_217" = sub i64 %"$gasrem_213", 1
  store i64 %"$consume_217", i64* @_gasrem, align 8
  %res1 = alloca %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*, align 8
  %"$execptr_load_218" = load i8*, i8** @_execptr, align 8
  %"$b1_219" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1, align 8
  %"$$b1_219_220" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b1_219" to i8*
  %"$get_i1_221" = alloca %Uint32, align 8
  %"$i1_222" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_222", %Uint32* %"$get_i1_221", align 4
  %"$$get_i1_221_223" = bitcast %Uint32* %"$get_i1_221" to i8*
  %"$get_call_224" = call i8* @_get(i8* %"$execptr_load_218", %_TyDescrTy_Typ* @"$TyDescr_Map_46", i8* %"$$b1_219_220", i8* %"$$get_i1_221_223")
  %"$_get_225" = bitcast i8* %"$get_call_224" to %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*
  store %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$_get_225", %"TName_Option_Option_(Map_(Uint32)_(Uint32))"** %res1, align 8, !dbg !25
  %"$gasrem_226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_227" = icmp ugt i64 2, %"$gasrem_226"
  br i1 %"$gascmp_227", label %"$out_of_gas_228", label %"$have_gas_229"

"$out_of_gas_228":                                ; preds = %"$have_gas_216"
  call void @_out_of_gas()
  br label %"$have_gas_229"

"$have_gas_229":                                  ; preds = %"$out_of_gas_228", %"$have_gas_216"
  %"$consume_230" = sub i64 %"$gasrem_226", 2
  store i64 %"$consume_230", i64* @_gasrem, align 8
  %"$res1_266" = load %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*, %"TName_Option_Option_(Map_(Uint32)_(Uint32))"** %res1, align 8
  %"$res1_tag_267" = getelementptr inbounds %"TName_Option_Option_(Map_(Uint32)_(Uint32))", %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$res1_266", i32 0, i32 0
  %"$res1_tag_268" = load i8, i8* %"$res1_tag_267", align 1
  switch i8 %"$res1_tag_268", label %"$default_269" [
    i8 0, label %"$Some_270"
  ], !dbg !26

"$Some_270":                                      ; preds = %"$have_gas_229"
  %"$res1_271" = bitcast %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$res1_266" to %"CName_Some_Option_(Map_(Uint32)_(Uint32))"*
  %"$$res1_2_gep_272" = getelementptr inbounds %"CName_Some_Option_(Map_(Uint32)_(Uint32))", %"CName_Some_Option_(Map_(Uint32)_(Uint32))"* %"$res1_271", i32 0, i32 1
  %"$$res1_2_load_273" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %"$$res1_2_gep_272", align 8
  %"$res1_2" = alloca %"TName_Option_Map_(Uint32)_(Uint32)"*, align 8
  store %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_2_load_273", %"TName_Option_Map_(Uint32)_(Uint32)"** %"$res1_2", align 8
  %"$$res1_2_275" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %"$res1_2", align 8
  %"$$res1_2_tag_276" = getelementptr inbounds %"TName_Option_Map_(Uint32)_(Uint32)", %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_2_275", i32 0, i32 0
  %"$$res1_2_tag_277" = load i8, i8* %"$$res1_2_tag_276", align 1
  switch i8 %"$$res1_2_tag_277", label %"$default_278" [
    i8 0, label %"$Some_279"
  ], !dbg !27

"$Some_279":                                      ; preds = %"$Some_270"
  %"$$res1_2_280" = bitcast %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_2_275" to %"CName_Some_Map_(Uint32)_(Uint32)"*
  %"$$a1_0_gep_281" = getelementptr inbounds %"CName_Some_Map_(Uint32)_(Uint32)", %"CName_Some_Map_(Uint32)_(Uint32)"* %"$$res1_2_280", i32 0, i32 1
  %"$$a1_0_load_282" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$$a1_0_gep_281", align 8
  %"$a1_0" = alloca %Map_Uint32_Uint32*, align 8
  store %Map_Uint32_Uint32* %"$$a1_0_load_282", %Map_Uint32_Uint32** %"$a1_0", align 8
  %"$gasrem_283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_284" = icmp ugt i64 1, %"$gasrem_283"
  br i1 %"$gascmp_284", label %"$out_of_gas_285", label %"$have_gas_286"

"$out_of_gas_285":                                ; preds = %"$Some_279"
  call void @_out_of_gas()
  br label %"$have_gas_286"

"$have_gas_286":                                  ; preds = %"$out_of_gas_285", %"$Some_279"
  %"$consume_287" = sub i64 %"$gasrem_283", 1
  store i64 %"$consume_287", i64* @_gasrem, align 8
  %p11 = alloca %TName_Bool*, align 8
  %"$execptr_load_288" = load i8*, i8** @_execptr, align 8
  %"$b1_289" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1, align 8
  %"$$b1_289_290" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b1_289" to i8*
  %"$contains_i1_291" = alloca %Uint32, align 8
  %"$i1_292" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_292", %Uint32* %"$contains_i1_291", align 4
  %"$$contains_i1_291_293" = bitcast %Uint32* %"$contains_i1_291" to i8*
  %"$contains_call_294" = call %TName_Bool* @_contains(i8* %"$execptr_load_288", %_TyDescrTy_Typ* @"$TyDescr_Map_46", i8* %"$$b1_289_290", i8* %"$$contains_i1_291_293")
  store %TName_Bool* %"$contains_call_294", %TName_Bool** %p11, align 8, !dbg !30
  %"$gasrem_295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_296" = icmp ugt i64 1, %"$gasrem_295"
  br i1 %"$gascmp_296", label %"$out_of_gas_297", label %"$have_gas_298"

"$out_of_gas_297":                                ; preds = %"$have_gas_286"
  call void @_out_of_gas()
  br label %"$have_gas_298"

"$have_gas_298":                                  ; preds = %"$out_of_gas_297", %"$have_gas_286"
  %"$consume_299" = sub i64 %"$gasrem_295", 1
  store i64 %"$consume_299", i64* @_gasrem, align 8
  %p1_i = alloca %Uint32, align 8
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %"$have_gas_298"
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %"$have_gas_298"
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem, align 8
  %"$bool_to_uint_3" = alloca %Uint32, align 8
  %"$bool_to_uint_305" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_306" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_305", 0
  %"$bool_to_uint_envptr_307" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_305", 1
  %"$p1_308" = load %TName_Bool*, %TName_Bool** %p11, align 8
  %"$bool_to_uint_call_309" = call %Uint32 %"$bool_to_uint_fptr_306"(i8* %"$bool_to_uint_envptr_307", %TName_Bool* %"$p1_308"), !dbg !33
  store %Uint32 %"$bool_to_uint_call_309", %Uint32* %"$bool_to_uint_3", align 4, !dbg !33
  %"$$bool_to_uint_3_310" = load %Uint32, %Uint32* %"$bool_to_uint_3", align 4
  store %Uint32 %"$$bool_to_uint_3_310", %Uint32* %p1_i, align 4, !dbg !33
  %"$gasrem_311" = load i64, i64* @_gasrem, align 8
  %"$gascmp_312" = icmp ugt i64 1, %"$gasrem_311"
  br i1 %"$gascmp_312", label %"$out_of_gas_313", label %"$have_gas_314"

"$out_of_gas_313":                                ; preds = %"$have_gas_303"
  call void @_out_of_gas()
  br label %"$have_gas_314"

"$have_gas_314":                                  ; preds = %"$out_of_gas_313", %"$have_gas_303"
  %"$consume_315" = sub i64 %"$gasrem_311", 1
  store i64 %"$consume_315", i64* @_gasrem, align 8
  %p2 = alloca %TName_Bool*, align 8
  %"$execptr_load_316" = load i8*, i8** @_execptr, align 8
  %"$$a1_0_317" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_0", align 8
  %"$$$a1_0_317_318" = bitcast %Map_Uint32_Uint32* %"$$a1_0_317" to i8*
  %"$contains_i0_319" = alloca %Uint32, align 8
  %"$i0_320" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_320", %Uint32* %"$contains_i0_319", align 4
  %"$$contains_i0_319_321" = bitcast %Uint32* %"$contains_i0_319" to i8*
  %"$contains_call_322" = call %TName_Bool* @_contains(i8* %"$execptr_load_316", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$$a1_0_317_318", i8* %"$$contains_i0_319_321")
  store %TName_Bool* %"$contains_call_322", %TName_Bool** %p2, align 8, !dbg !34
  %"$gasrem_323" = load i64, i64* @_gasrem, align 8
  %"$gascmp_324" = icmp ugt i64 1, %"$gasrem_323"
  br i1 %"$gascmp_324", label %"$out_of_gas_325", label %"$have_gas_326"

"$out_of_gas_325":                                ; preds = %"$have_gas_314"
  call void @_out_of_gas()
  br label %"$have_gas_326"

"$have_gas_326":                                  ; preds = %"$out_of_gas_325", %"$have_gas_314"
  %"$consume_327" = sub i64 %"$gasrem_323", 1
  store i64 %"$consume_327", i64* @_gasrem, align 8
  %p2_i = alloca %Uint32, align 8
  %"$gasrem_328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_329" = icmp ugt i64 1, %"$gasrem_328"
  br i1 %"$gascmp_329", label %"$out_of_gas_330", label %"$have_gas_331"

"$out_of_gas_330":                                ; preds = %"$have_gas_326"
  call void @_out_of_gas()
  br label %"$have_gas_331"

"$have_gas_331":                                  ; preds = %"$out_of_gas_330", %"$have_gas_326"
  %"$consume_332" = sub i64 %"$gasrem_328", 1
  store i64 %"$consume_332", i64* @_gasrem, align 8
  %"$bool_to_uint_4" = alloca %Uint32, align 8
  %"$bool_to_uint_333" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_334" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_333", 0
  %"$bool_to_uint_envptr_335" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_333", 1
  %"$p2_336" = load %TName_Bool*, %TName_Bool** %p2, align 8
  %"$bool_to_uint_call_337" = call %Uint32 %"$bool_to_uint_fptr_334"(i8* %"$bool_to_uint_envptr_335", %TName_Bool* %"$p2_336"), !dbg !35
  store %Uint32 %"$bool_to_uint_call_337", %Uint32* %"$bool_to_uint_4", align 4, !dbg !35
  %"$$bool_to_uint_4_338" = load %Uint32, %Uint32* %"$bool_to_uint_4", align 4
  store %Uint32 %"$$bool_to_uint_4_338", %Uint32* %p2_i, align 4, !dbg !35
  %"$gasrem_339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_340" = icmp ugt i64 1, %"$gasrem_339"
  br i1 %"$gascmp_340", label %"$out_of_gas_341", label %"$have_gas_342"

"$out_of_gas_341":                                ; preds = %"$have_gas_331"
  call void @_out_of_gas()
  br label %"$have_gas_342"

"$have_gas_342":                                  ; preds = %"$out_of_gas_341", %"$have_gas_331"
  %"$consume_343" = sub i64 %"$gasrem_339", 1
  store i64 %"$consume_343", i64* @_gasrem, align 8
  %p3 = alloca %Uint32, align 8
  %"$p1_i_344" = load %Uint32, %Uint32* %p1_i, align 4
  %"$p2_i_345" = load %Uint32, %Uint32* %p2_i, align 4
  %"$add_call_346" = call %Uint32 @_add_Uint32(%Uint32 %"$p1_i_344", %Uint32 %"$p2_i_345")
  store %Uint32 %"$add_call_346", %Uint32* %p3, align 4, !dbg !36
  %"$gasrem_347" = load i64, i64* @_gasrem, align 8
  %"$gascmp_348" = icmp ugt i64 1, %"$gasrem_347"
  br i1 %"$gascmp_348", label %"$out_of_gas_349", label %"$have_gas_350"

"$out_of_gas_349":                                ; preds = %"$have_gas_342"
  call void @_out_of_gas()
  br label %"$have_gas_350"

"$have_gas_350":                                  ; preds = %"$out_of_gas_349", %"$have_gas_342"
  %"$consume_351" = sub i64 %"$gasrem_347", 1
  store i64 %"$consume_351", i64* @_gasrem, align 8
  %a2 = alloca %Map_Uint32_Uint32*, align 8
  %"$execptr_load_352" = load i8*, i8** @_execptr, align 8
  %"$$a1_0_353" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_0", align 8
  %"$$$a1_0_353_354" = bitcast %Map_Uint32_Uint32* %"$$a1_0_353" to i8*
  %"$_i1_355" = alloca %Uint32, align 8
  %"$i1_356" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_356", %Uint32* %"$_i1_355", align 4
  %"$$_i1_355_357" = bitcast %Uint32* %"$_i1_355" to i8*
  %"$_call_358" = call i8* @_remove(i8* %"$execptr_load_352", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$$a1_0_353_354", i8* %"$$_i1_355_357")
  %"$_remove_359" = bitcast i8* %"$_call_358" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$_remove_359", %Map_Uint32_Uint32** %a2, align 8, !dbg !37
  %"$gasrem_360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_361" = icmp ugt i64 1, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$have_gas_350"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$have_gas_350"
  %"$consume_364" = sub i64 %"$gasrem_360", 1
  store i64 %"$consume_364", i64* @_gasrem, align 8
  %p5 = alloca %TName_Bool*, align 8
  %"$execptr_load_365" = load i8*, i8** @_execptr, align 8
  %"$a2_366" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a2, align 8
  %"$$a2_366_367" = bitcast %Map_Uint32_Uint32* %"$a2_366" to i8*
  %"$contains_i0_368" = alloca %Uint32, align 8
  %"$i0_369" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_369", %Uint32* %"$contains_i0_368", align 4
  %"$$contains_i0_368_370" = bitcast %Uint32* %"$contains_i0_368" to i8*
  %"$contains_call_371" = call %TName_Bool* @_contains(i8* %"$execptr_load_365", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$a2_366_367", i8* %"$$contains_i0_368_370")
  store %TName_Bool* %"$contains_call_371", %TName_Bool** %p5, align 8, !dbg !38
  %"$gasrem_372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_373" = icmp ugt i64 1, %"$gasrem_372"
  br i1 %"$gascmp_373", label %"$out_of_gas_374", label %"$have_gas_375"

"$out_of_gas_374":                                ; preds = %"$have_gas_363"
  call void @_out_of_gas()
  br label %"$have_gas_375"

"$have_gas_375":                                  ; preds = %"$out_of_gas_374", %"$have_gas_363"
  %"$consume_376" = sub i64 %"$gasrem_372", 1
  store i64 %"$consume_376", i64* @_gasrem, align 8
  %p5_i = alloca %Uint32, align 8
  %"$gasrem_377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_378" = icmp ugt i64 1, %"$gasrem_377"
  br i1 %"$gascmp_378", label %"$out_of_gas_379", label %"$have_gas_380"

"$out_of_gas_379":                                ; preds = %"$have_gas_375"
  call void @_out_of_gas()
  br label %"$have_gas_380"

"$have_gas_380":                                  ; preds = %"$out_of_gas_379", %"$have_gas_375"
  %"$consume_381" = sub i64 %"$gasrem_377", 1
  store i64 %"$consume_381", i64* @_gasrem, align 8
  %"$bool_to_uint_5" = alloca %Uint32, align 8
  %"$bool_to_uint_382" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_383" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_382", 0
  %"$bool_to_uint_envptr_384" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_382", 1
  %"$p5_385" = load %TName_Bool*, %TName_Bool** %p5, align 8
  %"$bool_to_uint_call_386" = call %Uint32 %"$bool_to_uint_fptr_383"(i8* %"$bool_to_uint_envptr_384", %TName_Bool* %"$p5_385"), !dbg !39
  store %Uint32 %"$bool_to_uint_call_386", %Uint32* %"$bool_to_uint_5", align 4, !dbg !39
  %"$$bool_to_uint_5_387" = load %Uint32, %Uint32* %"$bool_to_uint_5", align 4
  store %Uint32 %"$$bool_to_uint_5_387", %Uint32* %p5_i, align 4, !dbg !39
  %"$gasrem_388" = load i64, i64* @_gasrem, align 8
  %"$gascmp_389" = icmp ugt i64 1, %"$gasrem_388"
  br i1 %"$gascmp_389", label %"$out_of_gas_390", label %"$have_gas_391"

"$out_of_gas_390":                                ; preds = %"$have_gas_380"
  call void @_out_of_gas()
  br label %"$have_gas_391"

"$have_gas_391":                                  ; preds = %"$out_of_gas_390", %"$have_gas_380"
  %"$consume_392" = sub i64 %"$gasrem_388", 1
  store i64 %"$consume_392", i64* @_gasrem, align 8
  %p6 = alloca %Uint32, align 8
  %"$p3_393" = load %Uint32, %Uint32* %p3, align 4
  %"$p5_i_394" = load %Uint32, %Uint32* %p5_i, align 4
  %"$add_call_395" = call %Uint32 @_add_Uint32(%Uint32 %"$p3_393", %Uint32 %"$p5_i_394")
  store %Uint32 %"$add_call_395", %Uint32* %p6, align 4, !dbg !40
  %"$gasrem_396" = load i64, i64* @_gasrem, align 8
  %"$gascmp_397" = icmp ugt i64 1, %"$gasrem_396"
  br i1 %"$gascmp_397", label %"$out_of_gas_398", label %"$have_gas_399"

"$out_of_gas_398":                                ; preds = %"$have_gas_391"
  call void @_out_of_gas()
  br label %"$have_gas_399"

"$have_gas_399":                                  ; preds = %"$out_of_gas_398", %"$have_gas_391"
  %"$consume_400" = sub i64 %"$gasrem_396", 1
  store i64 %"$consume_400", i64* @_gasrem, align 8
  %a3 = alloca %Map_Uint32_Uint32*, align 8
  %"$execptr_load_401" = load i8*, i8** @_execptr, align 8
  %"$$a1_0_402" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_0", align 8
  %"$$$a1_0_402_403" = bitcast %Map_Uint32_Uint32* %"$$a1_0_402" to i8*
  %"$put_i1_404" = alloca %Uint32, align 8
  %"$i1_405" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_405", %Uint32* %"$put_i1_404", align 4
  %"$$put_i1_404_406" = bitcast %Uint32* %"$put_i1_404" to i8*
  %"$put_i0_407" = alloca %Uint32, align 8
  %"$i0_408" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_408", %Uint32* %"$put_i0_407", align 4
  %"$$put_i0_407_409" = bitcast %Uint32* %"$put_i0_407" to i8*
  %"$put_call_410" = call i8* @_put(i8* %"$execptr_load_401", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$$a1_0_402_403", i8* %"$$put_i1_404_406", i8* %"$$put_i0_407_409")
  %"$_put_411" = bitcast i8* %"$put_call_410" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$_put_411", %Map_Uint32_Uint32** %a3, align 8, !dbg !41
  %"$gasrem_412" = load i64, i64* @_gasrem, align 8
  %"$gascmp_413" = icmp ugt i64 1, %"$gasrem_412"
  br i1 %"$gascmp_413", label %"$out_of_gas_414", label %"$have_gas_415"

"$out_of_gas_414":                                ; preds = %"$have_gas_399"
  call void @_out_of_gas()
  br label %"$have_gas_415"

"$have_gas_415":                                  ; preds = %"$out_of_gas_414", %"$have_gas_399"
  %"$consume_416" = sub i64 %"$gasrem_412", 1
  store i64 %"$consume_416", i64* @_gasrem, align 8
  %a4 = alloca %Map_Uint32_Uint32*, align 8
  %"$execptr_load_417" = load i8*, i8** @_execptr, align 8
  %"$a3_418" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a3, align 8
  %"$$a3_418_419" = bitcast %Map_Uint32_Uint32* %"$a3_418" to i8*
  %"$put_p6_420" = alloca %Uint32, align 8
  %"$p6_421" = load %Uint32, %Uint32* %p6, align 4
  store %Uint32 %"$p6_421", %Uint32* %"$put_p6_420", align 4
  %"$$put_p6_420_422" = bitcast %Uint32* %"$put_p6_420" to i8*
  %"$put_p3_423" = alloca %Uint32, align 8
  %"$p3_424" = load %Uint32, %Uint32* %p3, align 4
  store %Uint32 %"$p3_424", %Uint32* %"$put_p3_423", align 4
  %"$$put_p3_423_425" = bitcast %Uint32* %"$put_p3_423" to i8*
  %"$put_call_426" = call i8* @_put(i8* %"$execptr_load_417", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$a3_418_419", i8* %"$$put_p6_420_422", i8* %"$$put_p3_423_425")
  %"$_put_427" = bitcast i8* %"$put_call_426" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$_put_427", %Map_Uint32_Uint32** %a4, align 8, !dbg !42
  %"$gasrem_428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_429" = icmp ugt i64 1, %"$gasrem_428"
  br i1 %"$gascmp_429", label %"$out_of_gas_430", label %"$have_gas_431"

"$out_of_gas_430":                                ; preds = %"$have_gas_415"
  call void @_out_of_gas()
  br label %"$have_gas_431"

"$have_gas_431":                                  ; preds = %"$out_of_gas_430", %"$have_gas_415"
  %"$consume_432" = sub i64 %"$gasrem_428", 1
  store i64 %"$consume_432", i64* @_gasrem, align 8
  %p7_i = alloca %Uint32, align 8
  %"$a4_433" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a4, align 8
  %"$$a4_433_434" = bitcast %Map_Uint32_Uint32* %"$a4_433" to i8*
  %"$size_call_435" = call %Uint32 @_size(i8* %"$$a4_433_434")
  store %Uint32 %"$size_call_435", %Uint32* %p7_i, align 4, !dbg !43
  %"$p6_436" = load %Uint32, %Uint32* %p6, align 4
  %"$p7_i_437" = load %Uint32, %Uint32* %p7_i, align 4
  %"$add_call_438" = call %Uint32 @_add_Uint32(%Uint32 %"$p6_436", %Uint32 %"$p7_i_437")
  store %Uint32 %"$add_call_438", %Uint32* %"$expr_7", align 4, !dbg !44
  br label %"$matchsucc_274"

"$default_278":                                   ; preds = %"$Some_270"
  br label %"$joinp_1"

"$matchsucc_274":                                 ; preds = %"$have_gas_431"
  br label %"$matchsucc_231"

"$default_269":                                   ; preds = %"$have_gas_229"
  br label %"$joinp_1"

"$joinp_1":                                       ; preds = %"$default_278", %"$default_269"
  %"$gasrem_232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_233" = icmp ugt i64 1, %"$gasrem_232"
  br i1 %"$gascmp_233", label %"$out_of_gas_234", label %"$have_gas_235"

"$out_of_gas_234":                                ; preds = %"$joinp_1"
  call void @_out_of_gas()
  br label %"$have_gas_235"

"$have_gas_235":                                  ; preds = %"$out_of_gas_234", %"$joinp_1"
  %"$consume_236" = sub i64 %"$gasrem_232", 1
  store i64 %"$consume_236", i64* @_gasrem, align 8
  %p = alloca %TName_Bool*, align 8
  %"$execptr_load_237" = load i8*, i8** @_execptr, align 8
  %"$a1_238" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a1, align 8
  %"$$a1_238_239" = bitcast %Map_Uint32_Uint32* %"$a1_238" to i8*
  %"$contains_i0_240" = alloca %Uint32, align 8
  %"$i0_241" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_241", %Uint32* %"$contains_i0_240", align 4
  %"$$contains_i0_240_242" = bitcast %Uint32* %"$contains_i0_240" to i8*
  %"$contains_call_243" = call %TName_Bool* @_contains(i8* %"$execptr_load_237", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$a1_238_239", i8* %"$$contains_i0_240_242")
  store %TName_Bool* %"$contains_call_243", %TName_Bool** %p, align 8, !dbg !45
  %"$gasrem_244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_245" = icmp ugt i64 1, %"$gasrem_244"
  br i1 %"$gascmp_245", label %"$out_of_gas_246", label %"$have_gas_247"

"$out_of_gas_246":                                ; preds = %"$have_gas_235"
  call void @_out_of_gas()
  br label %"$have_gas_247"

"$have_gas_247":                                  ; preds = %"$out_of_gas_246", %"$have_gas_235"
  %"$consume_248" = sub i64 %"$gasrem_244", 1
  store i64 %"$consume_248", i64* @_gasrem, align 8
  %p1 = alloca %Uint32, align 8
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 1, %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %"$have_gas_247"
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %"$have_gas_247"
  %"$consume_253" = sub i64 %"$gasrem_249", 1
  store i64 %"$consume_253", i64* @_gasrem, align 8
  %"$bool_to_uint_6" = alloca %Uint32, align 8
  %"$bool_to_uint_254" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_255" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_254", 0
  %"$bool_to_uint_envptr_256" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_254", 1
  %"$p_257" = load %TName_Bool*, %TName_Bool** %p, align 8
  %"$bool_to_uint_call_258" = call %Uint32 %"$bool_to_uint_fptr_255"(i8* %"$bool_to_uint_envptr_256", %TName_Bool* %"$p_257"), !dbg !47
  store %Uint32 %"$bool_to_uint_call_258", %Uint32* %"$bool_to_uint_6", align 4, !dbg !47
  %"$$bool_to_uint_6_259" = load %Uint32, %Uint32* %"$bool_to_uint_6", align 4
  store %Uint32 %"$$bool_to_uint_6_259", %Uint32* %p1, align 4, !dbg !47
  %"$gasrem_260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_261" = icmp ugt i64 1, %"$gasrem_260"
  br i1 %"$gascmp_261", label %"$out_of_gas_262", label %"$have_gas_263"

"$out_of_gas_262":                                ; preds = %"$have_gas_252"
  call void @_out_of_gas()
  br label %"$have_gas_263"

"$have_gas_263":                                  ; preds = %"$out_of_gas_262", %"$have_gas_252"
  %"$consume_264" = sub i64 %"$gasrem_260", 1
  store i64 %"$consume_264", i64* @_gasrem, align 8
  %"$p1_265" = load %Uint32, %Uint32* %p1, align 4
  store %Uint32 %"$p1_265", %Uint32* %"$expr_7", align 4, !dbg !48
  br label %"$matchsucc_231"

"$matchsucc_231":                                 ; preds = %"$matchsucc_274", %"$have_gas_263"
  %"$$expr_7_439" = load %Uint32, %Uint32* %"$expr_7", align 4
  ret %Uint32 %"$$expr_7_439"
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
  %"$exprval_440" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_441" = alloca %Uint32, align 8
  %"$memvoidcast_442" = bitcast %Uint32* %"$pval_441" to i8*
  store %Uint32 %"$exprval_440", %Uint32* %"$pval_441", align 4
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_14", i8* %"$memvoidcast_442")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_map.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_8", linkageName: "$fundef_8", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
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
!16 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!17 = !DILocation(line: 3, column: 5, scope: !16)
!18 = !DILocation(line: 8, column: 10, scope: !16)
!19 = !DILocation(line: 9, column: 10, scope: !16)
!20 = !DILocation(line: 10, column: 9, scope: !16)
!21 = !DILocation(line: 11, column: 10, scope: !16)
!22 = !DILocation(line: 12, column: 9, scope: !16)
!23 = !DILocation(line: 13, column: 9, scope: !16)
!24 = !DILocation(line: 14, column: 10, scope: !16)
!25 = !DILocation(line: 15, column: 12, scope: !16)
!26 = !DILocation(line: 16, column: 1, scope: !16)
!27 = !DILocation(line: 16, column: 1, scope: !28)
!28 = distinct !DILexicalBlock(scope: !29, file: !2, line: 17, column: 3)
!29 = distinct !DILexicalBlock(scope: !16, file: !2, line: 16, column: 1)
!30 = !DILocation(line: 18, column: 12, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !2, line: 17, column: 9)
!32 = distinct !DILexicalBlock(scope: !28, file: !2, line: 16, column: 1)
!33 = !DILocation(line: 19, column: 14, scope: !31)
!34 = !DILocation(line: 20, column: 12, scope: !31)
!35 = !DILocation(line: 21, column: 14, scope: !31)
!36 = !DILocation(line: 22, column: 12, scope: !31)
!37 = !DILocation(line: 23, column: 12, scope: !31)
!38 = !DILocation(line: 24, column: 12, scope: !31)
!39 = !DILocation(line: 25, column: 14, scope: !31)
!40 = !DILocation(line: 26, column: 12, scope: !31)
!41 = !DILocation(line: 27, column: 12, scope: !31)
!42 = !DILocation(line: 28, column: 12, scope: !31)
!43 = !DILocation(line: 29, column: 14, scope: !31)
!44 = !DILocation(line: 30, column: 3, scope: !31)
!45 = !DILocation(line: 32, column: 11, scope: !46)
!46 = distinct !DILexicalBlock(scope: !29, file: !2, line: 16, column: 1)
!47 = !DILocation(line: 33, column: 12, scope: !46)
!48 = !DILocation(line: 34, column: 3, scope: !46)
