; let a = "hello" in
; let b = "world" in
; let str = builtin concat a b in
; 
; let x = 0x11ff in
; let y = 0xff11 in
; let z = builtin concat x y in
; let w = 0x001100110011001100110011001100110011 in
; let bystrx = builtin concat w z in
; 
; 
; Pair {String ByStr22} str bystrx
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_39" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_38"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_38" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_40"**, %"$TyDescrTy_ADTTyp_39"* }
%"$TyDescrTy_ADTTyp_Constr_40" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_Pair_String_ByStr22 = type { i8, %CName_Pair_String_ByStr22* }
%CName_Pair_String_ByStr22 = type <{ i8, %String, [22 x i8] }>
%String = type { i8*, i32 }

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_2" = global %"$TyDescrTy_PrimTyp_1" zeroinitializer
@"$TyDescr_Int32_3" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int32_Prim_2" to i8*) }
@"$TyDescr_Uint32_Prim_4" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 0 }
@"$TyDescr_Uint32_5" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint32_Prim_4" to i8*) }
@"$TyDescr_Int64_Prim_6" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 1 }
@"$TyDescr_Int64_7" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int64_Prim_6" to i8*) }
@"$TyDescr_Uint64_Prim_8" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 1 }
@"$TyDescr_Uint64_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint64_Prim_8" to i8*) }
@"$TyDescr_Int128_Prim_10" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 2 }
@"$TyDescr_Int128_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int128_Prim_10" to i8*) }
@"$TyDescr_Uint128_Prim_12" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 2 }
@"$TyDescr_Uint128_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint128_Prim_12" to i8*) }
@"$TyDescr_Int256_Prim_14" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 3 }
@"$TyDescr_Int256_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int256_Prim_14" to i8*) }
@"$TyDescr_Uint256_Prim_16" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 3 }
@"$TyDescr_Uint256_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint256_Prim_16" to i8*) }
@"$TyDescr_String_Prim_18" = global %"$TyDescrTy_PrimTyp_1" { i32 2, i32 0 }
@"$TyDescr_String_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_String_Prim_18" to i8*) }
@"$TyDescr_Bnum_Prim_20" = global %"$TyDescrTy_PrimTyp_1" { i32 3, i32 0 }
@"$TyDescr_Bnum_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bnum_Prim_20" to i8*) }
@"$TyDescr_Message_Prim_22" = global %"$TyDescrTy_PrimTyp_1" { i32 4, i32 0 }
@"$TyDescr_Message_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Message_Prim_22" to i8*) }
@"$TyDescr_Event_Prim_24" = global %"$TyDescrTy_PrimTyp_1" { i32 5, i32 0 }
@"$TyDescr_Event_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Event_Prim_24" to i8*) }
@"$TyDescr_Exception_Prim_26" = global %"$TyDescrTy_PrimTyp_1" { i32 6, i32 0 }
@"$TyDescr_Exception_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Exception_Prim_26" to i8*) }
@"$TyDescr_Bystr_Prim_28" = global %"$TyDescrTy_PrimTyp_1" { i32 7, i32 0 }
@"$TyDescr_Bystr_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr_Prim_28" to i8*) }
@"$TyDescr_Bystr18_Prim_30" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 18 }
@"$TyDescr_Bystr18_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr18_Prim_30" to i8*) }
@"$TyDescr_Bystr4_Prim_32" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 4 }
@"$TyDescr_Bystr4_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr4_Prim_32" to i8*) }
@"$TyDescr_Bystr2_Prim_34" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 2 }
@"$TyDescr_Bystr2_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr2_Prim_34" to i8*) }
@"$TyDescr_Bystr22_Prim_36" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 22 }
@"$TyDescr_Bystr22_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr22_Prim_36" to i8*) }
@"$TyDescr_ADT_Pair_String_ByStr22_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_49" to i8*) }
@"$TyDescr_Pair_ADTTyp_43" = unnamed_addr constant %"$TyDescrTy_ADTTyp_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_51", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_38"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_38"*], [1 x %"$TyDescrTy_ADTTyp_Specl_38"*]* @"$TyDescr_Pair_ADTTyp_m_specls_50", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_String_ByStr22_Constr_m_args_44" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr22_37"]
@"$TyDescr_ADT_Pair_45" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_String_ByStr22_ADTTyp_Constr_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_45", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_String_ByStr22_Constr_m_args_44", i32 0, i32 0) }
@"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_m_constrs_47" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_Pair_Pair_String_ByStr22_ADTTyp_Constr_46"]
@"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_m_TArgs_48" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr22_37"]
@"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_m_TArgs_48", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_40"*], [1 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_m_constrs_47", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_Pair_ADTTyp_43" }
@"$TyDescr_Pair_ADTTyp_m_specls_50" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_38"*] [%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_49"]
@"$TyDescr_ADT_Pair_51" = unnamed_addr constant [4 x i8] c"Pair"
@"$stringlit_53" = unnamed_addr constant [5 x i8] c"hello"
@"$stringlit_54" = unnamed_addr constant [5 x i8] c"world"

define void @_init_libs() {
entry:
  ret void
}

define internal %TName_Pair_String_ByStr22* @"$scilla_expr_52"(i8* %0) {
entry:
  %"$expr_0" = alloca %TName_Pair_String_ByStr22*
  %a = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_53", i32 0, i32 0), i32 5 }, %String* %a
  %b = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_54", i32 0, i32 0), i32 5 }, %String* %b
  %str = alloca %String
  %"$execptr_load_55" = load i8*, i8** @_execptr
  %"$a_56" = load %String, %String* %a
  %"$b_57" = load %String, %String* %b
  %"$concat_call_58" = call %String @_concat_String(i8* %"$execptr_load_55", %String %"$a_56", %String %"$b_57")
  store %String %"$concat_call_58", %String* %str
  %x = alloca [2 x i8]
  store [2 x i8] c"\11\FF", [2 x i8]* %x
  %y = alloca [2 x i8]
  store [2 x i8] c"\FF\11", [2 x i8]* %y
  %z = alloca [4 x i8]
  %"$concat_x_59" = alloca [2 x i8]
  %"$x_60" = load [2 x i8], [2 x i8]* %x
  store [2 x i8] %"$x_60", [2 x i8]* %"$concat_x_59"
  %"$$concat_x_59_61" = bitcast [2 x i8]* %"$concat_x_59" to i8*
  %"$concat_y_62" = alloca [2 x i8]
  %"$y_63" = load [2 x i8], [2 x i8]* %y
  store [2 x i8] %"$y_63", [2 x i8]* %"$concat_y_62"
  %"$$concat_y_62_64" = bitcast [2 x i8]* %"$concat_y_62" to i8*
  %"$concat_retalloca_65" = alloca [4 x i8]
  %"$concat_retalloca_65_voidp" = bitcast [4 x i8]* %"$concat_retalloca_65" to i8*
  %1 = call i8* @_concat_ByStrX(i8* %"$concat_retalloca_65_voidp", i32 2, i8* %"$$concat_x_59_61", i32 2, i8* %"$$concat_y_62_64")
  %"$concat_ret_66" = load [4 x i8], [4 x i8]* %"$concat_retalloca_65"
  store [4 x i8] %"$concat_ret_66", [4 x i8]* %z
  %w = alloca [18 x i8]
  store [18 x i8] c"\00\11\00\11\00\11\00\11\00\11\00\11\00\11\00\11\00\11", [18 x i8]* %w
  %bystrx = alloca [22 x i8]
  %"$concat_w_67" = alloca [18 x i8]
  %"$w_68" = load [18 x i8], [18 x i8]* %w
  store [18 x i8] %"$w_68", [18 x i8]* %"$concat_w_67"
  %"$$concat_w_67_69" = bitcast [18 x i8]* %"$concat_w_67" to i8*
  %"$concat_z_70" = alloca [4 x i8]
  %"$z_71" = load [4 x i8], [4 x i8]* %z
  store [4 x i8] %"$z_71", [4 x i8]* %"$concat_z_70"
  %"$$concat_z_70_72" = bitcast [4 x i8]* %"$concat_z_70" to i8*
  %"$concat_retalloca_73" = alloca [22 x i8]
  %"$concat_retalloca_73_voidp" = bitcast [22 x i8]* %"$concat_retalloca_73" to i8*
  %2 = call i8* @_concat_ByStrX(i8* %"$concat_retalloca_73_voidp", i32 18, i8* %"$$concat_w_67_69", i32 4, i8* %"$$concat_z_70_72")
  %"$concat_ret_74" = load [22 x i8], [22 x i8]* %"$concat_retalloca_73"
  store [22 x i8] %"$concat_ret_74", [22 x i8]* %bystrx
  %"$str_75" = load %String, %String* %str
  %"$bystrx_76" = load [22 x i8], [22 x i8]* %bystrx
  %"$adtval_77_load" = load i8*, i8** @_execptr
  %"$adtval_77_salloc" = call i8* @_salloc(i8* %"$adtval_77_load", i64 39)
  %"$adtval_77" = bitcast i8* %"$adtval_77_salloc" to %CName_Pair_String_ByStr22*
  %"$adtgep_78" = getelementptr inbounds %CName_Pair_String_ByStr22, %CName_Pair_String_ByStr22* %"$adtval_77", i32 0, i32 0
  store i8 0, i8* %"$adtgep_78"
  %"$adtgep_79" = getelementptr inbounds %CName_Pair_String_ByStr22, %CName_Pair_String_ByStr22* %"$adtval_77", i32 0, i32 1
  store %String %"$str_75", %String* %"$adtgep_79"
  %"$adtgep_80" = getelementptr inbounds %CName_Pair_String_ByStr22, %CName_Pair_String_ByStr22* %"$adtval_77", i32 0, i32 2
  store [22 x i8] %"$bystrx_76", [22 x i8]* %"$adtgep_80"
  %"$adtptr_81" = bitcast %CName_Pair_String_ByStr22* %"$adtval_77" to %TName_Pair_String_ByStr22*
  store %TName_Pair_String_ByStr22* %"$adtptr_81", %TName_Pair_String_ByStr22** %"$expr_0"
  %"$$expr_0_82" = load %TName_Pair_String_ByStr22*, %TName_Pair_String_ByStr22** %"$expr_0"
  ret %TName_Pair_String_ByStr22* %"$$expr_0_82"
}

declare %String @_concat_String(i8*, %String, %String)

declare i8* @_concat_ByStrX(i8*, i32, i8*, i32, i8*)

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_83" = call %TName_Pair_String_ByStr22* @"$scilla_expr_52"(i8* null)
  %"$memvoidcast_84" = bitcast %TName_Pair_String_ByStr22* %"$exprval_83" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr22_41", i8* %"$memvoidcast_84")
  ret void
}
