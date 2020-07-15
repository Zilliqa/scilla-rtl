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
%"$TyDescrTy_ADTTyp_56" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_55"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_55" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_57"**, %"$TyDescrTy_ADTTyp_56"* }
%"$TyDescrTy_ADTTyp_Constr_57" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_Pair_Int32_Int32 = type { i8, %CName_Pair_Int32_Int32* }
%CName_Pair_Int32_Int32 = type <{ i8, %Int32, %Int32 }>
%Int32 = type { i32 }
%"$$fundef_24_env_82" = type { %TName_Pair_Int32_Int32* }
%Nat = type { i8, %Zero*, %Succ* }
%Zero = type <{ i8 }>
%Succ = type <{ i8, %Nat* }>
%"$$fundef_22_env_83" = type {}
%"$$fundef_20_env_84" = type { { i8*, i8* }* }
%"$$fundef_17_env_85" = type { %TName_Pair_Int32_Int32*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } }
%"$$fundef_15_env_86" = type { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } }
%"$$fundef_13_env_87" = type {}
%"$$fundef_11_env_88" = type {}

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
@"$TyDescr_Bnum_Prim_45" = global %"$TyDescrTy_PrimTyp_26" { i32 3, i32 0 }
@"$TyDescr_Bnum_46" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Bnum_Prim_45" to i8*) }
@"$TyDescr_Message_Prim_47" = global %"$TyDescrTy_PrimTyp_26" { i32 4, i32 0 }
@"$TyDescr_Message_48" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Message_Prim_47" to i8*) }
@"$TyDescr_Event_Prim_49" = global %"$TyDescrTy_PrimTyp_26" { i32 5, i32 0 }
@"$TyDescr_Event_50" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Event_Prim_49" to i8*) }
@"$TyDescr_Exception_Prim_51" = global %"$TyDescrTy_PrimTyp_26" { i32 6, i32 0 }
@"$TyDescr_Exception_52" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Exception_Prim_51" to i8*) }
@"$TyDescr_Bystr_Prim_53" = global %"$TyDescrTy_PrimTyp_26" { i32 7, i32 0 }
@"$TyDescr_Bystr_54" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_26"* @"$TyDescr_Bystr_Prim_53" to i8*) }
@"$TyDescr_ADT_Nat_58" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Nat_ADTTyp_Specl_70" to i8*) }
@"$TyDescr_ADT_Pair_Int32_Int32_59" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_79" to i8*) }
@"$TyDescr_Nat_ADTTyp_61" = unnamed_addr constant %"$TyDescrTy_ADTTyp_56" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nat_72", i32 0, i32 0), i32 3 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_55"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_55"*], [1 x %"$TyDescrTy_ADTTyp_Specl_55"*]* @"$TyDescr_Nat_ADTTyp_m_specls_71", i32 0, i32 0) }
@"$TyDescr_Nat_Zero_Constr_m_args_62" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Zero_63" = unnamed_addr constant [4 x i8] c"Zero"
@"$TyDescr_Nat_Zero_ADTTyp_Constr_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Zero_63", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Zero_Constr_m_args_62", i32 0, i32 0) }
@"$TyDescr_Nat_Succ_Constr_m_args_65" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_58"]
@"$TyDescr_ADT_Succ_66" = unnamed_addr constant [4 x i8] c"Succ"
@"$TyDescr_Nat_Succ_ADTTyp_Constr_67" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Succ_66", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Succ_Constr_m_args_65", i32 0, i32 0) }
@"$TyDescr_Nat_ADTTyp_Specl_m_constrs_68" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_57"*] [%"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Nat_Zero_ADTTyp_Constr_64", %"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Nat_Succ_ADTTyp_Constr_67"]
@"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_69" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Nat_ADTTyp_Specl_70" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_55" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_69", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_57"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_57"*], [2 x %"$TyDescrTy_ADTTyp_Constr_57"*]* @"$TyDescr_Nat_ADTTyp_Specl_m_constrs_68", i32 0, i32 0), %"$TyDescrTy_ADTTyp_56"* @"$TyDescr_Nat_ADTTyp_61" }
@"$TyDescr_Nat_ADTTyp_m_specls_71" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_55"*] [%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Nat_ADTTyp_Specl_70"]
@"$TyDescr_ADT_Nat_72" = unnamed_addr constant [3 x i8] c"Nat"
@"$TyDescr_Pair_ADTTyp_73" = unnamed_addr constant %"$TyDescrTy_ADTTyp_56" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_81", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_55"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_55"*], [1 x %"$TyDescrTy_ADTTyp_Specl_55"*]* @"$TyDescr_Pair_ADTTyp_m_specls_80", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Int32_Int32_Constr_m_args_74" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_28", %_TyDescrTy_Typ* @"$TyDescr_Int32_28"]
@"$TyDescr_ADT_Pair_75" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Int32_Int32_ADTTyp_Constr_76" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_75", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Int32_Int32_Constr_m_args_74", i32 0, i32 0) }
@"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_constrs_77" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_57"*] [%"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Pair_Pair_Int32_Int32_ADTTyp_Constr_76"]
@"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_TArgs_78" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_28", %_TyDescrTy_Typ* @"$TyDescr_Int32_28"]
@"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_79" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_55" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_TArgs_78", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_57"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_57"*], [1 x %"$TyDescrTy_ADTTyp_Constr_57"*]* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_constrs_77", i32 0, i32 0), %"$TyDescrTy_ADTTyp_56"* @"$TyDescr_Pair_ADTTyp_73" }
@"$TyDescr_Pair_ADTTyp_m_specls_80" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_55"*] [%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_79"]
@"$TyDescr_ADT_Pair_81" = unnamed_addr constant [4 x i8] c"Pair"
@nat_fold = global { i8*, i8* }* null

define internal %TName_Pair_Int32_Int32* @"$fundef_24"(%"$$fundef_24_env_82"* %0, %Nat* %1) {
entry:
  %"$$fundef_24_env_res_210" = getelementptr inbounds %"$$fundef_24_env_82", %"$$fundef_24_env_82"* %0, i32 0, i32 0
  %"$res_envload_211" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$$fundef_24_env_res_210"
  %res = alloca %TName_Pair_Int32_Int32*
  store %TName_Pair_Int32_Int32* %"$res_envload_211", %TName_Pair_Int32_Int32** %res
  %"$retval_25" = alloca %TName_Pair_Int32_Int32*
  %"$res_213" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %res
  %"$res_tag_214" = getelementptr inbounds %TName_Pair_Int32_Int32, %TName_Pair_Int32_Int32* %"$res_213", i32 0, i32 0
  %"$res_tag_215" = load i8, i8* %"$res_tag_214"
  switch i8 %"$res_tag_215", label %"$empty_default_216" [
    i8 0, label %"$Pair_217"
  ]

"$Pair_217":                                      ; preds = %entry
  %"$res_218" = bitcast %TName_Pair_Int32_Int32* %"$res_213" to %CName_Pair_Int32_Int32*
  %"$x_gep_219" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_218", i32 0, i32 1
  %"$x_load_220" = load %Int32, %Int32* %"$x_gep_219"
  %x = alloca %Int32
  store %Int32 %"$x_load_220", %Int32* %x
  %"$y_gep_221" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_218", i32 0, i32 2
  %"$y_load_222" = load %Int32, %Int32* %"$y_gep_221"
  %y = alloca %Int32
  store %Int32 %"$y_load_222", %Int32* %y
  %z = alloca %Int32
  %"$x_223" = load %Int32, %Int32* %x
  %"$y_224" = load %Int32, %Int32* %y
  %"$add_call_225" = call %Int32 @_add_Int32(%Int32 %"$x_223", %Int32 %"$y_224")
  store %Int32 %"$add_call_225", %Int32* %z
  %"$z_226" = load %Int32, %Int32* %z
  %"$x_227" = load %Int32, %Int32* %x
  %"$adtval_228_load" = load i8*, i8** @_execptr
  %"$adtval_228_salloc" = call i8* @_salloc(i8* %"$adtval_228_load", i64 9)
  %"$adtval_228" = bitcast i8* %"$adtval_228_salloc" to %CName_Pair_Int32_Int32*
  %"$adtgep_229" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_228", i32 0, i32 0
  store i8 0, i8* %"$adtgep_229"
  %"$adtgep_230" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_228", i32 0, i32 1
  store %Int32 %"$z_226", %Int32* %"$adtgep_230"
  %"$adtgep_231" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_228", i32 0, i32 2
  store %Int32 %"$x_227", %Int32* %"$adtgep_231"
  %"$adtptr_232" = bitcast %CName_Pair_Int32_Int32* %"$adtval_228" to %TName_Pair_Int32_Int32*
  store %TName_Pair_Int32_Int32* %"$adtptr_232", %TName_Pair_Int32_Int32** %"$retval_25"
  br label %"$matchsucc_212"

"$empty_default_216":                             ; preds = %entry
  br label %"$matchsucc_212"

"$matchsucc_212":                                 ; preds = %"$Pair_217", %"$empty_default_216"
  %"$$retval_25_233" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$retval_25"
  ret %TName_Pair_Int32_Int32* %"$$retval_25_233"
}

define internal { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } @"$fundef_22"(%"$$fundef_22_env_83"* %0, %TName_Pair_Int32_Int32* %1) {
entry:
  %"$retval_23" = alloca { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }
  %"$$fundef_24_envp_204_load" = load i8*, i8** @_execptr
  %"$$fundef_24_envp_204_salloc" = call i8* @_salloc(i8* %"$$fundef_24_envp_204_load", i64 8)
  %"$$fundef_24_envp_204" = bitcast i8* %"$$fundef_24_envp_204_salloc" to %"$$fundef_24_env_82"*
  %"$$fundef_24_env_voidp_206" = bitcast %"$$fundef_24_env_82"* %"$$fundef_24_envp_204" to i8*
  %"$$fundef_24_cloval_207" = insertvalue { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } { %TName_Pair_Int32_Int32* (i8*, %Nat*)* bitcast (%TName_Pair_Int32_Int32* (%"$$fundef_24_env_82"*, %Nat*)* @"$fundef_24" to %TName_Pair_Int32_Int32* (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_24_env_voidp_206", 1
  %"$$fundef_24_env_res_208" = getelementptr inbounds %"$$fundef_24_env_82", %"$$fundef_24_env_82"* %"$$fundef_24_envp_204", i32 0, i32 0
  store %TName_Pair_Int32_Int32* %1, %TName_Pair_Int32_Int32** %"$$fundef_24_env_res_208"
  store { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$$fundef_24_cloval_207", { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }* %"$retval_23"
  %"$$retval_23_209" = load { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }* %"$retval_23"
  ret { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$$retval_23_209"
}

define internal %Int32 @"$fundef_20"(%"$$fundef_20_env_84"* %0, %Nat* %1) {
entry:
  %"$$fundef_20_env_nat_fold_156" = getelementptr inbounds %"$$fundef_20_env_84", %"$$fundef_20_env_84"* %0, i32 0, i32 0
  %"$nat_fold_envload_157" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_20_env_nat_fold_156"
  %nat_fold = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$nat_fold_envload_157", { i8*, i8* }** %nat_fold
  %"$retval_21" = alloca %Int32
  %iter_fun = alloca { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }
  store { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)* bitcast ({ %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (%"$$fundef_22_env_83"*, %TName_Pair_Int32_Int32*)* @"$fundef_22" to { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*), i8* null }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %iter_fun
  %"$zero_1" = alloca %Int32
  store %Int32 zeroinitializer, %Int32* %"$zero_1"
  %"$one_2" = alloca %Int32
  store %Int32 { i32 1 }, %Int32* %"$one_2"
  %init_val = alloca %TName_Pair_Int32_Int32*
  %"$$one_2_161" = load %Int32, %Int32* %"$one_2"
  %"$$zero_1_162" = load %Int32, %Int32* %"$zero_1"
  %"$adtval_163_load" = load i8*, i8** @_execptr
  %"$adtval_163_salloc" = call i8* @_salloc(i8* %"$adtval_163_load", i64 9)
  %"$adtval_163" = bitcast i8* %"$adtval_163_salloc" to %CName_Pair_Int32_Int32*
  %"$adtgep_164" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_163", i32 0, i32 0
  store i8 0, i8* %"$adtgep_164"
  %"$adtgep_165" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_163", i32 0, i32 1
  store %Int32 %"$$one_2_161", %Int32* %"$adtgep_165"
  %"$adtgep_166" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_163", i32 0, i32 2
  store %Int32 %"$$zero_1_162", %Int32* %"$adtgep_166"
  %"$adtptr_167" = bitcast %CName_Pair_Int32_Int32* %"$adtval_163" to %TName_Pair_Int32_Int32*
  store %TName_Pair_Int32_Int32* %"$adtptr_167", %TName_Pair_Int32_Int32** %init_val
  %typed_folder = alloca { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }
  %"$nat_fold_168" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold
  %"$nat_fold_169" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_168", i32 0
  %"$nat_fold_170" = bitcast { i8*, i8* }* %"$nat_fold_169" to { { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_171" = load { { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_170"
  %"$nat_fold_fptr_172" = extractvalue { { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_171", 0
  %"$nat_fold_envptr_173" = extractvalue { { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_171", 1
  %"$nat_fold_call_174" = call { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$nat_fold_fptr_172"(i8* %"$nat_fold_envptr_173")
  store { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$nat_fold_call_174", { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %typed_folder
  %folder = alloca { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }
  %"$typed_folder_7" = alloca { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }
  %"$typed_folder_175" = load { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }, { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %typed_folder
  %"$typed_folder_fptr_176" = extractvalue { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$typed_folder_175", 0
  %"$typed_folder_envptr_177" = extractvalue { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$typed_folder_175", 1
  %"$iter_fun_178" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %iter_fun
  %"$typed_folder_call_179" = call { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$typed_folder_fptr_176"(i8* %"$typed_folder_envptr_177", { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$iter_fun_178")
  store { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$typed_folder_call_179", { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$typed_folder_7"
  %"$typed_folder_8" = alloca { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }
  %"$$typed_folder_7_180" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$typed_folder_7"
  %"$$typed_folder_7_fptr_181" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$typed_folder_7_180", 0
  %"$$typed_folder_7_envptr_182" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$typed_folder_7_180", 1
  %"$init_val_183" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %init_val
  %"$$typed_folder_7_call_184" = call { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$$typed_folder_7_fptr_181"(i8* %"$$typed_folder_7_envptr_182", %TName_Pair_Int32_Int32* %"$init_val_183")
  store { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$$typed_folder_7_call_184", { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }* %"$typed_folder_8"
  %"$$typed_folder_8_185" = load { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }* %"$typed_folder_8"
  store { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$$typed_folder_8_185", { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }* %folder
  %res = alloca %TName_Pair_Int32_Int32*
  %"$folder_9" = alloca %TName_Pair_Int32_Int32*
  %"$folder_186" = load { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }* %folder
  %"$folder_fptr_187" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$folder_186", 0
  %"$folder_envptr_188" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$folder_186", 1
  %"$folder_call_189" = call %TName_Pair_Int32_Int32* %"$folder_fptr_187"(i8* %"$folder_envptr_188", %Nat* %1)
  store %TName_Pair_Int32_Int32* %"$folder_call_189", %TName_Pair_Int32_Int32** %"$folder_9"
  %"$$folder_9_190" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$folder_9"
  store %TName_Pair_Int32_Int32* %"$$folder_9_190", %TName_Pair_Int32_Int32** %res
  %"$res_192" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %res
  %"$res_tag_193" = getelementptr inbounds %TName_Pair_Int32_Int32, %TName_Pair_Int32_Int32* %"$res_192", i32 0, i32 0
  %"$res_tag_194" = load i8, i8* %"$res_tag_193"
  switch i8 %"$res_tag_194", label %"$empty_default_195" [
    i8 0, label %"$Pair_196"
  ]

"$Pair_196":                                      ; preds = %entry
  %"$res_197" = bitcast %TName_Pair_Int32_Int32* %"$res_192" to %CName_Pair_Int32_Int32*
  %"$x_gep_198" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_197", i32 0, i32 1
  %"$x_load_199" = load %Int32, %Int32* %"$x_gep_198"
  %x = alloca %Int32
  store %Int32 %"$x_load_199", %Int32* %x
  %"$y_gep_200" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_197", i32 0, i32 2
  %"$y_load_201" = load %Int32, %Int32* %"$y_gep_200"
  %y = alloca %Int32
  store %Int32 %"$y_load_201", %Int32* %y
  %"$x_202" = load %Int32, %Int32* %x
  store %Int32 %"$x_202", %Int32* %"$retval_21"
  br label %"$matchsucc_191"

"$empty_default_195":                             ; preds = %entry
  br label %"$matchsucc_191"

"$matchsucc_191":                                 ; preds = %"$Pair_196", %"$empty_default_195"
  %"$$retval_21_203" = load %Int32, %Int32* %"$retval_21"
  ret %Int32 %"$$retval_21_203"
}

define internal %TName_Pair_Int32_Int32* @"$fundef_17"(%"$$fundef_17_env_85"* %0, %Nat* %1) {
entry:
  %"$$fundef_17_env_f0_116" = getelementptr inbounds %"$$fundef_17_env_85", %"$$fundef_17_env_85"* %0, i32 0, i32 0
  %"$f0_envload_117" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$$fundef_17_env_f0_116"
  %f0 = alloca %TName_Pair_Int32_Int32*
  store %TName_Pair_Int32_Int32* %"$f0_envload_117", %TName_Pair_Int32_Int32** %f0
  %"$$fundef_17_env_fn_118" = getelementptr inbounds %"$$fundef_17_env_85", %"$$fundef_17_env_85"* %0, i32 0, i32 1
  %"$fn_envload_119" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_17_env_fn_118"
  %fn = alloca { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }
  store { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_envload_119", { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn
  %"$$fundef_17_env_g_120" = getelementptr inbounds %"$$fundef_17_env_85", %"$$fundef_17_env_85"* %0, i32 0, i32 2
  %"$g_envload_121" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_17_env_g_120"
  %g = alloca { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }
  store { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_envload_121", { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g
  %"$retval_18" = alloca %TName_Pair_Int32_Int32*
  %"$n_tag_123" = getelementptr inbounds %Nat, %Nat* %1, i32 0, i32 0
  %"$n_tag_124" = load i8, i8* %"$n_tag_123"
  switch i8 %"$n_tag_124", label %"$empty_default_125" [
    i8 1, label %"$Succ_126"
    i8 0, label %"$Zero_152"
  ]

"$Succ_126":                                      ; preds = %entry
  %"$n_127" = bitcast %Nat* %1 to %Succ*
  %"$n1_gep_128" = getelementptr inbounds %Succ, %Succ* %"$n_127", i32 0, i32 1
  %"$n1_load_129" = load %Nat*, %Nat** %"$n1_gep_128"
  %n1 = alloca %Nat*
  store %Nat* %"$n1_load_129", %Nat** %n1
  %res = alloca %TName_Pair_Int32_Int32*
  %"$fn_3" = alloca { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }
  %"$fn_130" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn
  %"$fn_fptr_131" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_130", 0
  %"$fn_envptr_132" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_130", 1
  %"$f0_133" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %f0
  %"$fn_call_134" = call { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$fn_fptr_131"(i8* %"$fn_envptr_132", %TName_Pair_Int32_Int32* %"$f0_133")
  store { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$fn_call_134", { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }* %"$fn_3"
  %"$fn_4" = alloca %TName_Pair_Int32_Int32*
  %"$$fn_3_135" = load { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }* %"$fn_3"
  %"$$fn_3_fptr_136" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$$fn_3_135", 0
  %"$$fn_3_envptr_137" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$$fn_3_135", 1
  %"$n1_138" = load %Nat*, %Nat** %n1
  %"$$fn_3_call_139" = call %TName_Pair_Int32_Int32* %"$$fn_3_fptr_136"(i8* %"$$fn_3_envptr_137", %Nat* %"$n1_138")
  store %TName_Pair_Int32_Int32* %"$$fn_3_call_139", %TName_Pair_Int32_Int32** %"$fn_4"
  %"$$fn_4_140" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$fn_4"
  store %TName_Pair_Int32_Int32* %"$$fn_4_140", %TName_Pair_Int32_Int32** %res
  %"$g_5" = alloca { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }
  %"$g_141" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g
  %"$g_fptr_142" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_141", 0
  %"$g_envptr_143" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_141", 1
  %"$res_144" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %res
  %"$g_call_145" = call { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$g_fptr_142"(i8* %"$g_envptr_143", %TName_Pair_Int32_Int32* %"$res_144")
  store { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$g_call_145", { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }* %"$g_5"
  %"$g_6" = alloca %TName_Pair_Int32_Int32*
  %"$$g_5_146" = load { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }* %"$g_5"
  %"$$g_5_fptr_147" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$$g_5_146", 0
  %"$$g_5_envptr_148" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$$g_5_146", 1
  %"$n1_149" = load %Nat*, %Nat** %n1
  %"$$g_5_call_150" = call %TName_Pair_Int32_Int32* %"$$g_5_fptr_147"(i8* %"$$g_5_envptr_148", %Nat* %"$n1_149")
  store %TName_Pair_Int32_Int32* %"$$g_5_call_150", %TName_Pair_Int32_Int32** %"$g_6"
  %"$$g_6_151" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$g_6"
  store %TName_Pair_Int32_Int32* %"$$g_6_151", %TName_Pair_Int32_Int32** %"$retval_18"
  br label %"$matchsucc_122"

"$Zero_152":                                      ; preds = %entry
  %"$n_153" = bitcast %Nat* %1 to %Zero*
  %"$f0_154" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %f0
  store %TName_Pair_Int32_Int32* %"$f0_154", %TName_Pair_Int32_Int32** %"$retval_18"
  br label %"$matchsucc_122"

"$empty_default_125":                             ; preds = %entry
  br label %"$matchsucc_122"

"$matchsucc_122":                                 ; preds = %"$Zero_152", %"$Succ_126", %"$empty_default_125"
  %"$$retval_18_155" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$retval_18"
  ret %TName_Pair_Int32_Int32* %"$$retval_18_155"
}

define internal { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } @"$fundef_15"(%"$$fundef_15_env_86"* %0, %TName_Pair_Int32_Int32* %1) {
entry:
  %"$$fundef_15_env_fn_102" = getelementptr inbounds %"$$fundef_15_env_86", %"$$fundef_15_env_86"* %0, i32 0, i32 0
  %"$fn_envload_103" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_15_env_fn_102"
  %fn = alloca { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }
  store { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_envload_103", { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn
  %"$$fundef_15_env_g_104" = getelementptr inbounds %"$$fundef_15_env_86", %"$$fundef_15_env_86"* %0, i32 0, i32 1
  %"$g_envload_105" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_15_env_g_104"
  %g = alloca { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }
  store { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_envload_105", { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g
  %"$retval_16" = alloca { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }
  %"$$fundef_17_envp_106_load" = load i8*, i8** @_execptr
  %"$$fundef_17_envp_106_salloc" = call i8* @_salloc(i8* %"$$fundef_17_envp_106_load", i64 40)
  %"$$fundef_17_envp_106" = bitcast i8* %"$$fundef_17_envp_106_salloc" to %"$$fundef_17_env_85"*
  %"$$fundef_17_env_voidp_108" = bitcast %"$$fundef_17_env_85"* %"$$fundef_17_envp_106" to i8*
  %"$$fundef_17_cloval_109" = insertvalue { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } { %TName_Pair_Int32_Int32* (i8*, %Nat*)* bitcast (%TName_Pair_Int32_Int32* (%"$$fundef_17_env_85"*, %Nat*)* @"$fundef_17" to %TName_Pair_Int32_Int32* (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_17_env_voidp_108", 1
  %"$$fundef_17_env_f0_110" = getelementptr inbounds %"$$fundef_17_env_85", %"$$fundef_17_env_85"* %"$$fundef_17_envp_106", i32 0, i32 0
  store %TName_Pair_Int32_Int32* %1, %TName_Pair_Int32_Int32** %"$$fundef_17_env_f0_110"
  %"$$fundef_17_env_fn_111" = getelementptr inbounds %"$$fundef_17_env_85", %"$$fundef_17_env_85"* %"$$fundef_17_envp_106", i32 0, i32 1
  %"$fn_112" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn
  store { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_112", { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_17_env_fn_111"
  %"$$fundef_17_env_g_113" = getelementptr inbounds %"$$fundef_17_env_85", %"$$fundef_17_env_85"* %"$$fundef_17_envp_106", i32 0, i32 2
  %"$g_114" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g
  store { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_114", { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_17_env_g_113"
  store { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$$fundef_17_cloval_109", { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }* %"$retval_16"
  %"$$retval_16_115" = load { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* }* %"$retval_16"
  ret { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } %"$$retval_16_115"
}

define internal { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } @"$fundef_13"(%"$$fundef_13_env_87"* %0, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %1) {
entry:
  %"$retval_14" = alloca { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }
  %"$$fundef_15_envp_93_load" = load i8*, i8** @_execptr
  %"$$fundef_15_envp_93_salloc" = call i8* @_salloc(i8* %"$$fundef_15_envp_93_load", i64 32)
  %"$$fundef_15_envp_93" = bitcast i8* %"$$fundef_15_envp_93_salloc" to %"$$fundef_15_env_86"*
  %"$$fundef_15_env_voidp_95" = bitcast %"$$fundef_15_env_86"* %"$$fundef_15_envp_93" to i8*
  %"$$fundef_15_cloval_96" = insertvalue { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)* bitcast ({ %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (%"$$fundef_15_env_86"*, %TName_Pair_Int32_Int32*)* @"$fundef_15" to { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*), i8* undef }, i8* %"$$fundef_15_env_voidp_95", 1
  %g = alloca { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }
  store { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$fundef_15_cloval_96", { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g
  %"$$fundef_15_env_fn_97" = getelementptr inbounds %"$$fundef_15_env_86", %"$$fundef_15_env_86"* %"$$fundef_15_envp_93", i32 0, i32 0
  store { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %1, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_15_env_fn_97"
  %"$$fundef_15_env_g_98" = getelementptr inbounds %"$$fundef_15_env_86", %"$$fundef_15_env_86"* %"$$fundef_15_envp_93", i32 0, i32 1
  %"$g_99" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g
  store { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_99", { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_15_env_g_98"
  %"$g_100" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g
  store { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_100", { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$retval_14"
  %"$$retval_14_101" = load { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$retval_14"
  ret { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$retval_14_101"
}

define internal { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } @"$fundef_11"(%"$$fundef_11_env_88"* %0) {
entry:
  %"$retval_12" = alloca { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }
  store { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })* bitcast ({ { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (%"$$fundef_13_env_87"*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })* @"$fundef_13" to { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*), i8* null }, { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %"$retval_12"
  %"$$retval_12_92" = load { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }, { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %"$retval_12"
  ret { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$$retval_12_92"
}

declare i8* @_salloc(i8*, i64)

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Int32 @"$scilla_expr_234"(i8* %0) {
entry:
  %"$dyndisp_table_238_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_238_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_238_salloc_load", i64 16)
  %"$dyndisp_table_238_salloc" = bitcast i8* %"$dyndisp_table_238_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_238" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_238_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_239" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_238", i32 0
  %"$dyndisp_pcast_240" = bitcast { i8*, i8* }* %"$dyndisp_gep_239" to { { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (%"$$fundef_11_env_88"*)* @"$fundef_11" to { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_240"
  store { i8*, i8* }* %"$dyndisp_table_238", { i8*, i8* }** @nat_fold
  %"$expr_19" = alloca %Int32
  %zero = alloca %Nat*
  %"$adtval_241_load" = load i8*, i8** @_execptr
  %"$adtval_241_salloc" = call i8* @_salloc(i8* %"$adtval_241_load", i64 1)
  %"$adtval_241" = bitcast i8* %"$adtval_241_salloc" to %Zero*
  %"$adtgep_242" = getelementptr inbounds %Zero, %Zero* %"$adtval_241", i32 0, i32 0
  store i8 0, i8* %"$adtgep_242"
  %"$adtptr_243" = bitcast %Zero* %"$adtval_241" to %Nat*
  store %Nat* %"$adtptr_243", %Nat** %zero
  %one = alloca %Nat*
  %"$zero_244" = load %Nat*, %Nat** %zero
  %"$adtval_245_load" = load i8*, i8** @_execptr
  %"$adtval_245_salloc" = call i8* @_salloc(i8* %"$adtval_245_load", i64 9)
  %"$adtval_245" = bitcast i8* %"$adtval_245_salloc" to %Succ*
  %"$adtgep_246" = getelementptr inbounds %Succ, %Succ* %"$adtval_245", i32 0, i32 0
  store i8 1, i8* %"$adtgep_246"
  %"$adtgep_247" = getelementptr inbounds %Succ, %Succ* %"$adtval_245", i32 0, i32 1
  store %Nat* %"$zero_244", %Nat** %"$adtgep_247"
  %"$adtptr_248" = bitcast %Succ* %"$adtval_245" to %Nat*
  store %Nat* %"$adtptr_248", %Nat** %one
  %two = alloca %Nat*
  %"$one_249" = load %Nat*, %Nat** %one
  %"$adtval_250_load" = load i8*, i8** @_execptr
  %"$adtval_250_salloc" = call i8* @_salloc(i8* %"$adtval_250_load", i64 9)
  %"$adtval_250" = bitcast i8* %"$adtval_250_salloc" to %Succ*
  %"$adtgep_251" = getelementptr inbounds %Succ, %Succ* %"$adtval_250", i32 0, i32 0
  store i8 1, i8* %"$adtgep_251"
  %"$adtgep_252" = getelementptr inbounds %Succ, %Succ* %"$adtval_250", i32 0, i32 1
  store %Nat* %"$one_249", %Nat** %"$adtgep_252"
  %"$adtptr_253" = bitcast %Succ* %"$adtval_250" to %Nat*
  store %Nat* %"$adtptr_253", %Nat** %two
  %three = alloca %Nat*
  %"$two_254" = load %Nat*, %Nat** %two
  %"$adtval_255_load" = load i8*, i8** @_execptr
  %"$adtval_255_salloc" = call i8* @_salloc(i8* %"$adtval_255_load", i64 9)
  %"$adtval_255" = bitcast i8* %"$adtval_255_salloc" to %Succ*
  %"$adtgep_256" = getelementptr inbounds %Succ, %Succ* %"$adtval_255", i32 0, i32 0
  store i8 1, i8* %"$adtgep_256"
  %"$adtgep_257" = getelementptr inbounds %Succ, %Succ* %"$adtval_255", i32 0, i32 1
  store %Nat* %"$two_254", %Nat** %"$adtgep_257"
  %"$adtptr_258" = bitcast %Succ* %"$adtval_255" to %Nat*
  store %Nat* %"$adtptr_258", %Nat** %three
  %four = alloca %Nat*
  %"$three_259" = load %Nat*, %Nat** %three
  %"$adtval_260_load" = load i8*, i8** @_execptr
  %"$adtval_260_salloc" = call i8* @_salloc(i8* %"$adtval_260_load", i64 9)
  %"$adtval_260" = bitcast i8* %"$adtval_260_salloc" to %Succ*
  %"$adtgep_261" = getelementptr inbounds %Succ, %Succ* %"$adtval_260", i32 0, i32 0
  store i8 1, i8* %"$adtgep_261"
  %"$adtgep_262" = getelementptr inbounds %Succ, %Succ* %"$adtval_260", i32 0, i32 1
  store %Nat* %"$three_259", %Nat** %"$adtgep_262"
  %"$adtptr_263" = bitcast %Succ* %"$adtval_260" to %Nat*
  store %Nat* %"$adtptr_263", %Nat** %four
  %five = alloca %Nat*
  %"$four_264" = load %Nat*, %Nat** %four
  %"$adtval_265_load" = load i8*, i8** @_execptr
  %"$adtval_265_salloc" = call i8* @_salloc(i8* %"$adtval_265_load", i64 9)
  %"$adtval_265" = bitcast i8* %"$adtval_265_salloc" to %Succ*
  %"$adtgep_266" = getelementptr inbounds %Succ, %Succ* %"$adtval_265", i32 0, i32 0
  store i8 1, i8* %"$adtgep_266"
  %"$adtgep_267" = getelementptr inbounds %Succ, %Succ* %"$adtval_265", i32 0, i32 1
  store %Nat* %"$four_264", %Nat** %"$adtgep_267"
  %"$adtptr_268" = bitcast %Succ* %"$adtval_265" to %Nat*
  store %Nat* %"$adtptr_268", %Nat** %five
  %six = alloca %Nat*
  %"$five_269" = load %Nat*, %Nat** %five
  %"$adtval_270_load" = load i8*, i8** @_execptr
  %"$adtval_270_salloc" = call i8* @_salloc(i8* %"$adtval_270_load", i64 9)
  %"$adtval_270" = bitcast i8* %"$adtval_270_salloc" to %Succ*
  %"$adtgep_271" = getelementptr inbounds %Succ, %Succ* %"$adtval_270", i32 0, i32 0
  store i8 1, i8* %"$adtgep_271"
  %"$adtgep_272" = getelementptr inbounds %Succ, %Succ* %"$adtval_270", i32 0, i32 1
  store %Nat* %"$five_269", %Nat** %"$adtgep_272"
  %"$adtptr_273" = bitcast %Succ* %"$adtval_270" to %Nat*
  store %Nat* %"$adtptr_273", %Nat** %six
  %seven = alloca %Nat*
  %"$six_274" = load %Nat*, %Nat** %six
  %"$adtval_275_load" = load i8*, i8** @_execptr
  %"$adtval_275_salloc" = call i8* @_salloc(i8* %"$adtval_275_load", i64 9)
  %"$adtval_275" = bitcast i8* %"$adtval_275_salloc" to %Succ*
  %"$adtgep_276" = getelementptr inbounds %Succ, %Succ* %"$adtval_275", i32 0, i32 0
  store i8 1, i8* %"$adtgep_276"
  %"$adtgep_277" = getelementptr inbounds %Succ, %Succ* %"$adtval_275", i32 0, i32 1
  store %Nat* %"$six_274", %Nat** %"$adtgep_277"
  %"$adtptr_278" = bitcast %Succ* %"$adtval_275" to %Nat*
  store %Nat* %"$adtptr_278", %Nat** %seven
  %fib = alloca { %Int32 (i8*, %Nat*)*, i8* }
  %"$$fundef_20_envp_279_load" = load i8*, i8** @_execptr
  %"$$fundef_20_envp_279_salloc" = call i8* @_salloc(i8* %"$$fundef_20_envp_279_load", i64 8)
  %"$$fundef_20_envp_279" = bitcast i8* %"$$fundef_20_envp_279_salloc" to %"$$fundef_20_env_84"*
  %"$$fundef_20_env_voidp_281" = bitcast %"$$fundef_20_env_84"* %"$$fundef_20_envp_279" to i8*
  %"$$fundef_20_cloval_282" = insertvalue { %Int32 (i8*, %Nat*)*, i8* } { %Int32 (i8*, %Nat*)* bitcast (%Int32 (%"$$fundef_20_env_84"*, %Nat*)* @"$fundef_20" to %Int32 (i8*, %Nat*)*), i8* undef }, i8* %"$$fundef_20_env_voidp_281", 1
  %"$$fundef_20_env_nat_fold_283" = getelementptr inbounds %"$$fundef_20_env_84", %"$$fundef_20_env_84"* %"$$fundef_20_envp_279", i32 0, i32 0
  %"$nat_fold_284" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold
  store { i8*, i8* }* %"$nat_fold_284", { i8*, i8* }** %"$$fundef_20_env_nat_fold_283"
  store { %Int32 (i8*, %Nat*)*, i8* } %"$$fundef_20_cloval_282", { %Int32 (i8*, %Nat*)*, i8* }* %fib
  %"$fib_10" = alloca %Int32
  %"$fib_285" = load { %Int32 (i8*, %Nat*)*, i8* }, { %Int32 (i8*, %Nat*)*, i8* }* %fib
  %"$fib_fptr_286" = extractvalue { %Int32 (i8*, %Nat*)*, i8* } %"$fib_285", 0
  %"$fib_envptr_287" = extractvalue { %Int32 (i8*, %Nat*)*, i8* } %"$fib_285", 1
  %"$seven_288" = load %Nat*, %Nat** %seven
  %"$fib_call_289" = call %Int32 %"$fib_fptr_286"(i8* %"$fib_envptr_287", %Nat* %"$seven_288")
  store %Int32 %"$fib_call_289", %Int32* %"$fib_10"
  %"$$fib_10_290" = load %Int32, %Int32* %"$fib_10"
  store %Int32 %"$$fib_10_290", %Int32* %"$expr_19"
  %"$$expr_19_291" = load %Int32, %Int32* %"$expr_19"
  ret %Int32 %"$$expr_19_291"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_292" = call %Int32 @"$scilla_expr_234"(i8* null)
  %"$pval_293" = alloca %Int32
  %"$memvoidcast_294" = bitcast %Int32* %"$pval_293" to i8*
  store %Int32 %"$exprval_292", %Int32* %"$pval_293"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Int32_28", i8* %"$memvoidcast_294")
  ret void
}
