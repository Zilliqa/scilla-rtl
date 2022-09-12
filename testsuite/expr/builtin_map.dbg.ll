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

%"$TyDescrTy_PrimTyp_16" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_48" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_47"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_47" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_49"**, %"$TyDescrTy_ADTTyp_48"* }
%"$TyDescrTy_ADTTyp_Constr_49" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_53" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%"$ParamDescr_579" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_580" = type { %ParamDescrString, i32, %"$ParamDescr_579"* }
%Uint32 = type { i32 }
%"$$fundef_14_env_93" = type {}
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
@"$TyDescr_ReplicateContr_Prim_43" = global %"$TyDescrTy_PrimTyp_16" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_44" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_ReplicateContr_Prim_43" to i8*) }
@"$TyDescr_Bystr_Prim_45" = global %"$TyDescrTy_PrimTyp_16" { i32 7, i32 0 }
@"$TyDescr_Bystr_46" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_16"* @"$TyDescr_Bystr_Prim_45" to i8*) }
@"$TyDescr_ADT_Option_Option_(Map_(Uint32)_(Uint32))_50" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_67" to i8*) }
@"$TyDescr_ADT_Option_Map_(Uint32)_(Uint32)_51" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_76" to i8*) }
@"$TyDescr_ADT_Bool_52" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Bool_ADTTyp_Specl_88" to i8*) }
@"$TyDescr_Map_54" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_53"* @"$TyDescr_MapTyp_91" to i8*) }
@"$TyDescr_Map_55" = unnamed_addr constant %_TyDescrTy_Typ { i32 2, i8* bitcast (%"$TyDescr_MapTyp_53"* @"$TyDescr_MapTyp_92" to i8*) }
@"$TyDescr_Option_ADTTyp_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_48" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_78", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_47"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_47"*], [2 x %"$TyDescrTy_ADTTyp_Specl_47"*]* @"$TyDescr_Option_ADTTyp_m_specls_77", i32 0, i32 0) }
@"$TyDescr_Option_Some_Option_(Map_(Uint32)_(Uint32))_Constr_m_args_59" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(Uint32)_(Uint32)_51"]
@"$TyDescr_ADT_Some_60" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Constr_61" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_49" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_60", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Option_(Map_(Uint32)_(Uint32))_Constr_m_args_59", i32 0, i32 0) }
@"$TyDescr_Option_None_Option_(Map_(Uint32)_(Uint32))_Constr_m_args_62" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_63" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Constr_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_49" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_63", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Option_(Map_(Uint32)_(Uint32))_Constr_m_args_62", i32 0, i32 0) }
@"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_m_constrs_65" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_49"*] [%"$TyDescrTy_ADTTyp_Constr_49"* @"$TyDescr_Option_Some_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Constr_61", %"$TyDescrTy_ADTTyp_Constr_49"* @"$TyDescr_Option_None_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Constr_64"]
@"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_m_TArgs_66" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(Uint32)_(Uint32)_51"]
@"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_67" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_47" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_m_TArgs_66", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_49"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_49"*], [2 x %"$TyDescrTy_ADTTyp_Constr_49"*]* @"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_m_constrs_65", i32 0, i32 0), %"$TyDescrTy_ADTTyp_48"* @"$TyDescr_Option_ADTTyp_58" }
@"$TyDescr_Option_Some_Map_(Uint32)_(Uint32)_Constr_m_args_68" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_55"]
@"$TyDescr_ADT_Some_69" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Map_(Uint32)_(Uint32)_ADTTyp_Constr_70" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_49" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_69", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Map_(Uint32)_(Uint32)_Constr_m_args_68", i32 0, i32 0) }
@"$TyDescr_Option_None_Map_(Uint32)_(Uint32)_Constr_m_args_71" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_72" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Map_(Uint32)_(Uint32)_ADTTyp_Constr_73" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_49" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_72", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Map_(Uint32)_(Uint32)_Constr_m_args_71", i32 0, i32 0) }
@"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_m_constrs_74" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_49"*] [%"$TyDescrTy_ADTTyp_Constr_49"* @"$TyDescr_Option_Some_Map_(Uint32)_(Uint32)_ADTTyp_Constr_70", %"$TyDescrTy_ADTTyp_Constr_49"* @"$TyDescr_Option_None_Map_(Uint32)_(Uint32)_ADTTyp_Constr_73"]
@"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_m_TArgs_75" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Map_55"]
@"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_76" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_47" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_m_TArgs_75", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_49"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_49"*], [2 x %"$TyDescrTy_ADTTyp_Constr_49"*]* @"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_m_constrs_74", i32 0, i32 0), %"$TyDescrTy_ADTTyp_48"* @"$TyDescr_Option_ADTTyp_58" }
@"$TyDescr_Option_ADTTyp_m_specls_77" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_47"*] [%"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Option_Option_(Map_(Uint32)_(Uint32))_ADTTyp_Specl_67", %"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Option_Map_(Uint32)_(Uint32)_ADTTyp_Specl_76"]
@"$TyDescr_ADT_Option_78" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Bool_ADTTyp_79" = unnamed_addr constant %"$TyDescrTy_ADTTyp_48" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_90", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_47"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_47"*], [1 x %"$TyDescrTy_ADTTyp_Specl_47"*]* @"$TyDescr_Bool_ADTTyp_m_specls_89", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_80" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_81" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_82" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_49" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_81", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_80", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_83" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_84" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_85" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_49" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_84", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_83", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_86" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_49"*] [%"$TyDescrTy_ADTTyp_Constr_49"* @"$TyDescr_Bool_True_ADTTyp_Constr_82", %"$TyDescrTy_ADTTyp_Constr_49"* @"$TyDescr_Bool_False_ADTTyp_Constr_85"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_87" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_88" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_47" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_87", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_49"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_49"*], [2 x %"$TyDescrTy_ADTTyp_Constr_49"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_86", i32 0, i32 0), %"$TyDescrTy_ADTTyp_48"* @"$TyDescr_Bool_ADTTyp_79" }
@"$TyDescr_Bool_ADTTyp_m_specls_89" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_47"*] [%"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Bool_ADTTyp_Specl_88"]
@"$TyDescr_ADT_Bool_90" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_MapTyp_91" = unnamed_addr constant %"$TyDescr_MapTyp_53" { %_TyDescrTy_Typ* @"$TyDescr_Uint32_20", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(Uint32)_(Uint32)_51" }
@"$TyDescr_MapTyp_92" = unnamed_addr constant %"$TyDescr_MapTyp_53" { %_TyDescrTy_Typ* @"$TyDescr_Uint32_20", %_TyDescrTy_Typ* @"$TyDescr_Uint32_20" }
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [20 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_40", %_TyDescrTy_Typ* @"$TyDescr_Int64_22", %_TyDescrTy_Typ* @"$TyDescr_Map_54", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_52", %_TyDescrTy_Typ* @"$TyDescr_Uint256_32", %_TyDescrTy_Typ* @"$TyDescr_Uint32_20", %_TyDescrTy_Typ* @"$TyDescr_Uint64_24", %_TyDescrTy_Typ* @"$TyDescr_Bnum_36", %_TyDescrTy_Typ* @"$TyDescr_Uint128_28", %_TyDescrTy_Typ* @"$TyDescr_Exception_42", %_TyDescrTy_Typ* @"$TyDescr_String_34", %_TyDescrTy_Typ* @"$TyDescr_Int256_30", %_TyDescrTy_Typ* @"$TyDescr_Int128_26", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Map_(Uint32)_(Uint32)_51", %_TyDescrTy_Typ* @"$TyDescr_Bystr_46", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_44", %_TyDescrTy_Typ* @"$TyDescr_Message_38", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Option_(Map_(Uint32)_(Uint32))_50", %_TyDescrTy_Typ* @"$TyDescr_Map_55", %_TyDescrTy_Typ* @"$TyDescr_Int32_18"]
@_tydescr_table_length = constant i32 20
@_contract_parameters = constant [0 x %"$ParamDescr_579"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_580"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Uint32 @"$fundef_14"(%"$$fundef_14_env_93"* %0, %TName_Bool* %1) !dbg !3 {
entry:
  %"$b_118" = alloca %TName_Bool*, align 8
  store %TName_Bool* %1, %TName_Bool** %"$b_118", align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$b_118", metadata !8, metadata !DIExpression()), !dbg !11
  %"$retval_15" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_15", metadata !12, metadata !DIExpression()), !dbg !14
  %"$gasrem_94" = load i64, i64* @_gasrem, align 8
  %"$gascmp_95" = icmp ugt i64 2, %"$gasrem_94"
  br i1 %"$gascmp_95", label %"$out_of_gas_96", label %"$have_gas_97"

"$out_of_gas_96":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_97"

"$have_gas_97":                                   ; preds = %"$out_of_gas_96", %entry
  %"$consume_98" = sub i64 %"$gasrem_94", 2
  store i64 %"$consume_98", i64* @_gasrem, align 8
  %"$b_tag_100" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b_tag_101" = load i8, i8* %"$b_tag_100", align 1
  switch i8 %"$b_tag_101", label %"$empty_default_102" [
    i8 0, label %"$True_103"
    i8 1, label %"$False_110"
  ], !dbg !14

"$True_103":                                      ; preds = %"$have_gas_97"
  %"$b_104" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_106" = icmp ugt i64 1, %"$gasrem_105"
  br i1 %"$gascmp_106", label %"$out_of_gas_107", label %"$have_gas_108"

"$out_of_gas_107":                                ; preds = %"$True_103"
  call void @_out_of_gas()
  br label %"$have_gas_108"

"$have_gas_108":                                  ; preds = %"$out_of_gas_107", %"$True_103"
  %"$consume_109" = sub i64 %"$gasrem_105", 1
  store i64 %"$consume_109", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %"$retval_15", align 4, !dbg !15
  br label %"$matchsucc_99"

"$False_110":                                     ; preds = %"$have_gas_97"
  %"$b_111" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_112" = load i64, i64* @_gasrem, align 8
  %"$gascmp_113" = icmp ugt i64 1, %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %"$False_110"
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %"$False_110"
  %"$consume_116" = sub i64 %"$gasrem_112", 1
  store i64 %"$consume_116", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %"$retval_15", align 4, !dbg !18
  br label %"$matchsucc_99"

"$empty_default_102":                             ; preds = %"$have_gas_97"
  br label %"$matchsucc_99"

"$matchsucc_99":                                  ; preds = %"$have_gas_115", %"$have_gas_108", %"$empty_default_102"
  %"$$retval_15_117" = load %Uint32, %Uint32* %"$retval_15", align 4
  ret %Uint32 %"$$retval_15_117"
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare void @_out_of_gas()

define void @_init_libs() !dbg !20 {
entry:
  %"$gasrem_119" = load i64, i64* @_gasrem, align 8
  %"$gascmp_120" = icmp ugt i64 5, %"$gasrem_119"
  br i1 %"$gascmp_120", label %"$out_of_gas_121", label %"$have_gas_122"

"$out_of_gas_121":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_122"

"$have_gas_122":                                  ; preds = %"$out_of_gas_121", %entry
  %"$consume_123" = sub i64 %"$gasrem_119", 5
  store i64 %"$consume_123", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !22
  %"$gasrem_124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_125" = icmp ugt i64 8, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %"$have_gas_122"
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %"$have_gas_122"
  %"$consume_128" = sub i64 %"$gasrem_124", 8
  store i64 %"$consume_128", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !22
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 196, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_127"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_127"
  %"$consume_133" = sub i64 %"$gasrem_129", 196
  store i64 %"$consume_133", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !22
  %"$gasrem_134" = load i64, i64* @_gasrem, align 8
  %"$gascmp_135" = icmp ugt i64 20, %"$gasrem_134"
  br i1 %"$gascmp_135", label %"$out_of_gas_136", label %"$have_gas_137"

"$out_of_gas_136":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_137"

"$have_gas_137":                                  ; preds = %"$out_of_gas_136", %"$have_gas_132"
  %"$consume_138" = sub i64 %"$gasrem_134", 20
  store i64 %"$consume_138", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !22
  %"$gasrem_139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_140" = icmp ugt i64 12, %"$gasrem_139"
  br i1 %"$gascmp_140", label %"$out_of_gas_141", label %"$have_gas_142"

"$out_of_gas_141":                                ; preds = %"$have_gas_137"
  call void @_out_of_gas()
  br label %"$have_gas_142"

"$have_gas_142":                                  ; preds = %"$out_of_gas_141", %"$have_gas_137"
  %"$consume_143" = sub i64 %"$gasrem_139", 12
  store i64 %"$consume_143", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !22
  %"$gasrem_144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_145" = icmp ugt i64 2, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %"$have_gas_142"
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %"$have_gas_142"
  %"$consume_148" = sub i64 %"$gasrem_144", 2
  store i64 %"$consume_148", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !22
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !23 {
entry:
  %"$expr_13" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$expr_13", metadata !24, metadata !DIExpression()), !dbg !25
  %"$gasrem_149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_150" = icmp ugt i64 1, %"$gasrem_149"
  br i1 %"$gascmp_150", label %"$out_of_gas_151", label %"$have_gas_152"

"$out_of_gas_151":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_152"

"$have_gas_152":                                  ; preds = %"$out_of_gas_151", %entry
  %"$consume_153" = sub i64 %"$gasrem_149", 1
  store i64 %"$consume_153", i64* @_gasrem, align 8
  %bool_to_uint = alloca { %Uint32 (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_155" = icmp ugt i64 1, %"$gasrem_154"
  br i1 %"$gascmp_155", label %"$out_of_gas_156", label %"$have_gas_157"

"$out_of_gas_156":                                ; preds = %"$have_gas_152"
  call void @_out_of_gas()
  br label %"$have_gas_157"

"$have_gas_157":                                  ; preds = %"$out_of_gas_156", %"$have_gas_152"
  %"$consume_158" = sub i64 %"$gasrem_154", 1
  store i64 %"$consume_158", i64* @_gasrem, align 8
  store { %Uint32 (i8*, %TName_Bool*)*, i8* } { %Uint32 (i8*, %TName_Bool*)* bitcast (%Uint32 (%"$$fundef_14_env_93"*, %TName_Bool*)* @"$fundef_14" to %Uint32 (i8*, %TName_Bool*)*), i8* null }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8, !dbg !26
  %"$gasrem_162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_163" = icmp ugt i64 1, %"$gasrem_162"
  br i1 %"$gascmp_163", label %"$out_of_gas_164", label %"$have_gas_165"

"$out_of_gas_164":                                ; preds = %"$have_gas_157"
  call void @_out_of_gas()
  br label %"$have_gas_165"

"$have_gas_165":                                  ; preds = %"$out_of_gas_164", %"$have_gas_157"
  %"$consume_166" = sub i64 %"$gasrem_162", 1
  store i64 %"$consume_166", i64* @_gasrem, align 8
  %i0 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %i0, metadata !27, metadata !DIExpression()), !dbg !28
  %"$gasrem_167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_168" = icmp ugt i64 1, %"$gasrem_167"
  br i1 %"$gascmp_168", label %"$out_of_gas_169", label %"$have_gas_170"

"$out_of_gas_169":                                ; preds = %"$have_gas_165"
  call void @_out_of_gas()
  br label %"$have_gas_170"

"$have_gas_170":                                  ; preds = %"$out_of_gas_169", %"$have_gas_165"
  %"$consume_171" = sub i64 %"$gasrem_167", 1
  store i64 %"$consume_171", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %i0, align 4, !dbg !29
  %"$gasrem_172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_173" = icmp ugt i64 1, %"$gasrem_172"
  br i1 %"$gascmp_173", label %"$out_of_gas_174", label %"$have_gas_175"

"$out_of_gas_174":                                ; preds = %"$have_gas_170"
  call void @_out_of_gas()
  br label %"$have_gas_175"

"$have_gas_175":                                  ; preds = %"$out_of_gas_174", %"$have_gas_170"
  %"$consume_176" = sub i64 %"$gasrem_172", 1
  store i64 %"$consume_176", i64* @_gasrem, align 8
  %i1 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %i1, metadata !30, metadata !DIExpression()), !dbg !31
  %"$gasrem_177" = load i64, i64* @_gasrem, align 8
  %"$gascmp_178" = icmp ugt i64 1, %"$gasrem_177"
  br i1 %"$gascmp_178", label %"$out_of_gas_179", label %"$have_gas_180"

"$out_of_gas_179":                                ; preds = %"$have_gas_175"
  call void @_out_of_gas()
  br label %"$have_gas_180"

"$have_gas_180":                                  ; preds = %"$out_of_gas_179", %"$have_gas_175"
  %"$consume_181" = sub i64 %"$gasrem_177", 1
  store i64 %"$consume_181", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %i1, align 4, !dbg !32
  %"$gasrem_182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_183" = icmp ugt i64 1, %"$gasrem_182"
  br i1 %"$gascmp_183", label %"$out_of_gas_184", label %"$have_gas_185"

"$out_of_gas_184":                                ; preds = %"$have_gas_180"
  call void @_out_of_gas()
  br label %"$have_gas_185"

"$have_gas_185":                                  ; preds = %"$out_of_gas_184", %"$have_gas_180"
  %"$consume_186" = sub i64 %"$gasrem_182", 1
  store i64 %"$consume_186", i64* @_gasrem, align 8
  %a = alloca %Map_Uint32_Uint32*, align 8
  call void @llvm.dbg.declare(metadata %Map_Uint32_Uint32** %a, metadata !33, metadata !DIExpression()), !dbg !36
  %"$gasrem_187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_188" = icmp ugt i64 1, %"$gasrem_187"
  br i1 %"$gascmp_188", label %"$out_of_gas_189", label %"$have_gas_190"

"$out_of_gas_189":                                ; preds = %"$have_gas_185"
  call void @_out_of_gas()
  br label %"$have_gas_190"

"$have_gas_190":                                  ; preds = %"$out_of_gas_189", %"$have_gas_185"
  %"$consume_191" = sub i64 %"$gasrem_187", 1
  store i64 %"$consume_191", i64* @_gasrem, align 8
  %"$execptr_load_192" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_193" = call i8* @_new_empty_map(i8* %"$execptr_load_192")
  %"$_new_empty_map_194" = bitcast i8* %"$_new_empty_map_call_193" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$_new_empty_map_194", %Map_Uint32_Uint32** %a, align 8, !dbg !37
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 1, %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %"$have_gas_190"
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %"$have_gas_190"
  %"$consume_199" = sub i64 %"$gasrem_195", 1
  store i64 %"$consume_199", i64* @_gasrem, align 8
  %a1 = alloca %Map_Uint32_Uint32*, align 8
  call void @llvm.dbg.declare(metadata %Map_Uint32_Uint32** %a1, metadata !38, metadata !DIExpression()), !dbg !39
  %"$a_200" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a, align 8
  %"$$a_200_201" = bitcast %Map_Uint32_Uint32* %"$a_200" to i8*
  %"$_lengthof_call_202" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_55", i8* %"$$a_200_201")
  %"$gasadd_203" = add i64 1, %"$_lengthof_call_202"
  %"$gasrem_204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_205" = icmp ugt i64 %"$gasadd_203", %"$gasrem_204"
  br i1 %"$gascmp_205", label %"$out_of_gas_206", label %"$have_gas_207"

"$out_of_gas_206":                                ; preds = %"$have_gas_198"
  call void @_out_of_gas()
  br label %"$have_gas_207"

"$have_gas_207":                                  ; preds = %"$out_of_gas_206", %"$have_gas_198"
  %"$consume_208" = sub i64 %"$gasrem_204", %"$gasadd_203"
  store i64 %"$consume_208", i64* @_gasrem, align 8
  %"$execptr_load_209" = load i8*, i8** @_execptr, align 8
  %"$a_210" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a, align 8
  %"$$a_210_211" = bitcast %Map_Uint32_Uint32* %"$a_210" to i8*
  %"$put_i0_212" = alloca %Uint32, align 8
  %"$i0_213" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_213", %Uint32* %"$put_i0_212", align 4
  %"$$put_i0_212_214" = bitcast %Uint32* %"$put_i0_212" to i8*
  %"$put_i1_215" = alloca %Uint32, align 8
  %"$i1_216" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_216", %Uint32* %"$put_i1_215", align 4
  %"$$put_i1_215_217" = bitcast %Uint32* %"$put_i1_215" to i8*
  %"$put_call_218" = call i8* @_put(i8* %"$execptr_load_209", %_TyDescrTy_Typ* @"$TyDescr_Map_55", i8* %"$$a_210_211", i8* %"$$put_i0_212_214", i8* %"$$put_i1_215_217"), !dbg !40
  %"$put_219" = bitcast i8* %"$put_call_218" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$put_219", %Map_Uint32_Uint32** %a1, align 8, !dbg !40
  %"$gasrem_220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_221" = icmp ugt i64 1, %"$gasrem_220"
  br i1 %"$gascmp_221", label %"$out_of_gas_222", label %"$have_gas_223"

"$out_of_gas_222":                                ; preds = %"$have_gas_207"
  call void @_out_of_gas()
  br label %"$have_gas_223"

"$have_gas_223":                                  ; preds = %"$out_of_gas_222", %"$have_gas_207"
  %"$consume_224" = sub i64 %"$gasrem_220", 1
  store i64 %"$consume_224", i64* @_gasrem, align 8
  %o = alloca %"TName_Option_Map_(Uint32)_(Uint32)"*, align 8
  call void @llvm.dbg.declare(metadata %"TName_Option_Map_(Uint32)_(Uint32)"** %o, metadata !41, metadata !DIExpression()), !dbg !44
  %"$gasrem_225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_226" = icmp ugt i64 1, %"$gasrem_225"
  br i1 %"$gascmp_226", label %"$out_of_gas_227", label %"$have_gas_228"

"$out_of_gas_227":                                ; preds = %"$have_gas_223"
  call void @_out_of_gas()
  br label %"$have_gas_228"

"$have_gas_228":                                  ; preds = %"$out_of_gas_227", %"$have_gas_223"
  %"$consume_229" = sub i64 %"$gasrem_225", 1
  store i64 %"$consume_229", i64* @_gasrem, align 8
  %"$a1_230" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a1, align 8
  %"$adtval_231_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_231_salloc" = call i8* @_salloc(i8* %"$adtval_231_load", i64 9)
  %"$adtval_231" = bitcast i8* %"$adtval_231_salloc" to %"CName_Some_Map_(Uint32)_(Uint32)"*
  %"$adtgep_232" = getelementptr inbounds %"CName_Some_Map_(Uint32)_(Uint32)", %"CName_Some_Map_(Uint32)_(Uint32)"* %"$adtval_231", i32 0, i32 0
  store i8 0, i8* %"$adtgep_232", align 1
  %"$adtgep_233" = getelementptr inbounds %"CName_Some_Map_(Uint32)_(Uint32)", %"CName_Some_Map_(Uint32)_(Uint32)"* %"$adtval_231", i32 0, i32 1
  store %Map_Uint32_Uint32* %"$a1_230", %Map_Uint32_Uint32** %"$adtgep_233", align 8
  %"$adtptr_234" = bitcast %"CName_Some_Map_(Uint32)_(Uint32)"* %"$adtval_231" to %"TName_Option_Map_(Uint32)_(Uint32)"*
  store %"TName_Option_Map_(Uint32)_(Uint32)"* %"$adtptr_234", %"TName_Option_Map_(Uint32)_(Uint32)"** %o, align 8, !dbg !45
  %"$gasrem_235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_236" = icmp ugt i64 1, %"$gasrem_235"
  br i1 %"$gascmp_236", label %"$out_of_gas_237", label %"$have_gas_238"

"$out_of_gas_237":                                ; preds = %"$have_gas_228"
  call void @_out_of_gas()
  br label %"$have_gas_238"

"$have_gas_238":                                  ; preds = %"$out_of_gas_237", %"$have_gas_228"
  %"$consume_239" = sub i64 %"$gasrem_235", 1
  store i64 %"$consume_239", i64* @_gasrem, align 8
  %b = alloca %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, align 8
  call void @llvm.dbg.declare(metadata %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b, metadata !46, metadata !DIExpression()), !dbg !49
  %"$gasrem_240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_241" = icmp ugt i64 1, %"$gasrem_240"
  br i1 %"$gascmp_241", label %"$out_of_gas_242", label %"$have_gas_243"

"$out_of_gas_242":                                ; preds = %"$have_gas_238"
  call void @_out_of_gas()
  br label %"$have_gas_243"

"$have_gas_243":                                  ; preds = %"$out_of_gas_242", %"$have_gas_238"
  %"$consume_244" = sub i64 %"$gasrem_240", 1
  store i64 %"$consume_244", i64* @_gasrem, align 8
  %"$execptr_load_245" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_246" = call i8* @_new_empty_map(i8* %"$execptr_load_245")
  %"$_new_empty_map_247" = bitcast i8* %"$_new_empty_map_call_246" to %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*
  store %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$_new_empty_map_247", %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b, align 8, !dbg !50
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 1, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %"$have_gas_243"
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %"$have_gas_243"
  %"$consume_252" = sub i64 %"$gasrem_248", 1
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %b1 = alloca %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, align 8
  call void @llvm.dbg.declare(metadata %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1, metadata !51, metadata !DIExpression()), !dbg !52
  %"$b_253" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b, align 8
  %"$$b_253_254" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b_253" to i8*
  %"$_lengthof_call_255" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_54", i8* %"$$b_253_254")
  %"$gasadd_256" = add i64 1, %"$_lengthof_call_255"
  %"$gasrem_257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_258" = icmp ugt i64 %"$gasadd_256", %"$gasrem_257"
  br i1 %"$gascmp_258", label %"$out_of_gas_259", label %"$have_gas_260"

"$out_of_gas_259":                                ; preds = %"$have_gas_251"
  call void @_out_of_gas()
  br label %"$have_gas_260"

"$have_gas_260":                                  ; preds = %"$out_of_gas_259", %"$have_gas_251"
  %"$consume_261" = sub i64 %"$gasrem_257", %"$gasadd_256"
  store i64 %"$consume_261", i64* @_gasrem, align 8
  %"$execptr_load_262" = load i8*, i8** @_execptr, align 8
  %"$b_263" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b, align 8
  %"$$b_263_264" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b_263" to i8*
  %"$put_i1_265" = alloca %Uint32, align 8
  %"$i1_266" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_266", %Uint32* %"$put_i1_265", align 4
  %"$$put_i1_265_267" = bitcast %Uint32* %"$put_i1_265" to i8*
  %"$o_268" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %o, align 8
  %"$$o_268_269" = bitcast %"TName_Option_Map_(Uint32)_(Uint32)"* %"$o_268" to i8*
  %"$put_call_270" = call i8* @_put(i8* %"$execptr_load_262", %_TyDescrTy_Typ* @"$TyDescr_Map_54", i8* %"$$b_263_264", i8* %"$$put_i1_265_267", i8* %"$$o_268_269"), !dbg !53
  %"$put_271" = bitcast i8* %"$put_call_270" to %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*
  store %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$put_271", %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1, align 8, !dbg !53
  %"$gasrem_272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_273" = icmp ugt i64 1, %"$gasrem_272"
  br i1 %"$gascmp_273", label %"$out_of_gas_274", label %"$have_gas_275"

"$out_of_gas_274":                                ; preds = %"$have_gas_260"
  call void @_out_of_gas()
  br label %"$have_gas_275"

"$have_gas_275":                                  ; preds = %"$out_of_gas_274", %"$have_gas_260"
  %"$consume_276" = sub i64 %"$gasrem_272", 1
  store i64 %"$consume_276", i64* @_gasrem, align 8
  %res1 = alloca %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*, align 8
  call void @llvm.dbg.declare(metadata %"TName_Option_Option_(Map_(Uint32)_(Uint32))"** %res1, metadata !54, metadata !DIExpression()), !dbg !57
  %"$gasrem_277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_278" = icmp ugt i64 1, %"$gasrem_277"
  br i1 %"$gascmp_278", label %"$out_of_gas_279", label %"$have_gas_280"

"$out_of_gas_279":                                ; preds = %"$have_gas_275"
  call void @_out_of_gas()
  br label %"$have_gas_280"

"$have_gas_280":                                  ; preds = %"$out_of_gas_279", %"$have_gas_275"
  %"$consume_281" = sub i64 %"$gasrem_277", 1
  store i64 %"$consume_281", i64* @_gasrem, align 8
  %"$execptr_load_282" = load i8*, i8** @_execptr, align 8
  %"$b1_283" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1, align 8
  %"$$b1_283_284" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b1_283" to i8*
  %"$get_i1_285" = alloca %Uint32, align 8
  %"$i1_286" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_286", %Uint32* %"$get_i1_285", align 4
  %"$$get_i1_285_287" = bitcast %Uint32* %"$get_i1_285" to i8*
  %"$get_call_288" = call i8* @_get(i8* %"$execptr_load_282", %_TyDescrTy_Typ* @"$TyDescr_Map_54", i8* %"$$b1_283_284", i8* %"$$get_i1_285_287"), !dbg !58
  %"$get_289" = bitcast i8* %"$get_call_288" to %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*
  store %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$get_289", %"TName_Option_Option_(Map_(Uint32)_(Uint32))"** %res1, align 8, !dbg !58
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 2, %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %"$have_gas_280"
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %"$have_gas_280"
  %"$consume_294" = sub i64 %"$gasrem_290", 2
  store i64 %"$consume_294", i64* @_gasrem, align 8
  %"$res1_336" = load %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*, %"TName_Option_Option_(Map_(Uint32)_(Uint32))"** %res1, align 8
  %"$res1_tag_337" = getelementptr inbounds %"TName_Option_Option_(Map_(Uint32)_(Uint32))", %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$res1_336", i32 0, i32 0
  %"$res1_tag_338" = load i8, i8* %"$res1_tag_337", align 1
  switch i8 %"$res1_tag_338", label %"$default_339" [
    i8 0, label %"$Some_340"
  ], !dbg !59

"$Some_340":                                      ; preds = %"$have_gas_293"
  %"$res1_341" = bitcast %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$res1_336" to %"CName_Some_Option_(Map_(Uint32)_(Uint32))"*
  %"$$res1_8_gep_342" = getelementptr inbounds %"CName_Some_Option_(Map_(Uint32)_(Uint32))", %"CName_Some_Option_(Map_(Uint32)_(Uint32))"* %"$res1_341", i32 0, i32 1
  %"$$res1_8_load_343" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %"$$res1_8_gep_342", align 8
  %"$res1_8" = alloca %"TName_Option_Map_(Uint32)_(Uint32)"*, align 8
  store %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_8_load_343", %"TName_Option_Map_(Uint32)_(Uint32)"** %"$res1_8", align 8
  %"$$res1_8_345" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %"$res1_8", align 8
  %"$$res1_8_tag_346" = getelementptr inbounds %"TName_Option_Map_(Uint32)_(Uint32)", %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_8_345", i32 0, i32 0
  %"$$res1_8_tag_347" = load i8, i8* %"$$res1_8_tag_346", align 1
  switch i8 %"$$res1_8_tag_347", label %"$default_348" [
    i8 0, label %"$Some_349"
  ], !dbg !60

"$Some_349":                                      ; preds = %"$Some_340"
  %"$$res1_8_350" = bitcast %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_8_345" to %"CName_Some_Map_(Uint32)_(Uint32)"*
  %"$$a1_6_gep_351" = getelementptr inbounds %"CName_Some_Map_(Uint32)_(Uint32)", %"CName_Some_Map_(Uint32)_(Uint32)"* %"$$res1_8_350", i32 0, i32 1
  %"$$a1_6_load_352" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$$a1_6_gep_351", align 8
  %"$a1_6" = alloca %Map_Uint32_Uint32*, align 8
  store %Map_Uint32_Uint32* %"$$a1_6_load_352", %Map_Uint32_Uint32** %"$a1_6", align 8
  %"$gasrem_353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_354" = icmp ugt i64 1, %"$gasrem_353"
  br i1 %"$gascmp_354", label %"$out_of_gas_355", label %"$have_gas_356"

"$out_of_gas_355":                                ; preds = %"$Some_349"
  call void @_out_of_gas()
  br label %"$have_gas_356"

"$have_gas_356":                                  ; preds = %"$out_of_gas_355", %"$Some_349"
  %"$consume_357" = sub i64 %"$gasrem_353", 1
  store i64 %"$consume_357", i64* @_gasrem, align 8
  %p11 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %p11, metadata !63, metadata !DIExpression()), !dbg !66
  %"$gasrem_358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_359" = icmp ugt i64 1, %"$gasrem_358"
  br i1 %"$gascmp_359", label %"$out_of_gas_360", label %"$have_gas_361"

"$out_of_gas_360":                                ; preds = %"$have_gas_356"
  call void @_out_of_gas()
  br label %"$have_gas_361"

"$have_gas_361":                                  ; preds = %"$out_of_gas_360", %"$have_gas_356"
  %"$consume_362" = sub i64 %"$gasrem_358", 1
  store i64 %"$consume_362", i64* @_gasrem, align 8
  %"$execptr_load_363" = load i8*, i8** @_execptr, align 8
  %"$b1_364" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1, align 8
  %"$$b1_364_365" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b1_364" to i8*
  %"$contains_i1_366" = alloca %Uint32, align 8
  %"$i1_367" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_367", %Uint32* %"$contains_i1_366", align 4
  %"$$contains_i1_366_368" = bitcast %Uint32* %"$contains_i1_366" to i8*
  %"$contains_call_369" = call %TName_Bool* @_contains(i8* %"$execptr_load_363", %_TyDescrTy_Typ* @"$TyDescr_Map_54", i8* %"$$b1_364_365", i8* %"$$contains_i1_366_368"), !dbg !67
  store %TName_Bool* %"$contains_call_369", %TName_Bool** %p11, align 8, !dbg !67
  %"$gasrem_371" = load i64, i64* @_gasrem, align 8
  %"$gascmp_372" = icmp ugt i64 1, %"$gasrem_371"
  br i1 %"$gascmp_372", label %"$out_of_gas_373", label %"$have_gas_374"

"$out_of_gas_373":                                ; preds = %"$have_gas_361"
  call void @_out_of_gas()
  br label %"$have_gas_374"

"$have_gas_374":                                  ; preds = %"$out_of_gas_373", %"$have_gas_361"
  %"$consume_375" = sub i64 %"$gasrem_371", 1
  store i64 %"$consume_375", i64* @_gasrem, align 8
  %p1_i = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %p1_i, metadata !68, metadata !DIExpression()), !dbg !69
  %"$gasrem_376" = load i64, i64* @_gasrem, align 8
  %"$gascmp_377" = icmp ugt i64 1, %"$gasrem_376"
  br i1 %"$gascmp_377", label %"$out_of_gas_378", label %"$have_gas_379"

"$out_of_gas_378":                                ; preds = %"$have_gas_374"
  call void @_out_of_gas()
  br label %"$have_gas_379"

"$have_gas_379":                                  ; preds = %"$out_of_gas_378", %"$have_gas_374"
  %"$consume_380" = sub i64 %"$gasrem_376", 1
  store i64 %"$consume_380", i64* @_gasrem, align 8
  %"$bool_to_uint_9" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$bool_to_uint_9", metadata !70, metadata !DIExpression()), !dbg !71
  %"$bool_to_uint_381" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_382" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_381", 0
  %"$bool_to_uint_envptr_383" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_381", 1
  %"$p1_384" = load %TName_Bool*, %TName_Bool** %p11, align 8
  %"$bool_to_uint_call_385" = call %Uint32 %"$bool_to_uint_fptr_382"(i8* %"$bool_to_uint_envptr_383", %TName_Bool* %"$p1_384"), !dbg !71
  store %Uint32 %"$bool_to_uint_call_385", %Uint32* %"$bool_to_uint_9", align 4, !dbg !71
  %"$$bool_to_uint_9_386" = load %Uint32, %Uint32* %"$bool_to_uint_9", align 4
  store %Uint32 %"$$bool_to_uint_9_386", %Uint32* %p1_i, align 4, !dbg !71
  %"$gasrem_387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_388" = icmp ugt i64 1, %"$gasrem_387"
  br i1 %"$gascmp_388", label %"$out_of_gas_389", label %"$have_gas_390"

"$out_of_gas_389":                                ; preds = %"$have_gas_379"
  call void @_out_of_gas()
  br label %"$have_gas_390"

"$have_gas_390":                                  ; preds = %"$out_of_gas_389", %"$have_gas_379"
  %"$consume_391" = sub i64 %"$gasrem_387", 1
  store i64 %"$consume_391", i64* @_gasrem, align 8
  %p2 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %p2, metadata !72, metadata !DIExpression()), !dbg !73
  %"$gasrem_392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_393" = icmp ugt i64 1, %"$gasrem_392"
  br i1 %"$gascmp_393", label %"$out_of_gas_394", label %"$have_gas_395"

"$out_of_gas_394":                                ; preds = %"$have_gas_390"
  call void @_out_of_gas()
  br label %"$have_gas_395"

"$have_gas_395":                                  ; preds = %"$out_of_gas_394", %"$have_gas_390"
  %"$consume_396" = sub i64 %"$gasrem_392", 1
  store i64 %"$consume_396", i64* @_gasrem, align 8
  %"$execptr_load_397" = load i8*, i8** @_execptr, align 8
  %"$$a1_6_398" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_6", align 8
  %"$$$a1_6_398_399" = bitcast %Map_Uint32_Uint32* %"$$a1_6_398" to i8*
  %"$contains_i0_400" = alloca %Uint32, align 8
  %"$i0_401" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_401", %Uint32* %"$contains_i0_400", align 4
  %"$$contains_i0_400_402" = bitcast %Uint32* %"$contains_i0_400" to i8*
  %"$contains_call_403" = call %TName_Bool* @_contains(i8* %"$execptr_load_397", %_TyDescrTy_Typ* @"$TyDescr_Map_55", i8* %"$$$a1_6_398_399", i8* %"$$contains_i0_400_402"), !dbg !74
  store %TName_Bool* %"$contains_call_403", %TName_Bool** %p2, align 8, !dbg !74
  %"$gasrem_405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_406" = icmp ugt i64 1, %"$gasrem_405"
  br i1 %"$gascmp_406", label %"$out_of_gas_407", label %"$have_gas_408"

"$out_of_gas_407":                                ; preds = %"$have_gas_395"
  call void @_out_of_gas()
  br label %"$have_gas_408"

"$have_gas_408":                                  ; preds = %"$out_of_gas_407", %"$have_gas_395"
  %"$consume_409" = sub i64 %"$gasrem_405", 1
  store i64 %"$consume_409", i64* @_gasrem, align 8
  %p2_i = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %p2_i, metadata !75, metadata !DIExpression()), !dbg !76
  %"$gasrem_410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_411" = icmp ugt i64 1, %"$gasrem_410"
  br i1 %"$gascmp_411", label %"$out_of_gas_412", label %"$have_gas_413"

"$out_of_gas_412":                                ; preds = %"$have_gas_408"
  call void @_out_of_gas()
  br label %"$have_gas_413"

"$have_gas_413":                                  ; preds = %"$out_of_gas_412", %"$have_gas_408"
  %"$consume_414" = sub i64 %"$gasrem_410", 1
  store i64 %"$consume_414", i64* @_gasrem, align 8
  %"$bool_to_uint_10" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$bool_to_uint_10", metadata !77, metadata !DIExpression()), !dbg !78
  %"$bool_to_uint_415" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_416" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_415", 0
  %"$bool_to_uint_envptr_417" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_415", 1
  %"$p2_418" = load %TName_Bool*, %TName_Bool** %p2, align 8
  %"$bool_to_uint_call_419" = call %Uint32 %"$bool_to_uint_fptr_416"(i8* %"$bool_to_uint_envptr_417", %TName_Bool* %"$p2_418"), !dbg !78
  store %Uint32 %"$bool_to_uint_call_419", %Uint32* %"$bool_to_uint_10", align 4, !dbg !78
  %"$$bool_to_uint_10_420" = load %Uint32, %Uint32* %"$bool_to_uint_10", align 4
  store %Uint32 %"$$bool_to_uint_10_420", %Uint32* %p2_i, align 4, !dbg !78
  %"$gasrem_421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_422" = icmp ugt i64 1, %"$gasrem_421"
  br i1 %"$gascmp_422", label %"$out_of_gas_423", label %"$have_gas_424"

"$out_of_gas_423":                                ; preds = %"$have_gas_413"
  call void @_out_of_gas()
  br label %"$have_gas_424"

"$have_gas_424":                                  ; preds = %"$out_of_gas_423", %"$have_gas_413"
  %"$consume_425" = sub i64 %"$gasrem_421", 1
  store i64 %"$consume_425", i64* @_gasrem, align 8
  %p3 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %p3, metadata !79, metadata !DIExpression()), !dbg !80
  %"$gasrem_426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_427" = icmp ugt i64 4, %"$gasrem_426"
  br i1 %"$gascmp_427", label %"$out_of_gas_428", label %"$have_gas_429"

"$out_of_gas_428":                                ; preds = %"$have_gas_424"
  call void @_out_of_gas()
  br label %"$have_gas_429"

"$have_gas_429":                                  ; preds = %"$out_of_gas_428", %"$have_gas_424"
  %"$consume_430" = sub i64 %"$gasrem_426", 4
  store i64 %"$consume_430", i64* @_gasrem, align 8
  %"$p1_i_431" = load %Uint32, %Uint32* %p1_i, align 4
  %"$p2_i_432" = load %Uint32, %Uint32* %p2_i, align 4
  %"$add_call_433" = call %Uint32 @_add_Uint32(%Uint32 %"$p1_i_431", %Uint32 %"$p2_i_432"), !dbg !81
  store %Uint32 %"$add_call_433", %Uint32* %p3, align 4, !dbg !81
  %"$gasrem_434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_435" = icmp ugt i64 1, %"$gasrem_434"
  br i1 %"$gascmp_435", label %"$out_of_gas_436", label %"$have_gas_437"

"$out_of_gas_436":                                ; preds = %"$have_gas_429"
  call void @_out_of_gas()
  br label %"$have_gas_437"

"$have_gas_437":                                  ; preds = %"$out_of_gas_436", %"$have_gas_429"
  %"$consume_438" = sub i64 %"$gasrem_434", 1
  store i64 %"$consume_438", i64* @_gasrem, align 8
  %a2 = alloca %Map_Uint32_Uint32*, align 8
  call void @llvm.dbg.declare(metadata %Map_Uint32_Uint32** %a2, metadata !82, metadata !DIExpression()), !dbg !83
  %"$$a1_6_439" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_6", align 8
  %"$$$a1_6_439_440" = bitcast %Map_Uint32_Uint32* %"$$a1_6_439" to i8*
  %"$_lengthof_call_441" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_55", i8* %"$$$a1_6_439_440")
  %"$gasadd_442" = add i64 1, %"$_lengthof_call_441"
  %"$gasrem_443" = load i64, i64* @_gasrem, align 8
  %"$gascmp_444" = icmp ugt i64 %"$gasadd_442", %"$gasrem_443"
  br i1 %"$gascmp_444", label %"$out_of_gas_445", label %"$have_gas_446"

"$out_of_gas_445":                                ; preds = %"$have_gas_437"
  call void @_out_of_gas()
  br label %"$have_gas_446"

"$have_gas_446":                                  ; preds = %"$out_of_gas_445", %"$have_gas_437"
  %"$consume_447" = sub i64 %"$gasrem_443", %"$gasadd_442"
  store i64 %"$consume_447", i64* @_gasrem, align 8
  %"$execptr_load_448" = load i8*, i8** @_execptr, align 8
  %"$$a1_6_449" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_6", align 8
  %"$$$a1_6_449_450" = bitcast %Map_Uint32_Uint32* %"$$a1_6_449" to i8*
  %"$remove_i1_451" = alloca %Uint32, align 8
  %"$i1_452" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_452", %Uint32* %"$remove_i1_451", align 4
  %"$$remove_i1_451_453" = bitcast %Uint32* %"$remove_i1_451" to i8*
  %"$remove_call_454" = call i8* @_remove(i8* %"$execptr_load_448", %_TyDescrTy_Typ* @"$TyDescr_Map_55", i8* %"$$$a1_6_449_450", i8* %"$$remove_i1_451_453"), !dbg !84
  %"$remove_455" = bitcast i8* %"$remove_call_454" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$remove_455", %Map_Uint32_Uint32** %a2, align 8, !dbg !84
  %"$gasrem_456" = load i64, i64* @_gasrem, align 8
  %"$gascmp_457" = icmp ugt i64 1, %"$gasrem_456"
  br i1 %"$gascmp_457", label %"$out_of_gas_458", label %"$have_gas_459"

"$out_of_gas_458":                                ; preds = %"$have_gas_446"
  call void @_out_of_gas()
  br label %"$have_gas_459"

"$have_gas_459":                                  ; preds = %"$out_of_gas_458", %"$have_gas_446"
  %"$consume_460" = sub i64 %"$gasrem_456", 1
  store i64 %"$consume_460", i64* @_gasrem, align 8
  %p5 = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %p5, metadata !85, metadata !DIExpression()), !dbg !86
  %"$gasrem_461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_462" = icmp ugt i64 1, %"$gasrem_461"
  br i1 %"$gascmp_462", label %"$out_of_gas_463", label %"$have_gas_464"

"$out_of_gas_463":                                ; preds = %"$have_gas_459"
  call void @_out_of_gas()
  br label %"$have_gas_464"

"$have_gas_464":                                  ; preds = %"$out_of_gas_463", %"$have_gas_459"
  %"$consume_465" = sub i64 %"$gasrem_461", 1
  store i64 %"$consume_465", i64* @_gasrem, align 8
  %"$execptr_load_466" = load i8*, i8** @_execptr, align 8
  %"$a2_467" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a2, align 8
  %"$$a2_467_468" = bitcast %Map_Uint32_Uint32* %"$a2_467" to i8*
  %"$contains_i0_469" = alloca %Uint32, align 8
  %"$i0_470" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_470", %Uint32* %"$contains_i0_469", align 4
  %"$$contains_i0_469_471" = bitcast %Uint32* %"$contains_i0_469" to i8*
  %"$contains_call_472" = call %TName_Bool* @_contains(i8* %"$execptr_load_466", %_TyDescrTy_Typ* @"$TyDescr_Map_55", i8* %"$$a2_467_468", i8* %"$$contains_i0_469_471"), !dbg !87
  store %TName_Bool* %"$contains_call_472", %TName_Bool** %p5, align 8, !dbg !87
  %"$gasrem_474" = load i64, i64* @_gasrem, align 8
  %"$gascmp_475" = icmp ugt i64 1, %"$gasrem_474"
  br i1 %"$gascmp_475", label %"$out_of_gas_476", label %"$have_gas_477"

"$out_of_gas_476":                                ; preds = %"$have_gas_464"
  call void @_out_of_gas()
  br label %"$have_gas_477"

"$have_gas_477":                                  ; preds = %"$out_of_gas_476", %"$have_gas_464"
  %"$consume_478" = sub i64 %"$gasrem_474", 1
  store i64 %"$consume_478", i64* @_gasrem, align 8
  %p5_i = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %p5_i, metadata !88, metadata !DIExpression()), !dbg !89
  %"$gasrem_479" = load i64, i64* @_gasrem, align 8
  %"$gascmp_480" = icmp ugt i64 1, %"$gasrem_479"
  br i1 %"$gascmp_480", label %"$out_of_gas_481", label %"$have_gas_482"

"$out_of_gas_481":                                ; preds = %"$have_gas_477"
  call void @_out_of_gas()
  br label %"$have_gas_482"

"$have_gas_482":                                  ; preds = %"$out_of_gas_481", %"$have_gas_477"
  %"$consume_483" = sub i64 %"$gasrem_479", 1
  store i64 %"$consume_483", i64* @_gasrem, align 8
  %"$bool_to_uint_11" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$bool_to_uint_11", metadata !90, metadata !DIExpression()), !dbg !91
  %"$bool_to_uint_484" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_485" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_484", 0
  %"$bool_to_uint_envptr_486" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_484", 1
  %"$p5_487" = load %TName_Bool*, %TName_Bool** %p5, align 8
  %"$bool_to_uint_call_488" = call %Uint32 %"$bool_to_uint_fptr_485"(i8* %"$bool_to_uint_envptr_486", %TName_Bool* %"$p5_487"), !dbg !91
  store %Uint32 %"$bool_to_uint_call_488", %Uint32* %"$bool_to_uint_11", align 4, !dbg !91
  %"$$bool_to_uint_11_489" = load %Uint32, %Uint32* %"$bool_to_uint_11", align 4
  store %Uint32 %"$$bool_to_uint_11_489", %Uint32* %p5_i, align 4, !dbg !91
  %"$gasrem_490" = load i64, i64* @_gasrem, align 8
  %"$gascmp_491" = icmp ugt i64 1, %"$gasrem_490"
  br i1 %"$gascmp_491", label %"$out_of_gas_492", label %"$have_gas_493"

"$out_of_gas_492":                                ; preds = %"$have_gas_482"
  call void @_out_of_gas()
  br label %"$have_gas_493"

"$have_gas_493":                                  ; preds = %"$out_of_gas_492", %"$have_gas_482"
  %"$consume_494" = sub i64 %"$gasrem_490", 1
  store i64 %"$consume_494", i64* @_gasrem, align 8
  %p6 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %p6, metadata !92, metadata !DIExpression()), !dbg !93
  %"$gasrem_495" = load i64, i64* @_gasrem, align 8
  %"$gascmp_496" = icmp ugt i64 4, %"$gasrem_495"
  br i1 %"$gascmp_496", label %"$out_of_gas_497", label %"$have_gas_498"

"$out_of_gas_497":                                ; preds = %"$have_gas_493"
  call void @_out_of_gas()
  br label %"$have_gas_498"

"$have_gas_498":                                  ; preds = %"$out_of_gas_497", %"$have_gas_493"
  %"$consume_499" = sub i64 %"$gasrem_495", 4
  store i64 %"$consume_499", i64* @_gasrem, align 8
  %"$p3_500" = load %Uint32, %Uint32* %p3, align 4
  %"$p5_i_501" = load %Uint32, %Uint32* %p5_i, align 4
  %"$add_call_502" = call %Uint32 @_add_Uint32(%Uint32 %"$p3_500", %Uint32 %"$p5_i_501"), !dbg !94
  store %Uint32 %"$add_call_502", %Uint32* %p6, align 4, !dbg !94
  %"$gasrem_503" = load i64, i64* @_gasrem, align 8
  %"$gascmp_504" = icmp ugt i64 1, %"$gasrem_503"
  br i1 %"$gascmp_504", label %"$out_of_gas_505", label %"$have_gas_506"

"$out_of_gas_505":                                ; preds = %"$have_gas_498"
  call void @_out_of_gas()
  br label %"$have_gas_506"

"$have_gas_506":                                  ; preds = %"$out_of_gas_505", %"$have_gas_498"
  %"$consume_507" = sub i64 %"$gasrem_503", 1
  store i64 %"$consume_507", i64* @_gasrem, align 8
  %a3 = alloca %Map_Uint32_Uint32*, align 8
  call void @llvm.dbg.declare(metadata %Map_Uint32_Uint32** %a3, metadata !95, metadata !DIExpression()), !dbg !96
  %"$$a1_6_508" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_6", align 8
  %"$$$a1_6_508_509" = bitcast %Map_Uint32_Uint32* %"$$a1_6_508" to i8*
  %"$_lengthof_call_510" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_55", i8* %"$$$a1_6_508_509")
  %"$gasadd_511" = add i64 1, %"$_lengthof_call_510"
  %"$gasrem_512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_513" = icmp ugt i64 %"$gasadd_511", %"$gasrem_512"
  br i1 %"$gascmp_513", label %"$out_of_gas_514", label %"$have_gas_515"

"$out_of_gas_514":                                ; preds = %"$have_gas_506"
  call void @_out_of_gas()
  br label %"$have_gas_515"

"$have_gas_515":                                  ; preds = %"$out_of_gas_514", %"$have_gas_506"
  %"$consume_516" = sub i64 %"$gasrem_512", %"$gasadd_511"
  store i64 %"$consume_516", i64* @_gasrem, align 8
  %"$execptr_load_517" = load i8*, i8** @_execptr, align 8
  %"$$a1_6_518" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_6", align 8
  %"$$$a1_6_518_519" = bitcast %Map_Uint32_Uint32* %"$$a1_6_518" to i8*
  %"$put_i1_520" = alloca %Uint32, align 8
  %"$i1_521" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_521", %Uint32* %"$put_i1_520", align 4
  %"$$put_i1_520_522" = bitcast %Uint32* %"$put_i1_520" to i8*
  %"$put_i0_523" = alloca %Uint32, align 8
  %"$i0_524" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_524", %Uint32* %"$put_i0_523", align 4
  %"$$put_i0_523_525" = bitcast %Uint32* %"$put_i0_523" to i8*
  %"$put_call_526" = call i8* @_put(i8* %"$execptr_load_517", %_TyDescrTy_Typ* @"$TyDescr_Map_55", i8* %"$$$a1_6_518_519", i8* %"$$put_i1_520_522", i8* %"$$put_i0_523_525"), !dbg !97
  %"$put_527" = bitcast i8* %"$put_call_526" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$put_527", %Map_Uint32_Uint32** %a3, align 8, !dbg !97
  %"$gasrem_528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_529" = icmp ugt i64 1, %"$gasrem_528"
  br i1 %"$gascmp_529", label %"$out_of_gas_530", label %"$have_gas_531"

"$out_of_gas_530":                                ; preds = %"$have_gas_515"
  call void @_out_of_gas()
  br label %"$have_gas_531"

"$have_gas_531":                                  ; preds = %"$out_of_gas_530", %"$have_gas_515"
  %"$consume_532" = sub i64 %"$gasrem_528", 1
  store i64 %"$consume_532", i64* @_gasrem, align 8
  %a4 = alloca %Map_Uint32_Uint32*, align 8
  call void @llvm.dbg.declare(metadata %Map_Uint32_Uint32** %a4, metadata !98, metadata !DIExpression()), !dbg !99
  %"$a3_533" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a3, align 8
  %"$$a3_533_534" = bitcast %Map_Uint32_Uint32* %"$a3_533" to i8*
  %"$_lengthof_call_535" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_55", i8* %"$$a3_533_534")
  %"$gasadd_536" = add i64 1, %"$_lengthof_call_535"
  %"$gasrem_537" = load i64, i64* @_gasrem, align 8
  %"$gascmp_538" = icmp ugt i64 %"$gasadd_536", %"$gasrem_537"
  br i1 %"$gascmp_538", label %"$out_of_gas_539", label %"$have_gas_540"

"$out_of_gas_539":                                ; preds = %"$have_gas_531"
  call void @_out_of_gas()
  br label %"$have_gas_540"

"$have_gas_540":                                  ; preds = %"$out_of_gas_539", %"$have_gas_531"
  %"$consume_541" = sub i64 %"$gasrem_537", %"$gasadd_536"
  store i64 %"$consume_541", i64* @_gasrem, align 8
  %"$execptr_load_542" = load i8*, i8** @_execptr, align 8
  %"$a3_543" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a3, align 8
  %"$$a3_543_544" = bitcast %Map_Uint32_Uint32* %"$a3_543" to i8*
  %"$put_p6_545" = alloca %Uint32, align 8
  %"$p6_546" = load %Uint32, %Uint32* %p6, align 4
  store %Uint32 %"$p6_546", %Uint32* %"$put_p6_545", align 4
  %"$$put_p6_545_547" = bitcast %Uint32* %"$put_p6_545" to i8*
  %"$put_p3_548" = alloca %Uint32, align 8
  %"$p3_549" = load %Uint32, %Uint32* %p3, align 4
  store %Uint32 %"$p3_549", %Uint32* %"$put_p3_548", align 4
  %"$$put_p3_548_550" = bitcast %Uint32* %"$put_p3_548" to i8*
  %"$put_call_551" = call i8* @_put(i8* %"$execptr_load_542", %_TyDescrTy_Typ* @"$TyDescr_Map_55", i8* %"$$a3_543_544", i8* %"$$put_p6_545_547", i8* %"$$put_p3_548_550"), !dbg !100
  %"$put_552" = bitcast i8* %"$put_call_551" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$put_552", %Map_Uint32_Uint32** %a4, align 8, !dbg !100
  %"$gasrem_553" = load i64, i64* @_gasrem, align 8
  %"$gascmp_554" = icmp ugt i64 1, %"$gasrem_553"
  br i1 %"$gascmp_554", label %"$out_of_gas_555", label %"$have_gas_556"

"$out_of_gas_555":                                ; preds = %"$have_gas_540"
  call void @_out_of_gas()
  br label %"$have_gas_556"

"$have_gas_556":                                  ; preds = %"$out_of_gas_555", %"$have_gas_540"
  %"$consume_557" = sub i64 %"$gasrem_553", 1
  store i64 %"$consume_557", i64* @_gasrem, align 8
  %p7_i = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %p7_i, metadata !101, metadata !DIExpression()), !dbg !102
  %"$gasrem_558" = load i64, i64* @_gasrem, align 8
  %"$gascmp_559" = icmp ugt i64 1, %"$gasrem_558"
  br i1 %"$gascmp_559", label %"$out_of_gas_560", label %"$have_gas_561"

"$out_of_gas_560":                                ; preds = %"$have_gas_556"
  call void @_out_of_gas()
  br label %"$have_gas_561"

"$have_gas_561":                                  ; preds = %"$out_of_gas_560", %"$have_gas_556"
  %"$consume_562" = sub i64 %"$gasrem_558", 1
  store i64 %"$consume_562", i64* @_gasrem, align 8
  %"$a4_563" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a4, align 8
  %"$$a4_563_564" = bitcast %Map_Uint32_Uint32* %"$a4_563" to i8*
  %"$size_call_565" = call %Uint32 @_size(i8* %"$$a4_563_564"), !dbg !103
  store %Uint32 %"$size_call_565", %Uint32* %p7_i, align 4, !dbg !103
  %"$gasrem_566" = load i64, i64* @_gasrem, align 8
  %"$gascmp_567" = icmp ugt i64 4, %"$gasrem_566"
  br i1 %"$gascmp_567", label %"$out_of_gas_568", label %"$have_gas_569"

"$out_of_gas_568":                                ; preds = %"$have_gas_561"
  call void @_out_of_gas()
  br label %"$have_gas_569"

"$have_gas_569":                                  ; preds = %"$out_of_gas_568", %"$have_gas_561"
  %"$consume_570" = sub i64 %"$gasrem_566", 4
  store i64 %"$consume_570", i64* @_gasrem, align 8
  %"$p6_571" = load %Uint32, %Uint32* %p6, align 4
  %"$p7_i_572" = load %Uint32, %Uint32* %p7_i, align 4
  %"$add_call_573" = call %Uint32 @_add_Uint32(%Uint32 %"$p6_571", %Uint32 %"$p7_i_572"), !dbg !104
  store %Uint32 %"$add_call_573", %Uint32* %"$expr_13", align 4, !dbg !104
  br label %"$matchsucc_344"

"$default_348":                                   ; preds = %"$Some_340"
  br label %"$joinp_7"

"$matchsucc_344":                                 ; preds = %"$have_gas_569"
  br label %"$matchsucc_295"

"$default_339":                                   ; preds = %"$have_gas_293"
  br label %"$joinp_7"

"$joinp_7":                                       ; preds = %"$default_348", %"$default_339"
  %"$gasrem_296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_297" = icmp ugt i64 1, %"$gasrem_296"
  br i1 %"$gascmp_297", label %"$out_of_gas_298", label %"$have_gas_299"

"$out_of_gas_298":                                ; preds = %"$joinp_7"
  call void @_out_of_gas()
  br label %"$have_gas_299"

"$have_gas_299":                                  ; preds = %"$out_of_gas_298", %"$joinp_7"
  %"$consume_300" = sub i64 %"$gasrem_296", 1
  store i64 %"$consume_300", i64* @_gasrem, align 8
  %p = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %p, metadata !105, metadata !DIExpression()), !dbg !107
  %"$gasrem_301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_302" = icmp ugt i64 1, %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %"$have_gas_299"
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %"$have_gas_299"
  %"$consume_305" = sub i64 %"$gasrem_301", 1
  store i64 %"$consume_305", i64* @_gasrem, align 8
  %"$execptr_load_306" = load i8*, i8** @_execptr, align 8
  %"$a1_307" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a1, align 8
  %"$$a1_307_308" = bitcast %Map_Uint32_Uint32* %"$a1_307" to i8*
  %"$contains_i0_309" = alloca %Uint32, align 8
  %"$i0_310" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_310", %Uint32* %"$contains_i0_309", align 4
  %"$$contains_i0_309_311" = bitcast %Uint32* %"$contains_i0_309" to i8*
  %"$contains_call_312" = call %TName_Bool* @_contains(i8* %"$execptr_load_306", %_TyDescrTy_Typ* @"$TyDescr_Map_55", i8* %"$$a1_307_308", i8* %"$$contains_i0_309_311"), !dbg !108
  store %TName_Bool* %"$contains_call_312", %TName_Bool** %p, align 8, !dbg !108
  %"$gasrem_314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_315" = icmp ugt i64 1, %"$gasrem_314"
  br i1 %"$gascmp_315", label %"$out_of_gas_316", label %"$have_gas_317"

"$out_of_gas_316":                                ; preds = %"$have_gas_304"
  call void @_out_of_gas()
  br label %"$have_gas_317"

"$have_gas_317":                                  ; preds = %"$out_of_gas_316", %"$have_gas_304"
  %"$consume_318" = sub i64 %"$gasrem_314", 1
  store i64 %"$consume_318", i64* @_gasrem, align 8
  %p1 = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %p1, metadata !109, metadata !DIExpression()), !dbg !110
  %"$gasrem_319" = load i64, i64* @_gasrem, align 8
  %"$gascmp_320" = icmp ugt i64 1, %"$gasrem_319"
  br i1 %"$gascmp_320", label %"$out_of_gas_321", label %"$have_gas_322"

"$out_of_gas_321":                                ; preds = %"$have_gas_317"
  call void @_out_of_gas()
  br label %"$have_gas_322"

"$have_gas_322":                                  ; preds = %"$out_of_gas_321", %"$have_gas_317"
  %"$consume_323" = sub i64 %"$gasrem_319", 1
  store i64 %"$consume_323", i64* @_gasrem, align 8
  %"$bool_to_uint_12" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$bool_to_uint_12", metadata !111, metadata !DIExpression()), !dbg !112
  %"$bool_to_uint_324" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_325" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_324", 0
  %"$bool_to_uint_envptr_326" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_324", 1
  %"$p_327" = load %TName_Bool*, %TName_Bool** %p, align 8
  %"$bool_to_uint_call_328" = call %Uint32 %"$bool_to_uint_fptr_325"(i8* %"$bool_to_uint_envptr_326", %TName_Bool* %"$p_327"), !dbg !112
  store %Uint32 %"$bool_to_uint_call_328", %Uint32* %"$bool_to_uint_12", align 4, !dbg !112
  %"$$bool_to_uint_12_329" = load %Uint32, %Uint32* %"$bool_to_uint_12", align 4
  store %Uint32 %"$$bool_to_uint_12_329", %Uint32* %p1, align 4, !dbg !112
  %"$gasrem_330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_331" = icmp ugt i64 1, %"$gasrem_330"
  br i1 %"$gascmp_331", label %"$out_of_gas_332", label %"$have_gas_333"

"$out_of_gas_332":                                ; preds = %"$have_gas_322"
  call void @_out_of_gas()
  br label %"$have_gas_333"

"$have_gas_333":                                  ; preds = %"$out_of_gas_332", %"$have_gas_322"
  %"$consume_334" = sub i64 %"$gasrem_330", 1
  store i64 %"$consume_334", i64* @_gasrem, align 8
  %"$p1_335" = load %Uint32, %Uint32* %p1, align 4
  store %Uint32 %"$p1_335", %Uint32* %"$expr_13", align 4, !dbg !113
  br label %"$matchsucc_295"

"$matchsucc_295":                                 ; preds = %"$matchsucc_344", %"$have_gas_333"
  %"$$expr_13_574" = load %Uint32, %Uint32* %"$expr_13", align 4
  ret %Uint32 %"$$expr_13_574"
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
  %"$exprval_575" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_576" = alloca %Uint32, align 8
  %"$memvoidcast_577" = bitcast %Uint32* %"$pval_576" to i8*
  store %Uint32 %"$exprval_575", %Uint32* %"$pval_576", align 4
  %"$execptr_load_578" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_578", %_TyDescrTy_Typ* @"$TyDescr_Uint32_20", i8* %"$memvoidcast_577")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_map.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_14", linkageName: "$fundef_14", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!7 = !{}
!8 = !DILocalVariable(name: "b", scope: !3, file: !2, line: 2, type: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !10, size: 8, align: 8, dwarfAddressSpace: 0)
!10 = !DIBasicType(name: "Bool", size: 8)
!11 = !DILocation(line: 2, column: 8, scope: !3)
!12 = !DILocalVariable(name: "$retval_15", scope: !3, file: !2, line: 3, type: !13)
!13 = !DIBasicType(name: "Uint32", size: 4)
!14 = !DILocation(line: 3, column: 5, scope: !3)
!15 = !DILocation(line: 4, column: 15, scope: !16)
!16 = distinct !DILexicalBlock(scope: !17, file: !2, line: 4, column: 7)
!17 = distinct !DILexicalBlock(scope: !3, file: !2, line: 3, column: 5)
!18 = !DILocation(line: 5, column: 16, scope: !19)
!19 = distinct !DILexicalBlock(scope: !17, file: !2, line: 5, column: 7)
!20 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !21, file: !21, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!21 = !DIFile(filename: ".", directory: ".")
!22 = !DILocation(line: 0, scope: !20)
!23 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !4, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !7)
!24 = !DILocalVariable(name: "$expr_13", scope: !23, file: !2, line: 2, type: !13)
!25 = !DILocation(line: 2, column: 3, scope: !23)
!26 = !DILocation(line: 3, column: 5, scope: !23)
!27 = !DILocalVariable(name: "i0", scope: !23, file: !2, line: 8, type: !13)
!28 = !DILocation(line: 8, column: 5, scope: !23)
!29 = !DILocation(line: 8, column: 10, scope: !23)
!30 = !DILocalVariable(name: "i1", scope: !23, file: !2, line: 9, type: !13)
!31 = !DILocation(line: 9, column: 5, scope: !23)
!32 = !DILocation(line: 9, column: 10, scope: !23)
!33 = !DILocalVariable(name: "a", scope: !23, file: !2, line: 10, type: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Map (Uint32) (Uint32)", baseType: !35, size: 8, align: 8, dwarfAddressSpace: 0)
!35 = !DIBasicType(name: "Map (Uint32) (Uint32)", size: 8)
!36 = !DILocation(line: 10, column: 5, scope: !23)
!37 = !DILocation(line: 10, column: 9, scope: !23)
!38 = !DILocalVariable(name: "a1", scope: !23, file: !2, line: 11, type: !34)
!39 = !DILocation(line: 11, column: 5, scope: !23)
!40 = !DILocation(line: 11, column: 10, scope: !23)
!41 = !DILocalVariable(name: "o", scope: !23, file: !2, line: 12, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (Map (Uint32) (Uint32))", baseType: !43, size: 8, align: 8, dwarfAddressSpace: 0)
!43 = !DIBasicType(name: "Option (Map (Uint32) (Uint32))", size: 8)
!44 = !DILocation(line: 12, column: 5, scope: !23)
!45 = !DILocation(line: 12, column: 9, scope: !23)
!46 = !DILocalVariable(name: "b", scope: !23, file: !2, line: 13, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Map (Uint32) (Option (Map (Uint32) (Uint32)))", baseType: !48, size: 8, align: 8, dwarfAddressSpace: 0)
!48 = !DIBasicType(name: "Map (Uint32) (Option (Map (Uint32) (Uint32)))", size: 8)
!49 = !DILocation(line: 13, column: 5, scope: !23)
!50 = !DILocation(line: 13, column: 9, scope: !23)
!51 = !DILocalVariable(name: "b1", scope: !23, file: !2, line: 14, type: !47)
!52 = !DILocation(line: 14, column: 5, scope: !23)
!53 = !DILocation(line: 14, column: 10, scope: !23)
!54 = !DILocalVariable(name: "res1", scope: !23, file: !2, line: 15, type: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (Option (Map (Uint32) (Uint32)))", baseType: !56, size: 8, align: 8, dwarfAddressSpace: 0)
!56 = !DIBasicType(name: "Option (Option (Map (Uint32) (Uint32)))", size: 8)
!57 = !DILocation(line: 15, column: 5, scope: !23)
!58 = !DILocation(line: 15, column: 12, scope: !23)
!59 = !DILocation(line: 16, column: 1, scope: !23)
!60 = !DILocation(line: 16, column: 1, scope: !61)
!61 = distinct !DILexicalBlock(scope: !62, file: !2, line: 17, column: 3)
!62 = distinct !DILexicalBlock(scope: !23, file: !2, line: 16, column: 1)
!63 = !DILocalVariable(name: "p1", scope: !64, file: !2, line: 18, type: !9)
!64 = distinct !DILexicalBlock(scope: !65, file: !2, line: 17, column: 9)
!65 = distinct !DILexicalBlock(scope: !61, file: !2, line: 16, column: 1)
!66 = !DILocation(line: 18, column: 7, scope: !64)
!67 = !DILocation(line: 18, column: 12, scope: !64)
!68 = !DILocalVariable(name: "p1_i", scope: !64, file: !2, line: 19, type: !13)
!69 = !DILocation(line: 19, column: 7, scope: !64)
!70 = !DILocalVariable(name: "$bool_to_uint_9", scope: !64, file: !2, line: 19, type: !13)
!71 = !DILocation(line: 19, column: 14, scope: !64)
!72 = !DILocalVariable(name: "p2", scope: !64, file: !2, line: 20, type: !9)
!73 = !DILocation(line: 20, column: 7, scope: !64)
!74 = !DILocation(line: 20, column: 12, scope: !64)
!75 = !DILocalVariable(name: "p2_i", scope: !64, file: !2, line: 21, type: !13)
!76 = !DILocation(line: 21, column: 7, scope: !64)
!77 = !DILocalVariable(name: "$bool_to_uint_10", scope: !64, file: !2, line: 21, type: !13)
!78 = !DILocation(line: 21, column: 14, scope: !64)
!79 = !DILocalVariable(name: "p3", scope: !64, file: !2, line: 22, type: !13)
!80 = !DILocation(line: 22, column: 7, scope: !64)
!81 = !DILocation(line: 22, column: 12, scope: !64)
!82 = !DILocalVariable(name: "a2", scope: !64, file: !2, line: 23, type: !34)
!83 = !DILocation(line: 23, column: 7, scope: !64)
!84 = !DILocation(line: 23, column: 12, scope: !64)
!85 = !DILocalVariable(name: "p5", scope: !64, file: !2, line: 24, type: !9)
!86 = !DILocation(line: 24, column: 7, scope: !64)
!87 = !DILocation(line: 24, column: 12, scope: !64)
!88 = !DILocalVariable(name: "p5_i", scope: !64, file: !2, line: 25, type: !13)
!89 = !DILocation(line: 25, column: 7, scope: !64)
!90 = !DILocalVariable(name: "$bool_to_uint_11", scope: !64, file: !2, line: 25, type: !13)
!91 = !DILocation(line: 25, column: 14, scope: !64)
!92 = !DILocalVariable(name: "p6", scope: !64, file: !2, line: 26, type: !13)
!93 = !DILocation(line: 26, column: 7, scope: !64)
!94 = !DILocation(line: 26, column: 12, scope: !64)
!95 = !DILocalVariable(name: "a3", scope: !64, file: !2, line: 27, type: !34)
!96 = !DILocation(line: 27, column: 7, scope: !64)
!97 = !DILocation(line: 27, column: 12, scope: !64)
!98 = !DILocalVariable(name: "a4", scope: !64, file: !2, line: 28, type: !34)
!99 = !DILocation(line: 28, column: 7, scope: !64)
!100 = !DILocation(line: 28, column: 12, scope: !64)
!101 = !DILocalVariable(name: "p7_i", scope: !64, file: !2, line: 29, type: !13)
!102 = !DILocation(line: 29, column: 7, scope: !64)
!103 = !DILocation(line: 29, column: 14, scope: !64)
!104 = !DILocation(line: 30, column: 3, scope: !64)
!105 = !DILocalVariable(name: "p", scope: !106, file: !2, line: 32, type: !9)
!106 = distinct !DILexicalBlock(scope: !62, file: !2, line: 16, column: 1)
!107 = !DILocation(line: 32, column: 7, scope: !106)
!108 = !DILocation(line: 32, column: 11, scope: !106)
!109 = !DILocalVariable(name: "p1", scope: !106, file: !2, line: 33, type: !13)
!110 = !DILocation(line: 33, column: 7, scope: !106)
!111 = !DILocalVariable(name: "$bool_to_uint_12", scope: !106, file: !2, line: 33, type: !13)
!112 = !DILocation(line: 33, column: 12, scope: !106)
!113 = !DILocation(line: 34, column: 3, scope: !106)
