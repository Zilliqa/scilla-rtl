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

%"$TyDescrTy_PrimTyp_32" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_62" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_61"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_61" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_63"**, %"$TyDescrTy_ADTTyp_62"* }
%"$TyDescrTy_ADTTyp_Constr_63" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_583" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_584" = type { %ParamDescrString, i32, %"$ParamDescr_583"* }
%TName_Pair_Int32_Int32 = type { i8, %CName_Pair_Int32_Int32* }
%CName_Pair_Int32_Int32 = type <{ i8, %Int32, %Int32 }>
%"$$fundef_30_env_90" = type { %TName_Pair_Int32_Int32* }
%TName_Nat = type { i8, %CName_Zero*, %CName_Succ* }
%CName_Zero = type <{ i8 }>
%CName_Succ = type <{ i8, %TName_Nat* }>
%"$$fundef_28_env_91" = type {}
%"$$fundef_26_env_92" = type { { i8*, i8* }* }
%"$$fundef_23_env_93" = type { %TName_Pair_Int32_Int32*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } }
%"$$fundef_21_env_94" = type { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } }
%"$$fundef_19_env_95" = type {}
%"$$fundef_17_env_96" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_33" = global %"$TyDescrTy_PrimTyp_32" zeroinitializer
@"$TyDescr_Int32_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Int32_Prim_33" to i8*) }
@"$TyDescr_Uint32_Prim_35" = global %"$TyDescrTy_PrimTyp_32" { i32 1, i32 0 }
@"$TyDescr_Uint32_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Uint32_Prim_35" to i8*) }
@"$TyDescr_Int64_Prim_37" = global %"$TyDescrTy_PrimTyp_32" { i32 0, i32 1 }
@"$TyDescr_Int64_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Int64_Prim_37" to i8*) }
@"$TyDescr_Uint64_Prim_39" = global %"$TyDescrTy_PrimTyp_32" { i32 1, i32 1 }
@"$TyDescr_Uint64_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Uint64_Prim_39" to i8*) }
@"$TyDescr_Int128_Prim_41" = global %"$TyDescrTy_PrimTyp_32" { i32 0, i32 2 }
@"$TyDescr_Int128_42" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Int128_Prim_41" to i8*) }
@"$TyDescr_Uint128_Prim_43" = global %"$TyDescrTy_PrimTyp_32" { i32 1, i32 2 }
@"$TyDescr_Uint128_44" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Uint128_Prim_43" to i8*) }
@"$TyDescr_Int256_Prim_45" = global %"$TyDescrTy_PrimTyp_32" { i32 0, i32 3 }
@"$TyDescr_Int256_46" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Int256_Prim_45" to i8*) }
@"$TyDescr_Uint256_Prim_47" = global %"$TyDescrTy_PrimTyp_32" { i32 1, i32 3 }
@"$TyDescr_Uint256_48" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Uint256_Prim_47" to i8*) }
@"$TyDescr_String_Prim_49" = global %"$TyDescrTy_PrimTyp_32" { i32 2, i32 0 }
@"$TyDescr_String_50" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_String_Prim_49" to i8*) }
@"$TyDescr_Bnum_Prim_51" = global %"$TyDescrTy_PrimTyp_32" { i32 3, i32 0 }
@"$TyDescr_Bnum_52" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Bnum_Prim_51" to i8*) }
@"$TyDescr_Message_Prim_53" = global %"$TyDescrTy_PrimTyp_32" { i32 4, i32 0 }
@"$TyDescr_Message_54" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Message_Prim_53" to i8*) }
@"$TyDescr_Event_Prim_55" = global %"$TyDescrTy_PrimTyp_32" { i32 5, i32 0 }
@"$TyDescr_Event_56" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Event_Prim_55" to i8*) }
@"$TyDescr_Exception_Prim_57" = global %"$TyDescrTy_PrimTyp_32" { i32 6, i32 0 }
@"$TyDescr_Exception_58" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Exception_Prim_57" to i8*) }
@"$TyDescr_Bystr_Prim_59" = global %"$TyDescrTy_PrimTyp_32" { i32 7, i32 0 }
@"$TyDescr_Bystr_60" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Bystr_Prim_59" to i8*) }
@"$TyDescr_ADT_Nat_64" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_Nat_ADTTyp_Specl_78" to i8*) }
@"$TyDescr_ADT_Pair_Int32_Int32_65" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_87" to i8*) }
@"$TyDescr_Nat_ADTTyp_69" = unnamed_addr constant %"$TyDescrTy_ADTTyp_62" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nat_80", i32 0, i32 0), i32 3 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_61"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_61"*], [1 x %"$TyDescrTy_ADTTyp_Specl_61"*]* @"$TyDescr_Nat_ADTTyp_m_specls_79", i32 0, i32 0) }
@"$TyDescr_Nat_Zero_Constr_m_args_70" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Zero_71" = unnamed_addr constant [4 x i8] c"Zero"
@"$TyDescr_Nat_Zero_ADTTyp_Constr_72" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Zero_71", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Zero_Constr_m_args_70", i32 0, i32 0) }
@"$TyDescr_Nat_Succ_Constr_m_args_73" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_64"]
@"$TyDescr_ADT_Succ_74" = unnamed_addr constant [4 x i8] c"Succ"
@"$TyDescr_Nat_Succ_ADTTyp_Constr_75" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Succ_74", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Succ_Constr_m_args_73", i32 0, i32 0) }
@"$TyDescr_Nat_ADTTyp_Specl_m_constrs_76" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_63"*] [%"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_Nat_Zero_ADTTyp_Constr_72", %"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_Nat_Succ_ADTTyp_Constr_75"]
@"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_77" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Nat_ADTTyp_Specl_78" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_61" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_77", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_63"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_63"*], [2 x %"$TyDescrTy_ADTTyp_Constr_63"*]* @"$TyDescr_Nat_ADTTyp_Specl_m_constrs_76", i32 0, i32 0), %"$TyDescrTy_ADTTyp_62"* @"$TyDescr_Nat_ADTTyp_69" }
@"$TyDescr_Nat_ADTTyp_m_specls_79" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_61"*] [%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_Nat_ADTTyp_Specl_78"]
@"$TyDescr_ADT_Nat_80" = unnamed_addr constant [3 x i8] c"Nat"
@"$TyDescr_Pair_ADTTyp_81" = unnamed_addr constant %"$TyDescrTy_ADTTyp_62" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_89", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_61"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_61"*], [1 x %"$TyDescrTy_ADTTyp_Specl_61"*]* @"$TyDescr_Pair_ADTTyp_m_specls_88", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Int32_Int32_Constr_m_args_82" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_34", %_TyDescrTy_Typ* @"$TyDescr_Int32_34"]
@"$TyDescr_ADT_Pair_83" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Int32_Int32_ADTTyp_Constr_84" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_63" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_83", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Int32_Int32_Constr_m_args_82", i32 0, i32 0) }
@"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_constrs_85" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_63"*] [%"$TyDescrTy_ADTTyp_Constr_63"* @"$TyDescr_Pair_Pair_Int32_Int32_ADTTyp_Constr_84"]
@"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_TArgs_86" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_34", %_TyDescrTy_Typ* @"$TyDescr_Int32_34"]
@"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_87" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_61" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_TArgs_86", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_63"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_63"*], [1 x %"$TyDescrTy_ADTTyp_Constr_63"*]* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_constrs_85", i32 0, i32 0), %"$TyDescrTy_ADTTyp_62"* @"$TyDescr_Pair_ADTTyp_81" }
@"$TyDescr_Pair_ADTTyp_m_specls_88" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_61"*] [%"$TyDescrTy_ADTTyp_Specl_61"* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_87"]
@"$TyDescr_ADT_Pair_89" = unnamed_addr constant [4 x i8] c"Pair"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@nat_fold = global { i8*, i8* }* null
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_56", %_TyDescrTy_Typ* @"$TyDescr_Int64_38", %_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_64", %_TyDescrTy_Typ* @"$TyDescr_Uint256_48", %_TyDescrTy_Typ* @"$TyDescr_Uint32_36", %_TyDescrTy_Typ* @"$TyDescr_Uint64_40", %_TyDescrTy_Typ* @"$TyDescr_Bnum_52", %_TyDescrTy_Typ* @"$TyDescr_Uint128_44", %_TyDescrTy_Typ* @"$TyDescr_Exception_58", %_TyDescrTy_Typ* @"$TyDescr_String_50", %_TyDescrTy_Typ* @"$TyDescr_Int256_46", %_TyDescrTy_Typ* @"$TyDescr_Int128_42", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Int32_65", %_TyDescrTy_Typ* @"$TyDescr_Bystr_60", %_TyDescrTy_Typ* @"$TyDescr_Message_54", %_TyDescrTy_Typ* @"$TyDescr_Int32_34"]
@_tydescr_table_length = constant i32 16
@_contract_parameters = constant [0 x %"$ParamDescr_583"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_584"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Pair_Int32_Int32* @"$fundef_30"(%"$$fundef_30_env_90"* %0, %TName_Nat* %1) !dbg !4 {
entry:
  %"$$fundef_30_env_res_348" = getelementptr inbounds %"$$fundef_30_env_90", %"$$fundef_30_env_90"* %0, i32 0, i32 0
  %"$res_envload_349" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$$fundef_30_env_res_348", align 8
  %res = alloca %TName_Pair_Int32_Int32*, align 8
  store %TName_Pair_Int32_Int32* %"$res_envload_349", %TName_Pair_Int32_Int32** %res, align 8
  %"$retval_31" = alloca %TName_Pair_Int32_Int32*, align 8
  %"$gasrem_350" = load i64, i64* @_gasrem, align 8
  %"$gascmp_351" = icmp ugt i64 1, %"$gasrem_350"
  br i1 %"$gascmp_351", label %"$out_of_gas_352", label %"$have_gas_353"

"$out_of_gas_352":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_353"

"$have_gas_353":                                  ; preds = %"$out_of_gas_352", %entry
  %"$consume_354" = sub i64 %"$gasrem_350", 1
  store i64 %"$consume_354", i64* @_gasrem, align 8
  %"$res_356" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %res, align 8
  %"$res_tag_357" = getelementptr inbounds %TName_Pair_Int32_Int32, %TName_Pair_Int32_Int32* %"$res_356", i32 0, i32 0
  %"$res_tag_358" = load i8, i8* %"$res_tag_357", align 1
  switch i8 %"$res_tag_358", label %"$empty_default_359" [
    i8 0, label %"$Pair_360"
  ], !dbg !8

"$Pair_360":                                      ; preds = %"$have_gas_353"
  %"$res_361" = bitcast %TName_Pair_Int32_Int32* %"$res_356" to %CName_Pair_Int32_Int32*
  %"$x_gep_362" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_361", i32 0, i32 1
  %"$x_load_363" = load %Int32, %Int32* %"$x_gep_362", align 4
  %x = alloca %Int32, align 8
  store %Int32 %"$x_load_363", %Int32* %x, align 4
  %"$y_gep_364" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_361", i32 0, i32 2
  %"$y_load_365" = load %Int32, %Int32* %"$y_gep_364", align 4
  %y = alloca %Int32, align 8
  store %Int32 %"$y_load_365", %Int32* %y, align 4
  %"$gasrem_366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_367" = icmp ugt i64 1, %"$gasrem_366"
  br i1 %"$gascmp_367", label %"$out_of_gas_368", label %"$have_gas_369"

"$out_of_gas_368":                                ; preds = %"$Pair_360"
  call void @_out_of_gas()
  br label %"$have_gas_369"

"$have_gas_369":                                  ; preds = %"$out_of_gas_368", %"$Pair_360"
  %"$consume_370" = sub i64 %"$gasrem_366", 1
  store i64 %"$consume_370", i64* @_gasrem, align 8
  %z = alloca %Int32, align 8
  %"$gasrem_371" = load i64, i64* @_gasrem, align 8
  %"$gascmp_372" = icmp ugt i64 4, %"$gasrem_371"
  br i1 %"$gascmp_372", label %"$out_of_gas_373", label %"$have_gas_374"

"$out_of_gas_373":                                ; preds = %"$have_gas_369"
  call void @_out_of_gas()
  br label %"$have_gas_374"

"$have_gas_374":                                  ; preds = %"$out_of_gas_373", %"$have_gas_369"
  %"$consume_375" = sub i64 %"$gasrem_371", 4
  store i64 %"$consume_375", i64* @_gasrem, align 8
  %"$x_376" = load %Int32, %Int32* %x, align 4
  %"$y_377" = load %Int32, %Int32* %y, align 4
  %"$add_call_378" = call %Int32 @_add_Int32(%Int32 %"$x_376", %Int32 %"$y_377"), !dbg !9
  store %Int32 %"$add_call_378", %Int32* %z, align 4, !dbg !9
  %"$gasrem_379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_380" = icmp ugt i64 1, %"$gasrem_379"
  br i1 %"$gascmp_380", label %"$out_of_gas_381", label %"$have_gas_382"

"$out_of_gas_381":                                ; preds = %"$have_gas_374"
  call void @_out_of_gas()
  br label %"$have_gas_382"

"$have_gas_382":                                  ; preds = %"$out_of_gas_381", %"$have_gas_374"
  %"$consume_383" = sub i64 %"$gasrem_379", 1
  store i64 %"$consume_383", i64* @_gasrem, align 8
  %"$z_384" = load %Int32, %Int32* %z, align 4
  %"$x_385" = load %Int32, %Int32* %x, align 4
  %"$adtval_386_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_386_salloc" = call i8* @_salloc(i8* %"$adtval_386_load", i64 9)
  %"$adtval_386" = bitcast i8* %"$adtval_386_salloc" to %CName_Pair_Int32_Int32*
  %"$adtgep_387" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_386", i32 0, i32 0
  store i8 0, i8* %"$adtgep_387", align 1
  %"$adtgep_388" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_386", i32 0, i32 1
  store %Int32 %"$z_384", %Int32* %"$adtgep_388", align 4
  %"$adtgep_389" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_386", i32 0, i32 2
  store %Int32 %"$x_385", %Int32* %"$adtgep_389", align 4
  %"$adtptr_390" = bitcast %CName_Pair_Int32_Int32* %"$adtval_386" to %TName_Pair_Int32_Int32*
  store %TName_Pair_Int32_Int32* %"$adtptr_390", %TName_Pair_Int32_Int32** %"$retval_31", align 8, !dbg !12
  br label %"$matchsucc_355"

"$empty_default_359":                             ; preds = %"$have_gas_353"
  br label %"$matchsucc_355"

"$matchsucc_355":                                 ; preds = %"$have_gas_382", %"$empty_default_359"
  %"$$retval_31_391" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$retval_31", align 8
  ret %TName_Pair_Int32_Int32* %"$$retval_31_391"
}

define internal { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } @"$fundef_28"(%"$$fundef_28_env_91"* %0, %TName_Pair_Int32_Int32* %1) !dbg !13 {
entry:
  %"$retval_29" = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_338" = icmp ugt i64 1, %"$gasrem_337"
  br i1 %"$gascmp_338", label %"$out_of_gas_339", label %"$have_gas_340"

"$out_of_gas_339":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_340"

"$have_gas_340":                                  ; preds = %"$out_of_gas_339", %entry
  %"$consume_341" = sub i64 %"$gasrem_337", 1
  store i64 %"$consume_341", i64* @_gasrem, align 8
  %"$$fundef_30_envp_342_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_30_envp_342_salloc" = call i8* @_salloc(i8* %"$$fundef_30_envp_342_load", i64 8)
  %"$$fundef_30_envp_342" = bitcast i8* %"$$fundef_30_envp_342_salloc" to %"$$fundef_30_env_90"*
  %"$$fundef_30_env_voidp_344" = bitcast %"$$fundef_30_env_90"* %"$$fundef_30_envp_342" to i8*
  %"$$fundef_30_cloval_345" = insertvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)* bitcast (%TName_Pair_Int32_Int32* (%"$$fundef_30_env_90"*, %TName_Nat*)* @"$fundef_30" to %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_30_env_voidp_344", 1
  %"$$fundef_30_env_res_346" = getelementptr inbounds %"$$fundef_30_env_90", %"$$fundef_30_env_90"* %"$$fundef_30_envp_342", i32 0, i32 0
  store %TName_Pair_Int32_Int32* %1, %TName_Pair_Int32_Int32** %"$$fundef_30_env_res_346", align 8
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$fundef_30_cloval_345", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$retval_29", align 8, !dbg !14
  %"$$retval_29_347" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$retval_29", align 8
  ret { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$retval_29_347"
}

define internal %Int32 @"$fundef_26"(%"$$fundef_26_env_92"* %0, %TName_Nat* %1) !dbg !15 {
entry:
  %"$$fundef_26_env_nat_fold_209" = getelementptr inbounds %"$$fundef_26_env_92", %"$$fundef_26_env_92"* %0, i32 0, i32 0
  %"$nat_fold_envload_210" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_26_env_nat_fold_209", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_210", { i8*, i8* }** %nat_fold, align 8
  %"$retval_27" = alloca %Int32, align 8
  %"$gasrem_211" = load i64, i64* @_gasrem, align 8
  %"$gascmp_212" = icmp ugt i64 1, %"$gasrem_211"
  br i1 %"$gascmp_212", label %"$out_of_gas_213", label %"$have_gas_214"

"$out_of_gas_213":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_214"

"$have_gas_214":                                  ; preds = %"$out_of_gas_213", %entry
  %"$consume_215" = sub i64 %"$gasrem_211", 1
  store i64 %"$consume_215", i64* @_gasrem, align 8
  %iter_fun = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  %"$gasrem_216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_217" = icmp ugt i64 1, %"$gasrem_216"
  br i1 %"$gascmp_217", label %"$out_of_gas_218", label %"$have_gas_219"

"$out_of_gas_218":                                ; preds = %"$have_gas_214"
  call void @_out_of_gas()
  br label %"$have_gas_219"

"$have_gas_219":                                  ; preds = %"$out_of_gas_218", %"$have_gas_214"
  %"$consume_220" = sub i64 %"$gasrem_216", 1
  store i64 %"$consume_220", i64* @_gasrem, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)* bitcast ({ %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_28_env_91"*, %TName_Pair_Int32_Int32*)* @"$fundef_28" to { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*), i8* null }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %iter_fun, align 8, !dbg !16
  %"$gasrem_224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_225" = icmp ugt i64 1, %"$gasrem_224"
  br i1 %"$gascmp_225", label %"$out_of_gas_226", label %"$have_gas_227"

"$out_of_gas_226":                                ; preds = %"$have_gas_219"
  call void @_out_of_gas()
  br label %"$have_gas_227"

"$have_gas_227":                                  ; preds = %"$out_of_gas_226", %"$have_gas_219"
  %"$consume_228" = sub i64 %"$gasrem_224", 1
  store i64 %"$consume_228", i64* @_gasrem, align 8
  %"$zero_7" = alloca %Int32, align 8
  %"$gasrem_229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_230" = icmp ugt i64 1, %"$gasrem_229"
  br i1 %"$gascmp_230", label %"$out_of_gas_231", label %"$have_gas_232"

"$out_of_gas_231":                                ; preds = %"$have_gas_227"
  call void @_out_of_gas()
  br label %"$have_gas_232"

"$have_gas_232":                                  ; preds = %"$out_of_gas_231", %"$have_gas_227"
  %"$consume_233" = sub i64 %"$gasrem_229", 1
  store i64 %"$consume_233", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %"$zero_7", align 4, !dbg !17
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 1, %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %"$have_gas_232"
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %"$have_gas_232"
  %"$consume_238" = sub i64 %"$gasrem_234", 1
  store i64 %"$consume_238", i64* @_gasrem, align 8
  %"$one_8" = alloca %Int32, align 8
  %"$gasrem_239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_240" = icmp ugt i64 1, %"$gasrem_239"
  br i1 %"$gascmp_240", label %"$out_of_gas_241", label %"$have_gas_242"

"$out_of_gas_241":                                ; preds = %"$have_gas_237"
  call void @_out_of_gas()
  br label %"$have_gas_242"

"$have_gas_242":                                  ; preds = %"$out_of_gas_241", %"$have_gas_237"
  %"$consume_243" = sub i64 %"$gasrem_239", 1
  store i64 %"$consume_243", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %"$one_8", align 4, !dbg !18
  %"$gasrem_244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_245" = icmp ugt i64 1, %"$gasrem_244"
  br i1 %"$gascmp_245", label %"$out_of_gas_246", label %"$have_gas_247"

"$out_of_gas_246":                                ; preds = %"$have_gas_242"
  call void @_out_of_gas()
  br label %"$have_gas_247"

"$have_gas_247":                                  ; preds = %"$out_of_gas_246", %"$have_gas_242"
  %"$consume_248" = sub i64 %"$gasrem_244", 1
  store i64 %"$consume_248", i64* @_gasrem, align 8
  %init_val = alloca %TName_Pair_Int32_Int32*, align 8
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 1, %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %"$have_gas_247"
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %"$have_gas_247"
  %"$consume_253" = sub i64 %"$gasrem_249", 1
  store i64 %"$consume_253", i64* @_gasrem, align 8
  %"$$one_8_254" = load %Int32, %Int32* %"$one_8", align 4
  %"$$zero_7_255" = load %Int32, %Int32* %"$zero_7", align 4
  %"$adtval_256_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_256_salloc" = call i8* @_salloc(i8* %"$adtval_256_load", i64 9)
  %"$adtval_256" = bitcast i8* %"$adtval_256_salloc" to %CName_Pair_Int32_Int32*
  %"$adtgep_257" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_256", i32 0, i32 0
  store i8 0, i8* %"$adtgep_257", align 1
  %"$adtgep_258" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_256", i32 0, i32 1
  store %Int32 %"$$one_8_254", %Int32* %"$adtgep_258", align 4
  %"$adtgep_259" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_256", i32 0, i32 2
  store %Int32 %"$$zero_7_255", %Int32* %"$adtgep_259", align 4
  %"$adtptr_260" = bitcast %CName_Pair_Int32_Int32* %"$adtval_256" to %TName_Pair_Int32_Int32*
  store %TName_Pair_Int32_Int32* %"$adtptr_260", %TName_Pair_Int32_Int32** %init_val, align 8, !dbg !19
  %"$gasrem_261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_262" = icmp ugt i64 1, %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %"$have_gas_252"
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %"$have_gas_252"
  %"$consume_265" = sub i64 %"$gasrem_261", 1
  store i64 %"$consume_265", i64* @_gasrem, align 8
  %typed_folder = alloca { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }, align 8
  %"$gasrem_266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_267" = icmp ugt i64 1, %"$gasrem_266"
  br i1 %"$gascmp_267", label %"$out_of_gas_268", label %"$have_gas_269"

"$out_of_gas_268":                                ; preds = %"$have_gas_264"
  call void @_out_of_gas()
  br label %"$have_gas_269"

"$have_gas_269":                                  ; preds = %"$out_of_gas_268", %"$have_gas_264"
  %"$consume_270" = sub i64 %"$gasrem_266", 1
  store i64 %"$consume_270", i64* @_gasrem, align 8
  %"$nat_fold_271" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_272" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_271", i32 0
  %"$nat_fold_273" = bitcast { i8*, i8* }* %"$nat_fold_272" to { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_274" = load { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_273", align 8
  %"$nat_fold_fptr_275" = extractvalue { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_274", 0
  %"$nat_fold_envptr_276" = extractvalue { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_274", 1
  %"$nat_fold_call_277" = call { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$nat_fold_fptr_275"(i8* %"$nat_fold_envptr_276"), !dbg !20
  store { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$nat_fold_call_277", { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %typed_folder, align 8, !dbg !21
  %"$gasrem_278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_279" = icmp ugt i64 1, %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %"$have_gas_269"
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %"$have_gas_269"
  %"$consume_282" = sub i64 %"$gasrem_278", 1
  store i64 %"$consume_282", i64* @_gasrem, align 8
  %folder = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_284" = icmp ugt i64 1, %"$gasrem_283"
  br i1 %"$gascmp_284", label %"$out_of_gas_285", label %"$have_gas_286"

"$out_of_gas_285":                                ; preds = %"$have_gas_281"
  call void @_out_of_gas()
  br label %"$have_gas_286"

"$have_gas_286":                                  ; preds = %"$out_of_gas_285", %"$have_gas_281"
  %"$consume_287" = sub i64 %"$gasrem_283", 1
  store i64 %"$consume_287", i64* @_gasrem, align 8
  %"$typed_folder_13" = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  %"$typed_folder_288" = load { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }, { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %typed_folder, align 8
  %"$typed_folder_fptr_289" = extractvalue { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$typed_folder_288", 0
  %"$typed_folder_envptr_290" = extractvalue { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$typed_folder_288", 1
  %"$iter_fun_291" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %iter_fun, align 8
  %"$typed_folder_call_292" = call { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$typed_folder_fptr_289"(i8* %"$typed_folder_envptr_290", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$iter_fun_291"), !dbg !22
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$typed_folder_call_292", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$typed_folder_13", align 8, !dbg !22
  %"$typed_folder_14" = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$typed_folder_13_293" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$typed_folder_13", align 8
  %"$$typed_folder_13_fptr_294" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$typed_folder_13_293", 0
  %"$$typed_folder_13_envptr_295" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$typed_folder_13_293", 1
  %"$init_val_296" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %init_val, align 8
  %"$$typed_folder_13_call_297" = call { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$typed_folder_13_fptr_294"(i8* %"$$typed_folder_13_envptr_295", %TName_Pair_Int32_Int32* %"$init_val_296"), !dbg !22
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$typed_folder_13_call_297", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$typed_folder_14", align 8, !dbg !22
  %"$$typed_folder_14_298" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$typed_folder_14", align 8
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$typed_folder_14_298", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %folder, align 8, !dbg !22
  %"$gasrem_299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_300" = icmp ugt i64 1, %"$gasrem_299"
  br i1 %"$gascmp_300", label %"$out_of_gas_301", label %"$have_gas_302"

"$out_of_gas_301":                                ; preds = %"$have_gas_286"
  call void @_out_of_gas()
  br label %"$have_gas_302"

"$have_gas_302":                                  ; preds = %"$out_of_gas_301", %"$have_gas_286"
  %"$consume_303" = sub i64 %"$gasrem_299", 1
  store i64 %"$consume_303", i64* @_gasrem, align 8
  %res = alloca %TName_Pair_Int32_Int32*, align 8
  %"$gasrem_304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_305" = icmp ugt i64 1, %"$gasrem_304"
  br i1 %"$gascmp_305", label %"$out_of_gas_306", label %"$have_gas_307"

"$out_of_gas_306":                                ; preds = %"$have_gas_302"
  call void @_out_of_gas()
  br label %"$have_gas_307"

"$have_gas_307":                                  ; preds = %"$out_of_gas_306", %"$have_gas_302"
  %"$consume_308" = sub i64 %"$gasrem_304", 1
  store i64 %"$consume_308", i64* @_gasrem, align 8
  %"$folder_15" = alloca %TName_Pair_Int32_Int32*, align 8
  %"$folder_309" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %folder, align 8
  %"$folder_fptr_310" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$folder_309", 0
  %"$folder_envptr_311" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$folder_309", 1
  %"$folder_call_312" = call %TName_Pair_Int32_Int32* %"$folder_fptr_310"(i8* %"$folder_envptr_311", %TName_Nat* %1), !dbg !23
  store %TName_Pair_Int32_Int32* %"$folder_call_312", %TName_Pair_Int32_Int32** %"$folder_15", align 8, !dbg !23
  %"$$folder_15_313" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$folder_15", align 8
  store %TName_Pair_Int32_Int32* %"$$folder_15_313", %TName_Pair_Int32_Int32** %res, align 8, !dbg !23
  %"$gasrem_314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_315" = icmp ugt i64 1, %"$gasrem_314"
  br i1 %"$gascmp_315", label %"$out_of_gas_316", label %"$have_gas_317"

"$out_of_gas_316":                                ; preds = %"$have_gas_307"
  call void @_out_of_gas()
  br label %"$have_gas_317"

"$have_gas_317":                                  ; preds = %"$out_of_gas_316", %"$have_gas_307"
  %"$consume_318" = sub i64 %"$gasrem_314", 1
  store i64 %"$consume_318", i64* @_gasrem, align 8
  %"$res_320" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %res, align 8
  %"$res_tag_321" = getelementptr inbounds %TName_Pair_Int32_Int32, %TName_Pair_Int32_Int32* %"$res_320", i32 0, i32 0
  %"$res_tag_322" = load i8, i8* %"$res_tag_321", align 1
  switch i8 %"$res_tag_322", label %"$empty_default_323" [
    i8 0, label %"$Pair_324"
  ], !dbg !24

"$Pair_324":                                      ; preds = %"$have_gas_317"
  %"$res_325" = bitcast %TName_Pair_Int32_Int32* %"$res_320" to %CName_Pair_Int32_Int32*
  %"$x_gep_326" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_325", i32 0, i32 1
  %"$x_load_327" = load %Int32, %Int32* %"$x_gep_326", align 4
  %x = alloca %Int32, align 8
  store %Int32 %"$x_load_327", %Int32* %x, align 4
  %"$y_gep_328" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_325", i32 0, i32 2
  %"$y_load_329" = load %Int32, %Int32* %"$y_gep_328", align 4
  %y = alloca %Int32, align 8
  store %Int32 %"$y_load_329", %Int32* %y, align 4
  %"$gasrem_330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_331" = icmp ugt i64 1, %"$gasrem_330"
  br i1 %"$gascmp_331", label %"$out_of_gas_332", label %"$have_gas_333"

"$out_of_gas_332":                                ; preds = %"$Pair_324"
  call void @_out_of_gas()
  br label %"$have_gas_333"

"$have_gas_333":                                  ; preds = %"$out_of_gas_332", %"$Pair_324"
  %"$consume_334" = sub i64 %"$gasrem_330", 1
  store i64 %"$consume_334", i64* @_gasrem, align 8
  %"$x_335" = load %Int32, %Int32* %x, align 4
  store %Int32 %"$x_335", %Int32* %"$retval_27", align 4, !dbg !25
  br label %"$matchsucc_319"

"$empty_default_323":                             ; preds = %"$have_gas_317"
  br label %"$matchsucc_319"

"$matchsucc_319":                                 ; preds = %"$have_gas_333", %"$empty_default_323"
  %"$$retval_27_336" = load %Int32, %Int32* %"$retval_27", align 4
  ret %Int32 %"$$retval_27_336"
}

define internal %TName_Pair_Int32_Int32* @"$fundef_23"(%"$$fundef_23_env_93"* %0, %TName_Nat* %1) !dbg !28 {
entry:
  %"$$fundef_23_env_f0_144" = getelementptr inbounds %"$$fundef_23_env_93", %"$$fundef_23_env_93"* %0, i32 0, i32 0
  %"$f0_envload_145" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$$fundef_23_env_f0_144", align 8
  %f0 = alloca %TName_Pair_Int32_Int32*, align 8
  store %TName_Pair_Int32_Int32* %"$f0_envload_145", %TName_Pair_Int32_Int32** %f0, align 8
  %"$$fundef_23_env_fn_146" = getelementptr inbounds %"$$fundef_23_env_93", %"$$fundef_23_env_93"* %0, i32 0, i32 1
  %"$fn_envload_147" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_23_env_fn_146", align 8
  %fn = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_envload_147", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn, align 8
  %"$$fundef_23_env_g_148" = getelementptr inbounds %"$$fundef_23_env_93", %"$$fundef_23_env_93"* %0, i32 0, i32 2
  %"$g_envload_149" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_23_env_g_148", align 8
  %g = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_envload_149", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  %"$retval_24" = alloca %TName_Pair_Int32_Int32*, align 8
  %"$gasrem_150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_151" = icmp ugt i64 2, %"$gasrem_150"
  br i1 %"$gascmp_151", label %"$out_of_gas_152", label %"$have_gas_153"

"$out_of_gas_152":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_153"

"$have_gas_153":                                  ; preds = %"$out_of_gas_152", %entry
  %"$consume_154" = sub i64 %"$gasrem_150", 2
  store i64 %"$consume_154", i64* @_gasrem, align 8
  %"$n_tag_156" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_157" = load i8, i8* %"$n_tag_156", align 1
  switch i8 %"$n_tag_157", label %"$empty_default_158" [
    i8 1, label %"$Succ_159"
    i8 0, label %"$Zero_200"
  ], !dbg !30

"$Succ_159":                                      ; preds = %"$have_gas_153"
  %"$n_160" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_161" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_160", i32 0, i32 1
  %"$n1_load_162" = load %TName_Nat*, %TName_Nat** %"$n1_gep_161", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_162", %TName_Nat** %n1, align 8
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 1, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %"$Succ_159"
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %"$Succ_159"
  %"$consume_167" = sub i64 %"$gasrem_163", 1
  store i64 %"$consume_167", i64* @_gasrem, align 8
  %res = alloca %TName_Pair_Int32_Int32*, align 8
  %"$gasrem_168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_169" = icmp ugt i64 1, %"$gasrem_168"
  br i1 %"$gascmp_169", label %"$out_of_gas_170", label %"$have_gas_171"

"$out_of_gas_170":                                ; preds = %"$have_gas_166"
  call void @_out_of_gas()
  br label %"$have_gas_171"

"$have_gas_171":                                  ; preds = %"$out_of_gas_170", %"$have_gas_166"
  %"$consume_172" = sub i64 %"$gasrem_168", 1
  store i64 %"$consume_172", i64* @_gasrem, align 8
  %"$fn_9" = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_173" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn, align 8
  %"$fn_fptr_174" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_173", 0
  %"$fn_envptr_175" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_173", 1
  %"$f0_176" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %f0, align 8
  %"$fn_call_177" = call { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_174"(i8* %"$fn_envptr_175", %TName_Pair_Int32_Int32* %"$f0_176"), !dbg !31
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$fn_call_177", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$fn_9", align 8, !dbg !31
  %"$fn_10" = alloca %TName_Pair_Int32_Int32*, align 8
  %"$$fn_9_178" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$fn_9", align 8
  %"$$fn_9_fptr_179" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$fn_9_178", 0
  %"$$fn_9_envptr_180" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$fn_9_178", 1
  %"$n1_181" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_9_call_182" = call %TName_Pair_Int32_Int32* %"$$fn_9_fptr_179"(i8* %"$$fn_9_envptr_180", %TName_Nat* %"$n1_181"), !dbg !31
  store %TName_Pair_Int32_Int32* %"$$fn_9_call_182", %TName_Pair_Int32_Int32** %"$fn_10", align 8, !dbg !31
  %"$$fn_10_183" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$fn_10", align 8
  store %TName_Pair_Int32_Int32* %"$$fn_10_183", %TName_Pair_Int32_Int32** %res, align 8, !dbg !31
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %"$have_gas_171"
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %"$have_gas_171"
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem, align 8
  %"$g_11" = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_189" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  %"$g_fptr_190" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_189", 0
  %"$g_envptr_191" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_189", 1
  %"$res_192" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %res, align 8
  %"$g_call_193" = call { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$g_fptr_190"(i8* %"$g_envptr_191", %TName_Pair_Int32_Int32* %"$res_192"), !dbg !34
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$g_call_193", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$g_11", align 8, !dbg !34
  %"$g_12" = alloca %TName_Pair_Int32_Int32*, align 8
  %"$$g_11_194" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$g_11", align 8
  %"$$g_11_fptr_195" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$g_11_194", 0
  %"$$g_11_envptr_196" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$g_11_194", 1
  %"$n1_197" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_11_call_198" = call %TName_Pair_Int32_Int32* %"$$g_11_fptr_195"(i8* %"$$g_11_envptr_196", %TName_Nat* %"$n1_197"), !dbg !34
  store %TName_Pair_Int32_Int32* %"$$g_11_call_198", %TName_Pair_Int32_Int32** %"$g_12", align 8, !dbg !34
  %"$$g_12_199" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$g_12", align 8
  store %TName_Pair_Int32_Int32* %"$$g_12_199", %TName_Pair_Int32_Int32** %"$retval_24", align 8, !dbg !34
  br label %"$matchsucc_155"

"$Zero_200":                                      ; preds = %"$have_gas_153"
  %"$n_201" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 1, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %"$Zero_200"
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %"$Zero_200"
  %"$consume_206" = sub i64 %"$gasrem_202", 1
  store i64 %"$consume_206", i64* @_gasrem, align 8
  %"$f0_207" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %f0, align 8
  store %TName_Pair_Int32_Int32* %"$f0_207", %TName_Pair_Int32_Int32** %"$retval_24", align 8, !dbg !35
  br label %"$matchsucc_155"

"$empty_default_158":                             ; preds = %"$have_gas_153"
  br label %"$matchsucc_155"

"$matchsucc_155":                                 ; preds = %"$have_gas_205", %"$have_gas_187", %"$empty_default_158"
  %"$$retval_24_208" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$retval_24", align 8
  ret %TName_Pair_Int32_Int32* %"$$retval_24_208"
}

define internal { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } @"$fundef_21"(%"$$fundef_21_env_94"* %0, %TName_Pair_Int32_Int32* %1) !dbg !37 {
entry:
  %"$$fundef_21_env_fn_120" = getelementptr inbounds %"$$fundef_21_env_94", %"$$fundef_21_env_94"* %0, i32 0, i32 0
  %"$fn_envload_121" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_21_env_fn_120", align 8
  %fn = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_envload_121", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn, align 8
  %"$$fundef_21_env_g_122" = getelementptr inbounds %"$$fundef_21_env_94", %"$$fundef_21_env_94"* %0, i32 0, i32 1
  %"$g_envload_123" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_21_env_g_122", align 8
  %g = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_envload_123", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  %"$retval_22" = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_124" = load i64, i64* @_gasrem, align 8
  %"$gascmp_125" = icmp ugt i64 1, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %entry
  %"$consume_128" = sub i64 %"$gasrem_124", 1
  store i64 %"$consume_128", i64* @_gasrem, align 8
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_127"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_127"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  %"$$fundef_23_envp_134_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_23_envp_134_salloc" = call i8* @_salloc(i8* %"$$fundef_23_envp_134_load", i64 40)
  %"$$fundef_23_envp_134" = bitcast i8* %"$$fundef_23_envp_134_salloc" to %"$$fundef_23_env_93"*
  %"$$fundef_23_env_voidp_136" = bitcast %"$$fundef_23_env_93"* %"$$fundef_23_envp_134" to i8*
  %"$$fundef_23_cloval_137" = insertvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)* bitcast (%TName_Pair_Int32_Int32* (%"$$fundef_23_env_93"*, %TName_Nat*)* @"$fundef_23" to %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_23_env_voidp_136", 1
  %"$$fundef_23_env_f0_138" = getelementptr inbounds %"$$fundef_23_env_93", %"$$fundef_23_env_93"* %"$$fundef_23_envp_134", i32 0, i32 0
  store %TName_Pair_Int32_Int32* %1, %TName_Pair_Int32_Int32** %"$$fundef_23_env_f0_138", align 8
  %"$$fundef_23_env_fn_139" = getelementptr inbounds %"$$fundef_23_env_93", %"$$fundef_23_env_93"* %"$$fundef_23_envp_134", i32 0, i32 1
  %"$fn_140" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_140", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_23_env_fn_139", align 8
  %"$$fundef_23_env_g_141" = getelementptr inbounds %"$$fundef_23_env_93", %"$$fundef_23_env_93"* %"$$fundef_23_envp_134", i32 0, i32 2
  %"$g_142" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_142", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_23_env_g_141", align 8
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$fundef_23_cloval_137", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$retval_22", align 8, !dbg !38
  %"$$retval_22_143" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$retval_22", align 8
  ret { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$retval_22_143"
}

define internal { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } @"$fundef_19"(%"$$fundef_19_env_95"* %0, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %1) !dbg !39 {
entry:
  %"$retval_20" = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 1, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %entry
  %"$consume_110" = sub i64 %"$gasrem_106", 1
  store i64 %"$consume_110", i64* @_gasrem, align 8
  %"$$fundef_21_envp_111_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_21_envp_111_salloc" = call i8* @_salloc(i8* %"$$fundef_21_envp_111_load", i64 32)
  %"$$fundef_21_envp_111" = bitcast i8* %"$$fundef_21_envp_111_salloc" to %"$$fundef_21_env_94"*
  %"$$fundef_21_env_voidp_113" = bitcast %"$$fundef_21_env_94"* %"$$fundef_21_envp_111" to i8*
  %"$$fundef_21_cloval_114" = insertvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)* bitcast ({ %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_21_env_94"*, %TName_Pair_Int32_Int32*)* @"$fundef_21" to { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*), i8* undef }, i8* %"$$fundef_21_env_voidp_113", 1
  %g = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$fundef_21_cloval_114", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8, !dbg !40
  %"$$fundef_21_env_fn_115" = getelementptr inbounds %"$$fundef_21_env_94", %"$$fundef_21_env_94"* %"$$fundef_21_envp_111", i32 0, i32 0
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %1, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_21_env_fn_115", align 8
  %"$$fundef_21_env_g_116" = getelementptr inbounds %"$$fundef_21_env_94", %"$$fundef_21_env_94"* %"$$fundef_21_envp_111", i32 0, i32 1
  %"$g_117" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_117", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_21_env_g_116", align 8
  %"$g_118" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_118", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$retval_20", align 8, !dbg !40
  %"$$retval_20_119" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$retval_20", align 8
  ret { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$retval_20_119"
}

define internal { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } @"$fundef_17"(%"$$fundef_17_env_96"* %0) !dbg !41 {
entry:
  %"$retval_18" = alloca { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }, align 8
  %"$gasrem_97" = load i64, i64* @_gasrem, align 8
  %"$gascmp_98" = icmp ugt i64 1, %"$gasrem_97"
  br i1 %"$gascmp_98", label %"$out_of_gas_99", label %"$have_gas_100"

"$out_of_gas_99":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_100"

"$have_gas_100":                                  ; preds = %"$out_of_gas_99", %entry
  %"$consume_101" = sub i64 %"$gasrem_97", 1
  store i64 %"$consume_101", i64* @_gasrem, align 8
  store { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })* bitcast ({ { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (%"$$fundef_19_env_95"*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })* @"$fundef_19" to { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*), i8* null }, { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %"$retval_18", align 8, !dbg !42
  %"$$retval_18_105" = load { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }, { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %"$retval_18", align 8
  ret { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$$retval_18_105"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() !dbg !43 {
entry:
  %"$gasrem_392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_393" = icmp ugt i64 4, %"$gasrem_392"
  br i1 %"$gascmp_393", label %"$out_of_gas_394", label %"$have_gas_395"

"$out_of_gas_394":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_395"

"$have_gas_395":                                  ; preds = %"$out_of_gas_394", %entry
  %"$consume_396" = sub i64 %"$gasrem_392", 4
  store i64 %"$consume_396", i64* @_gasrem, align 8
  store %Int32 { i32 4 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !45
  %"$gasrem_397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_398" = icmp ugt i64 1, %"$gasrem_397"
  br i1 %"$gascmp_398", label %"$out_of_gas_399", label %"$have_gas_400"

"$out_of_gas_399":                                ; preds = %"$have_gas_395"
  call void @_out_of_gas()
  br label %"$have_gas_400"

"$have_gas_400":                                  ; preds = %"$out_of_gas_399", %"$have_gas_395"
  %"$consume_401" = sub i64 %"$gasrem_397", 1
  store i64 %"$consume_401", i64* @_gasrem, align 8
  %"$dyndisp_table_405_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_405_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_405_salloc_load", i64 16)
  %"$dyndisp_table_405_salloc" = bitcast i8* %"$dyndisp_table_405_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_405" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_405_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_406" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_405", i32 0
  %"$dyndisp_pcast_407" = bitcast { i8*, i8* }* %"$dyndisp_gep_406" to { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (%"$$fundef_17_env_96"*)* @"$fundef_17" to { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_407", align 8
  store { i8*, i8* }* %"$dyndisp_table_405", { i8*, i8* }** @nat_fold, align 8, !dbg !46
  %"$gasrem_408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_409" = icmp ugt i64 8, %"$gasrem_408"
  br i1 %"$gascmp_409", label %"$out_of_gas_410", label %"$have_gas_411"

"$out_of_gas_410":                                ; preds = %"$have_gas_400"
  call void @_out_of_gas()
  br label %"$have_gas_411"

"$have_gas_411":                                  ; preds = %"$out_of_gas_410", %"$have_gas_400"
  %"$consume_412" = sub i64 %"$gasrem_408", 8
  store i64 %"$consume_412", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !45
  %"$gasrem_413" = load i64, i64* @_gasrem, align 8
  %"$gascmp_414" = icmp ugt i64 196, %"$gasrem_413"
  br i1 %"$gascmp_414", label %"$out_of_gas_415", label %"$have_gas_416"

"$out_of_gas_415":                                ; preds = %"$have_gas_411"
  call void @_out_of_gas()
  br label %"$have_gas_416"

"$have_gas_416":                                  ; preds = %"$out_of_gas_415", %"$have_gas_411"
  %"$consume_417" = sub i64 %"$gasrem_413", 196
  store i64 %"$consume_417", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !45
  %"$gasrem_418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_419" = icmp ugt i64 20, %"$gasrem_418"
  br i1 %"$gascmp_419", label %"$out_of_gas_420", label %"$have_gas_421"

"$out_of_gas_420":                                ; preds = %"$have_gas_416"
  call void @_out_of_gas()
  br label %"$have_gas_421"

"$have_gas_421":                                  ; preds = %"$out_of_gas_420", %"$have_gas_416"
  %"$consume_422" = sub i64 %"$gasrem_418", 20
  store i64 %"$consume_422", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !45
  %"$gasrem_423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_424" = icmp ugt i64 12, %"$gasrem_423"
  br i1 %"$gascmp_424", label %"$out_of_gas_425", label %"$have_gas_426"

"$out_of_gas_425":                                ; preds = %"$have_gas_421"
  call void @_out_of_gas()
  br label %"$have_gas_426"

"$have_gas_426":                                  ; preds = %"$out_of_gas_425", %"$have_gas_421"
  %"$consume_427" = sub i64 %"$gasrem_423", 12
  store i64 %"$consume_427", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !45
  %"$gasrem_428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_429" = icmp ugt i64 2, %"$gasrem_428"
  br i1 %"$gascmp_429", label %"$out_of_gas_430", label %"$have_gas_431"

"$out_of_gas_430":                                ; preds = %"$have_gas_426"
  call void @_out_of_gas()
  br label %"$have_gas_431"

"$have_gas_431":                                  ; preds = %"$out_of_gas_430", %"$have_gas_426"
  %"$consume_432" = sub i64 %"$gasrem_428", 2
  store i64 %"$consume_432", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !45
  ret void
}

define internal %Int32 @_scilla_expr_fun(i8* %0) !dbg !47 {
entry:
  %"$expr_25" = alloca %Int32, align 8
  %"$gasrem_433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_434" = icmp ugt i64 1, %"$gasrem_433"
  br i1 %"$gascmp_434", label %"$out_of_gas_435", label %"$have_gas_436"

"$out_of_gas_435":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_436"

"$have_gas_436":                                  ; preds = %"$out_of_gas_435", %entry
  %"$consume_437" = sub i64 %"$gasrem_433", 1
  store i64 %"$consume_437", i64* @_gasrem, align 8
  %zero = alloca %TName_Nat*, align 8
  %"$gasrem_438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_439" = icmp ugt i64 1, %"$gasrem_438"
  br i1 %"$gascmp_439", label %"$out_of_gas_440", label %"$have_gas_441"

"$out_of_gas_440":                                ; preds = %"$have_gas_436"
  call void @_out_of_gas()
  br label %"$have_gas_441"

"$have_gas_441":                                  ; preds = %"$out_of_gas_440", %"$have_gas_436"
  %"$consume_442" = sub i64 %"$gasrem_438", 1
  store i64 %"$consume_442", i64* @_gasrem, align 8
  %"$adtval_443_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_443_salloc" = call i8* @_salloc(i8* %"$adtval_443_load", i64 1)
  %"$adtval_443" = bitcast i8* %"$adtval_443_salloc" to %CName_Zero*
  %"$adtgep_444" = getelementptr inbounds %CName_Zero, %CName_Zero* %"$adtval_443", i32 0, i32 0
  store i8 0, i8* %"$adtgep_444", align 1
  %"$adtptr_445" = bitcast %CName_Zero* %"$adtval_443" to %TName_Nat*
  store %TName_Nat* %"$adtptr_445", %TName_Nat** %zero, align 8, !dbg !48
  %"$gasrem_446" = load i64, i64* @_gasrem, align 8
  %"$gascmp_447" = icmp ugt i64 1, %"$gasrem_446"
  br i1 %"$gascmp_447", label %"$out_of_gas_448", label %"$have_gas_449"

"$out_of_gas_448":                                ; preds = %"$have_gas_441"
  call void @_out_of_gas()
  br label %"$have_gas_449"

"$have_gas_449":                                  ; preds = %"$out_of_gas_448", %"$have_gas_441"
  %"$consume_450" = sub i64 %"$gasrem_446", 1
  store i64 %"$consume_450", i64* @_gasrem, align 8
  %one = alloca %TName_Nat*, align 8
  %"$gasrem_451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_452" = icmp ugt i64 1, %"$gasrem_451"
  br i1 %"$gascmp_452", label %"$out_of_gas_453", label %"$have_gas_454"

"$out_of_gas_453":                                ; preds = %"$have_gas_449"
  call void @_out_of_gas()
  br label %"$have_gas_454"

"$have_gas_454":                                  ; preds = %"$out_of_gas_453", %"$have_gas_449"
  %"$consume_455" = sub i64 %"$gasrem_451", 1
  store i64 %"$consume_455", i64* @_gasrem, align 8
  %"$zero_456" = load %TName_Nat*, %TName_Nat** %zero, align 8
  %"$adtval_457_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_457_salloc" = call i8* @_salloc(i8* %"$adtval_457_load", i64 9)
  %"$adtval_457" = bitcast i8* %"$adtval_457_salloc" to %CName_Succ*
  %"$adtgep_458" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_457", i32 0, i32 0
  store i8 1, i8* %"$adtgep_458", align 1
  %"$adtgep_459" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_457", i32 0, i32 1
  store %TName_Nat* %"$zero_456", %TName_Nat** %"$adtgep_459", align 8
  %"$adtptr_460" = bitcast %CName_Succ* %"$adtval_457" to %TName_Nat*
  store %TName_Nat* %"$adtptr_460", %TName_Nat** %one, align 8, !dbg !49
  %"$gasrem_461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_462" = icmp ugt i64 1, %"$gasrem_461"
  br i1 %"$gascmp_462", label %"$out_of_gas_463", label %"$have_gas_464"

"$out_of_gas_463":                                ; preds = %"$have_gas_454"
  call void @_out_of_gas()
  br label %"$have_gas_464"

"$have_gas_464":                                  ; preds = %"$out_of_gas_463", %"$have_gas_454"
  %"$consume_465" = sub i64 %"$gasrem_461", 1
  store i64 %"$consume_465", i64* @_gasrem, align 8
  %two = alloca %TName_Nat*, align 8
  %"$gasrem_466" = load i64, i64* @_gasrem, align 8
  %"$gascmp_467" = icmp ugt i64 1, %"$gasrem_466"
  br i1 %"$gascmp_467", label %"$out_of_gas_468", label %"$have_gas_469"

"$out_of_gas_468":                                ; preds = %"$have_gas_464"
  call void @_out_of_gas()
  br label %"$have_gas_469"

"$have_gas_469":                                  ; preds = %"$out_of_gas_468", %"$have_gas_464"
  %"$consume_470" = sub i64 %"$gasrem_466", 1
  store i64 %"$consume_470", i64* @_gasrem, align 8
  %"$one_471" = load %TName_Nat*, %TName_Nat** %one, align 8
  %"$adtval_472_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_472_salloc" = call i8* @_salloc(i8* %"$adtval_472_load", i64 9)
  %"$adtval_472" = bitcast i8* %"$adtval_472_salloc" to %CName_Succ*
  %"$adtgep_473" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_472", i32 0, i32 0
  store i8 1, i8* %"$adtgep_473", align 1
  %"$adtgep_474" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_472", i32 0, i32 1
  store %TName_Nat* %"$one_471", %TName_Nat** %"$adtgep_474", align 8
  %"$adtptr_475" = bitcast %CName_Succ* %"$adtval_472" to %TName_Nat*
  store %TName_Nat* %"$adtptr_475", %TName_Nat** %two, align 8, !dbg !50
  %"$gasrem_476" = load i64, i64* @_gasrem, align 8
  %"$gascmp_477" = icmp ugt i64 1, %"$gasrem_476"
  br i1 %"$gascmp_477", label %"$out_of_gas_478", label %"$have_gas_479"

"$out_of_gas_478":                                ; preds = %"$have_gas_469"
  call void @_out_of_gas()
  br label %"$have_gas_479"

"$have_gas_479":                                  ; preds = %"$out_of_gas_478", %"$have_gas_469"
  %"$consume_480" = sub i64 %"$gasrem_476", 1
  store i64 %"$consume_480", i64* @_gasrem, align 8
  %three = alloca %TName_Nat*, align 8
  %"$gasrem_481" = load i64, i64* @_gasrem, align 8
  %"$gascmp_482" = icmp ugt i64 1, %"$gasrem_481"
  br i1 %"$gascmp_482", label %"$out_of_gas_483", label %"$have_gas_484"

"$out_of_gas_483":                                ; preds = %"$have_gas_479"
  call void @_out_of_gas()
  br label %"$have_gas_484"

"$have_gas_484":                                  ; preds = %"$out_of_gas_483", %"$have_gas_479"
  %"$consume_485" = sub i64 %"$gasrem_481", 1
  store i64 %"$consume_485", i64* @_gasrem, align 8
  %"$two_486" = load %TName_Nat*, %TName_Nat** %two, align 8
  %"$adtval_487_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_487_salloc" = call i8* @_salloc(i8* %"$adtval_487_load", i64 9)
  %"$adtval_487" = bitcast i8* %"$adtval_487_salloc" to %CName_Succ*
  %"$adtgep_488" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_487", i32 0, i32 0
  store i8 1, i8* %"$adtgep_488", align 1
  %"$adtgep_489" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_487", i32 0, i32 1
  store %TName_Nat* %"$two_486", %TName_Nat** %"$adtgep_489", align 8
  %"$adtptr_490" = bitcast %CName_Succ* %"$adtval_487" to %TName_Nat*
  store %TName_Nat* %"$adtptr_490", %TName_Nat** %three, align 8, !dbg !51
  %"$gasrem_491" = load i64, i64* @_gasrem, align 8
  %"$gascmp_492" = icmp ugt i64 1, %"$gasrem_491"
  br i1 %"$gascmp_492", label %"$out_of_gas_493", label %"$have_gas_494"

"$out_of_gas_493":                                ; preds = %"$have_gas_484"
  call void @_out_of_gas()
  br label %"$have_gas_494"

"$have_gas_494":                                  ; preds = %"$out_of_gas_493", %"$have_gas_484"
  %"$consume_495" = sub i64 %"$gasrem_491", 1
  store i64 %"$consume_495", i64* @_gasrem, align 8
  %four = alloca %TName_Nat*, align 8
  %"$gasrem_496" = load i64, i64* @_gasrem, align 8
  %"$gascmp_497" = icmp ugt i64 1, %"$gasrem_496"
  br i1 %"$gascmp_497", label %"$out_of_gas_498", label %"$have_gas_499"

"$out_of_gas_498":                                ; preds = %"$have_gas_494"
  call void @_out_of_gas()
  br label %"$have_gas_499"

"$have_gas_499":                                  ; preds = %"$out_of_gas_498", %"$have_gas_494"
  %"$consume_500" = sub i64 %"$gasrem_496", 1
  store i64 %"$consume_500", i64* @_gasrem, align 8
  %"$three_501" = load %TName_Nat*, %TName_Nat** %three, align 8
  %"$adtval_502_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_502_salloc" = call i8* @_salloc(i8* %"$adtval_502_load", i64 9)
  %"$adtval_502" = bitcast i8* %"$adtval_502_salloc" to %CName_Succ*
  %"$adtgep_503" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_502", i32 0, i32 0
  store i8 1, i8* %"$adtgep_503", align 1
  %"$adtgep_504" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_502", i32 0, i32 1
  store %TName_Nat* %"$three_501", %TName_Nat** %"$adtgep_504", align 8
  %"$adtptr_505" = bitcast %CName_Succ* %"$adtval_502" to %TName_Nat*
  store %TName_Nat* %"$adtptr_505", %TName_Nat** %four, align 8, !dbg !52
  %"$gasrem_506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_507" = icmp ugt i64 1, %"$gasrem_506"
  br i1 %"$gascmp_507", label %"$out_of_gas_508", label %"$have_gas_509"

"$out_of_gas_508":                                ; preds = %"$have_gas_499"
  call void @_out_of_gas()
  br label %"$have_gas_509"

"$have_gas_509":                                  ; preds = %"$out_of_gas_508", %"$have_gas_499"
  %"$consume_510" = sub i64 %"$gasrem_506", 1
  store i64 %"$consume_510", i64* @_gasrem, align 8
  %five = alloca %TName_Nat*, align 8
  %"$gasrem_511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_512" = icmp ugt i64 1, %"$gasrem_511"
  br i1 %"$gascmp_512", label %"$out_of_gas_513", label %"$have_gas_514"

"$out_of_gas_513":                                ; preds = %"$have_gas_509"
  call void @_out_of_gas()
  br label %"$have_gas_514"

"$have_gas_514":                                  ; preds = %"$out_of_gas_513", %"$have_gas_509"
  %"$consume_515" = sub i64 %"$gasrem_511", 1
  store i64 %"$consume_515", i64* @_gasrem, align 8
  %"$four_516" = load %TName_Nat*, %TName_Nat** %four, align 8
  %"$adtval_517_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_517_salloc" = call i8* @_salloc(i8* %"$adtval_517_load", i64 9)
  %"$adtval_517" = bitcast i8* %"$adtval_517_salloc" to %CName_Succ*
  %"$adtgep_518" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_517", i32 0, i32 0
  store i8 1, i8* %"$adtgep_518", align 1
  %"$adtgep_519" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_517", i32 0, i32 1
  store %TName_Nat* %"$four_516", %TName_Nat** %"$adtgep_519", align 8
  %"$adtptr_520" = bitcast %CName_Succ* %"$adtval_517" to %TName_Nat*
  store %TName_Nat* %"$adtptr_520", %TName_Nat** %five, align 8, !dbg !53
  %"$gasrem_521" = load i64, i64* @_gasrem, align 8
  %"$gascmp_522" = icmp ugt i64 1, %"$gasrem_521"
  br i1 %"$gascmp_522", label %"$out_of_gas_523", label %"$have_gas_524"

"$out_of_gas_523":                                ; preds = %"$have_gas_514"
  call void @_out_of_gas()
  br label %"$have_gas_524"

"$have_gas_524":                                  ; preds = %"$out_of_gas_523", %"$have_gas_514"
  %"$consume_525" = sub i64 %"$gasrem_521", 1
  store i64 %"$consume_525", i64* @_gasrem, align 8
  %six = alloca %TName_Nat*, align 8
  %"$gasrem_526" = load i64, i64* @_gasrem, align 8
  %"$gascmp_527" = icmp ugt i64 1, %"$gasrem_526"
  br i1 %"$gascmp_527", label %"$out_of_gas_528", label %"$have_gas_529"

"$out_of_gas_528":                                ; preds = %"$have_gas_524"
  call void @_out_of_gas()
  br label %"$have_gas_529"

"$have_gas_529":                                  ; preds = %"$out_of_gas_528", %"$have_gas_524"
  %"$consume_530" = sub i64 %"$gasrem_526", 1
  store i64 %"$consume_530", i64* @_gasrem, align 8
  %"$five_531" = load %TName_Nat*, %TName_Nat** %five, align 8
  %"$adtval_532_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_532_salloc" = call i8* @_salloc(i8* %"$adtval_532_load", i64 9)
  %"$adtval_532" = bitcast i8* %"$adtval_532_salloc" to %CName_Succ*
  %"$adtgep_533" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_532", i32 0, i32 0
  store i8 1, i8* %"$adtgep_533", align 1
  %"$adtgep_534" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_532", i32 0, i32 1
  store %TName_Nat* %"$five_531", %TName_Nat** %"$adtgep_534", align 8
  %"$adtptr_535" = bitcast %CName_Succ* %"$adtval_532" to %TName_Nat*
  store %TName_Nat* %"$adtptr_535", %TName_Nat** %six, align 8, !dbg !54
  %"$gasrem_536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_537" = icmp ugt i64 1, %"$gasrem_536"
  br i1 %"$gascmp_537", label %"$out_of_gas_538", label %"$have_gas_539"

"$out_of_gas_538":                                ; preds = %"$have_gas_529"
  call void @_out_of_gas()
  br label %"$have_gas_539"

"$have_gas_539":                                  ; preds = %"$out_of_gas_538", %"$have_gas_529"
  %"$consume_540" = sub i64 %"$gasrem_536", 1
  store i64 %"$consume_540", i64* @_gasrem, align 8
  %seven = alloca %TName_Nat*, align 8
  %"$gasrem_541" = load i64, i64* @_gasrem, align 8
  %"$gascmp_542" = icmp ugt i64 1, %"$gasrem_541"
  br i1 %"$gascmp_542", label %"$out_of_gas_543", label %"$have_gas_544"

"$out_of_gas_543":                                ; preds = %"$have_gas_539"
  call void @_out_of_gas()
  br label %"$have_gas_544"

"$have_gas_544":                                  ; preds = %"$out_of_gas_543", %"$have_gas_539"
  %"$consume_545" = sub i64 %"$gasrem_541", 1
  store i64 %"$consume_545", i64* @_gasrem, align 8
  %"$six_546" = load %TName_Nat*, %TName_Nat** %six, align 8
  %"$adtval_547_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_547_salloc" = call i8* @_salloc(i8* %"$adtval_547_load", i64 9)
  %"$adtval_547" = bitcast i8* %"$adtval_547_salloc" to %CName_Succ*
  %"$adtgep_548" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_547", i32 0, i32 0
  store i8 1, i8* %"$adtgep_548", align 1
  %"$adtgep_549" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_547", i32 0, i32 1
  store %TName_Nat* %"$six_546", %TName_Nat** %"$adtgep_549", align 8
  %"$adtptr_550" = bitcast %CName_Succ* %"$adtval_547" to %TName_Nat*
  store %TName_Nat* %"$adtptr_550", %TName_Nat** %seven, align 8, !dbg !55
  %"$gasrem_551" = load i64, i64* @_gasrem, align 8
  %"$gascmp_552" = icmp ugt i64 1, %"$gasrem_551"
  br i1 %"$gascmp_552", label %"$out_of_gas_553", label %"$have_gas_554"

"$out_of_gas_553":                                ; preds = %"$have_gas_544"
  call void @_out_of_gas()
  br label %"$have_gas_554"

"$have_gas_554":                                  ; preds = %"$out_of_gas_553", %"$have_gas_544"
  %"$consume_555" = sub i64 %"$gasrem_551", 1
  store i64 %"$consume_555", i64* @_gasrem, align 8
  %fib = alloca { %Int32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_556" = load i64, i64* @_gasrem, align 8
  %"$gascmp_557" = icmp ugt i64 1, %"$gasrem_556"
  br i1 %"$gascmp_557", label %"$out_of_gas_558", label %"$have_gas_559"

"$out_of_gas_558":                                ; preds = %"$have_gas_554"
  call void @_out_of_gas()
  br label %"$have_gas_559"

"$have_gas_559":                                  ; preds = %"$out_of_gas_558", %"$have_gas_554"
  %"$consume_560" = sub i64 %"$gasrem_556", 1
  store i64 %"$consume_560", i64* @_gasrem, align 8
  %"$$fundef_26_envp_561_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_26_envp_561_salloc" = call i8* @_salloc(i8* %"$$fundef_26_envp_561_load", i64 8)
  %"$$fundef_26_envp_561" = bitcast i8* %"$$fundef_26_envp_561_salloc" to %"$$fundef_26_env_92"*
  %"$$fundef_26_env_voidp_563" = bitcast %"$$fundef_26_env_92"* %"$$fundef_26_envp_561" to i8*
  %"$$fundef_26_cloval_564" = insertvalue { %Int32 (i8*, %TName_Nat*)*, i8* } { %Int32 (i8*, %TName_Nat*)* bitcast (%Int32 (%"$$fundef_26_env_92"*, %TName_Nat*)* @"$fundef_26" to %Int32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_26_env_voidp_563", 1
  %"$$fundef_26_env_nat_fold_565" = getelementptr inbounds %"$$fundef_26_env_92", %"$$fundef_26_env_92"* %"$$fundef_26_envp_561", i32 0, i32 0
  %"$nat_fold_566" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_566", { i8*, i8* }** %"$$fundef_26_env_nat_fold_565", align 8
  store { %Int32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_26_cloval_564", { %Int32 (i8*, %TName_Nat*)*, i8* }* %fib, align 8, !dbg !56
  %"$gasrem_567" = load i64, i64* @_gasrem, align 8
  %"$gascmp_568" = icmp ugt i64 1, %"$gasrem_567"
  br i1 %"$gascmp_568", label %"$out_of_gas_569", label %"$have_gas_570"

"$out_of_gas_569":                                ; preds = %"$have_gas_559"
  call void @_out_of_gas()
  br label %"$have_gas_570"

"$have_gas_570":                                  ; preds = %"$out_of_gas_569", %"$have_gas_559"
  %"$consume_571" = sub i64 %"$gasrem_567", 1
  store i64 %"$consume_571", i64* @_gasrem, align 8
  %"$fib_16" = alloca %Int32, align 8
  %"$fib_572" = load { %Int32 (i8*, %TName_Nat*)*, i8* }, { %Int32 (i8*, %TName_Nat*)*, i8* }* %fib, align 8
  %"$fib_fptr_573" = extractvalue { %Int32 (i8*, %TName_Nat*)*, i8* } %"$fib_572", 0
  %"$fib_envptr_574" = extractvalue { %Int32 (i8*, %TName_Nat*)*, i8* } %"$fib_572", 1
  %"$seven_575" = load %TName_Nat*, %TName_Nat** %seven, align 8
  %"$fib_call_576" = call %Int32 %"$fib_fptr_573"(i8* %"$fib_envptr_574", %TName_Nat* %"$seven_575"), !dbg !57
  store %Int32 %"$fib_call_576", %Int32* %"$fib_16", align 4, !dbg !57
  %"$$fib_16_577" = load %Int32, %Int32* %"$fib_16", align 4
  store %Int32 %"$$fib_16_577", %Int32* %"$expr_25", align 4, !dbg !57
  %"$$expr_25_578" = load %Int32, %Int32* %"$expr_25", align 4
  ret %Int32 %"$$expr_25_578"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_579" = call %Int32 @_scilla_expr_fun(i8* null)
  %"$pval_580" = alloca %Int32, align 8
  %"$memvoidcast_581" = bitcast %Int32* %"$pval_580" to i8*
  store %Int32 %"$exprval_579", %Int32* %"$pval_580", align 4
  %"$execptr_load_582" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_582", %_TyDescrTy_Typ* @"$TyDescr_Int32_34", i8* %"$memvoidcast_581")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "fib.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_30", linkageName: "$fundef_30", scope: !2, file: !2, line: 15, type: !5, scopeLine: 15, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 15, column: 7, scope: !4)
!9 = !DILocation(line: 16, column: 29, scope: !10)
!10 = distinct !DILexicalBlock(scope: !11, file: !2, line: 16, column: 9)
!11 = distinct !DILexicalBlock(scope: !4, file: !2, line: 15, column: 7)
!12 = !DILocation(line: 17, column: 7, scope: !10)
!13 = distinct !DISubprogram(name: "$fundef_28", linkageName: "$fundef_28", scope: !2, file: !2, line: 14, type: !5, scopeLine: 14, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!14 = !DILocation(line: 15, column: 7, scope: !13)
!15 = distinct !DISubprogram(name: "$fundef_26", linkageName: "$fundef_26", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
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
!28 = distinct !DISubprogram(name: "$fundef_23", linkageName: "$fundef_23", scope: !29, file: !29, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!29 = !DIFile(filename: "Prelude", directory: ".")
!30 = !DILocation(line: 1, column: 34, scope: !28)
!31 = !DILocation(line: 1, column: 71, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !29, line: 1, column: 50)
!33 = distinct !DILexicalBlock(scope: !28, file: !29, line: 1, column: 34)
!34 = !DILocation(line: 1, column: 86, scope: !32)
!35 = !DILocation(line: 1, column: 106, scope: !36)
!36 = distinct !DILexicalBlock(scope: !33, file: !29, line: 1, column: 98)
!37 = distinct !DISubprogram(name: "$fundef_21", linkageName: "$fundef_21", scope: !29, file: !29, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!38 = !DILocation(line: 1, column: 34, scope: !37)
!39 = distinct !DISubprogram(name: "$fundef_19", linkageName: "$fundef_19", scope: !29, file: !29, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!40 = !DILocation(line: 1, column: 18, scope: !39)
!41 = distinct !DISubprogram(name: "$fundef_17", linkageName: "$fundef_17", scope: !29, file: !29, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!42 = !DILocation(line: 1, column: 18, scope: !41)
!43 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !44, file: !44, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!44 = !DIFile(filename: ".", directory: ".")
!45 = !DILocation(line: 0, scope: !43)
!46 = !DILocation(line: 1, column: 18, scope: !43)
!47 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!48 = !DILocation(line: 3, column: 12, scope: !47)
!49 = !DILocation(line: 4, column: 12, scope: !47)
!50 = !DILocation(line: 5, column: 12, scope: !47)
!51 = !DILocation(line: 6, column: 13, scope: !47)
!52 = !DILocation(line: 7, column: 12, scope: !47)
!53 = !DILocation(line: 8, column: 12, scope: !47)
!54 = !DILocation(line: 9, column: 11, scope: !47)
!55 = !DILocation(line: 10, column: 13, scope: !47)
!56 = !DILocation(line: 13, column: 3, scope: !47)
!57 = !DILocation(line: 32, column: 1, scope: !47)
