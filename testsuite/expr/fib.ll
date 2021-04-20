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
target triple = "x86_64-unknown-linux-gnu"

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
%TName_Nat = type { i8, %CName_Zero*, %CName_Succ* }
%CName_Zero = type <{ i8 }>
%CName_Succ = type <{ i8, %TName_Nat* }>
%"$$fundef_22_env_83" = type {}
%"$$fundef_20_env_84" = type { { i8*, i8* }* }
%"$$fundef_17_env_85" = type { %TName_Pair_Int32_Int32*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } }
%"$$fundef_15_env_86" = type { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } }
%"$$fundef_13_env_87" = type {}
%"$$fundef_11_env_88" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
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

define internal %TName_Pair_Int32_Int32* @"$fundef_24"(%"$$fundef_24_env_82"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_24_env_res_340" = getelementptr inbounds %"$$fundef_24_env_82", %"$$fundef_24_env_82"* %0, i32 0, i32 0
  %"$res_envload_341" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$$fundef_24_env_res_340", align 8
  %res = alloca %TName_Pair_Int32_Int32*, align 8
  store %TName_Pair_Int32_Int32* %"$res_envload_341", %TName_Pair_Int32_Int32** %res, align 8
  %"$retval_25" = alloca %TName_Pair_Int32_Int32*, align 8
  %"$gasrem_342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_343" = icmp ugt i64 1, %"$gasrem_342"
  br i1 %"$gascmp_343", label %"$out_of_gas_344", label %"$have_gas_345"

"$out_of_gas_344":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_345"

"$have_gas_345":                                  ; preds = %"$out_of_gas_344", %entry
  %"$consume_346" = sub i64 %"$gasrem_342", 1
  store i64 %"$consume_346", i64* @_gasrem, align 8
  %"$res_348" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %res, align 8
  %"$res_tag_349" = getelementptr inbounds %TName_Pair_Int32_Int32, %TName_Pair_Int32_Int32* %"$res_348", i32 0, i32 0
  %"$res_tag_350" = load i8, i8* %"$res_tag_349", align 1
  switch i8 %"$res_tag_350", label %"$empty_default_351" [
    i8 0, label %"$Pair_352"
  ]

"$Pair_352":                                      ; preds = %"$have_gas_345"
  %"$res_353" = bitcast %TName_Pair_Int32_Int32* %"$res_348" to %CName_Pair_Int32_Int32*
  %"$x_gep_354" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_353", i32 0, i32 1
  %"$x_load_355" = load %Int32, %Int32* %"$x_gep_354", align 4
  %x = alloca %Int32, align 8
  store %Int32 %"$x_load_355", %Int32* %x, align 4
  %"$y_gep_356" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_353", i32 0, i32 2
  %"$y_load_357" = load %Int32, %Int32* %"$y_gep_356", align 4
  %y = alloca %Int32, align 8
  store %Int32 %"$y_load_357", %Int32* %y, align 4
  %"$gasrem_358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_359" = icmp ugt i64 1, %"$gasrem_358"
  br i1 %"$gascmp_359", label %"$out_of_gas_360", label %"$have_gas_361"

"$out_of_gas_360":                                ; preds = %"$Pair_352"
  call void @_out_of_gas()
  br label %"$have_gas_361"

"$have_gas_361":                                  ; preds = %"$out_of_gas_360", %"$Pair_352"
  %"$consume_362" = sub i64 %"$gasrem_358", 1
  store i64 %"$consume_362", i64* @_gasrem, align 8
  %z = alloca %Int32, align 8
  %"$x_363" = load %Int32, %Int32* %x, align 4
  %"$y_364" = load %Int32, %Int32* %y, align 4
  %"$add_call_365" = call %Int32 @_add_Int32(%Int32 %"$x_363", %Int32 %"$y_364")
  store %Int32 %"$add_call_365", %Int32* %z, align 4
  %"$gasrem_366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_367" = icmp ugt i64 1, %"$gasrem_366"
  br i1 %"$gascmp_367", label %"$out_of_gas_368", label %"$have_gas_369"

"$out_of_gas_368":                                ; preds = %"$have_gas_361"
  call void @_out_of_gas()
  br label %"$have_gas_369"

"$have_gas_369":                                  ; preds = %"$out_of_gas_368", %"$have_gas_361"
  %"$consume_370" = sub i64 %"$gasrem_366", 1
  store i64 %"$consume_370", i64* @_gasrem, align 8
  %"$z_371" = load %Int32, %Int32* %z, align 4
  %"$x_372" = load %Int32, %Int32* %x, align 4
  %"$adtval_373_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_373_salloc" = call i8* @_salloc(i8* %"$adtval_373_load", i64 9)
  %"$adtval_373" = bitcast i8* %"$adtval_373_salloc" to %CName_Pair_Int32_Int32*
  %"$adtgep_374" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_373", i32 0, i32 0
  store i8 0, i8* %"$adtgep_374", align 1
  %"$adtgep_375" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_373", i32 0, i32 1
  store %Int32 %"$z_371", %Int32* %"$adtgep_375", align 4
  %"$adtgep_376" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_373", i32 0, i32 2
  store %Int32 %"$x_372", %Int32* %"$adtgep_376", align 4
  %"$adtptr_377" = bitcast %CName_Pair_Int32_Int32* %"$adtval_373" to %TName_Pair_Int32_Int32*
  store %TName_Pair_Int32_Int32* %"$adtptr_377", %TName_Pair_Int32_Int32** %"$retval_25", align 8
  br label %"$matchsucc_347"

"$empty_default_351":                             ; preds = %"$have_gas_345"
  br label %"$matchsucc_347"

"$matchsucc_347":                                 ; preds = %"$have_gas_369", %"$empty_default_351"
  %"$$retval_25_378" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$retval_25", align 8
  ret %TName_Pair_Int32_Int32* %"$$retval_25_378"
}

define internal { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } @"$fundef_22"(%"$$fundef_22_env_83"* %0, %TName_Pair_Int32_Int32* %1) {
entry:
  %"$retval_23" = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_330" = icmp ugt i64 1, %"$gasrem_329"
  br i1 %"$gascmp_330", label %"$out_of_gas_331", label %"$have_gas_332"

"$out_of_gas_331":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_332"

"$have_gas_332":                                  ; preds = %"$out_of_gas_331", %entry
  %"$consume_333" = sub i64 %"$gasrem_329", 1
  store i64 %"$consume_333", i64* @_gasrem, align 8
  %"$$fundef_24_envp_334_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_24_envp_334_salloc" = call i8* @_salloc(i8* %"$$fundef_24_envp_334_load", i64 8)
  %"$$fundef_24_envp_334" = bitcast i8* %"$$fundef_24_envp_334_salloc" to %"$$fundef_24_env_82"*
  %"$$fundef_24_env_voidp_336" = bitcast %"$$fundef_24_env_82"* %"$$fundef_24_envp_334" to i8*
  %"$$fundef_24_cloval_337" = insertvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)* bitcast (%TName_Pair_Int32_Int32* (%"$$fundef_24_env_82"*, %TName_Nat*)* @"$fundef_24" to %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_24_env_voidp_336", 1
  %"$$fundef_24_env_res_338" = getelementptr inbounds %"$$fundef_24_env_82", %"$$fundef_24_env_82"* %"$$fundef_24_envp_334", i32 0, i32 0
  store %TName_Pair_Int32_Int32* %1, %TName_Pair_Int32_Int32** %"$$fundef_24_env_res_338", align 8
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$fundef_24_cloval_337", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$retval_23", align 8
  %"$$retval_23_339" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$retval_23", align 8
  ret { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$retval_23_339"
}

define internal %Int32 @"$fundef_20"(%"$$fundef_20_env_84"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_20_env_nat_fold_201" = getelementptr inbounds %"$$fundef_20_env_84", %"$$fundef_20_env_84"* %0, i32 0, i32 0
  %"$nat_fold_envload_202" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_20_env_nat_fold_201", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_202", { i8*, i8* }** %nat_fold, align 8
  %"$retval_21" = alloca %Int32, align 8
  %"$gasrem_203" = load i64, i64* @_gasrem, align 8
  %"$gascmp_204" = icmp ugt i64 1, %"$gasrem_203"
  br i1 %"$gascmp_204", label %"$out_of_gas_205", label %"$have_gas_206"

"$out_of_gas_205":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_206"

"$have_gas_206":                                  ; preds = %"$out_of_gas_205", %entry
  %"$consume_207" = sub i64 %"$gasrem_203", 1
  store i64 %"$consume_207", i64* @_gasrem, align 8
  %iter_fun = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  %"$gasrem_208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_209" = icmp ugt i64 1, %"$gasrem_208"
  br i1 %"$gascmp_209", label %"$out_of_gas_210", label %"$have_gas_211"

"$out_of_gas_210":                                ; preds = %"$have_gas_206"
  call void @_out_of_gas()
  br label %"$have_gas_211"

"$have_gas_211":                                  ; preds = %"$out_of_gas_210", %"$have_gas_206"
  %"$consume_212" = sub i64 %"$gasrem_208", 1
  store i64 %"$consume_212", i64* @_gasrem, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)* bitcast ({ %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_22_env_83"*, %TName_Pair_Int32_Int32*)* @"$fundef_22" to { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*), i8* null }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %iter_fun, align 8
  %"$gasrem_216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_217" = icmp ugt i64 1, %"$gasrem_216"
  br i1 %"$gascmp_217", label %"$out_of_gas_218", label %"$have_gas_219"

"$out_of_gas_218":                                ; preds = %"$have_gas_211"
  call void @_out_of_gas()
  br label %"$have_gas_219"

"$have_gas_219":                                  ; preds = %"$out_of_gas_218", %"$have_gas_211"
  %"$consume_220" = sub i64 %"$gasrem_216", 1
  store i64 %"$consume_220", i64* @_gasrem, align 8
  %"$zero_1" = alloca %Int32, align 8
  %"$gasrem_221" = load i64, i64* @_gasrem, align 8
  %"$gascmp_222" = icmp ugt i64 1, %"$gasrem_221"
  br i1 %"$gascmp_222", label %"$out_of_gas_223", label %"$have_gas_224"

"$out_of_gas_223":                                ; preds = %"$have_gas_219"
  call void @_out_of_gas()
  br label %"$have_gas_224"

"$have_gas_224":                                  ; preds = %"$out_of_gas_223", %"$have_gas_219"
  %"$consume_225" = sub i64 %"$gasrem_221", 1
  store i64 %"$consume_225", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %"$zero_1", align 4
  %"$gasrem_226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_227" = icmp ugt i64 1, %"$gasrem_226"
  br i1 %"$gascmp_227", label %"$out_of_gas_228", label %"$have_gas_229"

"$out_of_gas_228":                                ; preds = %"$have_gas_224"
  call void @_out_of_gas()
  br label %"$have_gas_229"

"$have_gas_229":                                  ; preds = %"$out_of_gas_228", %"$have_gas_224"
  %"$consume_230" = sub i64 %"$gasrem_226", 1
  store i64 %"$consume_230", i64* @_gasrem, align 8
  %"$one_2" = alloca %Int32, align 8
  %"$gasrem_231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_232" = icmp ugt i64 1, %"$gasrem_231"
  br i1 %"$gascmp_232", label %"$out_of_gas_233", label %"$have_gas_234"

"$out_of_gas_233":                                ; preds = %"$have_gas_229"
  call void @_out_of_gas()
  br label %"$have_gas_234"

"$have_gas_234":                                  ; preds = %"$out_of_gas_233", %"$have_gas_229"
  %"$consume_235" = sub i64 %"$gasrem_231", 1
  store i64 %"$consume_235", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %"$one_2", align 4
  %"$gasrem_236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_237" = icmp ugt i64 1, %"$gasrem_236"
  br i1 %"$gascmp_237", label %"$out_of_gas_238", label %"$have_gas_239"

"$out_of_gas_238":                                ; preds = %"$have_gas_234"
  call void @_out_of_gas()
  br label %"$have_gas_239"

"$have_gas_239":                                  ; preds = %"$out_of_gas_238", %"$have_gas_234"
  %"$consume_240" = sub i64 %"$gasrem_236", 1
  store i64 %"$consume_240", i64* @_gasrem, align 8
  %init_val = alloca %TName_Pair_Int32_Int32*, align 8
  %"$gasrem_241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_242" = icmp ugt i64 1, %"$gasrem_241"
  br i1 %"$gascmp_242", label %"$out_of_gas_243", label %"$have_gas_244"

"$out_of_gas_243":                                ; preds = %"$have_gas_239"
  call void @_out_of_gas()
  br label %"$have_gas_244"

"$have_gas_244":                                  ; preds = %"$out_of_gas_243", %"$have_gas_239"
  %"$consume_245" = sub i64 %"$gasrem_241", 1
  store i64 %"$consume_245", i64* @_gasrem, align 8
  %"$$one_2_246" = load %Int32, %Int32* %"$one_2", align 4
  %"$$zero_1_247" = load %Int32, %Int32* %"$zero_1", align 4
  %"$adtval_248_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_248_salloc" = call i8* @_salloc(i8* %"$adtval_248_load", i64 9)
  %"$adtval_248" = bitcast i8* %"$adtval_248_salloc" to %CName_Pair_Int32_Int32*
  %"$adtgep_249" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_248", i32 0, i32 0
  store i8 0, i8* %"$adtgep_249", align 1
  %"$adtgep_250" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_248", i32 0, i32 1
  store %Int32 %"$$one_2_246", %Int32* %"$adtgep_250", align 4
  %"$adtgep_251" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_248", i32 0, i32 2
  store %Int32 %"$$zero_1_247", %Int32* %"$adtgep_251", align 4
  %"$adtptr_252" = bitcast %CName_Pair_Int32_Int32* %"$adtval_248" to %TName_Pair_Int32_Int32*
  store %TName_Pair_Int32_Int32* %"$adtptr_252", %TName_Pair_Int32_Int32** %init_val, align 8
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 1, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$have_gas_244"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$have_gas_244"
  %"$consume_257" = sub i64 %"$gasrem_253", 1
  store i64 %"$consume_257", i64* @_gasrem, align 8
  %typed_folder = alloca { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }, align 8
  %"$gasrem_258" = load i64, i64* @_gasrem, align 8
  %"$gascmp_259" = icmp ugt i64 1, %"$gasrem_258"
  br i1 %"$gascmp_259", label %"$out_of_gas_260", label %"$have_gas_261"

"$out_of_gas_260":                                ; preds = %"$have_gas_256"
  call void @_out_of_gas()
  br label %"$have_gas_261"

"$have_gas_261":                                  ; preds = %"$out_of_gas_260", %"$have_gas_256"
  %"$consume_262" = sub i64 %"$gasrem_258", 1
  store i64 %"$consume_262", i64* @_gasrem, align 8
  %"$nat_fold_263" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_264" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_263", i32 0
  %"$nat_fold_265" = bitcast { i8*, i8* }* %"$nat_fold_264" to { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_266" = load { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_265", align 8
  %"$nat_fold_fptr_267" = extractvalue { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_266", 0
  %"$nat_fold_envptr_268" = extractvalue { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_266", 1
  %"$nat_fold_call_269" = call { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$nat_fold_fptr_267"(i8* %"$nat_fold_envptr_268")
  store { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$nat_fold_call_269", { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %typed_folder, align 8
  %"$gasrem_270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_271" = icmp ugt i64 1, %"$gasrem_270"
  br i1 %"$gascmp_271", label %"$out_of_gas_272", label %"$have_gas_273"

"$out_of_gas_272":                                ; preds = %"$have_gas_261"
  call void @_out_of_gas()
  br label %"$have_gas_273"

"$have_gas_273":                                  ; preds = %"$out_of_gas_272", %"$have_gas_261"
  %"$consume_274" = sub i64 %"$gasrem_270", 1
  store i64 %"$consume_274", i64* @_gasrem, align 8
  %folder = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_276" = icmp ugt i64 1, %"$gasrem_275"
  br i1 %"$gascmp_276", label %"$out_of_gas_277", label %"$have_gas_278"

"$out_of_gas_277":                                ; preds = %"$have_gas_273"
  call void @_out_of_gas()
  br label %"$have_gas_278"

"$have_gas_278":                                  ; preds = %"$out_of_gas_277", %"$have_gas_273"
  %"$consume_279" = sub i64 %"$gasrem_275", 1
  store i64 %"$consume_279", i64* @_gasrem, align 8
  %"$typed_folder_7" = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  %"$typed_folder_280" = load { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }, { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %typed_folder, align 8
  %"$typed_folder_fptr_281" = extractvalue { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$typed_folder_280", 0
  %"$typed_folder_envptr_282" = extractvalue { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$typed_folder_280", 1
  %"$iter_fun_283" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %iter_fun, align 8
  %"$typed_folder_call_284" = call { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$typed_folder_fptr_281"(i8* %"$typed_folder_envptr_282", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$iter_fun_283")
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$typed_folder_call_284", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$typed_folder_7", align 8
  %"$typed_folder_8" = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$typed_folder_7_285" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$typed_folder_7", align 8
  %"$$typed_folder_7_fptr_286" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$typed_folder_7_285", 0
  %"$$typed_folder_7_envptr_287" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$typed_folder_7_285", 1
  %"$init_val_288" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %init_val, align 8
  %"$$typed_folder_7_call_289" = call { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$typed_folder_7_fptr_286"(i8* %"$$typed_folder_7_envptr_287", %TName_Pair_Int32_Int32* %"$init_val_288")
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$typed_folder_7_call_289", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$typed_folder_8", align 8
  %"$$typed_folder_8_290" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$typed_folder_8", align 8
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$typed_folder_8_290", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %folder, align 8
  %"$gasrem_291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_292" = icmp ugt i64 1, %"$gasrem_291"
  br i1 %"$gascmp_292", label %"$out_of_gas_293", label %"$have_gas_294"

"$out_of_gas_293":                                ; preds = %"$have_gas_278"
  call void @_out_of_gas()
  br label %"$have_gas_294"

"$have_gas_294":                                  ; preds = %"$out_of_gas_293", %"$have_gas_278"
  %"$consume_295" = sub i64 %"$gasrem_291", 1
  store i64 %"$consume_295", i64* @_gasrem, align 8
  %res = alloca %TName_Pair_Int32_Int32*, align 8
  %"$gasrem_296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_297" = icmp ugt i64 1, %"$gasrem_296"
  br i1 %"$gascmp_297", label %"$out_of_gas_298", label %"$have_gas_299"

"$out_of_gas_298":                                ; preds = %"$have_gas_294"
  call void @_out_of_gas()
  br label %"$have_gas_299"

"$have_gas_299":                                  ; preds = %"$out_of_gas_298", %"$have_gas_294"
  %"$consume_300" = sub i64 %"$gasrem_296", 1
  store i64 %"$consume_300", i64* @_gasrem, align 8
  %"$folder_9" = alloca %TName_Pair_Int32_Int32*, align 8
  %"$folder_301" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %folder, align 8
  %"$folder_fptr_302" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$folder_301", 0
  %"$folder_envptr_303" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$folder_301", 1
  %"$folder_call_304" = call %TName_Pair_Int32_Int32* %"$folder_fptr_302"(i8* %"$folder_envptr_303", %TName_Nat* %1)
  store %TName_Pair_Int32_Int32* %"$folder_call_304", %TName_Pair_Int32_Int32** %"$folder_9", align 8
  %"$$folder_9_305" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$folder_9", align 8
  store %TName_Pair_Int32_Int32* %"$$folder_9_305", %TName_Pair_Int32_Int32** %res, align 8
  %"$gasrem_306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_307" = icmp ugt i64 1, %"$gasrem_306"
  br i1 %"$gascmp_307", label %"$out_of_gas_308", label %"$have_gas_309"

"$out_of_gas_308":                                ; preds = %"$have_gas_299"
  call void @_out_of_gas()
  br label %"$have_gas_309"

"$have_gas_309":                                  ; preds = %"$out_of_gas_308", %"$have_gas_299"
  %"$consume_310" = sub i64 %"$gasrem_306", 1
  store i64 %"$consume_310", i64* @_gasrem, align 8
  %"$res_312" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %res, align 8
  %"$res_tag_313" = getelementptr inbounds %TName_Pair_Int32_Int32, %TName_Pair_Int32_Int32* %"$res_312", i32 0, i32 0
  %"$res_tag_314" = load i8, i8* %"$res_tag_313", align 1
  switch i8 %"$res_tag_314", label %"$empty_default_315" [
    i8 0, label %"$Pair_316"
  ]

"$Pair_316":                                      ; preds = %"$have_gas_309"
  %"$res_317" = bitcast %TName_Pair_Int32_Int32* %"$res_312" to %CName_Pair_Int32_Int32*
  %"$x_gep_318" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_317", i32 0, i32 1
  %"$x_load_319" = load %Int32, %Int32* %"$x_gep_318", align 4
  %x = alloca %Int32, align 8
  store %Int32 %"$x_load_319", %Int32* %x, align 4
  %"$y_gep_320" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_317", i32 0, i32 2
  %"$y_load_321" = load %Int32, %Int32* %"$y_gep_320", align 4
  %y = alloca %Int32, align 8
  store %Int32 %"$y_load_321", %Int32* %y, align 4
  %"$gasrem_322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_323" = icmp ugt i64 1, %"$gasrem_322"
  br i1 %"$gascmp_323", label %"$out_of_gas_324", label %"$have_gas_325"

"$out_of_gas_324":                                ; preds = %"$Pair_316"
  call void @_out_of_gas()
  br label %"$have_gas_325"

"$have_gas_325":                                  ; preds = %"$out_of_gas_324", %"$Pair_316"
  %"$consume_326" = sub i64 %"$gasrem_322", 1
  store i64 %"$consume_326", i64* @_gasrem, align 8
  %"$x_327" = load %Int32, %Int32* %x, align 4
  store %Int32 %"$x_327", %Int32* %"$retval_21", align 4
  br label %"$matchsucc_311"

"$empty_default_315":                             ; preds = %"$have_gas_309"
  br label %"$matchsucc_311"

"$matchsucc_311":                                 ; preds = %"$have_gas_325", %"$empty_default_315"
  %"$$retval_21_328" = load %Int32, %Int32* %"$retval_21", align 4
  ret %Int32 %"$$retval_21_328"
}

define internal %TName_Pair_Int32_Int32* @"$fundef_17"(%"$$fundef_17_env_85"* %0, %TName_Nat* %1) {
entry:
  %"$$fundef_17_env_f0_136" = getelementptr inbounds %"$$fundef_17_env_85", %"$$fundef_17_env_85"* %0, i32 0, i32 0
  %"$f0_envload_137" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$$fundef_17_env_f0_136", align 8
  %f0 = alloca %TName_Pair_Int32_Int32*, align 8
  store %TName_Pair_Int32_Int32* %"$f0_envload_137", %TName_Pair_Int32_Int32** %f0, align 8
  %"$$fundef_17_env_fn_138" = getelementptr inbounds %"$$fundef_17_env_85", %"$$fundef_17_env_85"* %0, i32 0, i32 1
  %"$fn_envload_139" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_17_env_fn_138", align 8
  %fn = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_envload_139", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn, align 8
  %"$$fundef_17_env_g_140" = getelementptr inbounds %"$$fundef_17_env_85", %"$$fundef_17_env_85"* %0, i32 0, i32 2
  %"$g_envload_141" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_17_env_g_140", align 8
  %g = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_envload_141", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  %"$retval_18" = alloca %TName_Pair_Int32_Int32*, align 8
  %"$gasrem_142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_143" = icmp ugt i64 2, %"$gasrem_142"
  br i1 %"$gascmp_143", label %"$out_of_gas_144", label %"$have_gas_145"

"$out_of_gas_144":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_145"

"$have_gas_145":                                  ; preds = %"$out_of_gas_144", %entry
  %"$consume_146" = sub i64 %"$gasrem_142", 2
  store i64 %"$consume_146", i64* @_gasrem, align 8
  %"$n_tag_148" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_149" = load i8, i8* %"$n_tag_148", align 1
  switch i8 %"$n_tag_149", label %"$empty_default_150" [
    i8 1, label %"$Succ_151"
    i8 0, label %"$Zero_192"
  ]

"$Succ_151":                                      ; preds = %"$have_gas_145"
  %"$n_152" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_153" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_152", i32 0, i32 1
  %"$n1_load_154" = load %TName_Nat*, %TName_Nat** %"$n1_gep_153", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_154", %TName_Nat** %n1, align 8
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 1, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$Succ_151"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$Succ_151"
  %"$consume_159" = sub i64 %"$gasrem_155", 1
  store i64 %"$consume_159", i64* @_gasrem, align 8
  %res = alloca %TName_Pair_Int32_Int32*, align 8
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 1, %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %"$have_gas_158"
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %"$have_gas_158"
  %"$consume_164" = sub i64 %"$gasrem_160", 1
  store i64 %"$consume_164", i64* @_gasrem, align 8
  %"$fn_3" = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_165" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn, align 8
  %"$fn_fptr_166" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_165", 0
  %"$fn_envptr_167" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_165", 1
  %"$f0_168" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %f0, align 8
  %"$fn_call_169" = call { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_166"(i8* %"$fn_envptr_167", %TName_Pair_Int32_Int32* %"$f0_168")
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$fn_call_169", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$fn_3", align 8
  %"$fn_4" = alloca %TName_Pair_Int32_Int32*, align 8
  %"$$fn_3_170" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$fn_3", align 8
  %"$$fn_3_fptr_171" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$fn_3_170", 0
  %"$$fn_3_envptr_172" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$fn_3_170", 1
  %"$n1_173" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_3_call_174" = call %TName_Pair_Int32_Int32* %"$$fn_3_fptr_171"(i8* %"$$fn_3_envptr_172", %TName_Nat* %"$n1_173")
  store %TName_Pair_Int32_Int32* %"$$fn_3_call_174", %TName_Pair_Int32_Int32** %"$fn_4", align 8
  %"$$fn_4_175" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$fn_4", align 8
  store %TName_Pair_Int32_Int32* %"$$fn_4_175", %TName_Pair_Int32_Int32** %res, align 8
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 1, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %"$have_gas_163"
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %"$have_gas_163"
  %"$consume_180" = sub i64 %"$gasrem_176", 1
  store i64 %"$consume_180", i64* @_gasrem, align 8
  %"$g_5" = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_181" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  %"$g_fptr_182" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_181", 0
  %"$g_envptr_183" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_181", 1
  %"$res_184" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %res, align 8
  %"$g_call_185" = call { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$g_fptr_182"(i8* %"$g_envptr_183", %TName_Pair_Int32_Int32* %"$res_184")
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$g_call_185", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$g_5", align 8
  %"$g_6" = alloca %TName_Pair_Int32_Int32*, align 8
  %"$$g_5_186" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$g_5", align 8
  %"$$g_5_fptr_187" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$g_5_186", 0
  %"$$g_5_envptr_188" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$g_5_186", 1
  %"$n1_189" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_5_call_190" = call %TName_Pair_Int32_Int32* %"$$g_5_fptr_187"(i8* %"$$g_5_envptr_188", %TName_Nat* %"$n1_189")
  store %TName_Pair_Int32_Int32* %"$$g_5_call_190", %TName_Pair_Int32_Int32** %"$g_6", align 8
  %"$$g_6_191" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$g_6", align 8
  store %TName_Pair_Int32_Int32* %"$$g_6_191", %TName_Pair_Int32_Int32** %"$retval_18", align 8
  br label %"$matchsucc_147"

"$Zero_192":                                      ; preds = %"$have_gas_145"
  %"$n_193" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_195" = icmp ugt i64 1, %"$gasrem_194"
  br i1 %"$gascmp_195", label %"$out_of_gas_196", label %"$have_gas_197"

"$out_of_gas_196":                                ; preds = %"$Zero_192"
  call void @_out_of_gas()
  br label %"$have_gas_197"

"$have_gas_197":                                  ; preds = %"$out_of_gas_196", %"$Zero_192"
  %"$consume_198" = sub i64 %"$gasrem_194", 1
  store i64 %"$consume_198", i64* @_gasrem, align 8
  %"$f0_199" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %f0, align 8
  store %TName_Pair_Int32_Int32* %"$f0_199", %TName_Pair_Int32_Int32** %"$retval_18", align 8
  br label %"$matchsucc_147"

"$empty_default_150":                             ; preds = %"$have_gas_145"
  br label %"$matchsucc_147"

"$matchsucc_147":                                 ; preds = %"$have_gas_197", %"$have_gas_179", %"$empty_default_150"
  %"$$retval_18_200" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$retval_18", align 8
  ret %TName_Pair_Int32_Int32* %"$$retval_18_200"
}

define internal { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } @"$fundef_15"(%"$$fundef_15_env_86"* %0, %TName_Pair_Int32_Int32* %1) {
entry:
  %"$$fundef_15_env_fn_117" = getelementptr inbounds %"$$fundef_15_env_86", %"$$fundef_15_env_86"* %0, i32 0, i32 0
  %"$fn_envload_118" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_15_env_fn_117", align 8
  %fn = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_envload_118", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn, align 8
  %"$$fundef_15_env_g_119" = getelementptr inbounds %"$$fundef_15_env_86", %"$$fundef_15_env_86"* %0, i32 0, i32 1
  %"$g_envload_120" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_15_env_g_119", align 8
  %g = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_envload_120", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  %"$retval_16" = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 1, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %entry
  %"$consume_125" = sub i64 %"$gasrem_121", 1
  store i64 %"$consume_125", i64* @_gasrem, align 8
  %"$$fundef_17_envp_126_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_17_envp_126_salloc" = call i8* @_salloc(i8* %"$$fundef_17_envp_126_load", i64 40)
  %"$$fundef_17_envp_126" = bitcast i8* %"$$fundef_17_envp_126_salloc" to %"$$fundef_17_env_85"*
  %"$$fundef_17_env_voidp_128" = bitcast %"$$fundef_17_env_85"* %"$$fundef_17_envp_126" to i8*
  %"$$fundef_17_cloval_129" = insertvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)* bitcast (%TName_Pair_Int32_Int32* (%"$$fundef_17_env_85"*, %TName_Nat*)* @"$fundef_17" to %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_17_env_voidp_128", 1
  %"$$fundef_17_env_f0_130" = getelementptr inbounds %"$$fundef_17_env_85", %"$$fundef_17_env_85"* %"$$fundef_17_envp_126", i32 0, i32 0
  store %TName_Pair_Int32_Int32* %1, %TName_Pair_Int32_Int32** %"$$fundef_17_env_f0_130", align 8
  %"$$fundef_17_env_fn_131" = getelementptr inbounds %"$$fundef_17_env_85", %"$$fundef_17_env_85"* %"$$fundef_17_envp_126", i32 0, i32 1
  %"$fn_132" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_132", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_17_env_fn_131", align 8
  %"$$fundef_17_env_g_133" = getelementptr inbounds %"$$fundef_17_env_85", %"$$fundef_17_env_85"* %"$$fundef_17_envp_126", i32 0, i32 2
  %"$g_134" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_134", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_17_env_g_133", align 8
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$fundef_17_cloval_129", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$retval_16", align 8
  %"$$retval_16_135" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$retval_16", align 8
  ret { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$retval_16_135"
}

define internal { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } @"$fundef_13"(%"$$fundef_13_env_87"* %0, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %1) {
entry:
  %"$retval_14" = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 1, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %entry
  %"$consume_102" = sub i64 %"$gasrem_98", 1
  store i64 %"$consume_102", i64* @_gasrem, align 8
  %"$gasrem_103" = load i64, i64* @_gasrem, align 8
  %"$gascmp_104" = icmp ugt i64 1, %"$gasrem_103"
  br i1 %"$gascmp_104", label %"$out_of_gas_105", label %"$have_gas_106"

"$out_of_gas_105":                                ; preds = %"$have_gas_101"
  call void @_out_of_gas()
  br label %"$have_gas_106"

"$have_gas_106":                                  ; preds = %"$out_of_gas_105", %"$have_gas_101"
  %"$consume_107" = sub i64 %"$gasrem_103", 1
  store i64 %"$consume_107", i64* @_gasrem, align 8
  %"$$fundef_15_envp_108_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_15_envp_108_salloc" = call i8* @_salloc(i8* %"$$fundef_15_envp_108_load", i64 32)
  %"$$fundef_15_envp_108" = bitcast i8* %"$$fundef_15_envp_108_salloc" to %"$$fundef_15_env_86"*
  %"$$fundef_15_env_voidp_110" = bitcast %"$$fundef_15_env_86"* %"$$fundef_15_envp_108" to i8*
  %"$$fundef_15_cloval_111" = insertvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)* bitcast ({ %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_15_env_86"*, %TName_Pair_Int32_Int32*)* @"$fundef_15" to { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*), i8* undef }, i8* %"$$fundef_15_env_voidp_110", 1
  %g = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$fundef_15_cloval_111", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  %"$$fundef_15_env_fn_112" = getelementptr inbounds %"$$fundef_15_env_86", %"$$fundef_15_env_86"* %"$$fundef_15_envp_108", i32 0, i32 0
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %1, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_15_env_fn_112", align 8
  %"$$fundef_15_env_g_113" = getelementptr inbounds %"$$fundef_15_env_86", %"$$fundef_15_env_86"* %"$$fundef_15_envp_108", i32 0, i32 1
  %"$g_114" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_114", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_15_env_g_113", align 8
  %"$g_115" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_115", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$retval_14", align 8
  %"$$retval_14_116" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$retval_14", align 8
  ret { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$retval_14_116"
}

define internal { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } @"$fundef_11"(%"$$fundef_11_env_88"* %0) {
entry:
  %"$retval_12" = alloca { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }, align 8
  %"$gasrem_89" = load i64, i64* @_gasrem, align 8
  %"$gascmp_90" = icmp ugt i64 1, %"$gasrem_89"
  br i1 %"$gascmp_90", label %"$out_of_gas_91", label %"$have_gas_92"

"$out_of_gas_91":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_92"

"$have_gas_92":                                   ; preds = %"$out_of_gas_91", %entry
  %"$consume_93" = sub i64 %"$gasrem_89", 1
  store i64 %"$consume_93", i64* @_gasrem, align 8
  store { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })* bitcast ({ { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (%"$$fundef_13_env_87"*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })* @"$fundef_13" to { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*), i8* null }, { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %"$retval_12", align 8
  %"$$retval_12_97" = load { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }, { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %"$retval_12", align 8
  ret { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$$retval_12_97"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Int32 @_scilla_expr_fun(i8* %0) {
entry:
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 1, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %entry
  %"$consume_383" = sub i64 %"$gasrem_379", 1
  store i64 %"$consume_383", i64* @_gasrem, align 8
  %"$dyndisp_table_387_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_387_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_387_salloc_load", i64 16)
  %"$dyndisp_table_387_salloc" = bitcast i8* %"$dyndisp_table_387_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_387" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_387_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_388" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_387", i32 0
  %"$dyndisp_pcast_389" = bitcast { i8*, i8* }* %"$dyndisp_gep_388" to { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (%"$$fundef_11_env_88"*)* @"$fundef_11" to { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_389", align 8
  store { i8*, i8* }* %"$dyndisp_table_387", { i8*, i8* }** @nat_fold, align 8
  %"$expr_19" = alloca %Int32, align 8
  %"$gasrem_390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_391" = icmp ugt i64 1, %"$gasrem_390"
  br i1 %"$gascmp_391", label %"$out_of_gas_392", label %"$have_gas_393"

"$out_of_gas_392":                                ; preds = %"$have_gas_382"
  call void @_out_of_gas()
  br label %"$have_gas_393"

"$have_gas_393":                                  ; preds = %"$out_of_gas_392", %"$have_gas_382"
  %"$consume_394" = sub i64 %"$gasrem_390", 1
  store i64 %"$consume_394", i64* @_gasrem, align 8
  %zero = alloca %TName_Nat*, align 8
  %"$gasrem_395" = load i64, i64* @_gasrem, align 8
  %"$gascmp_396" = icmp ugt i64 1, %"$gasrem_395"
  br i1 %"$gascmp_396", label %"$out_of_gas_397", label %"$have_gas_398"

"$out_of_gas_397":                                ; preds = %"$have_gas_393"
  call void @_out_of_gas()
  br label %"$have_gas_398"

"$have_gas_398":                                  ; preds = %"$out_of_gas_397", %"$have_gas_393"
  %"$consume_399" = sub i64 %"$gasrem_395", 1
  store i64 %"$consume_399", i64* @_gasrem, align 8
  %"$adtval_400_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_400_salloc" = call i8* @_salloc(i8* %"$adtval_400_load", i64 1)
  %"$adtval_400" = bitcast i8* %"$adtval_400_salloc" to %CName_Zero*
  %"$adtgep_401" = getelementptr inbounds %CName_Zero, %CName_Zero* %"$adtval_400", i32 0, i32 0
  store i8 0, i8* %"$adtgep_401", align 1
  %"$adtptr_402" = bitcast %CName_Zero* %"$adtval_400" to %TName_Nat*
  store %TName_Nat* %"$adtptr_402", %TName_Nat** %zero, align 8
  %"$gasrem_403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_404" = icmp ugt i64 1, %"$gasrem_403"
  br i1 %"$gascmp_404", label %"$out_of_gas_405", label %"$have_gas_406"

"$out_of_gas_405":                                ; preds = %"$have_gas_398"
  call void @_out_of_gas()
  br label %"$have_gas_406"

"$have_gas_406":                                  ; preds = %"$out_of_gas_405", %"$have_gas_398"
  %"$consume_407" = sub i64 %"$gasrem_403", 1
  store i64 %"$consume_407", i64* @_gasrem, align 8
  %one = alloca %TName_Nat*, align 8
  %"$gasrem_408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_409" = icmp ugt i64 1, %"$gasrem_408"
  br i1 %"$gascmp_409", label %"$out_of_gas_410", label %"$have_gas_411"

"$out_of_gas_410":                                ; preds = %"$have_gas_406"
  call void @_out_of_gas()
  br label %"$have_gas_411"

"$have_gas_411":                                  ; preds = %"$out_of_gas_410", %"$have_gas_406"
  %"$consume_412" = sub i64 %"$gasrem_408", 1
  store i64 %"$consume_412", i64* @_gasrem, align 8
  %"$zero_413" = load %TName_Nat*, %TName_Nat** %zero, align 8
  %"$adtval_414_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_414_salloc" = call i8* @_salloc(i8* %"$adtval_414_load", i64 9)
  %"$adtval_414" = bitcast i8* %"$adtval_414_salloc" to %CName_Succ*
  %"$adtgep_415" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_414", i32 0, i32 0
  store i8 1, i8* %"$adtgep_415", align 1
  %"$adtgep_416" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_414", i32 0, i32 1
  store %TName_Nat* %"$zero_413", %TName_Nat** %"$adtgep_416", align 8
  %"$adtptr_417" = bitcast %CName_Succ* %"$adtval_414" to %TName_Nat*
  store %TName_Nat* %"$adtptr_417", %TName_Nat** %one, align 8
  %"$gasrem_418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_419" = icmp ugt i64 1, %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %"$have_gas_411"
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %"$have_gas_411"
  %"$consume_422" = sub i64 %"$gasrem_418", 1
  store i64 %"$consume_422", i64* @_gasrem, align 8
  %two = alloca %TName_Nat*, align 8
  %"$gasrem_423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_424" = icmp ugt i64 1, %"$gasrem_423"
  br i1 %"$gascmp_424", label %"$out_of_gas_425", label %"$have_gas_426"

"$out_of_gas_425":                                ; preds = %"$have_gas_421"
  call void @_out_of_gas()
  br label %"$have_gas_426"

"$have_gas_426":                                  ; preds = %"$out_of_gas_425", %"$have_gas_421"
  %"$consume_427" = sub i64 %"$gasrem_423", 1
  store i64 %"$consume_427", i64* @_gasrem, align 8
  %"$one_428" = load %TName_Nat*, %TName_Nat** %one, align 8
  %"$adtval_429_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_429_salloc" = call i8* @_salloc(i8* %"$adtval_429_load", i64 9)
  %"$adtval_429" = bitcast i8* %"$adtval_429_salloc" to %CName_Succ*
  %"$adtgep_430" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_429", i32 0, i32 0
  store i8 1, i8* %"$adtgep_430", align 1
  %"$adtgep_431" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_429", i32 0, i32 1
  store %TName_Nat* %"$one_428", %TName_Nat** %"$adtgep_431", align 8
  %"$adtptr_432" = bitcast %CName_Succ* %"$adtval_429" to %TName_Nat*
  store %TName_Nat* %"$adtptr_432", %TName_Nat** %two, align 8
  %"$gasrem_433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_434" = icmp ugt i64 1, %"$gasrem_433"
  br i1 %"$gascmp_434", label %"$out_of_gas_435", label %"$have_gas_436"

"$out_of_gas_435":                                ; preds = %"$have_gas_426"
  call void @_out_of_gas()
  br label %"$have_gas_436"

"$have_gas_436":                                  ; preds = %"$out_of_gas_435", %"$have_gas_426"
  %"$consume_437" = sub i64 %"$gasrem_433", 1
  store i64 %"$consume_437", i64* @_gasrem, align 8
  %three = alloca %TName_Nat*, align 8
  %"$gasrem_438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_439" = icmp ugt i64 1, %"$gasrem_438"
  br i1 %"$gascmp_439", label %"$out_of_gas_440", label %"$have_gas_441"

"$out_of_gas_440":                                ; preds = %"$have_gas_436"
  call void @_out_of_gas()
  br label %"$have_gas_441"

"$have_gas_441":                                  ; preds = %"$out_of_gas_440", %"$have_gas_436"
  %"$consume_442" = sub i64 %"$gasrem_438", 1
  store i64 %"$consume_442", i64* @_gasrem, align 8
  %"$two_443" = load %TName_Nat*, %TName_Nat** %two, align 8
  %"$adtval_444_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_444_salloc" = call i8* @_salloc(i8* %"$adtval_444_load", i64 9)
  %"$adtval_444" = bitcast i8* %"$adtval_444_salloc" to %CName_Succ*
  %"$adtgep_445" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_444", i32 0, i32 0
  store i8 1, i8* %"$adtgep_445", align 1
  %"$adtgep_446" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_444", i32 0, i32 1
  store %TName_Nat* %"$two_443", %TName_Nat** %"$adtgep_446", align 8
  %"$adtptr_447" = bitcast %CName_Succ* %"$adtval_444" to %TName_Nat*
  store %TName_Nat* %"$adtptr_447", %TName_Nat** %three, align 8
  %"$gasrem_448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_449" = icmp ugt i64 1, %"$gasrem_448"
  br i1 %"$gascmp_449", label %"$out_of_gas_450", label %"$have_gas_451"

"$out_of_gas_450":                                ; preds = %"$have_gas_441"
  call void @_out_of_gas()
  br label %"$have_gas_451"

"$have_gas_451":                                  ; preds = %"$out_of_gas_450", %"$have_gas_441"
  %"$consume_452" = sub i64 %"$gasrem_448", 1
  store i64 %"$consume_452", i64* @_gasrem, align 8
  %four = alloca %TName_Nat*, align 8
  %"$gasrem_453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_454" = icmp ugt i64 1, %"$gasrem_453"
  br i1 %"$gascmp_454", label %"$out_of_gas_455", label %"$have_gas_456"

"$out_of_gas_455":                                ; preds = %"$have_gas_451"
  call void @_out_of_gas()
  br label %"$have_gas_456"

"$have_gas_456":                                  ; preds = %"$out_of_gas_455", %"$have_gas_451"
  %"$consume_457" = sub i64 %"$gasrem_453", 1
  store i64 %"$consume_457", i64* @_gasrem, align 8
  %"$three_458" = load %TName_Nat*, %TName_Nat** %three, align 8
  %"$adtval_459_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_459_salloc" = call i8* @_salloc(i8* %"$adtval_459_load", i64 9)
  %"$adtval_459" = bitcast i8* %"$adtval_459_salloc" to %CName_Succ*
  %"$adtgep_460" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_459", i32 0, i32 0
  store i8 1, i8* %"$adtgep_460", align 1
  %"$adtgep_461" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_459", i32 0, i32 1
  store %TName_Nat* %"$three_458", %TName_Nat** %"$adtgep_461", align 8
  %"$adtptr_462" = bitcast %CName_Succ* %"$adtval_459" to %TName_Nat*
  store %TName_Nat* %"$adtptr_462", %TName_Nat** %four, align 8
  %"$gasrem_463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_464" = icmp ugt i64 1, %"$gasrem_463"
  br i1 %"$gascmp_464", label %"$out_of_gas_465", label %"$have_gas_466"

"$out_of_gas_465":                                ; preds = %"$have_gas_456"
  call void @_out_of_gas()
  br label %"$have_gas_466"

"$have_gas_466":                                  ; preds = %"$out_of_gas_465", %"$have_gas_456"
  %"$consume_467" = sub i64 %"$gasrem_463", 1
  store i64 %"$consume_467", i64* @_gasrem, align 8
  %five = alloca %TName_Nat*, align 8
  %"$gasrem_468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_469" = icmp ugt i64 1, %"$gasrem_468"
  br i1 %"$gascmp_469", label %"$out_of_gas_470", label %"$have_gas_471"

"$out_of_gas_470":                                ; preds = %"$have_gas_466"
  call void @_out_of_gas()
  br label %"$have_gas_471"

"$have_gas_471":                                  ; preds = %"$out_of_gas_470", %"$have_gas_466"
  %"$consume_472" = sub i64 %"$gasrem_468", 1
  store i64 %"$consume_472", i64* @_gasrem, align 8
  %"$four_473" = load %TName_Nat*, %TName_Nat** %four, align 8
  %"$adtval_474_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_474_salloc" = call i8* @_salloc(i8* %"$adtval_474_load", i64 9)
  %"$adtval_474" = bitcast i8* %"$adtval_474_salloc" to %CName_Succ*
  %"$adtgep_475" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_474", i32 0, i32 0
  store i8 1, i8* %"$adtgep_475", align 1
  %"$adtgep_476" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_474", i32 0, i32 1
  store %TName_Nat* %"$four_473", %TName_Nat** %"$adtgep_476", align 8
  %"$adtptr_477" = bitcast %CName_Succ* %"$adtval_474" to %TName_Nat*
  store %TName_Nat* %"$adtptr_477", %TName_Nat** %five, align 8
  %"$gasrem_478" = load i64, i64* @_gasrem, align 8
  %"$gascmp_479" = icmp ugt i64 1, %"$gasrem_478"
  br i1 %"$gascmp_479", label %"$out_of_gas_480", label %"$have_gas_481"

"$out_of_gas_480":                                ; preds = %"$have_gas_471"
  call void @_out_of_gas()
  br label %"$have_gas_481"

"$have_gas_481":                                  ; preds = %"$out_of_gas_480", %"$have_gas_471"
  %"$consume_482" = sub i64 %"$gasrem_478", 1
  store i64 %"$consume_482", i64* @_gasrem, align 8
  %six = alloca %TName_Nat*, align 8
  %"$gasrem_483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_484" = icmp ugt i64 1, %"$gasrem_483"
  br i1 %"$gascmp_484", label %"$out_of_gas_485", label %"$have_gas_486"

"$out_of_gas_485":                                ; preds = %"$have_gas_481"
  call void @_out_of_gas()
  br label %"$have_gas_486"

"$have_gas_486":                                  ; preds = %"$out_of_gas_485", %"$have_gas_481"
  %"$consume_487" = sub i64 %"$gasrem_483", 1
  store i64 %"$consume_487", i64* @_gasrem, align 8
  %"$five_488" = load %TName_Nat*, %TName_Nat** %five, align 8
  %"$adtval_489_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_489_salloc" = call i8* @_salloc(i8* %"$adtval_489_load", i64 9)
  %"$adtval_489" = bitcast i8* %"$adtval_489_salloc" to %CName_Succ*
  %"$adtgep_490" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_489", i32 0, i32 0
  store i8 1, i8* %"$adtgep_490", align 1
  %"$adtgep_491" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_489", i32 0, i32 1
  store %TName_Nat* %"$five_488", %TName_Nat** %"$adtgep_491", align 8
  %"$adtptr_492" = bitcast %CName_Succ* %"$adtval_489" to %TName_Nat*
  store %TName_Nat* %"$adtptr_492", %TName_Nat** %six, align 8
  %"$gasrem_493" = load i64, i64* @_gasrem, align 8
  %"$gascmp_494" = icmp ugt i64 1, %"$gasrem_493"
  br i1 %"$gascmp_494", label %"$out_of_gas_495", label %"$have_gas_496"

"$out_of_gas_495":                                ; preds = %"$have_gas_486"
  call void @_out_of_gas()
  br label %"$have_gas_496"

"$have_gas_496":                                  ; preds = %"$out_of_gas_495", %"$have_gas_486"
  %"$consume_497" = sub i64 %"$gasrem_493", 1
  store i64 %"$consume_497", i64* @_gasrem, align 8
  %seven = alloca %TName_Nat*, align 8
  %"$gasrem_498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_499" = icmp ugt i64 1, %"$gasrem_498"
  br i1 %"$gascmp_499", label %"$out_of_gas_500", label %"$have_gas_501"

"$out_of_gas_500":                                ; preds = %"$have_gas_496"
  call void @_out_of_gas()
  br label %"$have_gas_501"

"$have_gas_501":                                  ; preds = %"$out_of_gas_500", %"$have_gas_496"
  %"$consume_502" = sub i64 %"$gasrem_498", 1
  store i64 %"$consume_502", i64* @_gasrem, align 8
  %"$six_503" = load %TName_Nat*, %TName_Nat** %six, align 8
  %"$adtval_504_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_504_salloc" = call i8* @_salloc(i8* %"$adtval_504_load", i64 9)
  %"$adtval_504" = bitcast i8* %"$adtval_504_salloc" to %CName_Succ*
  %"$adtgep_505" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_504", i32 0, i32 0
  store i8 1, i8* %"$adtgep_505", align 1
  %"$adtgep_506" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_504", i32 0, i32 1
  store %TName_Nat* %"$six_503", %TName_Nat** %"$adtgep_506", align 8
  %"$adtptr_507" = bitcast %CName_Succ* %"$adtval_504" to %TName_Nat*
  store %TName_Nat* %"$adtptr_507", %TName_Nat** %seven, align 8
  %"$gasrem_508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_509" = icmp ugt i64 1, %"$gasrem_508"
  br i1 %"$gascmp_509", label %"$out_of_gas_510", label %"$have_gas_511"

"$out_of_gas_510":                                ; preds = %"$have_gas_501"
  call void @_out_of_gas()
  br label %"$have_gas_511"

"$have_gas_511":                                  ; preds = %"$out_of_gas_510", %"$have_gas_501"
  %"$consume_512" = sub i64 %"$gasrem_508", 1
  store i64 %"$consume_512", i64* @_gasrem, align 8
  %fib = alloca { %Int32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_514" = icmp ugt i64 1, %"$gasrem_513"
  br i1 %"$gascmp_514", label %"$out_of_gas_515", label %"$have_gas_516"

"$out_of_gas_515":                                ; preds = %"$have_gas_511"
  call void @_out_of_gas()
  br label %"$have_gas_516"

"$have_gas_516":                                  ; preds = %"$out_of_gas_515", %"$have_gas_511"
  %"$consume_517" = sub i64 %"$gasrem_513", 1
  store i64 %"$consume_517", i64* @_gasrem, align 8
  %"$$fundef_20_envp_518_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_20_envp_518_salloc" = call i8* @_salloc(i8* %"$$fundef_20_envp_518_load", i64 8)
  %"$$fundef_20_envp_518" = bitcast i8* %"$$fundef_20_envp_518_salloc" to %"$$fundef_20_env_84"*
  %"$$fundef_20_env_voidp_520" = bitcast %"$$fundef_20_env_84"* %"$$fundef_20_envp_518" to i8*
  %"$$fundef_20_cloval_521" = insertvalue { %Int32 (i8*, %TName_Nat*)*, i8* } { %Int32 (i8*, %TName_Nat*)* bitcast (%Int32 (%"$$fundef_20_env_84"*, %TName_Nat*)* @"$fundef_20" to %Int32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_20_env_voidp_520", 1
  %"$$fundef_20_env_nat_fold_522" = getelementptr inbounds %"$$fundef_20_env_84", %"$$fundef_20_env_84"* %"$$fundef_20_envp_518", i32 0, i32 0
  %"$nat_fold_523" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_523", { i8*, i8* }** %"$$fundef_20_env_nat_fold_522", align 8
  store { %Int32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_20_cloval_521", { %Int32 (i8*, %TName_Nat*)*, i8* }* %fib, align 8
  %"$gasrem_524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_525" = icmp ugt i64 1, %"$gasrem_524"
  br i1 %"$gascmp_525", label %"$out_of_gas_526", label %"$have_gas_527"

"$out_of_gas_526":                                ; preds = %"$have_gas_516"
  call void @_out_of_gas()
  br label %"$have_gas_527"

"$have_gas_527":                                  ; preds = %"$out_of_gas_526", %"$have_gas_516"
  %"$consume_528" = sub i64 %"$gasrem_524", 1
  store i64 %"$consume_528", i64* @_gasrem, align 8
  %"$fib_10" = alloca %Int32, align 8
  %"$fib_529" = load { %Int32 (i8*, %TName_Nat*)*, i8* }, { %Int32 (i8*, %TName_Nat*)*, i8* }* %fib, align 8
  %"$fib_fptr_530" = extractvalue { %Int32 (i8*, %TName_Nat*)*, i8* } %"$fib_529", 0
  %"$fib_envptr_531" = extractvalue { %Int32 (i8*, %TName_Nat*)*, i8* } %"$fib_529", 1
  %"$seven_532" = load %TName_Nat*, %TName_Nat** %seven, align 8
  %"$fib_call_533" = call %Int32 %"$fib_fptr_530"(i8* %"$fib_envptr_531", %TName_Nat* %"$seven_532")
  store %Int32 %"$fib_call_533", %Int32* %"$fib_10", align 4
  %"$$fib_10_534" = load %Int32, %Int32* %"$fib_10", align 4
  store %Int32 %"$$fib_10_534", %Int32* %"$expr_19", align 4
  %"$$expr_19_535" = load %Int32, %Int32* %"$expr_19", align 4
  ret %Int32 %"$$expr_19_535"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_536" = call %Int32 @_scilla_expr_fun(i8* null)
  %"$pval_537" = alloca %Int32, align 8
  %"$memvoidcast_538" = bitcast %Int32* %"$pval_537" to i8*
  store %Int32 %"$exprval_536", %Int32* %"$pval_537", align 4
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Int32_28", i8* %"$memvoidcast_538")
  ret void
}
