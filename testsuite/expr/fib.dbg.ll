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
%"$ParamDescr_542" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_543" = type { %ParamDescrString, i32, %"$ParamDescr_542"* }
%TName_Pair_Int32_Int32 = type { i8, %CName_Pair_Int32_Int32* }
%CName_Pair_Int32_Int32 = type <{ i8, %Int32, %Int32 }>
%Int32 = type { i32 }
%"$$fundef_24_env_84" = type { %TName_Pair_Int32_Int32* }
%TName_Nat = type { i8, %CName_Zero*, %CName_Succ* }
%CName_Zero = type <{ i8 }>
%CName_Succ = type <{ i8, %TName_Nat* }>
%"$$fundef_22_env_85" = type {}
%"$$fundef_20_env_86" = type { { i8*, i8* }* }
%"$$fundef_17_env_87" = type { %TName_Pair_Int32_Int32*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } }
%"$$fundef_15_env_88" = type { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } }
%"$$fundef_13_env_89" = type {}
%"$$fundef_11_env_90" = type {}

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
@"$TyDescr_ADT_Nat_58" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Nat_ADTTyp_Specl_72" to i8*) }
@"$TyDescr_ADT_Pair_Int32_Int32_59" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_81" to i8*) }
@"$TyDescr_Nat_ADTTyp_63" = unnamed_addr constant %"$TyDescrTy_ADTTyp_56" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nat_74", i32 0, i32 0), i32 3 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_55"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_55"*], [1 x %"$TyDescrTy_ADTTyp_Specl_55"*]* @"$TyDescr_Nat_ADTTyp_m_specls_73", i32 0, i32 0) }
@"$TyDescr_Nat_Zero_Constr_m_args_64" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Zero_65" = unnamed_addr constant [4 x i8] c"Zero"
@"$TyDescr_Nat_Zero_ADTTyp_Constr_66" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Zero_65", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Zero_Constr_m_args_64", i32 0, i32 0) }
@"$TyDescr_Nat_Succ_Constr_m_args_67" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_58"]
@"$TyDescr_ADT_Succ_68" = unnamed_addr constant [4 x i8] c"Succ"
@"$TyDescr_Nat_Succ_ADTTyp_Constr_69" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Succ_68", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Succ_Constr_m_args_67", i32 0, i32 0) }
@"$TyDescr_Nat_ADTTyp_Specl_m_constrs_70" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_57"*] [%"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Nat_Zero_ADTTyp_Constr_66", %"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Nat_Succ_ADTTyp_Constr_69"]
@"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_71" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Nat_ADTTyp_Specl_72" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_55" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_71", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_57"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_57"*], [2 x %"$TyDescrTy_ADTTyp_Constr_57"*]* @"$TyDescr_Nat_ADTTyp_Specl_m_constrs_70", i32 0, i32 0), %"$TyDescrTy_ADTTyp_56"* @"$TyDescr_Nat_ADTTyp_63" }
@"$TyDescr_Nat_ADTTyp_m_specls_73" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_55"*] [%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Nat_ADTTyp_Specl_72"]
@"$TyDescr_ADT_Nat_74" = unnamed_addr constant [3 x i8] c"Nat"
@"$TyDescr_Pair_ADTTyp_75" = unnamed_addr constant %"$TyDescrTy_ADTTyp_56" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_83", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_55"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_55"*], [1 x %"$TyDescrTy_ADTTyp_Specl_55"*]* @"$TyDescr_Pair_ADTTyp_m_specls_82", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Int32_Int32_Constr_m_args_76" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_28", %_TyDescrTy_Typ* @"$TyDescr_Int32_28"]
@"$TyDescr_ADT_Pair_77" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Int32_Int32_ADTTyp_Constr_78" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_77", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Int32_Int32_Constr_m_args_76", i32 0, i32 0) }
@"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_constrs_79" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_57"*] [%"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Pair_Pair_Int32_Int32_ADTTyp_Constr_78"]
@"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_TArgs_80" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_28", %_TyDescrTy_Typ* @"$TyDescr_Int32_28"]
@"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_81" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_55" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_TArgs_80", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_57"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_57"*], [1 x %"$TyDescrTy_ADTTyp_Constr_57"*]* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_constrs_79", i32 0, i32 0), %"$TyDescrTy_ADTTyp_56"* @"$TyDescr_Pair_ADTTyp_75" }
@"$TyDescr_Pair_ADTTyp_m_specls_82" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_55"*] [%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_81"]
@"$TyDescr_ADT_Pair_83" = unnamed_addr constant [4 x i8] c"Pair"
@nat_fold = global { i8*, i8* }* null
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_50", %_TyDescrTy_Typ* @"$TyDescr_Int64_32", %_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_58", %_TyDescrTy_Typ* @"$TyDescr_Uint256_42", %_TyDescrTy_Typ* @"$TyDescr_Uint32_30", %_TyDescrTy_Typ* @"$TyDescr_Uint64_34", %_TyDescrTy_Typ* @"$TyDescr_Bnum_46", %_TyDescrTy_Typ* @"$TyDescr_Uint128_38", %_TyDescrTy_Typ* @"$TyDescr_Exception_52", %_TyDescrTy_Typ* @"$TyDescr_String_44", %_TyDescrTy_Typ* @"$TyDescr_Int256_40", %_TyDescrTy_Typ* @"$TyDescr_Int128_36", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Int32_59", %_TyDescrTy_Typ* @"$TyDescr_Bystr_54", %_TyDescrTy_Typ* @"$TyDescr_Message_48", %_TyDescrTy_Typ* @"$TyDescr_Int32_28"]
@_tydescr_table_length = constant i32 16
@_contract_parameters = constant [0 x %"$ParamDescr_542"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_543"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Pair_Int32_Int32* @"$fundef_24"(%"$$fundef_24_env_84"* %0, %TName_Nat* %1) !dbg !4 {
entry:
  %"$$fundef_24_env_res_342" = getelementptr inbounds %"$$fundef_24_env_84", %"$$fundef_24_env_84"* %0, i32 0, i32 0
  %"$res_envload_343" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$$fundef_24_env_res_342", align 8
  %res = alloca %TName_Pair_Int32_Int32*, align 8
  store %TName_Pair_Int32_Int32* %"$res_envload_343", %TName_Pair_Int32_Int32** %res, align 8
  %"$retval_25" = alloca %TName_Pair_Int32_Int32*, align 8
  %"$gasrem_344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_345" = icmp ugt i64 1, %"$gasrem_344"
  br i1 %"$gascmp_345", label %"$out_of_gas_346", label %"$have_gas_347"

"$out_of_gas_346":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_347"

"$have_gas_347":                                  ; preds = %"$out_of_gas_346", %entry
  %"$consume_348" = sub i64 %"$gasrem_344", 1
  store i64 %"$consume_348", i64* @_gasrem, align 8
  %"$res_350" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %res, align 8
  %"$res_tag_351" = getelementptr inbounds %TName_Pair_Int32_Int32, %TName_Pair_Int32_Int32* %"$res_350", i32 0, i32 0
  %"$res_tag_352" = load i8, i8* %"$res_tag_351", align 1
  switch i8 %"$res_tag_352", label %"$empty_default_353" [
    i8 0, label %"$Pair_354"
  ], !dbg !8

"$Pair_354":                                      ; preds = %"$have_gas_347"
  %"$res_355" = bitcast %TName_Pair_Int32_Int32* %"$res_350" to %CName_Pair_Int32_Int32*
  %"$x_gep_356" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_355", i32 0, i32 1
  %"$x_load_357" = load %Int32, %Int32* %"$x_gep_356", align 4
  %x = alloca %Int32, align 8
  store %Int32 %"$x_load_357", %Int32* %x, align 4
  %"$y_gep_358" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_355", i32 0, i32 2
  %"$y_load_359" = load %Int32, %Int32* %"$y_gep_358", align 4
  %y = alloca %Int32, align 8
  store %Int32 %"$y_load_359", %Int32* %y, align 4
  %"$gasrem_360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_361" = icmp ugt i64 1, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$Pair_354"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$Pair_354"
  %"$consume_364" = sub i64 %"$gasrem_360", 1
  store i64 %"$consume_364", i64* @_gasrem, align 8
  %z = alloca %Int32, align 8
  %"$x_365" = load %Int32, %Int32* %x, align 4
  %"$y_366" = load %Int32, %Int32* %y, align 4
  %"$add_call_367" = call %Int32 @_add_Int32(%Int32 %"$x_365", %Int32 %"$y_366")
  store %Int32 %"$add_call_367", %Int32* %z, align 4, !dbg !9
  %"$gasrem_368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_369" = icmp ugt i64 1, %"$gasrem_368"
  br i1 %"$gascmp_369", label %"$out_of_gas_370", label %"$have_gas_371"

"$out_of_gas_370":                                ; preds = %"$have_gas_363"
  call void @_out_of_gas()
  br label %"$have_gas_371"

"$have_gas_371":                                  ; preds = %"$out_of_gas_370", %"$have_gas_363"
  %"$consume_372" = sub i64 %"$gasrem_368", 1
  store i64 %"$consume_372", i64* @_gasrem, align 8
  %"$z_373" = load %Int32, %Int32* %z, align 4
  %"$x_374" = load %Int32, %Int32* %x, align 4
  %"$adtval_375_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_375_salloc" = call i8* @_salloc(i8* %"$adtval_375_load", i64 9)
  %"$adtval_375" = bitcast i8* %"$adtval_375_salloc" to %CName_Pair_Int32_Int32*
  %"$adtgep_376" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_375", i32 0, i32 0
  store i8 0, i8* %"$adtgep_376", align 1
  %"$adtgep_377" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_375", i32 0, i32 1
  store %Int32 %"$z_373", %Int32* %"$adtgep_377", align 4
  %"$adtgep_378" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_375", i32 0, i32 2
  store %Int32 %"$x_374", %Int32* %"$adtgep_378", align 4
  %"$adtptr_379" = bitcast %CName_Pair_Int32_Int32* %"$adtval_375" to %TName_Pair_Int32_Int32*
  store %TName_Pair_Int32_Int32* %"$adtptr_379", %TName_Pair_Int32_Int32** %"$retval_25", align 8, !dbg !12
  br label %"$matchsucc_349"

"$empty_default_353":                             ; preds = %"$have_gas_347"
  br label %"$matchsucc_349"

"$matchsucc_349":                                 ; preds = %"$have_gas_371", %"$empty_default_353"
  %"$$retval_25_380" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$retval_25", align 8
  ret %TName_Pair_Int32_Int32* %"$$retval_25_380"
}

define internal { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } @"$fundef_22"(%"$$fundef_22_env_85"* %0, %TName_Pair_Int32_Int32* %1) !dbg !13 {
entry:
  %"$retval_23" = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_332" = icmp ugt i64 1, %"$gasrem_331"
  br i1 %"$gascmp_332", label %"$out_of_gas_333", label %"$have_gas_334"

"$out_of_gas_333":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_334"

"$have_gas_334":                                  ; preds = %"$out_of_gas_333", %entry
  %"$consume_335" = sub i64 %"$gasrem_331", 1
  store i64 %"$consume_335", i64* @_gasrem, align 8
  %"$$fundef_24_envp_336_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_24_envp_336_salloc" = call i8* @_salloc(i8* %"$$fundef_24_envp_336_load", i64 8)
  %"$$fundef_24_envp_336" = bitcast i8* %"$$fundef_24_envp_336_salloc" to %"$$fundef_24_env_84"*
  %"$$fundef_24_env_voidp_338" = bitcast %"$$fundef_24_env_84"* %"$$fundef_24_envp_336" to i8*
  %"$$fundef_24_cloval_339" = insertvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)* bitcast (%TName_Pair_Int32_Int32* (%"$$fundef_24_env_84"*, %TName_Nat*)* @"$fundef_24" to %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_24_env_voidp_338", 1
  %"$$fundef_24_env_res_340" = getelementptr inbounds %"$$fundef_24_env_84", %"$$fundef_24_env_84"* %"$$fundef_24_envp_336", i32 0, i32 0
  store %TName_Pair_Int32_Int32* %1, %TName_Pair_Int32_Int32** %"$$fundef_24_env_res_340", align 8
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$fundef_24_cloval_339", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$retval_23", align 8, !dbg !14
  %"$$retval_23_341" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$retval_23", align 8
  ret { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$retval_23_341"
}

define internal %Int32 @"$fundef_20"(%"$$fundef_20_env_86"* %0, %TName_Nat* %1) !dbg !15 {
entry:
  %"$$fundef_20_env_nat_fold_203" = getelementptr inbounds %"$$fundef_20_env_86", %"$$fundef_20_env_86"* %0, i32 0, i32 0
  %"$nat_fold_envload_204" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_20_env_nat_fold_203", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_204", { i8*, i8* }** %nat_fold, align 8
  %"$retval_21" = alloca %Int32, align 8
  %"$gasrem_205" = load i64, i64* @_gasrem, align 8
  %"$gascmp_206" = icmp ugt i64 1, %"$gasrem_205"
  br i1 %"$gascmp_206", label %"$out_of_gas_207", label %"$have_gas_208"

"$out_of_gas_207":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_208"

"$have_gas_208":                                  ; preds = %"$out_of_gas_207", %entry
  %"$consume_209" = sub i64 %"$gasrem_205", 1
  store i64 %"$consume_209", i64* @_gasrem, align 8
  %iter_fun = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  %"$gasrem_210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_211" = icmp ugt i64 1, %"$gasrem_210"
  br i1 %"$gascmp_211", label %"$out_of_gas_212", label %"$have_gas_213"

"$out_of_gas_212":                                ; preds = %"$have_gas_208"
  call void @_out_of_gas()
  br label %"$have_gas_213"

"$have_gas_213":                                  ; preds = %"$out_of_gas_212", %"$have_gas_208"
  %"$consume_214" = sub i64 %"$gasrem_210", 1
  store i64 %"$consume_214", i64* @_gasrem, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)* bitcast ({ %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_22_env_85"*, %TName_Pair_Int32_Int32*)* @"$fundef_22" to { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*), i8* null }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %iter_fun, align 8, !dbg !16
  %"$gasrem_218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_219" = icmp ugt i64 1, %"$gasrem_218"
  br i1 %"$gascmp_219", label %"$out_of_gas_220", label %"$have_gas_221"

"$out_of_gas_220":                                ; preds = %"$have_gas_213"
  call void @_out_of_gas()
  br label %"$have_gas_221"

"$have_gas_221":                                  ; preds = %"$out_of_gas_220", %"$have_gas_213"
  %"$consume_222" = sub i64 %"$gasrem_218", 1
  store i64 %"$consume_222", i64* @_gasrem, align 8
  %"$zero_1" = alloca %Int32, align 8
  %"$gasrem_223" = load i64, i64* @_gasrem, align 8
  %"$gascmp_224" = icmp ugt i64 1, %"$gasrem_223"
  br i1 %"$gascmp_224", label %"$out_of_gas_225", label %"$have_gas_226"

"$out_of_gas_225":                                ; preds = %"$have_gas_221"
  call void @_out_of_gas()
  br label %"$have_gas_226"

"$have_gas_226":                                  ; preds = %"$out_of_gas_225", %"$have_gas_221"
  %"$consume_227" = sub i64 %"$gasrem_223", 1
  store i64 %"$consume_227", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %"$zero_1", align 4, !dbg !17
  %"$gasrem_228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_229" = icmp ugt i64 1, %"$gasrem_228"
  br i1 %"$gascmp_229", label %"$out_of_gas_230", label %"$have_gas_231"

"$out_of_gas_230":                                ; preds = %"$have_gas_226"
  call void @_out_of_gas()
  br label %"$have_gas_231"

"$have_gas_231":                                  ; preds = %"$out_of_gas_230", %"$have_gas_226"
  %"$consume_232" = sub i64 %"$gasrem_228", 1
  store i64 %"$consume_232", i64* @_gasrem, align 8
  %"$one_2" = alloca %Int32, align 8
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 1, %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$have_gas_231"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$have_gas_231"
  %"$consume_237" = sub i64 %"$gasrem_233", 1
  store i64 %"$consume_237", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %"$one_2", align 4, !dbg !18
  %"$gasrem_238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_239" = icmp ugt i64 1, %"$gasrem_238"
  br i1 %"$gascmp_239", label %"$out_of_gas_240", label %"$have_gas_241"

"$out_of_gas_240":                                ; preds = %"$have_gas_236"
  call void @_out_of_gas()
  br label %"$have_gas_241"

"$have_gas_241":                                  ; preds = %"$out_of_gas_240", %"$have_gas_236"
  %"$consume_242" = sub i64 %"$gasrem_238", 1
  store i64 %"$consume_242", i64* @_gasrem, align 8
  %init_val = alloca %TName_Pair_Int32_Int32*, align 8
  %"$gasrem_243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_244" = icmp ugt i64 1, %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %"$have_gas_241"
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %"$have_gas_241"
  %"$consume_247" = sub i64 %"$gasrem_243", 1
  store i64 %"$consume_247", i64* @_gasrem, align 8
  %"$$one_2_248" = load %Int32, %Int32* %"$one_2", align 4
  %"$$zero_1_249" = load %Int32, %Int32* %"$zero_1", align 4
  %"$adtval_250_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_250_salloc" = call i8* @_salloc(i8* %"$adtval_250_load", i64 9)
  %"$adtval_250" = bitcast i8* %"$adtval_250_salloc" to %CName_Pair_Int32_Int32*
  %"$adtgep_251" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_250", i32 0, i32 0
  store i8 0, i8* %"$adtgep_251", align 1
  %"$adtgep_252" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_250", i32 0, i32 1
  store %Int32 %"$$one_2_248", %Int32* %"$adtgep_252", align 4
  %"$adtgep_253" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_250", i32 0, i32 2
  store %Int32 %"$$zero_1_249", %Int32* %"$adtgep_253", align 4
  %"$adtptr_254" = bitcast %CName_Pair_Int32_Int32* %"$adtval_250" to %TName_Pair_Int32_Int32*
  store %TName_Pair_Int32_Int32* %"$adtptr_254", %TName_Pair_Int32_Int32** %init_val, align 8, !dbg !19
  %"$gasrem_255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_256" = icmp ugt i64 1, %"$gasrem_255"
  br i1 %"$gascmp_256", label %"$out_of_gas_257", label %"$have_gas_258"

"$out_of_gas_257":                                ; preds = %"$have_gas_246"
  call void @_out_of_gas()
  br label %"$have_gas_258"

"$have_gas_258":                                  ; preds = %"$out_of_gas_257", %"$have_gas_246"
  %"$consume_259" = sub i64 %"$gasrem_255", 1
  store i64 %"$consume_259", i64* @_gasrem, align 8
  %typed_folder = alloca { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }, align 8
  %"$gasrem_260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_261" = icmp ugt i64 1, %"$gasrem_260"
  br i1 %"$gascmp_261", label %"$out_of_gas_262", label %"$have_gas_263"

"$out_of_gas_262":                                ; preds = %"$have_gas_258"
  call void @_out_of_gas()
  br label %"$have_gas_263"

"$have_gas_263":                                  ; preds = %"$out_of_gas_262", %"$have_gas_258"
  %"$consume_264" = sub i64 %"$gasrem_260", 1
  store i64 %"$consume_264", i64* @_gasrem, align 8
  %"$nat_fold_265" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_266" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_265", i32 0
  %"$nat_fold_267" = bitcast { i8*, i8* }* %"$nat_fold_266" to { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_268" = load { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_267", align 8
  %"$nat_fold_fptr_269" = extractvalue { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_268", 0
  %"$nat_fold_envptr_270" = extractvalue { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_268", 1
  %"$nat_fold_call_271" = call { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$nat_fold_fptr_269"(i8* %"$nat_fold_envptr_270"), !dbg !20
  store { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$nat_fold_call_271", { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %typed_folder, align 8, !dbg !21
  %"$gasrem_272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_273" = icmp ugt i64 1, %"$gasrem_272"
  br i1 %"$gascmp_273", label %"$out_of_gas_274", label %"$have_gas_275"

"$out_of_gas_274":                                ; preds = %"$have_gas_263"
  call void @_out_of_gas()
  br label %"$have_gas_275"

"$have_gas_275":                                  ; preds = %"$out_of_gas_274", %"$have_gas_263"
  %"$consume_276" = sub i64 %"$gasrem_272", 1
  store i64 %"$consume_276", i64* @_gasrem, align 8
  %folder = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_278" = icmp ugt i64 1, %"$gasrem_277"
  br i1 %"$gascmp_278", label %"$out_of_gas_279", label %"$have_gas_280"

"$out_of_gas_279":                                ; preds = %"$have_gas_275"
  call void @_out_of_gas()
  br label %"$have_gas_280"

"$have_gas_280":                                  ; preds = %"$out_of_gas_279", %"$have_gas_275"
  %"$consume_281" = sub i64 %"$gasrem_277", 1
  store i64 %"$consume_281", i64* @_gasrem, align 8
  %"$typed_folder_7" = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  %"$typed_folder_282" = load { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }, { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %typed_folder, align 8
  %"$typed_folder_fptr_283" = extractvalue { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$typed_folder_282", 0
  %"$typed_folder_envptr_284" = extractvalue { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$typed_folder_282", 1
  %"$iter_fun_285" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %iter_fun, align 8
  %"$typed_folder_call_286" = call { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$typed_folder_fptr_283"(i8* %"$typed_folder_envptr_284", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$iter_fun_285"), !dbg !22
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$typed_folder_call_286", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$typed_folder_7", align 8, !dbg !22
  %"$typed_folder_8" = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$typed_folder_7_287" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$typed_folder_7", align 8
  %"$$typed_folder_7_fptr_288" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$typed_folder_7_287", 0
  %"$$typed_folder_7_envptr_289" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$typed_folder_7_287", 1
  %"$init_val_290" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %init_val, align 8
  %"$$typed_folder_7_call_291" = call { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$typed_folder_7_fptr_288"(i8* %"$$typed_folder_7_envptr_289", %TName_Pair_Int32_Int32* %"$init_val_290"), !dbg !22
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$typed_folder_7_call_291", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$typed_folder_8", align 8, !dbg !22
  %"$$typed_folder_8_292" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$typed_folder_8", align 8
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$typed_folder_8_292", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %folder, align 8, !dbg !22
  %"$gasrem_293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_294" = icmp ugt i64 1, %"$gasrem_293"
  br i1 %"$gascmp_294", label %"$out_of_gas_295", label %"$have_gas_296"

"$out_of_gas_295":                                ; preds = %"$have_gas_280"
  call void @_out_of_gas()
  br label %"$have_gas_296"

"$have_gas_296":                                  ; preds = %"$out_of_gas_295", %"$have_gas_280"
  %"$consume_297" = sub i64 %"$gasrem_293", 1
  store i64 %"$consume_297", i64* @_gasrem, align 8
  %res = alloca %TName_Pair_Int32_Int32*, align 8
  %"$gasrem_298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_299" = icmp ugt i64 1, %"$gasrem_298"
  br i1 %"$gascmp_299", label %"$out_of_gas_300", label %"$have_gas_301"

"$out_of_gas_300":                                ; preds = %"$have_gas_296"
  call void @_out_of_gas()
  br label %"$have_gas_301"

"$have_gas_301":                                  ; preds = %"$out_of_gas_300", %"$have_gas_296"
  %"$consume_302" = sub i64 %"$gasrem_298", 1
  store i64 %"$consume_302", i64* @_gasrem, align 8
  %"$folder_9" = alloca %TName_Pair_Int32_Int32*, align 8
  %"$folder_303" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %folder, align 8
  %"$folder_fptr_304" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$folder_303", 0
  %"$folder_envptr_305" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$folder_303", 1
  %"$folder_call_306" = call %TName_Pair_Int32_Int32* %"$folder_fptr_304"(i8* %"$folder_envptr_305", %TName_Nat* %1), !dbg !23
  store %TName_Pair_Int32_Int32* %"$folder_call_306", %TName_Pair_Int32_Int32** %"$folder_9", align 8, !dbg !23
  %"$$folder_9_307" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$folder_9", align 8
  store %TName_Pair_Int32_Int32* %"$$folder_9_307", %TName_Pair_Int32_Int32** %res, align 8, !dbg !23
  %"$gasrem_308" = load i64, i64* @_gasrem, align 8
  %"$gascmp_309" = icmp ugt i64 1, %"$gasrem_308"
  br i1 %"$gascmp_309", label %"$out_of_gas_310", label %"$have_gas_311"

"$out_of_gas_310":                                ; preds = %"$have_gas_301"
  call void @_out_of_gas()
  br label %"$have_gas_311"

"$have_gas_311":                                  ; preds = %"$out_of_gas_310", %"$have_gas_301"
  %"$consume_312" = sub i64 %"$gasrem_308", 1
  store i64 %"$consume_312", i64* @_gasrem, align 8
  %"$res_314" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %res, align 8
  %"$res_tag_315" = getelementptr inbounds %TName_Pair_Int32_Int32, %TName_Pair_Int32_Int32* %"$res_314", i32 0, i32 0
  %"$res_tag_316" = load i8, i8* %"$res_tag_315", align 1
  switch i8 %"$res_tag_316", label %"$empty_default_317" [
    i8 0, label %"$Pair_318"
  ], !dbg !24

"$Pair_318":                                      ; preds = %"$have_gas_311"
  %"$res_319" = bitcast %TName_Pair_Int32_Int32* %"$res_314" to %CName_Pair_Int32_Int32*
  %"$x_gep_320" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_319", i32 0, i32 1
  %"$x_load_321" = load %Int32, %Int32* %"$x_gep_320", align 4
  %x = alloca %Int32, align 8
  store %Int32 %"$x_load_321", %Int32* %x, align 4
  %"$y_gep_322" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_319", i32 0, i32 2
  %"$y_load_323" = load %Int32, %Int32* %"$y_gep_322", align 4
  %y = alloca %Int32, align 8
  store %Int32 %"$y_load_323", %Int32* %y, align 4
  %"$gasrem_324" = load i64, i64* @_gasrem, align 8
  %"$gascmp_325" = icmp ugt i64 1, %"$gasrem_324"
  br i1 %"$gascmp_325", label %"$out_of_gas_326", label %"$have_gas_327"

"$out_of_gas_326":                                ; preds = %"$Pair_318"
  call void @_out_of_gas()
  br label %"$have_gas_327"

"$have_gas_327":                                  ; preds = %"$out_of_gas_326", %"$Pair_318"
  %"$consume_328" = sub i64 %"$gasrem_324", 1
  store i64 %"$consume_328", i64* @_gasrem, align 8
  %"$x_329" = load %Int32, %Int32* %x, align 4
  store %Int32 %"$x_329", %Int32* %"$retval_21", align 4, !dbg !25
  br label %"$matchsucc_313"

"$empty_default_317":                             ; preds = %"$have_gas_311"
  br label %"$matchsucc_313"

"$matchsucc_313":                                 ; preds = %"$have_gas_327", %"$empty_default_317"
  %"$$retval_21_330" = load %Int32, %Int32* %"$retval_21", align 4
  ret %Int32 %"$$retval_21_330"
}

define internal %TName_Pair_Int32_Int32* @"$fundef_17"(%"$$fundef_17_env_87"* %0, %TName_Nat* %1) !dbg !28 {
entry:
  %"$$fundef_17_env_f0_138" = getelementptr inbounds %"$$fundef_17_env_87", %"$$fundef_17_env_87"* %0, i32 0, i32 0
  %"$f0_envload_139" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$$fundef_17_env_f0_138", align 8
  %f0 = alloca %TName_Pair_Int32_Int32*, align 8
  store %TName_Pair_Int32_Int32* %"$f0_envload_139", %TName_Pair_Int32_Int32** %f0, align 8
  %"$$fundef_17_env_fn_140" = getelementptr inbounds %"$$fundef_17_env_87", %"$$fundef_17_env_87"* %0, i32 0, i32 1
  %"$fn_envload_141" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_17_env_fn_140", align 8
  %fn = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_envload_141", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn, align 8
  %"$$fundef_17_env_g_142" = getelementptr inbounds %"$$fundef_17_env_87", %"$$fundef_17_env_87"* %0, i32 0, i32 2
  %"$g_envload_143" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_17_env_g_142", align 8
  %g = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_envload_143", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  %"$retval_18" = alloca %TName_Pair_Int32_Int32*, align 8
  %"$gasrem_144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_145" = icmp ugt i64 2, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %entry
  %"$consume_148" = sub i64 %"$gasrem_144", 2
  store i64 %"$consume_148", i64* @_gasrem, align 8
  %"$n_tag_150" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_151" = load i8, i8* %"$n_tag_150", align 1
  switch i8 %"$n_tag_151", label %"$empty_default_152" [
    i8 1, label %"$Succ_153"
    i8 0, label %"$Zero_194"
  ], !dbg !30

"$Succ_153":                                      ; preds = %"$have_gas_147"
  %"$n_154" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_155" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_154", i32 0, i32 1
  %"$n1_load_156" = load %TName_Nat*, %TName_Nat** %"$n1_gep_155", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_156", %TName_Nat** %n1, align 8
  %"$gasrem_157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_158" = icmp ugt i64 1, %"$gasrem_157"
  br i1 %"$gascmp_158", label %"$out_of_gas_159", label %"$have_gas_160"

"$out_of_gas_159":                                ; preds = %"$Succ_153"
  call void @_out_of_gas()
  br label %"$have_gas_160"

"$have_gas_160":                                  ; preds = %"$out_of_gas_159", %"$Succ_153"
  %"$consume_161" = sub i64 %"$gasrem_157", 1
  store i64 %"$consume_161", i64* @_gasrem, align 8
  %res = alloca %TName_Pair_Int32_Int32*, align 8
  %"$gasrem_162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_163" = icmp ugt i64 1, %"$gasrem_162"
  br i1 %"$gascmp_163", label %"$out_of_gas_164", label %"$have_gas_165"

"$out_of_gas_164":                                ; preds = %"$have_gas_160"
  call void @_out_of_gas()
  br label %"$have_gas_165"

"$have_gas_165":                                  ; preds = %"$out_of_gas_164", %"$have_gas_160"
  %"$consume_166" = sub i64 %"$gasrem_162", 1
  store i64 %"$consume_166", i64* @_gasrem, align 8
  %"$fn_3" = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_167" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn, align 8
  %"$fn_fptr_168" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_167", 0
  %"$fn_envptr_169" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_167", 1
  %"$f0_170" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %f0, align 8
  %"$fn_call_171" = call { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_168"(i8* %"$fn_envptr_169", %TName_Pair_Int32_Int32* %"$f0_170"), !dbg !31
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$fn_call_171", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$fn_3", align 8, !dbg !31
  %"$fn_4" = alloca %TName_Pair_Int32_Int32*, align 8
  %"$$fn_3_172" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$fn_3", align 8
  %"$$fn_3_fptr_173" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$fn_3_172", 0
  %"$$fn_3_envptr_174" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$fn_3_172", 1
  %"$n1_175" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_3_call_176" = call %TName_Pair_Int32_Int32* %"$$fn_3_fptr_173"(i8* %"$$fn_3_envptr_174", %TName_Nat* %"$n1_175"), !dbg !31
  store %TName_Pair_Int32_Int32* %"$$fn_3_call_176", %TName_Pair_Int32_Int32** %"$fn_4", align 8, !dbg !31
  %"$$fn_4_177" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$fn_4", align 8
  store %TName_Pair_Int32_Int32* %"$$fn_4_177", %TName_Pair_Int32_Int32** %res, align 8, !dbg !31
  %"$gasrem_178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_179" = icmp ugt i64 1, %"$gasrem_178"
  br i1 %"$gascmp_179", label %"$out_of_gas_180", label %"$have_gas_181"

"$out_of_gas_180":                                ; preds = %"$have_gas_165"
  call void @_out_of_gas()
  br label %"$have_gas_181"

"$have_gas_181":                                  ; preds = %"$out_of_gas_180", %"$have_gas_165"
  %"$consume_182" = sub i64 %"$gasrem_178", 1
  store i64 %"$consume_182", i64* @_gasrem, align 8
  %"$g_5" = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_183" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  %"$g_fptr_184" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_183", 0
  %"$g_envptr_185" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_183", 1
  %"$res_186" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %res, align 8
  %"$g_call_187" = call { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$g_fptr_184"(i8* %"$g_envptr_185", %TName_Pair_Int32_Int32* %"$res_186"), !dbg !34
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$g_call_187", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$g_5", align 8, !dbg !34
  %"$g_6" = alloca %TName_Pair_Int32_Int32*, align 8
  %"$$g_5_188" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$g_5", align 8
  %"$$g_5_fptr_189" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$g_5_188", 0
  %"$$g_5_envptr_190" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$g_5_188", 1
  %"$n1_191" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_5_call_192" = call %TName_Pair_Int32_Int32* %"$$g_5_fptr_189"(i8* %"$$g_5_envptr_190", %TName_Nat* %"$n1_191"), !dbg !34
  store %TName_Pair_Int32_Int32* %"$$g_5_call_192", %TName_Pair_Int32_Int32** %"$g_6", align 8, !dbg !34
  %"$$g_6_193" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$g_6", align 8
  store %TName_Pair_Int32_Int32* %"$$g_6_193", %TName_Pair_Int32_Int32** %"$retval_18", align 8, !dbg !34
  br label %"$matchsucc_149"

"$Zero_194":                                      ; preds = %"$have_gas_147"
  %"$n_195" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_197" = icmp ugt i64 1, %"$gasrem_196"
  br i1 %"$gascmp_197", label %"$out_of_gas_198", label %"$have_gas_199"

"$out_of_gas_198":                                ; preds = %"$Zero_194"
  call void @_out_of_gas()
  br label %"$have_gas_199"

"$have_gas_199":                                  ; preds = %"$out_of_gas_198", %"$Zero_194"
  %"$consume_200" = sub i64 %"$gasrem_196", 1
  store i64 %"$consume_200", i64* @_gasrem, align 8
  %"$f0_201" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %f0, align 8
  store %TName_Pair_Int32_Int32* %"$f0_201", %TName_Pair_Int32_Int32** %"$retval_18", align 8, !dbg !35
  br label %"$matchsucc_149"

"$empty_default_152":                             ; preds = %"$have_gas_147"
  br label %"$matchsucc_149"

"$matchsucc_149":                                 ; preds = %"$have_gas_199", %"$have_gas_181", %"$empty_default_152"
  %"$$retval_18_202" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$retval_18", align 8
  ret %TName_Pair_Int32_Int32* %"$$retval_18_202"
}

define internal { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } @"$fundef_15"(%"$$fundef_15_env_88"* %0, %TName_Pair_Int32_Int32* %1) !dbg !37 {
entry:
  %"$$fundef_15_env_fn_119" = getelementptr inbounds %"$$fundef_15_env_88", %"$$fundef_15_env_88"* %0, i32 0, i32 0
  %"$fn_envload_120" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_15_env_fn_119", align 8
  %fn = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_envload_120", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn, align 8
  %"$$fundef_15_env_g_121" = getelementptr inbounds %"$$fundef_15_env_88", %"$$fundef_15_env_88"* %0, i32 0, i32 1
  %"$g_envload_122" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_15_env_g_121", align 8
  %g = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_envload_122", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  %"$retval_16" = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 1, %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %entry
  %"$consume_127" = sub i64 %"$gasrem_123", 1
  store i64 %"$consume_127", i64* @_gasrem, align 8
  %"$$fundef_17_envp_128_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_17_envp_128_salloc" = call i8* @_salloc(i8* %"$$fundef_17_envp_128_load", i64 40)
  %"$$fundef_17_envp_128" = bitcast i8* %"$$fundef_17_envp_128_salloc" to %"$$fundef_17_env_87"*
  %"$$fundef_17_env_voidp_130" = bitcast %"$$fundef_17_env_87"* %"$$fundef_17_envp_128" to i8*
  %"$$fundef_17_cloval_131" = insertvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)* bitcast (%TName_Pair_Int32_Int32* (%"$$fundef_17_env_87"*, %TName_Nat*)* @"$fundef_17" to %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_17_env_voidp_130", 1
  %"$$fundef_17_env_f0_132" = getelementptr inbounds %"$$fundef_17_env_87", %"$$fundef_17_env_87"* %"$$fundef_17_envp_128", i32 0, i32 0
  store %TName_Pair_Int32_Int32* %1, %TName_Pair_Int32_Int32** %"$$fundef_17_env_f0_132", align 8
  %"$$fundef_17_env_fn_133" = getelementptr inbounds %"$$fundef_17_env_87", %"$$fundef_17_env_87"* %"$$fundef_17_envp_128", i32 0, i32 1
  %"$fn_134" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_134", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_17_env_fn_133", align 8
  %"$$fundef_17_env_g_135" = getelementptr inbounds %"$$fundef_17_env_87", %"$$fundef_17_env_87"* %"$$fundef_17_envp_128", i32 0, i32 2
  %"$g_136" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_136", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_17_env_g_135", align 8
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$fundef_17_cloval_131", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$retval_16", align 8, !dbg !38
  %"$$retval_16_137" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$retval_16", align 8
  ret { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$retval_16_137"
}

define internal { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } @"$fundef_13"(%"$$fundef_13_env_89"* %0, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %1) !dbg !39 {
entry:
  %"$retval_14" = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  %"$gasrem_100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_101" = icmp ugt i64 1, %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %entry
  %"$consume_104" = sub i64 %"$gasrem_100", 1
  store i64 %"$consume_104", i64* @_gasrem, align 8
  %"$gasrem_105" = load i64, i64* @_gasrem, align 8
  %"$gascmp_106" = icmp ugt i64 1, %"$gasrem_105"
  br i1 %"$gascmp_106", label %"$out_of_gas_107", label %"$have_gas_108"

"$out_of_gas_107":                                ; preds = %"$have_gas_103"
  call void @_out_of_gas()
  br label %"$have_gas_108"

"$have_gas_108":                                  ; preds = %"$out_of_gas_107", %"$have_gas_103"
  %"$consume_109" = sub i64 %"$gasrem_105", 1
  store i64 %"$consume_109", i64* @_gasrem, align 8
  %"$$fundef_15_envp_110_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_15_envp_110_salloc" = call i8* @_salloc(i8* %"$$fundef_15_envp_110_load", i64 32)
  %"$$fundef_15_envp_110" = bitcast i8* %"$$fundef_15_envp_110_salloc" to %"$$fundef_15_env_88"*
  %"$$fundef_15_env_voidp_112" = bitcast %"$$fundef_15_env_88"* %"$$fundef_15_envp_110" to i8*
  %"$$fundef_15_cloval_113" = insertvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)* bitcast ({ %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_15_env_88"*, %TName_Pair_Int32_Int32*)* @"$fundef_15" to { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*), i8* undef }, i8* %"$$fundef_15_env_voidp_112", 1
  %g = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$fundef_15_cloval_113", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8, !dbg !40
  %"$$fundef_15_env_fn_114" = getelementptr inbounds %"$$fundef_15_env_88", %"$$fundef_15_env_88"* %"$$fundef_15_envp_110", i32 0, i32 0
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %1, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_15_env_fn_114", align 8
  %"$$fundef_15_env_g_115" = getelementptr inbounds %"$$fundef_15_env_88", %"$$fundef_15_env_88"* %"$$fundef_15_envp_110", i32 0, i32 1
  %"$g_116" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_116", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_15_env_g_115", align 8
  %"$g_117" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_117", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$retval_14", align 8, !dbg !40
  %"$$retval_14_118" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$retval_14", align 8
  ret { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$retval_14_118"
}

define internal { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } @"$fundef_11"(%"$$fundef_11_env_90"* %0) !dbg !41 {
entry:
  %"$retval_12" = alloca { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }, align 8
  %"$gasrem_91" = load i64, i64* @_gasrem, align 8
  %"$gascmp_92" = icmp ugt i64 1, %"$gasrem_91"
  br i1 %"$gascmp_92", label %"$out_of_gas_93", label %"$have_gas_94"

"$out_of_gas_93":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_94"

"$have_gas_94":                                   ; preds = %"$out_of_gas_93", %entry
  %"$consume_95" = sub i64 %"$gasrem_91", 1
  store i64 %"$consume_95", i64* @_gasrem, align 8
  store { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })* bitcast ({ { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (%"$$fundef_13_env_89"*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })* @"$fundef_13" to { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*), i8* null }, { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %"$retval_12", align 8, !dbg !42
  %"$$retval_12_99" = load { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }, { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %"$retval_12", align 8
  ret { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$$retval_12_99"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() !dbg !43 {
entry:
  ret void
}

define internal %Int32 @_scilla_expr_fun(i8* %0) !dbg !45 {
entry:
  %"$gasrem_381" = load i64, i64* @_gasrem, align 8
  %"$gascmp_382" = icmp ugt i64 1, %"$gasrem_381"
  br i1 %"$gascmp_382", label %"$out_of_gas_383", label %"$have_gas_384"

"$out_of_gas_383":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_384"

"$have_gas_384":                                  ; preds = %"$out_of_gas_383", %entry
  %"$consume_385" = sub i64 %"$gasrem_381", 1
  store i64 %"$consume_385", i64* @_gasrem, align 8
  %"$dyndisp_table_389_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_389_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_389_salloc_load", i64 16)
  %"$dyndisp_table_389_salloc" = bitcast i8* %"$dyndisp_table_389_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_389" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_389_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_390" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_389", i32 0
  %"$dyndisp_pcast_391" = bitcast { i8*, i8* }* %"$dyndisp_gep_390" to { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (%"$$fundef_11_env_90"*)* @"$fundef_11" to { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_391", align 8
  store { i8*, i8* }* %"$dyndisp_table_389", { i8*, i8* }** @nat_fold, align 8, !dbg !46
  %"$expr_19" = alloca %Int32, align 8
  %"$gasrem_392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_393" = icmp ugt i64 1, %"$gasrem_392"
  br i1 %"$gascmp_393", label %"$out_of_gas_394", label %"$have_gas_395"

"$out_of_gas_394":                                ; preds = %"$have_gas_384"
  call void @_out_of_gas()
  br label %"$have_gas_395"

"$have_gas_395":                                  ; preds = %"$out_of_gas_394", %"$have_gas_384"
  %"$consume_396" = sub i64 %"$gasrem_392", 1
  store i64 %"$consume_396", i64* @_gasrem, align 8
  %zero = alloca %TName_Nat*, align 8
  %"$gasrem_397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_398" = icmp ugt i64 1, %"$gasrem_397"
  br i1 %"$gascmp_398", label %"$out_of_gas_399", label %"$have_gas_400"

"$out_of_gas_399":                                ; preds = %"$have_gas_395"
  call void @_out_of_gas()
  br label %"$have_gas_400"

"$have_gas_400":                                  ; preds = %"$out_of_gas_399", %"$have_gas_395"
  %"$consume_401" = sub i64 %"$gasrem_397", 1
  store i64 %"$consume_401", i64* @_gasrem, align 8
  %"$adtval_402_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_402_salloc" = call i8* @_salloc(i8* %"$adtval_402_load", i64 1)
  %"$adtval_402" = bitcast i8* %"$adtval_402_salloc" to %CName_Zero*
  %"$adtgep_403" = getelementptr inbounds %CName_Zero, %CName_Zero* %"$adtval_402", i32 0, i32 0
  store i8 0, i8* %"$adtgep_403", align 1
  %"$adtptr_404" = bitcast %CName_Zero* %"$adtval_402" to %TName_Nat*
  store %TName_Nat* %"$adtptr_404", %TName_Nat** %zero, align 8, !dbg !47
  %"$gasrem_405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_406" = icmp ugt i64 1, %"$gasrem_405"
  br i1 %"$gascmp_406", label %"$out_of_gas_407", label %"$have_gas_408"

"$out_of_gas_407":                                ; preds = %"$have_gas_400"
  call void @_out_of_gas()
  br label %"$have_gas_408"

"$have_gas_408":                                  ; preds = %"$out_of_gas_407", %"$have_gas_400"
  %"$consume_409" = sub i64 %"$gasrem_405", 1
  store i64 %"$consume_409", i64* @_gasrem, align 8
  %one = alloca %TName_Nat*, align 8
  %"$gasrem_410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_411" = icmp ugt i64 1, %"$gasrem_410"
  br i1 %"$gascmp_411", label %"$out_of_gas_412", label %"$have_gas_413"

"$out_of_gas_412":                                ; preds = %"$have_gas_408"
  call void @_out_of_gas()
  br label %"$have_gas_413"

"$have_gas_413":                                  ; preds = %"$out_of_gas_412", %"$have_gas_408"
  %"$consume_414" = sub i64 %"$gasrem_410", 1
  store i64 %"$consume_414", i64* @_gasrem, align 8
  %"$zero_415" = load %TName_Nat*, %TName_Nat** %zero, align 8
  %"$adtval_416_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_416_salloc" = call i8* @_salloc(i8* %"$adtval_416_load", i64 9)
  %"$adtval_416" = bitcast i8* %"$adtval_416_salloc" to %CName_Succ*
  %"$adtgep_417" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_416", i32 0, i32 0
  store i8 1, i8* %"$adtgep_417", align 1
  %"$adtgep_418" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_416", i32 0, i32 1
  store %TName_Nat* %"$zero_415", %TName_Nat** %"$adtgep_418", align 8
  %"$adtptr_419" = bitcast %CName_Succ* %"$adtval_416" to %TName_Nat*
  store %TName_Nat* %"$adtptr_419", %TName_Nat** %one, align 8, !dbg !48
  %"$gasrem_420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_421" = icmp ugt i64 1, %"$gasrem_420"
  br i1 %"$gascmp_421", label %"$out_of_gas_422", label %"$have_gas_423"

"$out_of_gas_422":                                ; preds = %"$have_gas_413"
  call void @_out_of_gas()
  br label %"$have_gas_423"

"$have_gas_423":                                  ; preds = %"$out_of_gas_422", %"$have_gas_413"
  %"$consume_424" = sub i64 %"$gasrem_420", 1
  store i64 %"$consume_424", i64* @_gasrem, align 8
  %two = alloca %TName_Nat*, align 8
  %"$gasrem_425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_426" = icmp ugt i64 1, %"$gasrem_425"
  br i1 %"$gascmp_426", label %"$out_of_gas_427", label %"$have_gas_428"

"$out_of_gas_427":                                ; preds = %"$have_gas_423"
  call void @_out_of_gas()
  br label %"$have_gas_428"

"$have_gas_428":                                  ; preds = %"$out_of_gas_427", %"$have_gas_423"
  %"$consume_429" = sub i64 %"$gasrem_425", 1
  store i64 %"$consume_429", i64* @_gasrem, align 8
  %"$one_430" = load %TName_Nat*, %TName_Nat** %one, align 8
  %"$adtval_431_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_431_salloc" = call i8* @_salloc(i8* %"$adtval_431_load", i64 9)
  %"$adtval_431" = bitcast i8* %"$adtval_431_salloc" to %CName_Succ*
  %"$adtgep_432" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_431", i32 0, i32 0
  store i8 1, i8* %"$adtgep_432", align 1
  %"$adtgep_433" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_431", i32 0, i32 1
  store %TName_Nat* %"$one_430", %TName_Nat** %"$adtgep_433", align 8
  %"$adtptr_434" = bitcast %CName_Succ* %"$adtval_431" to %TName_Nat*
  store %TName_Nat* %"$adtptr_434", %TName_Nat** %two, align 8, !dbg !49
  %"$gasrem_435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_436" = icmp ugt i64 1, %"$gasrem_435"
  br i1 %"$gascmp_436", label %"$out_of_gas_437", label %"$have_gas_438"

"$out_of_gas_437":                                ; preds = %"$have_gas_428"
  call void @_out_of_gas()
  br label %"$have_gas_438"

"$have_gas_438":                                  ; preds = %"$out_of_gas_437", %"$have_gas_428"
  %"$consume_439" = sub i64 %"$gasrem_435", 1
  store i64 %"$consume_439", i64* @_gasrem, align 8
  %three = alloca %TName_Nat*, align 8
  %"$gasrem_440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_441" = icmp ugt i64 1, %"$gasrem_440"
  br i1 %"$gascmp_441", label %"$out_of_gas_442", label %"$have_gas_443"

"$out_of_gas_442":                                ; preds = %"$have_gas_438"
  call void @_out_of_gas()
  br label %"$have_gas_443"

"$have_gas_443":                                  ; preds = %"$out_of_gas_442", %"$have_gas_438"
  %"$consume_444" = sub i64 %"$gasrem_440", 1
  store i64 %"$consume_444", i64* @_gasrem, align 8
  %"$two_445" = load %TName_Nat*, %TName_Nat** %two, align 8
  %"$adtval_446_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_446_salloc" = call i8* @_salloc(i8* %"$adtval_446_load", i64 9)
  %"$adtval_446" = bitcast i8* %"$adtval_446_salloc" to %CName_Succ*
  %"$adtgep_447" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_446", i32 0, i32 0
  store i8 1, i8* %"$adtgep_447", align 1
  %"$adtgep_448" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_446", i32 0, i32 1
  store %TName_Nat* %"$two_445", %TName_Nat** %"$adtgep_448", align 8
  %"$adtptr_449" = bitcast %CName_Succ* %"$adtval_446" to %TName_Nat*
  store %TName_Nat* %"$adtptr_449", %TName_Nat** %three, align 8, !dbg !50
  %"$gasrem_450" = load i64, i64* @_gasrem, align 8
  %"$gascmp_451" = icmp ugt i64 1, %"$gasrem_450"
  br i1 %"$gascmp_451", label %"$out_of_gas_452", label %"$have_gas_453"

"$out_of_gas_452":                                ; preds = %"$have_gas_443"
  call void @_out_of_gas()
  br label %"$have_gas_453"

"$have_gas_453":                                  ; preds = %"$out_of_gas_452", %"$have_gas_443"
  %"$consume_454" = sub i64 %"$gasrem_450", 1
  store i64 %"$consume_454", i64* @_gasrem, align 8
  %four = alloca %TName_Nat*, align 8
  %"$gasrem_455" = load i64, i64* @_gasrem, align 8
  %"$gascmp_456" = icmp ugt i64 1, %"$gasrem_455"
  br i1 %"$gascmp_456", label %"$out_of_gas_457", label %"$have_gas_458"

"$out_of_gas_457":                                ; preds = %"$have_gas_453"
  call void @_out_of_gas()
  br label %"$have_gas_458"

"$have_gas_458":                                  ; preds = %"$out_of_gas_457", %"$have_gas_453"
  %"$consume_459" = sub i64 %"$gasrem_455", 1
  store i64 %"$consume_459", i64* @_gasrem, align 8
  %"$three_460" = load %TName_Nat*, %TName_Nat** %three, align 8
  %"$adtval_461_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_461_salloc" = call i8* @_salloc(i8* %"$adtval_461_load", i64 9)
  %"$adtval_461" = bitcast i8* %"$adtval_461_salloc" to %CName_Succ*
  %"$adtgep_462" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_461", i32 0, i32 0
  store i8 1, i8* %"$adtgep_462", align 1
  %"$adtgep_463" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_461", i32 0, i32 1
  store %TName_Nat* %"$three_460", %TName_Nat** %"$adtgep_463", align 8
  %"$adtptr_464" = bitcast %CName_Succ* %"$adtval_461" to %TName_Nat*
  store %TName_Nat* %"$adtptr_464", %TName_Nat** %four, align 8, !dbg !51
  %"$gasrem_465" = load i64, i64* @_gasrem, align 8
  %"$gascmp_466" = icmp ugt i64 1, %"$gasrem_465"
  br i1 %"$gascmp_466", label %"$out_of_gas_467", label %"$have_gas_468"

"$out_of_gas_467":                                ; preds = %"$have_gas_458"
  call void @_out_of_gas()
  br label %"$have_gas_468"

"$have_gas_468":                                  ; preds = %"$out_of_gas_467", %"$have_gas_458"
  %"$consume_469" = sub i64 %"$gasrem_465", 1
  store i64 %"$consume_469", i64* @_gasrem, align 8
  %five = alloca %TName_Nat*, align 8
  %"$gasrem_470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_471" = icmp ugt i64 1, %"$gasrem_470"
  br i1 %"$gascmp_471", label %"$out_of_gas_472", label %"$have_gas_473"

"$out_of_gas_472":                                ; preds = %"$have_gas_468"
  call void @_out_of_gas()
  br label %"$have_gas_473"

"$have_gas_473":                                  ; preds = %"$out_of_gas_472", %"$have_gas_468"
  %"$consume_474" = sub i64 %"$gasrem_470", 1
  store i64 %"$consume_474", i64* @_gasrem, align 8
  %"$four_475" = load %TName_Nat*, %TName_Nat** %four, align 8
  %"$adtval_476_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_476_salloc" = call i8* @_salloc(i8* %"$adtval_476_load", i64 9)
  %"$adtval_476" = bitcast i8* %"$adtval_476_salloc" to %CName_Succ*
  %"$adtgep_477" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_476", i32 0, i32 0
  store i8 1, i8* %"$adtgep_477", align 1
  %"$adtgep_478" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_476", i32 0, i32 1
  store %TName_Nat* %"$four_475", %TName_Nat** %"$adtgep_478", align 8
  %"$adtptr_479" = bitcast %CName_Succ* %"$adtval_476" to %TName_Nat*
  store %TName_Nat* %"$adtptr_479", %TName_Nat** %five, align 8, !dbg !52
  %"$gasrem_480" = load i64, i64* @_gasrem, align 8
  %"$gascmp_481" = icmp ugt i64 1, %"$gasrem_480"
  br i1 %"$gascmp_481", label %"$out_of_gas_482", label %"$have_gas_483"

"$out_of_gas_482":                                ; preds = %"$have_gas_473"
  call void @_out_of_gas()
  br label %"$have_gas_483"

"$have_gas_483":                                  ; preds = %"$out_of_gas_482", %"$have_gas_473"
  %"$consume_484" = sub i64 %"$gasrem_480", 1
  store i64 %"$consume_484", i64* @_gasrem, align 8
  %six = alloca %TName_Nat*, align 8
  %"$gasrem_485" = load i64, i64* @_gasrem, align 8
  %"$gascmp_486" = icmp ugt i64 1, %"$gasrem_485"
  br i1 %"$gascmp_486", label %"$out_of_gas_487", label %"$have_gas_488"

"$out_of_gas_487":                                ; preds = %"$have_gas_483"
  call void @_out_of_gas()
  br label %"$have_gas_488"

"$have_gas_488":                                  ; preds = %"$out_of_gas_487", %"$have_gas_483"
  %"$consume_489" = sub i64 %"$gasrem_485", 1
  store i64 %"$consume_489", i64* @_gasrem, align 8
  %"$five_490" = load %TName_Nat*, %TName_Nat** %five, align 8
  %"$adtval_491_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_491_salloc" = call i8* @_salloc(i8* %"$adtval_491_load", i64 9)
  %"$adtval_491" = bitcast i8* %"$adtval_491_salloc" to %CName_Succ*
  %"$adtgep_492" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_491", i32 0, i32 0
  store i8 1, i8* %"$adtgep_492", align 1
  %"$adtgep_493" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_491", i32 0, i32 1
  store %TName_Nat* %"$five_490", %TName_Nat** %"$adtgep_493", align 8
  %"$adtptr_494" = bitcast %CName_Succ* %"$adtval_491" to %TName_Nat*
  store %TName_Nat* %"$adtptr_494", %TName_Nat** %six, align 8, !dbg !53
  %"$gasrem_495" = load i64, i64* @_gasrem, align 8
  %"$gascmp_496" = icmp ugt i64 1, %"$gasrem_495"
  br i1 %"$gascmp_496", label %"$out_of_gas_497", label %"$have_gas_498"

"$out_of_gas_497":                                ; preds = %"$have_gas_488"
  call void @_out_of_gas()
  br label %"$have_gas_498"

"$have_gas_498":                                  ; preds = %"$out_of_gas_497", %"$have_gas_488"
  %"$consume_499" = sub i64 %"$gasrem_495", 1
  store i64 %"$consume_499", i64* @_gasrem, align 8
  %seven = alloca %TName_Nat*, align 8
  %"$gasrem_500" = load i64, i64* @_gasrem, align 8
  %"$gascmp_501" = icmp ugt i64 1, %"$gasrem_500"
  br i1 %"$gascmp_501", label %"$out_of_gas_502", label %"$have_gas_503"

"$out_of_gas_502":                                ; preds = %"$have_gas_498"
  call void @_out_of_gas()
  br label %"$have_gas_503"

"$have_gas_503":                                  ; preds = %"$out_of_gas_502", %"$have_gas_498"
  %"$consume_504" = sub i64 %"$gasrem_500", 1
  store i64 %"$consume_504", i64* @_gasrem, align 8
  %"$six_505" = load %TName_Nat*, %TName_Nat** %six, align 8
  %"$adtval_506_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_506_salloc" = call i8* @_salloc(i8* %"$adtval_506_load", i64 9)
  %"$adtval_506" = bitcast i8* %"$adtval_506_salloc" to %CName_Succ*
  %"$adtgep_507" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_506", i32 0, i32 0
  store i8 1, i8* %"$adtgep_507", align 1
  %"$adtgep_508" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_506", i32 0, i32 1
  store %TName_Nat* %"$six_505", %TName_Nat** %"$adtgep_508", align 8
  %"$adtptr_509" = bitcast %CName_Succ* %"$adtval_506" to %TName_Nat*
  store %TName_Nat* %"$adtptr_509", %TName_Nat** %seven, align 8, !dbg !54
  %"$gasrem_510" = load i64, i64* @_gasrem, align 8
  %"$gascmp_511" = icmp ugt i64 1, %"$gasrem_510"
  br i1 %"$gascmp_511", label %"$out_of_gas_512", label %"$have_gas_513"

"$out_of_gas_512":                                ; preds = %"$have_gas_503"
  call void @_out_of_gas()
  br label %"$have_gas_513"

"$have_gas_513":                                  ; preds = %"$out_of_gas_512", %"$have_gas_503"
  %"$consume_514" = sub i64 %"$gasrem_510", 1
  store i64 %"$consume_514", i64* @_gasrem, align 8
  %fib = alloca { %Int32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_515" = load i64, i64* @_gasrem, align 8
  %"$gascmp_516" = icmp ugt i64 1, %"$gasrem_515"
  br i1 %"$gascmp_516", label %"$out_of_gas_517", label %"$have_gas_518"

"$out_of_gas_517":                                ; preds = %"$have_gas_513"
  call void @_out_of_gas()
  br label %"$have_gas_518"

"$have_gas_518":                                  ; preds = %"$out_of_gas_517", %"$have_gas_513"
  %"$consume_519" = sub i64 %"$gasrem_515", 1
  store i64 %"$consume_519", i64* @_gasrem, align 8
  %"$$fundef_20_envp_520_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_20_envp_520_salloc" = call i8* @_salloc(i8* %"$$fundef_20_envp_520_load", i64 8)
  %"$$fundef_20_envp_520" = bitcast i8* %"$$fundef_20_envp_520_salloc" to %"$$fundef_20_env_86"*
  %"$$fundef_20_env_voidp_522" = bitcast %"$$fundef_20_env_86"* %"$$fundef_20_envp_520" to i8*
  %"$$fundef_20_cloval_523" = insertvalue { %Int32 (i8*, %TName_Nat*)*, i8* } { %Int32 (i8*, %TName_Nat*)* bitcast (%Int32 (%"$$fundef_20_env_86"*, %TName_Nat*)* @"$fundef_20" to %Int32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_20_env_voidp_522", 1
  %"$$fundef_20_env_nat_fold_524" = getelementptr inbounds %"$$fundef_20_env_86", %"$$fundef_20_env_86"* %"$$fundef_20_envp_520", i32 0, i32 0
  %"$nat_fold_525" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_525", { i8*, i8* }** %"$$fundef_20_env_nat_fold_524", align 8
  store { %Int32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_20_cloval_523", { %Int32 (i8*, %TName_Nat*)*, i8* }* %fib, align 8, !dbg !55
  %"$gasrem_526" = load i64, i64* @_gasrem, align 8
  %"$gascmp_527" = icmp ugt i64 1, %"$gasrem_526"
  br i1 %"$gascmp_527", label %"$out_of_gas_528", label %"$have_gas_529"

"$out_of_gas_528":                                ; preds = %"$have_gas_518"
  call void @_out_of_gas()
  br label %"$have_gas_529"

"$have_gas_529":                                  ; preds = %"$out_of_gas_528", %"$have_gas_518"
  %"$consume_530" = sub i64 %"$gasrem_526", 1
  store i64 %"$consume_530", i64* @_gasrem, align 8
  %"$fib_10" = alloca %Int32, align 8
  %"$fib_531" = load { %Int32 (i8*, %TName_Nat*)*, i8* }, { %Int32 (i8*, %TName_Nat*)*, i8* }* %fib, align 8
  %"$fib_fptr_532" = extractvalue { %Int32 (i8*, %TName_Nat*)*, i8* } %"$fib_531", 0
  %"$fib_envptr_533" = extractvalue { %Int32 (i8*, %TName_Nat*)*, i8* } %"$fib_531", 1
  %"$seven_534" = load %TName_Nat*, %TName_Nat** %seven, align 8
  %"$fib_call_535" = call %Int32 %"$fib_fptr_532"(i8* %"$fib_envptr_533", %TName_Nat* %"$seven_534"), !dbg !56
  store %Int32 %"$fib_call_535", %Int32* %"$fib_10", align 4, !dbg !56
  %"$$fib_10_536" = load %Int32, %Int32* %"$fib_10", align 4
  store %Int32 %"$$fib_10_536", %Int32* %"$expr_19", align 4, !dbg !56
  %"$$expr_19_537" = load %Int32, %Int32* %"$expr_19", align 4
  ret %Int32 %"$$expr_19_537"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_538" = call %Int32 @_scilla_expr_fun(i8* null)
  %"$pval_539" = alloca %Int32, align 8
  %"$memvoidcast_540" = bitcast %Int32* %"$pval_539" to i8*
  store %Int32 %"$exprval_538", %Int32* %"$pval_539", align 4
  %"$execptr_load_541" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_541", %_TyDescrTy_Typ* @"$TyDescr_Int32_28", i8* %"$memvoidcast_540")
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
!28 = distinct !DISubprogram(name: "$fundef_17", linkageName: "$fundef_17", scope: !29, file: !29, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!29 = !DIFile(filename: "Prelude", directory: ".")
!30 = !DILocation(line: 1, column: 34, scope: !28)
!31 = !DILocation(line: 1, column: 71, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !29, line: 1, column: 50)
!33 = distinct !DILexicalBlock(scope: !28, file: !29, line: 1, column: 34)
!34 = !DILocation(line: 1, column: 86, scope: !32)
!35 = !DILocation(line: 1, column: 106, scope: !36)
!36 = distinct !DILexicalBlock(scope: !33, file: !29, line: 1, column: 98)
!37 = distinct !DISubprogram(name: "$fundef_15", linkageName: "$fundef_15", scope: !29, file: !29, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!38 = !DILocation(line: 1, column: 34, scope: !37)
!39 = distinct !DISubprogram(name: "$fundef_13", linkageName: "$fundef_13", scope: !29, file: !29, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!40 = !DILocation(line: 1, column: 18, scope: !39)
!41 = distinct !DISubprogram(name: "$fundef_11", linkageName: "$fundef_11", scope: !29, file: !29, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!42 = !DILocation(line: 1, column: 18, scope: !41)
!43 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !44, file: !44, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!44 = !DIFile(filename: ".", directory: ".")
!45 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !29, file: !29, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!46 = !DILocation(line: 1, column: 18, scope: !45)
!47 = !DILocation(line: 3, column: 12, scope: !45)
!48 = !DILocation(line: 4, column: 12, scope: !45)
!49 = !DILocation(line: 5, column: 12, scope: !45)
!50 = !DILocation(line: 6, column: 13, scope: !45)
!51 = !DILocation(line: 7, column: 12, scope: !45)
!52 = !DILocation(line: 8, column: 12, scope: !45)
!53 = !DILocation(line: 9, column: 11, scope: !45)
!54 = !DILocation(line: 10, column: 13, scope: !45)
!55 = !DILocation(line: 13, column: 3, scope: !45)
!56 = !DILocation(line: 32, column: 1, scope: !45)
