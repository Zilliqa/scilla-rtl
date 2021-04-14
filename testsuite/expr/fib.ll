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

define internal %TName_Pair_Int32_Int32* @"$fundef_24"(%"$$fundef_24_env_82"* %0, %TName_Nat* %1) !dbg !4 {
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
  ], !dbg !8

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
  store %Int32 %"$add_call_365", %Int32* %z, align 4, !dbg !9
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
  store %TName_Pair_Int32_Int32* %"$adtptr_377", %TName_Pair_Int32_Int32** %"$retval_25", align 8, !dbg !12
  br label %"$matchsucc_347"

"$empty_default_351":                             ; preds = %"$have_gas_345"
  br label %"$matchsucc_347"

"$matchsucc_347":                                 ; preds = %"$have_gas_369", %"$empty_default_351"
  %"$$retval_25_378" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$retval_25", align 8
  ret %TName_Pair_Int32_Int32* %"$$retval_25_378"
}

define internal { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } @"$fundef_22"(%"$$fundef_22_env_83"* %0, %TName_Pair_Int32_Int32* %1) !dbg !13 {
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
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$fundef_24_cloval_337", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$retval_23", align 8, !dbg !14
  %"$$retval_23_339" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$retval_23", align 8
  ret { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$retval_23_339"
}

define internal %Int32 @"$fundef_20"(%"$$fundef_20_env_84"* %0, %TName_Nat* %1) !dbg !15 {
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
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)* bitcast ({ %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_22_env_83"*, %TName_Pair_Int32_Int32*)* @"$fundef_22" to { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*), i8* null }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %iter_fun, align 8, !dbg !16
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
  store %Int32 zeroinitializer, %Int32* %"$zero_1", align 4, !dbg !17
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
  store %Int32 { i32 1 }, %Int32* %"$one_2", align 4, !dbg !18
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
  store %TName_Pair_Int32_Int32* %"$adtptr_252", %TName_Pair_Int32_Int32** %init_val, align 8, !dbg !19
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
  %"$nat_fold_call_269" = call { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$nat_fold_fptr_267"(i8* %"$nat_fold_envptr_268"), !dbg !20
  store { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$nat_fold_call_269", { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %typed_folder, align 8, !dbg !21
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
  %"$typed_folder_call_284" = call { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$typed_folder_fptr_281"(i8* %"$typed_folder_envptr_282", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$iter_fun_283"), !dbg !22
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$typed_folder_call_284", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$typed_folder_7", align 8, !dbg !22
  %"$typed_folder_8" = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$typed_folder_7_285" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$typed_folder_7", align 8
  %"$$typed_folder_7_fptr_286" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$typed_folder_7_285", 0
  %"$$typed_folder_7_envptr_287" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$typed_folder_7_285", 1
  %"$init_val_288" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %init_val, align 8
  %"$$typed_folder_7_call_289" = call { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$typed_folder_7_fptr_286"(i8* %"$$typed_folder_7_envptr_287", %TName_Pair_Int32_Int32* %"$init_val_288"), !dbg !22
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$typed_folder_7_call_289", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$typed_folder_8", align 8, !dbg !22
  %"$$typed_folder_8_290" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$typed_folder_8", align 8
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$typed_folder_8_290", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %folder, align 8, !dbg !22
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
  %"$folder_call_304" = call %TName_Pair_Int32_Int32* %"$folder_fptr_302"(i8* %"$folder_envptr_303", %TName_Nat* %1), !dbg !23
  store %TName_Pair_Int32_Int32* %"$folder_call_304", %TName_Pair_Int32_Int32** %"$folder_9", align 8, !dbg !23
  %"$$folder_9_305" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$folder_9", align 8
  store %TName_Pair_Int32_Int32* %"$$folder_9_305", %TName_Pair_Int32_Int32** %res, align 8, !dbg !23
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
  ], !dbg !24

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
  store %Int32 %"$x_327", %Int32* %"$retval_21", align 4, !dbg !25
  br label %"$matchsucc_311"

"$empty_default_315":                             ; preds = %"$have_gas_309"
  br label %"$matchsucc_311"

"$matchsucc_311":                                 ; preds = %"$have_gas_325", %"$empty_default_315"
  %"$$retval_21_328" = load %Int32, %Int32* %"$retval_21", align 4
  ret %Int32 %"$$retval_21_328"
}

define internal %TName_Pair_Int32_Int32* @"$fundef_17"(%"$$fundef_17_env_85"* %0, %TName_Nat* %1) !dbg !28 {
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
  ], !dbg !29

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
  %"$fn_call_169" = call { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_166"(i8* %"$fn_envptr_167", %TName_Pair_Int32_Int32* %"$f0_168"), !dbg !30
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$fn_call_169", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$fn_3", align 8, !dbg !30
  %"$fn_4" = alloca %TName_Pair_Int32_Int32*, align 8
  %"$$fn_3_170" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$fn_3", align 8
  %"$$fn_3_fptr_171" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$fn_3_170", 0
  %"$$fn_3_envptr_172" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$fn_3_170", 1
  %"$n1_173" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_3_call_174" = call %TName_Pair_Int32_Int32* %"$$fn_3_fptr_171"(i8* %"$$fn_3_envptr_172", %TName_Nat* %"$n1_173"), !dbg !30
  store %TName_Pair_Int32_Int32* %"$$fn_3_call_174", %TName_Pair_Int32_Int32** %"$fn_4", align 8, !dbg !30
  %"$$fn_4_175" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$fn_4", align 8
  store %TName_Pair_Int32_Int32* %"$$fn_4_175", %TName_Pair_Int32_Int32** %res, align 8, !dbg !30
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
  %"$g_call_185" = call { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$g_fptr_182"(i8* %"$g_envptr_183", %TName_Pair_Int32_Int32* %"$res_184"), !dbg !33
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$g_call_185", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$g_5", align 8, !dbg !33
  %"$g_6" = alloca %TName_Pair_Int32_Int32*, align 8
  %"$$g_5_186" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$g_5", align 8
  %"$$g_5_fptr_187" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$g_5_186", 0
  %"$$g_5_envptr_188" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$g_5_186", 1
  %"$n1_189" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_5_call_190" = call %TName_Pair_Int32_Int32* %"$$g_5_fptr_187"(i8* %"$$g_5_envptr_188", %TName_Nat* %"$n1_189"), !dbg !33
  store %TName_Pair_Int32_Int32* %"$$g_5_call_190", %TName_Pair_Int32_Int32** %"$g_6", align 8, !dbg !33
  %"$$g_6_191" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$g_6", align 8
  store %TName_Pair_Int32_Int32* %"$$g_6_191", %TName_Pair_Int32_Int32** %"$retval_18", align 8, !dbg !33
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
  store %TName_Pair_Int32_Int32* %"$f0_199", %TName_Pair_Int32_Int32** %"$retval_18", align 8, !dbg !34
  br label %"$matchsucc_147"

"$empty_default_150":                             ; preds = %"$have_gas_145"
  br label %"$matchsucc_147"

"$matchsucc_147":                                 ; preds = %"$have_gas_197", %"$have_gas_179", %"$empty_default_150"
  %"$$retval_18_200" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$retval_18", align 8
  ret %TName_Pair_Int32_Int32* %"$$retval_18_200"
}

define internal { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } @"$fundef_15"(%"$$fundef_15_env_86"* %0, %TName_Pair_Int32_Int32* %1) !dbg !36 {
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
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$fundef_17_cloval_129", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$retval_16", align 8, !dbg !37
  %"$$retval_16_135" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$retval_16", align 8
  ret { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$retval_16_135"
}

define internal { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } @"$fundef_13"(%"$$fundef_13_env_87"* %0, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %1) !dbg !38 {
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
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$fundef_15_cloval_111", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8, !dbg !39
  %"$$fundef_15_env_fn_112" = getelementptr inbounds %"$$fundef_15_env_86", %"$$fundef_15_env_86"* %"$$fundef_15_envp_108", i32 0, i32 0
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %1, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_15_env_fn_112", align 8
  %"$$fundef_15_env_g_113" = getelementptr inbounds %"$$fundef_15_env_86", %"$$fundef_15_env_86"* %"$$fundef_15_envp_108", i32 0, i32 1
  %"$g_114" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_114", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_15_env_g_113", align 8
  %"$g_115" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_115", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$retval_14", align 8, !dbg !39
  %"$$retval_14_116" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$retval_14", align 8
  ret { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$retval_14_116"
}

define internal { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } @"$fundef_11"(%"$$fundef_11_env_88"* %0) !dbg !40 {
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
  store { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })* bitcast ({ { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (%"$$fundef_13_env_87"*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })* @"$fundef_13" to { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*), i8* null }, { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %"$retval_12", align 8, !dbg !41
  %"$$retval_12_97" = load { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }, { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %"$retval_12", align 8
  ret { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$$retval_12_97"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() !dbg !42 {
entry:
  ret void
}

define internal %Int32 @"$scilla_expr_379"(i8* %0) !dbg !43 {
entry:
  %"$gasrem_380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_381" = icmp ugt i64 1, %"$gasrem_380"
  br i1 %"$gascmp_381", label %"$out_of_gas_382", label %"$have_gas_383"

"$out_of_gas_382":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_383"

"$have_gas_383":                                  ; preds = %"$out_of_gas_382", %entry
  %"$consume_384" = sub i64 %"$gasrem_380", 1
  store i64 %"$consume_384", i64* @_gasrem, align 8
  %"$dyndisp_table_388_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_388_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_388_salloc_load", i64 16)
  %"$dyndisp_table_388_salloc" = bitcast i8* %"$dyndisp_table_388_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_388" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_388_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_389" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_388", i32 0
  %"$dyndisp_pcast_390" = bitcast { i8*, i8* }* %"$dyndisp_gep_389" to { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (%"$$fundef_11_env_88"*)* @"$fundef_11" to { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_390", align 8
  store { i8*, i8* }* %"$dyndisp_table_388", { i8*, i8* }** @nat_fold, align 8, !dbg !44
  %"$expr_19" = alloca %Int32, align 8
  %"$gasrem_391" = load i64, i64* @_gasrem, align 8
  %"$gascmp_392" = icmp ugt i64 1, %"$gasrem_391"
  br i1 %"$gascmp_392", label %"$out_of_gas_393", label %"$have_gas_394"

"$out_of_gas_393":                                ; preds = %"$have_gas_383"
  call void @_out_of_gas()
  br label %"$have_gas_394"

"$have_gas_394":                                  ; preds = %"$out_of_gas_393", %"$have_gas_383"
  %"$consume_395" = sub i64 %"$gasrem_391", 1
  store i64 %"$consume_395", i64* @_gasrem, align 8
  %zero = alloca %TName_Nat*, align 8
  %"$gasrem_396" = load i64, i64* @_gasrem, align 8
  %"$gascmp_397" = icmp ugt i64 1, %"$gasrem_396"
  br i1 %"$gascmp_397", label %"$out_of_gas_398", label %"$have_gas_399"

"$out_of_gas_398":                                ; preds = %"$have_gas_394"
  call void @_out_of_gas()
  br label %"$have_gas_399"

"$have_gas_399":                                  ; preds = %"$out_of_gas_398", %"$have_gas_394"
  %"$consume_400" = sub i64 %"$gasrem_396", 1
  store i64 %"$consume_400", i64* @_gasrem, align 8
  %"$adtval_401_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_401_salloc" = call i8* @_salloc(i8* %"$adtval_401_load", i64 1)
  %"$adtval_401" = bitcast i8* %"$adtval_401_salloc" to %CName_Zero*
  %"$adtgep_402" = getelementptr inbounds %CName_Zero, %CName_Zero* %"$adtval_401", i32 0, i32 0
  store i8 0, i8* %"$adtgep_402", align 1
  %"$adtptr_403" = bitcast %CName_Zero* %"$adtval_401" to %TName_Nat*
  store %TName_Nat* %"$adtptr_403", %TName_Nat** %zero, align 8, !dbg !45
  %"$gasrem_404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_405" = icmp ugt i64 1, %"$gasrem_404"
  br i1 %"$gascmp_405", label %"$out_of_gas_406", label %"$have_gas_407"

"$out_of_gas_406":                                ; preds = %"$have_gas_399"
  call void @_out_of_gas()
  br label %"$have_gas_407"

"$have_gas_407":                                  ; preds = %"$out_of_gas_406", %"$have_gas_399"
  %"$consume_408" = sub i64 %"$gasrem_404", 1
  store i64 %"$consume_408", i64* @_gasrem, align 8
  %one = alloca %TName_Nat*, align 8
  %"$gasrem_409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_410" = icmp ugt i64 1, %"$gasrem_409"
  br i1 %"$gascmp_410", label %"$out_of_gas_411", label %"$have_gas_412"

"$out_of_gas_411":                                ; preds = %"$have_gas_407"
  call void @_out_of_gas()
  br label %"$have_gas_412"

"$have_gas_412":                                  ; preds = %"$out_of_gas_411", %"$have_gas_407"
  %"$consume_413" = sub i64 %"$gasrem_409", 1
  store i64 %"$consume_413", i64* @_gasrem, align 8
  %"$zero_414" = load %TName_Nat*, %TName_Nat** %zero, align 8
  %"$adtval_415_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_415_salloc" = call i8* @_salloc(i8* %"$adtval_415_load", i64 9)
  %"$adtval_415" = bitcast i8* %"$adtval_415_salloc" to %CName_Succ*
  %"$adtgep_416" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_415", i32 0, i32 0
  store i8 1, i8* %"$adtgep_416", align 1
  %"$adtgep_417" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_415", i32 0, i32 1
  store %TName_Nat* %"$zero_414", %TName_Nat** %"$adtgep_417", align 8
  %"$adtptr_418" = bitcast %CName_Succ* %"$adtval_415" to %TName_Nat*
  store %TName_Nat* %"$adtptr_418", %TName_Nat** %one, align 8, !dbg !46
  %"$gasrem_419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_420" = icmp ugt i64 1, %"$gasrem_419"
  br i1 %"$gascmp_420", label %"$out_of_gas_421", label %"$have_gas_422"

"$out_of_gas_421":                                ; preds = %"$have_gas_412"
  call void @_out_of_gas()
  br label %"$have_gas_422"

"$have_gas_422":                                  ; preds = %"$out_of_gas_421", %"$have_gas_412"
  %"$consume_423" = sub i64 %"$gasrem_419", 1
  store i64 %"$consume_423", i64* @_gasrem, align 8
  %two = alloca %TName_Nat*, align 8
  %"$gasrem_424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_425" = icmp ugt i64 1, %"$gasrem_424"
  br i1 %"$gascmp_425", label %"$out_of_gas_426", label %"$have_gas_427"

"$out_of_gas_426":                                ; preds = %"$have_gas_422"
  call void @_out_of_gas()
  br label %"$have_gas_427"

"$have_gas_427":                                  ; preds = %"$out_of_gas_426", %"$have_gas_422"
  %"$consume_428" = sub i64 %"$gasrem_424", 1
  store i64 %"$consume_428", i64* @_gasrem, align 8
  %"$one_429" = load %TName_Nat*, %TName_Nat** %one, align 8
  %"$adtval_430_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_430_salloc" = call i8* @_salloc(i8* %"$adtval_430_load", i64 9)
  %"$adtval_430" = bitcast i8* %"$adtval_430_salloc" to %CName_Succ*
  %"$adtgep_431" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_430", i32 0, i32 0
  store i8 1, i8* %"$adtgep_431", align 1
  %"$adtgep_432" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_430", i32 0, i32 1
  store %TName_Nat* %"$one_429", %TName_Nat** %"$adtgep_432", align 8
  %"$adtptr_433" = bitcast %CName_Succ* %"$adtval_430" to %TName_Nat*
  store %TName_Nat* %"$adtptr_433", %TName_Nat** %two, align 8, !dbg !47
  %"$gasrem_434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_435" = icmp ugt i64 1, %"$gasrem_434"
  br i1 %"$gascmp_435", label %"$out_of_gas_436", label %"$have_gas_437"

"$out_of_gas_436":                                ; preds = %"$have_gas_427"
  call void @_out_of_gas()
  br label %"$have_gas_437"

"$have_gas_437":                                  ; preds = %"$out_of_gas_436", %"$have_gas_427"
  %"$consume_438" = sub i64 %"$gasrem_434", 1
  store i64 %"$consume_438", i64* @_gasrem, align 8
  %three = alloca %TName_Nat*, align 8
  %"$gasrem_439" = load i64, i64* @_gasrem, align 8
  %"$gascmp_440" = icmp ugt i64 1, %"$gasrem_439"
  br i1 %"$gascmp_440", label %"$out_of_gas_441", label %"$have_gas_442"

"$out_of_gas_441":                                ; preds = %"$have_gas_437"
  call void @_out_of_gas()
  br label %"$have_gas_442"

"$have_gas_442":                                  ; preds = %"$out_of_gas_441", %"$have_gas_437"
  %"$consume_443" = sub i64 %"$gasrem_439", 1
  store i64 %"$consume_443", i64* @_gasrem, align 8
  %"$two_444" = load %TName_Nat*, %TName_Nat** %two, align 8
  %"$adtval_445_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_445_salloc" = call i8* @_salloc(i8* %"$adtval_445_load", i64 9)
  %"$adtval_445" = bitcast i8* %"$adtval_445_salloc" to %CName_Succ*
  %"$adtgep_446" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_445", i32 0, i32 0
  store i8 1, i8* %"$adtgep_446", align 1
  %"$adtgep_447" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_445", i32 0, i32 1
  store %TName_Nat* %"$two_444", %TName_Nat** %"$adtgep_447", align 8
  %"$adtptr_448" = bitcast %CName_Succ* %"$adtval_445" to %TName_Nat*
  store %TName_Nat* %"$adtptr_448", %TName_Nat** %three, align 8, !dbg !48
  %"$gasrem_449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_450" = icmp ugt i64 1, %"$gasrem_449"
  br i1 %"$gascmp_450", label %"$out_of_gas_451", label %"$have_gas_452"

"$out_of_gas_451":                                ; preds = %"$have_gas_442"
  call void @_out_of_gas()
  br label %"$have_gas_452"

"$have_gas_452":                                  ; preds = %"$out_of_gas_451", %"$have_gas_442"
  %"$consume_453" = sub i64 %"$gasrem_449", 1
  store i64 %"$consume_453", i64* @_gasrem, align 8
  %four = alloca %TName_Nat*, align 8
  %"$gasrem_454" = load i64, i64* @_gasrem, align 8
  %"$gascmp_455" = icmp ugt i64 1, %"$gasrem_454"
  br i1 %"$gascmp_455", label %"$out_of_gas_456", label %"$have_gas_457"

"$out_of_gas_456":                                ; preds = %"$have_gas_452"
  call void @_out_of_gas()
  br label %"$have_gas_457"

"$have_gas_457":                                  ; preds = %"$out_of_gas_456", %"$have_gas_452"
  %"$consume_458" = sub i64 %"$gasrem_454", 1
  store i64 %"$consume_458", i64* @_gasrem, align 8
  %"$three_459" = load %TName_Nat*, %TName_Nat** %three, align 8
  %"$adtval_460_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_460_salloc" = call i8* @_salloc(i8* %"$adtval_460_load", i64 9)
  %"$adtval_460" = bitcast i8* %"$adtval_460_salloc" to %CName_Succ*
  %"$adtgep_461" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_460", i32 0, i32 0
  store i8 1, i8* %"$adtgep_461", align 1
  %"$adtgep_462" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_460", i32 0, i32 1
  store %TName_Nat* %"$three_459", %TName_Nat** %"$adtgep_462", align 8
  %"$adtptr_463" = bitcast %CName_Succ* %"$adtval_460" to %TName_Nat*
  store %TName_Nat* %"$adtptr_463", %TName_Nat** %four, align 8, !dbg !49
  %"$gasrem_464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_465" = icmp ugt i64 1, %"$gasrem_464"
  br i1 %"$gascmp_465", label %"$out_of_gas_466", label %"$have_gas_467"

"$out_of_gas_466":                                ; preds = %"$have_gas_457"
  call void @_out_of_gas()
  br label %"$have_gas_467"

"$have_gas_467":                                  ; preds = %"$out_of_gas_466", %"$have_gas_457"
  %"$consume_468" = sub i64 %"$gasrem_464", 1
  store i64 %"$consume_468", i64* @_gasrem, align 8
  %five = alloca %TName_Nat*, align 8
  %"$gasrem_469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_470" = icmp ugt i64 1, %"$gasrem_469"
  br i1 %"$gascmp_470", label %"$out_of_gas_471", label %"$have_gas_472"

"$out_of_gas_471":                                ; preds = %"$have_gas_467"
  call void @_out_of_gas()
  br label %"$have_gas_472"

"$have_gas_472":                                  ; preds = %"$out_of_gas_471", %"$have_gas_467"
  %"$consume_473" = sub i64 %"$gasrem_469", 1
  store i64 %"$consume_473", i64* @_gasrem, align 8
  %"$four_474" = load %TName_Nat*, %TName_Nat** %four, align 8
  %"$adtval_475_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_475_salloc" = call i8* @_salloc(i8* %"$adtval_475_load", i64 9)
  %"$adtval_475" = bitcast i8* %"$adtval_475_salloc" to %CName_Succ*
  %"$adtgep_476" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_475", i32 0, i32 0
  store i8 1, i8* %"$adtgep_476", align 1
  %"$adtgep_477" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_475", i32 0, i32 1
  store %TName_Nat* %"$four_474", %TName_Nat** %"$adtgep_477", align 8
  %"$adtptr_478" = bitcast %CName_Succ* %"$adtval_475" to %TName_Nat*
  store %TName_Nat* %"$adtptr_478", %TName_Nat** %five, align 8, !dbg !50
  %"$gasrem_479" = load i64, i64* @_gasrem, align 8
  %"$gascmp_480" = icmp ugt i64 1, %"$gasrem_479"
  br i1 %"$gascmp_480", label %"$out_of_gas_481", label %"$have_gas_482"

"$out_of_gas_481":                                ; preds = %"$have_gas_472"
  call void @_out_of_gas()
  br label %"$have_gas_482"

"$have_gas_482":                                  ; preds = %"$out_of_gas_481", %"$have_gas_472"
  %"$consume_483" = sub i64 %"$gasrem_479", 1
  store i64 %"$consume_483", i64* @_gasrem, align 8
  %six = alloca %TName_Nat*, align 8
  %"$gasrem_484" = load i64, i64* @_gasrem, align 8
  %"$gascmp_485" = icmp ugt i64 1, %"$gasrem_484"
  br i1 %"$gascmp_485", label %"$out_of_gas_486", label %"$have_gas_487"

"$out_of_gas_486":                                ; preds = %"$have_gas_482"
  call void @_out_of_gas()
  br label %"$have_gas_487"

"$have_gas_487":                                  ; preds = %"$out_of_gas_486", %"$have_gas_482"
  %"$consume_488" = sub i64 %"$gasrem_484", 1
  store i64 %"$consume_488", i64* @_gasrem, align 8
  %"$five_489" = load %TName_Nat*, %TName_Nat** %five, align 8
  %"$adtval_490_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_490_salloc" = call i8* @_salloc(i8* %"$adtval_490_load", i64 9)
  %"$adtval_490" = bitcast i8* %"$adtval_490_salloc" to %CName_Succ*
  %"$adtgep_491" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_490", i32 0, i32 0
  store i8 1, i8* %"$adtgep_491", align 1
  %"$adtgep_492" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_490", i32 0, i32 1
  store %TName_Nat* %"$five_489", %TName_Nat** %"$adtgep_492", align 8
  %"$adtptr_493" = bitcast %CName_Succ* %"$adtval_490" to %TName_Nat*
  store %TName_Nat* %"$adtptr_493", %TName_Nat** %six, align 8, !dbg !51
  %"$gasrem_494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_495" = icmp ugt i64 1, %"$gasrem_494"
  br i1 %"$gascmp_495", label %"$out_of_gas_496", label %"$have_gas_497"

"$out_of_gas_496":                                ; preds = %"$have_gas_487"
  call void @_out_of_gas()
  br label %"$have_gas_497"

"$have_gas_497":                                  ; preds = %"$out_of_gas_496", %"$have_gas_487"
  %"$consume_498" = sub i64 %"$gasrem_494", 1
  store i64 %"$consume_498", i64* @_gasrem, align 8
  %seven = alloca %TName_Nat*, align 8
  %"$gasrem_499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_500" = icmp ugt i64 1, %"$gasrem_499"
  br i1 %"$gascmp_500", label %"$out_of_gas_501", label %"$have_gas_502"

"$out_of_gas_501":                                ; preds = %"$have_gas_497"
  call void @_out_of_gas()
  br label %"$have_gas_502"

"$have_gas_502":                                  ; preds = %"$out_of_gas_501", %"$have_gas_497"
  %"$consume_503" = sub i64 %"$gasrem_499", 1
  store i64 %"$consume_503", i64* @_gasrem, align 8
  %"$six_504" = load %TName_Nat*, %TName_Nat** %six, align 8
  %"$adtval_505_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_505_salloc" = call i8* @_salloc(i8* %"$adtval_505_load", i64 9)
  %"$adtval_505" = bitcast i8* %"$adtval_505_salloc" to %CName_Succ*
  %"$adtgep_506" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_505", i32 0, i32 0
  store i8 1, i8* %"$adtgep_506", align 1
  %"$adtgep_507" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_505", i32 0, i32 1
  store %TName_Nat* %"$six_504", %TName_Nat** %"$adtgep_507", align 8
  %"$adtptr_508" = bitcast %CName_Succ* %"$adtval_505" to %TName_Nat*
  store %TName_Nat* %"$adtptr_508", %TName_Nat** %seven, align 8, !dbg !52
  %"$gasrem_509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_510" = icmp ugt i64 1, %"$gasrem_509"
  br i1 %"$gascmp_510", label %"$out_of_gas_511", label %"$have_gas_512"

"$out_of_gas_511":                                ; preds = %"$have_gas_502"
  call void @_out_of_gas()
  br label %"$have_gas_512"

"$have_gas_512":                                  ; preds = %"$out_of_gas_511", %"$have_gas_502"
  %"$consume_513" = sub i64 %"$gasrem_509", 1
  store i64 %"$consume_513", i64* @_gasrem, align 8
  %fib = alloca { %Int32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_515" = icmp ugt i64 1, %"$gasrem_514"
  br i1 %"$gascmp_515", label %"$out_of_gas_516", label %"$have_gas_517"

"$out_of_gas_516":                                ; preds = %"$have_gas_512"
  call void @_out_of_gas()
  br label %"$have_gas_517"

"$have_gas_517":                                  ; preds = %"$out_of_gas_516", %"$have_gas_512"
  %"$consume_518" = sub i64 %"$gasrem_514", 1
  store i64 %"$consume_518", i64* @_gasrem, align 8
  %"$$fundef_20_envp_519_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_20_envp_519_salloc" = call i8* @_salloc(i8* %"$$fundef_20_envp_519_load", i64 8)
  %"$$fundef_20_envp_519" = bitcast i8* %"$$fundef_20_envp_519_salloc" to %"$$fundef_20_env_84"*
  %"$$fundef_20_env_voidp_521" = bitcast %"$$fundef_20_env_84"* %"$$fundef_20_envp_519" to i8*
  %"$$fundef_20_cloval_522" = insertvalue { %Int32 (i8*, %TName_Nat*)*, i8* } { %Int32 (i8*, %TName_Nat*)* bitcast (%Int32 (%"$$fundef_20_env_84"*, %TName_Nat*)* @"$fundef_20" to %Int32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_20_env_voidp_521", 1
  %"$$fundef_20_env_nat_fold_523" = getelementptr inbounds %"$$fundef_20_env_84", %"$$fundef_20_env_84"* %"$$fundef_20_envp_519", i32 0, i32 0
  %"$nat_fold_524" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_524", { i8*, i8* }** %"$$fundef_20_env_nat_fold_523", align 8
  store { %Int32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_20_cloval_522", { %Int32 (i8*, %TName_Nat*)*, i8* }* %fib, align 8, !dbg !53
  %"$gasrem_525" = load i64, i64* @_gasrem, align 8
  %"$gascmp_526" = icmp ugt i64 1, %"$gasrem_525"
  br i1 %"$gascmp_526", label %"$out_of_gas_527", label %"$have_gas_528"

"$out_of_gas_527":                                ; preds = %"$have_gas_517"
  call void @_out_of_gas()
  br label %"$have_gas_528"

"$have_gas_528":                                  ; preds = %"$out_of_gas_527", %"$have_gas_517"
  %"$consume_529" = sub i64 %"$gasrem_525", 1
  store i64 %"$consume_529", i64* @_gasrem, align 8
  %"$fib_10" = alloca %Int32, align 8
  %"$fib_530" = load { %Int32 (i8*, %TName_Nat*)*, i8* }, { %Int32 (i8*, %TName_Nat*)*, i8* }* %fib, align 8
  %"$fib_fptr_531" = extractvalue { %Int32 (i8*, %TName_Nat*)*, i8* } %"$fib_530", 0
  %"$fib_envptr_532" = extractvalue { %Int32 (i8*, %TName_Nat*)*, i8* } %"$fib_530", 1
  %"$seven_533" = load %TName_Nat*, %TName_Nat** %seven, align 8
  %"$fib_call_534" = call %Int32 %"$fib_fptr_531"(i8* %"$fib_envptr_532", %TName_Nat* %"$seven_533"), !dbg !54
  store %Int32 %"$fib_call_534", %Int32* %"$fib_10", align 4, !dbg !54
  %"$$fib_10_535" = load %Int32, %Int32* %"$fib_10", align 4
  store %Int32 %"$$fib_10_535", %Int32* %"$expr_19", align 4, !dbg !54
  %"$$expr_19_536" = load %Int32, %Int32* %"$expr_19", align 4
  ret %Int32 %"$$expr_19_536"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_537" = call %Int32 @"$scilla_expr_379"(i8* null)
  %"$pval_538" = alloca %Int32, align 8
  %"$memvoidcast_539" = bitcast %Int32* %"$pval_538" to i8*
  store %Int32 %"$exprval_537", %Int32* %"$pval_538", align 4
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Int32_28", i8* %"$memvoidcast_539")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "fib.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_24", linkageName: "$fundef_24", scope: !2, file: !2, line: 15, type: !5, scopeLine: 15, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 15, column: 7, scope: !4)
!9 = !DILocation(line: 16, column: 29, scope: !10)
!10 = distinct !DILexicalBlock(scope: !11, file: !2, line: 16, column: 9)
!11 = distinct !DILexicalBlock(scope: !4, file: !2, line: 15, column: 7)
!12 = !DILocation(line: 17, column: 7, scope: !10)
!13 = distinct !DISubprogram(name: "$fundef_22", linkageName: "$fundef_22", scope: !2, file: !2, line: 14, type: !5, scopeLine: 14, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!14 = !DILocation(line: 15, column: 7, scope: !13)
!15 = distinct !DISubprogram(name: "$fundef_20", linkageName: "$fundef_20", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 14, column: 37, scope: !15)
!17 = !DILocation(line: 20, column: 14, scope: !15)
!18 = !DILocation(line: 21, column: 13, scope: !15)
!19 = !DILocation(line: 22, column: 18, scope: !15)
!20 = !DILocation(line: 23, column: 23, scope: !15)
!21 = !DILocation(line: 23, column: 22, scope: !15)
!22 = !DILocation(line: 24, column: 15, scope: !15)
!23 = !DILocation(line: 25, column: 13, scope: !15)
!24 = !DILocation(line: 26, column: 2, scope: !15)
!25 = !DILocation(line: 27, column: 16, scope: !26)
!26 = distinct !DILexicalBlock(scope: !27, file: !2, line: 27, column: 4)
!27 = distinct !DILexicalBlock(scope: !15, file: !2, line: 26, column: 2)
!28 = distinct !DISubprogram(name: "$fundef_17", linkageName: "$fundef_17", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!29 = !DILocation(line: 1, column: 34, scope: !28)
!30 = !DILocation(line: 1, column: 71, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !2, line: 1, column: 50)
!32 = distinct !DILexicalBlock(scope: !28, file: !2, line: 1, column: 34)
!33 = !DILocation(line: 1, column: 86, scope: !31)
!34 = !DILocation(line: 1, column: 106, scope: !35)
!35 = distinct !DILexicalBlock(scope: !32, file: !2, line: 1, column: 98)
!36 = distinct !DISubprogram(name: "$fundef_15", linkageName: "$fundef_15", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!37 = !DILocation(line: 1, column: 34, scope: !36)
!38 = distinct !DISubprogram(name: "$fundef_13", linkageName: "$fundef_13", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!39 = !DILocation(line: 1, column: 18, scope: !38)
!40 = distinct !DISubprogram(name: "$fundef_11", linkageName: "$fundef_11", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!41 = !DILocation(line: 1, column: 18, scope: !40)
!42 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !2, file: !2, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!43 = distinct !DISubprogram(name: "$scilla_expr_379", linkageName: "$scilla_expr_379", scope: !2, file: !2, type: !5, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!44 = !DILocation(line: 1, column: 18, scope: !43)
!45 = !DILocation(line: 3, column: 12, scope: !43)
!46 = !DILocation(line: 4, column: 12, scope: !43)
!47 = !DILocation(line: 5, column: 12, scope: !43)
!48 = !DILocation(line: 6, column: 13, scope: !43)
!49 = !DILocation(line: 7, column: 12, scope: !43)
!50 = !DILocation(line: 8, column: 12, scope: !43)
!51 = !DILocation(line: 9, column: 11, scope: !43)
!52 = !DILocation(line: 10, column: 13, scope: !43)
!53 = !DILocation(line: 13, column: 3, scope: !43)
!54 = !DILocation(line: 32, column: 1, scope: !43)
