; let tf =
; tfun 'A =>
; tfun 'B =>
; fun (a : 'A) =>
; fun (b : 'B) =>
; Pair {'A 'B} a b
; in
; 
; let tf1 =
; tfun 'A =>
; tfun 'B =>
; @tf 'A 'B
; 
; in
; 
; let t1 = @tf1 Uint32 Uint64 in
; let t2 = @tf1 String ByStr20 in
; let uint32_one = Uint32 1 in
; let uint64_two = Uint64 2 in
; let hello_string = "hello" in
; let addr_bystr20 = 0xaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa in
; 
; let p1 = t1 uint32_one uint64_two in
; let p2 = t2 hello_string addr_bystr20 in
; Pair {(Pair (Uint32) (Uint64)) ((Pair String ByStr20))} p1 p2
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_29" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_61" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_60"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_60" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_62"**, %"$TyDescrTy_ADTTyp_61"* }
%"$TyDescrTy_ADTTyp_Constr_62" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_Pair_String_ByStr20 = type { i8, %CName_Pair_String_ByStr20* }
%CName_Pair_String_ByStr20 = type <{ i8, %String, [20 x i8] }>
%String = type { i8*, i32 }
%"$$fundef_27_env_88" = type { { i8*, i8* }* }
%"$$fundef_25_env_89" = type { { i8*, i8* }* }
%TName_Pair_Uint32_Uint64 = type { i8, %CName_Pair_Uint32_Uint64* }
%CName_Pair_Uint32_Uint64 = type <{ i8, %Uint32, %Uint64 }>
%Uint64 = type { i64 }
%Uint32 = type { i32 }
%"$$fundef_23_env_90" = type { { i8*, i8* }* }
%"$$fundef_21_env_91" = type { { i8*, i8* }* }
%"$$fundef_19_env_92" = type { %String }
%"$$fundef_17_env_93" = type {}
%"$$fundef_15_env_94" = type {}
%"$$fundef_13_env_95" = type {}
%"$$fundef_11_env_96" = type { %Uint32 }
%"$$fundef_9_env_97" = type {}
%"$$fundef_7_env_98" = type {}
%"$$fundef_5_env_99" = type {}
%"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)" = type { i8, %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* }
%"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)" = type <{ i8, %TName_Pair_Uint32_Uint64*, %TName_Pair_String_ByStr20* }>

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_30" = global %"$TyDescrTy_PrimTyp_29" zeroinitializer
@"$TyDescr_Int32_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Int32_Prim_30" to i8*) }
@"$TyDescr_Uint32_Prim_32" = global %"$TyDescrTy_PrimTyp_29" { i32 1, i32 0 }
@"$TyDescr_Uint32_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Uint32_Prim_32" to i8*) }
@"$TyDescr_Int64_Prim_34" = global %"$TyDescrTy_PrimTyp_29" { i32 0, i32 1 }
@"$TyDescr_Int64_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Int64_Prim_34" to i8*) }
@"$TyDescr_Uint64_Prim_36" = global %"$TyDescrTy_PrimTyp_29" { i32 1, i32 1 }
@"$TyDescr_Uint64_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Uint64_Prim_36" to i8*) }
@"$TyDescr_Int128_Prim_38" = global %"$TyDescrTy_PrimTyp_29" { i32 0, i32 2 }
@"$TyDescr_Int128_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Int128_Prim_38" to i8*) }
@"$TyDescr_Uint128_Prim_40" = global %"$TyDescrTy_PrimTyp_29" { i32 1, i32 2 }
@"$TyDescr_Uint128_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Uint128_Prim_40" to i8*) }
@"$TyDescr_Int256_Prim_42" = global %"$TyDescrTy_PrimTyp_29" { i32 0, i32 3 }
@"$TyDescr_Int256_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Int256_Prim_42" to i8*) }
@"$TyDescr_Uint256_Prim_44" = global %"$TyDescrTy_PrimTyp_29" { i32 1, i32 3 }
@"$TyDescr_Uint256_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Uint256_Prim_44" to i8*) }
@"$TyDescr_String_Prim_46" = global %"$TyDescrTy_PrimTyp_29" { i32 2, i32 0 }
@"$TyDescr_String_47" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_String_Prim_46" to i8*) }
@"$TyDescr_Bnum_Prim_48" = global %"$TyDescrTy_PrimTyp_29" { i32 3, i32 0 }
@"$TyDescr_Bnum_49" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Bnum_Prim_48" to i8*) }
@"$TyDescr_Message_Prim_50" = global %"$TyDescrTy_PrimTyp_29" { i32 4, i32 0 }
@"$TyDescr_Message_51" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Message_Prim_50" to i8*) }
@"$TyDescr_Event_Prim_52" = global %"$TyDescrTy_PrimTyp_29" { i32 5, i32 0 }
@"$TyDescr_Event_53" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Event_Prim_52" to i8*) }
@"$TyDescr_Exception_Prim_54" = global %"$TyDescrTy_PrimTyp_29" { i32 6, i32 0 }
@"$TyDescr_Exception_55" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Exception_Prim_54" to i8*) }
@"$TyDescr_Bystr_Prim_56" = global %"$TyDescrTy_PrimTyp_29" { i32 7, i32 0 }
@"$TyDescr_Bystr_57" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Bystr_Prim_56" to i8*) }
@"$TyDescr_Bystr20_Prim_58" = global %"$TyDescrTy_PrimTyp_29" { i32 8, i32 20 }
@"$TyDescr_Bystr20_59" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Bystr20_Prim_58" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_63" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_73" to i8*) }
@"$TyDescr_ADT_Pair_String_ByStr20_64" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_79" to i8*) }
@"$TyDescr_ADT_Pair_Uint32_Uint64_65" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_85" to i8*) }
@"$TyDescr_Pair_ADTTyp_67" = unnamed_addr constant %"$TyDescrTy_ADTTyp_61" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_87", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 3, %"$TyDescrTy_ADTTyp_Specl_60"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_60"*], [3 x %"$TyDescrTy_ADTTyp_Specl_60"*]* @"$TyDescr_Pair_ADTTyp_m_specls_86", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_Constr_m_args_68" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_65", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr20_64"]
@"$TyDescr_ADT_Pair_69" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Constr_70" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_62" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_69", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_Constr_m_args_68", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_constrs_71" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_62"*] [%"$TyDescrTy_ADTTyp_Constr_62"* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Constr_70"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_TArgs_72" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_65", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr20_64"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_73" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_60" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_TArgs_72", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_62"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_62"*], [1 x %"$TyDescrTy_ADTTyp_Constr_62"*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_constrs_71", i32 0, i32 0), %"$TyDescrTy_ADTTyp_61"* @"$TyDescr_Pair_ADTTyp_67" }
@"$TyDescr_Pair_Pair_String_ByStr20_Constr_m_args_74" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_47", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_59"]
@"$TyDescr_ADT_Pair_75" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_String_ByStr20_ADTTyp_Constr_76" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_62" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_75", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_String_ByStr20_Constr_m_args_74", i32 0, i32 0) }
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_constrs_77" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_62"*] [%"$TyDescrTy_ADTTyp_Constr_62"* @"$TyDescr_Pair_Pair_String_ByStr20_ADTTyp_Constr_76"]
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_TArgs_78" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_47", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_59"]
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_79" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_60" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_TArgs_78", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_62"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_62"*], [1 x %"$TyDescrTy_ADTTyp_Constr_62"*]* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_constrs_77", i32 0, i32 0), %"$TyDescrTy_ADTTyp_61"* @"$TyDescr_Pair_ADTTyp_67" }
@"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_80" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_33", %_TyDescrTy_Typ* @"$TyDescr_Uint64_37"]
@"$TyDescr_ADT_Pair_81" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_82" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_62" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_81", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_80", i32 0, i32 0) }
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_83" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_62"*] [%"$TyDescrTy_ADTTyp_Constr_62"* @"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_82"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_84" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_33", %_TyDescrTy_Typ* @"$TyDescr_Uint64_37"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_85" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_60" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_84", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_62"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_62"*], [1 x %"$TyDescrTy_ADTTyp_Constr_62"*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_83", i32 0, i32 0), %"$TyDescrTy_ADTTyp_61"* @"$TyDescr_Pair_ADTTyp_67" }
@"$TyDescr_Pair_ADTTyp_m_specls_86" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_60"*] [%"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_73", %"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_79", %"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_85"]
@"$TyDescr_ADT_Pair_87" = unnamed_addr constant [4 x i8] c"Pair"
@"$stringlit_260" = unnamed_addr constant [5 x i8] c"hello"

define internal { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } @"$fundef_27"(%"$$fundef_27_env_88"* %0) {
entry:
  %"$$fundef_27_env_tf_192" = getelementptr inbounds %"$$fundef_27_env_88", %"$$fundef_27_env_88"* %0, i32 0, i32 0
  %"$tf_envload_193" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_27_env_tf_192"
  %tf = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$tf_envload_193", { i8*, i8* }** %tf
  %"$retval_28" = alloca { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }
  %"$tf_194" = load { i8*, i8* }*, { i8*, i8* }** %tf
  %"$tf_195" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_194", i32 2
  %"$tf_196" = bitcast { i8*, i8* }* %"$tf_195" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_197" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_196"
  %"$tf_fptr_198" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_197", 0
  %"$tf_envptr_199" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_197", 1
  %"$tf_call_200" = call { i8*, i8* }* %"$tf_fptr_198"(i8* %"$tf_envptr_199")
  %"$tf_201" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_200", i32 3
  %"$tf_202" = bitcast { i8*, i8* }* %"$tf_201" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  %"$tf_203" = load { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$tf_202"
  %"$tf_fptr_204" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf_203", 0
  %"$tf_envptr_205" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf_203", 1
  %"$tf_call_206" = call { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf_fptr_204"(i8* %"$tf_envptr_205")
  store { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf_call_206", { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_28"
  %"$$retval_28_207" = load { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_28"
  ret { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$$retval_28_207"
}

define internal { i8*, i8* }* @"$fundef_25"(%"$$fundef_25_env_89"* %0) {
entry:
  %"$$fundef_25_env_tf_180" = getelementptr inbounds %"$$fundef_25_env_89", %"$$fundef_25_env_89"* %0, i32 0, i32 0
  %"$tf_envload_181" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_25_env_tf_180"
  %tf = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$tf_envload_181", { i8*, i8* }** %tf
  %"$retval_26" = alloca { i8*, i8* }*
  %"$$fundef_27_envp_182_load" = load i8*, i8** @_execptr
  %"$$fundef_27_envp_182_salloc" = call i8* @_salloc(i8* %"$$fundef_27_envp_182_load", i64 8)
  %"$$fundef_27_envp_182" = bitcast i8* %"$$fundef_27_envp_182_salloc" to %"$$fundef_27_env_88"*
  %"$$fundef_27_env_voidp_184" = bitcast %"$$fundef_27_env_88"* %"$$fundef_27_envp_182" to i8*
  %"$$fundef_27_cloval_185" = insertvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)* bitcast ({ { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (%"$$fundef_27_env_88"*)* @"$fundef_27" to { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_27_env_voidp_184", 1
  %"$$fundef_27_env_tf_186" = getelementptr inbounds %"$$fundef_27_env_88", %"$$fundef_27_env_88"* %"$$fundef_27_envp_182", i32 0, i32 0
  %"$tf_187" = load { i8*, i8* }*, { i8*, i8* }** %tf
  store { i8*, i8* }* %"$tf_187", { i8*, i8* }** %"$$fundef_27_env_tf_186"
  %"$dyndisp_table_188_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_188_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_188_salloc_load", i64 64)
  %"$dyndisp_table_188_salloc" = bitcast i8* %"$dyndisp_table_188_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_188" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_188_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_189" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_188", i32 3
  %"$dyndisp_pcast_190" = bitcast { i8*, i8* }* %"$dyndisp_gep_189" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$$fundef_27_cloval_185", { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_190"
  store { i8*, i8* }* %"$dyndisp_table_188", { i8*, i8* }** %"$retval_26"
  %"$$retval_26_191" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_26"
  ret { i8*, i8* }* %"$$retval_26_191"
}

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_23"(%"$$fundef_23_env_90"* %0) {
entry:
  %"$$fundef_23_env_tf_164" = getelementptr inbounds %"$$fundef_23_env_90", %"$$fundef_23_env_90"* %0, i32 0, i32 0
  %"$tf_envload_165" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_23_env_tf_164"
  %tf = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$tf_envload_165", { i8*, i8* }** %tf
  %"$retval_24" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }
  %"$tf_166" = load { i8*, i8* }*, { i8*, i8* }** %tf
  %"$tf_167" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_166", i32 0
  %"$tf_168" = bitcast { i8*, i8* }* %"$tf_167" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_169" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_168"
  %"$tf_fptr_170" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_169", 0
  %"$tf_envptr_171" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_169", 1
  %"$tf_call_172" = call { i8*, i8* }* %"$tf_fptr_170"(i8* %"$tf_envptr_171")
  %"$tf_173" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_172", i32 1
  %"$tf_174" = bitcast { i8*, i8* }* %"$tf_173" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_175" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_174"
  %"$tf_fptr_176" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_175", 0
  %"$tf_envptr_177" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_175", 1
  %"$tf_call_178" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_fptr_176"(i8* %"$tf_envptr_177")
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_call_178", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_24"
  %"$$retval_24_179" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_24"
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_24_179"
}

define internal { i8*, i8* }* @"$fundef_21"(%"$$fundef_21_env_91"* %0) {
entry:
  %"$$fundef_21_env_tf_152" = getelementptr inbounds %"$$fundef_21_env_91", %"$$fundef_21_env_91"* %0, i32 0, i32 0
  %"$tf_envload_153" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_21_env_tf_152"
  %tf = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$tf_envload_153", { i8*, i8* }** %tf
  %"$retval_22" = alloca { i8*, i8* }*
  %"$$fundef_23_envp_154_load" = load i8*, i8** @_execptr
  %"$$fundef_23_envp_154_salloc" = call i8* @_salloc(i8* %"$$fundef_23_envp_154_load", i64 8)
  %"$$fundef_23_envp_154" = bitcast i8* %"$$fundef_23_envp_154_salloc" to %"$$fundef_23_env_90"*
  %"$$fundef_23_env_voidp_156" = bitcast %"$$fundef_23_env_90"* %"$$fundef_23_envp_154" to i8*
  %"$$fundef_23_cloval_157" = insertvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_23_env_90"*)* @"$fundef_23" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_23_env_voidp_156", 1
  %"$$fundef_23_env_tf_158" = getelementptr inbounds %"$$fundef_23_env_90", %"$$fundef_23_env_90"* %"$$fundef_23_envp_154", i32 0, i32 0
  %"$tf_159" = load { i8*, i8* }*, { i8*, i8* }** %tf
  store { i8*, i8* }* %"$tf_159", { i8*, i8* }** %"$$fundef_23_env_tf_158"
  %"$dyndisp_table_160_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_160_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_160_salloc_load", i64 64)
  %"$dyndisp_table_160_salloc" = bitcast i8* %"$dyndisp_table_160_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_160" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_160_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_161" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_160", i32 1
  %"$dyndisp_pcast_162" = bitcast { i8*, i8* }* %"$dyndisp_gep_161" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$$fundef_23_cloval_157", { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_162"
  store { i8*, i8* }* %"$dyndisp_table_160", { i8*, i8* }** %"$retval_22"
  %"$$retval_22_163" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_22"
  ret { i8*, i8* }* %"$$retval_22_163"
}

define internal %TName_Pair_String_ByStr20* @"$fundef_19"(%"$$fundef_19_env_92"* %0, [20 x i8]* %1) {
entry:
  %b = load [20 x i8], [20 x i8]* %1
  %"$$fundef_19_env_a_143" = getelementptr inbounds %"$$fundef_19_env_92", %"$$fundef_19_env_92"* %0, i32 0, i32 0
  %"$a_envload_144" = load %String, %String* %"$$fundef_19_env_a_143"
  %a = alloca %String
  store %String %"$a_envload_144", %String* %a
  %"$retval_20" = alloca %TName_Pair_String_ByStr20*
  %"$a_145" = load %String, %String* %a
  %"$adtval_146_load" = load i8*, i8** @_execptr
  %"$adtval_146_salloc" = call i8* @_salloc(i8* %"$adtval_146_load", i64 37)
  %"$adtval_146" = bitcast i8* %"$adtval_146_salloc" to %CName_Pair_String_ByStr20*
  %"$adtgep_147" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_146", i32 0, i32 0
  store i8 0, i8* %"$adtgep_147"
  %"$adtgep_148" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_146", i32 0, i32 1
  store %String %"$a_145", %String* %"$adtgep_148"
  %"$adtgep_149" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_146", i32 0, i32 2
  store [20 x i8] %b, [20 x i8]* %"$adtgep_149"
  %"$adtptr_150" = bitcast %CName_Pair_String_ByStr20* %"$adtval_146" to %TName_Pair_String_ByStr20*
  store %TName_Pair_String_ByStr20* %"$adtptr_150", %TName_Pair_String_ByStr20** %"$retval_20"
  %"$$retval_20_151" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %"$retval_20"
  ret %TName_Pair_String_ByStr20* %"$$retval_20_151"
}

define internal { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } @"$fundef_17"(%"$$fundef_17_env_93"* %0, %String %1) {
entry:
  %"$retval_18" = alloca { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }
  %"$$fundef_19_envp_137_load" = load i8*, i8** @_execptr
  %"$$fundef_19_envp_137_salloc" = call i8* @_salloc(i8* %"$$fundef_19_envp_137_load", i64 16)
  %"$$fundef_19_envp_137" = bitcast i8* %"$$fundef_19_envp_137_salloc" to %"$$fundef_19_env_92"*
  %"$$fundef_19_env_voidp_139" = bitcast %"$$fundef_19_env_92"* %"$$fundef_19_envp_137" to i8*
  %"$$fundef_19_cloval_140" = insertvalue { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)* bitcast (%TName_Pair_String_ByStr20* (%"$$fundef_19_env_92"*, [20 x i8]*)* @"$fundef_19" to %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_19_env_voidp_139", 1
  %"$$fundef_19_env_a_141" = getelementptr inbounds %"$$fundef_19_env_92", %"$$fundef_19_env_92"* %"$$fundef_19_envp_137", i32 0, i32 0
  store %String %1, %String* %"$$fundef_19_env_a_141"
  store { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$fundef_19_cloval_140", { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_18"
  %"$$retval_18_142" = load { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_18"
  ret { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$retval_18_142"
}

define internal { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } @"$fundef_15"(%"$$fundef_15_env_94"* %0) {
entry:
  %"$retval_16" = alloca { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }
  store { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)* bitcast ({ %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_17_env_93"*, %String)* @"$fundef_17" to { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*), i8* null }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_16"
  %"$$retval_16_136" = load { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_16"
  ret { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$$retval_16_136"
}

define internal { i8*, i8* }* @"$fundef_13"(%"$$fundef_13_env_95"* %0) {
entry:
  %"$retval_14" = alloca { i8*, i8* }*
  %"$dyndisp_table_129_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_129_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_129_salloc_load", i64 64)
  %"$dyndisp_table_129_salloc" = bitcast i8* %"$dyndisp_table_129_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_129" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_129_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_130" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_129", i32 3
  %"$dyndisp_pcast_131" = bitcast { i8*, i8* }* %"$dyndisp_gep_130" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)* bitcast ({ { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (%"$$fundef_15_env_94"*)* @"$fundef_15" to { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_131"
  store { i8*, i8* }* %"$dyndisp_table_129", { i8*, i8* }** %"$retval_14"
  %"$$retval_14_132" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_14"
  ret { i8*, i8* }* %"$$retval_14_132"
}

define internal %TName_Pair_Uint32_Uint64* @"$fundef_11"(%"$$fundef_11_env_96"* %0, %Uint64 %1) {
entry:
  %"$$fundef_11_env_a_117" = getelementptr inbounds %"$$fundef_11_env_96", %"$$fundef_11_env_96"* %0, i32 0, i32 0
  %"$a_envload_118" = load %Uint32, %Uint32* %"$$fundef_11_env_a_117"
  %a = alloca %Uint32
  store %Uint32 %"$a_envload_118", %Uint32* %a
  %"$retval_12" = alloca %TName_Pair_Uint32_Uint64*
  %"$a_119" = load %Uint32, %Uint32* %a
  %"$adtval_120_load" = load i8*, i8** @_execptr
  %"$adtval_120_salloc" = call i8* @_salloc(i8* %"$adtval_120_load", i64 13)
  %"$adtval_120" = bitcast i8* %"$adtval_120_salloc" to %CName_Pair_Uint32_Uint64*
  %"$adtgep_121" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_120", i32 0, i32 0
  store i8 0, i8* %"$adtgep_121"
  %"$adtgep_122" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_120", i32 0, i32 1
  store %Uint32 %"$a_119", %Uint32* %"$adtgep_122"
  %"$adtgep_123" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_120", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_123"
  %"$adtptr_124" = bitcast %CName_Pair_Uint32_Uint64* %"$adtval_120" to %TName_Pair_Uint32_Uint64*
  store %TName_Pair_Uint32_Uint64* %"$adtptr_124", %TName_Pair_Uint32_Uint64** %"$retval_12"
  %"$$retval_12_125" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$retval_12"
  ret %TName_Pair_Uint32_Uint64* %"$$retval_12_125"
}

define internal { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_9"(%"$$fundef_9_env_97"* %0, %Uint32 %1) {
entry:
  %"$retval_10" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }
  %"$$fundef_11_envp_111_load" = load i8*, i8** @_execptr
  %"$$fundef_11_envp_111_salloc" = call i8* @_salloc(i8* %"$$fundef_11_envp_111_load", i64 4)
  %"$$fundef_11_envp_111" = bitcast i8* %"$$fundef_11_envp_111_salloc" to %"$$fundef_11_env_96"*
  %"$$fundef_11_env_voidp_113" = bitcast %"$$fundef_11_env_96"* %"$$fundef_11_envp_111" to i8*
  %"$$fundef_11_cloval_114" = insertvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)* bitcast (%TName_Pair_Uint32_Uint64* (%"$$fundef_11_env_96"*, %Uint64)* @"$fundef_11" to %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*), i8* undef }, i8* %"$$fundef_11_env_voidp_113", 1
  %"$$fundef_11_env_a_115" = getelementptr inbounds %"$$fundef_11_env_96", %"$$fundef_11_env_96"* %"$$fundef_11_envp_111", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_11_env_a_115"
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_11_cloval_114", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_10"
  %"$$retval_10_116" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_10"
  ret { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_10_116"
}

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_7"(%"$$fundef_7_env_98"* %0) {
entry:
  %"$retval_8" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)* bitcast ({ %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_9_env_97"*, %Uint32)* @"$fundef_9" to { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*), i8* null }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_8"
  %"$$retval_8_110" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_8"
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_8_110"
}

define internal { i8*, i8* }* @"$fundef_5"(%"$$fundef_5_env_99"* %0) {
entry:
  %"$retval_6" = alloca { i8*, i8* }*
  %"$dyndisp_table_103_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_103_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_103_salloc_load", i64 64)
  %"$dyndisp_table_103_salloc" = bitcast i8* %"$dyndisp_table_103_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_103" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_103_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_104" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_103", i32 1
  %"$dyndisp_pcast_105" = bitcast { i8*, i8* }* %"$dyndisp_gep_104" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_7_env_98"*)* @"$fundef_7" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_105"
  store { i8*, i8* }* %"$dyndisp_table_103", { i8*, i8* }** %"$retval_6"
  %"$$retval_6_106" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_6"
  ret { i8*, i8* }* %"$$retval_6_106"
}

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* @"$scilla_expr_208"(i8* %0) {
entry:
  %"$expr_4" = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*
  %tf = alloca { i8*, i8* }*
  %"$dyndisp_table_215_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_215_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_215_salloc_load", i64 64)
  %"$dyndisp_table_215_salloc" = bitcast i8* %"$dyndisp_table_215_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_215" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_215_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_216" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_215", i32 0
  %"$dyndisp_pcast_217" = bitcast { i8*, i8* }* %"$dyndisp_gep_216" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_5_env_99"*)* @"$fundef_5" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_217"
  %"$dyndisp_gep_218" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_215", i32 2
  %"$dyndisp_pcast_219" = bitcast { i8*, i8* }* %"$dyndisp_gep_218" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_13_env_95"*)* @"$fundef_13" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_219"
  store { i8*, i8* }* %"$dyndisp_table_215", { i8*, i8* }** %tf
  %tf1 = alloca { i8*, i8* }*
  %"$$fundef_21_envp_220_load" = load i8*, i8** @_execptr
  %"$$fundef_21_envp_220_salloc" = call i8* @_salloc(i8* %"$$fundef_21_envp_220_load", i64 8)
  %"$$fundef_21_envp_220" = bitcast i8* %"$$fundef_21_envp_220_salloc" to %"$$fundef_21_env_91"*
  %"$$fundef_21_env_voidp_222" = bitcast %"$$fundef_21_env_91"* %"$$fundef_21_envp_220" to i8*
  %"$$fundef_21_cloval_223" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_21_env_91"*)* @"$fundef_21" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_21_env_voidp_222", 1
  %"$$fundef_21_env_tf_224" = getelementptr inbounds %"$$fundef_21_env_91", %"$$fundef_21_env_91"* %"$$fundef_21_envp_220", i32 0, i32 0
  %"$tf_225" = load { i8*, i8* }*, { i8*, i8* }** %tf
  store { i8*, i8* }* %"$tf_225", { i8*, i8* }** %"$$fundef_21_env_tf_224"
  %"$$fundef_25_env_voidp_227" = bitcast %"$$fundef_21_env_91"* %"$$fundef_21_envp_220" to i8*
  %"$$fundef_25_cloval_228" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_25_env_89"*)* @"$fundef_25" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_25_env_voidp_227", 1
  %"$dyndisp_table_229_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_229_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_229_salloc_load", i64 64)
  %"$dyndisp_table_229_salloc" = bitcast i8* %"$dyndisp_table_229_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_229" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_229_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_230" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_229", i32 0
  %"$dyndisp_pcast_231" = bitcast { i8*, i8* }* %"$dyndisp_gep_230" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_21_cloval_223", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_231"
  %"$dyndisp_gep_232" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_229", i32 2
  %"$dyndisp_pcast_233" = bitcast { i8*, i8* }* %"$dyndisp_gep_232" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_25_cloval_228", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_233"
  store { i8*, i8* }* %"$dyndisp_table_229", { i8*, i8* }** %tf1
  %t1 = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }
  %"$tf1_234" = load { i8*, i8* }*, { i8*, i8* }** %tf1
  %"$tf1_235" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_234", i32 0
  %"$tf1_236" = bitcast { i8*, i8* }* %"$tf1_235" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf1_237" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf1_236"
  %"$tf1_fptr_238" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_237", 0
  %"$tf1_envptr_239" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_237", 1
  %"$tf1_call_240" = call { i8*, i8* }* %"$tf1_fptr_238"(i8* %"$tf1_envptr_239")
  %"$tf1_241" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_call_240", i32 1
  %"$tf1_242" = bitcast { i8*, i8* }* %"$tf1_241" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf1_243" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf1_242"
  %"$tf1_fptr_244" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_243", 0
  %"$tf1_envptr_245" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_243", 1
  %"$tf1_call_246" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_fptr_244"(i8* %"$tf1_envptr_245")
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_call_246", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1
  %t2 = alloca { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }
  %"$tf1_247" = load { i8*, i8* }*, { i8*, i8* }** %tf1
  %"$tf1_248" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_247", i32 2
  %"$tf1_249" = bitcast { i8*, i8* }* %"$tf1_248" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf1_250" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf1_249"
  %"$tf1_fptr_251" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_250", 0
  %"$tf1_envptr_252" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_250", 1
  %"$tf1_call_253" = call { i8*, i8* }* %"$tf1_fptr_251"(i8* %"$tf1_envptr_252")
  %"$tf1_254" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_call_253", i32 3
  %"$tf1_255" = bitcast { i8*, i8* }* %"$tf1_254" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  %"$tf1_256" = load { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$tf1_255"
  %"$tf1_fptr_257" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf1_256", 0
  %"$tf1_envptr_258" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf1_256", 1
  %"$tf1_call_259" = call { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf1_fptr_257"(i8* %"$tf1_envptr_258")
  store { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf1_call_259", { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %t2
  %uint32_one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %uint32_one
  %uint64_two = alloca %Uint64
  store %Uint64 { i64 2 }, %Uint64* %uint64_two
  %hello_string = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_260", i32 0, i32 0), i32 5 }, %String* %hello_string
  %addr_bystr20 = alloca [20 x i8]
  store [20 x i8] c"\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA", [20 x i8]* %addr_bystr20
  %p1 = alloca %TName_Pair_Uint32_Uint64*
  %"$t1_0" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }
  %"$t1_261" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1
  %"$t1_fptr_262" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_261", 0
  %"$t1_envptr_263" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_261", 1
  %"$uint32_one_264" = load %Uint32, %Uint32* %uint32_one
  %"$t1_call_265" = call { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_fptr_262"(i8* %"$t1_envptr_263", %Uint32 %"$uint32_one_264")
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_call_265", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_0"
  %"$t1_1" = alloca %TName_Pair_Uint32_Uint64*
  %"$$t1_0_266" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_0"
  %"$$t1_0_fptr_267" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_0_266", 0
  %"$$t1_0_envptr_268" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_0_266", 1
  %"$uint64_two_269" = load %Uint64, %Uint64* %uint64_two
  %"$$t1_0_call_270" = call %TName_Pair_Uint32_Uint64* %"$$t1_0_fptr_267"(i8* %"$$t1_0_envptr_268", %Uint64 %"$uint64_two_269")
  store %TName_Pair_Uint32_Uint64* %"$$t1_0_call_270", %TName_Pair_Uint32_Uint64** %"$t1_1"
  %"$$t1_1_271" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$t1_1"
  store %TName_Pair_Uint32_Uint64* %"$$t1_1_271", %TName_Pair_Uint32_Uint64** %p1
  %p2 = alloca %TName_Pair_String_ByStr20*
  %"$t2_2" = alloca { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }
  %"$t2_272" = load { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %t2
  %"$t2_fptr_273" = extractvalue { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$t2_272", 0
  %"$t2_envptr_274" = extractvalue { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$t2_272", 1
  %"$hello_string_275" = load %String, %String* %hello_string
  %"$t2_call_276" = call { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$t2_fptr_273"(i8* %"$t2_envptr_274", %String %"$hello_string_275")
  store { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$t2_call_276", { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$t2_2"
  %"$t2_3" = alloca %TName_Pair_String_ByStr20*
  %"$$t2_2_277" = load { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$t2_2"
  %"$$t2_2_fptr_278" = extractvalue { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$t2_2_277", 0
  %"$$t2_2_envptr_279" = extractvalue { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$t2_2_277", 1
  %"$$t2_2_addr_bystr20_280" = alloca [20 x i8]
  %"$addr_bystr20_281" = load [20 x i8], [20 x i8]* %addr_bystr20
  store [20 x i8] %"$addr_bystr20_281", [20 x i8]* %"$$t2_2_addr_bystr20_280"
  %"$$t2_2_call_282" = call %TName_Pair_String_ByStr20* %"$$t2_2_fptr_278"(i8* %"$$t2_2_envptr_279", [20 x i8]* %"$$t2_2_addr_bystr20_280")
  store %TName_Pair_String_ByStr20* %"$$t2_2_call_282", %TName_Pair_String_ByStr20** %"$t2_3"
  %"$$t2_3_283" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %"$t2_3"
  store %TName_Pair_String_ByStr20* %"$$t2_3_283", %TName_Pair_String_ByStr20** %p2
  %"$p1_284" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %p1
  %"$p2_285" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %p2
  %"$adtval_286_load" = load i8*, i8** @_execptr
  %"$adtval_286_salloc" = call i8* @_salloc(i8* %"$adtval_286_load", i64 17)
  %"$adtval_286" = bitcast i8* %"$adtval_286_salloc" to %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*
  %"$adtgep_287" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_286", i32 0, i32 0
  store i8 0, i8* %"$adtgep_287"
  %"$adtgep_288" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_286", i32 0, i32 1
  store %TName_Pair_Uint32_Uint64* %"$p1_284", %TName_Pair_Uint32_Uint64** %"$adtgep_288"
  %"$adtgep_289" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_286", i32 0, i32 2
  store %TName_Pair_String_ByStr20* %"$p2_285", %TName_Pair_String_ByStr20** %"$adtgep_289"
  %"$adtptr_290" = bitcast %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_286" to %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtptr_290", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"** %"$expr_4"
  %"$$expr_4_291" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"** %"$expr_4"
  ret %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$$expr_4_291"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_292" = call %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* @"$scilla_expr_208"(i8* null)
  %"$memvoidcast_293" = bitcast %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$exprval_292" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_63", i8* %"$memvoidcast_293")
  ret void
}
