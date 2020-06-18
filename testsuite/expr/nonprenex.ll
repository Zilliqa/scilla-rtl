; let list_length_dummy =
; tfun 'A =>
; fun (l : List 'A) =>
; Uint32 0
; in
; 
; let list_length2 =
; tfun 'A =>
; fun (l : List 'A) =>
; let ll = @list_length_dummy 'A in
; let n = ll l in
; let two = Uint32 2 in
; builtin add n two
; in
; 
; let t =
; fun (b : Bool) =>
; fun (f : forall 'A. List 'A -> Uint32) =>
; fun (g : forall 'A. List 'A -> Uint32) =>
; match b with
; | True => g
; | False => f
; end
; in
; 
; let true = True in
; 
; let f = t true list_length_dummy list_length2 in
; 
; let f_string = @f String in
; let f_bystr20 = @f ByStr20 in
; let nil_string = Nil {String} in
; let nil_bystr20 = Nil {ByStr20} in
; 
; let a = f_string nil_string in
; let b = f_bystr20 nil_bystr20 in
; builtin add a b
; 
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
%"$$fundef_27_env_92" = type { %Bool*, { i8*, i8* }* }
%Bool = type { i8, %True*, %False* }
%True = type <{ i8 }>
%False = type <{ i8 }>
%"$$fundef_25_env_93" = type { %Bool* }
%"$$fundef_23_env_94" = type {}
%Uint32 = type { i32 }
%"$$fundef_21_env_95" = type { { i8*, i8* }* }
%TName_List_ByStr20 = type { i8, %CName_Cons_ByStr20*, %CName_Nil_ByStr20* }
%CName_Cons_ByStr20 = type <{ i8, [20 x i8], %TName_List_ByStr20* }>
%CName_Nil_ByStr20 = type <{ i8 }>
%"$$fundef_19_env_96" = type { { i8*, i8* }* }
%"$$fundef_17_env_97" = type { { i8*, i8* }* }
%TName_List_String = type { i8, %CName_Cons_String*, %CName_Nil_String* }
%CName_Cons_String = type <{ i8, %String, %TName_List_String* }>
%String = type { i8*, i32 }
%CName_Nil_String = type <{ i8 }>
%"$$fundef_15_env_98" = type { { i8*, i8* }* }
%"$$fundef_13_env_99" = type {}
%"$$fundef_11_env_100" = type {}
%"$$fundef_9_env_101" = type {}
%"$$fundef_7_env_102" = type {}

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
@"$TyDescr_ADT_Bool_55" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Bool_ADTTyp_Specl_68" to i8*) }
@"$TyDescr_ADT_List_ByStr20_56" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_List_ByStr20_ADTTyp_Specl_80" to i8*) }
@"$TyDescr_ADT_List_String_57" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_List_String_ADTTyp_Specl_89" to i8*) }
@"$TyDescr_Bool_ADTTyp_59" = unnamed_addr constant %"$TyDescrTy_ADTTyp_53" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_70", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_52"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_52"*], [1 x %"$TyDescrTy_ADTTyp_Specl_52"*]* @"$TyDescr_Bool_ADTTyp_m_specls_69", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_60" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_61" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_62" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_61", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_60", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_63" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_64" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_65" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_64", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_63", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_66" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_54"*] [%"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Bool_True_ADTTyp_Constr_62", %"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Bool_False_ADTTyp_Constr_65"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_67" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_68" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_52" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_67", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_54"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_54"*], [2 x %"$TyDescrTy_ADTTyp_Constr_54"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_66", i32 0, i32 0), %"$TyDescrTy_ADTTyp_53"* @"$TyDescr_Bool_ADTTyp_59" }
@"$TyDescr_Bool_ADTTyp_m_specls_69" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_52"*] [%"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Bool_ADTTyp_Specl_68"]
@"$TyDescr_ADT_Bool_70" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_List_ADTTyp_71" = unnamed_addr constant %"$TyDescrTy_ADTTyp_53" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_91", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_52"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_52"*], [2 x %"$TyDescrTy_ADTTyp_Specl_52"*]* @"$TyDescr_List_ADTTyp_m_specls_90", i32 0, i32 0) }
@"$TyDescr_List_Cons_ByStr20_Constr_m_args_72" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_51", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_ByStr20_56"]
@"$TyDescr_ADT_Cons_73" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_ByStr20_ADTTyp_Constr_74" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_73", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_ByStr20_Constr_m_args_72", i32 0, i32 0) }
@"$TyDescr_List_Nil_ByStr20_Constr_m_args_75" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_76" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_ByStr20_ADTTyp_Constr_77" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_76", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_ByStr20_Constr_m_args_75", i32 0, i32 0) }
@"$TyDescr_List_ByStr20_ADTTyp_Specl_m_constrs_78" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_54"*] [%"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_List_Cons_ByStr20_ADTTyp_Constr_74", %"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_List_Nil_ByStr20_ADTTyp_Constr_77"]
@"$TyDescr_List_ByStr20_ADTTyp_Specl_m_TArgs_79" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr20_51"]
@"$TyDescr_List_ByStr20_ADTTyp_Specl_80" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_52" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_ByStr20_ADTTyp_Specl_m_TArgs_79", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_54"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_54"*], [2 x %"$TyDescrTy_ADTTyp_Constr_54"*]* @"$TyDescr_List_ByStr20_ADTTyp_Specl_m_constrs_78", i32 0, i32 0), %"$TyDescrTy_ADTTyp_53"* @"$TyDescr_List_ADTTyp_71" }
@"$TyDescr_List_Cons_String_Constr_m_args_81" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_47", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_String_57"]
@"$TyDescr_ADT_Cons_82" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_String_ADTTyp_Constr_83" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_82", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_String_Constr_m_args_81", i32 0, i32 0) }
@"$TyDescr_List_Nil_String_Constr_m_args_84" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_85" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_String_ADTTyp_Constr_86" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_85", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_String_Constr_m_args_84", i32 0, i32 0) }
@"$TyDescr_List_String_ADTTyp_Specl_m_constrs_87" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_54"*] [%"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_List_Cons_String_ADTTyp_Constr_83", %"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_List_Nil_String_ADTTyp_Constr_86"]
@"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_88" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_47"]
@"$TyDescr_List_String_ADTTyp_Specl_89" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_52" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_String_ADTTyp_Specl_m_TArgs_88", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_54"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_54"*], [2 x %"$TyDescrTy_ADTTyp_Constr_54"*]* @"$TyDescr_List_String_ADTTyp_Specl_m_constrs_87", i32 0, i32 0), %"$TyDescrTy_ADTTyp_53"* @"$TyDescr_List_ADTTyp_71" }
@"$TyDescr_List_ADTTyp_m_specls_90" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_52"*] [%"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_List_ByStr20_ADTTyp_Specl_80", %"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_List_String_ADTTyp_Specl_89"]
@"$TyDescr_ADT_List_91" = unnamed_addr constant [4 x i8] c"List"
@"$dyndisp_205" = global [2 x { i8*, i8* }] zeroinitializer
@"$dyndisp_215" = global [2 x { i8*, i8* }] zeroinitializer

define internal { i8*, i8* }* @"$fundef_27"(%"$$fundef_27_env_92"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_27_env_b_183" = getelementptr inbounds %"$$fundef_27_env_92", %"$$fundef_27_env_92"* %0, i32 0, i32 0
  %"$b_envload_184" = load %Bool*, %Bool** %"$$fundef_27_env_b_183"
  %b = alloca %Bool*
  store %Bool* %"$b_envload_184", %Bool** %b
  %"$$fundef_27_env_f_185" = getelementptr inbounds %"$$fundef_27_env_92", %"$$fundef_27_env_92"* %0, i32 0, i32 1
  %"$f_envload_186" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_27_env_f_185"
  %f = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$f_envload_186", { i8*, i8* }** %f
  %"$retval_28" = alloca { i8*, i8* }*
  %"$b_188" = load %Bool*, %Bool** %b
  %"$b_tag_189" = getelementptr inbounds %Bool, %Bool* %"$b_188", i32 0, i32 0
  %"$b_tag_190" = load i8, i8* %"$b_tag_189"
  switch i8 %"$b_tag_190", label %"$empty_default_191" [
    i8 0, label %"$True_192"
    i8 1, label %"$False_194"
  ]

"$True_192":                                      ; preds = %entry
  %"$b_193" = bitcast %Bool* %"$b_188" to %True*
  store { i8*, i8* }* %1, { i8*, i8* }** %"$retval_28"
  br label %"$matchsucc_187"

"$False_194":                                     ; preds = %entry
  %"$b_195" = bitcast %Bool* %"$b_188" to %False*
  %"$f_196" = load { i8*, i8* }*, { i8*, i8* }** %f
  store { i8*, i8* }* %"$f_196", { i8*, i8* }** %"$retval_28"
  br label %"$matchsucc_187"

"$empty_default_191":                             ; preds = %entry
  br label %"$matchsucc_187"

"$matchsucc_187":                                 ; preds = %"$False_194", %"$True_192", %"$empty_default_191"
  %"$$retval_28_197" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_28"
  ret { i8*, i8* }* %"$$retval_28_197"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_25"(%"$$fundef_25_env_93"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_25_env_b_173" = getelementptr inbounds %"$$fundef_25_env_93", %"$$fundef_25_env_93"* %0, i32 0, i32 0
  %"$b_envload_174" = load %Bool*, %Bool** %"$$fundef_25_env_b_173"
  %b = alloca %Bool*
  store %Bool* %"$b_envload_174", %Bool** %b
  %"$retval_26" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$$fundef_27_envp_175_load" = load i8*, i8** @_execptr
  %"$$fundef_27_envp_175_salloc" = call i8* @_salloc(i8* %"$$fundef_27_envp_175_load", i64 16)
  %"$$fundef_27_envp_175" = bitcast i8* %"$$fundef_27_envp_175_salloc" to %"$$fundef_27_env_92"*
  %"$$fundef_27_env_voidp_177" = bitcast %"$$fundef_27_env_92"* %"$$fundef_27_envp_175" to i8*
  %"$$fundef_27_cloval_178" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_27_env_92"*, { i8*, i8* }*)* @"$fundef_27" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_27_env_voidp_177", 1
  %"$$fundef_27_env_b_179" = getelementptr inbounds %"$$fundef_27_env_92", %"$$fundef_27_env_92"* %"$$fundef_27_envp_175", i32 0, i32 0
  %"$b_180" = load %Bool*, %Bool** %b
  store %Bool* %"$b_180", %Bool** %"$$fundef_27_env_b_179"
  %"$$fundef_27_env_f_181" = getelementptr inbounds %"$$fundef_27_env_92", %"$$fundef_27_env_92"* %"$$fundef_27_envp_175", i32 0, i32 1
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_27_env_f_181"
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_27_cloval_178", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_26"
  %"$$retval_26_182" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_26"
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_26_182"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } @"$fundef_23"(%"$$fundef_23_env_94"* %0, %Bool* %1) {
entry:
  %"$retval_24" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  %"$$fundef_25_envp_167_load" = load i8*, i8** @_execptr
  %"$$fundef_25_envp_167_salloc" = call i8* @_salloc(i8* %"$$fundef_25_envp_167_load", i64 8)
  %"$$fundef_25_envp_167" = bitcast i8* %"$$fundef_25_envp_167_salloc" to %"$$fundef_25_env_93"*
  %"$$fundef_25_env_voidp_169" = bitcast %"$$fundef_25_env_93"* %"$$fundef_25_envp_167" to i8*
  %"$$fundef_25_cloval_170" = insertvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_25_env_93"*, { i8*, i8* }*)* @"$fundef_25" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_25_env_voidp_169", 1
  %"$$fundef_25_env_b_171" = getelementptr inbounds %"$$fundef_25_env_93", %"$$fundef_25_env_93"* %"$$fundef_25_envp_167", i32 0, i32 0
  store %Bool* %1, %Bool** %"$$fundef_25_env_b_171"
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_25_cloval_170", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_24"
  %"$$retval_24_172" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$retval_24"
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$retval_24_172"
}

define internal %Uint32 @"$fundef_21"(%"$$fundef_21_env_95"* %0, %TName_List_ByStr20* %1) {
entry:
  %"$$fundef_21_env_list_length_dummy_149" = getelementptr inbounds %"$$fundef_21_env_95", %"$$fundef_21_env_95"* %0, i32 0, i32 0
  %"$list_length_dummy_envload_150" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_21_env_list_length_dummy_149"
  %list_length_dummy = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_length_dummy_envload_150", { i8*, i8* }** %list_length_dummy
  %"$retval_22" = alloca %Uint32
  %ll = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }
  %"$list_length_dummy_151" = load { i8*, i8* }*, { i8*, i8* }** %list_length_dummy
  %"$list_length_dummy_152" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_length_dummy_151", i32 1
  %"$list_length_dummy_153" = bitcast { i8*, i8* }* %"$list_length_dummy_152" to { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }*
  %"$list_length_dummy_154" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }* %"$list_length_dummy_153"
  %"$list_length_dummy_fptr_155" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$list_length_dummy_154", 0
  %"$list_length_dummy_envptr_156" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$list_length_dummy_154", 1
  %"$list_length_dummy_call_157" = call { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$list_length_dummy_fptr_155"(i8* %"$list_length_dummy_envptr_156")
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$list_length_dummy_call_157", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %ll
  %n = alloca %Uint32
  %"$ll_0" = alloca %Uint32
  %"$ll_158" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %ll
  %"$ll_fptr_159" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$ll_158", 0
  %"$ll_envptr_160" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$ll_158", 1
  %"$ll_call_161" = call %Uint32 %"$ll_fptr_159"(i8* %"$ll_envptr_160", %TName_List_ByStr20* %1)
  store %Uint32 %"$ll_call_161", %Uint32* %"$ll_0"
  %"$$ll_0_162" = load %Uint32, %Uint32* %"$ll_0"
  store %Uint32 %"$$ll_0_162", %Uint32* %n
  %two = alloca %Uint32
  store %Uint32 { i32 2 }, %Uint32* %two
  %"$n_163" = load %Uint32, %Uint32* %n
  %"$two_164" = load %Uint32, %Uint32* %two
  %"$add_call_165" = call %Uint32 @_add_Uint32(%Uint32 %"$n_163", %Uint32 %"$two_164")
  store %Uint32 %"$add_call_165", %Uint32* %"$retval_22"
  %"$$retval_22_166" = load %Uint32, %Uint32* %"$retval_22"
  ret %Uint32 %"$$retval_22_166"
}

define internal { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_19"(%"$$fundef_19_env_96"* %0) {
entry:
  %"$$fundef_19_env_list_length_dummy_140" = getelementptr inbounds %"$$fundef_19_env_96", %"$$fundef_19_env_96"* %0, i32 0, i32 0
  %"$list_length_dummy_envload_141" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_19_env_list_length_dummy_140"
  %list_length_dummy = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_length_dummy_envload_141", { i8*, i8* }** %list_length_dummy
  %"$retval_20" = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }
  %"$$fundef_21_envp_142_load" = load i8*, i8** @_execptr
  %"$$fundef_21_envp_142_salloc" = call i8* @_salloc(i8* %"$$fundef_21_envp_142_load", i64 8)
  %"$$fundef_21_envp_142" = bitcast i8* %"$$fundef_21_envp_142_salloc" to %"$$fundef_21_env_95"*
  %"$$fundef_21_env_voidp_144" = bitcast %"$$fundef_21_env_95"* %"$$fundef_21_envp_142" to i8*
  %"$$fundef_21_cloval_145" = insertvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } { %Uint32 (i8*, %TName_List_ByStr20*)* bitcast (%Uint32 (%"$$fundef_21_env_95"*, %TName_List_ByStr20*)* @"$fundef_21" to %Uint32 (i8*, %TName_List_ByStr20*)*), i8* undef }, i8* %"$$fundef_21_env_voidp_144", 1
  %"$$fundef_21_env_list_length_dummy_146" = getelementptr inbounds %"$$fundef_21_env_95", %"$$fundef_21_env_95"* %"$$fundef_21_envp_142", i32 0, i32 0
  %"$list_length_dummy_147" = load { i8*, i8* }*, { i8*, i8* }** %list_length_dummy
  store { i8*, i8* }* %"$list_length_dummy_147", { i8*, i8* }** %"$$fundef_21_env_list_length_dummy_146"
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$fundef_21_cloval_145", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_20"
  %"$$retval_20_148" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_20"
  ret { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_20_148"
}

define internal %Uint32 @"$fundef_17"(%"$$fundef_17_env_97"* %0, %TName_List_String* %1) {
entry:
  %"$$fundef_17_env_list_length_dummy_122" = getelementptr inbounds %"$$fundef_17_env_97", %"$$fundef_17_env_97"* %0, i32 0, i32 0
  %"$list_length_dummy_envload_123" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_17_env_list_length_dummy_122"
  %list_length_dummy = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_length_dummy_envload_123", { i8*, i8* }** %list_length_dummy
  %"$retval_18" = alloca %Uint32
  %ll = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }
  %"$list_length_dummy_124" = load { i8*, i8* }*, { i8*, i8* }** %list_length_dummy
  %"$list_length_dummy_125" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$list_length_dummy_124", i32 0
  %"$list_length_dummy_126" = bitcast { i8*, i8* }* %"$list_length_dummy_125" to { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }*
  %"$list_length_dummy_127" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }* %"$list_length_dummy_126"
  %"$list_length_dummy_fptr_128" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$list_length_dummy_127", 0
  %"$list_length_dummy_envptr_129" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$list_length_dummy_127", 1
  %"$list_length_dummy_call_130" = call { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$list_length_dummy_fptr_128"(i8* %"$list_length_dummy_envptr_129")
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$list_length_dummy_call_130", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %ll
  %n = alloca %Uint32
  %"$ll_0" = alloca %Uint32
  %"$ll_131" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %ll
  %"$ll_fptr_132" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$ll_131", 0
  %"$ll_envptr_133" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$ll_131", 1
  %"$ll_call_134" = call %Uint32 %"$ll_fptr_132"(i8* %"$ll_envptr_133", %TName_List_String* %1)
  store %Uint32 %"$ll_call_134", %Uint32* %"$ll_0"
  %"$$ll_0_135" = load %Uint32, %Uint32* %"$ll_0"
  store %Uint32 %"$$ll_0_135", %Uint32* %n
  %two = alloca %Uint32
  store %Uint32 { i32 2 }, %Uint32* %two
  %"$n_136" = load %Uint32, %Uint32* %n
  %"$two_137" = load %Uint32, %Uint32* %two
  %"$add_call_138" = call %Uint32 @_add_Uint32(%Uint32 %"$n_136", %Uint32 %"$two_137")
  store %Uint32 %"$add_call_138", %Uint32* %"$retval_18"
  %"$$retval_18_139" = load %Uint32, %Uint32* %"$retval_18"
  ret %Uint32 %"$$retval_18_139"
}

define internal { %Uint32 (i8*, %TName_List_String*)*, i8* } @"$fundef_15"(%"$$fundef_15_env_98"* %0) {
entry:
  %"$$fundef_15_env_list_length_dummy_113" = getelementptr inbounds %"$$fundef_15_env_98", %"$$fundef_15_env_98"* %0, i32 0, i32 0
  %"$list_length_dummy_envload_114" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_15_env_list_length_dummy_113"
  %list_length_dummy = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$list_length_dummy_envload_114", { i8*, i8* }** %list_length_dummy
  %"$retval_16" = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }
  %"$$fundef_17_envp_115_load" = load i8*, i8** @_execptr
  %"$$fundef_17_envp_115_salloc" = call i8* @_salloc(i8* %"$$fundef_17_envp_115_load", i64 8)
  %"$$fundef_17_envp_115" = bitcast i8* %"$$fundef_17_envp_115_salloc" to %"$$fundef_17_env_97"*
  %"$$fundef_17_env_voidp_117" = bitcast %"$$fundef_17_env_97"* %"$$fundef_17_envp_115" to i8*
  %"$$fundef_17_cloval_118" = insertvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } { %Uint32 (i8*, %TName_List_String*)* bitcast (%Uint32 (%"$$fundef_17_env_97"*, %TName_List_String*)* @"$fundef_17" to %Uint32 (i8*, %TName_List_String*)*), i8* undef }, i8* %"$$fundef_17_env_voidp_117", 1
  %"$$fundef_17_env_list_length_dummy_119" = getelementptr inbounds %"$$fundef_17_env_97", %"$$fundef_17_env_97"* %"$$fundef_17_envp_115", i32 0, i32 0
  %"$list_length_dummy_120" = load { i8*, i8* }*, { i8*, i8* }** %list_length_dummy
  store { i8*, i8* }* %"$list_length_dummy_120", { i8*, i8* }** %"$$fundef_17_env_list_length_dummy_119"
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$fundef_17_cloval_118", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_16"
  %"$$retval_16_121" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_16"
  ret { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$retval_16_121"
}

define internal %Uint32 @"$fundef_13"(%"$$fundef_13_env_99"* %0, %TName_List_ByStr20* %1) {
entry:
  %"$retval_14" = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %"$retval_14"
  %"$$retval_14_112" = load %Uint32, %Uint32* %"$retval_14"
  ret %Uint32 %"$$retval_14_112"
}

define internal { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } @"$fundef_11"(%"$$fundef_11_env_100"* %0) {
entry:
  %"$retval_12" = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } { %Uint32 (i8*, %TName_List_ByStr20*)* bitcast (%Uint32 (%"$$fundef_13_env_99"*, %TName_List_ByStr20*)* @"$fundef_13" to %Uint32 (i8*, %TName_List_ByStr20*)*), i8* null }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_12"
  %"$$retval_12_111" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %"$retval_12"
  ret { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$$retval_12_111"
}

define internal %Uint32 @"$fundef_9"(%"$$fundef_9_env_101"* %0, %TName_List_String* %1) {
entry:
  %"$retval_10" = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %"$retval_10"
  %"$$retval_10_107" = load %Uint32, %Uint32* %"$retval_10"
  ret %Uint32 %"$$retval_10_107"
}

define internal { %Uint32 (i8*, %TName_List_String*)*, i8* } @"$fundef_7"(%"$$fundef_7_env_102"* %0) {
entry:
  %"$retval_8" = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } { %Uint32 (i8*, %TName_List_String*)* bitcast (%Uint32 (%"$$fundef_9_env_101"*, %TName_List_String*)* @"$fundef_9" to %Uint32 (i8*, %TName_List_String*)*), i8* null }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_8"
  %"$$retval_8_106" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %"$retval_8"
  ret { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$$retval_8_106"
}

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_198"(i8* %0) {
entry:
  %"$expr_6" = alloca %Uint32
  %list_length_dummy = alloca { i8*, i8* }*
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_String*)*, i8* } (%"$$fundef_7_env_102"*)* @"$fundef_7" to { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*), i8* null }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }* bitcast ([2 x { i8*, i8* }]* @"$dyndisp_205" to { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }*)
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_11_env_100"*)* @"$fundef_11" to { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*), i8* null }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([2 x { i8*, i8* }], [2 x { i8*, i8* }]* @"$dyndisp_205", i32 0, i32 1) to { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([2 x { i8*, i8* }], [2 x { i8*, i8* }]* @"$dyndisp_205", i32 0, i32 0), { i8*, i8* }** %list_length_dummy
  %list_length2 = alloca { i8*, i8* }*
  %"$$fundef_15_envp_206_load" = load i8*, i8** @_execptr
  %"$$fundef_15_envp_206_salloc" = call i8* @_salloc(i8* %"$$fundef_15_envp_206_load", i64 8)
  %"$$fundef_15_envp_206" = bitcast i8* %"$$fundef_15_envp_206_salloc" to %"$$fundef_15_env_98"*
  %"$$fundef_15_env_voidp_208" = bitcast %"$$fundef_15_env_98"* %"$$fundef_15_envp_206" to i8*
  %"$$fundef_15_cloval_209" = insertvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_String*)*, i8* } (%"$$fundef_15_env_98"*)* @"$fundef_15" to { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_15_env_voidp_208", 1
  %"$$fundef_15_env_list_length_dummy_210" = getelementptr inbounds %"$$fundef_15_env_98", %"$$fundef_15_env_98"* %"$$fundef_15_envp_206", i32 0, i32 0
  %"$list_length_dummy_211" = load { i8*, i8* }*, { i8*, i8* }** %list_length_dummy
  store { i8*, i8* }* %"$list_length_dummy_211", { i8*, i8* }** %"$$fundef_15_env_list_length_dummy_210"
  %"$$fundef_19_env_voidp_213" = bitcast %"$$fundef_15_env_98"* %"$$fundef_15_envp_206" to i8*
  %"$$fundef_19_cloval_214" = insertvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)* bitcast ({ %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (%"$$fundef_19_env_96"*)* @"$fundef_19" to { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_19_env_voidp_213", 1
  store { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$$fundef_15_cloval_209", { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }* bitcast ([2 x { i8*, i8* }]* @"$dyndisp_215" to { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }*)
  store { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$$fundef_19_cloval_214", { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }* bitcast ({ i8*, i8* }* getelementptr inbounds ([2 x { i8*, i8* }], [2 x { i8*, i8* }]* @"$dyndisp_215", i32 0, i32 1) to { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }*)
  store { i8*, i8* }* getelementptr inbounds ([2 x { i8*, i8* }], [2 x { i8*, i8* }]* @"$dyndisp_215", i32 0, i32 0), { i8*, i8* }** %list_length2
  %t = alloca { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)*, i8* }
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_23_env_94"*, %Bool*)* @"$fundef_23" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)*), i8* null }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)*, i8* }* %t
  %true = alloca %Bool*
  %"$adtval_219_load" = load i8*, i8** @_execptr
  %"$adtval_219_salloc" = call i8* @_salloc(i8* %"$adtval_219_load", i64 1)
  %"$adtval_219" = bitcast i8* %"$adtval_219_salloc" to %True*
  %"$adtgep_220" = getelementptr inbounds %True, %True* %"$adtval_219", i32 0, i32 0
  store i8 0, i8* %"$adtgep_220"
  %"$adtptr_221" = bitcast %True* %"$adtval_219" to %Bool*
  store %Bool* %"$adtptr_221", %Bool** %true
  %f = alloca { i8*, i8* }*
  %"$t_1" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  %"$t_222" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)*, i8* }* %t
  %"$t_fptr_223" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)*, i8* } %"$t_222", 0
  %"$t_envptr_224" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } (i8*, %Bool*)*, i8* } %"$t_222", 1
  %"$true_225" = load %Bool*, %Bool** %true
  %"$t_call_226" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_fptr_223"(i8* %"$t_envptr_224", %Bool* %"$true_225")
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$t_call_226", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$t_1"
  %"$t_2" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$$t_1_227" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$t_1"
  %"$$t_1_fptr_228" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$t_1_227", 0
  %"$$t_1_envptr_229" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$t_1_227", 1
  %"$list_length_dummy_230" = load { i8*, i8* }*, { i8*, i8* }** %list_length_dummy
  %"$$t_1_call_231" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$t_1_fptr_228"(i8* %"$$t_1_envptr_229", { i8*, i8* }* %"$list_length_dummy_230")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$t_1_call_231", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$t_2"
  %"$t_3" = alloca { i8*, i8* }*
  %"$$t_2_232" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$t_2"
  %"$$t_2_fptr_233" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$t_2_232", 0
  %"$$t_2_envptr_234" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$t_2_232", 1
  %"$list_length2_235" = load { i8*, i8* }*, { i8*, i8* }** %list_length2
  %"$$t_2_call_236" = call { i8*, i8* }* %"$$t_2_fptr_233"(i8* %"$$t_2_envptr_234", { i8*, i8* }* %"$list_length2_235")
  store { i8*, i8* }* %"$$t_2_call_236", { i8*, i8* }** %"$t_3"
  %"$$t_3_237" = load { i8*, i8* }*, { i8*, i8* }** %"$t_3"
  store { i8*, i8* }* %"$$t_3_237", { i8*, i8* }** %f
  %f_string = alloca { %Uint32 (i8*, %TName_List_String*)*, i8* }
  %"$f_238" = load { i8*, i8* }*, { i8*, i8* }** %f
  %"$f_239" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_238", i32 0
  %"$f_240" = bitcast { i8*, i8* }* %"$f_239" to { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }*
  %"$f_241" = load { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* }* %"$f_240"
  %"$f_fptr_242" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$f_241", 0
  %"$f_envptr_243" = extractvalue { { %Uint32 (i8*, %TName_List_String*)*, i8* } (i8*)*, i8* } %"$f_241", 1
  %"$f_call_244" = call { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$f_fptr_242"(i8* %"$f_envptr_243")
  store { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$f_call_244", { %Uint32 (i8*, %TName_List_String*)*, i8* }* %f_string
  %f_bystr20 = alloca { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }
  %"$f_245" = load { i8*, i8* }*, { i8*, i8* }** %f
  %"$f_246" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$f_245", i32 1
  %"$f_247" = bitcast { i8*, i8* }* %"$f_246" to { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }*
  %"$f_248" = load { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }, { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* }* %"$f_247"
  %"$f_fptr_249" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$f_248", 0
  %"$f_envptr_250" = extractvalue { { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } (i8*)*, i8* } %"$f_248", 1
  %"$f_call_251" = call { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$f_fptr_249"(i8* %"$f_envptr_250")
  store { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$f_call_251", { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %f_bystr20
  %nil_string = alloca %TName_List_String*
  %"$adtval_252_load" = load i8*, i8** @_execptr
  %"$adtval_252_salloc" = call i8* @_salloc(i8* %"$adtval_252_load", i64 1)
  %"$adtval_252" = bitcast i8* %"$adtval_252_salloc" to %CName_Nil_String*
  %"$adtgep_253" = getelementptr inbounds %CName_Nil_String, %CName_Nil_String* %"$adtval_252", i32 0, i32 0
  store i8 1, i8* %"$adtgep_253"
  %"$adtptr_254" = bitcast %CName_Nil_String* %"$adtval_252" to %TName_List_String*
  store %TName_List_String* %"$adtptr_254", %TName_List_String** %nil_string
  %nil_bystr20 = alloca %TName_List_ByStr20*
  %"$adtval_255_load" = load i8*, i8** @_execptr
  %"$adtval_255_salloc" = call i8* @_salloc(i8* %"$adtval_255_load", i64 1)
  %"$adtval_255" = bitcast i8* %"$adtval_255_salloc" to %CName_Nil_ByStr20*
  %"$adtgep_256" = getelementptr inbounds %CName_Nil_ByStr20, %CName_Nil_ByStr20* %"$adtval_255", i32 0, i32 0
  store i8 1, i8* %"$adtgep_256"
  %"$adtptr_257" = bitcast %CName_Nil_ByStr20* %"$adtval_255" to %TName_List_ByStr20*
  store %TName_List_ByStr20* %"$adtptr_257", %TName_List_ByStr20** %nil_bystr20
  %a = alloca %Uint32
  %"$f_string_4" = alloca %Uint32
  %"$f_string_258" = load { %Uint32 (i8*, %TName_List_String*)*, i8* }, { %Uint32 (i8*, %TName_List_String*)*, i8* }* %f_string
  %"$f_string_fptr_259" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$f_string_258", 0
  %"$f_string_envptr_260" = extractvalue { %Uint32 (i8*, %TName_List_String*)*, i8* } %"$f_string_258", 1
  %"$nil_string_261" = load %TName_List_String*, %TName_List_String** %nil_string
  %"$f_string_call_262" = call %Uint32 %"$f_string_fptr_259"(i8* %"$f_string_envptr_260", %TName_List_String* %"$nil_string_261")
  store %Uint32 %"$f_string_call_262", %Uint32* %"$f_string_4"
  %"$$f_string_4_263" = load %Uint32, %Uint32* %"$f_string_4"
  store %Uint32 %"$$f_string_4_263", %Uint32* %a
  %b = alloca %Uint32
  %"$f_bystr20_5" = alloca %Uint32
  %"$f_bystr20_264" = load { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }, { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* }* %f_bystr20
  %"$f_bystr20_fptr_265" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$f_bystr20_264", 0
  %"$f_bystr20_envptr_266" = extractvalue { %Uint32 (i8*, %TName_List_ByStr20*)*, i8* } %"$f_bystr20_264", 1
  %"$nil_bystr20_267" = load %TName_List_ByStr20*, %TName_List_ByStr20** %nil_bystr20
  %"$f_bystr20_call_268" = call %Uint32 %"$f_bystr20_fptr_265"(i8* %"$f_bystr20_envptr_266", %TName_List_ByStr20* %"$nil_bystr20_267")
  store %Uint32 %"$f_bystr20_call_268", %Uint32* %"$f_bystr20_5"
  %"$$f_bystr20_5_269" = load %Uint32, %Uint32* %"$f_bystr20_5"
  store %Uint32 %"$$f_bystr20_5_269", %Uint32* %b
  %"$a_270" = load %Uint32, %Uint32* %a
  %"$b_271" = load %Uint32, %Uint32* %b
  %"$add_call_272" = call %Uint32 @_add_Uint32(%Uint32 %"$a_270", %Uint32 %"$b_271")
  store %Uint32 %"$add_call_272", %Uint32* %"$expr_6"
  %"$$expr_6_273" = load %Uint32, %Uint32* %"$expr_6"
  ret %Uint32 %"$$expr_6_273"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_274" = call %Uint32 @"$scilla_expr_198"(i8* null)
  %"$pval_275" = alloca %Uint32
  %"$memvoidcast_276" = bitcast %Uint32* %"$pval_275" to i8*
  store %Uint32 %"$exprval_274", %Uint32* %"$pval_275"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_33", i8* %"$memvoidcast_276")
  ret void
}
