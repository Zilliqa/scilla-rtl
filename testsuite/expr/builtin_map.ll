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
%"$TyDescrTy_ADTTyp_48" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_47"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_47" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_49"**, %"$TyDescrTy_ADTTyp_48"* }
%"$TyDescrTy_ADTTyp_Constr_49" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_MapTyp_53" = type { %_TyDescrTy_Typ*, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%"$ParamDescr_578" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_579" = type { %ParamDescrString, i32, %"$ParamDescr_578"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_578"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_579"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Uint32 @"$fundef_14"(%"$$fundef_14_env_93"* %0, %TName_Bool* %1) {
entry:
  %"$retval_15" = alloca %Uint32, align 8
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
  ]

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
  store %Uint32 { i32 1 }, %Uint32* %"$retval_15", align 4
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
  store %Uint32 zeroinitializer, %Uint32* %"$retval_15", align 4
  br label %"$matchsucc_99"

"$empty_default_102":                             ; preds = %"$have_gas_97"
  br label %"$matchsucc_99"

"$matchsucc_99":                                  ; preds = %"$have_gas_115", %"$have_gas_108", %"$empty_default_102"
  %"$$retval_15_117" = load %Uint32, %Uint32* %"$retval_15", align 4
  ret %Uint32 %"$$retval_15_117"
}

declare void @_out_of_gas()

define void @_init_libs() {
entry:
  %"$gasrem_118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_119" = icmp ugt i64 5, %"$gasrem_118"
  br i1 %"$gascmp_119", label %"$out_of_gas_120", label %"$have_gas_121"

"$out_of_gas_120":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_121"

"$have_gas_121":                                  ; preds = %"$out_of_gas_120", %entry
  %"$consume_122" = sub i64 %"$gasrem_118", 5
  store i64 %"$consume_122", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 8, %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %"$have_gas_121"
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %"$have_gas_121"
  %"$consume_127" = sub i64 %"$gasrem_123", 8
  store i64 %"$consume_127", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_129" = icmp ugt i64 196, %"$gasrem_128"
  br i1 %"$gascmp_129", label %"$out_of_gas_130", label %"$have_gas_131"

"$out_of_gas_130":                                ; preds = %"$have_gas_126"
  call void @_out_of_gas()
  br label %"$have_gas_131"

"$have_gas_131":                                  ; preds = %"$out_of_gas_130", %"$have_gas_126"
  %"$consume_132" = sub i64 %"$gasrem_128", 196
  store i64 %"$consume_132", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_134" = icmp ugt i64 20, %"$gasrem_133"
  br i1 %"$gascmp_134", label %"$out_of_gas_135", label %"$have_gas_136"

"$out_of_gas_135":                                ; preds = %"$have_gas_131"
  call void @_out_of_gas()
  br label %"$have_gas_136"

"$have_gas_136":                                  ; preds = %"$out_of_gas_135", %"$have_gas_131"
  %"$consume_137" = sub i64 %"$gasrem_133", 20
  store i64 %"$consume_137", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_139" = icmp ugt i64 12, %"$gasrem_138"
  br i1 %"$gascmp_139", label %"$out_of_gas_140", label %"$have_gas_141"

"$out_of_gas_140":                                ; preds = %"$have_gas_136"
  call void @_out_of_gas()
  br label %"$have_gas_141"

"$have_gas_141":                                  ; preds = %"$out_of_gas_140", %"$have_gas_136"
  %"$consume_142" = sub i64 %"$gasrem_138", 12
  store i64 %"$consume_142", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_143" = load i64, i64* @_gasrem, align 8
  %"$gascmp_144" = icmp ugt i64 2, %"$gasrem_143"
  br i1 %"$gascmp_144", label %"$out_of_gas_145", label %"$have_gas_146"

"$out_of_gas_145":                                ; preds = %"$have_gas_141"
  call void @_out_of_gas()
  br label %"$have_gas_146"

"$have_gas_146":                                  ; preds = %"$out_of_gas_145", %"$have_gas_141"
  %"$consume_147" = sub i64 %"$gasrem_143", 2
  store i64 %"$consume_147", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_13" = alloca %Uint32, align 8
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 1, %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %entry
  %"$consume_152" = sub i64 %"$gasrem_148", 1
  store i64 %"$consume_152", i64* @_gasrem, align 8
  %bool_to_uint = alloca { %Uint32 (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_153" = load i64, i64* @_gasrem, align 8
  %"$gascmp_154" = icmp ugt i64 1, %"$gasrem_153"
  br i1 %"$gascmp_154", label %"$out_of_gas_155", label %"$have_gas_156"

"$out_of_gas_155":                                ; preds = %"$have_gas_151"
  call void @_out_of_gas()
  br label %"$have_gas_156"

"$have_gas_156":                                  ; preds = %"$out_of_gas_155", %"$have_gas_151"
  %"$consume_157" = sub i64 %"$gasrem_153", 1
  store i64 %"$consume_157", i64* @_gasrem, align 8
  store { %Uint32 (i8*, %TName_Bool*)*, i8* } { %Uint32 (i8*, %TName_Bool*)* bitcast (%Uint32 (%"$$fundef_14_env_93"*, %TName_Bool*)* @"$fundef_14" to %Uint32 (i8*, %TName_Bool*)*), i8* null }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$gasrem_161" = load i64, i64* @_gasrem, align 8
  %"$gascmp_162" = icmp ugt i64 1, %"$gasrem_161"
  br i1 %"$gascmp_162", label %"$out_of_gas_163", label %"$have_gas_164"

"$out_of_gas_163":                                ; preds = %"$have_gas_156"
  call void @_out_of_gas()
  br label %"$have_gas_164"

"$have_gas_164":                                  ; preds = %"$out_of_gas_163", %"$have_gas_156"
  %"$consume_165" = sub i64 %"$gasrem_161", 1
  store i64 %"$consume_165", i64* @_gasrem, align 8
  %i0 = alloca %Uint32, align 8
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %"$have_gas_164"
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %"$have_gas_164"
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %i0, align 4
  %"$gasrem_171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_172" = icmp ugt i64 1, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %"$have_gas_169"
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %"$have_gas_169"
  %"$consume_175" = sub i64 %"$gasrem_171", 1
  store i64 %"$consume_175", i64* @_gasrem, align 8
  %i1 = alloca %Uint32, align 8
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 1, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %"$have_gas_174"
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %"$have_gas_174"
  %"$consume_180" = sub i64 %"$gasrem_176", 1
  store i64 %"$consume_180", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %i1, align 4
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 1, %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %"$have_gas_179"
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %"$have_gas_179"
  %"$consume_185" = sub i64 %"$gasrem_181", 1
  store i64 %"$consume_185", i64* @_gasrem, align 8
  %a = alloca %Map_Uint32_Uint32*, align 8
  %"$gasrem_186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_187" = icmp ugt i64 1, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %"$have_gas_184"
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %"$have_gas_184"
  %"$consume_190" = sub i64 %"$gasrem_186", 1
  store i64 %"$consume_190", i64* @_gasrem, align 8
  %"$execptr_load_191" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_192" = call i8* @_new_empty_map(i8* %"$execptr_load_191")
  %"$_new_empty_map_193" = bitcast i8* %"$_new_empty_map_call_192" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$_new_empty_map_193", %Map_Uint32_Uint32** %a, align 8
  %"$gasrem_194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_195" = icmp ugt i64 1, %"$gasrem_194"
  br i1 %"$gascmp_195", label %"$out_of_gas_196", label %"$have_gas_197"

"$out_of_gas_196":                                ; preds = %"$have_gas_189"
  call void @_out_of_gas()
  br label %"$have_gas_197"

"$have_gas_197":                                  ; preds = %"$out_of_gas_196", %"$have_gas_189"
  %"$consume_198" = sub i64 %"$gasrem_194", 1
  store i64 %"$consume_198", i64* @_gasrem, align 8
  %a1 = alloca %Map_Uint32_Uint32*, align 8
  %"$a_199" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a, align 8
  %"$$a_199_200" = bitcast %Map_Uint32_Uint32* %"$a_199" to i8*
  %"$_lengthof_call_201" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_55", i8* %"$$a_199_200")
  %"$gasadd_202" = add i64 1, %"$_lengthof_call_201"
  %"$gasrem_203" = load i64, i64* @_gasrem, align 8
  %"$gascmp_204" = icmp ugt i64 %"$gasadd_202", %"$gasrem_203"
  br i1 %"$gascmp_204", label %"$out_of_gas_205", label %"$have_gas_206"

"$out_of_gas_205":                                ; preds = %"$have_gas_197"
  call void @_out_of_gas()
  br label %"$have_gas_206"

"$have_gas_206":                                  ; preds = %"$out_of_gas_205", %"$have_gas_197"
  %"$consume_207" = sub i64 %"$gasrem_203", %"$gasadd_202"
  store i64 %"$consume_207", i64* @_gasrem, align 8
  %"$execptr_load_208" = load i8*, i8** @_execptr, align 8
  %"$a_209" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a, align 8
  %"$$a_209_210" = bitcast %Map_Uint32_Uint32* %"$a_209" to i8*
  %"$put_i0_211" = alloca %Uint32, align 8
  %"$i0_212" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_212", %Uint32* %"$put_i0_211", align 4
  %"$$put_i0_211_213" = bitcast %Uint32* %"$put_i0_211" to i8*
  %"$put_i1_214" = alloca %Uint32, align 8
  %"$i1_215" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_215", %Uint32* %"$put_i1_214", align 4
  %"$$put_i1_214_216" = bitcast %Uint32* %"$put_i1_214" to i8*
  %"$put_call_217" = call i8* @_put(i8* %"$execptr_load_208", %_TyDescrTy_Typ* @"$TyDescr_Map_55", i8* %"$$a_209_210", i8* %"$$put_i0_211_213", i8* %"$$put_i1_214_216")
  %"$put_218" = bitcast i8* %"$put_call_217" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$put_218", %Map_Uint32_Uint32** %a1, align 8
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 1, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %"$have_gas_206"
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %"$have_gas_206"
  %"$consume_223" = sub i64 %"$gasrem_219", 1
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %o = alloca %"TName_Option_Map_(Uint32)_(Uint32)"*, align 8
  %"$gasrem_224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_225" = icmp ugt i64 1, %"$gasrem_224"
  br i1 %"$gascmp_225", label %"$out_of_gas_226", label %"$have_gas_227"

"$out_of_gas_226":                                ; preds = %"$have_gas_222"
  call void @_out_of_gas()
  br label %"$have_gas_227"

"$have_gas_227":                                  ; preds = %"$out_of_gas_226", %"$have_gas_222"
  %"$consume_228" = sub i64 %"$gasrem_224", 1
  store i64 %"$consume_228", i64* @_gasrem, align 8
  %"$a1_229" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a1, align 8
  %"$adtval_230_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_230_salloc" = call i8* @_salloc(i8* %"$adtval_230_load", i64 9)
  %"$adtval_230" = bitcast i8* %"$adtval_230_salloc" to %"CName_Some_Map_(Uint32)_(Uint32)"*
  %"$adtgep_231" = getelementptr inbounds %"CName_Some_Map_(Uint32)_(Uint32)", %"CName_Some_Map_(Uint32)_(Uint32)"* %"$adtval_230", i32 0, i32 0
  store i8 0, i8* %"$adtgep_231", align 1
  %"$adtgep_232" = getelementptr inbounds %"CName_Some_Map_(Uint32)_(Uint32)", %"CName_Some_Map_(Uint32)_(Uint32)"* %"$adtval_230", i32 0, i32 1
  store %Map_Uint32_Uint32* %"$a1_229", %Map_Uint32_Uint32** %"$adtgep_232", align 8
  %"$adtptr_233" = bitcast %"CName_Some_Map_(Uint32)_(Uint32)"* %"$adtval_230" to %"TName_Option_Map_(Uint32)_(Uint32)"*
  store %"TName_Option_Map_(Uint32)_(Uint32)"* %"$adtptr_233", %"TName_Option_Map_(Uint32)_(Uint32)"** %o, align 8
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 1, %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %"$have_gas_227"
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %"$have_gas_227"
  %"$consume_238" = sub i64 %"$gasrem_234", 1
  store i64 %"$consume_238", i64* @_gasrem, align 8
  %b = alloca %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, align 8
  %"$gasrem_239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_240" = icmp ugt i64 1, %"$gasrem_239"
  br i1 %"$gascmp_240", label %"$out_of_gas_241", label %"$have_gas_242"

"$out_of_gas_241":                                ; preds = %"$have_gas_237"
  call void @_out_of_gas()
  br label %"$have_gas_242"

"$have_gas_242":                                  ; preds = %"$out_of_gas_241", %"$have_gas_237"
  %"$consume_243" = sub i64 %"$gasrem_239", 1
  store i64 %"$consume_243", i64* @_gasrem, align 8
  %"$execptr_load_244" = load i8*, i8** @_execptr, align 8
  %"$_new_empty_map_call_245" = call i8* @_new_empty_map(i8* %"$execptr_load_244")
  %"$_new_empty_map_246" = bitcast i8* %"$_new_empty_map_call_245" to %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*
  store %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$_new_empty_map_246", %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b, align 8
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 1, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %"$have_gas_242"
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %"$have_gas_242"
  %"$consume_251" = sub i64 %"$gasrem_247", 1
  store i64 %"$consume_251", i64* @_gasrem, align 8
  %b1 = alloca %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, align 8
  %"$b_252" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b, align 8
  %"$$b_252_253" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b_252" to i8*
  %"$_lengthof_call_254" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_54", i8* %"$$b_252_253")
  %"$gasadd_255" = add i64 1, %"$_lengthof_call_254"
  %"$gasrem_256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_257" = icmp ugt i64 %"$gasadd_255", %"$gasrem_256"
  br i1 %"$gascmp_257", label %"$out_of_gas_258", label %"$have_gas_259"

"$out_of_gas_258":                                ; preds = %"$have_gas_250"
  call void @_out_of_gas()
  br label %"$have_gas_259"

"$have_gas_259":                                  ; preds = %"$out_of_gas_258", %"$have_gas_250"
  %"$consume_260" = sub i64 %"$gasrem_256", %"$gasadd_255"
  store i64 %"$consume_260", i64* @_gasrem, align 8
  %"$execptr_load_261" = load i8*, i8** @_execptr, align 8
  %"$b_262" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b, align 8
  %"$$b_262_263" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b_262" to i8*
  %"$put_i1_264" = alloca %Uint32, align 8
  %"$i1_265" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_265", %Uint32* %"$put_i1_264", align 4
  %"$$put_i1_264_266" = bitcast %Uint32* %"$put_i1_264" to i8*
  %"$o_267" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %o, align 8
  %"$$o_267_268" = bitcast %"TName_Option_Map_(Uint32)_(Uint32)"* %"$o_267" to i8*
  %"$put_call_269" = call i8* @_put(i8* %"$execptr_load_261", %_TyDescrTy_Typ* @"$TyDescr_Map_54", i8* %"$$b_262_263", i8* %"$$put_i1_264_266", i8* %"$$o_267_268")
  %"$put_270" = bitcast i8* %"$put_call_269" to %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*
  store %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$put_270", %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1, align 8
  %"$gasrem_271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_272" = icmp ugt i64 1, %"$gasrem_271"
  br i1 %"$gascmp_272", label %"$out_of_gas_273", label %"$have_gas_274"

"$out_of_gas_273":                                ; preds = %"$have_gas_259"
  call void @_out_of_gas()
  br label %"$have_gas_274"

"$have_gas_274":                                  ; preds = %"$out_of_gas_273", %"$have_gas_259"
  %"$consume_275" = sub i64 %"$gasrem_271", 1
  store i64 %"$consume_275", i64* @_gasrem, align 8
  %res1 = alloca %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*, align 8
  %"$gasrem_276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_277" = icmp ugt i64 1, %"$gasrem_276"
  br i1 %"$gascmp_277", label %"$out_of_gas_278", label %"$have_gas_279"

"$out_of_gas_278":                                ; preds = %"$have_gas_274"
  call void @_out_of_gas()
  br label %"$have_gas_279"

"$have_gas_279":                                  ; preds = %"$out_of_gas_278", %"$have_gas_274"
  %"$consume_280" = sub i64 %"$gasrem_276", 1
  store i64 %"$consume_280", i64* @_gasrem, align 8
  %"$execptr_load_281" = load i8*, i8** @_execptr, align 8
  %"$b1_282" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1, align 8
  %"$$b1_282_283" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b1_282" to i8*
  %"$get_i1_284" = alloca %Uint32, align 8
  %"$i1_285" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_285", %Uint32* %"$get_i1_284", align 4
  %"$$get_i1_284_286" = bitcast %Uint32* %"$get_i1_284" to i8*
  %"$get_call_287" = call i8* @_get(i8* %"$execptr_load_281", %_TyDescrTy_Typ* @"$TyDescr_Map_54", i8* %"$$b1_282_283", i8* %"$$get_i1_284_286")
  %"$get_288" = bitcast i8* %"$get_call_287" to %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*
  store %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$get_288", %"TName_Option_Option_(Map_(Uint32)_(Uint32))"** %res1, align 8
  %"$gasrem_289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_290" = icmp ugt i64 2, %"$gasrem_289"
  br i1 %"$gascmp_290", label %"$out_of_gas_291", label %"$have_gas_292"

"$out_of_gas_291":                                ; preds = %"$have_gas_279"
  call void @_out_of_gas()
  br label %"$have_gas_292"

"$have_gas_292":                                  ; preds = %"$out_of_gas_291", %"$have_gas_279"
  %"$consume_293" = sub i64 %"$gasrem_289", 2
  store i64 %"$consume_293", i64* @_gasrem, align 8
  %"$res1_335" = load %"TName_Option_Option_(Map_(Uint32)_(Uint32))"*, %"TName_Option_Option_(Map_(Uint32)_(Uint32))"** %res1, align 8
  %"$res1_tag_336" = getelementptr inbounds %"TName_Option_Option_(Map_(Uint32)_(Uint32))", %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$res1_335", i32 0, i32 0
  %"$res1_tag_337" = load i8, i8* %"$res1_tag_336", align 1
  switch i8 %"$res1_tag_337", label %"$default_338" [
    i8 0, label %"$Some_339"
  ]

"$Some_339":                                      ; preds = %"$have_gas_292"
  %"$res1_340" = bitcast %"TName_Option_Option_(Map_(Uint32)_(Uint32))"* %"$res1_335" to %"CName_Some_Option_(Map_(Uint32)_(Uint32))"*
  %"$$res1_8_gep_341" = getelementptr inbounds %"CName_Some_Option_(Map_(Uint32)_(Uint32))", %"CName_Some_Option_(Map_(Uint32)_(Uint32))"* %"$res1_340", i32 0, i32 1
  %"$$res1_8_load_342" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %"$$res1_8_gep_341", align 8
  %"$res1_8" = alloca %"TName_Option_Map_(Uint32)_(Uint32)"*, align 8
  store %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_8_load_342", %"TName_Option_Map_(Uint32)_(Uint32)"** %"$res1_8", align 8
  %"$$res1_8_344" = load %"TName_Option_Map_(Uint32)_(Uint32)"*, %"TName_Option_Map_(Uint32)_(Uint32)"** %"$res1_8", align 8
  %"$$res1_8_tag_345" = getelementptr inbounds %"TName_Option_Map_(Uint32)_(Uint32)", %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_8_344", i32 0, i32 0
  %"$$res1_8_tag_346" = load i8, i8* %"$$res1_8_tag_345", align 1
  switch i8 %"$$res1_8_tag_346", label %"$default_347" [
    i8 0, label %"$Some_348"
  ]

"$Some_348":                                      ; preds = %"$Some_339"
  %"$$res1_8_349" = bitcast %"TName_Option_Map_(Uint32)_(Uint32)"* %"$$res1_8_344" to %"CName_Some_Map_(Uint32)_(Uint32)"*
  %"$$a1_6_gep_350" = getelementptr inbounds %"CName_Some_Map_(Uint32)_(Uint32)", %"CName_Some_Map_(Uint32)_(Uint32)"* %"$$res1_8_349", i32 0, i32 1
  %"$$a1_6_load_351" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$$a1_6_gep_350", align 8
  %"$a1_6" = alloca %Map_Uint32_Uint32*, align 8
  store %Map_Uint32_Uint32* %"$$a1_6_load_351", %Map_Uint32_Uint32** %"$a1_6", align 8
  %"$gasrem_352" = load i64, i64* @_gasrem, align 8
  %"$gascmp_353" = icmp ugt i64 1, %"$gasrem_352"
  br i1 %"$gascmp_353", label %"$out_of_gas_354", label %"$have_gas_355"

"$out_of_gas_354":                                ; preds = %"$Some_348"
  call void @_out_of_gas()
  br label %"$have_gas_355"

"$have_gas_355":                                  ; preds = %"$out_of_gas_354", %"$Some_348"
  %"$consume_356" = sub i64 %"$gasrem_352", 1
  store i64 %"$consume_356", i64* @_gasrem, align 8
  %p11 = alloca %TName_Bool*, align 8
  %"$gasrem_357" = load i64, i64* @_gasrem, align 8
  %"$gascmp_358" = icmp ugt i64 1, %"$gasrem_357"
  br i1 %"$gascmp_358", label %"$out_of_gas_359", label %"$have_gas_360"

"$out_of_gas_359":                                ; preds = %"$have_gas_355"
  call void @_out_of_gas()
  br label %"$have_gas_360"

"$have_gas_360":                                  ; preds = %"$out_of_gas_359", %"$have_gas_355"
  %"$consume_361" = sub i64 %"$gasrem_357", 1
  store i64 %"$consume_361", i64* @_gasrem, align 8
  %"$execptr_load_362" = load i8*, i8** @_execptr, align 8
  %"$b1_363" = load %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"*, %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"** %b1, align 8
  %"$$b1_363_364" = bitcast %"Map_Uint32_Option_(Map_(Uint32)_(Uint32))"* %"$b1_363" to i8*
  %"$contains_i1_365" = alloca %Uint32, align 8
  %"$i1_366" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_366", %Uint32* %"$contains_i1_365", align 4
  %"$$contains_i1_365_367" = bitcast %Uint32* %"$contains_i1_365" to i8*
  %"$contains_call_368" = call %TName_Bool* @_contains(i8* %"$execptr_load_362", %_TyDescrTy_Typ* @"$TyDescr_Map_54", i8* %"$$b1_363_364", i8* %"$$contains_i1_365_367")
  store %TName_Bool* %"$contains_call_368", %TName_Bool** %p11, align 8
  %"$gasrem_370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_371" = icmp ugt i64 1, %"$gasrem_370"
  br i1 %"$gascmp_371", label %"$out_of_gas_372", label %"$have_gas_373"

"$out_of_gas_372":                                ; preds = %"$have_gas_360"
  call void @_out_of_gas()
  br label %"$have_gas_373"

"$have_gas_373":                                  ; preds = %"$out_of_gas_372", %"$have_gas_360"
  %"$consume_374" = sub i64 %"$gasrem_370", 1
  store i64 %"$consume_374", i64* @_gasrem, align 8
  %p1_i = alloca %Uint32, align 8
  %"$gasrem_375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_376" = icmp ugt i64 1, %"$gasrem_375"
  br i1 %"$gascmp_376", label %"$out_of_gas_377", label %"$have_gas_378"

"$out_of_gas_377":                                ; preds = %"$have_gas_373"
  call void @_out_of_gas()
  br label %"$have_gas_378"

"$have_gas_378":                                  ; preds = %"$out_of_gas_377", %"$have_gas_373"
  %"$consume_379" = sub i64 %"$gasrem_375", 1
  store i64 %"$consume_379", i64* @_gasrem, align 8
  %"$bool_to_uint_9" = alloca %Uint32, align 8
  %"$bool_to_uint_380" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_381" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_380", 0
  %"$bool_to_uint_envptr_382" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_380", 1
  %"$p1_383" = load %TName_Bool*, %TName_Bool** %p11, align 8
  %"$bool_to_uint_call_384" = call %Uint32 %"$bool_to_uint_fptr_381"(i8* %"$bool_to_uint_envptr_382", %TName_Bool* %"$p1_383")
  store %Uint32 %"$bool_to_uint_call_384", %Uint32* %"$bool_to_uint_9", align 4
  %"$$bool_to_uint_9_385" = load %Uint32, %Uint32* %"$bool_to_uint_9", align 4
  store %Uint32 %"$$bool_to_uint_9_385", %Uint32* %p1_i, align 4
  %"$gasrem_386" = load i64, i64* @_gasrem, align 8
  %"$gascmp_387" = icmp ugt i64 1, %"$gasrem_386"
  br i1 %"$gascmp_387", label %"$out_of_gas_388", label %"$have_gas_389"

"$out_of_gas_388":                                ; preds = %"$have_gas_378"
  call void @_out_of_gas()
  br label %"$have_gas_389"

"$have_gas_389":                                  ; preds = %"$out_of_gas_388", %"$have_gas_378"
  %"$consume_390" = sub i64 %"$gasrem_386", 1
  store i64 %"$consume_390", i64* @_gasrem, align 8
  %p2 = alloca %TName_Bool*, align 8
  %"$gasrem_391" = load i64, i64* @_gasrem, align 8
  %"$gascmp_392" = icmp ugt i64 1, %"$gasrem_391"
  br i1 %"$gascmp_392", label %"$out_of_gas_393", label %"$have_gas_394"

"$out_of_gas_393":                                ; preds = %"$have_gas_389"
  call void @_out_of_gas()
  br label %"$have_gas_394"

"$have_gas_394":                                  ; preds = %"$out_of_gas_393", %"$have_gas_389"
  %"$consume_395" = sub i64 %"$gasrem_391", 1
  store i64 %"$consume_395", i64* @_gasrem, align 8
  %"$execptr_load_396" = load i8*, i8** @_execptr, align 8
  %"$$a1_6_397" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_6", align 8
  %"$$$a1_6_397_398" = bitcast %Map_Uint32_Uint32* %"$$a1_6_397" to i8*
  %"$contains_i0_399" = alloca %Uint32, align 8
  %"$i0_400" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_400", %Uint32* %"$contains_i0_399", align 4
  %"$$contains_i0_399_401" = bitcast %Uint32* %"$contains_i0_399" to i8*
  %"$contains_call_402" = call %TName_Bool* @_contains(i8* %"$execptr_load_396", %_TyDescrTy_Typ* @"$TyDescr_Map_55", i8* %"$$$a1_6_397_398", i8* %"$$contains_i0_399_401")
  store %TName_Bool* %"$contains_call_402", %TName_Bool** %p2, align 8
  %"$gasrem_404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_405" = icmp ugt i64 1, %"$gasrem_404"
  br i1 %"$gascmp_405", label %"$out_of_gas_406", label %"$have_gas_407"

"$out_of_gas_406":                                ; preds = %"$have_gas_394"
  call void @_out_of_gas()
  br label %"$have_gas_407"

"$have_gas_407":                                  ; preds = %"$out_of_gas_406", %"$have_gas_394"
  %"$consume_408" = sub i64 %"$gasrem_404", 1
  store i64 %"$consume_408", i64* @_gasrem, align 8
  %p2_i = alloca %Uint32, align 8
  %"$gasrem_409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_410" = icmp ugt i64 1, %"$gasrem_409"
  br i1 %"$gascmp_410", label %"$out_of_gas_411", label %"$have_gas_412"

"$out_of_gas_411":                                ; preds = %"$have_gas_407"
  call void @_out_of_gas()
  br label %"$have_gas_412"

"$have_gas_412":                                  ; preds = %"$out_of_gas_411", %"$have_gas_407"
  %"$consume_413" = sub i64 %"$gasrem_409", 1
  store i64 %"$consume_413", i64* @_gasrem, align 8
  %"$bool_to_uint_10" = alloca %Uint32, align 8
  %"$bool_to_uint_414" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_415" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_414", 0
  %"$bool_to_uint_envptr_416" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_414", 1
  %"$p2_417" = load %TName_Bool*, %TName_Bool** %p2, align 8
  %"$bool_to_uint_call_418" = call %Uint32 %"$bool_to_uint_fptr_415"(i8* %"$bool_to_uint_envptr_416", %TName_Bool* %"$p2_417")
  store %Uint32 %"$bool_to_uint_call_418", %Uint32* %"$bool_to_uint_10", align 4
  %"$$bool_to_uint_10_419" = load %Uint32, %Uint32* %"$bool_to_uint_10", align 4
  store %Uint32 %"$$bool_to_uint_10_419", %Uint32* %p2_i, align 4
  %"$gasrem_420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_421" = icmp ugt i64 1, %"$gasrem_420"
  br i1 %"$gascmp_421", label %"$out_of_gas_422", label %"$have_gas_423"

"$out_of_gas_422":                                ; preds = %"$have_gas_412"
  call void @_out_of_gas()
  br label %"$have_gas_423"

"$have_gas_423":                                  ; preds = %"$out_of_gas_422", %"$have_gas_412"
  %"$consume_424" = sub i64 %"$gasrem_420", 1
  store i64 %"$consume_424", i64* @_gasrem, align 8
  %p3 = alloca %Uint32, align 8
  %"$gasrem_425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_426" = icmp ugt i64 4, %"$gasrem_425"
  br i1 %"$gascmp_426", label %"$out_of_gas_427", label %"$have_gas_428"

"$out_of_gas_427":                                ; preds = %"$have_gas_423"
  call void @_out_of_gas()
  br label %"$have_gas_428"

"$have_gas_428":                                  ; preds = %"$out_of_gas_427", %"$have_gas_423"
  %"$consume_429" = sub i64 %"$gasrem_425", 4
  store i64 %"$consume_429", i64* @_gasrem, align 8
  %"$p1_i_430" = load %Uint32, %Uint32* %p1_i, align 4
  %"$p2_i_431" = load %Uint32, %Uint32* %p2_i, align 4
  %"$add_call_432" = call %Uint32 @_add_Uint32(%Uint32 %"$p1_i_430", %Uint32 %"$p2_i_431")
  store %Uint32 %"$add_call_432", %Uint32* %p3, align 4
  %"$gasrem_433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_434" = icmp ugt i64 1, %"$gasrem_433"
  br i1 %"$gascmp_434", label %"$out_of_gas_435", label %"$have_gas_436"

"$out_of_gas_435":                                ; preds = %"$have_gas_428"
  call void @_out_of_gas()
  br label %"$have_gas_436"

"$have_gas_436":                                  ; preds = %"$out_of_gas_435", %"$have_gas_428"
  %"$consume_437" = sub i64 %"$gasrem_433", 1
  store i64 %"$consume_437", i64* @_gasrem, align 8
  %a2 = alloca %Map_Uint32_Uint32*, align 8
  %"$$a1_6_438" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_6", align 8
  %"$$$a1_6_438_439" = bitcast %Map_Uint32_Uint32* %"$$a1_6_438" to i8*
  %"$_lengthof_call_440" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_55", i8* %"$$$a1_6_438_439")
  %"$gasadd_441" = add i64 1, %"$_lengthof_call_440"
  %"$gasrem_442" = load i64, i64* @_gasrem, align 8
  %"$gascmp_443" = icmp ugt i64 %"$gasadd_441", %"$gasrem_442"
  br i1 %"$gascmp_443", label %"$out_of_gas_444", label %"$have_gas_445"

"$out_of_gas_444":                                ; preds = %"$have_gas_436"
  call void @_out_of_gas()
  br label %"$have_gas_445"

"$have_gas_445":                                  ; preds = %"$out_of_gas_444", %"$have_gas_436"
  %"$consume_446" = sub i64 %"$gasrem_442", %"$gasadd_441"
  store i64 %"$consume_446", i64* @_gasrem, align 8
  %"$execptr_load_447" = load i8*, i8** @_execptr, align 8
  %"$$a1_6_448" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_6", align 8
  %"$$$a1_6_448_449" = bitcast %Map_Uint32_Uint32* %"$$a1_6_448" to i8*
  %"$remove_i1_450" = alloca %Uint32, align 8
  %"$i1_451" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_451", %Uint32* %"$remove_i1_450", align 4
  %"$$remove_i1_450_452" = bitcast %Uint32* %"$remove_i1_450" to i8*
  %"$remove_call_453" = call i8* @_remove(i8* %"$execptr_load_447", %_TyDescrTy_Typ* @"$TyDescr_Map_55", i8* %"$$$a1_6_448_449", i8* %"$$remove_i1_450_452")
  %"$remove_454" = bitcast i8* %"$remove_call_453" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$remove_454", %Map_Uint32_Uint32** %a2, align 8
  %"$gasrem_455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_456" = icmp ugt i64 1, %"$gasrem_455"
  br i1 %"$gascmp_456", label %"$out_of_gas_457", label %"$have_gas_458"

"$out_of_gas_457":                                ; preds = %"$have_gas_445"
  call void @_out_of_gas()
  br label %"$have_gas_458"

"$have_gas_458":                                  ; preds = %"$out_of_gas_457", %"$have_gas_445"
  %"$consume_459" = sub i64 %"$gasrem_455", 1
  store i64 %"$consume_459", i64* @_gasrem, align 8
  %p5 = alloca %TName_Bool*, align 8
  %"$gasrem_460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_461" = icmp ugt i64 1, %"$gasrem_460"
  br i1 %"$gascmp_461", label %"$out_of_gas_462", label %"$have_gas_463"

"$out_of_gas_462":                                ; preds = %"$have_gas_458"
  call void @_out_of_gas()
  br label %"$have_gas_463"

"$have_gas_463":                                  ; preds = %"$out_of_gas_462", %"$have_gas_458"
  %"$consume_464" = sub i64 %"$gasrem_460", 1
  store i64 %"$consume_464", i64* @_gasrem, align 8
  %"$execptr_load_465" = load i8*, i8** @_execptr, align 8
  %"$a2_466" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a2, align 8
  %"$$a2_466_467" = bitcast %Map_Uint32_Uint32* %"$a2_466" to i8*
  %"$contains_i0_468" = alloca %Uint32, align 8
  %"$i0_469" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_469", %Uint32* %"$contains_i0_468", align 4
  %"$$contains_i0_468_470" = bitcast %Uint32* %"$contains_i0_468" to i8*
  %"$contains_call_471" = call %TName_Bool* @_contains(i8* %"$execptr_load_465", %_TyDescrTy_Typ* @"$TyDescr_Map_55", i8* %"$$a2_466_467", i8* %"$$contains_i0_468_470")
  store %TName_Bool* %"$contains_call_471", %TName_Bool** %p5, align 8
  %"$gasrem_473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_474" = icmp ugt i64 1, %"$gasrem_473"
  br i1 %"$gascmp_474", label %"$out_of_gas_475", label %"$have_gas_476"

"$out_of_gas_475":                                ; preds = %"$have_gas_463"
  call void @_out_of_gas()
  br label %"$have_gas_476"

"$have_gas_476":                                  ; preds = %"$out_of_gas_475", %"$have_gas_463"
  %"$consume_477" = sub i64 %"$gasrem_473", 1
  store i64 %"$consume_477", i64* @_gasrem, align 8
  %p5_i = alloca %Uint32, align 8
  %"$gasrem_478" = load i64, i64* @_gasrem, align 8
  %"$gascmp_479" = icmp ugt i64 1, %"$gasrem_478"
  br i1 %"$gascmp_479", label %"$out_of_gas_480", label %"$have_gas_481"

"$out_of_gas_480":                                ; preds = %"$have_gas_476"
  call void @_out_of_gas()
  br label %"$have_gas_481"

"$have_gas_481":                                  ; preds = %"$out_of_gas_480", %"$have_gas_476"
  %"$consume_482" = sub i64 %"$gasrem_478", 1
  store i64 %"$consume_482", i64* @_gasrem, align 8
  %"$bool_to_uint_11" = alloca %Uint32, align 8
  %"$bool_to_uint_483" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_484" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_483", 0
  %"$bool_to_uint_envptr_485" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_483", 1
  %"$p5_486" = load %TName_Bool*, %TName_Bool** %p5, align 8
  %"$bool_to_uint_call_487" = call %Uint32 %"$bool_to_uint_fptr_484"(i8* %"$bool_to_uint_envptr_485", %TName_Bool* %"$p5_486")
  store %Uint32 %"$bool_to_uint_call_487", %Uint32* %"$bool_to_uint_11", align 4
  %"$$bool_to_uint_11_488" = load %Uint32, %Uint32* %"$bool_to_uint_11", align 4
  store %Uint32 %"$$bool_to_uint_11_488", %Uint32* %p5_i, align 4
  %"$gasrem_489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_490" = icmp ugt i64 1, %"$gasrem_489"
  br i1 %"$gascmp_490", label %"$out_of_gas_491", label %"$have_gas_492"

"$out_of_gas_491":                                ; preds = %"$have_gas_481"
  call void @_out_of_gas()
  br label %"$have_gas_492"

"$have_gas_492":                                  ; preds = %"$out_of_gas_491", %"$have_gas_481"
  %"$consume_493" = sub i64 %"$gasrem_489", 1
  store i64 %"$consume_493", i64* @_gasrem, align 8
  %p6 = alloca %Uint32, align 8
  %"$gasrem_494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_495" = icmp ugt i64 4, %"$gasrem_494"
  br i1 %"$gascmp_495", label %"$out_of_gas_496", label %"$have_gas_497"

"$out_of_gas_496":                                ; preds = %"$have_gas_492"
  call void @_out_of_gas()
  br label %"$have_gas_497"

"$have_gas_497":                                  ; preds = %"$out_of_gas_496", %"$have_gas_492"
  %"$consume_498" = sub i64 %"$gasrem_494", 4
  store i64 %"$consume_498", i64* @_gasrem, align 8
  %"$p3_499" = load %Uint32, %Uint32* %p3, align 4
  %"$p5_i_500" = load %Uint32, %Uint32* %p5_i, align 4
  %"$add_call_501" = call %Uint32 @_add_Uint32(%Uint32 %"$p3_499", %Uint32 %"$p5_i_500")
  store %Uint32 %"$add_call_501", %Uint32* %p6, align 4
  %"$gasrem_502" = load i64, i64* @_gasrem, align 8
  %"$gascmp_503" = icmp ugt i64 1, %"$gasrem_502"
  br i1 %"$gascmp_503", label %"$out_of_gas_504", label %"$have_gas_505"

"$out_of_gas_504":                                ; preds = %"$have_gas_497"
  call void @_out_of_gas()
  br label %"$have_gas_505"

"$have_gas_505":                                  ; preds = %"$out_of_gas_504", %"$have_gas_497"
  %"$consume_506" = sub i64 %"$gasrem_502", 1
  store i64 %"$consume_506", i64* @_gasrem, align 8
  %a3 = alloca %Map_Uint32_Uint32*, align 8
  %"$$a1_6_507" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_6", align 8
  %"$$$a1_6_507_508" = bitcast %Map_Uint32_Uint32* %"$$a1_6_507" to i8*
  %"$_lengthof_call_509" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_55", i8* %"$$$a1_6_507_508")
  %"$gasadd_510" = add i64 1, %"$_lengthof_call_509"
  %"$gasrem_511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_512" = icmp ugt i64 %"$gasadd_510", %"$gasrem_511"
  br i1 %"$gascmp_512", label %"$out_of_gas_513", label %"$have_gas_514"

"$out_of_gas_513":                                ; preds = %"$have_gas_505"
  call void @_out_of_gas()
  br label %"$have_gas_514"

"$have_gas_514":                                  ; preds = %"$out_of_gas_513", %"$have_gas_505"
  %"$consume_515" = sub i64 %"$gasrem_511", %"$gasadd_510"
  store i64 %"$consume_515", i64* @_gasrem, align 8
  %"$execptr_load_516" = load i8*, i8** @_execptr, align 8
  %"$$a1_6_517" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %"$a1_6", align 8
  %"$$$a1_6_517_518" = bitcast %Map_Uint32_Uint32* %"$$a1_6_517" to i8*
  %"$put_i1_519" = alloca %Uint32, align 8
  %"$i1_520" = load %Uint32, %Uint32* %i1, align 4
  store %Uint32 %"$i1_520", %Uint32* %"$put_i1_519", align 4
  %"$$put_i1_519_521" = bitcast %Uint32* %"$put_i1_519" to i8*
  %"$put_i0_522" = alloca %Uint32, align 8
  %"$i0_523" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_523", %Uint32* %"$put_i0_522", align 4
  %"$$put_i0_522_524" = bitcast %Uint32* %"$put_i0_522" to i8*
  %"$put_call_525" = call i8* @_put(i8* %"$execptr_load_516", %_TyDescrTy_Typ* @"$TyDescr_Map_55", i8* %"$$$a1_6_517_518", i8* %"$$put_i1_519_521", i8* %"$$put_i0_522_524")
  %"$put_526" = bitcast i8* %"$put_call_525" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$put_526", %Map_Uint32_Uint32** %a3, align 8
  %"$gasrem_527" = load i64, i64* @_gasrem, align 8
  %"$gascmp_528" = icmp ugt i64 1, %"$gasrem_527"
  br i1 %"$gascmp_528", label %"$out_of_gas_529", label %"$have_gas_530"

"$out_of_gas_529":                                ; preds = %"$have_gas_514"
  call void @_out_of_gas()
  br label %"$have_gas_530"

"$have_gas_530":                                  ; preds = %"$out_of_gas_529", %"$have_gas_514"
  %"$consume_531" = sub i64 %"$gasrem_527", 1
  store i64 %"$consume_531", i64* @_gasrem, align 8
  %a4 = alloca %Map_Uint32_Uint32*, align 8
  %"$a3_532" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a3, align 8
  %"$$a3_532_533" = bitcast %Map_Uint32_Uint32* %"$a3_532" to i8*
  %"$_lengthof_call_534" = call i64 @_lengthof(%_TyDescrTy_Typ* @"$TyDescr_Map_55", i8* %"$$a3_532_533")
  %"$gasadd_535" = add i64 1, %"$_lengthof_call_534"
  %"$gasrem_536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_537" = icmp ugt i64 %"$gasadd_535", %"$gasrem_536"
  br i1 %"$gascmp_537", label %"$out_of_gas_538", label %"$have_gas_539"

"$out_of_gas_538":                                ; preds = %"$have_gas_530"
  call void @_out_of_gas()
  br label %"$have_gas_539"

"$have_gas_539":                                  ; preds = %"$out_of_gas_538", %"$have_gas_530"
  %"$consume_540" = sub i64 %"$gasrem_536", %"$gasadd_535"
  store i64 %"$consume_540", i64* @_gasrem, align 8
  %"$execptr_load_541" = load i8*, i8** @_execptr, align 8
  %"$a3_542" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a3, align 8
  %"$$a3_542_543" = bitcast %Map_Uint32_Uint32* %"$a3_542" to i8*
  %"$put_p6_544" = alloca %Uint32, align 8
  %"$p6_545" = load %Uint32, %Uint32* %p6, align 4
  store %Uint32 %"$p6_545", %Uint32* %"$put_p6_544", align 4
  %"$$put_p6_544_546" = bitcast %Uint32* %"$put_p6_544" to i8*
  %"$put_p3_547" = alloca %Uint32, align 8
  %"$p3_548" = load %Uint32, %Uint32* %p3, align 4
  store %Uint32 %"$p3_548", %Uint32* %"$put_p3_547", align 4
  %"$$put_p3_547_549" = bitcast %Uint32* %"$put_p3_547" to i8*
  %"$put_call_550" = call i8* @_put(i8* %"$execptr_load_541", %_TyDescrTy_Typ* @"$TyDescr_Map_55", i8* %"$$a3_542_543", i8* %"$$put_p6_544_546", i8* %"$$put_p3_547_549")
  %"$put_551" = bitcast i8* %"$put_call_550" to %Map_Uint32_Uint32*
  store %Map_Uint32_Uint32* %"$put_551", %Map_Uint32_Uint32** %a4, align 8
  %"$gasrem_552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_553" = icmp ugt i64 1, %"$gasrem_552"
  br i1 %"$gascmp_553", label %"$out_of_gas_554", label %"$have_gas_555"

"$out_of_gas_554":                                ; preds = %"$have_gas_539"
  call void @_out_of_gas()
  br label %"$have_gas_555"

"$have_gas_555":                                  ; preds = %"$out_of_gas_554", %"$have_gas_539"
  %"$consume_556" = sub i64 %"$gasrem_552", 1
  store i64 %"$consume_556", i64* @_gasrem, align 8
  %p7_i = alloca %Uint32, align 8
  %"$gasrem_557" = load i64, i64* @_gasrem, align 8
  %"$gascmp_558" = icmp ugt i64 1, %"$gasrem_557"
  br i1 %"$gascmp_558", label %"$out_of_gas_559", label %"$have_gas_560"

"$out_of_gas_559":                                ; preds = %"$have_gas_555"
  call void @_out_of_gas()
  br label %"$have_gas_560"

"$have_gas_560":                                  ; preds = %"$out_of_gas_559", %"$have_gas_555"
  %"$consume_561" = sub i64 %"$gasrem_557", 1
  store i64 %"$consume_561", i64* @_gasrem, align 8
  %"$a4_562" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a4, align 8
  %"$$a4_562_563" = bitcast %Map_Uint32_Uint32* %"$a4_562" to i8*
  %"$size_call_564" = call %Uint32 @_size(i8* %"$$a4_562_563")
  store %Uint32 %"$size_call_564", %Uint32* %p7_i, align 4
  %"$gasrem_565" = load i64, i64* @_gasrem, align 8
  %"$gascmp_566" = icmp ugt i64 4, %"$gasrem_565"
  br i1 %"$gascmp_566", label %"$out_of_gas_567", label %"$have_gas_568"

"$out_of_gas_567":                                ; preds = %"$have_gas_560"
  call void @_out_of_gas()
  br label %"$have_gas_568"

"$have_gas_568":                                  ; preds = %"$out_of_gas_567", %"$have_gas_560"
  %"$consume_569" = sub i64 %"$gasrem_565", 4
  store i64 %"$consume_569", i64* @_gasrem, align 8
  %"$p6_570" = load %Uint32, %Uint32* %p6, align 4
  %"$p7_i_571" = load %Uint32, %Uint32* %p7_i, align 4
  %"$add_call_572" = call %Uint32 @_add_Uint32(%Uint32 %"$p6_570", %Uint32 %"$p7_i_571")
  store %Uint32 %"$add_call_572", %Uint32* %"$expr_13", align 4
  br label %"$matchsucc_343"

"$default_347":                                   ; preds = %"$Some_339"
  br label %"$joinp_7"

"$matchsucc_343":                                 ; preds = %"$have_gas_568"
  br label %"$matchsucc_294"

"$default_338":                                   ; preds = %"$have_gas_292"
  br label %"$joinp_7"

"$joinp_7":                                       ; preds = %"$default_347", %"$default_338"
  %"$gasrem_295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_296" = icmp ugt i64 1, %"$gasrem_295"
  br i1 %"$gascmp_296", label %"$out_of_gas_297", label %"$have_gas_298"

"$out_of_gas_297":                                ; preds = %"$joinp_7"
  call void @_out_of_gas()
  br label %"$have_gas_298"

"$have_gas_298":                                  ; preds = %"$out_of_gas_297", %"$joinp_7"
  %"$consume_299" = sub i64 %"$gasrem_295", 1
  store i64 %"$consume_299", i64* @_gasrem, align 8
  %p = alloca %TName_Bool*, align 8
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %"$have_gas_298"
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %"$have_gas_298"
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem, align 8
  %"$execptr_load_305" = load i8*, i8** @_execptr, align 8
  %"$a1_306" = load %Map_Uint32_Uint32*, %Map_Uint32_Uint32** %a1, align 8
  %"$$a1_306_307" = bitcast %Map_Uint32_Uint32* %"$a1_306" to i8*
  %"$contains_i0_308" = alloca %Uint32, align 8
  %"$i0_309" = load %Uint32, %Uint32* %i0, align 4
  store %Uint32 %"$i0_309", %Uint32* %"$contains_i0_308", align 4
  %"$$contains_i0_308_310" = bitcast %Uint32* %"$contains_i0_308" to i8*
  %"$contains_call_311" = call %TName_Bool* @_contains(i8* %"$execptr_load_305", %_TyDescrTy_Typ* @"$TyDescr_Map_55", i8* %"$$a1_306_307", i8* %"$$contains_i0_308_310")
  store %TName_Bool* %"$contains_call_311", %TName_Bool** %p, align 8
  %"$gasrem_313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_314" = icmp ugt i64 1, %"$gasrem_313"
  br i1 %"$gascmp_314", label %"$out_of_gas_315", label %"$have_gas_316"

"$out_of_gas_315":                                ; preds = %"$have_gas_303"
  call void @_out_of_gas()
  br label %"$have_gas_316"

"$have_gas_316":                                  ; preds = %"$out_of_gas_315", %"$have_gas_303"
  %"$consume_317" = sub i64 %"$gasrem_313", 1
  store i64 %"$consume_317", i64* @_gasrem, align 8
  %p1 = alloca %Uint32, align 8
  %"$gasrem_318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_319" = icmp ugt i64 1, %"$gasrem_318"
  br i1 %"$gascmp_319", label %"$out_of_gas_320", label %"$have_gas_321"

"$out_of_gas_320":                                ; preds = %"$have_gas_316"
  call void @_out_of_gas()
  br label %"$have_gas_321"

"$have_gas_321":                                  ; preds = %"$out_of_gas_320", %"$have_gas_316"
  %"$consume_322" = sub i64 %"$gasrem_318", 1
  store i64 %"$consume_322", i64* @_gasrem, align 8
  %"$bool_to_uint_12" = alloca %Uint32, align 8
  %"$bool_to_uint_323" = load { %Uint32 (i8*, %TName_Bool*)*, i8* }, { %Uint32 (i8*, %TName_Bool*)*, i8* }* %bool_to_uint, align 8
  %"$bool_to_uint_fptr_324" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_323", 0
  %"$bool_to_uint_envptr_325" = extractvalue { %Uint32 (i8*, %TName_Bool*)*, i8* } %"$bool_to_uint_323", 1
  %"$p_326" = load %TName_Bool*, %TName_Bool** %p, align 8
  %"$bool_to_uint_call_327" = call %Uint32 %"$bool_to_uint_fptr_324"(i8* %"$bool_to_uint_envptr_325", %TName_Bool* %"$p_326")
  store %Uint32 %"$bool_to_uint_call_327", %Uint32* %"$bool_to_uint_12", align 4
  %"$$bool_to_uint_12_328" = load %Uint32, %Uint32* %"$bool_to_uint_12", align 4
  store %Uint32 %"$$bool_to_uint_12_328", %Uint32* %p1, align 4
  %"$gasrem_329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_330" = icmp ugt i64 1, %"$gasrem_329"
  br i1 %"$gascmp_330", label %"$out_of_gas_331", label %"$have_gas_332"

"$out_of_gas_331":                                ; preds = %"$have_gas_321"
  call void @_out_of_gas()
  br label %"$have_gas_332"

"$have_gas_332":                                  ; preds = %"$out_of_gas_331", %"$have_gas_321"
  %"$consume_333" = sub i64 %"$gasrem_329", 1
  store i64 %"$consume_333", i64* @_gasrem, align 8
  %"$p1_334" = load %Uint32, %Uint32* %p1, align 4
  store %Uint32 %"$p1_334", %Uint32* %"$expr_13", align 4
  br label %"$matchsucc_294"

"$matchsucc_294":                                 ; preds = %"$matchsucc_343", %"$have_gas_332"
  %"$$expr_13_573" = load %Uint32, %Uint32* %"$expr_13", align 4
  ret %Uint32 %"$$expr_13_573"
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
  %"$exprval_574" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_575" = alloca %Uint32, align 8
  %"$memvoidcast_576" = bitcast %Uint32* %"$pval_575" to i8*
  store %Uint32 %"$exprval_574", %Uint32* %"$pval_575", align 4
  %"$execptr_load_577" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_577", %_TyDescrTy_Typ* @"$TyDescr_Uint32_20", i8* %"$memvoidcast_576")
  ret void
}
