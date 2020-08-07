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
  %"$b_tag_85" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b_tag_86" = load i8, i8* %"$b_tag_85"
  switch i8 %"$b_tag_86", label %"$empty_default_87" [
    i8 0, label %"$True_88"
    i8 1, label %"$False_90"
  ]

"$True_88":                                       ; preds = %entry
  %"$b_89" = bitcast %TName_Bool* %1 to %CName_True*
  store %Uint32 { i32 1 }, %Uint32* %"$retval_9"
  br label %"$matchsucc_84"

"$False_90":                                      ; preds = %entry
  %"$b_91" = bitcast %TName_Bool* %1 to %CName_False*
  store %Uint32 zeroinitializer, %Uint32* %"$retval_9"
  br label %"$matchsucc_84"

"$empty_default_87":                              ; preds = %entry
  br label %"$matchsucc_84"

"$matchsucc_84":                                  ; preds = %"$False_90", %"$True_88", %"$empty_default_87"
  %"$$retval_9_92" = load %Uint32, %Uint32* %"$retval_9"
  ret %Uint32 %"$$retval_9_92"
}

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_93"(i8* %0) {
entry:
  %"$expr_7" = alloca %Uint32
  %bool_to_uint = alloca { %Uint32 (i8*, %TName_Bool*)*, i8* }
  store { %Uint32 (i8*, %TName_Bool*)*, i8* } { %Uint32 (i8*, %TName_Bool*)* bitcast (%Uint32 (%"$$fundef_8_env_83"*, %TName_Bool*)* @"$fundef_8" to %Uint32 (i8*, %TName_Bool*)*), i8* null }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint
  %i0 = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %i0
  %i1 = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %i1
  %a = alloca %Map_Uint32_Uint32*
  %"$execptr_load_97" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_98" = call i8* @_new_empty_map(i8* %"$execptr_load_97")
  %"$Emp_99" = bitcast i8* %"$_new_empty_map_call_98" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$Emp_99", %Map_Uint32_Uint32** %a
  %a1 = alloca %Map_Uint32_Uint32*
  %"$execptr_load_100" = load i8*, i8** @_execptr
  %"$a_101" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a
  %"$$a_101_102" = bitcast %Map_Uint32_Uint32* %"$a_101" to i8*
  %"$put_i0_103" = alloca %Uint32
  %"$i0_104" = load %Uint32, %Uint32* %i0
  store %Uint32 %"$i0_104", %Uint32* %"$put_i0_103"
  %"$$put_i0_103_105" = bitcast %Uint32* %"$put_i0_103" to i8*
  %"$put_i1_106" = alloca %Uint32
  %"$i1_107" = load %Uint32, %Uint32* %i1
  store %Uint32 %"$i1_107", %Uint32* %"$put_i1_106"
  %"$$put_i1_106_108" = bitcast %Uint32* %"$put_i1_106" to i8*
  %"$put_call_109" = call i8* @_put(i8* %"$execptr_load_100", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$a_101_102", i8* %"$$put_i0_103_105", i8* %"$$put_i1_106_108")
  %"$_put_110" = bitcast i8* %"$put_call_109" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$_put_110", %Map_Uint32_Uint32** %a1
  %o = alloca %"TName_Option_Map_(Uint32)_(Uint32)"*
  %"$a1_111" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a1
  %"$adtval_112_load" = load i8*, i8** @_execptr
  %"$adtval_112_salloc" = call i8* @_salloc(i8* %"$adtval_112_load", i64 9)
  %"$adtval_112" = bitcast i8* %"$adtval_112_salloc" to %"CName_Some_Map_(Uint32)_(Uint32)"*
  %"$adtgep_113" = getelementptr inbounds %"CName_Some_Map_(Uint32)_(Uint32)", %"CName_Some_Map_(Uint32)_(Uint32)"* %"$adtval_112", i32 0, i32 0
  store i8 0, i8* %"$adtgep_113"
  %"$adtgep_114" = getelementptr inbounds %"CName_Some_Map_(Uint32)_(Uint32)", %"CName_Some_Map_(Uint32)_(Uint32)"* %"$adtval_112", i32 0, i32 1
  store %Map_Uint32_Uint32* %"$a1_111", %Map_Uint32_Uint32** %"$adtgep_114"
  %"$adtptr_115" = bitcast %"CName_Some_Map_(Uint32)_(Uint32)"* %"$adtval_112" to %"TName_Option_Map_(Uint32)_(Uint32)"*
  store %"TName_Option_Map_(Uint32)_(Uint32)"* %"$adtptr_115", %"TName_Option_Map_(Uint32)_(Uint32)"** %o
  %b = alloca %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*
  %"$execptr_load_116" = load i8*, i8** @_execptr
  %"$_new_empty_map_call_117" = call i8* @_new_empty_map(i8* %"$execptr_load_116")
  %"$Emp_118" = bitcast i8* %"$_new_empty_map_call_117" to %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*
  store %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$Emp_118", %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b
  %b1 = alloca %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*
  %"$execptr_load_119" = load i8*, i8** @_execptr
  %"$b_120" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b
  %"$$b_120_121" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b_120" to i8*
  %"$put_i1_122" = alloca %Uint32
  %"$i1_123" = load %Uint32, %Uint32* %i1
  store %Uint32 %"$i1_123", %Uint32* %"$put_i1_122"
  %"$$put_i1_122_124" = bitcast %Uint32* %"$put_i1_122" to i8*
  %"$o_125" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %o
  %"$$o_125_126" = bitcast %"TName_Option_Map_(Uint32)_(Uint32)"* %"$o_125" to i8*
  %"$put_call_127" = call i8* @_put(i8* %"$execptr_load_119", %_TyDescrTy_Typ* @"$TyDescr_Map_46", i8* %"$$b_120_121", i8* %"$$put_i1_122_124", i8* %"$$o_125_126")
  %"$_put_128" = bitcast i8* %"$put_call_127" to %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*
  store %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$_put_128", %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1
  %res1 = alloca %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*
  %"$execptr_load_129" = load i8*, i8** @_execptr
  %"$b1_130" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1
  %"$$b1_130_131" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b1_130" to i8*
  %"$get_i1_132" = alloca %Uint32
  %"$i1_133" = load %Uint32, %Uint32* %i1
  store %Uint32 %"$i1_133", %Uint32* %"$get_i1_132"
  %"$$get_i1_132_134" = bitcast %Uint32* %"$get_i1_132" to i8*
  %"$get_call_135" = call i8* @_get(i8* %"$execptr_load_129", %_TyDescrTy_Typ* @"$TyDescr_Map_46", i8* %"$$b1_130_131", i8* %"$$get_i1_132_134")
  %"$_get_136" = bitcast i8* %"$get_call_135" to %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*
  store %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$_get_136", %"TName_Option_Option_(Map_(Uint32)_(Uint32))"** %res1
  %"$res1_152" = load %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*, %"TName_Option_Option_(Map_(Uint32)_(Uint32))"** %res1
  %"$res1_tag_153" = getelementptr inbounds %"TName_Option_Option_(Map_(Uint32)_(Uint32))", %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$res1_152", i32 0, i32 0
  %"$res1_tag_154" = load i8, i8* %"$res1_tag_153"
  switch i8 %"$res1_tag_154", label %"$default_155" [
    i8 0, label %"$Some_156"
  ]

"$Some_156":                                      ; preds = %entry
  %"$res1_157" = bitcast %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$res1_152" to %"CName_Some_Option_(Map_(Uint32)_(Uint32))"*
  %"$$res1_2_gep_158" = getelementptr inbounds %"CName_Some_Option_(Map_(Uint32)_(Uint32))", %"CName_Some_Option_(Map_(Uint32)_(Uint32))"* %"$res1_157", i32 0, i32 1
  %"$$res1_2_load_159" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %"$$res1_2_gep_158"
  %"$res1_2" = alloca %"TName_Option_Map_(Uint32)_(Uint32)"*
  store %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_2_load_159", %"TName_Option_Map_(Uint32)_(Uint32)"** %"$res1_2"
  %"$$res1_2_161" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %"$res1_2"
  %"$$res1_2_tag_162" = getelementptr inbounds %"TName_Option_Map_(Uint32)_(Uint32)", %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_2_161", i32 0, i32 0
  %"$$res1_2_tag_163" = load i8, i8* %"$$res1_2_tag_162"
  switch i8 %"$$res1_2_tag_163", label %"$default_164" [
    i8 0, label %"$Some_165"
  ]

"$Some_165":                                      ; preds = %"$Some_156"
  %"$$res1_2_166" = bitcast %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_2_161" to %"CName_Some_Map_(Uint32)_(Uint32)"*
  %"$$a1_0_gep_167" = getelementptr inbounds %"CName_Some_Map_(Uint32)_(Uint32)", %"CName_Some_Map_(Uint32)_(Uint32)"* %"$$res1_2_166", i32 0, i32 1
  %"$$a1_0_load_168" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$$a1_0_gep_167"
  %"$a1_0" = alloca %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$$a1_0_load_168", %Map_Uint32_Uint32** %"$a1_0"
  %p11 = alloca %TName_Bool*
  %"$execptr_load_169" = load i8*, i8** @_execptr
  %"$b1_170" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1
  %"$$b1_170_171" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b1_170" to i8*
  %"$contains_i1_172" = alloca %Uint32
  %"$i1_173" = load %Uint32, %Uint32* %i1
  store %Uint32 %"$i1_173", %Uint32* %"$contains_i1_172"
  %"$$contains_i1_172_174" = bitcast %Uint32* %"$contains_i1_172" to i8*
  %"$contains_call_175" = call %TName_Bool* @_contains(i8* %"$execptr_load_169", %_TyDescrTy_Typ* @"$TyDescr_Map_46", i8* %"$$b1_170_171", i8* %"$$contains_i1_172_174")
  store %TName_Bool* %"$contains_call_175", %TName_Bool** %p11
  %p1_i = alloca %Uint32
  %"$bool_to_uint_3" = alloca %Uint32
  %"$bool_to_uint_176" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint
  %"$bool_to_uint_fptr_177" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_176", 0
  %"$bool_to_uint_envptr_178" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_176", 1
  %"$p1_179" = load %TName_Bool*, %TName_Bool** %p11
  %"$bool_to_uint_call_180" = call %Uint32 %"$bool_to_uint_fptr_177"(i8* %"$bool_to_uint_envptr_178", %TName_Bool* %"$p1_179")
  store %Uint32 %"$bool_to_uint_call_180", %Uint32* %"$bool_to_uint_3"
  %"$$bool_to_uint_3_181" = load %Uint32, %Uint32* %"$bool_to_uint_3"
  store %Uint32 %"$$bool_to_uint_3_181", %Uint32* %p1_i
  %p2 = alloca %TName_Bool*
  %"$execptr_load_182" = load i8*, i8** @_execptr
  %"$$a1_0_183" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_0"
  %"$$$a1_0_183_184" = bitcast %Map_Uint32_Uint32* %"$$a1_0_183" to i8*
  %"$contains_i0_185" = alloca %Uint32
  %"$i0_186" = load %Uint32, %Uint32* %i0
  store %Uint32 %"$i0_186", %Uint32* %"$contains_i0_185"
  %"$$contains_i0_185_187" = bitcast %Uint32* %"$contains_i0_185" to i8*
  %"$contains_call_188" = call %TName_Bool* @_contains(i8* %"$execptr_load_182", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$$a1_0_183_184", i8* %"$$contains_i0_185_187")
  store %TName_Bool* %"$contains_call_188", %TName_Bool** %p2
  %p2_i = alloca %Uint32
  %"$bool_to_uint_4" = alloca %Uint32
  %"$bool_to_uint_189" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint
  %"$bool_to_uint_fptr_190" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_189", 0
  %"$bool_to_uint_envptr_191" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_189", 1
  %"$p2_192" = load %TName_Bool*, %TName_Bool** %p2
  %"$bool_to_uint_call_193" = call %Uint32 %"$bool_to_uint_fptr_190"(i8* %"$bool_to_uint_envptr_191", %TName_Bool* %"$p2_192")
  store %Uint32 %"$bool_to_uint_call_193", %Uint32* %"$bool_to_uint_4"
  %"$$bool_to_uint_4_194" = load %Uint32, %Uint32* %"$bool_to_uint_4"
  store %Uint32 %"$$bool_to_uint_4_194", %Uint32* %p2_i
  %p3 = alloca %Uint32
  %"$p1_i_195" = load %Uint32, %Uint32* %p1_i
  %"$p2_i_196" = load %Uint32, %Uint32* %p2_i
  %"$add_call_197" = call %Uint32 @_add_Uint32(%Uint32 %"$p1_i_195", %Uint32 %"$p2_i_196")
  store %Uint32 %"$add_call_197", %Uint32* %p3
  %a2 = alloca %Map_Uint32_Uint32*
  %"$execptr_load_198" = load i8*, i8** @_execptr
  %"$$a1_0_199" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_0"
  %"$$$a1_0_199_200" = bitcast %Map_Uint32_Uint32* %"$$a1_0_199" to i8*
  %"$_i1_201" = alloca %Uint32
  %"$i1_202" = load %Uint32, %Uint32* %i1
  store %Uint32 %"$i1_202", %Uint32* %"$_i1_201"
  %"$$_i1_201_203" = bitcast %Uint32* %"$_i1_201" to i8*
  %"$_call_204" = call i8* @_remove(i8* %"$execptr_load_198", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$$a1_0_199_200", i8* %"$$_i1_201_203")
  %"$_remove_205" = bitcast i8* %"$_call_204" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$_remove_205", %Map_Uint32_Uint32** %a2
  %p5 = alloca %TName_Bool*
  %"$execptr_load_206" = load i8*, i8** @_execptr
  %"$a2_207" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a2
  %"$$a2_207_208" = bitcast %Map_Uint32_Uint32* %"$a2_207" to i8*
  %"$contains_i0_209" = alloca %Uint32
  %"$i0_210" = load %Uint32, %Uint32* %i0
  store %Uint32 %"$i0_210", %Uint32* %"$contains_i0_209"
  %"$$contains_i0_209_211" = bitcast %Uint32* %"$contains_i0_209" to i8*
  %"$contains_call_212" = call %TName_Bool* @_contains(i8* %"$execptr_load_206", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$a2_207_208", i8* %"$$contains_i0_209_211")
  store %TName_Bool* %"$contains_call_212", %TName_Bool** %p5
  %p5_i = alloca %Uint32
  %"$bool_to_uint_5" = alloca %Uint32
  %"$bool_to_uint_213" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint
  %"$bool_to_uint_fptr_214" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_213", 0
  %"$bool_to_uint_envptr_215" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_213", 1
  %"$p5_216" = load %TName_Bool*, %TName_Bool** %p5
  %"$bool_to_uint_call_217" = call %Uint32 %"$bool_to_uint_fptr_214"(i8* %"$bool_to_uint_envptr_215", %TName_Bool* %"$p5_216")
  store %Uint32 %"$bool_to_uint_call_217", %Uint32* %"$bool_to_uint_5"
  %"$$bool_to_uint_5_218" = load %Uint32, %Uint32* %"$bool_to_uint_5"
  store %Uint32 %"$$bool_to_uint_5_218", %Uint32* %p5_i
  %p6 = alloca %Uint32
  %"$p3_219" = load %Uint32, %Uint32* %p3
  %"$p5_i_220" = load %Uint32, %Uint32* %p5_i
  %"$add_call_221" = call %Uint32 @_add_Uint32(%Uint32 %"$p3_219", %Uint32 %"$p5_i_220")
  store %Uint32 %"$add_call_221", %Uint32* %p6
  %a3 = alloca %Map_Uint32_Uint32*
  %"$execptr_load_222" = load i8*, i8** @_execptr
  %"$$a1_0_223" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_0"
  %"$$$a1_0_223_224" = bitcast %Map_Uint32_Uint32* %"$$a1_0_223" to i8*
  %"$put_i1_225" = alloca %Uint32
  %"$i1_226" = load %Uint32, %Uint32* %i1
  store %Uint32 %"$i1_226", %Uint32* %"$put_i1_225"
  %"$$put_i1_225_227" = bitcast %Uint32* %"$put_i1_225" to i8*
  %"$put_i0_228" = alloca %Uint32
  %"$i0_229" = load %Uint32, %Uint32* %i0
  store %Uint32 %"$i0_229", %Uint32* %"$put_i0_228"
  %"$$put_i0_228_230" = bitcast %Uint32* %"$put_i0_228" to i8*
  %"$put_call_231" = call i8* @_put(i8* %"$execptr_load_222", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$$a1_0_223_224", i8* %"$$put_i1_225_227", i8* %"$$put_i0_228_230")
  %"$_put_232" = bitcast i8* %"$put_call_231" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$_put_232", %Map_Uint32_Uint32** %a3
  %a4 = alloca %Map_Uint32_Uint32*
  %"$execptr_load_233" = load i8*, i8** @_execptr
  %"$a3_234" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a3
  %"$$a3_234_235" = bitcast %Map_Uint32_Uint32* %"$a3_234" to i8*
  %"$put_p6_236" = alloca %Uint32
  %"$p6_237" = load %Uint32, %Uint32* %p6
  store %Uint32 %"$p6_237", %Uint32* %"$put_p6_236"
  %"$$put_p6_236_238" = bitcast %Uint32* %"$put_p6_236" to i8*
  %"$put_p3_239" = alloca %Uint32
  %"$p3_240" = load %Uint32, %Uint32* %p3
  store %Uint32 %"$p3_240", %Uint32* %"$put_p3_239"
  %"$$put_p3_239_241" = bitcast %Uint32* %"$put_p3_239" to i8*
  %"$put_call_242" = call i8* @_put(i8* %"$execptr_load_233", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$a3_234_235", i8* %"$$put_p6_236_238", i8* %"$$put_p3_239_241")
  %"$_put_243" = bitcast i8* %"$put_call_242" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$_put_243", %Map_Uint32_Uint32** %a4
  %p7_i = alloca %Uint32
  %"$a4_244" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a4
  %"$$a4_244_245" = bitcast %Map_Uint32_Uint32* %"$a4_244" to i8*
  %"$size_call_246" = call %Uint32 @_size(i8* %"$$a4_244_245")
  store %Uint32 %"$size_call_246", %Uint32* %p7_i
  %"$p6_247" = load %Uint32, %Uint32* %p6
  %"$p7_i_248" = load %Uint32, %Uint32* %p7_i
  %"$add_call_249" = call %Uint32 @_add_Uint32(%Uint32 %"$p6_247", %Uint32 %"$p7_i_248")
  store %Uint32 %"$add_call_249", %Uint32* %"$expr_7"
  br label %"$matchsucc_160"

"$default_164":                                   ; preds = %"$Some_156"
  br label %"$joinp_1"

"$matchsucc_160":                                 ; preds = %"$Some_165"
  br label %"$matchsucc_137"

"$default_155":                                   ; preds = %entry
  br label %"$joinp_1"

"$joinp_1":                                       ; preds = %"$default_164", %"$default_155"
  %p = alloca %TName_Bool*
  %"$execptr_load_138" = load i8*, i8** @_execptr
  %"$a1_139" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a1
  %"$$a1_139_140" = bitcast %Map_Uint32_Uint32* %"$a1_139" to i8*
  %"$contains_i0_141" = alloca %Uint32
  %"$i0_142" = load %Uint32, %Uint32* %i0
  store %Uint32 %"$i0_142", %Uint32* %"$contains_i0_141"
  %"$$contains_i0_141_143" = bitcast %Uint32* %"$contains_i0_141" to i8*
  %"$contains_call_144" = call %TName_Bool* @_contains(i8* %"$execptr_load_138", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$a1_139_140", i8* %"$$contains_i0_141_143")
  store %TName_Bool* %"$contains_call_144", %TName_Bool** %p
  %p1 = alloca %Uint32
  %"$bool_to_uint_6" = alloca %Uint32
  %"$bool_to_uint_145" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint
  %"$bool_to_uint_fptr_146" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_145", 0
  %"$bool_to_uint_envptr_147" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_145", 1
  %"$p_148" = load %TName_Bool*, %TName_Bool** %p
  %"$bool_to_uint_call_149" = call %Uint32 %"$bool_to_uint_fptr_146"(i8* %"$bool_to_uint_envptr_147", %TName_Bool* %"$p_148")
  store %Uint32 %"$bool_to_uint_call_149", %Uint32* %"$bool_to_uint_6"
  %"$$bool_to_uint_6_150" = load %Uint32, %Uint32* %"$bool_to_uint_6"
  store %Uint32 %"$$bool_to_uint_6_150", %Uint32* %p1
  %"$p1_151" = load %Uint32, %Uint32* %p1
  store %Uint32 %"$p1_151", %Uint32* %"$expr_7"
  br label %"$matchsucc_137"

"$matchsucc_137":                                 ; preds = %"$matchsucc_160", %"$joinp_1"
  %"$$expr_7_250" = load %Uint32, %Uint32* %"$expr_7"
  ret %Uint32 %"$$expr_7_250"
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
  %"$exprval_251" = call %Uint32 @"$scilla_expr_93"(i8* null)
  %"$pval_252" = alloca %Uint32
  %"$memvoidcast_253" = bitcast %Uint32* %"$pval_252" to i8*
  store %Uint32 %"$exprval_251", %Uint32* %"$pval_252"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_14", i8* %"$memvoidcast_253")
  ret void
}
