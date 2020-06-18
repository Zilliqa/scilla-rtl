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
%"$TyDescrTy_ADTTyp_53" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_52"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_52" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_54"**, %"$TyDescrTy_ADTTyp_53"* }
%"$TyDescrTy_ADTTyp_Constr_54" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_Pair_String_ByStr20 = type { i8, %CName_Pair_String_ByStr20* }
%CName_Pair_String_ByStr20 = type <{ i8, %String, [20 x i8] }>
%String = type { i8*, i32 }
%"$$fundef_27_env_80" = type { { i8*, i8* }* }
%"$$fundef_25_env_81" = type { { i8*, i8* }* }
%TName_Pair_Uint32_Uint64 = type { i8, %CName_Pair_Uint32_Uint64* }
%CName_Pair_Uint32_Uint64 = type <{ i8, %Uint32, %Uint64 }>
%Uint64 = type { i64 }
%Uint32 = type { i32 }
%"$$fundef_23_env_82" = type { { i8*, i8* }* }
%"$$fundef_21_env_83" = type { { i8*, i8* }* }
%"$$fundef_19_env_84" = type { %String }
%"$$fundef_17_env_85" = type {}
%"$$fundef_15_env_86" = type {}
%"$$fundef_13_env_87" = type {}
%"$$fundef_11_env_88" = type { %Uint32 }
%"$$fundef_9_env_89" = type {}
%"$$fundef_7_env_90" = type {}
%"$$fundef_5_env_91" = type {}
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
@"$TyDescr_Bystr_Prim_48" = global %"$TyDescrTy_PrimTyp_29" { i32 7, i32 0 }
@"$TyDescr_Bystr_49" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Bystr_Prim_48" to i8*) }
@"$TyDescr_Bystr20_Prim_50" = global %"$TyDescrTy_PrimTyp_29" { i32 8, i32 20 }
@"$TyDescr_Bystr20_51" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_29"* @"$TyDescr_Bystr20_Prim_50" to i8*) }
@"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_55" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_65" to i8*) }
@"$TyDescr_ADT_Pair_String_ByStr20_56" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_71" to i8*) }
@"$TyDescr_ADT_Pair_Uint32_Uint64_57" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_77" to i8*) }
@"$TyDescr_Pair_ADTTyp_59" = unnamed_addr constant %"$TyDescrTy_ADTTyp_53" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_79", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 3, %"$TyDescrTy_ADTTyp_Specl_52"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_52"*], [3 x %"$TyDescrTy_ADTTyp_Specl_52"*]* @"$TyDescr_Pair_ADTTyp_m_specls_78", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_Constr_m_args_60" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_57", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr20_56"]
@"$TyDescr_ADT_Pair_61" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Constr_62" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_61", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_Constr_m_args_60", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_constrs_63" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_54"*] [%"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Constr_62"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_TArgs_64" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_57", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr20_56"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_65" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_52" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_TArgs_64", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_54"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_54"*], [1 x %"$TyDescrTy_ADTTyp_Constr_54"*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_constrs_63", i32 0, i32 0), %"$TyDescrTy_ADTTyp_53"* @"$TyDescr_Pair_ADTTyp_59" }
@"$TyDescr_Pair_Pair_String_ByStr20_Constr_m_args_66" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_47", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_51"]
@"$TyDescr_ADT_Pair_67" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_String_ByStr20_ADTTyp_Constr_68" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_67", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_String_ByStr20_Constr_m_args_66", i32 0, i32 0) }
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_constrs_69" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_54"*] [%"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Pair_Pair_String_ByStr20_ADTTyp_Constr_68"]
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_TArgs_70" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_47", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_51"]
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_71" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_52" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_TArgs_70", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_54"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_54"*], [1 x %"$TyDescrTy_ADTTyp_Constr_54"*]* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_constrs_69", i32 0, i32 0), %"$TyDescrTy_ADTTyp_53"* @"$TyDescr_Pair_ADTTyp_59" }
@"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_72" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_33", %_TyDescrTy_Typ* @"$TyDescr_Uint64_37"]
@"$TyDescr_ADT_Pair_73" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_74" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_73", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_72", i32 0, i32 0) }
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_75" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_54"*] [%"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_74"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_76" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_33", %_TyDescrTy_Typ* @"$TyDescr_Uint64_37"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_77" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_52" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_76", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_54"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_54"*], [1 x %"$TyDescrTy_ADTTyp_Constr_54"*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_75", i32 0, i32 0), %"$TyDescrTy_ADTTyp_53"* @"$TyDescr_Pair_ADTTyp_59" }
@"$TyDescr_Pair_ADTTyp_m_specls_78" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_52"*] [%"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_65", %"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_71", %"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_77"]
@"$TyDescr_ADT_Pair_79" = unnamed_addr constant [4 x i8] c"Pair"
@"$dyndisp_95" = global [4 x { i8*, i8* }] zeroinitializer
@"$dyndisp_119" = global [4 x { i8*, i8* }] zeroinitializer
@"$dyndisp_148" = global [4 x { i8*, i8* }] zeroinitializer
@"$dyndisp_174" = global [4 x { i8*, i8* }] zeroinitializer
@"$dyndisp_199" = global [4 x { i8*, i8* }] zeroinitializer
@"$dyndisp_209" = global [4 x { i8*, i8* }] zeroinitializer
@"$stringlit_236" = unnamed_addr constant [5 x i8] c"hello"

define internal { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } @"$fundef_27"(%"$$fundef_27_env_80"* %0) {
entry:
  %"$$fundef_27_env_tf_176" = getelementptr inbounds %"$$fundef_27_env_80", %"$$fundef_27_env_80"* %0, i32 0, i32 0
  %"$tf_envload_177" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_27_env_tf_176"
  %tf = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$tf_envload_177", { i8*, i8* }** %tf
  %"$retval_28" = alloca { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }
  %"$tf_178" = load { i8*, i8* }*, { i8*, i8* }** %tf
  %"$tf_179" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_178", i32 2
  %"$tf_180" = bitcast { i8*, i8* }* %"$tf_179" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_181" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_180"
  %"$tf_fptr_182" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_181", 0
  %"$tf_envptr_183" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_181", 1
  %"$tf_call_184" = call { i8*, i8* }* %"$tf_fptr_182"(i8* %"$tf_envptr_183")
  %"$tf_185" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_184", i32 3
  %"$tf_186" = bitcast { i8*, i8* }* %"$tf_185" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  %"$tf_187" = load { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$tf_186"
  %"$tf_fptr_188" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf_187", 0
  %"$tf_envptr_189" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf_187", 1
  %"$tf_call_190" = call { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf_fptr_188"(i8* %"$tf_envptr_189")
  store { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf_call_190", { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_28"
  %"$$retval_28_191" = load { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_28"
  ret { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$$retval_28_191"
}

define internal { i8*, i8* }* @"$fundef_25"(%"$$fundef_25_env_81"* %0) {
entry:
  %"$$fundef_25_env_tf_166" = getelementptr inbounds %"$$fundef_25_env_81", %"$$fundef_25_env_81"* %0, i32 0, i32 0
  %"$tf_envload_167" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_25_env_tf_166"
  %tf = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$tf_envload_167", { i8*, i8* }** %tf
  %"$retval_26" = alloca { i8*, i8* }*
  %"$$fundef_27_envp_168_load" = load i8*, i8** @_execptr
  %"$$fundef_27_envp_168_salloc" = call i8* @_salloc(i8* %"$$fundef_27_envp_168_load", i64 8)
  %"$$fundef_27_envp_168" = bitcast i8* %"$$fundef_27_envp_168_salloc" to %"$$fundef_27_env_80"*
  %"$$fundef_27_env_voidp_170" = bitcast %"$$fundef_27_env_80"* %"$$fundef_27_envp_168" to i8*
  %"$$fundef_27_cloval_171" = insertvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)* bitcast ({ { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (%"$$fundef_27_env_80"*)* @"$fundef_27" to { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_27_env_voidp_170", 1
  %"$$fundef_27_env_tf_172" = getelementptr inbounds %"$$fundef_27_env_80", %"$$fundef_27_env_80"* %"$$fundef_27_envp_168", i32 0, i32 0
  %"$tf_173" = load { i8*, i8* }*, { i8*, i8* }** %tf
  store { i8*, i8* }* %"$tf_173", { i8*, i8* }** %"$$fundef_27_env_tf_172"
  store { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$$fundef_27_cloval_171", { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([4 x { i8*, i8* }], [4 x { i8*, i8* }]* @"$dyndisp_174", i32 0, i32 3) to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([4 x { i8*, i8* }], [4 x { i8*, i8* }]* @"$dyndisp_174", i32 0, i32 0), { i8*, i8* }** %"$retval_26"
  %"$$retval_26_175" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_26"
  ret { i8*, i8* }* %"$$retval_26_175"
}

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_23"(%"$$fundef_23_env_82"* %0) {
entry:
  %"$$fundef_23_env_tf_150" = getelementptr inbounds %"$$fundef_23_env_82", %"$$fundef_23_env_82"* %0, i32 0, i32 0
  %"$tf_envload_151" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_23_env_tf_150"
  %tf = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$tf_envload_151", { i8*, i8* }** %tf
  %"$retval_24" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }
  %"$tf_152" = load { i8*, i8* }*, { i8*, i8* }** %tf
  %"$tf_153" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_152", i32 0
  %"$tf_154" = bitcast { i8*, i8* }* %"$tf_153" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_155" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_154"
  %"$tf_fptr_156" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_155", 0
  %"$tf_envptr_157" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_155", 1
  %"$tf_call_158" = call { i8*, i8* }* %"$tf_fptr_156"(i8* %"$tf_envptr_157")
  %"$tf_159" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_158", i32 1
  %"$tf_160" = bitcast { i8*, i8* }* %"$tf_159" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_161" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_160"
  %"$tf_fptr_162" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_161", 0
  %"$tf_envptr_163" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_161", 1
  %"$tf_call_164" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_fptr_162"(i8* %"$tf_envptr_163")
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_call_164", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_24"
  %"$$retval_24_165" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_24"
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_24_165"
}

define internal { i8*, i8* }* @"$fundef_21"(%"$$fundef_21_env_83"* %0) {
entry:
  %"$$fundef_21_env_tf_140" = getelementptr inbounds %"$$fundef_21_env_83", %"$$fundef_21_env_83"* %0, i32 0, i32 0
  %"$tf_envload_141" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_21_env_tf_140"
  %tf = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$tf_envload_141", { i8*, i8* }** %tf
  %"$retval_22" = alloca { i8*, i8* }*
  %"$$fundef_23_envp_142_load" = load i8*, i8** @_execptr
  %"$$fundef_23_envp_142_salloc" = call i8* @_salloc(i8* %"$$fundef_23_envp_142_load", i64 8)
  %"$$fundef_23_envp_142" = bitcast i8* %"$$fundef_23_envp_142_salloc" to %"$$fundef_23_env_82"*
  %"$$fundef_23_env_voidp_144" = bitcast %"$$fundef_23_env_82"* %"$$fundef_23_envp_142" to i8*
  %"$$fundef_23_cloval_145" = insertvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_23_env_82"*)* @"$fundef_23" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_23_env_voidp_144", 1
  %"$$fundef_23_env_tf_146" = getelementptr inbounds %"$$fundef_23_env_82", %"$$fundef_23_env_82"* %"$$fundef_23_envp_142", i32 0, i32 0
  %"$tf_147" = load { i8*, i8* }*, { i8*, i8* }** %tf
  store { i8*, i8* }* %"$tf_147", { i8*, i8* }** %"$$fundef_23_env_tf_146"
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$$fundef_23_cloval_145", { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([4 x { i8*, i8* }], [4 x { i8*, i8* }]* @"$dyndisp_148", i32 0, i32 1) to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([4 x { i8*, i8* }], [4 x { i8*, i8* }]* @"$dyndisp_148", i32 0, i32 0), { i8*, i8* }** %"$retval_22"
  %"$$retval_22_149" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_22"
  ret { i8*, i8* }* %"$$retval_22_149"
}

define internal %TName_Pair_String_ByStr20* @"$fundef_19"(%"$$fundef_19_env_84"* %0, [20 x i8]* %1) {
entry:
  %b = load [20 x i8], [20 x i8]* %1
  %"$$fundef_19_env_a_131" = getelementptr inbounds %"$$fundef_19_env_84", %"$$fundef_19_env_84"* %0, i32 0, i32 0
  %"$a_envload_132" = load %String, %String* %"$$fundef_19_env_a_131"
  %a = alloca %String
  store %String %"$a_envload_132", %String* %a
  %"$retval_20" = alloca %TName_Pair_String_ByStr20*
  %"$a_133" = load %String, %String* %a
  %"$adtval_134_load" = load i8*, i8** @_execptr
  %"$adtval_134_salloc" = call i8* @_salloc(i8* %"$adtval_134_load", i64 37)
  %"$adtval_134" = bitcast i8* %"$adtval_134_salloc" to %CName_Pair_String_ByStr20*
  %"$adtgep_135" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_134", i32 0, i32 0
  store i8 0, i8* %"$adtgep_135"
  %"$adtgep_136" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_134", i32 0, i32 1
  store %String %"$a_133", %String* %"$adtgep_136"
  %"$adtgep_137" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_134", i32 0, i32 2
  store [20 x i8] %b, [20 x i8]* %"$adtgep_137"
  %"$adtptr_138" = bitcast %CName_Pair_String_ByStr20* %"$adtval_134" to %TName_Pair_String_ByStr20*
  store %TName_Pair_String_ByStr20* %"$adtptr_138", %TName_Pair_String_ByStr20** %"$retval_20"
  %"$$retval_20_139" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %"$retval_20"
  ret %TName_Pair_String_ByStr20* %"$$retval_20_139"
}

define internal { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } @"$fundef_17"(%"$$fundef_17_env_85"* %0, %String %1) {
entry:
  %"$retval_18" = alloca { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }
  %"$$fundef_19_envp_125_load" = load i8*, i8** @_execptr
  %"$$fundef_19_envp_125_salloc" = call i8* @_salloc(i8* %"$$fundef_19_envp_125_load", i64 16)
  %"$$fundef_19_envp_125" = bitcast i8* %"$$fundef_19_envp_125_salloc" to %"$$fundef_19_env_84"*
  %"$$fundef_19_env_voidp_127" = bitcast %"$$fundef_19_env_84"* %"$$fundef_19_envp_125" to i8*
  %"$$fundef_19_cloval_128" = insertvalue { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)* bitcast (%TName_Pair_String_ByStr20* (%"$$fundef_19_env_84"*, [20 x i8]*)* @"$fundef_19" to %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_19_env_voidp_127", 1
  %"$$fundef_19_env_a_129" = getelementptr inbounds %"$$fundef_19_env_84", %"$$fundef_19_env_84"* %"$$fundef_19_envp_125", i32 0, i32 0
  store %String %1, %String* %"$$fundef_19_env_a_129"
  store { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$fundef_19_cloval_128", { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_18"
  %"$$retval_18_130" = load { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_18"
  ret { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$retval_18_130"
}

define internal { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } @"$fundef_15"(%"$$fundef_15_env_86"* %0) {
entry:
  %"$retval_16" = alloca { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }
  store { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)* bitcast ({ %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_17_env_85"*, %String)* @"$fundef_17" to { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*), i8* null }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_16"
  %"$$retval_16_124" = load { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_16"
  ret { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$$retval_16_124"
}

define internal { i8*, i8* }* @"$fundef_13"(%"$$fundef_13_env_87"* %0) {
entry:
  %"$retval_14" = alloca { i8*, i8* }*
  store { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)* bitcast ({ { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (%"$$fundef_15_env_86"*)* @"$fundef_15" to { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([4 x { i8*, i8* }], [4 x { i8*, i8* }]* @"$dyndisp_119", i32 0, i32 3) to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([4 x { i8*, i8* }], [4 x { i8*, i8* }]* @"$dyndisp_119", i32 0, i32 0), { i8*, i8* }** %"$retval_14"
  %"$$retval_14_120" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_14"
  ret { i8*, i8* }* %"$$retval_14_120"
}

define internal %TName_Pair_Uint32_Uint64* @"$fundef_11"(%"$$fundef_11_env_88"* %0, %Uint64 %1) {
entry:
  %"$$fundef_11_env_a_107" = getelementptr inbounds %"$$fundef_11_env_88", %"$$fundef_11_env_88"* %0, i32 0, i32 0
  %"$a_envload_108" = load %Uint32, %Uint32* %"$$fundef_11_env_a_107"
  %a = alloca %Uint32
  store %Uint32 %"$a_envload_108", %Uint32* %a
  %"$retval_12" = alloca %TName_Pair_Uint32_Uint64*
  %"$a_109" = load %Uint32, %Uint32* %a
  %"$adtval_110_load" = load i8*, i8** @_execptr
  %"$adtval_110_salloc" = call i8* @_salloc(i8* %"$adtval_110_load", i64 13)
  %"$adtval_110" = bitcast i8* %"$adtval_110_salloc" to %CName_Pair_Uint32_Uint64*
  %"$adtgep_111" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_110", i32 0, i32 0
  store i8 0, i8* %"$adtgep_111"
  %"$adtgep_112" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_110", i32 0, i32 1
  store %Uint32 %"$a_109", %Uint32* %"$adtgep_112"
  %"$adtgep_113" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_110", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_113"
  %"$adtptr_114" = bitcast %CName_Pair_Uint32_Uint64* %"$adtval_110" to %TName_Pair_Uint32_Uint64*
  store %TName_Pair_Uint32_Uint64* %"$adtptr_114", %TName_Pair_Uint32_Uint64** %"$retval_12"
  %"$$retval_12_115" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$retval_12"
  ret %TName_Pair_Uint32_Uint64* %"$$retval_12_115"
}

define internal { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_9"(%"$$fundef_9_env_89"* %0, %Uint32 %1) {
entry:
  %"$retval_10" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }
  %"$$fundef_11_envp_101_load" = load i8*, i8** @_execptr
  %"$$fundef_11_envp_101_salloc" = call i8* @_salloc(i8* %"$$fundef_11_envp_101_load", i64 4)
  %"$$fundef_11_envp_101" = bitcast i8* %"$$fundef_11_envp_101_salloc" to %"$$fundef_11_env_88"*
  %"$$fundef_11_env_voidp_103" = bitcast %"$$fundef_11_env_88"* %"$$fundef_11_envp_101" to i8*
  %"$$fundef_11_cloval_104" = insertvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)* bitcast (%TName_Pair_Uint32_Uint64* (%"$$fundef_11_env_88"*, %Uint64)* @"$fundef_11" to %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*), i8* undef }, i8* %"$$fundef_11_env_voidp_103", 1
  %"$$fundef_11_env_a_105" = getelementptr inbounds %"$$fundef_11_env_88", %"$$fundef_11_env_88"* %"$$fundef_11_envp_101", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_11_env_a_105"
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_11_cloval_104", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_10"
  %"$$retval_10_106" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_10"
  ret { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_10_106"
}

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_7"(%"$$fundef_7_env_90"* %0) {
entry:
  %"$retval_8" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)* bitcast ({ %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_9_env_89"*, %Uint32)* @"$fundef_9" to { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*), i8* null }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_8"
  %"$$retval_8_100" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_8"
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_8_100"
}

define internal { i8*, i8* }* @"$fundef_5"(%"$$fundef_5_env_91"* %0) {
entry:
  %"$retval_6" = alloca { i8*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_7_env_90"*)* @"$fundef_7" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([4 x { i8*, i8* }], [4 x { i8*, i8* }]* @"$dyndisp_95", i32 0, i32 1) to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([4 x { i8*, i8* }], [4 x { i8*, i8* }]* @"$dyndisp_95", i32 0, i32 0), { i8*, i8* }** %"$retval_6"
  %"$$retval_6_96" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_6"
  ret { i8*, i8* }* %"$$retval_6_96"
}

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* @"$scilla_expr_192"(i8* %0) {
entry:
  %"$expr_4" = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*
  %tf = alloca { i8*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_5_env_91"*)* @"$fundef_5" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* bitcast ([4 x { i8*, i8* }]* @"$dyndisp_199" to { { i8*, i8* }* (i8*)*, i8* }*)
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_13_env_87"*)* @"$fundef_13" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([4 x { i8*, i8* }], [4 x { i8*, i8* }]* @"$dyndisp_199", i32 0, i32 2) to { { i8*, i8* }* (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([4 x { i8*, i8* }], [4 x { i8*, i8* }]* @"$dyndisp_199", i32 0, i32 0), { i8*, i8* }** %tf
  %tf1 = alloca { i8*, i8* }*
  %"$$fundef_21_envp_200_load" = load i8*, i8** @_execptr
  %"$$fundef_21_envp_200_salloc" = call i8* @_salloc(i8* %"$$fundef_21_envp_200_load", i64 8)
  %"$$fundef_21_envp_200" = bitcast i8* %"$$fundef_21_envp_200_salloc" to %"$$fundef_21_env_83"*
  %"$$fundef_21_env_voidp_202" = bitcast %"$$fundef_21_env_83"* %"$$fundef_21_envp_200" to i8*
  %"$$fundef_21_cloval_203" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_21_env_83"*)* @"$fundef_21" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_21_env_voidp_202", 1
  %"$$fundef_21_env_tf_204" = getelementptr inbounds %"$$fundef_21_env_83", %"$$fundef_21_env_83"* %"$$fundef_21_envp_200", i32 0, i32 0
  %"$tf_205" = load { i8*, i8* }*, { i8*, i8* }** %tf
  store { i8*, i8* }* %"$tf_205", { i8*, i8* }** %"$$fundef_21_env_tf_204"
  %"$$fundef_25_env_voidp_207" = bitcast %"$$fundef_21_env_83"* %"$$fundef_21_envp_200" to i8*
  %"$$fundef_25_cloval_208" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_25_env_81"*)* @"$fundef_25" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_25_env_voidp_207", 1
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_21_cloval_203", { { i8*, i8* }* (i8*)*, i8* }* bitcast ([4 x { i8*, i8* }]* @"$dyndisp_209" to { { i8*, i8* }* (i8*)*, i8* }*)
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_25_cloval_208", { { i8*, i8* }* (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([4 x { i8*, i8* }], [4 x { i8*, i8* }]* @"$dyndisp_209", i32 0, i32 2) to { { i8*, i8* }* (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([4 x { i8*, i8* }], [4 x { i8*, i8* }]* @"$dyndisp_209", i32 0, i32 0), { i8*, i8* }** %tf1
  %t1 = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }
  %"$tf1_210" = load { i8*, i8* }*, { i8*, i8* }** %tf1
  %"$tf1_211" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_210", i32 0
  %"$tf1_212" = bitcast { i8*, i8* }* %"$tf1_211" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf1_213" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf1_212"
  %"$tf1_fptr_214" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_213", 0
  %"$tf1_envptr_215" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_213", 1
  %"$tf1_call_216" = call { i8*, i8* }* %"$tf1_fptr_214"(i8* %"$tf1_envptr_215")
  %"$tf1_217" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_call_216", i32 1
  %"$tf1_218" = bitcast { i8*, i8* }* %"$tf1_217" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf1_219" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf1_218"
  %"$tf1_fptr_220" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_219", 0
  %"$tf1_envptr_221" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_219", 1
  %"$tf1_call_222" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_fptr_220"(i8* %"$tf1_envptr_221")
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_call_222", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1
  %t2 = alloca { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }
  %"$tf1_223" = load { i8*, i8* }*, { i8*, i8* }** %tf1
  %"$tf1_224" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_223", i32 2
  %"$tf1_225" = bitcast { i8*, i8* }* %"$tf1_224" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf1_226" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf1_225"
  %"$tf1_fptr_227" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_226", 0
  %"$tf1_envptr_228" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_226", 1
  %"$tf1_call_229" = call { i8*, i8* }* %"$tf1_fptr_227"(i8* %"$tf1_envptr_228")
  %"$tf1_230" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_call_229", i32 3
  %"$tf1_231" = bitcast { i8*, i8* }* %"$tf1_230" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  %"$tf1_232" = load { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$tf1_231"
  %"$tf1_fptr_233" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf1_232", 0
  %"$tf1_envptr_234" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf1_232", 1
  %"$tf1_call_235" = call { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf1_fptr_233"(i8* %"$tf1_envptr_234")
  store { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf1_call_235", { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %t2
  %uint32_one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %uint32_one
  %uint64_two = alloca %Uint64
  store %Uint64 { i64 2 }, %Uint64* %uint64_two
  %hello_string = alloca %String
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_236", i32 0, i32 0), i32 5 }, %String* %hello_string
  %addr_bystr20 = alloca [20 x i8]
  store [20 x i8] c"\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA", [20 x i8]* %addr_bystr20
  %p1 = alloca %TName_Pair_Uint32_Uint64*
  %"$t1_0" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }
  %"$t1_237" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1
  %"$t1_fptr_238" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_237", 0
  %"$t1_envptr_239" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_237", 1
  %"$uint32_one_240" = load %Uint32, %Uint32* %uint32_one
  %"$t1_call_241" = call { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_fptr_238"(i8* %"$t1_envptr_239", %Uint32 %"$uint32_one_240")
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_call_241", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_0"
  %"$t1_1" = alloca %TName_Pair_Uint32_Uint64*
  %"$$t1_0_242" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_0"
  %"$$t1_0_fptr_243" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_0_242", 0
  %"$$t1_0_envptr_244" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_0_242", 1
  %"$uint64_two_245" = load %Uint64, %Uint64* %uint64_two
  %"$$t1_0_call_246" = call %TName_Pair_Uint32_Uint64* %"$$t1_0_fptr_243"(i8* %"$$t1_0_envptr_244", %Uint64 %"$uint64_two_245")
  store %TName_Pair_Uint32_Uint64* %"$$t1_0_call_246", %TName_Pair_Uint32_Uint64** %"$t1_1"
  %"$$t1_1_247" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$t1_1"
  store %TName_Pair_Uint32_Uint64* %"$$t1_1_247", %TName_Pair_Uint32_Uint64** %p1
  %p2 = alloca %TName_Pair_String_ByStr20*
  %"$t2_2" = alloca { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }
  %"$t2_248" = load { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %t2
  %"$t2_fptr_249" = extractvalue { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$t2_248", 0
  %"$t2_envptr_250" = extractvalue { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$t2_248", 1
  %"$hello_string_251" = load %String, %String* %hello_string
  %"$t2_call_252" = call { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$t2_fptr_249"(i8* %"$t2_envptr_250", %String %"$hello_string_251")
  store { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$t2_call_252", { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$t2_2"
  %"$t2_3" = alloca %TName_Pair_String_ByStr20*
  %"$$t2_2_253" = load { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$t2_2"
  %"$$t2_2_fptr_254" = extractvalue { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$t2_2_253", 0
  %"$$t2_2_envptr_255" = extractvalue { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$t2_2_253", 1
  %"$$t2_2_addr_bystr20_256" = alloca [20 x i8]
  %"$addr_bystr20_257" = load [20 x i8], [20 x i8]* %addr_bystr20
  store [20 x i8] %"$addr_bystr20_257", [20 x i8]* %"$$t2_2_addr_bystr20_256"
  %"$$t2_2_call_258" = call %TName_Pair_String_ByStr20* %"$$t2_2_fptr_254"(i8* %"$$t2_2_envptr_255", [20 x i8]* %"$$t2_2_addr_bystr20_256")
  store %TName_Pair_String_ByStr20* %"$$t2_2_call_258", %TName_Pair_String_ByStr20** %"$t2_3"
  %"$$t2_3_259" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %"$t2_3"
  store %TName_Pair_String_ByStr20* %"$$t2_3_259", %TName_Pair_String_ByStr20** %p2
  %"$p1_260" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %p1
  %"$p2_261" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %p2
  %"$adtval_262_load" = load i8*, i8** @_execptr
  %"$adtval_262_salloc" = call i8* @_salloc(i8* %"$adtval_262_load", i64 17)
  %"$adtval_262" = bitcast i8* %"$adtval_262_salloc" to %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*
  %"$adtgep_263" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_262", i32 0, i32 0
  store i8 0, i8* %"$adtgep_263"
  %"$adtgep_264" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_262", i32 0, i32 1
  store %TName_Pair_Uint32_Uint64* %"$p1_260", %TName_Pair_Uint32_Uint64** %"$adtgep_264"
  %"$adtgep_265" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_262", i32 0, i32 2
  store %TName_Pair_String_ByStr20* %"$p2_261", %TName_Pair_String_ByStr20** %"$adtgep_265"
  %"$adtptr_266" = bitcast %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_262" to %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtptr_266", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"** %"$expr_4"
  %"$$expr_4_267" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"** %"$expr_4"
  ret %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$$expr_4_267"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_268" = call %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* @"$scilla_expr_192"(i8* null)
  %"$memvoidcast_269" = bitcast %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$exprval_268" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_55", i8* %"$memvoidcast_269")
  ret void
}
