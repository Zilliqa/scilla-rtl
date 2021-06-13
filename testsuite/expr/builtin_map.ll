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
%"$ParamDescr_446" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_447" = type { %ParamDescrString, i32, %"$ParamDescr_446"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_446"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_447"] zeroinitializer
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
  %"$Emp_155" = bitcast i8* %"$_new_empty_map_call_154" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$Emp_155", %Map_Uint32_Uint32** %a, align 8
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
  %"$_put_171" = bitcast i8* %"$put_call_170" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$_put_171", %Map_Uint32_Uint32** %a1, align 8
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
  %"$Emp_199" = bitcast i8* %"$_new_empty_map_call_198" to %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*
  store %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$Emp_199", %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b, align 8
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
  %"$_put_214" = bitcast i8* %"$put_call_213" to %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*
  store %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$_put_214", %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1, align 8
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
  %"$_get_227" = bitcast i8* %"$get_call_226" to %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*
  store %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$_get_227", %"TName_Option_Option_(Map_(Uint32)_(Uint32))"** %res1, align 8
  %"$gasrem_228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_229" = icmp ugt i64 2, %"$gasrem_228"
  br i1 %"$gascmp_229", label %"$out_of_gas_230", label %"$have_gas_231"

"$out_of_gas_230":                                ; preds = %"$have_gas_218"
  call void @_out_of_gas()
  br label %"$have_gas_231"

"$have_gas_231":                                  ; preds = %"$out_of_gas_230", %"$have_gas_218"
  %"$consume_232" = sub i64 %"$gasrem_228", 2
  store i64 %"$consume_232", i64* @_gasrem, align 8
  %"$res1_268" = load %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*, %"TName_Option_Option_(Map_(Uint32)_(Uint32))"** %res1, align 8
  %"$res1_tag_269" = getelementptr inbounds %"TName_Option_Option_(Map_(Uint32)_(Uint32))", %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$res1_268", i32 0, i32 0
  %"$res1_tag_270" = load i8, i8* %"$res1_tag_269", align 1
  switch i8 %"$res1_tag_270", label %"$default_271" [
    i8 0, label %"$Some_272"
  ]

"$Some_272":                                      ; preds = %"$have_gas_231"
  %"$res1_273" = bitcast %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$res1_268" to %"CName_Some_Option_(Map_(Uint32)_(Uint32))"*
  %"$$res1_2_gep_274" = getelementptr inbounds %"CName_Some_Option_(Map_(Uint32)_(Uint32))", %"CName_Some_Option_(Map_(Uint32)_(Uint32))"* %"$res1_273", i32 0, i32 1
  %"$$res1_2_load_275" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %"$$res1_2_gep_274", align 8
  %"$res1_2" = alloca %"TName_Option_Map_(Uint32)_(Uint32)"*, align 8
  store %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_2_load_275", %"TName_Option_Map_(Uint32)_(Uint32)"** %"$res1_2", align 8
  %"$$res1_2_277" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %"$res1_2", align 8
  %"$$res1_2_tag_278" = getelementptr inbounds %"TName_Option_Map_(Uint32)_(Uint32)", %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_2_277", i32 0, i32 0
  %"$$res1_2_tag_279" = load i8, i8* %"$$res1_2_tag_278", align 1
  switch i8 %"$$res1_2_tag_279", label %"$default_280" [
    i8 0, label %"$Some_281"
  ]

"$Some_281":                                      ; preds = %"$Some_272"
  %"$$res1_2_282" = bitcast %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_2_277" to %"CName_Some_Map_(Uint32)_(Uint32)"*
  %"$$a1_0_gep_283" = getelementptr inbounds %"CName_Some_Map_(Uint32)_(Uint32)", %"CName_Some_Map_(Uint32)_(Uint32)"* %"$$res1_2_282", i32 0, i32 1
  %"$$a1_0_load_284" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$$a1_0_gep_283", align 8
  %"$a1_0" = alloca %Map_Uint32_Uint32*, align 8
  store %Map_Uint32_Uint32* %"$$a1_0_load_284", %Map_Uint32_Uint32** %"$a1_0", align 8
  %"$gasrem_285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_286" = icmp ugt i64 1, %"$gasrem_285"
  br i1 %"$gascmp_286", label %"$out_of_gas_287", label %"$have_gas_288"

"$out_of_gas_287":                                ; preds = %"$Some_281"
  call void @_out_of_gas()
  br label %"$have_gas_288"

"$have_gas_288":                                  ; preds = %"$out_of_gas_287", %"$Some_281"
  %"$consume_289" = sub i64 %"$gasrem_285", 1
  store i64 %"$consume_289", i64* @_gasrem, align 8
  %p11 = alloca %TName_Bool*, align 8
  %"$execptr_load_290" = load i8*, i8** @_execptr, align 8
  %"$b1_291" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1, align 8
  %"$$b1_291_292" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b1_291" to i8*
  %"$contains_i1_293" = alloca %Uint32, align 8
  %"$i1_294" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_294", %Uint32* %"$contains_i1_293", align 4
  %"$$contains_i1_293_295" = bitcast %Uint32* %"$contains_i1_293" to i8*
  %"$contains_call_296" = call %TName_Bool* @_contains(i8* %"$execptr_load_290", %_TyDescrTy_Typ* @"$TyDescr_Map_46", i8* %"$$b1_291_292", i8* %"$$contains_i1_293_295")
  store %TName_Bool* %"$contains_call_296", %TName_Bool** %p11, align 8
  %"$gasrem_297" = load i64, i64* @_gasrem, align 8
  %"$gascmp_298" = icmp ugt i64 1, %"$gasrem_297"
  br i1 %"$gascmp_298", label %"$out_of_gas_299", label %"$have_gas_300"

"$out_of_gas_299":                                ; preds = %"$have_gas_288"
  call void @_out_of_gas()
  br label %"$have_gas_300"

"$have_gas_300":                                  ; preds = %"$out_of_gas_299", %"$have_gas_288"
  %"$consume_301" = sub i64 %"$gasrem_297", 1
  store i64 %"$consume_301", i64* @_gasrem, align 8
  %p1_i = alloca %Uint32, align 8
  %"$gasrem_302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_303" = icmp ugt i64 1, %"$gasrem_302"
  br i1 %"$gascmp_303", label %"$out_of_gas_304", label %"$have_gas_305"

"$out_of_gas_304":                                ; preds = %"$have_gas_300"
  call void @_out_of_gas()
  br label %"$have_gas_305"

"$have_gas_305":                                  ; preds = %"$out_of_gas_304", %"$have_gas_300"
  %"$consume_306" = sub i64 %"$gasrem_302", 1
  store i64 %"$consume_306", i64* @_gasrem, align 8
  %"$bool_to_uint_3" = alloca %Uint32, align 8
  %"$bool_to_uint_307" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_308" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_307", 0
  %"$bool_to_uint_envptr_309" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_307", 1
  %"$p1_310" = load %TName_Bool*, %TName_Bool** %p11, align 8
  %"$bool_to_uint_call_311" = call %Uint32 %"$bool_to_uint_fptr_308"(i8* %"$bool_to_uint_envptr_309", %TName_Bool* %"$p1_310")
  store %Uint32 %"$bool_to_uint_call_311", %Uint32* %"$bool_to_uint_3", align 4
  %"$$bool_to_uint_3_312" = load %Uint32, %Uint32* %"$bool_to_uint_3", align 4
  store %Uint32 %"$$bool_to_uint_3_312", %Uint32* %p1_i, align 4
  %"$gasrem_313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_314" = icmp ugt i64 1, %"$gasrem_313"
  br i1 %"$gascmp_314", label %"$out_of_gas_315", label %"$have_gas_316"

"$out_of_gas_315":                                ; preds = %"$have_gas_305"
  call void @_out_of_gas()
  br label %"$have_gas_316"

"$have_gas_316":                                  ; preds = %"$out_of_gas_315", %"$have_gas_305"
  %"$consume_317" = sub i64 %"$gasrem_313", 1
  store i64 %"$consume_317", i64* @_gasrem, align 8
  %p2 = alloca %TName_Bool*, align 8
  %"$execptr_load_318" = load i8*, i8** @_execptr, align 8
  %"$$a1_0_319" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_0", align 8
  %"$$$a1_0_319_320" = bitcast %Map_Uint32_Uint32* %"$$a1_0_319" to i8*
  %"$contains_i0_321" = alloca %Uint32, align 8
  %"$i0_322" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_322", %Uint32* %"$contains_i0_321", align 4
  %"$$contains_i0_321_323" = bitcast %Uint32* %"$contains_i0_321" to i8*
  %"$contains_call_324" = call %TName_Bool* @_contains(i8* %"$execptr_load_318", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$$a1_0_319_320", i8* %"$$contains_i0_321_323")
  store %TName_Bool* %"$contains_call_324", %TName_Bool** %p2, align 8
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 1, %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %"$have_gas_316"
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %"$have_gas_316"
  %"$consume_329" = sub i64 %"$gasrem_325", 1
  store i64 %"$consume_329", i64* @_gasrem, align 8
  %p2_i = alloca %Uint32, align 8
  %"$gasrem_330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_331" = icmp ugt i64 1, %"$gasrem_330"
  br i1 %"$gascmp_331", label %"$out_of_gas_332", label %"$have_gas_333"

"$out_of_gas_332":                                ; preds = %"$have_gas_328"
  call void @_out_of_gas()
  br label %"$have_gas_333"

"$have_gas_333":                                  ; preds = %"$out_of_gas_332", %"$have_gas_328"
  %"$consume_334" = sub i64 %"$gasrem_330", 1
  store i64 %"$consume_334", i64* @_gasrem, align 8
  %"$bool_to_uint_4" = alloca %Uint32, align 8
  %"$bool_to_uint_335" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_336" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_335", 0
  %"$bool_to_uint_envptr_337" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_335", 1
  %"$p2_338" = load %TName_Bool*, %TName_Bool** %p2, align 8
  %"$bool_to_uint_call_339" = call %Uint32 %"$bool_to_uint_fptr_336"(i8* %"$bool_to_uint_envptr_337", %TName_Bool* %"$p2_338")
  store %Uint32 %"$bool_to_uint_call_339", %Uint32* %"$bool_to_uint_4", align 4
  %"$$bool_to_uint_4_340" = load %Uint32, %Uint32* %"$bool_to_uint_4", align 4
  store %Uint32 %"$$bool_to_uint_4_340", %Uint32* %p2_i, align 4
  %"$gasrem_341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_342" = icmp ugt i64 1, %"$gasrem_341"
  br i1 %"$gascmp_342", label %"$out_of_gas_343", label %"$have_gas_344"

"$out_of_gas_343":                                ; preds = %"$have_gas_333"
  call void @_out_of_gas()
  br label %"$have_gas_344"

"$have_gas_344":                                  ; preds = %"$out_of_gas_343", %"$have_gas_333"
  %"$consume_345" = sub i64 %"$gasrem_341", 1
  store i64 %"$consume_345", i64* @_gasrem, align 8
  %p3 = alloca %Uint32, align 8
  %"$p1_i_346" = load %Uint32, %Uint32* %p1_i, align 4
  %"$p2_i_347" = load %Uint32, %Uint32* %p2_i, align 4
  %"$add_call_348" = call %Uint32 @_add_Uint32(%Uint32 %"$p1_i_346", %Uint32 %"$p2_i_347")
  store %Uint32 %"$add_call_348", %Uint32* %p3, align 4
  %"$gasrem_349" = load i64, i64* @_gasrem, align 8
  %"$gascmp_350" = icmp ugt i64 1, %"$gasrem_349"
  br i1 %"$gascmp_350", label %"$out_of_gas_351", label %"$have_gas_352"

"$out_of_gas_351":                                ; preds = %"$have_gas_344"
  call void @_out_of_gas()
  br label %"$have_gas_352"

"$have_gas_352":                                  ; preds = %"$out_of_gas_351", %"$have_gas_344"
  %"$consume_353" = sub i64 %"$gasrem_349", 1
  store i64 %"$consume_353", i64* @_gasrem, align 8
  %a2 = alloca %Map_Uint32_Uint32*, align 8
  %"$execptr_load_354" = load i8*, i8** @_execptr, align 8
  %"$$a1_0_355" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_0", align 8
  %"$$$a1_0_355_356" = bitcast %Map_Uint32_Uint32* %"$$a1_0_355" to i8*
  %"$_i1_357" = alloca %Uint32, align 8
  %"$i1_358" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_358", %Uint32* %"$_i1_357", align 4
  %"$$_i1_357_359" = bitcast %Uint32* %"$_i1_357" to i8*
  %"$_call_360" = call i8* @_remove(i8* %"$execptr_load_354", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$$a1_0_355_356", i8* %"$$_i1_357_359")
  %"$_remove_361" = bitcast i8* %"$_call_360" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$_remove_361", %Map_Uint32_Uint32** %a2, align 8
  %"$gasrem_362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_363" = icmp ugt i64 1, %"$gasrem_362"
  br i1 %"$gascmp_363", label %"$out_of_gas_364", label %"$have_gas_365"

"$out_of_gas_364":                                ; preds = %"$have_gas_352"
  call void @_out_of_gas()
  br label %"$have_gas_365"

"$have_gas_365":                                  ; preds = %"$out_of_gas_364", %"$have_gas_352"
  %"$consume_366" = sub i64 %"$gasrem_362", 1
  store i64 %"$consume_366", i64* @_gasrem, align 8
  %p5 = alloca %TName_Bool*, align 8
  %"$execptr_load_367" = load i8*, i8** @_execptr, align 8
  %"$a2_368" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a2, align 8
  %"$$a2_368_369" = bitcast %Map_Uint32_Uint32* %"$a2_368" to i8*
  %"$contains_i0_370" = alloca %Uint32, align 8
  %"$i0_371" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_371", %Uint32* %"$contains_i0_370", align 4
  %"$$contains_i0_370_372" = bitcast %Uint32* %"$contains_i0_370" to i8*
  %"$contains_call_373" = call %TName_Bool* @_contains(i8* %"$execptr_load_367", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$a2_368_369", i8* %"$$contains_i0_370_372")
  store %TName_Bool* %"$contains_call_373", %TName_Bool** %p5, align 8
  %"$gasrem_374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_375" = icmp ugt i64 1, %"$gasrem_374"
  br i1 %"$gascmp_375", label %"$out_of_gas_376", label %"$have_gas_377"

"$out_of_gas_376":                                ; preds = %"$have_gas_365"
  call void @_out_of_gas()
  br label %"$have_gas_377"

"$have_gas_377":                                  ; preds = %"$out_of_gas_376", %"$have_gas_365"
  %"$consume_378" = sub i64 %"$gasrem_374", 1
  store i64 %"$consume_378", i64* @_gasrem, align 8
  %p5_i = alloca %Uint32, align 8
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 1, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %"$have_gas_377"
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %"$have_gas_377"
  %"$consume_383" = sub i64 %"$gasrem_379", 1
  store i64 %"$consume_383", i64* @_gasrem, align 8
  %"$bool_to_uint_5" = alloca %Uint32, align 8
  %"$bool_to_uint_384" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_385" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_384", 0
  %"$bool_to_uint_envptr_386" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_384", 1
  %"$p5_387" = load %TName_Bool*, %TName_Bool** %p5, align 8
  %"$bool_to_uint_call_388" = call %Uint32 %"$bool_to_uint_fptr_385"(i8* %"$bool_to_uint_envptr_386", %TName_Bool* %"$p5_387")
  store %Uint32 %"$bool_to_uint_call_388", %Uint32* %"$bool_to_uint_5", align 4
  %"$$bool_to_uint_5_389" = load %Uint32, %Uint32* %"$bool_to_uint_5", align 4
  store %Uint32 %"$$bool_to_uint_5_389", %Uint32* %p5_i, align 4
  %"$gasrem_390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_391" = icmp ugt i64 1, %"$gasrem_390"
  br i1 %"$gascmp_391", label %"$out_of_gas_392", label %"$have_gas_393"

"$out_of_gas_392":                                ; preds = %"$have_gas_382"
  call void @_out_of_gas()
  br label %"$have_gas_393"

"$have_gas_393":                                  ; preds = %"$out_of_gas_392", %"$have_gas_382"
  %"$consume_394" = sub i64 %"$gasrem_390", 1
  store i64 %"$consume_394", i64* @_gasrem, align 8
  %p6 = alloca %Uint32, align 8
  %"$p3_395" = load %Uint32, %Uint32* %p3, align 4
  %"$p5_i_396" = load %Uint32, %Uint32* %p5_i, align 4
  %"$add_call_397" = call %Uint32 @_add_Uint32(%Uint32 %"$p3_395", %Uint32 %"$p5_i_396")
  store %Uint32 %"$add_call_397", %Uint32* %p6, align 4
  %"$gasrem_398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_399" = icmp ugt i64 1, %"$gasrem_398"
  br i1 %"$gascmp_399", label %"$out_of_gas_400", label %"$have_gas_401"

"$out_of_gas_400":                                ; preds = %"$have_gas_393"
  call void @_out_of_gas()
  br label %"$have_gas_401"

"$have_gas_401":                                  ; preds = %"$out_of_gas_400", %"$have_gas_393"
  %"$consume_402" = sub i64 %"$gasrem_398", 1
  store i64 %"$consume_402", i64* @_gasrem, align 8
  %a3 = alloca %Map_Uint32_Uint32*, align 8
  %"$execptr_load_403" = load i8*, i8** @_execptr, align 8
  %"$$a1_0_404" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_0", align 8
  %"$$$a1_0_404_405" = bitcast %Map_Uint32_Uint32* %"$$a1_0_404" to i8*
  %"$put_i1_406" = alloca %Uint32, align 8
  %"$i1_407" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_407", %Uint32* %"$put_i1_406", align 4
  %"$$put_i1_406_408" = bitcast %Uint32* %"$put_i1_406" to i8*
  %"$put_i0_409" = alloca %Uint32, align 8
  %"$i0_410" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_410", %Uint32* %"$put_i0_409", align 4
  %"$$put_i0_409_411" = bitcast %Uint32* %"$put_i0_409" to i8*
  %"$put_call_412" = call i8* @_put(i8* %"$execptr_load_403", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$$a1_0_404_405", i8* %"$$put_i1_406_408", i8* %"$$put_i0_409_411")
  %"$_put_413" = bitcast i8* %"$put_call_412" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$_put_413", %Map_Uint32_Uint32** %a3, align 8
  %"$gasrem_414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_415" = icmp ugt i64 1, %"$gasrem_414"
  br i1 %"$gascmp_415", label %"$out_of_gas_416", label %"$have_gas_417"

"$out_of_gas_416":                                ; preds = %"$have_gas_401"
  call void @_out_of_gas()
  br label %"$have_gas_417"

"$have_gas_417":                                  ; preds = %"$out_of_gas_416", %"$have_gas_401"
  %"$consume_418" = sub i64 %"$gasrem_414", 1
  store i64 %"$consume_418", i64* @_gasrem, align 8
  %a4 = alloca %Map_Uint32_Uint32*, align 8
  %"$execptr_load_419" = load i8*, i8** @_execptr, align 8
  %"$a3_420" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a3, align 8
  %"$$a3_420_421" = bitcast %Map_Uint32_Uint32* %"$a3_420" to i8*
  %"$put_p6_422" = alloca %Uint32, align 8
  %"$p6_423" = load %Uint32, %Uint32* %p6, align 4
  store %Uint32 %"$p6_423", %Uint32* %"$put_p6_422", align 4
  %"$$put_p6_422_424" = bitcast %Uint32* %"$put_p6_422" to i8*
  %"$put_p3_425" = alloca %Uint32, align 8
  %"$p3_426" = load %Uint32, %Uint32* %p3, align 4
  store %Uint32 %"$p3_426", %Uint32* %"$put_p3_425", align 4
  %"$$put_p3_425_427" = bitcast %Uint32* %"$put_p3_425" to i8*
  %"$put_call_428" = call i8* @_put(i8* %"$execptr_load_419", %_TyDescrTy_Typ* @"$TyDescr_Map_47", i8* %"$$a3_420_421", i8* %"$$put_p6_422_424", i8* %"$$put_p3_425_427")
  %"$_put_429" = bitcast i8* %"$put_call_428" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$_put_429", %Map_Uint32_Uint32** %a4, align 8
  %"$gasrem_430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_431" = icmp ugt i64 1, %"$gasrem_430"
  br i1 %"$gascmp_431", label %"$out_of_gas_432", label %"$have_gas_433"

"$out_of_gas_432":                                ; preds = %"$have_gas_417"
  call void @_out_of_gas()
  br label %"$have_gas_433"

"$have_gas_433":                                  ; preds = %"$out_of_gas_432", %"$have_gas_417"
  %"$consume_434" = sub i64 %"$gasrem_430", 1
  store i64 %"$consume_434", i64* @_gasrem, align 8
  %p7_i = alloca %Uint32, align 8
  %"$a4_435" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a4, align 8
  %"$$a4_435_436" = bitcast %Map_Uint32_Uint32* %"$a4_435" to i8*
  %"$size_call_437" = call %Uint32 @_size(i8* %"$$a4_435_436")
  store %Uint32 %"$size_call_437", %Uint32* %p7_i, align 4
  %"$p6_438" = load %Uint32, %Uint32* %p6, align 4
  %"$p7_i_439" = load %Uint32, %Uint32* %p7_i, align 4
  %"$add_call_440" = call %Uint32 @_add_Uint32(%Uint32 %"$p6_438", %Uint32 %"$p7_i_439")
  store %Uint32 %"$add_call_440", %Uint32* %"$expr_7", align 4
  br label %"$matchsucc_276"

"$default_280":                                   ; preds = %"$Some_272"
  br label %"$joinp_1"

"$matchsucc_276":                                 ; preds = %"$have_gas_433"
  br label %"$matchsucc_233"

"$default_271":                                   ; preds = %"$have_gas_231"
  br label %"$joinp_1"

"$joinp_1":                                       ; preds = %"$default_280", %"$default_271"
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
  %"$gasrem_246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_247" = icmp ugt i64 1, %"$gasrem_246"
  br i1 %"$gascmp_247", label %"$out_of_gas_248", label %"$have_gas_249"

"$out_of_gas_248":                                ; preds = %"$have_gas_237"
  call void @_out_of_gas()
  br label %"$have_gas_249"

"$have_gas_249":                                  ; preds = %"$out_of_gas_248", %"$have_gas_237"
  %"$consume_250" = sub i64 %"$gasrem_246", 1
  store i64 %"$consume_250", i64* @_gasrem, align 8
  %p1 = alloca %Uint32, align 8
  %"$gasrem_251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_252" = icmp ugt i64 1, %"$gasrem_251"
  br i1 %"$gascmp_252", label %"$out_of_gas_253", label %"$have_gas_254"

"$out_of_gas_253":                                ; preds = %"$have_gas_249"
  call void @_out_of_gas()
  br label %"$have_gas_254"

"$have_gas_254":                                  ; preds = %"$out_of_gas_253", %"$have_gas_249"
  %"$consume_255" = sub i64 %"$gasrem_251", 1
  store i64 %"$consume_255", i64* @_gasrem, align 8
  %"$bool_to_uint_6" = alloca %Uint32, align 8
  %"$bool_to_uint_256" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_257" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_256", 0
  %"$bool_to_uint_envptr_258" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_256", 1
  %"$p_259" = load %TName_Bool*, %TName_Bool** %p, align 8
  %"$bool_to_uint_call_260" = call %Uint32 %"$bool_to_uint_fptr_257"(i8* %"$bool_to_uint_envptr_258", %TName_Bool* %"$p_259")
  store %Uint32 %"$bool_to_uint_call_260", %Uint32* %"$bool_to_uint_6", align 4
  %"$$bool_to_uint_6_261" = load %Uint32, %Uint32* %"$bool_to_uint_6", align 4
  store %Uint32 %"$$bool_to_uint_6_261", %Uint32* %p1, align 4
  %"$gasrem_262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_263" = icmp ugt i64 1, %"$gasrem_262"
  br i1 %"$gascmp_263", label %"$out_of_gas_264", label %"$have_gas_265"

"$out_of_gas_264":                                ; preds = %"$have_gas_254"
  call void @_out_of_gas()
  br label %"$have_gas_265"

"$have_gas_265":                                  ; preds = %"$out_of_gas_264", %"$have_gas_254"
  %"$consume_266" = sub i64 %"$gasrem_262", 1
  store i64 %"$consume_266", i64* @_gasrem, align 8
  %"$p1_267" = load %Uint32, %Uint32* %p1, align 4
  store %Uint32 %"$p1_267", %Uint32* %"$expr_7", align 4
  br label %"$matchsucc_233"

"$matchsucc_233":                                 ; preds = %"$matchsucc_276", %"$have_gas_265"
  %"$$expr_7_441" = load %Uint32, %Uint32* %"$expr_7", align 4
  ret %Uint32 %"$$expr_7_441"
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
  %"$exprval_442" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_443" = alloca %Uint32, align 8
  %"$memvoidcast_444" = bitcast %Uint32* %"$pval_443" to i8*
  store %Uint32 %"$exprval_442", %Uint32* %"$pval_443", align 4
  %"$execptr_load_445" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_445", %_TyDescrTy_Typ* @"$TyDescr_Uint32_14", i8* %"$memvoidcast_444")
  ret void
}
