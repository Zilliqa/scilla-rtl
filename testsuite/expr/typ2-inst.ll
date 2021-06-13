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
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_29" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_61" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_60"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_60" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_62"**, %"$TyDescrTy_ADTTyp_61"* }
%"$TyDescrTy_ADTTyp_Constr_62" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$ParamDescr_461" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_462" = type { %ParamDescrString, i32, %"$ParamDescr_461"* }
%TName_Pair_String_ByStr20 = type { i8, %CName_Pair_String_ByStr20* }
%CName_Pair_String_ByStr20 = type <{ i8, %String, [20 x i8] }>
%String = type { i8*, i32 }
%"$$fundef_27_env_90" = type { { i8*, i8* }* }
%"$$fundef_25_env_91" = type { { i8*, i8* }* }
%TName_Pair_Uint32_Uint64 = type { i8, %CName_Pair_Uint32_Uint64* }
%CName_Pair_Uint32_Uint64 = type <{ i8, %Uint32, %Uint64 }>
%Uint64 = type { i64 }
%Uint32 = type { i32 }
%"$$fundef_23_env_92" = type { { i8*, i8* }* }
%"$$fundef_21_env_93" = type { { i8*, i8* }* }
%"$$fundef_19_env_94" = type { %String }
%"$$fundef_17_env_95" = type {}
%"$$fundef_15_env_96" = type {}
%"$$fundef_13_env_97" = type {}
%"$$fundef_11_env_98" = type { %Uint32 }
%"$$fundef_9_env_99" = type {}
%"$$fundef_7_env_100" = type {}
%"$$fundef_5_env_101" = type {}
%"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)" = type { i8, %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* }
%"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)" = type <{ i8, %TName_Pair_Uint32_Uint64*, %TName_Pair_String_ByStr20* }>

@_execptr = global i8* null
@_gasrem = global i64 0
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
@"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_63" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_75" to i8*) }
@"$TyDescr_ADT_Pair_String_ByStr20_64" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_81" to i8*) }
@"$TyDescr_ADT_Pair_Uint32_Uint64_65" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_87" to i8*) }
@"$TyDescr_Pair_ADTTyp_69" = unnamed_addr constant %"$TyDescrTy_ADTTyp_61" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_89", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 3, %"$TyDescrTy_ADTTyp_Specl_60"** getelementptr inbounds ([3 x %"$TyDescrTy_ADTTyp_Specl_60"*], [3 x %"$TyDescrTy_ADTTyp_Specl_60"*]* @"$TyDescr_Pair_ADTTyp_m_specls_88", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_Constr_m_args_70" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_65", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr20_64"]
@"$TyDescr_ADT_Pair_71" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Constr_72" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_62" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_71", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_Constr_m_args_70", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_constrs_73" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_62"*] [%"$TyDescrTy_ADTTyp_Constr_62"* @"$TyDescr_Pair_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Constr_72"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_TArgs_74" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_65", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr20_64"]
@"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_75" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_60" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_TArgs_74", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_62"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_62"*], [1 x %"$TyDescrTy_ADTTyp_Constr_62"*]* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_m_constrs_73", i32 0, i32 0), %"$TyDescrTy_ADTTyp_61"* @"$TyDescr_Pair_ADTTyp_69" }
@"$TyDescr_Pair_Pair_String_ByStr20_Constr_m_args_76" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_47", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_59"]
@"$TyDescr_ADT_Pair_77" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_String_ByStr20_ADTTyp_Constr_78" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_62" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_77", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_String_ByStr20_Constr_m_args_76", i32 0, i32 0) }
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_constrs_79" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_62"*] [%"$TyDescrTy_ADTTyp_Constr_62"* @"$TyDescr_Pair_Pair_String_ByStr20_ADTTyp_Constr_78"]
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_TArgs_80" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_47", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_59"]
@"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_81" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_60" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_TArgs_80", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_62"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_62"*], [1 x %"$TyDescrTy_ADTTyp_Constr_62"*]* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_m_constrs_79", i32 0, i32 0), %"$TyDescrTy_ADTTyp_61"* @"$TyDescr_Pair_ADTTyp_69" }
@"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_82" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_33", %_TyDescrTy_Typ* @"$TyDescr_Uint64_37"]
@"$TyDescr_ADT_Pair_83" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_84" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_62" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_83", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Uint32_Uint64_Constr_m_args_82", i32 0, i32 0) }
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_85" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_62"*] [%"$TyDescrTy_ADTTyp_Constr_62"* @"$TyDescr_Pair_Pair_Uint32_Uint64_ADTTyp_Constr_84"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_86" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint32_33", %_TyDescrTy_Typ* @"$TyDescr_Uint64_37"]
@"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_87" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_60" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_TArgs_86", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_62"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_62"*], [1 x %"$TyDescrTy_ADTTyp_Constr_62"*]* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_m_constrs_85", i32 0, i32 0), %"$TyDescrTy_ADTTyp_61"* @"$TyDescr_Pair_ADTTyp_69" }
@"$TyDescr_Pair_ADTTyp_m_specls_88" = unnamed_addr constant [3 x %"$TyDescrTy_ADTTyp_Specl_60"*] [%"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_ADTTyp_Specl_75", %"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_Pair_String_ByStr20_ADTTyp_Specl_81", %"$TyDescrTy_ADTTyp_Specl_60"* @"$TyDescr_Pair_Uint32_Uint64_ADTTyp_Specl_87"]
@"$TyDescr_ADT_Pair_89" = unnamed_addr constant [4 x i8] c"Pair"
@"$stringlit_391" = unnamed_addr constant [5 x i8] c"hello"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_53", %_TyDescrTy_Typ* @"$TyDescr_Int64_35", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr20_64", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_59", %_TyDescrTy_Typ* @"$TyDescr_Uint256_45", %_TyDescrTy_Typ* @"$TyDescr_Uint32_33", %_TyDescrTy_Typ* @"$TyDescr_Uint64_37", %_TyDescrTy_Typ* @"$TyDescr_Bnum_49", %_TyDescrTy_Typ* @"$TyDescr_Uint128_41", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Uint32_Uint64_65", %_TyDescrTy_Typ* @"$TyDescr_Exception_55", %_TyDescrTy_Typ* @"$TyDescr_String_47", %_TyDescrTy_Typ* @"$TyDescr_Int256_43", %_TyDescrTy_Typ* @"$TyDescr_Int128_39", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_63", %_TyDescrTy_Typ* @"$TyDescr_Bystr_57", %_TyDescrTy_Typ* @"$TyDescr_Message_51", %_TyDescrTy_Typ* @"$TyDescr_Int32_31"]
@_tydescr_table_length = constant i32 18
@_contract_parameters = constant [0 x %"$ParamDescr_461"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_462"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } @"$fundef_27"(%"$$fundef_27_env_90"* %0) {
entry:
  %"$$fundef_27_env_tf_249" = getelementptr inbounds %"$$fundef_27_env_90", %"$$fundef_27_env_90"* %0, i32 0, i32 0
  %"$tf_envload_250" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_27_env_tf_249", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_250", { i8*, i8* }** %tf, align 8
  %"$retval_28" = alloca { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, align 8
  %"$gasrem_251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_252" = icmp ugt i64 1, %"$gasrem_251"
  br i1 %"$gascmp_252", label %"$out_of_gas_253", label %"$have_gas_254"

"$out_of_gas_253":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_254"

"$have_gas_254":                                  ; preds = %"$out_of_gas_253", %entry
  %"$consume_255" = sub i64 %"$gasrem_251", 1
  store i64 %"$consume_255", i64* @_gasrem, align 8
  %"$tf_256" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_257" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_256", i32 2
  %"$tf_258" = bitcast { i8*, i8* }* %"$tf_257" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_259" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_258", align 8
  %"$tf_fptr_260" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_259", 0
  %"$tf_envptr_261" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_259", 1
  %"$tf_call_262" = call { i8*, i8* }* %"$tf_fptr_260"(i8* %"$tf_envptr_261")
  %"$tf_263" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_262", i32 3
  %"$tf_264" = bitcast { i8*, i8* }* %"$tf_263" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  %"$tf_265" = load { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$tf_264", align 8
  %"$tf_fptr_266" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf_265", 0
  %"$tf_envptr_267" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf_265", 1
  %"$tf_call_268" = call { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf_fptr_266"(i8* %"$tf_envptr_267")
  store { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf_call_268", { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_28", align 8
  %"$$retval_28_269" = load { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_28", align 8
  ret { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$$retval_28_269"
}

define internal { i8*, i8* }* @"$fundef_25"(%"$$fundef_25_env_91"* %0) {
entry:
  %"$$fundef_25_env_tf_232" = getelementptr inbounds %"$$fundef_25_env_91", %"$$fundef_25_env_91"* %0, i32 0, i32 0
  %"$tf_envload_233" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_25_env_tf_232", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_233", { i8*, i8* }** %tf, align 8
  %"$retval_26" = alloca { i8*, i8* }*, align 8
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 1, %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %entry
  %"$consume_238" = sub i64 %"$gasrem_234", 1
  store i64 %"$consume_238", i64* @_gasrem, align 8
  %"$$fundef_27_envp_239_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_27_envp_239_salloc" = call i8* @_salloc(i8* %"$$fundef_27_envp_239_load", i64 8)
  %"$$fundef_27_envp_239" = bitcast i8* %"$$fundef_27_envp_239_salloc" to %"$$fundef_27_env_90"*
  %"$$fundef_27_env_voidp_241" = bitcast %"$$fundef_27_env_90"* %"$$fundef_27_envp_239" to i8*
  %"$$fundef_27_cloval_242" = insertvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)* bitcast ({ { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (%"$$fundef_27_env_90"*)* @"$fundef_27" to { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_27_env_voidp_241", 1
  %"$$fundef_27_env_tf_243" = getelementptr inbounds %"$$fundef_27_env_90", %"$$fundef_27_env_90"* %"$$fundef_27_envp_239", i32 0, i32 0
  %"$tf_244" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_244", { i8*, i8* }** %"$$fundef_27_env_tf_243", align 8
  %"$dyndisp_table_245_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_245_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_245_salloc_load", i64 64)
  %"$dyndisp_table_245_salloc" = bitcast i8* %"$dyndisp_table_245_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_245" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_245_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_246" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_245", i32 3
  %"$dyndisp_pcast_247" = bitcast { i8*, i8* }* %"$dyndisp_gep_246" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$$fundef_27_cloval_242", { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_247", align 8
  store { i8*, i8* }* %"$dyndisp_table_245", { i8*, i8* }** %"$retval_26", align 8
  %"$$retval_26_248" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_26", align 8
  ret { i8*, i8* }* %"$$retval_26_248"
}

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_23"(%"$$fundef_23_env_92"* %0) {
entry:
  %"$$fundef_23_env_tf_211" = getelementptr inbounds %"$$fundef_23_env_92", %"$$fundef_23_env_92"* %0, i32 0, i32 0
  %"$tf_envload_212" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_23_env_tf_211", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_212", { i8*, i8* }** %tf, align 8
  %"$retval_24" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_214" = icmp ugt i64 1, %"$gasrem_213"
  br i1 %"$gascmp_214", label %"$out_of_gas_215", label %"$have_gas_216"

"$out_of_gas_215":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_216"

"$have_gas_216":                                  ; preds = %"$out_of_gas_215", %entry
  %"$consume_217" = sub i64 %"$gasrem_213", 1
  store i64 %"$consume_217", i64* @_gasrem, align 8
  %"$tf_218" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_219" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_218", i32 0
  %"$tf_220" = bitcast { i8*, i8* }* %"$tf_219" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_221" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_220", align 8
  %"$tf_fptr_222" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_221", 0
  %"$tf_envptr_223" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_221", 1
  %"$tf_call_224" = call { i8*, i8* }* %"$tf_fptr_222"(i8* %"$tf_envptr_223")
  %"$tf_225" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_224", i32 1
  %"$tf_226" = bitcast { i8*, i8* }* %"$tf_225" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_227" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_226", align 8
  %"$tf_fptr_228" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_227", 0
  %"$tf_envptr_229" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_227", 1
  %"$tf_call_230" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_fptr_228"(i8* %"$tf_envptr_229")
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_call_230", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_24", align 8
  %"$$retval_24_231" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_24", align 8
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_24_231"
}

define internal { i8*, i8* }* @"$fundef_21"(%"$$fundef_21_env_93"* %0) {
entry:
  %"$$fundef_21_env_tf_194" = getelementptr inbounds %"$$fundef_21_env_93", %"$$fundef_21_env_93"* %0, i32 0, i32 0
  %"$tf_envload_195" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_21_env_tf_194", align 8
  %tf = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$tf_envload_195", { i8*, i8* }** %tf, align 8
  %"$retval_22" = alloca { i8*, i8* }*, align 8
  %"$gasrem_196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_197" = icmp ugt i64 1, %"$gasrem_196"
  br i1 %"$gascmp_197", label %"$out_of_gas_198", label %"$have_gas_199"

"$out_of_gas_198":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_199"

"$have_gas_199":                                  ; preds = %"$out_of_gas_198", %entry
  %"$consume_200" = sub i64 %"$gasrem_196", 1
  store i64 %"$consume_200", i64* @_gasrem, align 8
  %"$$fundef_23_envp_201_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_23_envp_201_salloc" = call i8* @_salloc(i8* %"$$fundef_23_envp_201_load", i64 8)
  %"$$fundef_23_envp_201" = bitcast i8* %"$$fundef_23_envp_201_salloc" to %"$$fundef_23_env_92"*
  %"$$fundef_23_env_voidp_203" = bitcast %"$$fundef_23_env_92"* %"$$fundef_23_envp_201" to i8*
  %"$$fundef_23_cloval_204" = insertvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_23_env_92"*)* @"$fundef_23" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_23_env_voidp_203", 1
  %"$$fundef_23_env_tf_205" = getelementptr inbounds %"$$fundef_23_env_92", %"$$fundef_23_env_92"* %"$$fundef_23_envp_201", i32 0, i32 0
  %"$tf_206" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_206", { i8*, i8* }** %"$$fundef_23_env_tf_205", align 8
  %"$dyndisp_table_207_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_207_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_207_salloc_load", i64 64)
  %"$dyndisp_table_207_salloc" = bitcast i8* %"$dyndisp_table_207_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_207" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_207_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_208" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_207", i32 1
  %"$dyndisp_pcast_209" = bitcast { i8*, i8* }* %"$dyndisp_gep_208" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$$fundef_23_cloval_204", { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_209", align 8
  store { i8*, i8* }* %"$dyndisp_table_207", { i8*, i8* }** %"$retval_22", align 8
  %"$$retval_22_210" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_22", align 8
  ret { i8*, i8* }* %"$$retval_22_210"
}

define internal %TName_Pair_String_ByStr20* @"$fundef_19"(%"$$fundef_19_env_94"* %0, [20 x i8]* %1) {
entry:
  %b = load [20 x i8], [20 x i8]* %1, align 1
  %"$$fundef_19_env_a_180" = getelementptr inbounds %"$$fundef_19_env_94", %"$$fundef_19_env_94"* %0, i32 0, i32 0
  %"$a_envload_181" = load %String, %String* %"$$fundef_19_env_a_180", align 8
  %a = alloca %String, align 8
  store %String %"$a_envload_181", %String* %a, align 8
  %"$retval_20" = alloca %TName_Pair_String_ByStr20*, align 8
  %"$gasrem_182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_183" = icmp ugt i64 1, %"$gasrem_182"
  br i1 %"$gascmp_183", label %"$out_of_gas_184", label %"$have_gas_185"

"$out_of_gas_184":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_185"

"$have_gas_185":                                  ; preds = %"$out_of_gas_184", %entry
  %"$consume_186" = sub i64 %"$gasrem_182", 1
  store i64 %"$consume_186", i64* @_gasrem, align 8
  %"$a_187" = load %String, %String* %a, align 8
  %"$adtval_188_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_188_salloc" = call i8* @_salloc(i8* %"$adtval_188_load", i64 37)
  %"$adtval_188" = bitcast i8* %"$adtval_188_salloc" to %CName_Pair_String_ByStr20*
  %"$adtgep_189" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_188", i32 0, i32 0
  store i8 0, i8* %"$adtgep_189", align 1
  %"$adtgep_190" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_188", i32 0, i32 1
  store %String %"$a_187", %String* %"$adtgep_190", align 8
  %"$adtgep_191" = getelementptr inbounds %CName_Pair_String_ByStr20, %CName_Pair_String_ByStr20* %"$adtval_188", i32 0, i32 2
  store [20 x i8] %b, [20 x i8]* %"$adtgep_191", align 1
  %"$adtptr_192" = bitcast %CName_Pair_String_ByStr20* %"$adtval_188" to %TName_Pair_String_ByStr20*
  store %TName_Pair_String_ByStr20* %"$adtptr_192", %TName_Pair_String_ByStr20** %"$retval_20", align 8
  %"$$retval_20_193" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %"$retval_20", align 8
  ret %TName_Pair_String_ByStr20* %"$$retval_20_193"
}

define internal { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } @"$fundef_17"(%"$$fundef_17_env_95"* %0, %String %1) {
entry:
  %"$retval_18" = alloca { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$gasrem_169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_170" = icmp ugt i64 1, %"$gasrem_169"
  br i1 %"$gascmp_170", label %"$out_of_gas_171", label %"$have_gas_172"

"$out_of_gas_171":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_172"

"$have_gas_172":                                  ; preds = %"$out_of_gas_171", %entry
  %"$consume_173" = sub i64 %"$gasrem_169", 1
  store i64 %"$consume_173", i64* @_gasrem, align 8
  %"$$fundef_19_envp_174_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_19_envp_174_salloc" = call i8* @_salloc(i8* %"$$fundef_19_envp_174_load", i64 16)
  %"$$fundef_19_envp_174" = bitcast i8* %"$$fundef_19_envp_174_salloc" to %"$$fundef_19_env_94"*
  %"$$fundef_19_env_voidp_176" = bitcast %"$$fundef_19_env_94"* %"$$fundef_19_envp_174" to i8*
  %"$$fundef_19_cloval_177" = insertvalue { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)* bitcast (%TName_Pair_String_ByStr20* (%"$$fundef_19_env_94"*, [20 x i8]*)* @"$fundef_19" to %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*), i8* undef }, i8* %"$$fundef_19_env_voidp_176", 1
  %"$$fundef_19_env_a_178" = getelementptr inbounds %"$$fundef_19_env_94", %"$$fundef_19_env_94"* %"$$fundef_19_envp_174", i32 0, i32 0
  store %String %1, %String* %"$$fundef_19_env_a_178", align 8
  store { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$fundef_19_cloval_177", { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_18", align 8
  %"$$retval_18_179" = load { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$retval_18", align 8
  ret { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$retval_18_179"
}

define internal { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } @"$fundef_15"(%"$$fundef_15_env_96"* %0) {
entry:
  %"$retval_16" = alloca { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, align 8
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 1, %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %entry
  %"$consume_164" = sub i64 %"$gasrem_160", 1
  store i64 %"$consume_164", i64* @_gasrem, align 8
  store { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)* bitcast ({ %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (%"$$fundef_17_env_95"*, %String)* @"$fundef_17" to { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*), i8* null }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_16", align 8
  %"$$retval_16_168" = load { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %"$retval_16", align 8
  ret { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$$retval_16_168"
}

define internal { i8*, i8* }* @"$fundef_13"(%"$$fundef_13_env_97"* %0) {
entry:
  %"$retval_14" = alloca { i8*, i8* }*, align 8
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 1, %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %entry
  %"$consume_152" = sub i64 %"$gasrem_148", 1
  store i64 %"$consume_152", i64* @_gasrem, align 8
  %"$dyndisp_table_156_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_156_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_156_salloc_load", i64 64)
  %"$dyndisp_table_156_salloc" = bitcast i8* %"$dyndisp_table_156_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_156" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_156_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_157" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_156", i32 3
  %"$dyndisp_pcast_158" = bitcast { i8*, i8* }* %"$dyndisp_gep_157" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)* bitcast ({ { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (%"$$fundef_15_env_96"*)* @"$fundef_15" to { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_158", align 8
  store { i8*, i8* }* %"$dyndisp_table_156", { i8*, i8* }** %"$retval_14", align 8
  %"$$retval_14_159" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_14", align 8
  ret { i8*, i8* }* %"$$retval_14_159"
}

define internal %TName_Pair_Uint32_Uint64* @"$fundef_11"(%"$$fundef_11_env_98"* %0, %Uint64 %1) {
entry:
  %"$$fundef_11_env_a_134" = getelementptr inbounds %"$$fundef_11_env_98", %"$$fundef_11_env_98"* %0, i32 0, i32 0
  %"$a_envload_135" = load %Uint32, %Uint32* %"$$fundef_11_env_a_134", align 4
  %a = alloca %Uint32, align 8
  store %Uint32 %"$a_envload_135", %Uint32* %a, align 4
  %"$retval_12" = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$gasrem_136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_137" = icmp ugt i64 1, %"$gasrem_136"
  br i1 %"$gascmp_137", label %"$out_of_gas_138", label %"$have_gas_139"

"$out_of_gas_138":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_139"

"$have_gas_139":                                  ; preds = %"$out_of_gas_138", %entry
  %"$consume_140" = sub i64 %"$gasrem_136", 1
  store i64 %"$consume_140", i64* @_gasrem, align 8
  %"$a_141" = load %Uint32, %Uint32* %a, align 4
  %"$adtval_142_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_142_salloc" = call i8* @_salloc(i8* %"$adtval_142_load", i64 13)
  %"$adtval_142" = bitcast i8* %"$adtval_142_salloc" to %CName_Pair_Uint32_Uint64*
  %"$adtgep_143" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_142", i32 0, i32 0
  store i8 0, i8* %"$adtgep_143", align 1
  %"$adtgep_144" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_142", i32 0, i32 1
  store %Uint32 %"$a_141", %Uint32* %"$adtgep_144", align 4
  %"$adtgep_145" = getelementptr inbounds %CName_Pair_Uint32_Uint64, %CName_Pair_Uint32_Uint64* %"$adtval_142", i32 0, i32 2
  store %Uint64 %1, %Uint64* %"$adtgep_145", align 8
  %"$adtptr_146" = bitcast %CName_Pair_Uint32_Uint64* %"$adtval_142" to %TName_Pair_Uint32_Uint64*
  store %TName_Pair_Uint32_Uint64* %"$adtptr_146", %TName_Pair_Uint32_Uint64** %"$retval_12", align 8
  %"$$retval_12_147" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$retval_12", align 8
  ret %TName_Pair_Uint32_Uint64* %"$$retval_12_147"
}

define internal { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } @"$fundef_9"(%"$$fundef_9_env_99"* %0, %Uint32 %1) {
entry:
  %"$retval_10" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, align 8
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 1, %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %entry
  %"$consume_127" = sub i64 %"$gasrem_123", 1
  store i64 %"$consume_127", i64* @_gasrem, align 8
  %"$$fundef_11_envp_128_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_11_envp_128_salloc" = call i8* @_salloc(i8* %"$$fundef_11_envp_128_load", i64 4)
  %"$$fundef_11_envp_128" = bitcast i8* %"$$fundef_11_envp_128_salloc" to %"$$fundef_11_env_98"*
  %"$$fundef_11_env_voidp_130" = bitcast %"$$fundef_11_env_98"* %"$$fundef_11_envp_128" to i8*
  %"$$fundef_11_cloval_131" = insertvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)* bitcast (%TName_Pair_Uint32_Uint64* (%"$$fundef_11_env_98"*, %Uint64)* @"$fundef_11" to %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*), i8* undef }, i8* %"$$fundef_11_env_voidp_130", 1
  %"$$fundef_11_env_a_132" = getelementptr inbounds %"$$fundef_11_env_98", %"$$fundef_11_env_98"* %"$$fundef_11_envp_128", i32 0, i32 0
  store %Uint32 %1, %Uint32* %"$$fundef_11_env_a_132", align 4
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$fundef_11_cloval_131", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_10", align 8
  %"$$retval_10_133" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$retval_10", align 8
  ret { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$retval_10_133"
}

define internal { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_7"(%"$$fundef_7_env_100"* %0) {
entry:
  %"$retval_8" = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_115" = icmp ugt i64 1, %"$gasrem_114"
  br i1 %"$gascmp_115", label %"$out_of_gas_116", label %"$have_gas_117"

"$out_of_gas_116":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_117"

"$have_gas_117":                                  ; preds = %"$out_of_gas_116", %entry
  %"$consume_118" = sub i64 %"$gasrem_114", 1
  store i64 %"$consume_118", i64* @_gasrem, align 8
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)* bitcast ({ %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (%"$$fundef_9_env_99"*, %Uint32)* @"$fundef_9" to { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*), i8* null }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_8", align 8
  %"$$retval_8_122" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_8", align 8
  ret { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_8_122"
}

define internal { i8*, i8* }* @"$fundef_5"(%"$$fundef_5_env_101"* %0) {
entry:
  %"$retval_6" = alloca { i8*, i8* }*, align 8
  %"$gasrem_102" = load i64, i64* @_gasrem, align 8
  %"$gascmp_103" = icmp ugt i64 1, %"$gasrem_102"
  br i1 %"$gascmp_103", label %"$out_of_gas_104", label %"$have_gas_105"

"$out_of_gas_104":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_105"

"$have_gas_105":                                  ; preds = %"$out_of_gas_104", %entry
  %"$consume_106" = sub i64 %"$gasrem_102", 1
  store i64 %"$consume_106", i64* @_gasrem, align 8
  %"$dyndisp_table_110_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_110_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_110_salloc_load", i64 64)
  %"$dyndisp_table_110_salloc" = bitcast i8* %"$dyndisp_table_110_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_110" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_110_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_111" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_110", i32 1
  %"$dyndisp_pcast_112" = bitcast { i8*, i8* }* %"$dyndisp_gep_111" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_7_env_100"*)* @"$fundef_7" to { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_112", align 8
  store { i8*, i8* }* %"$dyndisp_table_110", { i8*, i8* }** %"$retval_6", align 8
  %"$$retval_6_113" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_6", align 8
  ret { i8*, i8* }* %"$$retval_6_113"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  ret void
}

define internal %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_4" = alloca %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*, align 8
  %"$gasrem_270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_271" = icmp ugt i64 1, %"$gasrem_270"
  br i1 %"$gascmp_271", label %"$out_of_gas_272", label %"$have_gas_273"

"$out_of_gas_272":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_273"

"$have_gas_273":                                  ; preds = %"$out_of_gas_272", %entry
  %"$consume_274" = sub i64 %"$gasrem_270", 1
  store i64 %"$consume_274", i64* @_gasrem, align 8
  %tf = alloca { i8*, i8* }*, align 8
  %"$gasrem_275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_276" = icmp ugt i64 1, %"$gasrem_275"
  br i1 %"$gascmp_276", label %"$out_of_gas_277", label %"$have_gas_278"

"$out_of_gas_277":                                ; preds = %"$have_gas_273"
  call void @_out_of_gas()
  br label %"$have_gas_278"

"$have_gas_278":                                  ; preds = %"$out_of_gas_277", %"$have_gas_273"
  %"$consume_279" = sub i64 %"$gasrem_275", 1
  store i64 %"$consume_279", i64* @_gasrem, align 8
  %"$dyndisp_table_286_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_286_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_286_salloc_load", i64 64)
  %"$dyndisp_table_286_salloc" = bitcast i8* %"$dyndisp_table_286_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_286" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_286_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_287" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_286", i32 0
  %"$dyndisp_pcast_288" = bitcast { i8*, i8* }* %"$dyndisp_gep_287" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_5_env_101"*)* @"$fundef_5" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_288", align 8
  %"$dyndisp_gep_289" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_286", i32 2
  %"$dyndisp_pcast_290" = bitcast { i8*, i8* }* %"$dyndisp_gep_289" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_13_env_97"*)* @"$fundef_13" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_290", align 8
  store { i8*, i8* }* %"$dyndisp_table_286", { i8*, i8* }** %tf, align 8
  %"$gasrem_291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_292" = icmp ugt i64 1, %"$gasrem_291"
  br i1 %"$gascmp_292", label %"$out_of_gas_293", label %"$have_gas_294"

"$out_of_gas_293":                                ; preds = %"$have_gas_278"
  call void @_out_of_gas()
  br label %"$have_gas_294"

"$have_gas_294":                                  ; preds = %"$out_of_gas_293", %"$have_gas_278"
  %"$consume_295" = sub i64 %"$gasrem_291", 1
  store i64 %"$consume_295", i64* @_gasrem, align 8
  %tf1 = alloca { i8*, i8* }*, align 8
  %"$gasrem_296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_297" = icmp ugt i64 1, %"$gasrem_296"
  br i1 %"$gascmp_297", label %"$out_of_gas_298", label %"$have_gas_299"

"$out_of_gas_298":                                ; preds = %"$have_gas_294"
  call void @_out_of_gas()
  br label %"$have_gas_299"

"$have_gas_299":                                  ; preds = %"$out_of_gas_298", %"$have_gas_294"
  %"$consume_300" = sub i64 %"$gasrem_296", 1
  store i64 %"$consume_300", i64* @_gasrem, align 8
  %"$$fundef_21_envp_301_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_21_envp_301_salloc" = call i8* @_salloc(i8* %"$$fundef_21_envp_301_load", i64 8)
  %"$$fundef_21_envp_301" = bitcast i8* %"$$fundef_21_envp_301_salloc" to %"$$fundef_21_env_93"*
  %"$$fundef_21_env_voidp_303" = bitcast %"$$fundef_21_env_93"* %"$$fundef_21_envp_301" to i8*
  %"$$fundef_21_cloval_304" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_21_env_93"*)* @"$fundef_21" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_21_env_voidp_303", 1
  %"$$fundef_21_env_tf_305" = getelementptr inbounds %"$$fundef_21_env_93", %"$$fundef_21_env_93"* %"$$fundef_21_envp_301", i32 0, i32 0
  %"$tf_306" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  store { i8*, i8* }* %"$tf_306", { i8*, i8* }** %"$$fundef_21_env_tf_305", align 8
  %"$$fundef_25_env_voidp_308" = bitcast %"$$fundef_21_env_93"* %"$$fundef_21_envp_301" to i8*
  %"$$fundef_25_cloval_309" = insertvalue { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_25_env_91"*)* @"$fundef_25" to { i8*, i8* }* (i8*)*), i8* undef }, i8* %"$$fundef_25_env_voidp_308", 1
  %"$dyndisp_table_310_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_310_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_310_salloc_load", i64 64)
  %"$dyndisp_table_310_salloc" = bitcast i8* %"$dyndisp_table_310_salloc_salloc" to [4 x { i8*, i8* }]*
  %"$dyndisp_table_310" = bitcast [4 x { i8*, i8* }]* %"$dyndisp_table_310_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_311" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_310", i32 0
  %"$dyndisp_pcast_312" = bitcast { i8*, i8* }* %"$dyndisp_gep_311" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_21_cloval_304", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_312", align 8
  %"$dyndisp_gep_313" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_310", i32 2
  %"$dyndisp_pcast_314" = bitcast { i8*, i8* }* %"$dyndisp_gep_313" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } %"$$fundef_25_cloval_309", { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_314", align 8
  store { i8*, i8* }* %"$dyndisp_table_310", { i8*, i8* }** %tf1, align 8
  %"$gasrem_315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_316" = icmp ugt i64 1, %"$gasrem_315"
  br i1 %"$gascmp_316", label %"$out_of_gas_317", label %"$have_gas_318"

"$out_of_gas_317":                                ; preds = %"$have_gas_299"
  call void @_out_of_gas()
  br label %"$have_gas_318"

"$have_gas_318":                                  ; preds = %"$out_of_gas_317", %"$have_gas_299"
  %"$consume_319" = sub i64 %"$gasrem_315", 1
  store i64 %"$consume_319", i64* @_gasrem, align 8
  %t1 = alloca { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_321" = icmp ugt i64 1, %"$gasrem_320"
  br i1 %"$gascmp_321", label %"$out_of_gas_322", label %"$have_gas_323"

"$out_of_gas_322":                                ; preds = %"$have_gas_318"
  call void @_out_of_gas()
  br label %"$have_gas_323"

"$have_gas_323":                                  ; preds = %"$out_of_gas_322", %"$have_gas_318"
  %"$consume_324" = sub i64 %"$gasrem_320", 1
  store i64 %"$consume_324", i64* @_gasrem, align 8
  %"$tf1_325" = load { i8*, i8* }*, { i8*, i8* }** %tf1, align 8
  %"$tf1_326" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_325", i32 0
  %"$tf1_327" = bitcast { i8*, i8* }* %"$tf1_326" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf1_328" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf1_327", align 8
  %"$tf1_fptr_329" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_328", 0
  %"$tf1_envptr_330" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_328", 1
  %"$tf1_call_331" = call { i8*, i8* }* %"$tf1_fptr_329"(i8* %"$tf1_envptr_330")
  %"$tf1_332" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_call_331", i32 1
  %"$tf1_333" = bitcast { i8*, i8* }* %"$tf1_332" to { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf1_334" = load { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf1_333", align 8
  %"$tf1_fptr_335" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_334", 0
  %"$tf1_envptr_336" = extractvalue { { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf1_334", 1
  %"$tf1_call_337" = call { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_fptr_335"(i8* %"$tf1_envptr_336")
  store { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$tf1_call_337", { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1, align 8
  %"$gasrem_338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_339" = icmp ugt i64 1, %"$gasrem_338"
  br i1 %"$gascmp_339", label %"$out_of_gas_340", label %"$have_gas_341"

"$out_of_gas_340":                                ; preds = %"$have_gas_323"
  call void @_out_of_gas()
  br label %"$have_gas_341"

"$have_gas_341":                                  ; preds = %"$out_of_gas_340", %"$have_gas_323"
  %"$consume_342" = sub i64 %"$gasrem_338", 1
  store i64 %"$consume_342", i64* @_gasrem, align 8
  %t2 = alloca { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, align 8
  %"$gasrem_343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_344" = icmp ugt i64 1, %"$gasrem_343"
  br i1 %"$gascmp_344", label %"$out_of_gas_345", label %"$have_gas_346"

"$out_of_gas_345":                                ; preds = %"$have_gas_341"
  call void @_out_of_gas()
  br label %"$have_gas_346"

"$have_gas_346":                                  ; preds = %"$out_of_gas_345", %"$have_gas_341"
  %"$consume_347" = sub i64 %"$gasrem_343", 1
  store i64 %"$consume_347", i64* @_gasrem, align 8
  %"$tf1_348" = load { i8*, i8* }*, { i8*, i8* }** %tf1, align 8
  %"$tf1_349" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_348", i32 2
  %"$tf1_350" = bitcast { i8*, i8* }* %"$tf1_349" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf1_351" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf1_350", align 8
  %"$tf1_fptr_352" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_351", 0
  %"$tf1_envptr_353" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf1_351", 1
  %"$tf1_call_354" = call { i8*, i8* }* %"$tf1_fptr_352"(i8* %"$tf1_envptr_353")
  %"$tf1_355" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf1_call_354", i32 3
  %"$tf1_356" = bitcast { i8*, i8* }* %"$tf1_355" to { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }*
  %"$tf1_357" = load { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }, { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* }* %"$tf1_356", align 8
  %"$tf1_fptr_358" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf1_357", 0
  %"$tf1_envptr_359" = extractvalue { { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } (i8*)*, i8* } %"$tf1_357", 1
  %"$tf1_call_360" = call { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf1_fptr_358"(i8* %"$tf1_envptr_359")
  store { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$tf1_call_360", { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %t2, align 8
  %"$gasrem_361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_362" = icmp ugt i64 1, %"$gasrem_361"
  br i1 %"$gascmp_362", label %"$out_of_gas_363", label %"$have_gas_364"

"$out_of_gas_363":                                ; preds = %"$have_gas_346"
  call void @_out_of_gas()
  br label %"$have_gas_364"

"$have_gas_364":                                  ; preds = %"$out_of_gas_363", %"$have_gas_346"
  %"$consume_365" = sub i64 %"$gasrem_361", 1
  store i64 %"$consume_365", i64* @_gasrem, align 8
  %uint32_one = alloca %Uint32, align 8
  %"$gasrem_366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_367" = icmp ugt i64 1, %"$gasrem_366"
  br i1 %"$gascmp_367", label %"$out_of_gas_368", label %"$have_gas_369"

"$out_of_gas_368":                                ; preds = %"$have_gas_364"
  call void @_out_of_gas()
  br label %"$have_gas_369"

"$have_gas_369":                                  ; preds = %"$out_of_gas_368", %"$have_gas_364"
  %"$consume_370" = sub i64 %"$gasrem_366", 1
  store i64 %"$consume_370", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %uint32_one, align 4
  %"$gasrem_371" = load i64, i64* @_gasrem, align 8
  %"$gascmp_372" = icmp ugt i64 1, %"$gasrem_371"
  br i1 %"$gascmp_372", label %"$out_of_gas_373", label %"$have_gas_374"

"$out_of_gas_373":                                ; preds = %"$have_gas_369"
  call void @_out_of_gas()
  br label %"$have_gas_374"

"$have_gas_374":                                  ; preds = %"$out_of_gas_373", %"$have_gas_369"
  %"$consume_375" = sub i64 %"$gasrem_371", 1
  store i64 %"$consume_375", i64* @_gasrem, align 8
  %uint64_two = alloca %Uint64, align 8
  %"$gasrem_376" = load i64, i64* @_gasrem, align 8
  %"$gascmp_377" = icmp ugt i64 1, %"$gasrem_376"
  br i1 %"$gascmp_377", label %"$out_of_gas_378", label %"$have_gas_379"

"$out_of_gas_378":                                ; preds = %"$have_gas_374"
  call void @_out_of_gas()
  br label %"$have_gas_379"

"$have_gas_379":                                  ; preds = %"$out_of_gas_378", %"$have_gas_374"
  %"$consume_380" = sub i64 %"$gasrem_376", 1
  store i64 %"$consume_380", i64* @_gasrem, align 8
  store %Uint64 { i64 2 }, %Uint64* %uint64_two, align 8
  %"$gasrem_381" = load i64, i64* @_gasrem, align 8
  %"$gascmp_382" = icmp ugt i64 1, %"$gasrem_381"
  br i1 %"$gascmp_382", label %"$out_of_gas_383", label %"$have_gas_384"

"$out_of_gas_383":                                ; preds = %"$have_gas_379"
  call void @_out_of_gas()
  br label %"$have_gas_384"

"$have_gas_384":                                  ; preds = %"$out_of_gas_383", %"$have_gas_379"
  %"$consume_385" = sub i64 %"$gasrem_381", 1
  store i64 %"$consume_385", i64* @_gasrem, align 8
  %hello_string = alloca %String, align 8
  %"$gasrem_386" = load i64, i64* @_gasrem, align 8
  %"$gascmp_387" = icmp ugt i64 1, %"$gasrem_386"
  br i1 %"$gascmp_387", label %"$out_of_gas_388", label %"$have_gas_389"

"$out_of_gas_388":                                ; preds = %"$have_gas_384"
  call void @_out_of_gas()
  br label %"$have_gas_389"

"$have_gas_389":                                  ; preds = %"$out_of_gas_388", %"$have_gas_384"
  %"$consume_390" = sub i64 %"$gasrem_386", 1
  store i64 %"$consume_390", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_391", i32 0, i32 0), i32 5 }, %String* %hello_string, align 8
  %"$gasrem_392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_393" = icmp ugt i64 1, %"$gasrem_392"
  br i1 %"$gascmp_393", label %"$out_of_gas_394", label %"$have_gas_395"

"$out_of_gas_394":                                ; preds = %"$have_gas_389"
  call void @_out_of_gas()
  br label %"$have_gas_395"

"$have_gas_395":                                  ; preds = %"$out_of_gas_394", %"$have_gas_389"
  %"$consume_396" = sub i64 %"$gasrem_392", 1
  store i64 %"$consume_396", i64* @_gasrem, align 8
  %addr_bystr20 = alloca [20 x i8], align 1
  %"$gasrem_397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_398" = icmp ugt i64 1, %"$gasrem_397"
  br i1 %"$gascmp_398", label %"$out_of_gas_399", label %"$have_gas_400"

"$out_of_gas_399":                                ; preds = %"$have_gas_395"
  call void @_out_of_gas()
  br label %"$have_gas_400"

"$have_gas_400":                                  ; preds = %"$out_of_gas_399", %"$have_gas_395"
  %"$consume_401" = sub i64 %"$gasrem_397", 1
  store i64 %"$consume_401", i64* @_gasrem, align 8
  store [20 x i8] c"\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA", [20 x i8]* %addr_bystr20, align 1
  %"$gasrem_402" = load i64, i64* @_gasrem, align 8
  %"$gascmp_403" = icmp ugt i64 1, %"$gasrem_402"
  br i1 %"$gascmp_403", label %"$out_of_gas_404", label %"$have_gas_405"

"$out_of_gas_404":                                ; preds = %"$have_gas_400"
  call void @_out_of_gas()
  br label %"$have_gas_405"

"$have_gas_405":                                  ; preds = %"$out_of_gas_404", %"$have_gas_400"
  %"$consume_406" = sub i64 %"$gasrem_402", 1
  store i64 %"$consume_406", i64* @_gasrem, align 8
  %p1 = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$gasrem_407" = load i64, i64* @_gasrem, align 8
  %"$gascmp_408" = icmp ugt i64 1, %"$gasrem_407"
  br i1 %"$gascmp_408", label %"$out_of_gas_409", label %"$have_gas_410"

"$out_of_gas_409":                                ; preds = %"$have_gas_405"
  call void @_out_of_gas()
  br label %"$have_gas_410"

"$have_gas_410":                                  ; preds = %"$out_of_gas_409", %"$have_gas_405"
  %"$consume_411" = sub i64 %"$gasrem_407", 1
  store i64 %"$consume_411", i64* @_gasrem, align 8
  %"$t1_0" = alloca { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, align 8
  %"$t1_412" = load { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }, { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* }* %t1, align 8
  %"$t1_fptr_413" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_412", 0
  %"$t1_envptr_414" = extractvalue { { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } (i8*, %Uint32)*, i8* } %"$t1_412", 1
  %"$uint32_one_415" = load %Uint32, %Uint32* %uint32_one, align 4
  %"$t1_call_416" = call { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_fptr_413"(i8* %"$t1_envptr_414", %Uint32 %"$uint32_one_415")
  store { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$t1_call_416", { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_0", align 8
  %"$t1_1" = alloca %TName_Pair_Uint32_Uint64*, align 8
  %"$$t1_0_417" = load { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }, { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* }* %"$t1_0", align 8
  %"$$t1_0_fptr_418" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_0_417", 0
  %"$$t1_0_envptr_419" = extractvalue { %TName_Pair_Uint32_Uint64* (i8*, %Uint64)*, i8* } %"$$t1_0_417", 1
  %"$uint64_two_420" = load %Uint64, %Uint64* %uint64_two, align 8
  %"$$t1_0_call_421" = call %TName_Pair_Uint32_Uint64* %"$$t1_0_fptr_418"(i8* %"$$t1_0_envptr_419", %Uint64 %"$uint64_two_420")
  store %TName_Pair_Uint32_Uint64* %"$$t1_0_call_421", %TName_Pair_Uint32_Uint64** %"$t1_1", align 8
  %"$$t1_1_422" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %"$t1_1", align 8
  store %TName_Pair_Uint32_Uint64* %"$$t1_1_422", %TName_Pair_Uint32_Uint64** %p1, align 8
  %"$gasrem_423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_424" = icmp ugt i64 1, %"$gasrem_423"
  br i1 %"$gascmp_424", label %"$out_of_gas_425", label %"$have_gas_426"

"$out_of_gas_425":                                ; preds = %"$have_gas_410"
  call void @_out_of_gas()
  br label %"$have_gas_426"

"$have_gas_426":                                  ; preds = %"$out_of_gas_425", %"$have_gas_410"
  %"$consume_427" = sub i64 %"$gasrem_423", 1
  store i64 %"$consume_427", i64* @_gasrem, align 8
  %p2 = alloca %TName_Pair_String_ByStr20*, align 8
  %"$gasrem_428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_429" = icmp ugt i64 1, %"$gasrem_428"
  br i1 %"$gascmp_429", label %"$out_of_gas_430", label %"$have_gas_431"

"$out_of_gas_430":                                ; preds = %"$have_gas_426"
  call void @_out_of_gas()
  br label %"$have_gas_431"

"$have_gas_431":                                  ; preds = %"$out_of_gas_430", %"$have_gas_426"
  %"$consume_432" = sub i64 %"$gasrem_428", 1
  store i64 %"$consume_432", i64* @_gasrem, align 8
  %"$t2_2" = alloca { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, align 8
  %"$t2_433" = load { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }, { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* }* %t2, align 8
  %"$t2_fptr_434" = extractvalue { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$t2_433", 0
  %"$t2_envptr_435" = extractvalue { { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } (i8*, %String)*, i8* } %"$t2_433", 1
  %"$hello_string_436" = load %String, %String* %hello_string, align 8
  %"$t2_call_437" = call { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$t2_fptr_434"(i8* %"$t2_envptr_435", %String %"$hello_string_436")
  store { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$t2_call_437", { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$t2_2", align 8
  %"$t2_3" = alloca %TName_Pair_String_ByStr20*, align 8
  %"$$t2_2_438" = load { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }, { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* }* %"$t2_2", align 8
  %"$$t2_2_fptr_439" = extractvalue { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$t2_2_438", 0
  %"$$t2_2_envptr_440" = extractvalue { %TName_Pair_String_ByStr20* (i8*, [20 x i8]*)*, i8* } %"$$t2_2_438", 1
  %"$$t2_2_addr_bystr20_441" = alloca [20 x i8], align 1
  %"$addr_bystr20_442" = load [20 x i8], [20 x i8]* %addr_bystr20, align 1
  store [20 x i8] %"$addr_bystr20_442", [20 x i8]* %"$$t2_2_addr_bystr20_441", align 1
  %"$$t2_2_call_443" = call %TName_Pair_String_ByStr20* %"$$t2_2_fptr_439"(i8* %"$$t2_2_envptr_440", [20 x i8]* %"$$t2_2_addr_bystr20_441")
  store %TName_Pair_String_ByStr20* %"$$t2_2_call_443", %TName_Pair_String_ByStr20** %"$t2_3", align 8
  %"$$t2_3_444" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %"$t2_3", align 8
  store %TName_Pair_String_ByStr20* %"$$t2_3_444", %TName_Pair_String_ByStr20** %p2, align 8
  %"$gasrem_445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_446" = icmp ugt i64 1, %"$gasrem_445"
  br i1 %"$gascmp_446", label %"$out_of_gas_447", label %"$have_gas_448"

"$out_of_gas_447":                                ; preds = %"$have_gas_431"
  call void @_out_of_gas()
  br label %"$have_gas_448"

"$have_gas_448":                                  ; preds = %"$out_of_gas_447", %"$have_gas_431"
  %"$consume_449" = sub i64 %"$gasrem_445", 1
  store i64 %"$consume_449", i64* @_gasrem, align 8
  %"$p1_450" = load %TName_Pair_Uint32_Uint64*, %TName_Pair_Uint32_Uint64** %p1, align 8
  %"$p2_451" = load %TName_Pair_String_ByStr20*, %TName_Pair_String_ByStr20** %p2, align 8
  %"$adtval_452_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_452_salloc" = call i8* @_salloc(i8* %"$adtval_452_load", i64 17)
  %"$adtval_452" = bitcast i8* %"$adtval_452_salloc" to %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*
  %"$adtgep_453" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_452", i32 0, i32 0
  store i8 0, i8* %"$adtgep_453", align 1
  %"$adtgep_454" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_452", i32 0, i32 1
  store %TName_Pair_Uint32_Uint64* %"$p1_450", %TName_Pair_Uint32_Uint64** %"$adtgep_454", align 8
  %"$adtgep_455" = getelementptr inbounds %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)", %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_452", i32 0, i32 2
  store %TName_Pair_String_ByStr20* %"$p2_451", %TName_Pair_String_ByStr20** %"$adtgep_455", align 8
  %"$adtptr_456" = bitcast %"CName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtval_452" to %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*
  store %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$adtptr_456", %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"** %"$expr_4", align 8
  %"$$expr_4_457" = load %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"*, %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"** %"$expr_4", align 8
  ret %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$$expr_4_457"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_458" = call %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_459" = bitcast %"TName_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)"* %"$exprval_458" to i8*
  %"$execptr_load_460" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_460", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Pair_(Uint32)_(Uint64)_Pair_(String)_(ByStr20)_63", i8* %"$memvoidcast_459")
  ret void
}
