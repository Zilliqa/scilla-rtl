; let s = "hello" in
; let h1 = builtin sha256hash s in
; let h2 = builtin sha256hash h1 in
; let sh = Pair {String ByStr32} s h2 in
; let sh2 = builtin sha256hash sh in
; let bystr1 = builtin to_bystr sh2 in
; let i4 = Int32 4 in
; let p2 = Pair {ByStr Int32} bystr1 i4 in
; builtin sha256hash p2
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_33" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_32"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_32" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_34"**, %"$TyDescrTy_ADTTyp_33"* }
%"$TyDescrTy_ADTTyp_Constr_34" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%String = type { i8*, i32 }
%TName_Pair_String_ByStr32 = type { i8, %CName_Pair_String_ByStr32* }
%CName_Pair_String_ByStr32 = type <{ i8, %String, [32 x i8] }>
%Bystr = type { i8*, i32 }
%Int32 = type { i32 }
%TName_Pair_ByStr_Int32 = type { i8, %CName_Pair_ByStr_Int32* }
%CName_Pair_ByStr_Int32 = type <{ i8, %Bystr, %Int32 }>

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
@"$TyDescr_Bystr32_Prim_30" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 32 }
@"$TyDescr_Bystr32_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr32_Prim_30" to i8*) }
@"$TyDescr_ADT_Pair_ByStr_Int32_35" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_44" to i8*) }
@"$TyDescr_ADT_Pair_String_ByStr32_36" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_50" to i8*) }
@"$TyDescr_Pair_ADTTyp_38" = unnamed_addr constant %"$TyDescrTy_ADTTyp_33" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_52", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 2, %"$TyDescrTy_ADTTyp_Specl_32"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_32"*], [2 x %"$TyDescrTy_ADTTyp_Specl_32"*]* @"$TyDescr_Pair_ADTTyp_m_specls_51", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_ByStr_Int32_Constr_m_args_39" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@"$TyDescr_ADT_Pair_40" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_ByStr_Int32_ADTTyp_Constr_41" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_34" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_40", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_ByStr_Int32_Constr_m_args_39", i32 0, i32 0) }
@"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_m_constrs_42" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_34"*] [%"$TyDescrTy_ADTTyp_Constr_34"* @"$TyDescr_Pair_Pair_ByStr_Int32_ADTTyp_Constr_41"]
@"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_m_TArgs_43" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_44" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_32" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_m_TArgs_43", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_34"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_34"*], [1 x %"$TyDescrTy_ADTTyp_Constr_34"*]* @"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_m_constrs_42", i32 0, i32 0), %"$TyDescrTy_ADTTyp_33"* @"$TyDescr_Pair_ADTTyp_38" }
@"$TyDescr_Pair_Pair_String_ByStr32_Constr_m_args_45" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_31"]
@"$TyDescr_ADT_Pair_46" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_String_ByStr32_ADTTyp_Constr_47" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_34" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_46", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_String_ByStr32_Constr_m_args_45", i32 0, i32 0) }
@"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_m_constrs_48" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_34"*] [%"$TyDescrTy_ADTTyp_Constr_34"* @"$TyDescr_Pair_Pair_String_ByStr32_ADTTyp_Constr_47"]
@"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_m_TArgs_49" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_31"]
@"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_50" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_32" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_m_TArgs_49", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_34"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_34"*], [1 x %"$TyDescrTy_ADTTyp_Constr_34"*]* @"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_m_constrs_48", i32 0, i32 0), %"$TyDescrTy_ADTTyp_33"* @"$TyDescr_Pair_ADTTyp_38" }
@"$TyDescr_Pair_ADTTyp_m_specls_51" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_32"*] [%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Pair_ByStr_Int32_ADTTyp_Specl_44", %"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Pair_String_ByStr32_ADTTyp_Specl_50"]
@"$TyDescr_ADT_Pair_52" = unnamed_addr constant [4 x i8] c"Pair"
@"$stringlit_54" = unnamed_addr constant [5 x i8] c"hello"

define void @_init_libs() {
entry:
  ret void
}

define internal void @"$scilla_expr_53"(i8* %0, [32 x i8]* %1) {
entry:
  %"$expr_0" = alloca [32 x i8]
  %s = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_54", i32 0, i32 0), i32 5 }, %String* %s
  %h1 = alloca [32 x i8]
  %"$sha256hash_s_55" = alloca %String
  %"$s_56" = load %String, %String* %s
  store %String %"$s_56", %String* %"$sha256hash_s_55"
  %"$$sha256hash_s_55_57" = bitcast %String* %"$sha256hash_s_55" to i8*
  %"$sha256hash_retalloca_58" = alloca [32 x i8]
  call void @_sha256hash([32 x i8]* %"$sha256hash_retalloca_58", %_TyDescrTy_Typ* @"$TyDescr_String_19", i8* %"$$sha256hash_s_55_57")
  %"$sha256hash_ret_59" = load [32 x i8], [32 x i8]* %"$sha256hash_retalloca_58"
  store [32 x i8] %"$sha256hash_ret_59", [32 x i8]* %h1
  %h2 = alloca [32 x i8]
  %"$sha256hash_h1_60" = alloca [32 x i8]
  %"$h1_61" = load [32 x i8], [32 x i8]* %h1
  store [32 x i8] %"$h1_61", [32 x i8]* %"$sha256hash_h1_60"
  %"$$sha256hash_h1_60_62" = bitcast [32 x i8]* %"$sha256hash_h1_60" to i8*
  %"$sha256hash_retalloca_63" = alloca [32 x i8]
  call void @_sha256hash([32 x i8]* %"$sha256hash_retalloca_63", %_TyDescrTy_Typ* @"$TyDescr_Bystr32_31", i8* %"$$sha256hash_h1_60_62")
  %"$sha256hash_ret_64" = load [32 x i8], [32 x i8]* %"$sha256hash_retalloca_63"
  store [32 x i8] %"$sha256hash_ret_64", [32 x i8]* %h2
  %sh = alloca %TName_Pair_String_ByStr32*
  %"$s_65" = load %String, %String* %s
  %"$h2_66" = load [32 x i8], [32 x i8]* %h2
  %"$adtval_67_load" = load i8*, i8** @_execptr
  %"$adtval_67_salloc" = call i8* @_salloc(i8* %"$adtval_67_load", i64 49)
  %"$adtval_67" = bitcast i8* %"$adtval_67_salloc" to %CName_Pair_String_ByStr32*
  %"$adtgep_68" = getelementptr inbounds %CName_Pair_String_ByStr32, %CName_Pair_String_ByStr32* %"$adtval_67", i32 0, i32 0
  store i8 0, i8* %"$adtgep_68"
  %"$adtgep_69" = getelementptr inbounds %CName_Pair_String_ByStr32, %CName_Pair_String_ByStr32* %"$adtval_67", i32 0, i32 1
  store %String %"$s_65", %String* %"$adtgep_69"
  %"$adtgep_70" = getelementptr inbounds %CName_Pair_String_ByStr32, %CName_Pair_String_ByStr32* %"$adtval_67", i32 0, i32 2
  store [32 x i8] %"$h2_66", [32 x i8]* %"$adtgep_70"
  %"$adtptr_71" = bitcast %CName_Pair_String_ByStr32* %"$adtval_67" to %TName_Pair_String_ByStr32*
  store %TName_Pair_String_ByStr32* %"$adtptr_71", %TName_Pair_String_ByStr32** %sh
  %sh2 = alloca [32 x i8]
  %"$sh_72" = load %TName_Pair_String_ByStr32*, %TName_Pair_String_ByStr32** %sh
  %"$$sh_72_73" = bitcast %TName_Pair_String_ByStr32* %"$sh_72" to i8*
  %"$sha256hash_retalloca_74" = alloca [32 x i8]
  call void @_sha256hash([32 x i8]* %"$sha256hash_retalloca_74", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr32_36", i8* %"$$sh_72_73")
  %"$sha256hash_ret_75" = load [32 x i8], [32 x i8]* %"$sha256hash_retalloca_74"
  store [32 x i8] %"$sha256hash_ret_75", [32 x i8]* %sh2
  %bystr1 = alloca %Bystr
  %"$execptr_load_76" = load i8*, i8** @_execptr
  %"$to_bystr_sh2_77" = alloca [32 x i8]
  %"$sh2_78" = load [32 x i8], [32 x i8]* %sh2
  store [32 x i8] %"$sh2_78", [32 x i8]* %"$to_bystr_sh2_77"
  %"$$to_bystr_sh2_77_79" = bitcast [32 x i8]* %"$to_bystr_sh2_77" to i8*
  %"$to_bystr_call_80" = call %Bystr @_to_bystr(i8* %"$execptr_load_76", i32 32, i8* %"$$to_bystr_sh2_77_79")
  store %Bystr %"$to_bystr_call_80", %Bystr* %bystr1
  %i4 = alloca %Int32
  store %Int32 { i32 4 }, %Int32* %i4
  %p2 = alloca %TName_Pair_ByStr_Int32*
  %"$bystr1_81" = load %Bystr, %Bystr* %bystr1
  %"$i4_82" = load %Int32, %Int32* %i4
  %"$adtval_83_load" = load i8*, i8** @_execptr
  %"$adtval_83_salloc" = call i8* @_salloc(i8* %"$adtval_83_load", i64 21)
  %"$adtval_83" = bitcast i8* %"$adtval_83_salloc" to %CName_Pair_ByStr_Int32*
  %"$adtgep_84" = getelementptr inbounds %CName_Pair_ByStr_Int32, %CName_Pair_ByStr_Int32* %"$adtval_83", i32 0, i32 0
  store i8 0, i8* %"$adtgep_84"
  %"$adtgep_85" = getelementptr inbounds %CName_Pair_ByStr_Int32, %CName_Pair_ByStr_Int32* %"$adtval_83", i32 0, i32 1
  store %Bystr %"$bystr1_81", %Bystr* %"$adtgep_85"
  %"$adtgep_86" = getelementptr inbounds %CName_Pair_ByStr_Int32, %CName_Pair_ByStr_Int32* %"$adtval_83", i32 0, i32 2
  store %Int32 %"$i4_82", %Int32* %"$adtgep_86"
  %"$adtptr_87" = bitcast %CName_Pair_ByStr_Int32* %"$adtval_83" to %TName_Pair_ByStr_Int32*
  store %TName_Pair_ByStr_Int32* %"$adtptr_87", %TName_Pair_ByStr_Int32** %p2
  %"$p2_88" = load %TName_Pair_ByStr_Int32*, %TName_Pair_ByStr_Int32** %p2
  %"$$p2_88_89" = bitcast %TName_Pair_ByStr_Int32* %"$p2_88" to i8*
  %"$sha256hash_retalloca_90" = alloca [32 x i8]
  call void @_sha256hash([32 x i8]* %"$sha256hash_retalloca_90", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_ByStr_Int32_35", i8* %"$$p2_88_89")
  %"$sha256hash_ret_91" = load [32 x i8], [32 x i8]* %"$sha256hash_retalloca_90"
  store [32 x i8] %"$sha256hash_ret_91", [32 x i8]* %"$expr_0"
  %"$$expr_0_92" = load [32 x i8], [32 x i8]* %"$expr_0"
  store [32 x i8] %"$$expr_0_92", [32 x i8]* %1
  ret void
}

declare void @_sha256hash([32 x i8]*, %_TyDescrTy_Typ*, i8*)

declare i8* @_salloc(i8*, i64)

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$mainval_93" = alloca [32 x i8]
  %"$memvoidcast_94" = bitcast [32 x i8]* %"$mainval_93" to i8*
  call void @"$scilla_expr_53"(i8* null, [32 x i8]* %"$mainval_93")
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Bystr32_31", i8* %"$memvoidcast_94")
  ret void
}
