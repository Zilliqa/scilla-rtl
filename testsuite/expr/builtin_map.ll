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
%"$ParamDescr_450" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_451" = type { %ParamDescrString, i32, %"$ParamDescr_450"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_450"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_451"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Uint32 @"$fundef_8"(%"$$fundef_8_env_85"* %0, %TName_Bool* %1) {
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
  ]

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
  store %Uint32 { i32 1 }, %Uint32* %"$retval_9", align 4
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
  store %Uint32 zeroinitializer, %Uint32* %"$retval_9", align 4
  br label %"$matchsucc_91"

"$empty_default_94":                              ; preds = %"$have_gas_89"
  br label %"$matchsucc_91"

"$matchsucc_91":                                  ; preds = %"$have_gas_107", %"$have_gas_100", %"$empty_default_94"
  %"$$retval_9_109" = load %Uint32, %Uint32* %"$retval_9", align 4
  ret %Uint32 %"$$retval_9_109"
}

declare void @_out_of_gas()

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) {
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
  store { %Uint32 (i8*, %TName_Bool*)*, i8* } { %Uint32 (i8*, %TName_Bool*)* bitcast (%Uint32 (%"$$fundef_8_env_85"*, %TName_Bool*)* @"$fundef_8" to %Uint32 (i8*, %TName_Bool*)*), i8* null }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
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
  store %Uint32 zeroinitializer, %Uint32* %i0, align 4
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
  store %Uint32 { i32 1 }, %Uint32* %i1, align 4
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
  store %Map_Uint32_Uint32* %"$_new_empty_map_155", %Map_Uint32_Uint32** %a, align 8
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
  %"$execptr_load_161" = load i8*, i8** @_execptr, align 8
  %"$a_162" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a, align 8
  %"$$a_162_163" = bitcast %Map_Uint32_Uint32* %"$a_162" to i8*
  %"$put_i0_164" = alloca %Uint32, align 8
  %"$i0_165" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_165", %Uint32* %"$put_i0_164", align 4
  %"$$put_i0_164_166" = bitcast %Uint32* %"$put_i0_164" to i8*
  %"$put_i1_167" = alloca %Uint32, align 8
  %"$i1_168" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_168", %Uint32* %"$put_i1_167", align 4
  %"$$put_i1_167_169" = bitcast %Uint32* %"$put_i1_167" to i8*
  %"$put_call_170" = call i8* @_put(i8* %"$execptr_load_161", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$a_162_163", i8* %"$$put_i0_164_166", i8* %"$$put_i1_167_169")
  %"$put_171" = bitcast i8* %"$put_call_170" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$put_171", %Map_Uint32_Uint32** %a1, align 8
  %"$gasrem_172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_173" = icmp ugt i64 1, %"$gasrem_172"
  br i1 %"$gascmp_173", label %"$out_of_gas_174", label %"$have_gas_175"

"$out_of_gas_174":                                ; preds = %"$have_gas_159"
  call void @_out_of_gas()
  br label %"$have_gas_175"

"$have_gas_175":                                  ; preds = %"$out_of_gas_174", %"$have_gas_159"
  %"$consume_176" = sub i64 %"$gasrem_172", 1
  store i64 %"$consume_176", i64* @_gasrem, align 8
  %o = alloca %"TName_Option_Map_(Uint32)_(Uint32)"*, align 8
  %"$gasrem_177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_178" = icmp ugt i64 1, %"$gasrem_177"
  br i1 %"$gascmp_178", label %"$out_of_gas_179", label %"$have_gas_180"

"$out_of_gas_179":                                ; preds = %"$have_gas_175"
  call void @_out_of_gas()
  br label %"$have_gas_180"

"$have_gas_180":                                  ; preds = %"$out_of_gas_179", %"$have_gas_175"
  %"$consume_181" = sub i64 %"$gasrem_177", 1
  store i64 %"$consume_181", i64* @_gasrem, align 8
  %"$a1_182" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a1, align 8
  %"$adtval_183_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_183_salloc" = call i8* @_salloc(i8* %"$adtval_183_load", i64 9)
  %"$adtval_183" = bitcast i8* %"$adtval_183_salloc" to %"CName_Some_Map_(Uint32)_(Uint32)"*
  %"$adtgep_184" = getelementptr inbounds %"CName_Some_Map_(Uint32)_(Uint32)", %"CName_Some_Map_(Uint32)_(Uint32)"* %"$adtval_183", i32 0, i32 0
  store i8 0, i8* %"$adtgep_184", align 1
  %"$adtgep_185" = getelementptr inbounds %"CName_Some_Map_(Uint32)_(Uint32)", %"CName_Some_Map_(Uint32)_(Uint32)"* %"$adtval_183", i32 0, i32 1
  store %Map_Uint32_Uint32* %"$a1_182", %Map_Uint32_Uint32** %"$adtgep_185", align 8
  %"$adtptr_186" = bitcast %"CName_Some_Map_(Uint32)_(Uint32)"* %"$adtval_183" to %"TName_Option_Map_(Uint32)_(Uint32)"*
  store %"TName_Option_Map_(Uint32)_(Uint32)"* %"$adtptr_186", %"TName_Option_Map_(Uint32)_(Uint32)"** %o, align 8
  %"$gasrem_187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_188" = icmp ugt i64 1, %"$gasrem_187"
  br i1 %"$gascmp_188", label %"$out_of_gas_189", label %"$have_gas_190"

"$out_of_gas_189":                                ; preds = %"$have_gas_180"
  call void @_out_of_gas()
  br label %"$have_gas_190"

"$have_gas_190":                                  ; preds = %"$out_of_gas_189", %"$have_gas_180"
  %"$consume_191" = sub i64 %"$gasrem_187", 1
  store i64 %"$consume_191", i64* @_gasrem, align 8
  %b = alloca %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, align 8
  %"$gasrem_192" = load i64, i64* @_gasrem, align 8
  %"$gascmp_193" = icmp ugt i64 1, %"$gasrem_192"
  br i1 %"$gascmp_193", label %"$out_of_gas_194", label %"$have_gas_195"

"$out_of_gas_194":                                ; preds = %"$have_gas_190"
  call void @_out_of_gas()
  br label %"$have_gas_195"

"$have_gas_195":                                  ; preds = %"$out_of_gas_194", %"$have_gas_190"
  %"$consume_196" = sub i64 %"$gasrem_192", 1
  store i64 %"$consume_196", i64* @_gasrem, align 8
  %"$execptr_load_197" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_198" = call i8* @_new_empty_map(i8* %"$execptr_load_197")
  %"$_new_empty_map_199" = bitcast i8* %"$_new_empty_map_call_198" to %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*
  store %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$_new_empty_map_199", %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b, align 8
  %"$gasrem_200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_201" = icmp ugt i64 1, %"$gasrem_200"
  br i1 %"$gascmp_201", label %"$out_of_gas_202", label %"$have_gas_203"

"$out_of_gas_202":                                ; preds = %"$have_gas_195"
  call void @_out_of_gas()
  br label %"$have_gas_203"

"$have_gas_203":                                  ; preds = %"$out_of_gas_202", %"$have_gas_195"
  %"$consume_204" = sub i64 %"$gasrem_200", 1
  store i64 %"$consume_204", i64* @_gasrem, align 8
  %b1 = alloca %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, align 8
  %"$execptr_load_205" = load i8*, i8** @_execptr, align 8
  %"$b_206" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b, align 8
  %"$$b_206_207" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b_206" to i8*
  %"$put_i1_208" = alloca %Uint32, align 8
  %"$i1_209" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_209", %Uint32* %"$put_i1_208", align 4
  %"$$put_i1_208_210" = bitcast %Uint32* %"$put_i1_208" to i8*
  %"$o_211" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %o, align 8
  %"$$o_211_212" = bitcast %"TName_Option_Map_(Uint32)_(Uint32)"* %"$o_211" to i8*
  %"$put_call_213" = call i8* @_put(i8* %"$execptr_load_205", %_TyDescrTy_Typ* @"$TyDescr_Map_46", i8* %"$$b_206_207", i8* %"$$put_i1_208_210", i8* %"$$o_211_212")
  %"$put_214" = bitcast i8* %"$put_call_213" to %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*
  store %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$put_214", %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1, align 8
  %"$gasrem_215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_216" = icmp ugt i64 1, %"$gasrem_215"
  br i1 %"$gascmp_216", label %"$out_of_gas_217", label %"$have_gas_218"

"$out_of_gas_217":                                ; preds = %"$have_gas_203"
  call void @_out_of_gas()
  br label %"$have_gas_218"

"$have_gas_218":                                  ; preds = %"$out_of_gas_217", %"$have_gas_203"
  %"$consume_219" = sub i64 %"$gasrem_215", 1
  store i64 %"$consume_219", i64* @_gasrem, align 8
  %res1 = alloca %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*, align 8
  %"$execptr_load_220" = load i8*, i8** @_execptr, align 8
  %"$b1_221" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1, align 8
  %"$$b1_221_222" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b1_221" to i8*
  %"$get_i1_223" = alloca %Uint32, align 8
  %"$i1_224" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_224", %Uint32* %"$get_i1_223", align 4
  %"$$get_i1_223_225" = bitcast %Uint32* %"$get_i1_223" to i8*
  %"$get_call_226" = call i8* @_get(i8* %"$execptr_load_220", %_TyDescrTy_Typ* @"$TyDescr_Map_46", i8* %"$$b1_221_222", i8* %"$$get_i1_223_225")
  %"$get_227" = bitcast i8* %"$get_call_226" to %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*
  store %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$get_227", %"TName_Option_Option_(Map_(Uint32)_(Uint32))"** %res1, align 8
  %"$gasrem_228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_229" = icmp ugt i64 2, %"$gasrem_228"
  br i1 %"$gascmp_229", label %"$out_of_gas_230", label %"$have_gas_231"

"$out_of_gas_230":                                ; preds = %"$have_gas_218"
  call void @_out_of_gas()
  br label %"$have_gas_231"

"$have_gas_231":                                  ; preds = %"$out_of_gas_230", %"$have_gas_218"
  %"$consume_232" = sub i64 %"$gasrem_228", 2
  store i64 %"$consume_232", i64* @_gasrem, align 8
  %"$res1_269" = load %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*, %"TName_Option_Option_(Map_(Uint32)_(Uint32))"** %res1, align 8
  %"$res1_tag_270" = getelementptr inbounds %"TName_Option_Option_(Map_(Uint32)_(Uint32))", %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$res1_269", i32 0, i32 0
  %"$res1_tag_271" = load i8, i8* %"$res1_tag_270", align 1
  switch i8 %"$res1_tag_271", label %"$default_272" [
    i8 0, label %"$Some_273"
  ]

"$Some_273":                                      ; preds = %"$have_gas_231"
  %"$res1_274" = bitcast %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$res1_269" to %"CName_Some_Option_(Map_(Uint32)_(Uint32))"*
  %"$$res1_2_gep_275" = getelementptr inbounds %"CName_Some_Option_(Map_(Uint32)_(Uint32))", %"CName_Some_Option_(Map_(Uint32)_(Uint32))"* %"$res1_274", i32 0, i32 1
  %"$$res1_2_load_276" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %"$$res1_2_gep_275", align 8
  %"$res1_2" = alloca %"TName_Option_Map_(Uint32)_(Uint32)"*, align 8
  store %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_2_load_276", %"TName_Option_Map_(Uint32)_(Uint32)"** %"$res1_2", align 8
  %"$$res1_2_278" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %"$res1_2", align 8
  %"$$res1_2_tag_279" = getelementptr inbounds %"TName_Option_Map_(Uint32)_(Uint32)", %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_2_278", i32 0, i32 0
  %"$$res1_2_tag_280" = load i8, i8* %"$$res1_2_tag_279", align 1
  switch i8 %"$$res1_2_tag_280", label %"$default_281" [
    i8 0, label %"$Some_282"
  ]

"$Some_282":                                      ; preds = %"$Some_273"
  %"$$res1_2_283" = bitcast %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_2_278" to %"CName_Some_Map_(Uint32)_(Uint32)"*
  %"$$a1_0_gep_284" = getelementptr inbounds %"CName_Some_Map_(Uint32)_(Uint32)", %"CName_Some_Map_(Uint32)_(Uint32)"* %"$$res1_2_283", i32 0, i32 1
  %"$$a1_0_load_285" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$$a1_0_gep_284", align 8
  %"$a1_0" = alloca %Map_Uint32_Uint32*, align 8
  store %Map_Uint32_Uint32* %"$$a1_0_load_285", %Map_Uint32_Uint32** %"$a1_0", align 8
  %"$gasrem_286" = load i64, i64* @_gasrem, align 8
  %"$gascmp_287" = icmp ugt i64 1, %"$gasrem_286"
  br i1 %"$gascmp_287", label %"$out_of_gas_288", label %"$have_gas_289"

"$out_of_gas_288":                                ; preds = %"$Some_282"
  call void @_out_of_gas()
  br label %"$have_gas_289"

"$have_gas_289":                                  ; preds = %"$out_of_gas_288", %"$Some_282"
  %"$consume_290" = sub i64 %"$gasrem_286", 1
  store i64 %"$consume_290", i64* @_gasrem, align 8
  %p11 = alloca %TName_Bool*, align 8
  %"$execptr_load_291" = load i8*, i8** @_execptr, align 8
  %"$b1_292" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1, align 8
  %"$$b1_292_293" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b1_292" to i8*
  %"$contains_i1_294" = alloca %Uint32, align 8
  %"$i1_295" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_295", %Uint32* %"$contains_i1_294", align 4
  %"$$contains_i1_294_296" = bitcast %Uint32* %"$contains_i1_294" to i8*
  %"$contains_call_297" = call %TName_Bool* @_contains(i8* %"$execptr_load_291", %_TyDescrTy_Typ* @"$TyDescr_Map_46", i8* %"$$b1_292_293", i8* %"$$contains_i1_294_296")
  store %TName_Bool* %"$contains_call_297", %TName_Bool** %p11, align 8
  %"$gasrem_299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_300" = icmp ugt i64 1, %"$gasrem_299"
  br i1 %"$gascmp_300", label %"$out_of_gas_301", label %"$have_gas_302"

"$out_of_gas_301":                                ; preds = %"$have_gas_289"
  call void @_out_of_gas()
  br label %"$have_gas_302"

"$have_gas_302":                                  ; preds = %"$out_of_gas_301", %"$have_gas_289"
  %"$consume_303" = sub i64 %"$gasrem_299", 1
  store i64 %"$consume_303", i64* @_gasrem, align 8
  %p1_i = alloca %Uint32, align 8
  %"$gasrem_304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_305" = icmp ugt i64 1, %"$gasrem_304"
  br i1 %"$gascmp_305", label %"$out_of_gas_306", label %"$have_gas_307"

"$out_of_gas_306":                                ; preds = %"$have_gas_302"
  call void @_out_of_gas()
  br label %"$have_gas_307"

"$have_gas_307":                                  ; preds = %"$out_of_gas_306", %"$have_gas_302"
  %"$consume_308" = sub i64 %"$gasrem_304", 1
  store i64 %"$consume_308", i64* @_gasrem, align 8
  %"$bool_to_uint_3" = alloca %Uint32, align 8
  %"$bool_to_uint_309" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_310" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_309", 0
  %"$bool_to_uint_envptr_311" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_309", 1
  %"$p1_312" = load %TName_Bool*, %TName_Bool** %p11, align 8
  %"$bool_to_uint_call_313" = call %Uint32 %"$bool_to_uint_fptr_310"(i8* %"$bool_to_uint_envptr_311", %TName_Bool* %"$p1_312")
  store %Uint32 %"$bool_to_uint_call_313", %Uint32* %"$bool_to_uint_3", align 4
  %"$$bool_to_uint_3_314" = load %Uint32, %Uint32* %"$bool_to_uint_3", align 4
  store %Uint32 %"$$bool_to_uint_3_314", %Uint32* %p1_i, align 4
  %"$gasrem_315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_316" = icmp ugt i64 1, %"$gasrem_315"
  br i1 %"$gascmp_316", label %"$out_of_gas_317", label %"$have_gas_318"

"$out_of_gas_317":                                ; preds = %"$have_gas_307"
  call void @_out_of_gas()
  br label %"$have_gas_318"

"$have_gas_318":                                  ; preds = %"$out_of_gas_317", %"$have_gas_307"
  %"$consume_319" = sub i64 %"$gasrem_315", 1
  store i64 %"$consume_319", i64* @_gasrem, align 8
  %p2 = alloca %TName_Bool*, align 8
  %"$execptr_load_320" = load i8*, i8** @_execptr, align 8
  %"$$a1_0_321" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_0", align 8
  %"$$$a1_0_321_322" = bitcast %Map_Uint32_Uint32* %"$$a1_0_321" to i8*
  %"$contains_i0_323" = alloca %Uint32, align 8
  %"$i0_324" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_324", %Uint32* %"$contains_i0_323", align 4
  %"$$contains_i0_323_325" = bitcast %Uint32* %"$contains_i0_323" to i8*
  %"$contains_call_326" = call %TName_Bool* @_contains(i8* %"$execptr_load_320", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$$a1_0_321_322", i8* %"$$contains_i0_323_325")
  store %TName_Bool* %"$contains_call_326", %TName_Bool** %p2, align 8
  %"$gasrem_328" = load i64, i64* @_gasrem, align 8
  %"$gascmp_329" = icmp ugt i64 1, %"$gasrem_328"
  br i1 %"$gascmp_329", label %"$out_of_gas_330", label %"$have_gas_331"

"$out_of_gas_330":                                ; preds = %"$have_gas_318"
  call void @_out_of_gas()
  br label %"$have_gas_331"

"$have_gas_331":                                  ; preds = %"$out_of_gas_330", %"$have_gas_318"
  %"$consume_332" = sub i64 %"$gasrem_328", 1
  store i64 %"$consume_332", i64* @_gasrem, align 8
  %p2_i = alloca %Uint32, align 8
  %"$gasrem_333" = load i64, i64* @_gasrem, align 8
  %"$gascmp_334" = icmp ugt i64 1, %"$gasrem_333"
  br i1 %"$gascmp_334", label %"$out_of_gas_335", label %"$have_gas_336"

"$out_of_gas_335":                                ; preds = %"$have_gas_331"
  call void @_out_of_gas()
  br label %"$have_gas_336"

"$have_gas_336":                                  ; preds = %"$out_of_gas_335", %"$have_gas_331"
  %"$consume_337" = sub i64 %"$gasrem_333", 1
  store i64 %"$consume_337", i64* @_gasrem, align 8
  %"$bool_to_uint_4" = alloca %Uint32, align 8
  %"$bool_to_uint_338" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_339" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_338", 0
  %"$bool_to_uint_envptr_340" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_338", 1
  %"$p2_341" = load %TName_Bool*, %TName_Bool** %p2, align 8
  %"$bool_to_uint_call_342" = call %Uint32 %"$bool_to_uint_fptr_339"(i8* %"$bool_to_uint_envptr_340", %TName_Bool* %"$p2_341")
  store %Uint32 %"$bool_to_uint_call_342", %Uint32* %"$bool_to_uint_4", align 4
  %"$$bool_to_uint_4_343" = load %Uint32, %Uint32* %"$bool_to_uint_4", align 4
  store %Uint32 %"$$bool_to_uint_4_343", %Uint32* %p2_i, align 4
  %"$gasrem_344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_345" = icmp ugt i64 1, %"$gasrem_344"
  br i1 %"$gascmp_345", label %"$out_of_gas_346", label %"$have_gas_347"

"$out_of_gas_346":                                ; preds = %"$have_gas_336"
  call void @_out_of_gas()
  br label %"$have_gas_347"

"$have_gas_347":                                  ; preds = %"$out_of_gas_346", %"$have_gas_336"
  %"$consume_348" = sub i64 %"$gasrem_344", 1
  store i64 %"$consume_348", i64* @_gasrem, align 8
  %p3 = alloca %Uint32, align 8
  %"$p1_i_349" = load %Uint32, %Uint32* %p1_i, align 4
  %"$p2_i_350" = load %Uint32, %Uint32* %p2_i, align 4
  %"$add_call_351" = call %Uint32 @_add_Uint32(%Uint32 %"$p1_i_349", %Uint32 %"$p2_i_350")
  store %Uint32 %"$add_call_351", %Uint32* %p3, align 4
  %"$gasrem_352" = load i64, i64* @_gasrem, align 8
  %"$gascmp_353" = icmp ugt i64 1, %"$gasrem_352"
  br i1 %"$gascmp_353", label %"$out_of_gas_354", label %"$have_gas_355"

"$out_of_gas_354":                                ; preds = %"$have_gas_347"
  call void @_out_of_gas()
  br label %"$have_gas_355"

"$have_gas_355":                                  ; preds = %"$out_of_gas_354", %"$have_gas_347"
  %"$consume_356" = sub i64 %"$gasrem_352", 1
  store i64 %"$consume_356", i64* @_gasrem, align 8
  %a2 = alloca %Map_Uint32_Uint32*, align 8
  %"$execptr_load_357" = load i8*, i8** @_execptr, align 8
  %"$$a1_0_358" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_0", align 8
  %"$$$a1_0_358_359" = bitcast %Map_Uint32_Uint32* %"$$a1_0_358" to i8*
  %"$_i1_360" = alloca %Uint32, align 8
  %"$i1_361" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_361", %Uint32* %"$_i1_360", align 4
  %"$$_i1_360_362" = bitcast %Uint32* %"$_i1_360" to i8*
  %"$_call_363" = call i8* @_remove(i8* %"$execptr_load_357", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$$a1_0_358_359", i8* %"$$_i1_360_362")
  %"$_364" = bitcast i8* %"$_call_363" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$_364", %Map_Uint32_Uint32** %a2, align 8
  %"$gasrem_365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_366" = icmp ugt i64 1, %"$gasrem_365"
  br i1 %"$gascmp_366", label %"$out_of_gas_367", label %"$have_gas_368"

"$out_of_gas_367":                                ; preds = %"$have_gas_355"
  call void @_out_of_gas()
  br label %"$have_gas_368"

"$have_gas_368":                                  ; preds = %"$out_of_gas_367", %"$have_gas_355"
  %"$consume_369" = sub i64 %"$gasrem_365", 1
  store i64 %"$consume_369", i64* @_gasrem, align 8
  %p5 = alloca %TName_Bool*, align 8
  %"$execptr_load_370" = load i8*, i8** @_execptr, align 8
  %"$a2_371" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a2, align 8
  %"$$a2_371_372" = bitcast %Map_Uint32_Uint32* %"$a2_371" to i8*
  %"$contains_i0_373" = alloca %Uint32, align 8
  %"$i0_374" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_374", %Uint32* %"$contains_i0_373", align 4
  %"$$contains_i0_373_375" = bitcast %Uint32* %"$contains_i0_373" to i8*
  %"$contains_call_376" = call %TName_Bool* @_contains(i8* %"$execptr_load_370", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$a2_371_372", i8* %"$$contains_i0_373_375")
  store %TName_Bool* %"$contains_call_376", %TName_Bool** %p5, align 8
  %"$gasrem_378" = load i64, i64* @_gasrem, align 8
  %"$gascmp_379" = icmp ugt i64 1, %"$gasrem_378"
  br i1 %"$gascmp_379", label %"$out_of_gas_380", label %"$have_gas_381"

"$out_of_gas_380":                                ; preds = %"$have_gas_368"
  call void @_out_of_gas()
  br label %"$have_gas_381"

"$have_gas_381":                                  ; preds = %"$out_of_gas_380", %"$have_gas_368"
  %"$consume_382" = sub i64 %"$gasrem_378", 1
  store i64 %"$consume_382", i64* @_gasrem, align 8
  %p5_i = alloca %Uint32, align 8
  %"$gasrem_383" = load i64, i64* @_gasrem, align 8
  %"$gascmp_384" = icmp ugt i64 1, %"$gasrem_383"
  br i1 %"$gascmp_384", label %"$out_of_gas_385", label %"$have_gas_386"

"$out_of_gas_385":                                ; preds = %"$have_gas_381"
  call void @_out_of_gas()
  br label %"$have_gas_386"

"$have_gas_386":                                  ; preds = %"$out_of_gas_385", %"$have_gas_381"
  %"$consume_387" = sub i64 %"$gasrem_383", 1
  store i64 %"$consume_387", i64* @_gasrem, align 8
  %"$bool_to_uint_5" = alloca %Uint32, align 8
  %"$bool_to_uint_388" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_389" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_388", 0
  %"$bool_to_uint_envptr_390" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_388", 1
  %"$p5_391" = load %TName_Bool*, %TName_Bool** %p5, align 8
  %"$bool_to_uint_call_392" = call %Uint32 %"$bool_to_uint_fptr_389"(i8* %"$bool_to_uint_envptr_390", %TName_Bool* %"$p5_391")
  store %Uint32 %"$bool_to_uint_call_392", %Uint32* %"$bool_to_uint_5", align 4
  %"$$bool_to_uint_5_393" = load %Uint32, %Uint32* %"$bool_to_uint_5", align 4
  store %Uint32 %"$$bool_to_uint_5_393", %Uint32* %p5_i, align 4
  %"$gasrem_394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_395" = icmp ugt i64 1, %"$gasrem_394"
  br i1 %"$gascmp_395", label %"$out_of_gas_396", label %"$have_gas_397"

"$out_of_gas_396":                                ; preds = %"$have_gas_386"
  call void @_out_of_gas()
  br label %"$have_gas_397"

"$have_gas_397":                                  ; preds = %"$out_of_gas_396", %"$have_gas_386"
  %"$consume_398" = sub i64 %"$gasrem_394", 1
  store i64 %"$consume_398", i64* @_gasrem, align 8
  %p6 = alloca %Uint32, align 8
  %"$p3_399" = load %Uint32, %Uint32* %p3, align 4
  %"$p5_i_400" = load %Uint32, %Uint32* %p5_i, align 4
  %"$add_call_401" = call %Uint32 @_add_Uint32(%Uint32 %"$p3_399", %Uint32 %"$p5_i_400")
  store %Uint32 %"$add_call_401", %Uint32* %p6, align 4
  %"$gasrem_402" = load i64, i64* @_gasrem, align 8
  %"$gascmp_403" = icmp ugt i64 1, %"$gasrem_402"
  br i1 %"$gascmp_403", label %"$out_of_gas_404", label %"$have_gas_405"

"$out_of_gas_404":                                ; preds = %"$have_gas_397"
  call void @_out_of_gas()
  br label %"$have_gas_405"

"$have_gas_405":                                  ; preds = %"$out_of_gas_404", %"$have_gas_397"
  %"$consume_406" = sub i64 %"$gasrem_402", 1
  store i64 %"$consume_406", i64* @_gasrem, align 8
  %a3 = alloca %Map_Uint32_Uint32*, align 8
  %"$execptr_load_407" = load i8*, i8** @_execptr, align 8
  %"$$a1_0_408" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_0", align 8
  %"$$$a1_0_408_409" = bitcast %Map_Uint32_Uint32* %"$$a1_0_408" to i8*
  %"$put_i1_410" = alloca %Uint32, align 8
  %"$i1_411" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_411", %Uint32* %"$put_i1_410", align 4
  %"$$put_i1_410_412" = bitcast %Uint32* %"$put_i1_410" to i8*
  %"$put_i0_413" = alloca %Uint32, align 8
  %"$i0_414" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_414", %Uint32* %"$put_i0_413", align 4
  %"$$put_i0_413_415" = bitcast %Uint32* %"$put_i0_413" to i8*
  %"$put_call_416" = call i8* @_put(i8* %"$execptr_load_407", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$$a1_0_408_409", i8* %"$$put_i1_410_412", i8* %"$$put_i0_413_415")
  %"$put_417" = bitcast i8* %"$put_call_416" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$put_417", %Map_Uint32_Uint32** %a3, align 8
  %"$gasrem_418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_419" = icmp ugt i64 1, %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %"$have_gas_405"
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %"$have_gas_405"
  %"$consume_422" = sub i64 %"$gasrem_418", 1
  store i64 %"$consume_422", i64* @_gasrem, align 8
  %a4 = alloca %Map_Uint32_Uint32*, align 8
  %"$execptr_load_423" = load i8*, i8** @_execptr, align 8
  %"$a3_424" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a3, align 8
  %"$$a3_424_425" = bitcast %Map_Uint32_Uint32* %"$a3_424" to i8*
  %"$put_p6_426" = alloca %Uint32, align 8
  %"$p6_427" = load %Uint32, %Uint32* %p6, align 4
  store %Uint32 %"$p6_427", %Uint32* %"$put_p6_426", align 4
  %"$$put_p6_426_428" = bitcast %Uint32* %"$put_p6_426" to i8*
  %"$put_p3_429" = alloca %Uint32, align 8
  %"$p3_430" = load %Uint32, %Uint32* %p3, align 4
  store %Uint32 %"$p3_430", %Uint32* %"$put_p3_429", align 4
  %"$$put_p3_429_431" = bitcast %Uint32* %"$put_p3_429" to i8*
  %"$put_call_432" = call i8* @_put(i8* %"$execptr_load_423", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$a3_424_425", i8* %"$$put_p6_426_428", i8* %"$$put_p3_429_431")
  %"$put_433" = bitcast i8* %"$put_call_432" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$put_433", %Map_Uint32_Uint32** %a4, align 8
  %"$gasrem_434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_435" = icmp ugt i64 1, %"$gasrem_434"
  br i1 %"$gascmp_435", label %"$out_of_gas_436", label %"$have_gas_437"

"$out_of_gas_436":                                ; preds = %"$have_gas_421"
  call void @_out_of_gas()
  br label %"$have_gas_437"

"$have_gas_437":                                  ; preds = %"$out_of_gas_436", %"$have_gas_421"
  %"$consume_438" = sub i64 %"$gasrem_434", 1
  store i64 %"$consume_438", i64* @_gasrem, align 8
  %p7_i = alloca %Uint32, align 8
  %"$a4_439" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a4, align 8
  %"$$a4_439_440" = bitcast %Map_Uint32_Uint32* %"$a4_439" to i8*
  %"$size_call_441" = call %Uint32 @_size(i8* %"$$a4_439_440")
  store %Uint32 %"$size_call_441", %Uint32* %p7_i, align 4
  %"$p6_442" = load %Uint32, %Uint32* %p6, align 4
  %"$p7_i_443" = load %Uint32, %Uint32* %p7_i, align 4
  %"$add_call_444" = call %Uint32 @_add_Uint32(%Uint32 %"$p6_442", %Uint32 %"$p7_i_443")
  store %Uint32 %"$add_call_444", %Uint32* %"$expr_7", align 4
  br label %"$matchsucc_277"

"$default_281":                                   ; preds = %"$Some_273"
  br label %"$joinp_1"

"$matchsucc_277":                                 ; preds = %"$have_gas_437"
  br label %"$matchsucc_233"

"$default_272":                                   ; preds = %"$have_gas_231"
  br label %"$joinp_1"

"$joinp_1":                                       ; preds = %"$default_281", %"$default_272"
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 1, %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %"$joinp_1"
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %"$joinp_1"
  %"$consume_238" = sub i64 %"$gasrem_234", 1
  store i64 %"$consume_238", i64* @_gasrem, align 8
  %p = alloca %TName_Bool*, align 8
  %"$execptr_load_239" = load i8*, i8** @_execptr, align 8
  %"$a1_240" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a1, align 8
  %"$$a1_240_241" = bitcast %Map_Uint32_Uint32* %"$a1_240" to i8*
  %"$contains_i0_242" = alloca %Uint32, align 8
  %"$i0_243" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_243", %Uint32* %"$contains_i0_242", align 4
  %"$$contains_i0_242_244" = bitcast %Uint32* %"$contains_i0_242" to i8*
  %"$contains_call_245" = call %TName_Bool* @_contains(i8* %"$execptr_load_239", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$a1_240_241", i8* %"$$contains_i0_242_244")
  store %TName_Bool* %"$contains_call_245", %TName_Bool** %p, align 8
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 1, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %"$have_gas_237"
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %"$have_gas_237"
  %"$consume_251" = sub i64 %"$gasrem_247", 1
  store i64 %"$consume_251", i64* @_gasrem, align 8
  %p1 = alloca %Uint32, align 8
  %"$gasrem_252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_253" = icmp ugt i64 1, %"$gasrem_252"
  br i1 %"$gascmp_253", label %"$out_of_gas_254", label %"$have_gas_255"

"$out_of_gas_254":                                ; preds = %"$have_gas_250"
  call void @_out_of_gas()
  br label %"$have_gas_255"

"$have_gas_255":                                  ; preds = %"$out_of_gas_254", %"$have_gas_250"
  %"$consume_256" = sub i64 %"$gasrem_252", 1
  store i64 %"$consume_256", i64* @_gasrem, align 8
  %"$bool_to_uint_6" = alloca %Uint32, align 8
  %"$bool_to_uint_257" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_258" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_257", 0
  %"$bool_to_uint_envptr_259" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_257", 1
  %"$p_260" = load %TName_Bool*, %TName_Bool** %p, align 8
  %"$bool_to_uint_call_261" = call %Uint32 %"$bool_to_uint_fptr_258"(i8* %"$bool_to_uint_envptr_259", %TName_Bool* %"$p_260")
  store %Uint32 %"$bool_to_uint_call_261", %Uint32* %"$bool_to_uint_6", align 4
  %"$$bool_to_uint_6_262" = load %Uint32, %Uint32* %"$bool_to_uint_6", align 4
  store %Uint32 %"$$bool_to_uint_6_262", %Uint32* %p1, align 4
  %"$gasrem_263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_264" = icmp ugt i64 1, %"$gasrem_263"
  br i1 %"$gascmp_264", label %"$out_of_gas_265", label %"$have_gas_266"

"$out_of_gas_265":                                ; preds = %"$have_gas_255"
  call void @_out_of_gas()
  br label %"$have_gas_266"

"$have_gas_266":                                  ; preds = %"$out_of_gas_265", %"$have_gas_255"
  %"$consume_267" = sub i64 %"$gasrem_263", 1
  store i64 %"$consume_267", i64* @_gasrem, align 8
  %"$p1_268" = load %Uint32, %Uint32* %p1, align 4
  store %Uint32 %"$p1_268", %Uint32* %"$expr_7", align 4
  br label %"$matchsucc_233"

"$matchsucc_233":                                 ; preds = %"$matchsucc_277", %"$have_gas_266"
  %"$$expr_7_445" = load %Uint32, %Uint32* %"$expr_7", align 4
  ret %Uint32 %"$$expr_7_445"
}

declare i8* @_new_empty_map(i8*)

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
  %"$exprval_446" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_447" = alloca %Uint32, align 8
  %"$memvoidcast_448" = bitcast %Uint32* %"$pval_447" to i8*
  store %Uint32 %"$exprval_446", %Uint32* %"$pval_447", align 4
  %"$execptr_load_449" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_449", %_TyDescrTy_Typ* @"$TyDescr_Uint32_14", i8* %"$memvoidcast_448")
  ret void
}
