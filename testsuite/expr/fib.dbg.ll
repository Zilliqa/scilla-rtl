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
%"$TyDescrTy_ADTTyp_64" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_63"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_63" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_65"**, %"$TyDescrTy_ADTTyp_64"* }
%"$TyDescrTy_ADTTyp_Constr_65" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$ParamDescr_585" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_586" = type { %ParamDescrString, i32, %"$ParamDescr_585"* }
%TName_Pair_Int32_Int32 = type { i8, %CName_Pair_Int32_Int32* }
%CName_Pair_Int32_Int32 = type <{ i8, %Int32, %Int32 }>
%"$$fundef_30_env_92" = type { %TName_Pair_Int32_Int32* }
%TName_Nat = type { i8, %CName_Zero*, %CName_Succ* }
%CName_Zero = type <{ i8 }>
%CName_Succ = type <{ i8, %TName_Nat* }>
%"$$fundef_28_env_93" = type {}
%"$$fundef_26_env_94" = type { { i8*, i8* }* }
%"$$fundef_23_env_95" = type { %TName_Pair_Int32_Int32*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } }
%"$$fundef_21_env_96" = type { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } }
%"$$fundef_19_env_97" = type {}
%"$$fundef_17_env_98" = type {}

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
@"$TyDescr_ReplicateContr_Prim_59" = global %"$TyDescrTy_PrimTyp_32" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_60" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_ReplicateContr_Prim_59" to i8*) }
@"$TyDescr_Bystr_Prim_61" = global %"$TyDescrTy_PrimTyp_32" { i32 7, i32 0 }
@"$TyDescr_Bystr_62" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_32"* @"$TyDescr_Bystr_Prim_61" to i8*) }
@"$TyDescr_ADT_Nat_66" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_63"* @"$TyDescr_Nat_ADTTyp_Specl_80" to i8*) }
@"$TyDescr_ADT_Pair_Int32_Int32_67" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_63"* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_89" to i8*) }
@"$TyDescr_Nat_ADTTyp_71" = unnamed_addr constant %"$TyDescrTy_ADTTyp_64" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nat_82", i32 0, i32 0), i32 3 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_63"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_63"*], [1 x %"$TyDescrTy_ADTTyp_Specl_63"*]* @"$TyDescr_Nat_ADTTyp_m_specls_81", i32 0, i32 0) }
@"$TyDescr_Nat_Zero_Constr_m_args_72" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Zero_73" = unnamed_addr constant [4 x i8] c"Zero"
@"$TyDescr_Nat_Zero_ADTTyp_Constr_74" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_65" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Zero_73", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Zero_Constr_m_args_72", i32 0, i32 0) }
@"$TyDescr_Nat_Succ_Constr_m_args_75" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_66"]
@"$TyDescr_ADT_Succ_76" = unnamed_addr constant [4 x i8] c"Succ"
@"$TyDescr_Nat_Succ_ADTTyp_Constr_77" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_65" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Succ_76", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_Succ_Constr_m_args_75", i32 0, i32 0) }
@"$TyDescr_Nat_ADTTyp_Specl_m_constrs_78" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_65"*] [%"$TyDescrTy_ADTTyp_Constr_65"* @"$TyDescr_Nat_Zero_ADTTyp_Constr_74", %"$TyDescrTy_ADTTyp_Constr_65"* @"$TyDescr_Nat_Succ_ADTTyp_Constr_77"]
@"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_79" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Nat_ADTTyp_Specl_80" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_63" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Nat_ADTTyp_Specl_m_TArgs_79", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_65"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_65"*], [2 x %"$TyDescrTy_ADTTyp_Constr_65"*]* @"$TyDescr_Nat_ADTTyp_Specl_m_constrs_78", i32 0, i32 0), %"$TyDescrTy_ADTTyp_64"* @"$TyDescr_Nat_ADTTyp_71" }
@"$TyDescr_Nat_ADTTyp_m_specls_81" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_63"*] [%"$TyDescrTy_ADTTyp_Specl_63"* @"$TyDescr_Nat_ADTTyp_Specl_80"]
@"$TyDescr_ADT_Nat_82" = unnamed_addr constant [3 x i8] c"Nat"
@"$TyDescr_Pair_ADTTyp_83" = unnamed_addr constant %"$TyDescrTy_ADTTyp_64" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_91", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_63"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_63"*], [1 x %"$TyDescrTy_ADTTyp_Specl_63"*]* @"$TyDescr_Pair_ADTTyp_m_specls_90", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_Int32_Int32_Constr_m_args_84" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_34", %_TyDescrTy_Typ* @"$TyDescr_Int32_34"]
@"$TyDescr_ADT_Pair_85" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_Int32_Int32_ADTTyp_Constr_86" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_65" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_85", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_Int32_Int32_Constr_m_args_84", i32 0, i32 0) }
@"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_constrs_87" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_65"*] [%"$TyDescrTy_ADTTyp_Constr_65"* @"$TyDescr_Pair_Pair_Int32_Int32_ADTTyp_Constr_86"]
@"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_TArgs_88" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_34", %_TyDescrTy_Typ* @"$TyDescr_Int32_34"]
@"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_89" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_63" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_TArgs_88", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_65"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_65"*], [1 x %"$TyDescrTy_ADTTyp_Constr_65"*]* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_m_constrs_87", i32 0, i32 0), %"$TyDescrTy_ADTTyp_64"* @"$TyDescr_Pair_ADTTyp_83" }
@"$TyDescr_Pair_ADTTyp_m_specls_90" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_63"*] [%"$TyDescrTy_ADTTyp_Specl_63"* @"$TyDescr_Pair_Int32_Int32_ADTTyp_Specl_89"]
@"$TyDescr_ADT_Pair_91" = unnamed_addr constant [4 x i8] c"Pair"
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@nat_fold = global { i8*, i8* }* null
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_56", %_TyDescrTy_Typ* @"$TyDescr_Int64_38", %_TyDescrTy_Typ* @"$TyDescr_ADT_Nat_66", %_TyDescrTy_Typ* @"$TyDescr_Uint256_48", %_TyDescrTy_Typ* @"$TyDescr_Uint32_36", %_TyDescrTy_Typ* @"$TyDescr_Uint64_40", %_TyDescrTy_Typ* @"$TyDescr_Bnum_52", %_TyDescrTy_Typ* @"$TyDescr_Uint128_44", %_TyDescrTy_Typ* @"$TyDescr_Exception_58", %_TyDescrTy_Typ* @"$TyDescr_String_50", %_TyDescrTy_Typ* @"$TyDescr_Int256_46", %_TyDescrTy_Typ* @"$TyDescr_Int128_42", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_Int32_Int32_67", %_TyDescrTy_Typ* @"$TyDescr_Bystr_62", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_60", %_TyDescrTy_Typ* @"$TyDescr_Message_54", %_TyDescrTy_Typ* @"$TyDescr_Int32_34"]
@_tydescr_table_length = constant i32 17
@_contract_parameters = constant [0 x %"$ParamDescr_585"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_586"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Pair_Int32_Int32* @"$fundef_30"(%"$$fundef_30_env_92"* %0, %TName_Nat* %1) !dbg !3 {
entry:
  %"$$fundef_30_env_res_350" = getelementptr inbounds %"$$fundef_30_env_92", %"$$fundef_30_env_92"* %0, i32 0, i32 0
  %"$res_envload_351" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$$fundef_30_env_res_350", align 8
  %res = alloca %TName_Pair_Int32_Int32*, align 8
  store %TName_Pair_Int32_Int32* %"$res_envload_351", %TName_Pair_Int32_Int32** %res, align 8
  %"$retval_31" = alloca %TName_Pair_Int32_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Int32_Int32** %"$retval_31", metadata !8, metadata !DIExpression()), !dbg !11
  %"$gasrem_352" = load i64, i64* @_gasrem, align 8
  %"$gascmp_353" = icmp ugt i64 1, %"$gasrem_352"
  br i1 %"$gascmp_353", label %"$out_of_gas_354", label %"$have_gas_355"

"$out_of_gas_354":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_355"

"$have_gas_355":                                  ; preds = %"$out_of_gas_354", %entry
  %"$consume_356" = sub i64 %"$gasrem_352", 1
  store i64 %"$consume_356", i64* @_gasrem, align 8
  %"$res_358" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %res, align 8
  %"$res_tag_359" = getelementptr inbounds %TName_Pair_Int32_Int32, %TName_Pair_Int32_Int32* %"$res_358", i32 0, i32 0
  %"$res_tag_360" = load i8, i8* %"$res_tag_359", align 1
  switch i8 %"$res_tag_360", label %"$empty_default_361" [
    i8 0, label %"$Pair_362"
  ], !dbg !11

"$Pair_362":                                      ; preds = %"$have_gas_355"
  %"$res_363" = bitcast %TName_Pair_Int32_Int32* %"$res_358" to %CName_Pair_Int32_Int32*
  %"$x_gep_364" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_363", i32 0, i32 1
  %"$x_load_365" = load %Int32, %Int32* %"$x_gep_364", align 4
  %x = alloca %Int32, align 8
  store %Int32 %"$x_load_365", %Int32* %x, align 4
  %"$y_gep_366" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_363", i32 0, i32 2
  %"$y_load_367" = load %Int32, %Int32* %"$y_gep_366", align 4
  %y = alloca %Int32, align 8
  store %Int32 %"$y_load_367", %Int32* %y, align 4
  %"$gasrem_368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_369" = icmp ugt i64 1, %"$gasrem_368"
  br i1 %"$gascmp_369", label %"$out_of_gas_370", label %"$have_gas_371"

"$out_of_gas_370":                                ; preds = %"$Pair_362"
  call void @_out_of_gas()
  br label %"$have_gas_371"

"$have_gas_371":                                  ; preds = %"$out_of_gas_370", %"$Pair_362"
  %"$consume_372" = sub i64 %"$gasrem_368", 1
  store i64 %"$consume_372", i64* @_gasrem, align 8
  %z = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %z, metadata !12, metadata !DIExpression()), !dbg !16
  %"$gasrem_373" = load i64, i64* @_gasrem, align 8
  %"$gascmp_374" = icmp ugt i64 4, %"$gasrem_373"
  br i1 %"$gascmp_374", label %"$out_of_gas_375", label %"$have_gas_376"

"$out_of_gas_375":                                ; preds = %"$have_gas_371"
  call void @_out_of_gas()
  br label %"$have_gas_376"

"$have_gas_376":                                  ; preds = %"$out_of_gas_375", %"$have_gas_371"
  %"$consume_377" = sub i64 %"$gasrem_373", 4
  store i64 %"$consume_377", i64* @_gasrem, align 8
  %"$x_378" = load %Int32, %Int32* %x, align 4
  %"$y_379" = load %Int32, %Int32* %y, align 4
  %"$add_call_380" = call %Int32 @_add_Int32(%Int32 %"$x_378", %Int32 %"$y_379"), !dbg !17
  store %Int32 %"$add_call_380", %Int32* %z, align 4, !dbg !17
  %"$gasrem_381" = load i64, i64* @_gasrem, align 8
  %"$gascmp_382" = icmp ugt i64 1, %"$gasrem_381"
  br i1 %"$gascmp_382", label %"$out_of_gas_383", label %"$have_gas_384"

"$out_of_gas_383":                                ; preds = %"$have_gas_376"
  call void @_out_of_gas()
  br label %"$have_gas_384"

"$have_gas_384":                                  ; preds = %"$out_of_gas_383", %"$have_gas_376"
  %"$consume_385" = sub i64 %"$gasrem_381", 1
  store i64 %"$consume_385", i64* @_gasrem, align 8
  %"$z_386" = load %Int32, %Int32* %z, align 4
  %"$x_387" = load %Int32, %Int32* %x, align 4
  %"$adtval_388_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_388_salloc" = call i8* @_salloc(i8* %"$adtval_388_load", i64 9)
  %"$adtval_388" = bitcast i8* %"$adtval_388_salloc" to %CName_Pair_Int32_Int32*
  %"$adtgep_389" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_388", i32 0, i32 0
  store i8 0, i8* %"$adtgep_389", align 1
  %"$adtgep_390" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_388", i32 0, i32 1
  store %Int32 %"$z_386", %Int32* %"$adtgep_390", align 4
  %"$adtgep_391" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_388", i32 0, i32 2
  store %Int32 %"$x_387", %Int32* %"$adtgep_391", align 4
  %"$adtptr_392" = bitcast %CName_Pair_Int32_Int32* %"$adtval_388" to %TName_Pair_Int32_Int32*
  store %TName_Pair_Int32_Int32* %"$adtptr_392", %TName_Pair_Int32_Int32** %"$retval_31", align 8, !dbg !18
  br label %"$matchsucc_357"

"$empty_default_361":                             ; preds = %"$have_gas_355"
  br label %"$matchsucc_357"

"$matchsucc_357":                                 ; preds = %"$have_gas_384", %"$empty_default_361"
  %"$$retval_31_393" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$retval_31", align 8
  ret %TName_Pair_Int32_Int32* %"$$retval_31_393"
}

define internal { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } @"$fundef_28"(%"$$fundef_28_env_93"* %0, %TName_Pair_Int32_Int32* %1) !dbg !19 {
entry:
  %"$retval_29" = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_340" = icmp ugt i64 1, %"$gasrem_339"
  br i1 %"$gascmp_340", label %"$out_of_gas_341", label %"$have_gas_342"

"$out_of_gas_341":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_342"

"$have_gas_342":                                  ; preds = %"$out_of_gas_341", %entry
  %"$consume_343" = sub i64 %"$gasrem_339", 1
  store i64 %"$consume_343", i64* @_gasrem, align 8
  %"$$fundef_30_envp_344_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_30_envp_344_salloc" = call i8* @_salloc(i8* %"$$fundef_30_envp_344_load", i64 8)
  %"$$fundef_30_envp_344" = bitcast i8* %"$$fundef_30_envp_344_salloc" to %"$$fundef_30_env_92"*
  %"$$fundef_30_env_voidp_346" = bitcast %"$$fundef_30_env_92"* %"$$fundef_30_envp_344" to i8*
  %"$$fundef_30_cloval_347" = insertvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)* bitcast (%TName_Pair_Int32_Int32* (%"$$fundef_30_env_92"*, %TName_Nat*)* @"$fundef_30" to %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_30_env_voidp_346", 1
  %"$$fundef_30_env_res_348" = getelementptr inbounds %"$$fundef_30_env_92", %"$$fundef_30_env_92"* %"$$fundef_30_envp_344", i32 0, i32 0
  store %TName_Pair_Int32_Int32* %1, %TName_Pair_Int32_Int32** %"$$fundef_30_env_res_348", align 8
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$fundef_30_cloval_347", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$retval_29", align 8, !dbg !20
  %"$$retval_29_349" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$retval_29", align 8
  ret { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$retval_29_349"
}

define internal %Int32 @"$fundef_26"(%"$$fundef_26_env_94"* %0, %TName_Nat* %1) !dbg !21 {
entry:
  %"$$fundef_26_env_nat_fold_211" = getelementptr inbounds %"$$fundef_26_env_94", %"$$fundef_26_env_94"* %0, i32 0, i32 0
  %"$nat_fold_envload_212" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_26_env_nat_fold_211", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_212", { i8*, i8* }** %nat_fold, align 8
  %"$retval_27" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$retval_27", metadata !22, metadata !DIExpression()), !dbg !23
  %"$gasrem_213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_214" = icmp ugt i64 1, %"$gasrem_213"
  br i1 %"$gascmp_214", label %"$out_of_gas_215", label %"$have_gas_216"

"$out_of_gas_215":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_216"

"$have_gas_216":                                  ; preds = %"$out_of_gas_215", %entry
  %"$consume_217" = sub i64 %"$gasrem_213", 1
  store i64 %"$consume_217", i64* @_gasrem, align 8
  %iter_fun = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  %"$gasrem_218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_219" = icmp ugt i64 1, %"$gasrem_218"
  br i1 %"$gascmp_219", label %"$out_of_gas_220", label %"$have_gas_221"

"$out_of_gas_220":                                ; preds = %"$have_gas_216"
  call void @_out_of_gas()
  br label %"$have_gas_221"

"$have_gas_221":                                  ; preds = %"$out_of_gas_220", %"$have_gas_216"
  %"$consume_222" = sub i64 %"$gasrem_218", 1
  store i64 %"$consume_222", i64* @_gasrem, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)* bitcast ({ %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_28_env_93"*, %TName_Pair_Int32_Int32*)* @"$fundef_28" to { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*), i8* null }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %iter_fun, align 8, !dbg !24
  %"$gasrem_226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_227" = icmp ugt i64 1, %"$gasrem_226"
  br i1 %"$gascmp_227", label %"$out_of_gas_228", label %"$have_gas_229"

"$out_of_gas_228":                                ; preds = %"$have_gas_221"
  call void @_out_of_gas()
  br label %"$have_gas_229"

"$have_gas_229":                                  ; preds = %"$out_of_gas_228", %"$have_gas_221"
  %"$consume_230" = sub i64 %"$gasrem_226", 1
  store i64 %"$consume_230", i64* @_gasrem, align 8
  %"$zero_7" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$zero_7", metadata !25, metadata !DIExpression()), !dbg !26
  %"$gasrem_231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_232" = icmp ugt i64 1, %"$gasrem_231"
  br i1 %"$gascmp_232", label %"$out_of_gas_233", label %"$have_gas_234"

"$out_of_gas_233":                                ; preds = %"$have_gas_229"
  call void @_out_of_gas()
  br label %"$have_gas_234"

"$have_gas_234":                                  ; preds = %"$out_of_gas_233", %"$have_gas_229"
  %"$consume_235" = sub i64 %"$gasrem_231", 1
  store i64 %"$consume_235", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %"$zero_7", align 4, !dbg !27
  %"$gasrem_236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_237" = icmp ugt i64 1, %"$gasrem_236"
  br i1 %"$gascmp_237", label %"$out_of_gas_238", label %"$have_gas_239"

"$out_of_gas_238":                                ; preds = %"$have_gas_234"
  call void @_out_of_gas()
  br label %"$have_gas_239"

"$have_gas_239":                                  ; preds = %"$out_of_gas_238", %"$have_gas_234"
  %"$consume_240" = sub i64 %"$gasrem_236", 1
  store i64 %"$consume_240", i64* @_gasrem, align 8
  %"$one_8" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$one_8", metadata !28, metadata !DIExpression()), !dbg !29
  %"$gasrem_241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_242" = icmp ugt i64 1, %"$gasrem_241"
  br i1 %"$gascmp_242", label %"$out_of_gas_243", label %"$have_gas_244"

"$out_of_gas_243":                                ; preds = %"$have_gas_239"
  call void @_out_of_gas()
  br label %"$have_gas_244"

"$have_gas_244":                                  ; preds = %"$out_of_gas_243", %"$have_gas_239"
  %"$consume_245" = sub i64 %"$gasrem_241", 1
  store i64 %"$consume_245", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %"$one_8", align 4, !dbg !30
  %"$gasrem_246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_247" = icmp ugt i64 1, %"$gasrem_246"
  br i1 %"$gascmp_247", label %"$out_of_gas_248", label %"$have_gas_249"

"$out_of_gas_248":                                ; preds = %"$have_gas_244"
  call void @_out_of_gas()
  br label %"$have_gas_249"

"$have_gas_249":                                  ; preds = %"$out_of_gas_248", %"$have_gas_244"
  %"$consume_250" = sub i64 %"$gasrem_246", 1
  store i64 %"$consume_250", i64* @_gasrem, align 8
  %init_val = alloca %TName_Pair_Int32_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Int32_Int32** %init_val, metadata !31, metadata !DIExpression()), !dbg !32
  %"$gasrem_251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_252" = icmp ugt i64 1, %"$gasrem_251"
  br i1 %"$gascmp_252", label %"$out_of_gas_253", label %"$have_gas_254"

"$out_of_gas_253":                                ; preds = %"$have_gas_249"
  call void @_out_of_gas()
  br label %"$have_gas_254"

"$have_gas_254":                                  ; preds = %"$out_of_gas_253", %"$have_gas_249"
  %"$consume_255" = sub i64 %"$gasrem_251", 1
  store i64 %"$consume_255", i64* @_gasrem, align 8
  %"$$one_8_256" = load %Int32, %Int32* %"$one_8", align 4
  %"$$zero_7_257" = load %Int32, %Int32* %"$zero_7", align 4
  %"$adtval_258_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_258_salloc" = call i8* @_salloc(i8* %"$adtval_258_load", i64 9)
  %"$adtval_258" = bitcast i8* %"$adtval_258_salloc" to %CName_Pair_Int32_Int32*
  %"$adtgep_259" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_258", i32 0, i32 0
  store i8 0, i8* %"$adtgep_259", align 1
  %"$adtgep_260" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_258", i32 0, i32 1
  store %Int32 %"$$one_8_256", %Int32* %"$adtgep_260", align 4
  %"$adtgep_261" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_258", i32 0, i32 2
  store %Int32 %"$$zero_7_257", %Int32* %"$adtgep_261", align 4
  %"$adtptr_262" = bitcast %CName_Pair_Int32_Int32* %"$adtval_258" to %TName_Pair_Int32_Int32*
  store %TName_Pair_Int32_Int32* %"$adtptr_262", %TName_Pair_Int32_Int32** %init_val, align 8, !dbg !33
  %"$gasrem_263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_264" = icmp ugt i64 1, %"$gasrem_263"
  br i1 %"$gascmp_264", label %"$out_of_gas_265", label %"$have_gas_266"

"$out_of_gas_265":                                ; preds = %"$have_gas_254"
  call void @_out_of_gas()
  br label %"$have_gas_266"

"$have_gas_266":                                  ; preds = %"$out_of_gas_265", %"$have_gas_254"
  %"$consume_267" = sub i64 %"$gasrem_263", 1
  store i64 %"$consume_267", i64* @_gasrem, align 8
  %typed_folder = alloca { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }, align 8
  %"$gasrem_268" = load i64, i64* @_gasrem, align 8
  %"$gascmp_269" = icmp ugt i64 1, %"$gasrem_268"
  br i1 %"$gascmp_269", label %"$out_of_gas_270", label %"$have_gas_271"

"$out_of_gas_270":                                ; preds = %"$have_gas_266"
  call void @_out_of_gas()
  br label %"$have_gas_271"

"$have_gas_271":                                  ; preds = %"$out_of_gas_270", %"$have_gas_266"
  %"$consume_272" = sub i64 %"$gasrem_268", 1
  store i64 %"$consume_272", i64* @_gasrem, align 8
  %"$nat_fold_273" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_274" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_273", i32 0
  %"$nat_fold_275" = bitcast { i8*, i8* }* %"$nat_fold_274" to { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_276" = load { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_275", align 8
  %"$nat_fold_fptr_277" = extractvalue { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_276", 0
  %"$nat_fold_envptr_278" = extractvalue { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_276", 1
  %"$nat_fold_call_279" = call { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$nat_fold_fptr_277"(i8* %"$nat_fold_envptr_278"), !dbg !34
  store { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$nat_fold_call_279", { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %typed_folder, align 8, !dbg !35
  %"$gasrem_280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_281" = icmp ugt i64 1, %"$gasrem_280"
  br i1 %"$gascmp_281", label %"$out_of_gas_282", label %"$have_gas_283"

"$out_of_gas_282":                                ; preds = %"$have_gas_271"
  call void @_out_of_gas()
  br label %"$have_gas_283"

"$have_gas_283":                                  ; preds = %"$out_of_gas_282", %"$have_gas_271"
  %"$consume_284" = sub i64 %"$gasrem_280", 1
  store i64 %"$consume_284", i64* @_gasrem, align 8
  %folder = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_286" = icmp ugt i64 1, %"$gasrem_285"
  br i1 %"$gascmp_286", label %"$out_of_gas_287", label %"$have_gas_288"

"$out_of_gas_287":                                ; preds = %"$have_gas_283"
  call void @_out_of_gas()
  br label %"$have_gas_288"

"$have_gas_288":                                  ; preds = %"$out_of_gas_287", %"$have_gas_283"
  %"$consume_289" = sub i64 %"$gasrem_285", 1
  store i64 %"$consume_289", i64* @_gasrem, align 8
  %"$typed_folder_13" = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  %"$typed_folder_290" = load { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }, { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %typed_folder, align 8
  %"$typed_folder_fptr_291" = extractvalue { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$typed_folder_290", 0
  %"$typed_folder_envptr_292" = extractvalue { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$typed_folder_290", 1
  %"$iter_fun_293" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %iter_fun, align 8
  %"$typed_folder_call_294" = call { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$typed_folder_fptr_291"(i8* %"$typed_folder_envptr_292", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$iter_fun_293"), !dbg !36
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$typed_folder_call_294", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$typed_folder_13", align 8, !dbg !36
  %"$typed_folder_14" = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$typed_folder_13_295" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$typed_folder_13", align 8
  %"$$typed_folder_13_fptr_296" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$typed_folder_13_295", 0
  %"$$typed_folder_13_envptr_297" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$typed_folder_13_295", 1
  %"$init_val_298" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %init_val, align 8
  %"$$typed_folder_13_call_299" = call { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$typed_folder_13_fptr_296"(i8* %"$$typed_folder_13_envptr_297", %TName_Pair_Int32_Int32* %"$init_val_298"), !dbg !36
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$typed_folder_13_call_299", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$typed_folder_14", align 8, !dbg !36
  %"$$typed_folder_14_300" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$typed_folder_14", align 8
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$typed_folder_14_300", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %folder, align 8, !dbg !36
  %"$gasrem_301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_302" = icmp ugt i64 1, %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %"$have_gas_288"
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %"$have_gas_288"
  %"$consume_305" = sub i64 %"$gasrem_301", 1
  store i64 %"$consume_305", i64* @_gasrem, align 8
  %res = alloca %TName_Pair_Int32_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Int32_Int32** %res, metadata !37, metadata !DIExpression()), !dbg !38
  %"$gasrem_306" = load i64, i64* @_gasrem, align 8
  %"$gascmp_307" = icmp ugt i64 1, %"$gasrem_306"
  br i1 %"$gascmp_307", label %"$out_of_gas_308", label %"$have_gas_309"

"$out_of_gas_308":                                ; preds = %"$have_gas_304"
  call void @_out_of_gas()
  br label %"$have_gas_309"

"$have_gas_309":                                  ; preds = %"$out_of_gas_308", %"$have_gas_304"
  %"$consume_310" = sub i64 %"$gasrem_306", 1
  store i64 %"$consume_310", i64* @_gasrem, align 8
  %"$folder_15" = alloca %TName_Pair_Int32_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Int32_Int32** %"$folder_15", metadata !39, metadata !DIExpression()), !dbg !40
  %"$folder_311" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %folder, align 8
  %"$folder_fptr_312" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$folder_311", 0
  %"$folder_envptr_313" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$folder_311", 1
  %"$folder_call_314" = call %TName_Pair_Int32_Int32* %"$folder_fptr_312"(i8* %"$folder_envptr_313", %TName_Nat* %1), !dbg !40
  store %TName_Pair_Int32_Int32* %"$folder_call_314", %TName_Pair_Int32_Int32** %"$folder_15", align 8, !dbg !40
  %"$$folder_15_315" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$folder_15", align 8
  store %TName_Pair_Int32_Int32* %"$$folder_15_315", %TName_Pair_Int32_Int32** %res, align 8, !dbg !40
  %"$gasrem_316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_317" = icmp ugt i64 1, %"$gasrem_316"
  br i1 %"$gascmp_317", label %"$out_of_gas_318", label %"$have_gas_319"

"$out_of_gas_318":                                ; preds = %"$have_gas_309"
  call void @_out_of_gas()
  br label %"$have_gas_319"

"$have_gas_319":                                  ; preds = %"$out_of_gas_318", %"$have_gas_309"
  %"$consume_320" = sub i64 %"$gasrem_316", 1
  store i64 %"$consume_320", i64* @_gasrem, align 8
  %"$res_322" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %res, align 8
  %"$res_tag_323" = getelementptr inbounds %TName_Pair_Int32_Int32, %TName_Pair_Int32_Int32* %"$res_322", i32 0, i32 0
  %"$res_tag_324" = load i8, i8* %"$res_tag_323", align 1
  switch i8 %"$res_tag_324", label %"$empty_default_325" [
    i8 0, label %"$Pair_326"
  ], !dbg !41

"$Pair_326":                                      ; preds = %"$have_gas_319"
  %"$res_327" = bitcast %TName_Pair_Int32_Int32* %"$res_322" to %CName_Pair_Int32_Int32*
  %"$x_gep_328" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_327", i32 0, i32 1
  %"$x_load_329" = load %Int32, %Int32* %"$x_gep_328", align 4
  %x = alloca %Int32, align 8
  store %Int32 %"$x_load_329", %Int32* %x, align 4
  %"$y_gep_330" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_327", i32 0, i32 2
  %"$y_load_331" = load %Int32, %Int32* %"$y_gep_330", align 4
  %y = alloca %Int32, align 8
  store %Int32 %"$y_load_331", %Int32* %y, align 4
  %"$gasrem_332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_333" = icmp ugt i64 1, %"$gasrem_332"
  br i1 %"$gascmp_333", label %"$out_of_gas_334", label %"$have_gas_335"

"$out_of_gas_334":                                ; preds = %"$Pair_326"
  call void @_out_of_gas()
  br label %"$have_gas_335"

"$have_gas_335":                                  ; preds = %"$out_of_gas_334", %"$Pair_326"
  %"$consume_336" = sub i64 %"$gasrem_332", 1
  store i64 %"$consume_336", i64* @_gasrem, align 8
  %"$x_337" = load %Int32, %Int32* %x, align 4
  store %Int32 %"$x_337", %Int32* %"$retval_27", align 4, !dbg !42
  br label %"$matchsucc_321"

"$empty_default_325":                             ; preds = %"$have_gas_319"
  br label %"$matchsucc_321"

"$matchsucc_321":                                 ; preds = %"$have_gas_335", %"$empty_default_325"
  %"$$retval_27_338" = load %Int32, %Int32* %"$retval_27", align 4
  ret %Int32 %"$$retval_27_338"
}

define internal %TName_Pair_Int32_Int32* @"$fundef_23"(%"$$fundef_23_env_95"* %0, %TName_Nat* %1) !dbg !45 {
entry:
  %"$$fundef_23_env_f0_146" = getelementptr inbounds %"$$fundef_23_env_95", %"$$fundef_23_env_95"* %0, i32 0, i32 0
  %"$f0_envload_147" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$$fundef_23_env_f0_146", align 8
  %f0 = alloca %TName_Pair_Int32_Int32*, align 8
  store %TName_Pair_Int32_Int32* %"$f0_envload_147", %TName_Pair_Int32_Int32** %f0, align 8
  %"$$fundef_23_env_fn_148" = getelementptr inbounds %"$$fundef_23_env_95", %"$$fundef_23_env_95"* %0, i32 0, i32 1
  %"$fn_envload_149" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_23_env_fn_148", align 8
  %fn = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_envload_149", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn, align 8
  %"$$fundef_23_env_g_150" = getelementptr inbounds %"$$fundef_23_env_95", %"$$fundef_23_env_95"* %0, i32 0, i32 2
  %"$g_envload_151" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_23_env_g_150", align 8
  %g = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_envload_151", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  %"$retval_24" = alloca %TName_Pair_Int32_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Int32_Int32** %"$retval_24", metadata !47, metadata !DIExpression()), !dbg !48
  %"$gasrem_152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_153" = icmp ugt i64 2, %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %entry
  %"$consume_156" = sub i64 %"$gasrem_152", 2
  store i64 %"$consume_156", i64* @_gasrem, align 8
  %"$n_tag_158" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_159" = load i8, i8* %"$n_tag_158", align 1
  switch i8 %"$n_tag_159", label %"$empty_default_160" [
    i8 1, label %"$Succ_161"
    i8 0, label %"$Zero_202"
  ], !dbg !48

"$Succ_161":                                      ; preds = %"$have_gas_155"
  %"$n_162" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_163" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_162", i32 0, i32 1
  %"$n1_load_164" = load %TName_Nat*, %TName_Nat** %"$n1_gep_163", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_164", %TName_Nat** %n1, align 8
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 1, %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %"$Succ_161"
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %"$Succ_161"
  %"$consume_169" = sub i64 %"$gasrem_165", 1
  store i64 %"$consume_169", i64* @_gasrem, align 8
  %res = alloca %TName_Pair_Int32_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Int32_Int32** %res, metadata !49, metadata !DIExpression()), !dbg !52
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 1, %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %"$have_gas_168"
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %"$have_gas_168"
  %"$consume_174" = sub i64 %"$gasrem_170", 1
  store i64 %"$consume_174", i64* @_gasrem, align 8
  %"$fn_9" = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_175" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn, align 8
  %"$fn_fptr_176" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_175", 0
  %"$fn_envptr_177" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_175", 1
  %"$f0_178" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %f0, align 8
  %"$fn_call_179" = call { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_176"(i8* %"$fn_envptr_177", %TName_Pair_Int32_Int32* %"$f0_178"), !dbg !53
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$fn_call_179", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$fn_9", align 8, !dbg !53
  %"$fn_10" = alloca %TName_Pair_Int32_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Int32_Int32** %"$fn_10", metadata !54, metadata !DIExpression()), !dbg !53
  %"$$fn_9_180" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$fn_9", align 8
  %"$$fn_9_fptr_181" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$fn_9_180", 0
  %"$$fn_9_envptr_182" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$fn_9_180", 1
  %"$n1_183" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_9_call_184" = call %TName_Pair_Int32_Int32* %"$$fn_9_fptr_181"(i8* %"$$fn_9_envptr_182", %TName_Nat* %"$n1_183"), !dbg !53
  store %TName_Pair_Int32_Int32* %"$$fn_9_call_184", %TName_Pair_Int32_Int32** %"$fn_10", align 8, !dbg !53
  %"$$fn_10_185" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$fn_10", align 8
  store %TName_Pair_Int32_Int32* %"$$fn_10_185", %TName_Pair_Int32_Int32** %res, align 8, !dbg !53
  %"$gasrem_186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_187" = icmp ugt i64 1, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %"$have_gas_173"
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %"$have_gas_173"
  %"$consume_190" = sub i64 %"$gasrem_186", 1
  store i64 %"$consume_190", i64* @_gasrem, align 8
  %"$g_11" = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_191" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  %"$g_fptr_192" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_191", 0
  %"$g_envptr_193" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_191", 1
  %"$res_194" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %res, align 8
  %"$g_call_195" = call { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$g_fptr_192"(i8* %"$g_envptr_193", %TName_Pair_Int32_Int32* %"$res_194"), !dbg !55
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$g_call_195", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$g_11", align 8, !dbg !55
  %"$g_12" = alloca %TName_Pair_Int32_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Int32_Int32** %"$g_12", metadata !56, metadata !DIExpression()), !dbg !55
  %"$$g_11_196" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$g_11", align 8
  %"$$g_11_fptr_197" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$g_11_196", 0
  %"$$g_11_envptr_198" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$g_11_196", 1
  %"$n1_199" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_11_call_200" = call %TName_Pair_Int32_Int32* %"$$g_11_fptr_197"(i8* %"$$g_11_envptr_198", %TName_Nat* %"$n1_199"), !dbg !55
  store %TName_Pair_Int32_Int32* %"$$g_11_call_200", %TName_Pair_Int32_Int32** %"$g_12", align 8, !dbg !55
  %"$$g_12_201" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$g_12", align 8
  store %TName_Pair_Int32_Int32* %"$$g_12_201", %TName_Pair_Int32_Int32** %"$retval_24", align 8, !dbg !55
  br label %"$matchsucc_157"

"$Zero_202":                                      ; preds = %"$have_gas_155"
  %"$n_203" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_205" = icmp ugt i64 1, %"$gasrem_204"
  br i1 %"$gascmp_205", label %"$out_of_gas_206", label %"$have_gas_207"

"$out_of_gas_206":                                ; preds = %"$Zero_202"
  call void @_out_of_gas()
  br label %"$have_gas_207"

"$have_gas_207":                                  ; preds = %"$out_of_gas_206", %"$Zero_202"
  %"$consume_208" = sub i64 %"$gasrem_204", 1
  store i64 %"$consume_208", i64* @_gasrem, align 8
  %"$f0_209" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %f0, align 8
  store %TName_Pair_Int32_Int32* %"$f0_209", %TName_Pair_Int32_Int32** %"$retval_24", align 8, !dbg !57
  br label %"$matchsucc_157"

"$empty_default_160":                             ; preds = %"$have_gas_155"
  br label %"$matchsucc_157"

"$matchsucc_157":                                 ; preds = %"$have_gas_207", %"$have_gas_189", %"$empty_default_160"
  %"$$retval_24_210" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$retval_24", align 8
  ret %TName_Pair_Int32_Int32* %"$$retval_24_210"
}

define internal { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } @"$fundef_21"(%"$$fundef_21_env_96"* %0, %TName_Pair_Int32_Int32* %1) !dbg !59 {
entry:
  %"$$fundef_21_env_fn_122" = getelementptr inbounds %"$$fundef_21_env_96", %"$$fundef_21_env_96"* %0, i32 0, i32 0
  %"$fn_envload_123" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_21_env_fn_122", align 8
  %fn = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_envload_123", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn, align 8
  %"$$fundef_21_env_g_124" = getelementptr inbounds %"$$fundef_21_env_96", %"$$fundef_21_env_96"* %0, i32 0, i32 1
  %"$g_envload_125" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_21_env_g_124", align 8
  %g = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_envload_125", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  %"$retval_22" = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 1, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %entry
  %"$consume_130" = sub i64 %"$gasrem_126", 1
  store i64 %"$consume_130", i64* @_gasrem, align 8
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$have_gas_129"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$have_gas_129"
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem, align 8
  %"$$fundef_23_envp_136_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_23_envp_136_salloc" = call i8* @_salloc(i8* %"$$fundef_23_envp_136_load", i64 40)
  %"$$fundef_23_envp_136" = bitcast i8* %"$$fundef_23_envp_136_salloc" to %"$$fundef_23_env_95"*
  %"$$fundef_23_env_voidp_138" = bitcast %"$$fundef_23_env_95"* %"$$fundef_23_envp_136" to i8*
  %"$$fundef_23_cloval_139" = insertvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)* bitcast (%TName_Pair_Int32_Int32* (%"$$fundef_23_env_95"*, %TName_Nat*)* @"$fundef_23" to %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_23_env_voidp_138", 1
  %"$$fundef_23_env_f0_140" = getelementptr inbounds %"$$fundef_23_env_95", %"$$fundef_23_env_95"* %"$$fundef_23_envp_136", i32 0, i32 0
  store %TName_Pair_Int32_Int32* %1, %TName_Pair_Int32_Int32** %"$$fundef_23_env_f0_140", align 8
  %"$$fundef_23_env_fn_141" = getelementptr inbounds %"$$fundef_23_env_95", %"$$fundef_23_env_95"* %"$$fundef_23_envp_136", i32 0, i32 1
  %"$fn_142" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_142", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_23_env_fn_141", align 8
  %"$$fundef_23_env_g_143" = getelementptr inbounds %"$$fundef_23_env_95", %"$$fundef_23_env_95"* %"$$fundef_23_envp_136", i32 0, i32 2
  %"$g_144" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_144", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_23_env_g_143", align 8
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$fundef_23_cloval_139", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$retval_22", align 8, !dbg !60
  %"$$retval_22_145" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$retval_22", align 8
  ret { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$retval_22_145"
}

define internal { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } @"$fundef_19"(%"$$fundef_19_env_97"* %0, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %1) !dbg !61 {
entry:
  %"$retval_20" = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  %"$gasrem_108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_109" = icmp ugt i64 1, %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %entry
  %"$consume_112" = sub i64 %"$gasrem_108", 1
  store i64 %"$consume_112", i64* @_gasrem, align 8
  %"$$fundef_21_envp_113_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_21_envp_113_salloc" = call i8* @_salloc(i8* %"$$fundef_21_envp_113_load", i64 32)
  %"$$fundef_21_envp_113" = bitcast i8* %"$$fundef_21_envp_113_salloc" to %"$$fundef_21_env_96"*
  %"$$fundef_21_env_voidp_115" = bitcast %"$$fundef_21_env_96"* %"$$fundef_21_envp_113" to i8*
  %"$$fundef_21_cloval_116" = insertvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)* bitcast ({ %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_21_env_96"*, %TName_Pair_Int32_Int32*)* @"$fundef_21" to { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*), i8* undef }, i8* %"$$fundef_21_env_voidp_115", 1
  %g = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$fundef_21_cloval_116", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8, !dbg !62
  %"$$fundef_21_env_fn_117" = getelementptr inbounds %"$$fundef_21_env_96", %"$$fundef_21_env_96"* %"$$fundef_21_envp_113", i32 0, i32 0
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %1, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_21_env_fn_117", align 8
  %"$$fundef_21_env_g_118" = getelementptr inbounds %"$$fundef_21_env_96", %"$$fundef_21_env_96"* %"$$fundef_21_envp_113", i32 0, i32 1
  %"$g_119" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_119", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_21_env_g_118", align 8
  %"$g_120" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_120", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$retval_20", align 8, !dbg !62
  %"$$retval_20_121" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$retval_20", align 8
  ret { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$retval_20_121"
}

define internal { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } @"$fundef_17"(%"$$fundef_17_env_98"* %0) !dbg !63 {
entry:
  %"$retval_18" = alloca { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }, align 8
  %"$gasrem_99" = load i64, i64* @_gasrem, align 8
  %"$gascmp_100" = icmp ugt i64 1, %"$gasrem_99"
  br i1 %"$gascmp_100", label %"$out_of_gas_101", label %"$have_gas_102"

"$out_of_gas_101":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_102"

"$have_gas_102":                                  ; preds = %"$out_of_gas_101", %entry
  %"$consume_103" = sub i64 %"$gasrem_99", 1
  store i64 %"$consume_103", i64* @_gasrem, align 8
  store { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })* bitcast ({ { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (%"$$fundef_19_env_97"*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })* @"$fundef_19" to { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*), i8* null }, { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %"$retval_18", align 8, !dbg !64
  %"$$retval_18_107" = load { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }, { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %"$retval_18", align 8
  ret { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$$retval_18_107"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() !dbg !65 {
entry:
  %"$gasrem_394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_395" = icmp ugt i64 4, %"$gasrem_394"
  br i1 %"$gascmp_395", label %"$out_of_gas_396", label %"$have_gas_397"

"$out_of_gas_396":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_397"

"$have_gas_397":                                  ; preds = %"$out_of_gas_396", %entry
  %"$consume_398" = sub i64 %"$gasrem_394", 4
  store i64 %"$consume_398", i64* @_gasrem, align 8
  store %Int32 { i32 4 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !67
  %"$gasrem_399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_400" = icmp ugt i64 1, %"$gasrem_399"
  br i1 %"$gascmp_400", label %"$out_of_gas_401", label %"$have_gas_402"

"$out_of_gas_401":                                ; preds = %"$have_gas_397"
  call void @_out_of_gas()
  br label %"$have_gas_402"

"$have_gas_402":                                  ; preds = %"$out_of_gas_401", %"$have_gas_397"
  %"$consume_403" = sub i64 %"$gasrem_399", 1
  store i64 %"$consume_403", i64* @_gasrem, align 8
  %"$dyndisp_table_407_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_407_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_407_salloc_load", i64 16)
  %"$dyndisp_table_407_salloc" = bitcast i8* %"$dyndisp_table_407_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_407" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_407_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_408" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_407", i32 0
  %"$dyndisp_pcast_409" = bitcast { i8*, i8* }* %"$dyndisp_gep_408" to { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (%"$$fundef_17_env_98"*)* @"$fundef_17" to { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_409", align 8
  store { i8*, i8* }* %"$dyndisp_table_407", { i8*, i8* }** @nat_fold, align 8, !dbg !68
  %"$gasrem_410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_411" = icmp ugt i64 8, %"$gasrem_410"
  br i1 %"$gascmp_411", label %"$out_of_gas_412", label %"$have_gas_413"

"$out_of_gas_412":                                ; preds = %"$have_gas_402"
  call void @_out_of_gas()
  br label %"$have_gas_413"

"$have_gas_413":                                  ; preds = %"$out_of_gas_412", %"$have_gas_402"
  %"$consume_414" = sub i64 %"$gasrem_410", 8
  store i64 %"$consume_414", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !67
  %"$gasrem_415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_416" = icmp ugt i64 196, %"$gasrem_415"
  br i1 %"$gascmp_416", label %"$out_of_gas_417", label %"$have_gas_418"

"$out_of_gas_417":                                ; preds = %"$have_gas_413"
  call void @_out_of_gas()
  br label %"$have_gas_418"

"$have_gas_418":                                  ; preds = %"$out_of_gas_417", %"$have_gas_413"
  %"$consume_419" = sub i64 %"$gasrem_415", 196
  store i64 %"$consume_419", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !67
  %"$gasrem_420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_421" = icmp ugt i64 20, %"$gasrem_420"
  br i1 %"$gascmp_421", label %"$out_of_gas_422", label %"$have_gas_423"

"$out_of_gas_422":                                ; preds = %"$have_gas_418"
  call void @_out_of_gas()
  br label %"$have_gas_423"

"$have_gas_423":                                  ; preds = %"$out_of_gas_422", %"$have_gas_418"
  %"$consume_424" = sub i64 %"$gasrem_420", 20
  store i64 %"$consume_424", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !67
  %"$gasrem_425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_426" = icmp ugt i64 12, %"$gasrem_425"
  br i1 %"$gascmp_426", label %"$out_of_gas_427", label %"$have_gas_428"

"$out_of_gas_427":                                ; preds = %"$have_gas_423"
  call void @_out_of_gas()
  br label %"$have_gas_428"

"$have_gas_428":                                  ; preds = %"$out_of_gas_427", %"$have_gas_423"
  %"$consume_429" = sub i64 %"$gasrem_425", 12
  store i64 %"$consume_429", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !67
  %"$gasrem_430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_431" = icmp ugt i64 2, %"$gasrem_430"
  br i1 %"$gascmp_431", label %"$out_of_gas_432", label %"$have_gas_433"

"$out_of_gas_432":                                ; preds = %"$have_gas_428"
  call void @_out_of_gas()
  br label %"$have_gas_433"

"$have_gas_433":                                  ; preds = %"$out_of_gas_432", %"$have_gas_428"
  %"$consume_434" = sub i64 %"$gasrem_430", 2
  store i64 %"$consume_434", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !67
  ret void
}

define internal %Int32 @_scilla_expr_fun(i8* %0) !dbg !69 {
entry:
  %"$expr_25" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$expr_25", metadata !70, metadata !DIExpression()), !dbg !71
  %"$gasrem_435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_436" = icmp ugt i64 1, %"$gasrem_435"
  br i1 %"$gascmp_436", label %"$out_of_gas_437", label %"$have_gas_438"

"$out_of_gas_437":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_438"

"$have_gas_438":                                  ; preds = %"$out_of_gas_437", %entry
  %"$consume_439" = sub i64 %"$gasrem_435", 1
  store i64 %"$consume_439", i64* @_gasrem, align 8
  %zero = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %zero, metadata !72, metadata !DIExpression()), !dbg !75
  %"$gasrem_440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_441" = icmp ugt i64 1, %"$gasrem_440"
  br i1 %"$gascmp_441", label %"$out_of_gas_442", label %"$have_gas_443"

"$out_of_gas_442":                                ; preds = %"$have_gas_438"
  call void @_out_of_gas()
  br label %"$have_gas_443"

"$have_gas_443":                                  ; preds = %"$out_of_gas_442", %"$have_gas_438"
  %"$consume_444" = sub i64 %"$gasrem_440", 1
  store i64 %"$consume_444", i64* @_gasrem, align 8
  %"$adtval_445_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_445_salloc" = call i8* @_salloc(i8* %"$adtval_445_load", i64 1)
  %"$adtval_445" = bitcast i8* %"$adtval_445_salloc" to %CName_Zero*
  %"$adtgep_446" = getelementptr inbounds %CName_Zero, %CName_Zero* %"$adtval_445", i32 0, i32 0
  store i8 0, i8* %"$adtgep_446", align 1
  %"$adtptr_447" = bitcast %CName_Zero* %"$adtval_445" to %TName_Nat*
  store %TName_Nat* %"$adtptr_447", %TName_Nat** %zero, align 8, !dbg !71
  %"$gasrem_448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_449" = icmp ugt i64 1, %"$gasrem_448"
  br i1 %"$gascmp_449", label %"$out_of_gas_450", label %"$have_gas_451"

"$out_of_gas_450":                                ; preds = %"$have_gas_443"
  call void @_out_of_gas()
  br label %"$have_gas_451"

"$have_gas_451":                                  ; preds = %"$out_of_gas_450", %"$have_gas_443"
  %"$consume_452" = sub i64 %"$gasrem_448", 1
  store i64 %"$consume_452", i64* @_gasrem, align 8
  %one = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %one, metadata !76, metadata !DIExpression()), !dbg !77
  %"$gasrem_453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_454" = icmp ugt i64 1, %"$gasrem_453"
  br i1 %"$gascmp_454", label %"$out_of_gas_455", label %"$have_gas_456"

"$out_of_gas_455":                                ; preds = %"$have_gas_451"
  call void @_out_of_gas()
  br label %"$have_gas_456"

"$have_gas_456":                                  ; preds = %"$out_of_gas_455", %"$have_gas_451"
  %"$consume_457" = sub i64 %"$gasrem_453", 1
  store i64 %"$consume_457", i64* @_gasrem, align 8
  %"$zero_458" = load %TName_Nat*, %TName_Nat** %zero, align 8
  %"$adtval_459_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_459_salloc" = call i8* @_salloc(i8* %"$adtval_459_load", i64 9)
  %"$adtval_459" = bitcast i8* %"$adtval_459_salloc" to %CName_Succ*
  %"$adtgep_460" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_459", i32 0, i32 0
  store i8 1, i8* %"$adtgep_460", align 1
  %"$adtgep_461" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_459", i32 0, i32 1
  store %TName_Nat* %"$zero_458", %TName_Nat** %"$adtgep_461", align 8
  %"$adtptr_462" = bitcast %CName_Succ* %"$adtval_459" to %TName_Nat*
  store %TName_Nat* %"$adtptr_462", %TName_Nat** %one, align 8, !dbg !78
  %"$gasrem_463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_464" = icmp ugt i64 1, %"$gasrem_463"
  br i1 %"$gascmp_464", label %"$out_of_gas_465", label %"$have_gas_466"

"$out_of_gas_465":                                ; preds = %"$have_gas_456"
  call void @_out_of_gas()
  br label %"$have_gas_466"

"$have_gas_466":                                  ; preds = %"$out_of_gas_465", %"$have_gas_456"
  %"$consume_467" = sub i64 %"$gasrem_463", 1
  store i64 %"$consume_467", i64* @_gasrem, align 8
  %two = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %two, metadata !79, metadata !DIExpression()), !dbg !80
  %"$gasrem_468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_469" = icmp ugt i64 1, %"$gasrem_468"
  br i1 %"$gascmp_469", label %"$out_of_gas_470", label %"$have_gas_471"

"$out_of_gas_470":                                ; preds = %"$have_gas_466"
  call void @_out_of_gas()
  br label %"$have_gas_471"

"$have_gas_471":                                  ; preds = %"$out_of_gas_470", %"$have_gas_466"
  %"$consume_472" = sub i64 %"$gasrem_468", 1
  store i64 %"$consume_472", i64* @_gasrem, align 8
  %"$one_473" = load %TName_Nat*, %TName_Nat** %one, align 8
  %"$adtval_474_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_474_salloc" = call i8* @_salloc(i8* %"$adtval_474_load", i64 9)
  %"$adtval_474" = bitcast i8* %"$adtval_474_salloc" to %CName_Succ*
  %"$adtgep_475" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_474", i32 0, i32 0
  store i8 1, i8* %"$adtgep_475", align 1
  %"$adtgep_476" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_474", i32 0, i32 1
  store %TName_Nat* %"$one_473", %TName_Nat** %"$adtgep_476", align 8
  %"$adtptr_477" = bitcast %CName_Succ* %"$adtval_474" to %TName_Nat*
  store %TName_Nat* %"$adtptr_477", %TName_Nat** %two, align 8, !dbg !81
  %"$gasrem_478" = load i64, i64* @_gasrem, align 8
  %"$gascmp_479" = icmp ugt i64 1, %"$gasrem_478"
  br i1 %"$gascmp_479", label %"$out_of_gas_480", label %"$have_gas_481"

"$out_of_gas_480":                                ; preds = %"$have_gas_471"
  call void @_out_of_gas()
  br label %"$have_gas_481"

"$have_gas_481":                                  ; preds = %"$out_of_gas_480", %"$have_gas_471"
  %"$consume_482" = sub i64 %"$gasrem_478", 1
  store i64 %"$consume_482", i64* @_gasrem, align 8
  %three = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %three, metadata !82, metadata !DIExpression()), !dbg !83
  %"$gasrem_483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_484" = icmp ugt i64 1, %"$gasrem_483"
  br i1 %"$gascmp_484", label %"$out_of_gas_485", label %"$have_gas_486"

"$out_of_gas_485":                                ; preds = %"$have_gas_481"
  call void @_out_of_gas()
  br label %"$have_gas_486"

"$have_gas_486":                                  ; preds = %"$out_of_gas_485", %"$have_gas_481"
  %"$consume_487" = sub i64 %"$gasrem_483", 1
  store i64 %"$consume_487", i64* @_gasrem, align 8
  %"$two_488" = load %TName_Nat*, %TName_Nat** %two, align 8
  %"$adtval_489_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_489_salloc" = call i8* @_salloc(i8* %"$adtval_489_load", i64 9)
  %"$adtval_489" = bitcast i8* %"$adtval_489_salloc" to %CName_Succ*
  %"$adtgep_490" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_489", i32 0, i32 0
  store i8 1, i8* %"$adtgep_490", align 1
  %"$adtgep_491" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_489", i32 0, i32 1
  store %TName_Nat* %"$two_488", %TName_Nat** %"$adtgep_491", align 8
  %"$adtptr_492" = bitcast %CName_Succ* %"$adtval_489" to %TName_Nat*
  store %TName_Nat* %"$adtptr_492", %TName_Nat** %three, align 8, !dbg !84
  %"$gasrem_493" = load i64, i64* @_gasrem, align 8
  %"$gascmp_494" = icmp ugt i64 1, %"$gasrem_493"
  br i1 %"$gascmp_494", label %"$out_of_gas_495", label %"$have_gas_496"

"$out_of_gas_495":                                ; preds = %"$have_gas_486"
  call void @_out_of_gas()
  br label %"$have_gas_496"

"$have_gas_496":                                  ; preds = %"$out_of_gas_495", %"$have_gas_486"
  %"$consume_497" = sub i64 %"$gasrem_493", 1
  store i64 %"$consume_497", i64* @_gasrem, align 8
  %four = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %four, metadata !85, metadata !DIExpression()), !dbg !86
  %"$gasrem_498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_499" = icmp ugt i64 1, %"$gasrem_498"
  br i1 %"$gascmp_499", label %"$out_of_gas_500", label %"$have_gas_501"

"$out_of_gas_500":                                ; preds = %"$have_gas_496"
  call void @_out_of_gas()
  br label %"$have_gas_501"

"$have_gas_501":                                  ; preds = %"$out_of_gas_500", %"$have_gas_496"
  %"$consume_502" = sub i64 %"$gasrem_498", 1
  store i64 %"$consume_502", i64* @_gasrem, align 8
  %"$three_503" = load %TName_Nat*, %TName_Nat** %three, align 8
  %"$adtval_504_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_504_salloc" = call i8* @_salloc(i8* %"$adtval_504_load", i64 9)
  %"$adtval_504" = bitcast i8* %"$adtval_504_salloc" to %CName_Succ*
  %"$adtgep_505" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_504", i32 0, i32 0
  store i8 1, i8* %"$adtgep_505", align 1
  %"$adtgep_506" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_504", i32 0, i32 1
  store %TName_Nat* %"$three_503", %TName_Nat** %"$adtgep_506", align 8
  %"$adtptr_507" = bitcast %CName_Succ* %"$adtval_504" to %TName_Nat*
  store %TName_Nat* %"$adtptr_507", %TName_Nat** %four, align 8, !dbg !87
  %"$gasrem_508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_509" = icmp ugt i64 1, %"$gasrem_508"
  br i1 %"$gascmp_509", label %"$out_of_gas_510", label %"$have_gas_511"

"$out_of_gas_510":                                ; preds = %"$have_gas_501"
  call void @_out_of_gas()
  br label %"$have_gas_511"

"$have_gas_511":                                  ; preds = %"$out_of_gas_510", %"$have_gas_501"
  %"$consume_512" = sub i64 %"$gasrem_508", 1
  store i64 %"$consume_512", i64* @_gasrem, align 8
  %five = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %five, metadata !88, metadata !DIExpression()), !dbg !89
  %"$gasrem_513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_514" = icmp ugt i64 1, %"$gasrem_513"
  br i1 %"$gascmp_514", label %"$out_of_gas_515", label %"$have_gas_516"

"$out_of_gas_515":                                ; preds = %"$have_gas_511"
  call void @_out_of_gas()
  br label %"$have_gas_516"

"$have_gas_516":                                  ; preds = %"$out_of_gas_515", %"$have_gas_511"
  %"$consume_517" = sub i64 %"$gasrem_513", 1
  store i64 %"$consume_517", i64* @_gasrem, align 8
  %"$four_518" = load %TName_Nat*, %TName_Nat** %four, align 8
  %"$adtval_519_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_519_salloc" = call i8* @_salloc(i8* %"$adtval_519_load", i64 9)
  %"$adtval_519" = bitcast i8* %"$adtval_519_salloc" to %CName_Succ*
  %"$adtgep_520" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_519", i32 0, i32 0
  store i8 1, i8* %"$adtgep_520", align 1
  %"$adtgep_521" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_519", i32 0, i32 1
  store %TName_Nat* %"$four_518", %TName_Nat** %"$adtgep_521", align 8
  %"$adtptr_522" = bitcast %CName_Succ* %"$adtval_519" to %TName_Nat*
  store %TName_Nat* %"$adtptr_522", %TName_Nat** %five, align 8, !dbg !90
  %"$gasrem_523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_524" = icmp ugt i64 1, %"$gasrem_523"
  br i1 %"$gascmp_524", label %"$out_of_gas_525", label %"$have_gas_526"

"$out_of_gas_525":                                ; preds = %"$have_gas_516"
  call void @_out_of_gas()
  br label %"$have_gas_526"

"$have_gas_526":                                  ; preds = %"$out_of_gas_525", %"$have_gas_516"
  %"$consume_527" = sub i64 %"$gasrem_523", 1
  store i64 %"$consume_527", i64* @_gasrem, align 8
  %six = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %six, metadata !91, metadata !DIExpression()), !dbg !92
  %"$gasrem_528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_529" = icmp ugt i64 1, %"$gasrem_528"
  br i1 %"$gascmp_529", label %"$out_of_gas_530", label %"$have_gas_531"

"$out_of_gas_530":                                ; preds = %"$have_gas_526"
  call void @_out_of_gas()
  br label %"$have_gas_531"

"$have_gas_531":                                  ; preds = %"$out_of_gas_530", %"$have_gas_526"
  %"$consume_532" = sub i64 %"$gasrem_528", 1
  store i64 %"$consume_532", i64* @_gasrem, align 8
  %"$five_533" = load %TName_Nat*, %TName_Nat** %five, align 8
  %"$adtval_534_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_534_salloc" = call i8* @_salloc(i8* %"$adtval_534_load", i64 9)
  %"$adtval_534" = bitcast i8* %"$adtval_534_salloc" to %CName_Succ*
  %"$adtgep_535" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_534", i32 0, i32 0
  store i8 1, i8* %"$adtgep_535", align 1
  %"$adtgep_536" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_534", i32 0, i32 1
  store %TName_Nat* %"$five_533", %TName_Nat** %"$adtgep_536", align 8
  %"$adtptr_537" = bitcast %CName_Succ* %"$adtval_534" to %TName_Nat*
  store %TName_Nat* %"$adtptr_537", %TName_Nat** %six, align 8, !dbg !93
  %"$gasrem_538" = load i64, i64* @_gasrem, align 8
  %"$gascmp_539" = icmp ugt i64 1, %"$gasrem_538"
  br i1 %"$gascmp_539", label %"$out_of_gas_540", label %"$have_gas_541"

"$out_of_gas_540":                                ; preds = %"$have_gas_531"
  call void @_out_of_gas()
  br label %"$have_gas_541"

"$have_gas_541":                                  ; preds = %"$out_of_gas_540", %"$have_gas_531"
  %"$consume_542" = sub i64 %"$gasrem_538", 1
  store i64 %"$consume_542", i64* @_gasrem, align 8
  %seven = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %seven, metadata !94, metadata !DIExpression()), !dbg !95
  %"$gasrem_543" = load i64, i64* @_gasrem, align 8
  %"$gascmp_544" = icmp ugt i64 1, %"$gasrem_543"
  br i1 %"$gascmp_544", label %"$out_of_gas_545", label %"$have_gas_546"

"$out_of_gas_545":                                ; preds = %"$have_gas_541"
  call void @_out_of_gas()
  br label %"$have_gas_546"

"$have_gas_546":                                  ; preds = %"$out_of_gas_545", %"$have_gas_541"
  %"$consume_547" = sub i64 %"$gasrem_543", 1
  store i64 %"$consume_547", i64* @_gasrem, align 8
  %"$six_548" = load %TName_Nat*, %TName_Nat** %six, align 8
  %"$adtval_549_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_549_salloc" = call i8* @_salloc(i8* %"$adtval_549_load", i64 9)
  %"$adtval_549" = bitcast i8* %"$adtval_549_salloc" to %CName_Succ*
  %"$adtgep_550" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_549", i32 0, i32 0
  store i8 1, i8* %"$adtgep_550", align 1
  %"$adtgep_551" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_549", i32 0, i32 1
  store %TName_Nat* %"$six_548", %TName_Nat** %"$adtgep_551", align 8
  %"$adtptr_552" = bitcast %CName_Succ* %"$adtval_549" to %TName_Nat*
  store %TName_Nat* %"$adtptr_552", %TName_Nat** %seven, align 8, !dbg !96
  %"$gasrem_553" = load i64, i64* @_gasrem, align 8
  %"$gascmp_554" = icmp ugt i64 1, %"$gasrem_553"
  br i1 %"$gascmp_554", label %"$out_of_gas_555", label %"$have_gas_556"

"$out_of_gas_555":                                ; preds = %"$have_gas_546"
  call void @_out_of_gas()
  br label %"$have_gas_556"

"$have_gas_556":                                  ; preds = %"$out_of_gas_555", %"$have_gas_546"
  %"$consume_557" = sub i64 %"$gasrem_553", 1
  store i64 %"$consume_557", i64* @_gasrem, align 8
  %fib = alloca { %Int32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_558" = load i64, i64* @_gasrem, align 8
  %"$gascmp_559" = icmp ugt i64 1, %"$gasrem_558"
  br i1 %"$gascmp_559", label %"$out_of_gas_560", label %"$have_gas_561"

"$out_of_gas_560":                                ; preds = %"$have_gas_556"
  call void @_out_of_gas()
  br label %"$have_gas_561"

"$have_gas_561":                                  ; preds = %"$out_of_gas_560", %"$have_gas_556"
  %"$consume_562" = sub i64 %"$gasrem_558", 1
  store i64 %"$consume_562", i64* @_gasrem, align 8
  %"$$fundef_26_envp_563_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_26_envp_563_salloc" = call i8* @_salloc(i8* %"$$fundef_26_envp_563_load", i64 8)
  %"$$fundef_26_envp_563" = bitcast i8* %"$$fundef_26_envp_563_salloc" to %"$$fundef_26_env_94"*
  %"$$fundef_26_env_voidp_565" = bitcast %"$$fundef_26_env_94"* %"$$fundef_26_envp_563" to i8*
  %"$$fundef_26_cloval_566" = insertvalue { %Int32 (i8*, %TName_Nat*)*, i8* } { %Int32 (i8*, %TName_Nat*)* bitcast (%Int32 (%"$$fundef_26_env_94"*, %TName_Nat*)* @"$fundef_26" to %Int32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_26_env_voidp_565", 1
  %"$$fundef_26_env_nat_fold_567" = getelementptr inbounds %"$$fundef_26_env_94", %"$$fundef_26_env_94"* %"$$fundef_26_envp_563", i32 0, i32 0
  %"$nat_fold_568" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_568", { i8*, i8* }** %"$$fundef_26_env_nat_fold_567", align 8
  store { %Int32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_26_cloval_566", { %Int32 (i8*, %TName_Nat*)*, i8* }* %fib, align 8, !dbg !97
  %"$gasrem_569" = load i64, i64* @_gasrem, align 8
  %"$gascmp_570" = icmp ugt i64 1, %"$gasrem_569"
  br i1 %"$gascmp_570", label %"$out_of_gas_571", label %"$have_gas_572"

"$out_of_gas_571":                                ; preds = %"$have_gas_561"
  call void @_out_of_gas()
  br label %"$have_gas_572"

"$have_gas_572":                                  ; preds = %"$out_of_gas_571", %"$have_gas_561"
  %"$consume_573" = sub i64 %"$gasrem_569", 1
  store i64 %"$consume_573", i64* @_gasrem, align 8
  %"$fib_16" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$fib_16", metadata !98, metadata !DIExpression()), !dbg !99
  %"$fib_574" = load { %Int32 (i8*, %TName_Nat*)*, i8* }, { %Int32 (i8*, %TName_Nat*)*, i8* }* %fib, align 8
  %"$fib_fptr_575" = extractvalue { %Int32 (i8*, %TName_Nat*)*, i8* } %"$fib_574", 0
  %"$fib_envptr_576" = extractvalue { %Int32 (i8*, %TName_Nat*)*, i8* } %"$fib_574", 1
  %"$seven_577" = load %TName_Nat*, %TName_Nat** %seven, align 8
  %"$fib_call_578" = call %Int32 %"$fib_fptr_575"(i8* %"$fib_envptr_576", %TName_Nat* %"$seven_577"), !dbg !99
  store %Int32 %"$fib_call_578", %Int32* %"$fib_16", align 4, !dbg !99
  %"$$fib_16_579" = load %Int32, %Int32* %"$fib_16", align 4
  store %Int32 %"$$fib_16_579", %Int32* %"$expr_25", align 4, !dbg !99
  %"$$expr_25_580" = load %Int32, %Int32* %"$expr_25", align 4
  ret %Int32 %"$$expr_25_580"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_581" = call %Int32 @_scilla_expr_fun(i8* null)
  %"$pval_582" = alloca %Int32, align 8
  %"$memvoidcast_583" = bitcast %Int32* %"$pval_582" to i8*
  store %Int32 %"$exprval_581", %Int32* %"$pval_582", align 4
  %"$execptr_load_584" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_584", %_TyDescrTy_Typ* @"$TyDescr_Int32_34", i8* %"$memvoidcast_583")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "fib.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_30", linkageName: "$fundef_30", scope: !2, file: !2, line: 15, type: !4, scopeLine: 15, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!7 = !{}
!8 = !DILocalVariable(name: "$retval_31", scope: !3, file: !2, line: 15, type: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Pair (Int32) (Int32)", baseType: !10, size: 8, align: 8, dwarfAddressSpace: 0)
!10 = !DIBasicType(name: "Pair (Int32) (Int32)", size: 8)
!11 = !DILocation(line: 15, column: 7, scope: !3)
!12 = !DILocalVariable(name: "z", scope: !13, file: !2, line: 16, type: !15)
!13 = distinct !DILexicalBlock(scope: !14, file: !2, line: 16, column: 9)
!14 = distinct !DILexicalBlock(scope: !3, file: !2, line: 15, column: 7)
!15 = !DIBasicType(name: "Int32", size: 4)
!16 = !DILocation(line: 16, column: 25, scope: !13)
!17 = !DILocation(line: 16, column: 29, scope: !13)
!18 = !DILocation(line: 17, column: 7, scope: !13)
!19 = distinct !DISubprogram(name: "$fundef_28", linkageName: "$fundef_28", scope: !2, file: !2, line: 14, type: !4, scopeLine: 14, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!20 = !DILocation(line: 15, column: 7, scope: !19)
!21 = distinct !DISubprogram(name: "$fundef_26", linkageName: "$fundef_26", scope: !2, file: !2, line: 13, type: !4, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!22 = !DILocalVariable(name: "$retval_27", scope: !21, file: !2, line: 13, type: !15)
!23 = !DILocation(line: 13, column: 3, scope: !21)
!24 = !DILocation(line: 14, column: 37, scope: !21)
!25 = !DILocalVariable(name: "$zero_7", scope: !21, file: !2, line: 20, type: !15)
!26 = !DILocation(line: 20, column: 7, scope: !21)
!27 = !DILocation(line: 20, column: 14, scope: !21)
!28 = !DILocalVariable(name: "$one_8", scope: !21, file: !2, line: 21, type: !15)
!29 = !DILocation(line: 21, column: 7, scope: !21)
!30 = !DILocation(line: 21, column: 13, scope: !21)
!31 = !DILocalVariable(name: "init_val", scope: !21, file: !2, line: 22, type: !9)
!32 = !DILocation(line: 22, column: 7, scope: !21)
!33 = !DILocation(line: 22, column: 18, scope: !21)
!34 = !DILocation(line: 23, column: 23, scope: !21)
!35 = !DILocation(line: 23, column: 22, scope: !21)
!36 = !DILocation(line: 24, column: 15, scope: !21)
!37 = !DILocalVariable(name: "res", scope: !21, file: !2, line: 25, type: !9)
!38 = !DILocation(line: 25, column: 7, scope: !21)
!39 = !DILocalVariable(name: "$folder_15", scope: !21, file: !2, line: 25, type: !9)
!40 = !DILocation(line: 25, column: 13, scope: !21)
!41 = !DILocation(line: 26, column: 2, scope: !21)
!42 = !DILocation(line: 27, column: 16, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !2, line: 27, column: 4)
!44 = distinct !DILexicalBlock(scope: !21, file: !2, line: 26, column: 2)
!45 = distinct !DISubprogram(name: "$fundef_23", linkageName: "$fundef_23", scope: !46, file: !46, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!46 = !DIFile(filename: "Prelude", directory: ".")
!47 = !DILocalVariable(name: "$retval_24", scope: !45, file: !46, line: 1, type: !9)
!48 = !DILocation(line: 1, column: 34, scope: !45)
!49 = !DILocalVariable(name: "res", scope: !50, file: !46, line: 1, type: !9)
!50 = distinct !DILexicalBlock(scope: !51, file: !46, line: 1, column: 50)
!51 = distinct !DILexicalBlock(scope: !45, file: !46, line: 1, column: 34)
!52 = !DILocation(line: 1, column: 65, scope: !50)
!53 = !DILocation(line: 1, column: 71, scope: !50)
!54 = !DILocalVariable(name: "$fn_10", scope: !50, file: !46, line: 1, type: !9)
!55 = !DILocation(line: 1, column: 86, scope: !50)
!56 = !DILocalVariable(name: "$g_12", scope: !50, file: !46, line: 1, type: !9)
!57 = !DILocation(line: 1, column: 106, scope: !58)
!58 = distinct !DILexicalBlock(scope: !51, file: !46, line: 1, column: 98)
!59 = distinct !DISubprogram(name: "$fundef_21", linkageName: "$fundef_21", scope: !46, file: !46, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!60 = !DILocation(line: 1, column: 34, scope: !59)
!61 = distinct !DISubprogram(name: "$fundef_19", linkageName: "$fundef_19", scope: !46, file: !46, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!62 = !DILocation(line: 1, column: 18, scope: !61)
!63 = distinct !DISubprogram(name: "$fundef_17", linkageName: "$fundef_17", scope: !46, file: !46, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!64 = !DILocation(line: 1, column: 18, scope: !63)
!65 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !66, file: !66, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!66 = !DIFile(filename: ".", directory: ".")
!67 = !DILocation(line: 0, scope: !65)
!68 = !DILocation(line: 1, column: 18, scope: !65)
!69 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !7)
!70 = !DILocalVariable(name: "$expr_25", scope: !69, file: !2, line: 3, type: !15)
!71 = !DILocation(line: 3, column: 12, scope: !69)
!72 = !DILocalVariable(name: "zero", scope: !69, file: !2, line: 3, type: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Nat", baseType: !74, size: 8, align: 8, dwarfAddressSpace: 0)
!74 = !DIBasicType(name: "Nat", size: 8)
!75 = !DILocation(line: 3, column: 5, scope: !69)
!76 = !DILocalVariable(name: "one", scope: !69, file: !2, line: 4, type: !73)
!77 = !DILocation(line: 4, column: 5, scope: !69)
!78 = !DILocation(line: 4, column: 12, scope: !69)
!79 = !DILocalVariable(name: "two", scope: !69, file: !2, line: 5, type: !73)
!80 = !DILocation(line: 5, column: 5, scope: !69)
!81 = !DILocation(line: 5, column: 12, scope: !69)
!82 = !DILocalVariable(name: "three", scope: !69, file: !2, line: 6, type: !73)
!83 = !DILocation(line: 6, column: 5, scope: !69)
!84 = !DILocation(line: 6, column: 13, scope: !69)
!85 = !DILocalVariable(name: "four", scope: !69, file: !2, line: 7, type: !73)
!86 = !DILocation(line: 7, column: 5, scope: !69)
!87 = !DILocation(line: 7, column: 12, scope: !69)
!88 = !DILocalVariable(name: "five", scope: !69, file: !2, line: 8, type: !73)
!89 = !DILocation(line: 8, column: 5, scope: !69)
!90 = !DILocation(line: 8, column: 12, scope: !69)
!91 = !DILocalVariable(name: "six", scope: !69, file: !2, line: 9, type: !73)
!92 = !DILocation(line: 9, column: 5, scope: !69)
!93 = !DILocation(line: 9, column: 11, scope: !69)
!94 = !DILocalVariable(name: "seven", scope: !69, file: !2, line: 10, type: !73)
!95 = !DILocation(line: 10, column: 5, scope: !69)
!96 = !DILocation(line: 10, column: 13, scope: !69)
!97 = !DILocation(line: 13, column: 3, scope: !69)
!98 = !DILocalVariable(name: "$fib_16", scope: !69, file: !2, line: 32, type: !15)
!99 = !DILocation(line: 32, column: 1, scope: !69)
