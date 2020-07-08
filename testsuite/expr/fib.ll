; (* Expected output: (IntLit 32 21) *)
; 
; let zero = Zero in
; let one  = Succ zero in
; let two  = Succ one in
; let three = Succ two in
; let four = Succ three in
; let five = Succ four in
; let six = Succ five in
; let seven = Succ six in
; 
; let fib = fun (n : Nat) =>
; let iter_fun =
; fun (res : Pair Int32 Int32) => fun (n: Nat) =>
; match res with
; | Pair x y => let z = builtin add x y in
; Pair {Int32 Int32} z x
; end
; in
; let zero = Int32 0 in
; let one = Int32 1 in
; let init_val = Pair {Int32 Int32} one zero in
; let typed_folder = @nat_fold (Pair Int32 Int32) in
; let	folder = typed_folder iter_fun init_val in
; let res = folder n in
; match res with
; |	Pair x y => x
; end
; 
; in
; 
; fib seven
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_26" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_48" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_47"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_47" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_49"**, %"$TyDescrTy_ADTTyp_48"* }
%"$TyDescrTy_ADTTyp_Constr_49" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_Pair_Int32_Int32 = type { i8, %CName_Pair_Int32_Int32* }
%CName_Pair_Int32_Int32 = type <{ i8, %Int32, %Int32 }>
%Int32 = type { i32 }
%"$$fundef_24_env_74" = type { %TName_Pair_Int32_Int32* }
%Nat = type { i8, %Zero*, %Succ* }
%Zero = type <{ i8 }>
%Succ = type <{ i8, %Nat* }>
%"$$fundef_22_env_75" = type {}
%"$$fundef_20_env_76" = type { { i8*, i8* }* }
%"$$fundef_17_env_77" = type { %TName_Pair_Int32_Int32*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } }
%"$$fundef_15_env_78" = type { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } }
%"$$fundef_13_env_79" = type {}
%"$$fundef_11_env_80" = type {}

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_27" = global %"$TyDescrTy_PrimTyp_26" zeroinitializer
@"$TyDescr_Int32_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Int32_Prim_27" to i8*) }
@"$TyDescr_Uint32_Prim_29" = global %"$TyDescrTy_PrimTyp_26" { i32 1, i32 0 }
@"$TyDescr_Uint32_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Uint32_Prim_29" to i8*) }
@"$TyDescr_Int64_Prim_31" = global %"$TyDescrTy_PrimTyp_26" { i32 0, i32 1 }
@"$TyDescr_Int64_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Int64_Prim_31" to i8*) }
@"$TyDescr_Uint64_Prim_33" = global %"$TyDescrTy_PrimTyp_26" { i32 1, i32 1 }
@"$TyDescr_Uint64_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Uint64_Prim_33" to i8*) }
@"$TyDescr_Int128_Prim_35" = global %"$TyDescrTy_PrimTyp_26" { i32 0, i32 2 }
@"$TyDescr_Int128_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Int128_Prim_35" to i8*) }
@"$TyDescr_Uint128_Prim_37" = global %"$TyDescrTy_PrimTyp_26" { i32 1, i32 2 }
@"$TyDescr_Uint128_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Uint128_Prim_37" to i8*) }
@"$TyDescr_Int256_Prim_39" = global %"$TyDescrTy_PrimTyp_26" { i32 0, i32 3 }
@"$TyDescr_Int256_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Int256_Prim_39" to i8*) }
@"$TyDescr_Uint256_Prim_41" = global %"$TyDescrTy_PrimTyp_26" { i32 1, i32 3 }
@"$TyDescr_Uint256_42" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Uint256_Prim_41" to i8*) }
@"$TyDescr_String_Prim_43" = global %"$TyDescrTy_PrimTyp_26" { i32 2, i32 0 }
@"$TyDescr_String_44" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_String_Prim_43" to i8*) }
@"$TyDescr_Bystr_Prim_45" = global %"$TyDescrTy_PrimTyp_26" { i32 7, i32 0 }
@"$TyDescr_Bystr_46" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Bystr_Prim_45" to i8*) }
@"$TyDescr_ADT_Nat_50" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Nat_ADTTyp_Specl_62" to i8*) }
@"$TyDescr_ADT_Pair_Int32_Int32_51" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_71" to i8*) }
@"$TyDescr_Nat_ADTTyp_53" = unnamed_addr constant %"$TyDescrTy_ADTTyp_48" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nat_64", i32 0, i32 0), i32 3 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_47"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_47"*], [1 x %"$TyDescrTy_ADTTyp_Specl_47"*]* @"$TyDescr_Nat_ADTTyp_m_specls_63", i32 0, i32 0) }
@"$TyDescr_Nat_Zero_Constr_m_args_54" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Zero_55" = unnamed_addr constant [4 x i8] c"Zero"
@"$TyDescr_Nat_Zero_ADTTyp_Constr_56" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_49" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Zero_55", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Zero_Constr_m_args_54", i32 0, i32 0) }
@"$TyDescr_Nat_Succ_Constr_m_args_57" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_50"]
@"$TyDescr_ADT_Succ_58" = unnamed_addr constant [4 x i8] c"Succ"
@"$TyDescr_Nat_Succ_ADTTyp_Constr_59" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_49" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Succ_58", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Succ_Constr_m_args_57", i32 0, i32 0) }
@"$TyDescr_Nat_ADTTyp_Specl_m_constrs_60" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_49"*] [%"$TyDescrTy_ADTTyp_Constr_49"* @"$TyDescr_Nat_Zero_ADTTyp_Constr_56", %"$TyDescrTy_ADTTyp_Constr_49"* @"$TyDescr_Nat_Succ_ADTTyp_Constr_59"]
@"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_61" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Nat_ADTTyp_Specl_62" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_47" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_61", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_49"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_49"*], [2 x %"$TyDescrTy_ADTTyp_Constr_49"*]* @"$TyDescr_Nat_ADTTyp_Specl_m_constrs_60", i32 0, i32 0), %"$TyDescrTy_ADTTyp_48"* @"$TyDescr_Nat_ADTTyp_53" }
@"$TyDescr_Nat_ADTTyp_m_specls_63" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_47"*] [%"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Nat_ADTTyp_Specl_62"]
@"$TyDescr_ADT_Nat_64" = unnamed_addr constant [3 x i8] c"Nat"
@"$TyDescr_Pair_ADTTyp_65" = unnamed_addr constant %"$TyDescrTy_ADTTyp_48" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_73", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_47"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_47"*], [1 x %"$TyDescrTy_ADTTyp_Specl_47"*]* @"$TyDescr_Pair_ADTTyp_m_specls_72", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Int32_Int32_Constr_m_args_66" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_28", %_TyDescrTy_Typ* @"$TyDescr_Int32_28"]
@"$TyDescr_ADT_Pair_67" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Int32_Int32_ADTTyp_Constr_68" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_49" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_67", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Int32_Int32_Constr_m_args_66", i32 0, i32 0) }
@"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_constrs_69" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_49"*] [%"$TyDescrTy_ADTTyp_Constr_49"* @"$TyDescr_Pair_Pair_Int32_Int32_ADTTyp_Constr_68"]
@"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_TArgs_70" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_28", %_TyDescrTy_Typ* @"$TyDescr_Int32_28"]
@"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_71" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_47" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_TArgs_70", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_49"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_49"*], [1 x %"$TyDescrTy_ADTTyp_Constr_49"*]* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_constrs_69", i32 0, i32 0), %"$TyDescrTy_ADTTyp_48"* @"$TyDescr_Pair_ADTTyp_65" }
@"$TyDescr_Pair_ADTTyp_m_specls_72" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_47"*] [%"$TyDescrTy_ADTTyp_Specl_47"* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_71"]
@"$TyDescr_ADT_Pair_73" = unnamed_addr constant [4 x i8] c"Pair"
@nat_fold = global { i8*, i8* }* null

define internal %TName_Pair_Int32_Int32* @"$fundef_24"(%"$$fundef_24_env_74"* %0, %Nat* %1) {
entry:
  %"$$fundef_24_env_res_202" = getelementptr inbounds %"$$fundef_24_env_74", %"$$fundef_24_env_74"* %0, i32 0, i32 0
  %"$res_envload_203" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$$fundef_24_env_res_202"
  %res = alloca %TName_Pair_Int32_Int32*
  store %TName_Pair_Int32_Int32* %"$res_envload_203", %TName_Pair_Int32_Int32** %res
  %"$retval_25" = alloca %TName_Pair_Int32_Int32*
  %"$res_205" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %res
  %"$res_tag_206" = getelementptr inbounds %TName_Pair_Int32_Int32, %TName_Pair_Int32_Int32* %"$res_205", i32 0, i32 0
  %"$res_tag_207" = load i8, i8* %"$res_tag_206"
  switch i8 %"$res_tag_207", label %"$empty_default_208" [
    i8 0, label %"$Pair_209"
  ]

"$Pair_209":                                      ; preds = %entry
  %"$res_210" = bitcast %TName_Pair_Int32_Int32* %"$res_205" to %CName_Pair_Int32_Int32*
  %"$x_gep_211" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_210", i32 0, i32 1
  %"$x_load_212" = load %Int32, %Int32* %"$x_gep_211"
  %x = alloca %Int32
  store %Int32 %"$x_load_212", %Int32* %x
  %"$y_gep_213" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_210", i32 0, i32 2
  %"$y_load_214" = load %Int32, %Int32* %"$y_gep_213"
  %y = alloca %Int32
  store %Int32 %"$y_load_214", %Int32* %y
  %z = alloca %Int32
  %"$x_215" = load %Int32, %Int32* %x
  %"$y_216" = load %Int32, %Int32* %y
  %"$add_call_217" = call %Int32 @_add_Int32(%Int32 %"$x_215", %Int32 %"$y_216")
  store %Int32 %"$add_call_217", %Int32* %z
  %"$z_218" = load %Int32, %Int32* %z
  %"$x_219" = load %Int32, %Int32* %x
  %"$adtval_220_load" = load i8*, i8** @_execptr
  %"$adtval_220_salloc" = call i8* @_salloc(i8* %"$adtval_220_load", i64 9)
  %"$adtval_220" = bitcast i8* %"$adtval_220_salloc" to %CName_Pair_Int32_Int32*
  %"$adtgep_221" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_220", i32 0, i32 0
  store i8 0, i8* %"$adtgep_221"
  %"$adtgep_222" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_220", i32 0, i32 1
  store %Int32 %"$z_218", %Int32* %"$adtgep_222"
  %"$adtgep_223" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_220", i32 0, i32 2
  store %Int32 %"$x_219", %Int32* %"$adtgep_223"
  %"$adtptr_224" = bitcast %CName_Pair_Int32_Int32* %"$adtval_220" to %TName_Pair_Int32_Int32*
  store %TName_Pair_Int32_Int32* %"$adtptr_224", %TName_Pair_Int32_Int32** %"$retval_25"
  br label %"$matchsucc_204"

"$empty_default_208":                             ; preds = %entry
  br label %"$matchsucc_204"

"$matchsucc_204":                                 ; preds = %"$Pair_209", %"$empty_default_208"
  %"$$retval_25_225" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$retval_25"
  ret %TName_Pair_Int32_Int32* %"$$retval_25_225"
}

define internal { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } @"$fundef_22"(%"$$fundef_22_env_75"* %0, %TName_Pair_Int32_Int32* %1) {
entry:
  %"$retval_23" = alloca { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }
  %"$$fundef_24_envp_196_load" = load i8*, i8** @_execptr
  %"$$fundef_24_envp_196_salloc" = call i8* @_salloc(i8* %"$$fundef_24_envp_196_load", i64 8)
  %"$$fundef_24_envp_196" = bitcast i8* %"$$fundef_24_envp_196_salloc" to %"$$fundef_24_env_74"*
  %"$$fundef_24_env_voidp_198" = bitcast %"$$fundef_24_env_74"* %"$$fundef_24_envp_196" to i8*
  %"$$fundef_24_cloval_199" = insertvalue { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } { %TName_Pair_Int32_Int32* (i8*, %Nat*)* bitcast (%TName_Pair_Int32_Int32* (%"$$fundef_24_env_74"*, %Nat*)* @"$fundef_24" to %TName_Pair_Int32_Int32* (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_24_env_voidp_198", 1
  %"$$fundef_24_env_res_200" = getelementptr inbounds %"$$fundef_24_env_74", %"$$fundef_24_env_74"* %"$$fundef_24_envp_196", i32 0, i32 0
  store %TName_Pair_Int32_Int32* %1, %TName_Pair_Int32_Int32** %"$$fundef_24_env_res_200"
  store { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$$fundef_24_cloval_199", { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }* %"$retval_23"
  %"$$retval_23_201" = load { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }* %"$retval_23"
  ret { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$$retval_23_201"
}

define internal %Int32 @"$fundef_20"(%"$$fundef_20_env_76"* %0, %Nat* %1) {
entry:
  %"$$fundef_20_env_nat_fold_148" = getelementptr inbounds %"$$fundef_20_env_76", %"$$fundef_20_env_76"* %0, i32 0, i32 0
  %"$nat_fold_envload_149" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_20_env_nat_fold_148"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_149", { i8*, i8* }** %nat_fold
  %"$retval_21" = alloca %Int32
  %iter_fun = alloca { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }
  store { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)* bitcast ({ %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (%"$$fundef_22_env_75"*, %TName_Pair_Int32_Int32*)* @"$fundef_22" to { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*), i8* null }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %iter_fun
  %"$zero_1" = alloca %Int32
  store %Int32 zeroinitializer, %Int32* %"$zero_1"
  %"$one_2" = alloca %Int32
  store %Int32 { i32 1 }, %Int32* %"$one_2"
  %init_val = alloca %TName_Pair_Int32_Int32*
  %"$$one_2_153" = load %Int32, %Int32* %"$one_2"
  %"$$zero_1_154" = load %Int32, %Int32* %"$zero_1"
  %"$adtval_155_load" = load i8*, i8** @_execptr
  %"$adtval_155_salloc" = call i8* @_salloc(i8* %"$adtval_155_load", i64 9)
  %"$adtval_155" = bitcast i8* %"$adtval_155_salloc" to %CName_Pair_Int32_Int32*
  %"$adtgep_156" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_155", i32 0, i32 0
  store i8 0, i8* %"$adtgep_156"
  %"$adtgep_157" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_155", i32 0, i32 1
  store %Int32 %"$$one_2_153", %Int32* %"$adtgep_157"
  %"$adtgep_158" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_155", i32 0, i32 2
  store %Int32 %"$$zero_1_154", %Int32* %"$adtgep_158"
  %"$adtptr_159" = bitcast %CName_Pair_Int32_Int32* %"$adtval_155" to %TName_Pair_Int32_Int32*
  store %TName_Pair_Int32_Int32* %"$adtptr_159", %TName_Pair_Int32_Int32** %init_val
  %typed_folder = alloca { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }
  %"$nat_fold_160" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  %"$nat_fold_161" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_160", i32 0
  %"$nat_fold_162" = bitcast { i8*, i8* }* %"$nat_fold_161" to { { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_163" = load { { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_162"
  %"$nat_fold_fptr_164" = extractvalue { { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_163", 0
  %"$nat_fold_envptr_165" = extractvalue { { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_163", 1
  %"$nat_fold_call_166" = call { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$nat_fold_fptr_164"(i8* %"$nat_fold_envptr_165")
  store { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$nat_fold_call_166", { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %typed_folder
  %folder = alloca { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }
  %"$typed_folder_7" = alloca { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }
  %"$typed_folder_167" = load { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }, { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %typed_folder
  %"$typed_folder_fptr_168" = extractvalue { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$typed_folder_167", 0
  %"$typed_folder_envptr_169" = extractvalue { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$typed_folder_167", 1
  %"$iter_fun_170" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %iter_fun
  %"$typed_folder_call_171" = call { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$typed_folder_fptr_168"(i8* %"$typed_folder_envptr_169", { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$iter_fun_170")
  store { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$typed_folder_call_171", { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$typed_folder_7"
  %"$typed_folder_8" = alloca { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }
  %"$$typed_folder_7_172" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$typed_folder_7"
  %"$$typed_folder_7_fptr_173" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$typed_folder_7_172", 0
  %"$$typed_folder_7_envptr_174" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$typed_folder_7_172", 1
  %"$init_val_175" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %init_val
  %"$$typed_folder_7_call_176" = call { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$$typed_folder_7_fptr_173"(i8* %"$$typed_folder_7_envptr_174", %TName_Pair_Int32_Int32* %"$init_val_175")
  store { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$$typed_folder_7_call_176", { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }* %"$typed_folder_8"
  %"$$typed_folder_8_177" = load { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }* %"$typed_folder_8"
  store { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$$typed_folder_8_177", { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }* %folder
  %res = alloca %TName_Pair_Int32_Int32*
  %"$folder_9" = alloca %TName_Pair_Int32_Int32*
  %"$folder_178" = load { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }* %folder
  %"$folder_fptr_179" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$folder_178", 0
  %"$folder_envptr_180" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$folder_178", 1
  %"$folder_call_181" = call %TName_Pair_Int32_Int32* %"$folder_fptr_179"(i8* %"$folder_envptr_180", %Nat* %1)
  store %TName_Pair_Int32_Int32* %"$folder_call_181", %TName_Pair_Int32_Int32** %"$folder_9"
  %"$$folder_9_182" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$folder_9"
  store %TName_Pair_Int32_Int32* %"$$folder_9_182", %TName_Pair_Int32_Int32** %res
  %"$res_184" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %res
  %"$res_tag_185" = getelementptr inbounds %TName_Pair_Int32_Int32, %TName_Pair_Int32_Int32* %"$res_184", i32 0, i32 0
  %"$res_tag_186" = load i8, i8* %"$res_tag_185"
  switch i8 %"$res_tag_186", label %"$empty_default_187" [
    i8 0, label %"$Pair_188"
  ]

"$Pair_188":                                      ; preds = %entry
  %"$res_189" = bitcast %TName_Pair_Int32_Int32* %"$res_184" to %CName_Pair_Int32_Int32*
  %"$x_gep_190" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_189", i32 0, i32 1
  %"$x_load_191" = load %Int32, %Int32* %"$x_gep_190"
  %x = alloca %Int32
  store %Int32 %"$x_load_191", %Int32* %x
  %"$y_gep_192" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_189", i32 0, i32 2
  %"$y_load_193" = load %Int32, %Int32* %"$y_gep_192"
  %y = alloca %Int32
  store %Int32 %"$y_load_193", %Int32* %y
  %"$x_194" = load %Int32, %Int32* %x
  store %Int32 %"$x_194", %Int32* %"$retval_21"
  br label %"$matchsucc_183"

"$empty_default_187":                             ; preds = %entry
  br label %"$matchsucc_183"

"$matchsucc_183":                                 ; preds = %"$Pair_188", %"$empty_default_187"
  %"$$retval_21_195" = load %Int32, %Int32* %"$retval_21"
  ret %Int32 %"$$retval_21_195"
}

define internal %TName_Pair_Int32_Int32* @"$fundef_17"(%"$$fundef_17_env_77"* %0, %Nat* %1) {
entry:
  %"$$fundef_17_env_f0_108" = getelementptr inbounds %"$$fundef_17_env_77", %"$$fundef_17_env_77"* %0, i32 0, i32 0
  %"$f0_envload_109" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$$fundef_17_env_f0_108"
  %f0 = alloca %TName_Pair_Int32_Int32*
  store %TName_Pair_Int32_Int32* %"$f0_envload_109", %TName_Pair_Int32_Int32** %f0
  %"$$fundef_17_env_fn_110" = getelementptr inbounds %"$$fundef_17_env_77", %"$$fundef_17_env_77"* %0, i32 0, i32 1
  %"$fn_envload_111" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_17_env_fn_110"
  %fn = alloca { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }
  store { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_envload_111", { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn
  %"$$fundef_17_env_g_112" = getelementptr inbounds %"$$fundef_17_env_77", %"$$fundef_17_env_77"* %0, i32 0, i32 2
  %"$g_envload_113" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_17_env_g_112"
  %g = alloca { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }
  store { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_envload_113", { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g
  %"$retval_18" = alloca %TName_Pair_Int32_Int32*
  %"$n_tag_115" = getelementptr inbounds %Nat, %Nat* %1, i32 0, i32 0
  %"$n_tag_116" = load i8, i8* %"$n_tag_115"
  switch i8 %"$n_tag_116", label %"$empty_default_117" [
    i8 1, label %"$Succ_118"
    i8 0, label %"$Zero_144"
  ]

"$Succ_118":                                      ; preds = %entry
  %"$n_119" = bitcast %Nat* %1 to %Succ*
  %"$n1_gep_120" = getelementptr inbounds %Succ, %Succ* %"$n_119", i32 0, i32 1
  %"$n1_load_121" = load %Nat*, %Nat** %"$n1_gep_120"
  %n1 = alloca %Nat*
  store %Nat* %"$n1_load_121", %Nat** %n1
  %res = alloca %TName_Pair_Int32_Int32*
  %"$fn_3" = alloca { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }
  %"$fn_122" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn
  %"$fn_fptr_123" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_122", 0
  %"$fn_envptr_124" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_122", 1
  %"$f0_125" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %f0
  %"$fn_call_126" = call { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$fn_fptr_123"(i8* %"$fn_envptr_124", %TName_Pair_Int32_Int32* %"$f0_125")
  store { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$fn_call_126", { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }* %"$fn_3"
  %"$fn_4" = alloca %TName_Pair_Int32_Int32*
  %"$$fn_3_127" = load { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }* %"$fn_3"
  %"$$fn_3_fptr_128" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$$fn_3_127", 0
  %"$$fn_3_envptr_129" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$$fn_3_127", 1
  %"$n1_130" = load %Nat*, %Nat** %n1
  %"$$fn_3_call_131" = call %TName_Pair_Int32_Int32* %"$$fn_3_fptr_128"(i8* %"$$fn_3_envptr_129", %Nat* %"$n1_130")
  store %TName_Pair_Int32_Int32* %"$$fn_3_call_131", %TName_Pair_Int32_Int32** %"$fn_4"
  %"$$fn_4_132" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$fn_4"
  store %TName_Pair_Int32_Int32* %"$$fn_4_132", %TName_Pair_Int32_Int32** %res
  %"$g_5" = alloca { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }
  %"$g_133" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g
  %"$g_fptr_134" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_133", 0
  %"$g_envptr_135" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_133", 1
  %"$res_136" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %res
  %"$g_call_137" = call { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$g_fptr_134"(i8* %"$g_envptr_135", %TName_Pair_Int32_Int32* %"$res_136")
  store { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$g_call_137", { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }* %"$g_5"
  %"$g_6" = alloca %TName_Pair_Int32_Int32*
  %"$$g_5_138" = load { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }* %"$g_5"
  %"$$g_5_fptr_139" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$$g_5_138", 0
  %"$$g_5_envptr_140" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$$g_5_138", 1
  %"$n1_141" = load %Nat*, %Nat** %n1
  %"$$g_5_call_142" = call %TName_Pair_Int32_Int32* %"$$g_5_fptr_139"(i8* %"$$g_5_envptr_140", %Nat* %"$n1_141")
  store %TName_Pair_Int32_Int32* %"$$g_5_call_142", %TName_Pair_Int32_Int32** %"$g_6"
  %"$$g_6_143" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$g_6"
  store %TName_Pair_Int32_Int32* %"$$g_6_143", %TName_Pair_Int32_Int32** %"$retval_18"
  br label %"$matchsucc_114"

"$Zero_144":                                      ; preds = %entry
  %"$n_145" = bitcast %Nat* %1 to %Zero*
  %"$f0_146" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %f0
  store %TName_Pair_Int32_Int32* %"$f0_146", %TName_Pair_Int32_Int32** %"$retval_18"
  br label %"$matchsucc_114"

"$empty_default_117":                             ; preds = %entry
  br label %"$matchsucc_114"

"$matchsucc_114":                                 ; preds = %"$Zero_144", %"$Succ_118", %"$empty_default_117"
  %"$$retval_18_147" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$retval_18"
  ret %TName_Pair_Int32_Int32* %"$$retval_18_147"
}

define internal { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } @"$fundef_15"(%"$$fundef_15_env_78"* %0, %TName_Pair_Int32_Int32* %1) {
entry:
  %"$$fundef_15_env_fn_94" = getelementptr inbounds %"$$fundef_15_env_78", %"$$fundef_15_env_78"* %0, i32 0, i32 0
  %"$fn_envload_95" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_15_env_fn_94"
  %fn = alloca { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }
  store { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_envload_95", { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn
  %"$$fundef_15_env_g_96" = getelementptr inbounds %"$$fundef_15_env_78", %"$$fundef_15_env_78"* %0, i32 0, i32 1
  %"$g_envload_97" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_15_env_g_96"
  %g = alloca { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }
  store { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_envload_97", { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g
  %"$retval_16" = alloca { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }
  %"$$fundef_17_envp_98_load" = load i8*, i8** @_execptr
  %"$$fundef_17_envp_98_salloc" = call i8* @_salloc(i8* %"$$fundef_17_envp_98_load", i64 40)
  %"$$fundef_17_envp_98" = bitcast i8* %"$$fundef_17_envp_98_salloc" to %"$$fundef_17_env_77"*
  %"$$fundef_17_env_voidp_100" = bitcast %"$$fundef_17_env_77"* %"$$fundef_17_envp_98" to i8*
  %"$$fundef_17_cloval_101" = insertvalue { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } { %TName_Pair_Int32_Int32* (i8*, %Nat*)* bitcast (%TName_Pair_Int32_Int32* (%"$$fundef_17_env_77"*, %Nat*)* @"$fundef_17" to %TName_Pair_Int32_Int32* (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_17_env_voidp_100", 1
  %"$$fundef_17_env_f0_102" = getelementptr inbounds %"$$fundef_17_env_77", %"$$fundef_17_env_77"* %"$$fundef_17_envp_98", i32 0, i32 0
  store %TName_Pair_Int32_Int32* %1, %TName_Pair_Int32_Int32** %"$$fundef_17_env_f0_102"
  %"$$fundef_17_env_fn_103" = getelementptr inbounds %"$$fundef_17_env_77", %"$$fundef_17_env_77"* %"$$fundef_17_envp_98", i32 0, i32 1
  %"$fn_104" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn
  store { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_104", { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_17_env_fn_103"
  %"$$fundef_17_env_g_105" = getelementptr inbounds %"$$fundef_17_env_77", %"$$fundef_17_env_77"* %"$$fundef_17_envp_98", i32 0, i32 2
  %"$g_106" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g
  store { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_106", { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_17_env_g_105"
  store { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$$fundef_17_cloval_101", { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }* %"$retval_16"
  %"$$retval_16_107" = load { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }* %"$retval_16"
  ret { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$$retval_16_107"
}

define internal { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } @"$fundef_13"(%"$$fundef_13_env_79"* %0, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %1) {
entry:
  %"$retval_14" = alloca { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }
  %"$$fundef_15_envp_85_load" = load i8*, i8** @_execptr
  %"$$fundef_15_envp_85_salloc" = call i8* @_salloc(i8* %"$$fundef_15_envp_85_load", i64 32)
  %"$$fundef_15_envp_85" = bitcast i8* %"$$fundef_15_envp_85_salloc" to %"$$fundef_15_env_78"*
  %"$$fundef_15_env_voidp_87" = bitcast %"$$fundef_15_env_78"* %"$$fundef_15_envp_85" to i8*
  %"$$fundef_15_cloval_88" = insertvalue { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)* bitcast ({ %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (%"$$fundef_15_env_78"*, %TName_Pair_Int32_Int32*)* @"$fundef_15" to { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*), i8* undef }, i8* %"$$fundef_15_env_voidp_87", 1
  %g = alloca { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }
  store { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$fundef_15_cloval_88", { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g
  %"$$fundef_15_env_fn_89" = getelementptr inbounds %"$$fundef_15_env_78", %"$$fundef_15_env_78"* %"$$fundef_15_envp_85", i32 0, i32 0
  store { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %1, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_15_env_fn_89"
  %"$$fundef_15_env_g_90" = getelementptr inbounds %"$$fundef_15_env_78", %"$$fundef_15_env_78"* %"$$fundef_15_envp_85", i32 0, i32 1
  %"$g_91" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g
  store { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_91", { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_15_env_g_90"
  %"$g_92" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g
  store { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_92", { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$retval_14"
  %"$$retval_14_93" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$retval_14"
  ret { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$retval_14_93"
}

define internal { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } @"$fundef_11"(%"$$fundef_11_env_80"* %0) {
entry:
  %"$retval_12" = alloca { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }
  store { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })* bitcast ({ { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (%"$$fundef_13_env_79"*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })* @"$fundef_13" to { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*), i8* null }, { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %"$retval_12"
  %"$$retval_12_84" = load { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }, { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %"$retval_12"
  ret { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$$retval_12_84"
}

declare i8* @_salloc(i8*, i64)

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Int32 @"$scilla_expr_226"(i8* %0) {
entry:
  %"$dyndisp_table_230_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_230_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_230_salloc_load", i64 16)
  %"$dyndisp_table_230_salloc" = bitcast i8* %"$dyndisp_table_230_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_230" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_230_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_231" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_230", i32 0
  %"$dyndisp_pcast_232" = bitcast { i8*, i8* }* %"$dyndisp_gep_231" to { { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (%"$$fundef_11_env_80"*)* @"$fundef_11" to { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_232"
  store { i8*, i8* }* %"$dyndisp_table_230", { i8*, i8* }** @nat_fold
  %"$expr_19" = alloca %Int32
  %zero = alloca %Nat*
  %"$adtval_233_load" = load i8*, i8** @_execptr
  %"$adtval_233_salloc" = call i8* @_salloc(i8* %"$adtval_233_load", i64 1)
  %"$adtval_233" = bitcast i8* %"$adtval_233_salloc" to %Zero*
  %"$adtgep_234" = getelementptr inbounds %Zero, %Zero* %"$adtval_233", i32 0, i32 0
  store i8 0, i8* %"$adtgep_234"
  %"$adtptr_235" = bitcast %Zero* %"$adtval_233" to %Nat*
  store %Nat* %"$adtptr_235", %Nat** %zero
  %one = alloca %Nat*
  %"$zero_236" = load %Nat*, %Nat** %zero
  %"$adtval_237_load" = load i8*, i8** @_execptr
  %"$adtval_237_salloc" = call i8* @_salloc(i8* %"$adtval_237_load", i64 9)
  %"$adtval_237" = bitcast i8* %"$adtval_237_salloc" to %Succ*
  %"$adtgep_238" = getelementptr inbounds %Succ, %Succ* %"$adtval_237", i32 0, i32 0
  store i8 1, i8* %"$adtgep_238"
  %"$adtgep_239" = getelementptr inbounds %Succ, %Succ* %"$adtval_237", i32 0, i32 1
  store %Nat* %"$zero_236", %Nat** %"$adtgep_239"
  %"$adtptr_240" = bitcast %Succ* %"$adtval_237" to %Nat*
  store %Nat* %"$adtptr_240", %Nat** %one
  %two = alloca %Nat*
  %"$one_241" = load %Nat*, %Nat** %one
  %"$adtval_242_load" = load i8*, i8** @_execptr
  %"$adtval_242_salloc" = call i8* @_salloc(i8* %"$adtval_242_load", i64 9)
  %"$adtval_242" = bitcast i8* %"$adtval_242_salloc" to %Succ*
  %"$adtgep_243" = getelementptr inbounds %Succ, %Succ* %"$adtval_242", i32 0, i32 0
  store i8 1, i8* %"$adtgep_243"
  %"$adtgep_244" = getelementptr inbounds %Succ, %Succ* %"$adtval_242", i32 0, i32 1
  store %Nat* %"$one_241", %Nat** %"$adtgep_244"
  %"$adtptr_245" = bitcast %Succ* %"$adtval_242" to %Nat*
  store %Nat* %"$adtptr_245", %Nat** %two
  %three = alloca %Nat*
  %"$two_246" = load %Nat*, %Nat** %two
  %"$adtval_247_load" = load i8*, i8** @_execptr
  %"$adtval_247_salloc" = call i8* @_salloc(i8* %"$adtval_247_load", i64 9)
  %"$adtval_247" = bitcast i8* %"$adtval_247_salloc" to %Succ*
  %"$adtgep_248" = getelementptr inbounds %Succ, %Succ* %"$adtval_247", i32 0, i32 0
  store i8 1, i8* %"$adtgep_248"
  %"$adtgep_249" = getelementptr inbounds %Succ, %Succ* %"$adtval_247", i32 0, i32 1
  store %Nat* %"$two_246", %Nat** %"$adtgep_249"
  %"$adtptr_250" = bitcast %Succ* %"$adtval_247" to %Nat*
  store %Nat* %"$adtptr_250", %Nat** %three
  %four = alloca %Nat*
  %"$three_251" = load %Nat*, %Nat** %three
  %"$adtval_252_load" = load i8*, i8** @_execptr
  %"$adtval_252_salloc" = call i8* @_salloc(i8* %"$adtval_252_load", i64 9)
  %"$adtval_252" = bitcast i8* %"$adtval_252_salloc" to %Succ*
  %"$adtgep_253" = getelementptr inbounds %Succ, %Succ* %"$adtval_252", i32 0, i32 0
  store i8 1, i8* %"$adtgep_253"
  %"$adtgep_254" = getelementptr inbounds %Succ, %Succ* %"$adtval_252", i32 0, i32 1
  store %Nat* %"$three_251", %Nat** %"$adtgep_254"
  %"$adtptr_255" = bitcast %Succ* %"$adtval_252" to %Nat*
  store %Nat* %"$adtptr_255", %Nat** %four
  %five = alloca %Nat*
  %"$four_256" = load %Nat*, %Nat** %four
  %"$adtval_257_load" = load i8*, i8** @_execptr
  %"$adtval_257_salloc" = call i8* @_salloc(i8* %"$adtval_257_load", i64 9)
  %"$adtval_257" = bitcast i8* %"$adtval_257_salloc" to %Succ*
  %"$adtgep_258" = getelementptr inbounds %Succ, %Succ* %"$adtval_257", i32 0, i32 0
  store i8 1, i8* %"$adtgep_258"
  %"$adtgep_259" = getelementptr inbounds %Succ, %Succ* %"$adtval_257", i32 0, i32 1
  store %Nat* %"$four_256", %Nat** %"$adtgep_259"
  %"$adtptr_260" = bitcast %Succ* %"$adtval_257" to %Nat*
  store %Nat* %"$adtptr_260", %Nat** %five
  %six = alloca %Nat*
  %"$five_261" = load %Nat*, %Nat** %five
  %"$adtval_262_load" = load i8*, i8** @_execptr
  %"$adtval_262_salloc" = call i8* @_salloc(i8* %"$adtval_262_load", i64 9)
  %"$adtval_262" = bitcast i8* %"$adtval_262_salloc" to %Succ*
  %"$adtgep_263" = getelementptr inbounds %Succ, %Succ* %"$adtval_262", i32 0, i32 0
  store i8 1, i8* %"$adtgep_263"
  %"$adtgep_264" = getelementptr inbounds %Succ, %Succ* %"$adtval_262", i32 0, i32 1
  store %Nat* %"$five_261", %Nat** %"$adtgep_264"
  %"$adtptr_265" = bitcast %Succ* %"$adtval_262" to %Nat*
  store %Nat* %"$adtptr_265", %Nat** %six
  %seven = alloca %Nat*
  %"$six_266" = load %Nat*, %Nat** %six
  %"$adtval_267_load" = load i8*, i8** @_execptr
  %"$adtval_267_salloc" = call i8* @_salloc(i8* %"$adtval_267_load", i64 9)
  %"$adtval_267" = bitcast i8* %"$adtval_267_salloc" to %Succ*
  %"$adtgep_268" = getelementptr inbounds %Succ, %Succ* %"$adtval_267", i32 0, i32 0
  store i8 1, i8* %"$adtgep_268"
  %"$adtgep_269" = getelementptr inbounds %Succ, %Succ* %"$adtval_267", i32 0, i32 1
  store %Nat* %"$six_266", %Nat** %"$adtgep_269"
  %"$adtptr_270" = bitcast %Succ* %"$adtval_267" to %Nat*
  store %Nat* %"$adtptr_270", %Nat** %seven
  %fib = alloca { %Int32 (i8*, %Nat*)*, i8* }
  %"$$fundef_20_envp_271_load" = load i8*, i8** @_execptr
  %"$$fundef_20_envp_271_salloc" = call i8* @_salloc(i8* %"$$fundef_20_envp_271_load", i64 8)
  %"$$fundef_20_envp_271" = bitcast i8* %"$$fundef_20_envp_271_salloc" to %"$$fundef_20_env_76"*
  %"$$fundef_20_env_voidp_273" = bitcast %"$$fundef_20_env_76"* %"$$fundef_20_envp_271" to i8*
  %"$$fundef_20_cloval_274" = insertvalue { %Int32 (i8*, %Nat*)*, i8* } { %Int32 (i8*, %Nat*)* bitcast (%Int32 (%"$$fundef_20_env_76"*, %Nat*)* @"$fundef_20" to %Int32 (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_20_env_voidp_273", 1
  %"$$fundef_20_env_nat_fold_275" = getelementptr inbounds %"$$fundef_20_env_76", %"$$fundef_20_env_76"* %"$$fundef_20_envp_271", i32 0, i32 0
  %"$nat_fold_276" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold
  store { i8*, i8* }* %"$nat_fold_276", { i8*, i8* }** %"$$fundef_20_env_nat_fold_275"
  store { %Int32 (i8*, %Nat*)*, i8* } %"$$fundef_20_cloval_274", { %Int32 (i8*, %Nat*)*, i8* }* %fib
  %"$fib_10" = alloca %Int32
  %"$fib_277" = load { %Int32 (i8*, %Nat*)*, i8* }, { %Int32 (i8*, %Nat*)*, i8* }* %fib
  %"$fib_fptr_278" = extractvalue { %Int32 (i8*, %Nat*)*, i8* } %"$fib_277", 0
  %"$fib_envptr_279" = extractvalue { %Int32 (i8*, %Nat*)*, i8* } %"$fib_277", 1
  %"$seven_280" = load %Nat*, %Nat** %seven
  %"$fib_call_281" = call %Int32 %"$fib_fptr_278"(i8* %"$fib_envptr_279", %Nat* %"$seven_280")
  store %Int32 %"$fib_call_281", %Int32* %"$fib_10"
  %"$$fib_10_282" = load %Int32, %Int32* %"$fib_10"
  store %Int32 %"$$fib_10_282", %Int32* %"$expr_19"
  %"$$expr_19_283" = load %Int32, %Int32* %"$expr_19"
  ret %Int32 %"$$expr_19_283"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_284" = call %Int32 @"$scilla_expr_226"(i8* null)
  %"$pval_285" = alloca %Int32
  %"$memvoidcast_286" = bitcast %Int32* %"$pval_285" to i8*
  store %Int32 %"$exprval_284", %Int32* %"$pval_285"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Int32_28", i8* %"$memvoidcast_286")
  ret void
}
