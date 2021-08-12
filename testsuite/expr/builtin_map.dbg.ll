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
%"$ParamDescr_540" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_541" = type { %ParamDescrString, i32, %"$ParamDescr_540"* }
%Uint32 = type { i32 }
%"$$fundef_8_env_85" = type {}
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
@"$TyDescr_ADT_Option_Option_(Map_(Uint32)_(Uint32))_42" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_39"* @"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_59" to i8*) }
@"$TyDescr_ADT_Option_Map_(Uint32)_(Uint32)_43" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_39"* @"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_68" to i8*) }
@"$TyDescr_ADT_Bool_44" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_39"* @"$TyDescr_Bool_ADTTyp_Specl_80" to i8*) }
@"$TyDescr_Map_46" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_45"* @"$TyDescr_MapTyp_83" to i8*) }
@"$TyDescr_Map_47" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_45"* @"$TyDescr_MapTyp_84" to i8*) }
@"$TyDescr_Option_ADTTyp_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_40" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_70", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_39"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_39"*], [2 x %"$TyDescrTy_ADTTyp_Specl_39"*]* @"$TyDescr_Option_ADTTyp_m_specls_69", i32 0, i32 0) }
@"$TyDescr_Option_Some_Option_(Map_(Uint32)_(Uint32))_Constr_m_args_51" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(Uint32)_(Uint32)_43"]
@"$TyDescr_ADT_Some_52" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Constr_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_41" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_52", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Option_(Map_(Uint32)_(Uint32))_Constr_m_args_51", i32 0, i32 0) }
@"$TyDescr_Option_None_Option_(Map_(Uint32)_(Uint32))_Constr_m_args_54" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_55" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Constr_56" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_41" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_55", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Option_(Map_(Uint32)_(Uint32))_Constr_m_args_54", i32 0, i32 0) }
@"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_m_constrs_57" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_41"*] [%"$TyDescrTy_ADTTyp_Constr_41"* @"$TyDescr_Option_Some_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Constr_53", %"$TyDescrTy_ADTTyp_Constr_41"* @"$TyDescr_Option_None_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Constr_56"]
@"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_m_TArgs_58" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(Uint32)_(Uint32)_43"]
@"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_59" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_39" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_m_TArgs_58", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_41"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_41"*], [2 x %"$TyDescrTy_ADTTyp_Constr_41"*]* @"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_m_constrs_57", i32 0, i32 0), %"$TyDescrTy_ADTTyp_40"* @"$TyDescr_Option_ADTTyp_50" }
@"$TyDescr_Option_Some_Map_(Uint32)_(Uint32)_Constr_m_args_60" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_47"]
@"$TyDescr_ADT_Some_61" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Map_(Uint32)_(Uint32)_ADTTyp_Constr_62" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_41" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_61", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Map_(Uint32)_(Uint32)_Constr_m_args_60", i32 0, i32 0) }
@"$TyDescr_Option_None_Map_(Uint32)_(Uint32)_Constr_m_args_63" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_64" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Map_(Uint32)_(Uint32)_ADTTyp_Constr_65" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_41" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_64", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Map_(Uint32)_(Uint32)_Constr_m_args_63", i32 0, i32 0) }
@"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_m_constrs_66" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_41"*] [%"$TyDescrTy_ADTTyp_Constr_41"* @"$TyDescr_Option_Some_Map_(Uint32)_(Uint32)_ADTTyp_Constr_62", %"$TyDescrTy_ADTTyp_Constr_41"* @"$TyDescr_Option_None_Map_(Uint32)_(Uint32)_ADTTyp_Constr_65"]
@"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_m_TArgs_67" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_47"]
@"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_68" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_39" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_m_TArgs_67", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_41"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_41"*], [2 x %"$TyDescrTy_ADTTyp_Constr_41"*]* @"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_m_constrs_66", i32 0, i32 0), %"$TyDescrTy_ADTTyp_40"* @"$TyDescr_Option_ADTTyp_50" }
@"$TyDescr_Option_ADTTyp_m_specls_69" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_39"*] [%"$TyDescrTy_ADTTyp_Specl_39"* @"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_59", %"$TyDescrTy_ADTTyp_Specl_39"* @"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_68"]
@"$TyDescr_ADT_Option_70" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Bool_ADTTyp_71" = unnamed_addr constant %"$TyDescrTy_ADTTyp_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_82", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_39"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_39"*], [1 x %"$TyDescrTy_ADTTyp_Specl_39"*]* @"$TyDescr_Bool_ADTTyp_m_specls_81", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_72" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_73" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_74" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_41" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_73", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_72", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_75" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_76" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_77" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_41" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_76", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_75", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_78" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_41"*] [%"$TyDescrTy_ADTTyp_Constr_41"* @"$TyDescr_Bool_True_ADTTyp_Constr_74", %"$TyDescrTy_ADTTyp_Constr_41"* @"$TyDescr_Bool_False_ADTTyp_Constr_77"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_79" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_80" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_39" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_79", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_41"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_41"*], [2 x %"$TyDescrTy_ADTTyp_Constr_41"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_78", i32 0, i32 0), %"$TyDescrTy_ADTTyp_40"* @"$TyDescr_Bool_ADTTyp_71" }
@"$TyDescr_Bool_ADTTyp_m_specls_81" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_39"*] [%"$TyDescrTy_ADTTyp_Specl_39"* @"$TyDescr_Bool_ADTTyp_Specl_80"]
@"$TyDescr_ADT_Bool_82" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_MapTyp_83" = unnamed_addr constant %"$TyDescr_MapTyp_45" { %_TyDescrTy_Typ* @"$TyDescr_Uint32_14", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(Uint32)_(Uint32)_43" }
@"$TyDescr_MapTyp_84" = unnamed_addr constant %"$TyDescr_MapTyp_45" { %_TyDescrTy_Typ* @"$TyDescr_Uint32_14", %_TyDescrTy_Typ* @"$TyDescr_Uint32_14" }
@_tydescr_table = constant [19 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_34", %_TyDescrTy_Typ* @"$TyDescr_Int64_16", %_TyDescrTy_Typ* @"$TyDescr_Map_46", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_44", %_TyDescrTy_Typ* @"$TyDescr_Uint256_26", %_TyDescrTy_Typ* @"$TyDescr_Uint32_14", %_TyDescrTy_Typ* @"$TyDescr_Uint64_18", %_TyDescrTy_Typ* @"$TyDescr_Bnum_30", %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ* @"$TyDescr_Exception_36", %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ* @"$TyDescr_Int256_24", %_TyDescrTy_Typ* @"$TyDescr_Int128_20", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(Uint32)_(Uint32)_43", %_TyDescrTy_Typ* @"$TyDescr_Bystr_38", %_TyDescrTy_Typ* @"$TyDescr_Message_32", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Option_(Map_(Uint32)_(Uint32))_42", %_TyDescrTy_Typ* @"$TyDescr_Map_47", %_TyDescrTy_Typ* @"$TyDescr_Int32_12"]
@_tydescr_table_length = constant i32 19
@_contract_parameters = constant [0 x %"$ParamDescr_540"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_541"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Uint32 @"$fundef_8"(%"$$fundef_8_env_85"* %0, %TName_Bool* %1) !dbg !4 {
entry:
  %"$retval_9" = alloca %Uint32, align 8
  %"$gasrem_86" = load i64, i64* @_gasrem, align 8
  %"$gascmp_87" = icmp ugt i64 2, %"$gasrem_86"
  br i1 %"$gascmp_87", label %"$out_of_gas_88", label %"$have_gas_89"

"$out_of_gas_88":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_89"

"$have_gas_89":                                   ; preds = %"$out_of_gas_88", %entry
  %"$consume_90" = sub i64 %"$gasrem_86", 2
  store i64 %"$consume_90", i64* @_gasrem, align 8
  %"$b_tag_92" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b_tag_93" = load i8, i8* %"$b_tag_92", align 1
  switch i8 %"$b_tag_93", label %"$empty_default_94" [
    i8 0, label %"$True_95"
    i8 1, label %"$False_102"
  ], !dbg !8

"$True_95":                                       ; preds = %"$have_gas_89"
  %"$b_96" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_97" = load i64, i64* @_gasrem, align 8
  %"$gascmp_98" = icmp ugt i64 1, %"$gasrem_97"
  br i1 %"$gascmp_98", label %"$out_of_gas_99", label %"$have_gas_100"

"$out_of_gas_99":                                 ; preds = %"$True_95"
  call void @_out_of_gas()
  br label %"$have_gas_100"

"$have_gas_100":                                  ; preds = %"$out_of_gas_99", %"$True_95"
  %"$consume_101" = sub i64 %"$gasrem_97", 1
  store i64 %"$consume_101", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %"$retval_9", align 4, !dbg !9
  br label %"$matchsucc_91"

"$False_102":                                     ; preds = %"$have_gas_89"
  %"$b_103" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_105" = icmp ugt i64 1, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %"$False_102"
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %"$False_102"
  %"$consume_108" = sub i64 %"$gasrem_104", 1
  store i64 %"$consume_108", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %"$retval_9", align 4, !dbg !12
  br label %"$matchsucc_91"

"$empty_default_94":                              ; preds = %"$have_gas_89"
  br label %"$matchsucc_91"

"$matchsucc_91":                                  ; preds = %"$have_gas_107", %"$have_gas_100", %"$empty_default_94"
  %"$$retval_9_109" = load %Uint32, %Uint32* %"$retval_9", align 4
  ret %Uint32 %"$$retval_9_109"
}

declare void @_out_of_gas()

define void @_init_libs() !dbg !14 {
entry:
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !16 {
entry:
  %"$expr_7" = alloca %Uint32, align 8
  %"$gasrem_110" = load i64, i64* @_gasrem, align 8
  %"$gascmp_111" = icmp ugt i64 1, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %entry
  %"$consume_114" = sub i64 %"$gasrem_110", 1
  store i64 %"$consume_114", i64* @_gasrem, align 8
  %bool_to_uint = alloca { %Uint32 (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_116" = icmp ugt i64 1, %"$gasrem_115"
  br i1 %"$gascmp_116", label %"$out_of_gas_117", label %"$have_gas_118"

"$out_of_gas_117":                                ; preds = %"$have_gas_113"
  call void @_out_of_gas()
  br label %"$have_gas_118"

"$have_gas_118":                                  ; preds = %"$out_of_gas_117", %"$have_gas_113"
  %"$consume_119" = sub i64 %"$gasrem_115", 1
  store i64 %"$consume_119", i64* @_gasrem, align 8
  store { %Uint32 (i8*, %TName_Bool*)*, i8* } { %Uint32 (i8*, %TName_Bool*)* bitcast (%Uint32 (%"$$fundef_8_env_85"*, %TName_Bool*)* @"$fundef_8" to %Uint32 (i8*, %TName_Bool*)*), i8* null }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8, !dbg !17
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 1, %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %"$have_gas_118"
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %"$have_gas_118"
  %"$consume_127" = sub i64 %"$gasrem_123", 1
  store i64 %"$consume_127", i64* @_gasrem, align 8
  %i0 = alloca %Uint32, align 8
  %"$gasrem_128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_129" = icmp ugt i64 1, %"$gasrem_128"
  br i1 %"$gascmp_129", label %"$out_of_gas_130", label %"$have_gas_131"

"$out_of_gas_130":                                ; preds = %"$have_gas_126"
  call void @_out_of_gas()
  br label %"$have_gas_131"

"$have_gas_131":                                  ; preds = %"$out_of_gas_130", %"$have_gas_126"
  %"$consume_132" = sub i64 %"$gasrem_128", 1
  store i64 %"$consume_132", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %i0, align 4, !dbg !18
  %"$gasrem_133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_134" = icmp ugt i64 1, %"$gasrem_133"
  br i1 %"$gascmp_134", label %"$out_of_gas_135", label %"$have_gas_136"

"$out_of_gas_135":                                ; preds = %"$have_gas_131"
  call void @_out_of_gas()
  br label %"$have_gas_136"

"$have_gas_136":                                  ; preds = %"$out_of_gas_135", %"$have_gas_131"
  %"$consume_137" = sub i64 %"$gasrem_133", 1
  store i64 %"$consume_137", i64* @_gasrem, align 8
  %i1 = alloca %Uint32, align 8
  %"$gasrem_138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_139" = icmp ugt i64 1, %"$gasrem_138"
  br i1 %"$gascmp_139", label %"$out_of_gas_140", label %"$have_gas_141"

"$out_of_gas_140":                                ; preds = %"$have_gas_136"
  call void @_out_of_gas()
  br label %"$have_gas_141"

"$have_gas_141":                                  ; preds = %"$out_of_gas_140", %"$have_gas_136"
  %"$consume_142" = sub i64 %"$gasrem_138", 1
  store i64 %"$consume_142", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %i1, align 4, !dbg !19
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 1, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %"$have_gas_141"
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %"$have_gas_141"
  %"$consume_147" = sub i64 %"$gasrem_143", 1
  store i64 %"$consume_147", i64* @_gasrem, align 8
  %a = alloca %Map_Uint32_Uint32*, align 8
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 1, %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %"$have_gas_146"
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %"$have_gas_146"
  %"$consume_152" = sub i64 %"$gasrem_148", 1
  store i64 %"$consume_152", i64* @_gasrem, align 8
  %"$execptr_load_153" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_154" = call i8* @_new_empty_map(i8* %"$execptr_load_153")
  %"$_new_empty_map_155" = bitcast i8* %"$_new_empty_map_call_154" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$_new_empty_map_155", %Map_Uint32_Uint32** %a, align 8, !dbg !20
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 1, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %"$have_gas_151"
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %"$have_gas_151"
  %"$consume_160" = sub i64 %"$gasrem_156", 1
  store i64 %"$consume_160", i64* @_gasrem, align 8
  %a1 = alloca %Map_Uint32_Uint32*, align 8
  %"$a_161" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a, align 8
  %"$$a_161_162" = bitcast %Map_Uint32_Uint32* %"$a_161" to i8*
  %"$_lengthof_call_163" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$a_161_162")
  %"$gasadd_164" = add i64 1, %"$_lengthof_call_163"
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 %"$gasadd_164", %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %"$have_gas_159"
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %"$have_gas_159"
  %"$consume_169" = sub i64 %"$gasrem_165", %"$gasadd_164"
  store i64 %"$consume_169", i64* @_gasrem, align 8
  %"$execptr_load_170" = load i8*, i8** @_execptr, align 8
  %"$a_171" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a, align 8
  %"$$a_171_172" = bitcast %Map_Uint32_Uint32* %"$a_171" to i8*
  %"$put_i0_173" = alloca %Uint32, align 8
  %"$i0_174" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_174", %Uint32* %"$put_i0_173", align 4
  %"$$put_i0_173_175" = bitcast %Uint32* %"$put_i0_173" to i8*
  %"$put_i1_176" = alloca %Uint32, align 8
  %"$i1_177" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_177", %Uint32* %"$put_i1_176", align 4
  %"$$put_i1_176_178" = bitcast %Uint32* %"$put_i1_176" to i8*
  %"$put_call_179" = call i8* @_put(i8* %"$execptr_load_170", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$a_171_172", i8* %"$$put_i0_173_175", i8* %"$$put_i1_176_178"), !dbg !21
  %"$put_180" = bitcast i8* %"$put_call_179" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$put_180", %Map_Uint32_Uint32** %a1, align 8, !dbg !21
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 1, %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %"$have_gas_168"
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %"$have_gas_168"
  %"$consume_185" = sub i64 %"$gasrem_181", 1
  store i64 %"$consume_185", i64* @_gasrem, align 8
  %o = alloca %"TName_Option_Map_(Uint32)_(Uint32)"*, align 8
  %"$gasrem_186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_187" = icmp ugt i64 1, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %"$have_gas_184"
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %"$have_gas_184"
  %"$consume_190" = sub i64 %"$gasrem_186", 1
  store i64 %"$consume_190", i64* @_gasrem, align 8
  %"$a1_191" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a1, align 8
  %"$adtval_192_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_192_salloc" = call i8* @_salloc(i8* %"$adtval_192_load", i64 9)
  %"$adtval_192" = bitcast i8* %"$adtval_192_salloc" to %"CName_Some_Map_(Uint32)_(Uint32)"*
  %"$adtgep_193" = getelementptr inbounds %"CName_Some_Map_(Uint32)_(Uint32)", %"CName_Some_Map_(Uint32)_(Uint32)"* %"$adtval_192", i32 0, i32 0
  store i8 0, i8* %"$adtgep_193", align 1
  %"$adtgep_194" = getelementptr inbounds %"CName_Some_Map_(Uint32)_(Uint32)", %"CName_Some_Map_(Uint32)_(Uint32)"* %"$adtval_192", i32 0, i32 1
  store %Map_Uint32_Uint32* %"$a1_191", %Map_Uint32_Uint32** %"$adtgep_194", align 8
  %"$adtptr_195" = bitcast %"CName_Some_Map_(Uint32)_(Uint32)"* %"$adtval_192" to %"TName_Option_Map_(Uint32)_(Uint32)"*
  store %"TName_Option_Map_(Uint32)_(Uint32)"* %"$adtptr_195", %"TName_Option_Map_(Uint32)_(Uint32)"** %o, align 8, !dbg !22
  %"$gasrem_196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_197" = icmp ugt i64 1, %"$gasrem_196"
  br i1 %"$gascmp_197", label %"$out_of_gas_198", label %"$have_gas_199"

"$out_of_gas_198":                                ; preds = %"$have_gas_189"
  call void @_out_of_gas()
  br label %"$have_gas_199"

"$have_gas_199":                                  ; preds = %"$out_of_gas_198", %"$have_gas_189"
  %"$consume_200" = sub i64 %"$gasrem_196", 1
  store i64 %"$consume_200", i64* @_gasrem, align 8
  %b = alloca %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, align 8
  %"$gasrem_201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_202" = icmp ugt i64 1, %"$gasrem_201"
  br i1 %"$gascmp_202", label %"$out_of_gas_203", label %"$have_gas_204"

"$out_of_gas_203":                                ; preds = %"$have_gas_199"
  call void @_out_of_gas()
  br label %"$have_gas_204"

"$have_gas_204":                                  ; preds = %"$out_of_gas_203", %"$have_gas_199"
  %"$consume_205" = sub i64 %"$gasrem_201", 1
  store i64 %"$consume_205", i64* @_gasrem, align 8
  %"$execptr_load_206" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_207" = call i8* @_new_empty_map(i8* %"$execptr_load_206")
  %"$_new_empty_map_208" = bitcast i8* %"$_new_empty_map_call_207" to %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*
  store %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$_new_empty_map_208", %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b, align 8, !dbg !23
  %"$gasrem_209" = load i64, i64* @_gasrem, align 8
  %"$gascmp_210" = icmp ugt i64 1, %"$gasrem_209"
  br i1 %"$gascmp_210", label %"$out_of_gas_211", label %"$have_gas_212"

"$out_of_gas_211":                                ; preds = %"$have_gas_204"
  call void @_out_of_gas()
  br label %"$have_gas_212"

"$have_gas_212":                                  ; preds = %"$out_of_gas_211", %"$have_gas_204"
  %"$consume_213" = sub i64 %"$gasrem_209", 1
  store i64 %"$consume_213", i64* @_gasrem, align 8
  %b1 = alloca %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, align 8
  %"$b_214" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b, align 8
  %"$$b_214_215" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b_214" to i8*
  %"$_lengthof_call_216" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_46", i8* %"$$b_214_215")
  %"$gasadd_217" = add i64 1, %"$_lengthof_call_216"
  %"$gasrem_218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_219" = icmp ugt i64 %"$gasadd_217", %"$gasrem_218"
  br i1 %"$gascmp_219", label %"$out_of_gas_220", label %"$have_gas_221"

"$out_of_gas_220":                                ; preds = %"$have_gas_212"
  call void @_out_of_gas()
  br label %"$have_gas_221"

"$have_gas_221":                                  ; preds = %"$out_of_gas_220", %"$have_gas_212"
  %"$consume_222" = sub i64 %"$gasrem_218", %"$gasadd_217"
  store i64 %"$consume_222", i64* @_gasrem, align 8
  %"$execptr_load_223" = load i8*, i8** @_execptr, align 8
  %"$b_224" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b, align 8
  %"$$b_224_225" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b_224" to i8*
  %"$put_i1_226" = alloca %Uint32, align 8
  %"$i1_227" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_227", %Uint32* %"$put_i1_226", align 4
  %"$$put_i1_226_228" = bitcast %Uint32* %"$put_i1_226" to i8*
  %"$o_229" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %o, align 8
  %"$$o_229_230" = bitcast %"TName_Option_Map_(Uint32)_(Uint32)"* %"$o_229" to i8*
  %"$put_call_231" = call i8* @_put(i8* %"$execptr_load_223", %_TyDescrTy_Typ* @"$TyDescr_Map_46", i8* %"$$b_224_225", i8* %"$$put_i1_226_228", i8* %"$$o_229_230"), !dbg !24
  %"$put_232" = bitcast i8* %"$put_call_231" to %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*
  store %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$put_232", %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1, align 8, !dbg !24
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 1, %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$have_gas_221"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$have_gas_221"
  %"$consume_237" = sub i64 %"$gasrem_233", 1
  store i64 %"$consume_237", i64* @_gasrem, align 8
  %res1 = alloca %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*, align 8
  %"$gasrem_238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_239" = icmp ugt i64 1, %"$gasrem_238"
  br i1 %"$gascmp_239", label %"$out_of_gas_240", label %"$have_gas_241"

"$out_of_gas_240":                                ; preds = %"$have_gas_236"
  call void @_out_of_gas()
  br label %"$have_gas_241"

"$have_gas_241":                                  ; preds = %"$out_of_gas_240", %"$have_gas_236"
  %"$consume_242" = sub i64 %"$gasrem_238", 1
  store i64 %"$consume_242", i64* @_gasrem, align 8
  %"$execptr_load_243" = load i8*, i8** @_execptr, align 8
  %"$b1_244" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1, align 8
  %"$$b1_244_245" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b1_244" to i8*
  %"$get_i1_246" = alloca %Uint32, align 8
  %"$i1_247" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_247", %Uint32* %"$get_i1_246", align 4
  %"$$get_i1_246_248" = bitcast %Uint32* %"$get_i1_246" to i8*
  %"$get_call_249" = call i8* @_get(i8* %"$execptr_load_243", %_TyDescrTy_Typ* @"$TyDescr_Map_46", i8* %"$$b1_244_245", i8* %"$$get_i1_246_248"), !dbg !25
  %"$get_250" = bitcast i8* %"$get_call_249" to %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*
  store %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$get_250", %"TName_Option_Option_(Map_(Uint32)_(Uint32))"** %res1, align 8, !dbg !25
  %"$gasrem_251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_252" = icmp ugt i64 2, %"$gasrem_251"
  br i1 %"$gascmp_252", label %"$out_of_gas_253", label %"$have_gas_254"

"$out_of_gas_253":                                ; preds = %"$have_gas_241"
  call void @_out_of_gas()
  br label %"$have_gas_254"

"$have_gas_254":                                  ; preds = %"$out_of_gas_253", %"$have_gas_241"
  %"$consume_255" = sub i64 %"$gasrem_251", 2
  store i64 %"$consume_255", i64* @_gasrem, align 8
  %"$res1_297" = load %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*, %"TName_Option_Option_(Map_(Uint32)_(Uint32))"** %res1, align 8
  %"$res1_tag_298" = getelementptr inbounds %"TName_Option_Option_(Map_(Uint32)_(Uint32))", %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$res1_297", i32 0, i32 0
  %"$res1_tag_299" = load i8, i8* %"$res1_tag_298", align 1
  switch i8 %"$res1_tag_299", label %"$default_300" [
    i8 0, label %"$Some_301"
  ], !dbg !26

"$Some_301":                                      ; preds = %"$have_gas_254"
  %"$res1_302" = bitcast %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$res1_297" to %"CName_Some_Option_(Map_(Uint32)_(Uint32))"*
  %"$$res1_2_gep_303" = getelementptr inbounds %"CName_Some_Option_(Map_(Uint32)_(Uint32))", %"CName_Some_Option_(Map_(Uint32)_(Uint32))"* %"$res1_302", i32 0, i32 1
  %"$$res1_2_load_304" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %"$$res1_2_gep_303", align 8
  %"$res1_2" = alloca %"TName_Option_Map_(Uint32)_(Uint32)"*, align 8
  store %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_2_load_304", %"TName_Option_Map_(Uint32)_(Uint32)"** %"$res1_2", align 8
  %"$$res1_2_306" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %"$res1_2", align 8
  %"$$res1_2_tag_307" = getelementptr inbounds %"TName_Option_Map_(Uint32)_(Uint32)", %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_2_306", i32 0, i32 0
  %"$$res1_2_tag_308" = load i8, i8* %"$$res1_2_tag_307", align 1
  switch i8 %"$$res1_2_tag_308", label %"$default_309" [
    i8 0, label %"$Some_310"
  ], !dbg !27

"$Some_310":                                      ; preds = %"$Some_301"
  %"$$res1_2_311" = bitcast %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_2_306" to %"CName_Some_Map_(Uint32)_(Uint32)"*
  %"$$a1_0_gep_312" = getelementptr inbounds %"CName_Some_Map_(Uint32)_(Uint32)", %"CName_Some_Map_(Uint32)_(Uint32)"* %"$$res1_2_311", i32 0, i32 1
  %"$$a1_0_load_313" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$$a1_0_gep_312", align 8
  %"$a1_0" = alloca %Map_Uint32_Uint32*, align 8
  store %Map_Uint32_Uint32* %"$$a1_0_load_313", %Map_Uint32_Uint32** %"$a1_0", align 8
  %"$gasrem_314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_315" = icmp ugt i64 1, %"$gasrem_314"
  br i1 %"$gascmp_315", label %"$out_of_gas_316", label %"$have_gas_317"

"$out_of_gas_316":                                ; preds = %"$Some_310"
  call void @_out_of_gas()
  br label %"$have_gas_317"

"$have_gas_317":                                  ; preds = %"$out_of_gas_316", %"$Some_310"
  %"$consume_318" = sub i64 %"$gasrem_314", 1
  store i64 %"$consume_318", i64* @_gasrem, align 8
  %p11 = alloca %TName_Bool*, align 8
  %"$gasrem_319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_320" = icmp ugt i64 1, %"$gasrem_319"
  br i1 %"$gascmp_320", label %"$out_of_gas_321", label %"$have_gas_322"

"$out_of_gas_321":                                ; preds = %"$have_gas_317"
  call void @_out_of_gas()
  br label %"$have_gas_322"

"$have_gas_322":                                  ; preds = %"$out_of_gas_321", %"$have_gas_317"
  %"$consume_323" = sub i64 %"$gasrem_319", 1
  store i64 %"$consume_323", i64* @_gasrem, align 8
  %"$execptr_load_324" = load i8*, i8** @_execptr, align 8
  %"$b1_325" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1, align 8
  %"$$b1_325_326" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b1_325" to i8*
  %"$contains_i1_327" = alloca %Uint32, align 8
  %"$i1_328" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_328", %Uint32* %"$contains_i1_327", align 4
  %"$$contains_i1_327_329" = bitcast %Uint32* %"$contains_i1_327" to i8*
  %"$contains_call_330" = call %TName_Bool* @_contains(i8* %"$execptr_load_324", %_TyDescrTy_Typ* @"$TyDescr_Map_46", i8* %"$$b1_325_326", i8* %"$$contains_i1_327_329"), !dbg !30
  store %TName_Bool* %"$contains_call_330", %TName_Bool** %p11, align 8, !dbg !30
  %"$gasrem_332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_333" = icmp ugt i64 1, %"$gasrem_332"
  br i1 %"$gascmp_333", label %"$out_of_gas_334", label %"$have_gas_335"

"$out_of_gas_334":                                ; preds = %"$have_gas_322"
  call void @_out_of_gas()
  br label %"$have_gas_335"

"$have_gas_335":                                  ; preds = %"$out_of_gas_334", %"$have_gas_322"
  %"$consume_336" = sub i64 %"$gasrem_332", 1
  store i64 %"$consume_336", i64* @_gasrem, align 8
  %p1_i = alloca %Uint32, align 8
  %"$gasrem_337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_338" = icmp ugt i64 1, %"$gasrem_337"
  br i1 %"$gascmp_338", label %"$out_of_gas_339", label %"$have_gas_340"

"$out_of_gas_339":                                ; preds = %"$have_gas_335"
  call void @_out_of_gas()
  br label %"$have_gas_340"

"$have_gas_340":                                  ; preds = %"$out_of_gas_339", %"$have_gas_335"
  %"$consume_341" = sub i64 %"$gasrem_337", 1
  store i64 %"$consume_341", i64* @_gasrem, align 8
  %"$bool_to_uint_3" = alloca %Uint32, align 8
  %"$bool_to_uint_342" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_343" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_342", 0
  %"$bool_to_uint_envptr_344" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_342", 1
  %"$p1_345" = load %TName_Bool*, %TName_Bool** %p11, align 8
  %"$bool_to_uint_call_346" = call %Uint32 %"$bool_to_uint_fptr_343"(i8* %"$bool_to_uint_envptr_344", %TName_Bool* %"$p1_345"), !dbg !33
  store %Uint32 %"$bool_to_uint_call_346", %Uint32* %"$bool_to_uint_3", align 4, !dbg !33
  %"$$bool_to_uint_3_347" = load %Uint32, %Uint32* %"$bool_to_uint_3", align 4
  store %Uint32 %"$$bool_to_uint_3_347", %Uint32* %p1_i, align 4, !dbg !33
  %"$gasrem_348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_349" = icmp ugt i64 1, %"$gasrem_348"
  br i1 %"$gascmp_349", label %"$out_of_gas_350", label %"$have_gas_351"

"$out_of_gas_350":                                ; preds = %"$have_gas_340"
  call void @_out_of_gas()
  br label %"$have_gas_351"

"$have_gas_351":                                  ; preds = %"$out_of_gas_350", %"$have_gas_340"
  %"$consume_352" = sub i64 %"$gasrem_348", 1
  store i64 %"$consume_352", i64* @_gasrem, align 8
  %p2 = alloca %TName_Bool*, align 8
  %"$gasrem_353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_354" = icmp ugt i64 1, %"$gasrem_353"
  br i1 %"$gascmp_354", label %"$out_of_gas_355", label %"$have_gas_356"

"$out_of_gas_355":                                ; preds = %"$have_gas_351"
  call void @_out_of_gas()
  br label %"$have_gas_356"

"$have_gas_356":                                  ; preds = %"$out_of_gas_355", %"$have_gas_351"
  %"$consume_357" = sub i64 %"$gasrem_353", 1
  store i64 %"$consume_357", i64* @_gasrem, align 8
  %"$execptr_load_358" = load i8*, i8** @_execptr, align 8
  %"$$a1_0_359" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_0", align 8
  %"$$$a1_0_359_360" = bitcast %Map_Uint32_Uint32* %"$$a1_0_359" to i8*
  %"$contains_i0_361" = alloca %Uint32, align 8
  %"$i0_362" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_362", %Uint32* %"$contains_i0_361", align 4
  %"$$contains_i0_361_363" = bitcast %Uint32* %"$contains_i0_361" to i8*
  %"$contains_call_364" = call %TName_Bool* @_contains(i8* %"$execptr_load_358", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$$a1_0_359_360", i8* %"$$contains_i0_361_363"), !dbg !34
  store %TName_Bool* %"$contains_call_364", %TName_Bool** %p2, align 8, !dbg !34
  %"$gasrem_366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_367" = icmp ugt i64 1, %"$gasrem_366"
  br i1 %"$gascmp_367", label %"$out_of_gas_368", label %"$have_gas_369"

"$out_of_gas_368":                                ; preds = %"$have_gas_356"
  call void @_out_of_gas()
  br label %"$have_gas_369"

"$have_gas_369":                                  ; preds = %"$out_of_gas_368", %"$have_gas_356"
  %"$consume_370" = sub i64 %"$gasrem_366", 1
  store i64 %"$consume_370", i64* @_gasrem, align 8
  %p2_i = alloca %Uint32, align 8
  %"$gasrem_371" = load i64, i64* @_gasrem, align 8
  %"$gascmp_372" = icmp ugt i64 1, %"$gasrem_371"
  br i1 %"$gascmp_372", label %"$out_of_gas_373", label %"$have_gas_374"

"$out_of_gas_373":                                ; preds = %"$have_gas_369"
  call void @_out_of_gas()
  br label %"$have_gas_374"

"$have_gas_374":                                  ; preds = %"$out_of_gas_373", %"$have_gas_369"
  %"$consume_375" = sub i64 %"$gasrem_371", 1
  store i64 %"$consume_375", i64* @_gasrem, align 8
  %"$bool_to_uint_4" = alloca %Uint32, align 8
  %"$bool_to_uint_376" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_377" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_376", 0
  %"$bool_to_uint_envptr_378" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_376", 1
  %"$p2_379" = load %TName_Bool*, %TName_Bool** %p2, align 8
  %"$bool_to_uint_call_380" = call %Uint32 %"$bool_to_uint_fptr_377"(i8* %"$bool_to_uint_envptr_378", %TName_Bool* %"$p2_379"), !dbg !35
  store %Uint32 %"$bool_to_uint_call_380", %Uint32* %"$bool_to_uint_4", align 4, !dbg !35
  %"$$bool_to_uint_4_381" = load %Uint32, %Uint32* %"$bool_to_uint_4", align 4
  store %Uint32 %"$$bool_to_uint_4_381", %Uint32* %p2_i, align 4, !dbg !35
  %"$gasrem_382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_383" = icmp ugt i64 1, %"$gasrem_382"
  br i1 %"$gascmp_383", label %"$out_of_gas_384", label %"$have_gas_385"

"$out_of_gas_384":                                ; preds = %"$have_gas_374"
  call void @_out_of_gas()
  br label %"$have_gas_385"

"$have_gas_385":                                  ; preds = %"$out_of_gas_384", %"$have_gas_374"
  %"$consume_386" = sub i64 %"$gasrem_382", 1
  store i64 %"$consume_386", i64* @_gasrem, align 8
  %p3 = alloca %Uint32, align 8
  %"$gasrem_387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_388" = icmp ugt i64 4, %"$gasrem_387"
  br i1 %"$gascmp_388", label %"$out_of_gas_389", label %"$have_gas_390"

"$out_of_gas_389":                                ; preds = %"$have_gas_385"
  call void @_out_of_gas()
  br label %"$have_gas_390"

"$have_gas_390":                                  ; preds = %"$out_of_gas_389", %"$have_gas_385"
  %"$consume_391" = sub i64 %"$gasrem_387", 4
  store i64 %"$consume_391", i64* @_gasrem, align 8
  %"$p1_i_392" = load %Uint32, %Uint32* %p1_i, align 4
  %"$p2_i_393" = load %Uint32, %Uint32* %p2_i, align 4
  %"$add_call_394" = call %Uint32 @_add_Uint32(%Uint32 %"$p1_i_392", %Uint32 %"$p2_i_393"), !dbg !36
  store %Uint32 %"$add_call_394", %Uint32* %p3, align 4, !dbg !36
  %"$gasrem_395" = load i64, i64* @_gasrem, align 8
  %"$gascmp_396" = icmp ugt i64 1, %"$gasrem_395"
  br i1 %"$gascmp_396", label %"$out_of_gas_397", label %"$have_gas_398"

"$out_of_gas_397":                                ; preds = %"$have_gas_390"
  call void @_out_of_gas()
  br label %"$have_gas_398"

"$have_gas_398":                                  ; preds = %"$out_of_gas_397", %"$have_gas_390"
  %"$consume_399" = sub i64 %"$gasrem_395", 1
  store i64 %"$consume_399", i64* @_gasrem, align 8
  %a2 = alloca %Map_Uint32_Uint32*, align 8
  %"$$a1_0_400" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_0", align 8
  %"$$$a1_0_400_401" = bitcast %Map_Uint32_Uint32* %"$$a1_0_400" to i8*
  %"$_lengthof_call_402" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$$a1_0_400_401")
  %"$gasadd_403" = add i64 1, %"$_lengthof_call_402"
  %"$gasrem_404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_405" = icmp ugt i64 %"$gasadd_403", %"$gasrem_404"
  br i1 %"$gascmp_405", label %"$out_of_gas_406", label %"$have_gas_407"

"$out_of_gas_406":                                ; preds = %"$have_gas_398"
  call void @_out_of_gas()
  br label %"$have_gas_407"

"$have_gas_407":                                  ; preds = %"$out_of_gas_406", %"$have_gas_398"
  %"$consume_408" = sub i64 %"$gasrem_404", %"$gasadd_403"
  store i64 %"$consume_408", i64* @_gasrem, align 8
  %"$execptr_load_409" = load i8*, i8** @_execptr, align 8
  %"$$a1_0_410" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_0", align 8
  %"$$$a1_0_410_411" = bitcast %Map_Uint32_Uint32* %"$$a1_0_410" to i8*
  %"$remove_i1_412" = alloca %Uint32, align 8
  %"$i1_413" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_413", %Uint32* %"$remove_i1_412", align 4
  %"$$remove_i1_412_414" = bitcast %Uint32* %"$remove_i1_412" to i8*
  %"$remove_call_415" = call i8* @_remove(i8* %"$execptr_load_409", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$$a1_0_410_411", i8* %"$$remove_i1_412_414"), !dbg !37
  %"$remove_416" = bitcast i8* %"$remove_call_415" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$remove_416", %Map_Uint32_Uint32** %a2, align 8, !dbg !37
  %"$gasrem_417" = load i64, i64* @_gasrem, align 8
  %"$gascmp_418" = icmp ugt i64 1, %"$gasrem_417"
  br i1 %"$gascmp_418", label %"$out_of_gas_419", label %"$have_gas_420"

"$out_of_gas_419":                                ; preds = %"$have_gas_407"
  call void @_out_of_gas()
  br label %"$have_gas_420"

"$have_gas_420":                                  ; preds = %"$out_of_gas_419", %"$have_gas_407"
  %"$consume_421" = sub i64 %"$gasrem_417", 1
  store i64 %"$consume_421", i64* @_gasrem, align 8
  %p5 = alloca %TName_Bool*, align 8
  %"$gasrem_422" = load i64, i64* @_gasrem, align 8
  %"$gascmp_423" = icmp ugt i64 1, %"$gasrem_422"
  br i1 %"$gascmp_423", label %"$out_of_gas_424", label %"$have_gas_425"

"$out_of_gas_424":                                ; preds = %"$have_gas_420"
  call void @_out_of_gas()
  br label %"$have_gas_425"

"$have_gas_425":                                  ; preds = %"$out_of_gas_424", %"$have_gas_420"
  %"$consume_426" = sub i64 %"$gasrem_422", 1
  store i64 %"$consume_426", i64* @_gasrem, align 8
  %"$execptr_load_427" = load i8*, i8** @_execptr, align 8
  %"$a2_428" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a2, align 8
  %"$$a2_428_429" = bitcast %Map_Uint32_Uint32* %"$a2_428" to i8*
  %"$contains_i0_430" = alloca %Uint32, align 8
  %"$i0_431" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_431", %Uint32* %"$contains_i0_430", align 4
  %"$$contains_i0_430_432" = bitcast %Uint32* %"$contains_i0_430" to i8*
  %"$contains_call_433" = call %TName_Bool* @_contains(i8* %"$execptr_load_427", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$a2_428_429", i8* %"$$contains_i0_430_432"), !dbg !38
  store %TName_Bool* %"$contains_call_433", %TName_Bool** %p5, align 8, !dbg !38
  %"$gasrem_435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_436" = icmp ugt i64 1, %"$gasrem_435"
  br i1 %"$gascmp_436", label %"$out_of_gas_437", label %"$have_gas_438"

"$out_of_gas_437":                                ; preds = %"$have_gas_425"
  call void @_out_of_gas()
  br label %"$have_gas_438"

"$have_gas_438":                                  ; preds = %"$out_of_gas_437", %"$have_gas_425"
  %"$consume_439" = sub i64 %"$gasrem_435", 1
  store i64 %"$consume_439", i64* @_gasrem, align 8
  %p5_i = alloca %Uint32, align 8
  %"$gasrem_440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_441" = icmp ugt i64 1, %"$gasrem_440"
  br i1 %"$gascmp_441", label %"$out_of_gas_442", label %"$have_gas_443"

"$out_of_gas_442":                                ; preds = %"$have_gas_438"
  call void @_out_of_gas()
  br label %"$have_gas_443"

"$have_gas_443":                                  ; preds = %"$out_of_gas_442", %"$have_gas_438"
  %"$consume_444" = sub i64 %"$gasrem_440", 1
  store i64 %"$consume_444", i64* @_gasrem, align 8
  %"$bool_to_uint_5" = alloca %Uint32, align 8
  %"$bool_to_uint_445" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_446" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_445", 0
  %"$bool_to_uint_envptr_447" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_445", 1
  %"$p5_448" = load %TName_Bool*, %TName_Bool** %p5, align 8
  %"$bool_to_uint_call_449" = call %Uint32 %"$bool_to_uint_fptr_446"(i8* %"$bool_to_uint_envptr_447", %TName_Bool* %"$p5_448"), !dbg !39
  store %Uint32 %"$bool_to_uint_call_449", %Uint32* %"$bool_to_uint_5", align 4, !dbg !39
  %"$$bool_to_uint_5_450" = load %Uint32, %Uint32* %"$bool_to_uint_5", align 4
  store %Uint32 %"$$bool_to_uint_5_450", %Uint32* %p5_i, align 4, !dbg !39
  %"$gasrem_451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_452" = icmp ugt i64 1, %"$gasrem_451"
  br i1 %"$gascmp_452", label %"$out_of_gas_453", label %"$have_gas_454"

"$out_of_gas_453":                                ; preds = %"$have_gas_443"
  call void @_out_of_gas()
  br label %"$have_gas_454"

"$have_gas_454":                                  ; preds = %"$out_of_gas_453", %"$have_gas_443"
  %"$consume_455" = sub i64 %"$gasrem_451", 1
  store i64 %"$consume_455", i64* @_gasrem, align 8
  %p6 = alloca %Uint32, align 8
  %"$gasrem_456" = load i64, i64* @_gasrem, align 8
  %"$gascmp_457" = icmp ugt i64 4, %"$gasrem_456"
  br i1 %"$gascmp_457", label %"$out_of_gas_458", label %"$have_gas_459"

"$out_of_gas_458":                                ; preds = %"$have_gas_454"
  call void @_out_of_gas()
  br label %"$have_gas_459"

"$have_gas_459":                                  ; preds = %"$out_of_gas_458", %"$have_gas_454"
  %"$consume_460" = sub i64 %"$gasrem_456", 4
  store i64 %"$consume_460", i64* @_gasrem, align 8
  %"$p3_461" = load %Uint32, %Uint32* %p3, align 4
  %"$p5_i_462" = load %Uint32, %Uint32* %p5_i, align 4
  %"$add_call_463" = call %Uint32 @_add_Uint32(%Uint32 %"$p3_461", %Uint32 %"$p5_i_462"), !dbg !40
  store %Uint32 %"$add_call_463", %Uint32* %p6, align 4, !dbg !40
  %"$gasrem_464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_465" = icmp ugt i64 1, %"$gasrem_464"
  br i1 %"$gascmp_465", label %"$out_of_gas_466", label %"$have_gas_467"

"$out_of_gas_466":                                ; preds = %"$have_gas_459"
  call void @_out_of_gas()
  br label %"$have_gas_467"

"$have_gas_467":                                  ; preds = %"$out_of_gas_466", %"$have_gas_459"
  %"$consume_468" = sub i64 %"$gasrem_464", 1
  store i64 %"$consume_468", i64* @_gasrem, align 8
  %a3 = alloca %Map_Uint32_Uint32*, align 8
  %"$$a1_0_469" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_0", align 8
  %"$$$a1_0_469_470" = bitcast %Map_Uint32_Uint32* %"$$a1_0_469" to i8*
  %"$_lengthof_call_471" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$$a1_0_469_470")
  %"$gasadd_472" = add i64 1, %"$_lengthof_call_471"
  %"$gasrem_473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_474" = icmp ugt i64 %"$gasadd_472", %"$gasrem_473"
  br i1 %"$gascmp_474", label %"$out_of_gas_475", label %"$have_gas_476"

"$out_of_gas_475":                                ; preds = %"$have_gas_467"
  call void @_out_of_gas()
  br label %"$have_gas_476"

"$have_gas_476":                                  ; preds = %"$out_of_gas_475", %"$have_gas_467"
  %"$consume_477" = sub i64 %"$gasrem_473", %"$gasadd_472"
  store i64 %"$consume_477", i64* @_gasrem, align 8
  %"$execptr_load_478" = load i8*, i8** @_execptr, align 8
  %"$$a1_0_479" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_0", align 8
  %"$$$a1_0_479_480" = bitcast %Map_Uint32_Uint32* %"$$a1_0_479" to i8*
  %"$put_i1_481" = alloca %Uint32, align 8
  %"$i1_482" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_482", %Uint32* %"$put_i1_481", align 4
  %"$$put_i1_481_483" = bitcast %Uint32* %"$put_i1_481" to i8*
  %"$put_i0_484" = alloca %Uint32, align 8
  %"$i0_485" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_485", %Uint32* %"$put_i0_484", align 4
  %"$$put_i0_484_486" = bitcast %Uint32* %"$put_i0_484" to i8*
  %"$put_call_487" = call i8* @_put(i8* %"$execptr_load_478", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$$a1_0_479_480", i8* %"$$put_i1_481_483", i8* %"$$put_i0_484_486"), !dbg !41
  %"$put_488" = bitcast i8* %"$put_call_487" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$put_488", %Map_Uint32_Uint32** %a3, align 8, !dbg !41
  %"$gasrem_489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_490" = icmp ugt i64 1, %"$gasrem_489"
  br i1 %"$gascmp_490", label %"$out_of_gas_491", label %"$have_gas_492"

"$out_of_gas_491":                                ; preds = %"$have_gas_476"
  call void @_out_of_gas()
  br label %"$have_gas_492"

"$have_gas_492":                                  ; preds = %"$out_of_gas_491", %"$have_gas_476"
  %"$consume_493" = sub i64 %"$gasrem_489", 1
  store i64 %"$consume_493", i64* @_gasrem, align 8
  %a4 = alloca %Map_Uint32_Uint32*, align 8
  %"$a3_494" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a3, align 8
  %"$$a3_494_495" = bitcast %Map_Uint32_Uint32* %"$a3_494" to i8*
  %"$_lengthof_call_496" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$a3_494_495")
  %"$gasadd_497" = add i64 1, %"$_lengthof_call_496"
  %"$gasrem_498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_499" = icmp ugt i64 %"$gasadd_497", %"$gasrem_498"
  br i1 %"$gascmp_499", label %"$out_of_gas_500", label %"$have_gas_501"

"$out_of_gas_500":                                ; preds = %"$have_gas_492"
  call void @_out_of_gas()
  br label %"$have_gas_501"

"$have_gas_501":                                  ; preds = %"$out_of_gas_500", %"$have_gas_492"
  %"$consume_502" = sub i64 %"$gasrem_498", %"$gasadd_497"
  store i64 %"$consume_502", i64* @_gasrem, align 8
  %"$execptr_load_503" = load i8*, i8** @_execptr, align 8
  %"$a3_504" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a3, align 8
  %"$$a3_504_505" = bitcast %Map_Uint32_Uint32* %"$a3_504" to i8*
  %"$put_p6_506" = alloca %Uint32, align 8
  %"$p6_507" = load %Uint32, %Uint32* %p6, align 4
  store %Uint32 %"$p6_507", %Uint32* %"$put_p6_506", align 4
  %"$$put_p6_506_508" = bitcast %Uint32* %"$put_p6_506" to i8*
  %"$put_p3_509" = alloca %Uint32, align 8
  %"$p3_510" = load %Uint32, %Uint32* %p3, align 4
  store %Uint32 %"$p3_510", %Uint32* %"$put_p3_509", align 4
  %"$$put_p3_509_511" = bitcast %Uint32* %"$put_p3_509" to i8*
  %"$put_call_512" = call i8* @_put(i8* %"$execptr_load_503", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$a3_504_505", i8* %"$$put_p6_506_508", i8* %"$$put_p3_509_511"), !dbg !42
  %"$put_513" = bitcast i8* %"$put_call_512" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$put_513", %Map_Uint32_Uint32** %a4, align 8, !dbg !42
  %"$gasrem_514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_515" = icmp ugt i64 1, %"$gasrem_514"
  br i1 %"$gascmp_515", label %"$out_of_gas_516", label %"$have_gas_517"

"$out_of_gas_516":                                ; preds = %"$have_gas_501"
  call void @_out_of_gas()
  br label %"$have_gas_517"

"$have_gas_517":                                  ; preds = %"$out_of_gas_516", %"$have_gas_501"
  %"$consume_518" = sub i64 %"$gasrem_514", 1
  store i64 %"$consume_518", i64* @_gasrem, align 8
  %p7_i = alloca %Uint32, align 8
  %"$gasrem_519" = load i64, i64* @_gasrem, align 8
  %"$gascmp_520" = icmp ugt i64 1, %"$gasrem_519"
  br i1 %"$gascmp_520", label %"$out_of_gas_521", label %"$have_gas_522"

"$out_of_gas_521":                                ; preds = %"$have_gas_517"
  call void @_out_of_gas()
  br label %"$have_gas_522"

"$have_gas_522":                                  ; preds = %"$out_of_gas_521", %"$have_gas_517"
  %"$consume_523" = sub i64 %"$gasrem_519", 1
  store i64 %"$consume_523", i64* @_gasrem, align 8
  %"$a4_524" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a4, align 8
  %"$$a4_524_525" = bitcast %Map_Uint32_Uint32* %"$a4_524" to i8*
  %"$size_call_526" = call %Uint32 @_size(i8* %"$$a4_524_525"), !dbg !43
  store %Uint32 %"$size_call_526", %Uint32* %p7_i, align 4, !dbg !43
  %"$gasrem_527" = load i64, i64* @_gasrem, align 8
  %"$gascmp_528" = icmp ugt i64 4, %"$gasrem_527"
  br i1 %"$gascmp_528", label %"$out_of_gas_529", label %"$have_gas_530"

"$out_of_gas_529":                                ; preds = %"$have_gas_522"
  call void @_out_of_gas()
  br label %"$have_gas_530"

"$have_gas_530":                                  ; preds = %"$out_of_gas_529", %"$have_gas_522"
  %"$consume_531" = sub i64 %"$gasrem_527", 4
  store i64 %"$consume_531", i64* @_gasrem, align 8
  %"$p6_532" = load %Uint32, %Uint32* %p6, align 4
  %"$p7_i_533" = load %Uint32, %Uint32* %p7_i, align 4
  %"$add_call_534" = call %Uint32 @_add_Uint32(%Uint32 %"$p6_532", %Uint32 %"$p7_i_533"), !dbg !44
  store %Uint32 %"$add_call_534", %Uint32* %"$expr_7", align 4, !dbg !44
  br label %"$matchsucc_305"

"$default_309":                                   ; preds = %"$Some_301"
  br label %"$joinp_1"

"$matchsucc_305":                                 ; preds = %"$have_gas_530"
  br label %"$matchsucc_256"

"$default_300":                                   ; preds = %"$have_gas_254"
  br label %"$joinp_1"

"$joinp_1":                                       ; preds = %"$default_309", %"$default_300"
  %"$gasrem_257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_258" = icmp ugt i64 1, %"$gasrem_257"
  br i1 %"$gascmp_258", label %"$out_of_gas_259", label %"$have_gas_260"

"$out_of_gas_259":                                ; preds = %"$joinp_1"
  call void @_out_of_gas()
  br label %"$have_gas_260"

"$have_gas_260":                                  ; preds = %"$out_of_gas_259", %"$joinp_1"
  %"$consume_261" = sub i64 %"$gasrem_257", 1
  store i64 %"$consume_261", i64* @_gasrem, align 8
  %p = alloca %TName_Bool*, align 8
  %"$gasrem_262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_263" = icmp ugt i64 1, %"$gasrem_262"
  br i1 %"$gascmp_263", label %"$out_of_gas_264", label %"$have_gas_265"

"$out_of_gas_264":                                ; preds = %"$have_gas_260"
  call void @_out_of_gas()
  br label %"$have_gas_265"

"$have_gas_265":                                  ; preds = %"$out_of_gas_264", %"$have_gas_260"
  %"$consume_266" = sub i64 %"$gasrem_262", 1
  store i64 %"$consume_266", i64* @_gasrem, align 8
  %"$execptr_load_267" = load i8*, i8** @_execptr, align 8
  %"$a1_268" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a1, align 8
  %"$$a1_268_269" = bitcast %Map_Uint32_Uint32* %"$a1_268" to i8*
  %"$contains_i0_270" = alloca %Uint32, align 8
  %"$i0_271" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_271", %Uint32* %"$contains_i0_270", align 4
  %"$$contains_i0_270_272" = bitcast %Uint32* %"$contains_i0_270" to i8*
  %"$contains_call_273" = call %TName_Bool* @_contains(i8* %"$execptr_load_267", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$a1_268_269", i8* %"$$contains_i0_270_272"), !dbg !45
  store %TName_Bool* %"$contains_call_273", %TName_Bool** %p, align 8, !dbg !45
  %"$gasrem_275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_276" = icmp ugt i64 1, %"$gasrem_275"
  br i1 %"$gascmp_276", label %"$out_of_gas_277", label %"$have_gas_278"

"$out_of_gas_277":                                ; preds = %"$have_gas_265"
  call void @_out_of_gas()
  br label %"$have_gas_278"

"$have_gas_278":                                  ; preds = %"$out_of_gas_277", %"$have_gas_265"
  %"$consume_279" = sub i64 %"$gasrem_275", 1
  store i64 %"$consume_279", i64* @_gasrem, align 8
  %p1 = alloca %Uint32, align 8
  %"$gasrem_280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_281" = icmp ugt i64 1, %"$gasrem_280"
  br i1 %"$gascmp_281", label %"$out_of_gas_282", label %"$have_gas_283"

"$out_of_gas_282":                                ; preds = %"$have_gas_278"
  call void @_out_of_gas()
  br label %"$have_gas_283"

"$have_gas_283":                                  ; preds = %"$out_of_gas_282", %"$have_gas_278"
  %"$consume_284" = sub i64 %"$gasrem_280", 1
  store i64 %"$consume_284", i64* @_gasrem, align 8
  %"$bool_to_uint_6" = alloca %Uint32, align 8
  %"$bool_to_uint_285" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_286" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_285", 0
  %"$bool_to_uint_envptr_287" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_285", 1
  %"$p_288" = load %TName_Bool*, %TName_Bool** %p, align 8
  %"$bool_to_uint_call_289" = call %Uint32 %"$bool_to_uint_fptr_286"(i8* %"$bool_to_uint_envptr_287", %TName_Bool* %"$p_288"), !dbg !47
  store %Uint32 %"$bool_to_uint_call_289", %Uint32* %"$bool_to_uint_6", align 4, !dbg !47
  %"$$bool_to_uint_6_290" = load %Uint32, %Uint32* %"$bool_to_uint_6", align 4
  store %Uint32 %"$$bool_to_uint_6_290", %Uint32* %p1, align 4, !dbg !47
  %"$gasrem_291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_292" = icmp ugt i64 1, %"$gasrem_291"
  br i1 %"$gascmp_292", label %"$out_of_gas_293", label %"$have_gas_294"

"$out_of_gas_293":                                ; preds = %"$have_gas_283"
  call void @_out_of_gas()
  br label %"$have_gas_294"

"$have_gas_294":                                  ; preds = %"$out_of_gas_293", %"$have_gas_283"
  %"$consume_295" = sub i64 %"$gasrem_291", 1
  store i64 %"$consume_295", i64* @_gasrem, align 8
  %"$p1_296" = load %Uint32, %Uint32* %p1, align 4
  store %Uint32 %"$p1_296", %Uint32* %"$expr_7", align 4, !dbg !48
  br label %"$matchsucc_256"

"$matchsucc_256":                                 ; preds = %"$matchsucc_305", %"$have_gas_294"
  %"$$expr_7_535" = load %Uint32, %Uint32* %"$expr_7", align 4
  ret %Uint32 %"$$expr_7_535"
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
  %"$exprval_536" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_537" = alloca %Uint32, align 8
  %"$memvoidcast_538" = bitcast %Uint32* %"$pval_537" to i8*
  store %Uint32 %"$exprval_536", %Uint32* %"$pval_537", align 4
  %"$execptr_load_539" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_539", %_TyDescrTy_Typ* @"$TyDescr_Uint32_14", i8* %"$memvoidcast_538")
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
