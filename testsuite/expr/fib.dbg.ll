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
%"$ParamDescr_590" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_591" = type { %ParamDescrString, i32, %"$ParamDescr_590"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_590"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_591"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Pair_Int32_Int32* @"$fundef_30"(%"$$fundef_30_env_92"* %0, %TName_Nat* %1) !dbg !3 {
entry:
  %"$$n_6_398" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$$n_6_398", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$$n_6_398", metadata !8, metadata !DIExpression()), !dbg !11
  %"$$fundef_30_env_res_354" = getelementptr inbounds %"$$fundef_30_env_92", %"$$fundef_30_env_92"* %0, i32 0, i32 0
  %"$res_envload_355" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$$fundef_30_env_res_354", align 8
  %res = alloca %TName_Pair_Int32_Int32*, align 8
  store %TName_Pair_Int32_Int32* %"$res_envload_355", %TName_Pair_Int32_Int32** %res, align 8
  %"$retval_31" = alloca %TName_Pair_Int32_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Int32_Int32** %"$retval_31", metadata !12, metadata !DIExpression()), !dbg !15
  %"$gasrem_356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_357" = icmp ugt i64 1, %"$gasrem_356"
  br i1 %"$gascmp_357", label %"$out_of_gas_358", label %"$have_gas_359"

"$out_of_gas_358":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_359"

"$have_gas_359":                                  ; preds = %"$out_of_gas_358", %entry
  %"$consume_360" = sub i64 %"$gasrem_356", 1
  store i64 %"$consume_360", i64* @_gasrem, align 8
  %"$res_362" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %res, align 8
  %"$res_tag_363" = getelementptr inbounds %TName_Pair_Int32_Int32, %TName_Pair_Int32_Int32* %"$res_362", i32 0, i32 0
  %"$res_tag_364" = load i8, i8* %"$res_tag_363", align 1
  switch i8 %"$res_tag_364", label %"$empty_default_365" [
    i8 0, label %"$Pair_366"
  ], !dbg !15

"$Pair_366":                                      ; preds = %"$have_gas_359"
  %"$res_367" = bitcast %TName_Pair_Int32_Int32* %"$res_362" to %CName_Pair_Int32_Int32*
  %"$x_gep_368" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_367", i32 0, i32 1
  %"$x_load_369" = load %Int32, %Int32* %"$x_gep_368", align 4
  %x = alloca %Int32, align 8
  store %Int32 %"$x_load_369", %Int32* %x, align 4
  %"$y_gep_370" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_367", i32 0, i32 2
  %"$y_load_371" = load %Int32, %Int32* %"$y_gep_370", align 4
  %y = alloca %Int32, align 8
  store %Int32 %"$y_load_371", %Int32* %y, align 4
  %"$gasrem_372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_373" = icmp ugt i64 1, %"$gasrem_372"
  br i1 %"$gascmp_373", label %"$out_of_gas_374", label %"$have_gas_375"

"$out_of_gas_374":                                ; preds = %"$Pair_366"
  call void @_out_of_gas()
  br label %"$have_gas_375"

"$have_gas_375":                                  ; preds = %"$out_of_gas_374", %"$Pair_366"
  %"$consume_376" = sub i64 %"$gasrem_372", 1
  store i64 %"$consume_376", i64* @_gasrem, align 8
  %z = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %z, metadata !16, metadata !DIExpression()), !dbg !20
  %"$gasrem_377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_378" = icmp ugt i64 4, %"$gasrem_377"
  br i1 %"$gascmp_378", label %"$out_of_gas_379", label %"$have_gas_380"

"$out_of_gas_379":                                ; preds = %"$have_gas_375"
  call void @_out_of_gas()
  br label %"$have_gas_380"

"$have_gas_380":                                  ; preds = %"$out_of_gas_379", %"$have_gas_375"
  %"$consume_381" = sub i64 %"$gasrem_377", 4
  store i64 %"$consume_381", i64* @_gasrem, align 8
  %"$x_382" = load %Int32, %Int32* %x, align 4
  %"$y_383" = load %Int32, %Int32* %y, align 4
  %"$add_call_384" = call %Int32 @_add_Int32(%Int32 %"$x_382", %Int32 %"$y_383"), !dbg !21
  store %Int32 %"$add_call_384", %Int32* %z, align 4, !dbg !21
  %"$gasrem_385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_386" = icmp ugt i64 1, %"$gasrem_385"
  br i1 %"$gascmp_386", label %"$out_of_gas_387", label %"$have_gas_388"

"$out_of_gas_387":                                ; preds = %"$have_gas_380"
  call void @_out_of_gas()
  br label %"$have_gas_388"

"$have_gas_388":                                  ; preds = %"$out_of_gas_387", %"$have_gas_380"
  %"$consume_389" = sub i64 %"$gasrem_385", 1
  store i64 %"$consume_389", i64* @_gasrem, align 8
  %"$z_390" = load %Int32, %Int32* %z, align 4
  %"$x_391" = load %Int32, %Int32* %x, align 4
  %"$adtval_392_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_392_salloc" = call i8* @_salloc(i8* %"$adtval_392_load", i64 9)
  %"$adtval_392" = bitcast i8* %"$adtval_392_salloc" to %CName_Pair_Int32_Int32*
  %"$adtgep_393" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_392", i32 0, i32 0
  store i8 0, i8* %"$adtgep_393", align 1
  %"$adtgep_394" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_392", i32 0, i32 1
  store %Int32 %"$z_390", %Int32* %"$adtgep_394", align 4
  %"$adtgep_395" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_392", i32 0, i32 2
  store %Int32 %"$x_391", %Int32* %"$adtgep_395", align 4
  %"$adtptr_396" = bitcast %CName_Pair_Int32_Int32* %"$adtval_392" to %TName_Pair_Int32_Int32*
  store %TName_Pair_Int32_Int32* %"$adtptr_396", %TName_Pair_Int32_Int32** %"$retval_31", align 8, !dbg !22
  br label %"$matchsucc_361"

"$empty_default_365":                             ; preds = %"$have_gas_359"
  br label %"$matchsucc_361"

"$matchsucc_361":                                 ; preds = %"$have_gas_388", %"$empty_default_365"
  %"$$retval_31_397" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$retval_31", align 8
  ret %TName_Pair_Int32_Int32* %"$$retval_31_397"
}

define internal { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } @"$fundef_28"(%"$$fundef_28_env_93"* %0, %TName_Pair_Int32_Int32* %1) !dbg !23 {
entry:
  %"$res_353" = alloca %TName_Pair_Int32_Int32*, align 8
  store %TName_Pair_Int32_Int32* %1, %TName_Pair_Int32_Int32** %"$res_353", align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Int32_Int32** %"$res_353", metadata !24, metadata !DIExpression()), !dbg !25
  %"$retval_29" = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_343" = icmp ugt i64 1, %"$gasrem_342"
  br i1 %"$gascmp_343", label %"$out_of_gas_344", label %"$have_gas_345"

"$out_of_gas_344":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_345"

"$have_gas_345":                                  ; preds = %"$out_of_gas_344", %entry
  %"$consume_346" = sub i64 %"$gasrem_342", 1
  store i64 %"$consume_346", i64* @_gasrem, align 8
  %"$$fundef_30_envp_347_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_30_envp_347_salloc" = call i8* @_salloc(i8* %"$$fundef_30_envp_347_load", i64 8)
  %"$$fundef_30_envp_347" = bitcast i8* %"$$fundef_30_envp_347_salloc" to %"$$fundef_30_env_92"*
  %"$$fundef_30_env_voidp_349" = bitcast %"$$fundef_30_env_92"* %"$$fundef_30_envp_347" to i8*
  %"$$fundef_30_cloval_350" = insertvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)* bitcast (%TName_Pair_Int32_Int32* (%"$$fundef_30_env_92"*, %TName_Nat*)* @"$fundef_30" to %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_30_env_voidp_349", 1
  %"$$fundef_30_env_res_351" = getelementptr inbounds %"$$fundef_30_env_92", %"$$fundef_30_env_92"* %"$$fundef_30_envp_347", i32 0, i32 0
  store %TName_Pair_Int32_Int32* %1, %TName_Pair_Int32_Int32** %"$$fundef_30_env_res_351", align 8
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$fundef_30_cloval_350", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$retval_29", align 8, !dbg !26
  %"$$retval_29_352" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$retval_29", align 8
  ret { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$retval_29_352"
}

define internal %Int32 @"$fundef_26"(%"$$fundef_26_env_94"* %0, %TName_Nat* %1) !dbg !27 {
entry:
  %"$n_341" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$n_341", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$n_341", metadata !28, metadata !DIExpression()), !dbg !29
  %"$$fundef_26_env_nat_fold_213" = getelementptr inbounds %"$$fundef_26_env_94", %"$$fundef_26_env_94"* %0, i32 0, i32 0
  %"$nat_fold_envload_214" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_26_env_nat_fold_213", align 8
  %nat_fold = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$nat_fold_envload_214", { i8*, i8* }** %nat_fold, align 8
  %"$retval_27" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$retval_27", metadata !30, metadata !DIExpression()), !dbg !31
  %"$gasrem_215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_216" = icmp ugt i64 1, %"$gasrem_215"
  br i1 %"$gascmp_216", label %"$out_of_gas_217", label %"$have_gas_218"

"$out_of_gas_217":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_218"

"$have_gas_218":                                  ; preds = %"$out_of_gas_217", %entry
  %"$consume_219" = sub i64 %"$gasrem_215", 1
  store i64 %"$consume_219", i64* @_gasrem, align 8
  %iter_fun = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  %"$gasrem_220" = load i64, i64* @_gasrem, align 8
  %"$gascmp_221" = icmp ugt i64 1, %"$gasrem_220"
  br i1 %"$gascmp_221", label %"$out_of_gas_222", label %"$have_gas_223"

"$out_of_gas_222":                                ; preds = %"$have_gas_218"
  call void @_out_of_gas()
  br label %"$have_gas_223"

"$have_gas_223":                                  ; preds = %"$out_of_gas_222", %"$have_gas_218"
  %"$consume_224" = sub i64 %"$gasrem_220", 1
  store i64 %"$consume_224", i64* @_gasrem, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)* bitcast ({ %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (%"$$fundef_28_env_93"*, %TName_Pair_Int32_Int32*)* @"$fundef_28" to { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*), i8* null }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %iter_fun, align 8, !dbg !32
  %"$gasrem_228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_229" = icmp ugt i64 1, %"$gasrem_228"
  br i1 %"$gascmp_229", label %"$out_of_gas_230", label %"$have_gas_231"

"$out_of_gas_230":                                ; preds = %"$have_gas_223"
  call void @_out_of_gas()
  br label %"$have_gas_231"

"$have_gas_231":                                  ; preds = %"$out_of_gas_230", %"$have_gas_223"
  %"$consume_232" = sub i64 %"$gasrem_228", 1
  store i64 %"$consume_232", i64* @_gasrem, align 8
  %"$zero_7" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$zero_7", metadata !33, metadata !DIExpression()), !dbg !34
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 1, %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$have_gas_231"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$have_gas_231"
  %"$consume_237" = sub i64 %"$gasrem_233", 1
  store i64 %"$consume_237", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %"$zero_7", align 4, !dbg !35
  %"$gasrem_238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_239" = icmp ugt i64 1, %"$gasrem_238"
  br i1 %"$gascmp_239", label %"$out_of_gas_240", label %"$have_gas_241"

"$out_of_gas_240":                                ; preds = %"$have_gas_236"
  call void @_out_of_gas()
  br label %"$have_gas_241"

"$have_gas_241":                                  ; preds = %"$out_of_gas_240", %"$have_gas_236"
  %"$consume_242" = sub i64 %"$gasrem_238", 1
  store i64 %"$consume_242", i64* @_gasrem, align 8
  %"$one_8" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$one_8", metadata !36, metadata !DIExpression()), !dbg !37
  %"$gasrem_243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_244" = icmp ugt i64 1, %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %"$have_gas_241"
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %"$have_gas_241"
  %"$consume_247" = sub i64 %"$gasrem_243", 1
  store i64 %"$consume_247", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %"$one_8", align 4, !dbg !38
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 1, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %"$have_gas_246"
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %"$have_gas_246"
  %"$consume_252" = sub i64 %"$gasrem_248", 1
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %init_val = alloca %TName_Pair_Int32_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Int32_Int32** %init_val, metadata !39, metadata !DIExpression()), !dbg !40
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 1, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$have_gas_251"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$have_gas_251"
  %"$consume_257" = sub i64 %"$gasrem_253", 1
  store i64 %"$consume_257", i64* @_gasrem, align 8
  %"$$one_8_258" = load %Int32, %Int32* %"$one_8", align 4
  %"$$zero_7_259" = load %Int32, %Int32* %"$zero_7", align 4
  %"$adtval_260_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_260_salloc" = call i8* @_salloc(i8* %"$adtval_260_load", i64 9)
  %"$adtval_260" = bitcast i8* %"$adtval_260_salloc" to %CName_Pair_Int32_Int32*
  %"$adtgep_261" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_260", i32 0, i32 0
  store i8 0, i8* %"$adtgep_261", align 1
  %"$adtgep_262" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_260", i32 0, i32 1
  store %Int32 %"$$one_8_258", %Int32* %"$adtgep_262", align 4
  %"$adtgep_263" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$adtval_260", i32 0, i32 2
  store %Int32 %"$$zero_7_259", %Int32* %"$adtgep_263", align 4
  %"$adtptr_264" = bitcast %CName_Pair_Int32_Int32* %"$adtval_260" to %TName_Pair_Int32_Int32*
  store %TName_Pair_Int32_Int32* %"$adtptr_264", %TName_Pair_Int32_Int32** %init_val, align 8, !dbg !41
  %"$gasrem_265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_266" = icmp ugt i64 1, %"$gasrem_265"
  br i1 %"$gascmp_266", label %"$out_of_gas_267", label %"$have_gas_268"

"$out_of_gas_267":                                ; preds = %"$have_gas_256"
  call void @_out_of_gas()
  br label %"$have_gas_268"

"$have_gas_268":                                  ; preds = %"$out_of_gas_267", %"$have_gas_256"
  %"$consume_269" = sub i64 %"$gasrem_265", 1
  store i64 %"$consume_269", i64* @_gasrem, align 8
  %typed_folder = alloca { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }, align 8
  %"$gasrem_270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_271" = icmp ugt i64 1, %"$gasrem_270"
  br i1 %"$gascmp_271", label %"$out_of_gas_272", label %"$have_gas_273"

"$out_of_gas_272":                                ; preds = %"$have_gas_268"
  call void @_out_of_gas()
  br label %"$have_gas_273"

"$have_gas_273":                                  ; preds = %"$out_of_gas_272", %"$have_gas_268"
  %"$consume_274" = sub i64 %"$gasrem_270", 1
  store i64 %"$consume_274", i64* @_gasrem, align 8
  %"$nat_fold_275" = load { i8*, i8* }*, { i8*, i8* }** %nat_fold, align 8
  %"$nat_fold_276" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$nat_fold_275", i32 0
  %"$nat_fold_277" = bitcast { i8*, i8* }* %"$nat_fold_276" to { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$nat_fold_278" = load { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }* %"$nat_fold_277", align 8
  %"$nat_fold_fptr_279" = extractvalue { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_278", 0
  %"$nat_fold_envptr_280" = extractvalue { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* } %"$nat_fold_278", 1
  %"$nat_fold_call_281" = call { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$nat_fold_fptr_279"(i8* %"$nat_fold_envptr_280"), !dbg !42
  store { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$nat_fold_call_281", { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %typed_folder, align 8, !dbg !43
  %"$gasrem_282" = load i64, i64* @_gasrem, align 8
  %"$gascmp_283" = icmp ugt i64 1, %"$gasrem_282"
  br i1 %"$gascmp_283", label %"$out_of_gas_284", label %"$have_gas_285"

"$out_of_gas_284":                                ; preds = %"$have_gas_273"
  call void @_out_of_gas()
  br label %"$have_gas_285"

"$have_gas_285":                                  ; preds = %"$out_of_gas_284", %"$have_gas_273"
  %"$consume_286" = sub i64 %"$gasrem_282", 1
  store i64 %"$consume_286", i64* @_gasrem, align 8
  %folder = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_287" = load i64, i64* @_gasrem, align 8
  %"$gascmp_288" = icmp ugt i64 1, %"$gasrem_287"
  br i1 %"$gascmp_288", label %"$out_of_gas_289", label %"$have_gas_290"

"$out_of_gas_289":                                ; preds = %"$have_gas_285"
  call void @_out_of_gas()
  br label %"$have_gas_290"

"$have_gas_290":                                  ; preds = %"$out_of_gas_289", %"$have_gas_285"
  %"$consume_291" = sub i64 %"$gasrem_287", 1
  store i64 %"$consume_291", i64* @_gasrem, align 8
  %"$typed_folder_13" = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  %"$typed_folder_292" = load { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }, { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %typed_folder, align 8
  %"$typed_folder_fptr_293" = extractvalue { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$typed_folder_292", 0
  %"$typed_folder_envptr_294" = extractvalue { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$typed_folder_292", 1
  %"$iter_fun_295" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %iter_fun, align 8
  %"$typed_folder_call_296" = call { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$typed_folder_fptr_293"(i8* %"$typed_folder_envptr_294", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$iter_fun_295"), !dbg !44
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$typed_folder_call_296", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$typed_folder_13", align 8, !dbg !44
  %"$typed_folder_14" = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$$typed_folder_13_297" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$typed_folder_13", align 8
  %"$$typed_folder_13_fptr_298" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$typed_folder_13_297", 0
  %"$$typed_folder_13_envptr_299" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$typed_folder_13_297", 1
  %"$init_val_300" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %init_val, align 8
  %"$$typed_folder_13_call_301" = call { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$typed_folder_13_fptr_298"(i8* %"$$typed_folder_13_envptr_299", %TName_Pair_Int32_Int32* %"$init_val_300"), !dbg !44
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$typed_folder_13_call_301", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$typed_folder_14", align 8, !dbg !44
  %"$$typed_folder_14_302" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$typed_folder_14", align 8
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$typed_folder_14_302", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %folder, align 8, !dbg !44
  %"$gasrem_303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_304" = icmp ugt i64 1, %"$gasrem_303"
  br i1 %"$gascmp_304", label %"$out_of_gas_305", label %"$have_gas_306"

"$out_of_gas_305":                                ; preds = %"$have_gas_290"
  call void @_out_of_gas()
  br label %"$have_gas_306"

"$have_gas_306":                                  ; preds = %"$out_of_gas_305", %"$have_gas_290"
  %"$consume_307" = sub i64 %"$gasrem_303", 1
  store i64 %"$consume_307", i64* @_gasrem, align 8
  %res = alloca %TName_Pair_Int32_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Int32_Int32** %res, metadata !45, metadata !DIExpression()), !dbg !46
  %"$gasrem_308" = load i64, i64* @_gasrem, align 8
  %"$gascmp_309" = icmp ugt i64 1, %"$gasrem_308"
  br i1 %"$gascmp_309", label %"$out_of_gas_310", label %"$have_gas_311"

"$out_of_gas_310":                                ; preds = %"$have_gas_306"
  call void @_out_of_gas()
  br label %"$have_gas_311"

"$have_gas_311":                                  ; preds = %"$out_of_gas_310", %"$have_gas_306"
  %"$consume_312" = sub i64 %"$gasrem_308", 1
  store i64 %"$consume_312", i64* @_gasrem, align 8
  %"$folder_15" = alloca %TName_Pair_Int32_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Int32_Int32** %"$folder_15", metadata !47, metadata !DIExpression()), !dbg !48
  %"$folder_313" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %folder, align 8
  %"$folder_fptr_314" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$folder_313", 0
  %"$folder_envptr_315" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$folder_313", 1
  %"$folder_call_316" = call %TName_Pair_Int32_Int32* %"$folder_fptr_314"(i8* %"$folder_envptr_315", %TName_Nat* %1), !dbg !48
  store %TName_Pair_Int32_Int32* %"$folder_call_316", %TName_Pair_Int32_Int32** %"$folder_15", align 8, !dbg !48
  %"$$folder_15_317" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$folder_15", align 8
  store %TName_Pair_Int32_Int32* %"$$folder_15_317", %TName_Pair_Int32_Int32** %res, align 8, !dbg !48
  %"$gasrem_318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_319" = icmp ugt i64 1, %"$gasrem_318"
  br i1 %"$gascmp_319", label %"$out_of_gas_320", label %"$have_gas_321"

"$out_of_gas_320":                                ; preds = %"$have_gas_311"
  call void @_out_of_gas()
  br label %"$have_gas_321"

"$have_gas_321":                                  ; preds = %"$out_of_gas_320", %"$have_gas_311"
  %"$consume_322" = sub i64 %"$gasrem_318", 1
  store i64 %"$consume_322", i64* @_gasrem, align 8
  %"$res_324" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %res, align 8
  %"$res_tag_325" = getelementptr inbounds %TName_Pair_Int32_Int32, %TName_Pair_Int32_Int32* %"$res_324", i32 0, i32 0
  %"$res_tag_326" = load i8, i8* %"$res_tag_325", align 1
  switch i8 %"$res_tag_326", label %"$empty_default_327" [
    i8 0, label %"$Pair_328"
  ], !dbg !49

"$Pair_328":                                      ; preds = %"$have_gas_321"
  %"$res_329" = bitcast %TName_Pair_Int32_Int32* %"$res_324" to %CName_Pair_Int32_Int32*
  %"$x_gep_330" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_329", i32 0, i32 1
  %"$x_load_331" = load %Int32, %Int32* %"$x_gep_330", align 4
  %x = alloca %Int32, align 8
  store %Int32 %"$x_load_331", %Int32* %x, align 4
  %"$y_gep_332" = getelementptr inbounds %CName_Pair_Int32_Int32, %CName_Pair_Int32_Int32* %"$res_329", i32 0, i32 2
  %"$y_load_333" = load %Int32, %Int32* %"$y_gep_332", align 4
  %y = alloca %Int32, align 8
  store %Int32 %"$y_load_333", %Int32* %y, align 4
  %"$gasrem_334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_335" = icmp ugt i64 1, %"$gasrem_334"
  br i1 %"$gascmp_335", label %"$out_of_gas_336", label %"$have_gas_337"

"$out_of_gas_336":                                ; preds = %"$Pair_328"
  call void @_out_of_gas()
  br label %"$have_gas_337"

"$have_gas_337":                                  ; preds = %"$out_of_gas_336", %"$Pair_328"
  %"$consume_338" = sub i64 %"$gasrem_334", 1
  store i64 %"$consume_338", i64* @_gasrem, align 8
  %"$x_339" = load %Int32, %Int32* %x, align 4
  store %Int32 %"$x_339", %Int32* %"$retval_27", align 4, !dbg !50
  br label %"$matchsucc_323"

"$empty_default_327":                             ; preds = %"$have_gas_321"
  br label %"$matchsucc_323"

"$matchsucc_323":                                 ; preds = %"$have_gas_337", %"$empty_default_327"
  %"$$retval_27_340" = load %Int32, %Int32* %"$retval_27", align 4
  ret %Int32 %"$$retval_27_340"
}

define internal %TName_Pair_Int32_Int32* @"$fundef_23"(%"$$fundef_23_env_95"* %0, %TName_Nat* %1) !dbg !53 {
entry:
  %"$n_212" = alloca %TName_Nat*, align 8
  store %TName_Nat* %1, %TName_Nat** %"$n_212", align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %"$n_212", metadata !55, metadata !DIExpression()), !dbg !56
  %"$$fundef_23_env_f0_147" = getelementptr inbounds %"$$fundef_23_env_95", %"$$fundef_23_env_95"* %0, i32 0, i32 0
  %"$f0_envload_148" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$$fundef_23_env_f0_147", align 8
  %f0 = alloca %TName_Pair_Int32_Int32*, align 8
  store %TName_Pair_Int32_Int32* %"$f0_envload_148", %TName_Pair_Int32_Int32** %f0, align 8
  %"$$fundef_23_env_fn_149" = getelementptr inbounds %"$$fundef_23_env_95", %"$$fundef_23_env_95"* %0, i32 0, i32 1
  %"$fn_envload_150" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_23_env_fn_149", align 8
  %fn = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_envload_150", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn, align 8
  %"$$fundef_23_env_g_151" = getelementptr inbounds %"$$fundef_23_env_95", %"$$fundef_23_env_95"* %0, i32 0, i32 2
  %"$g_envload_152" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_23_env_g_151", align 8
  %g = alloca { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_envload_152", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  %"$retval_24" = alloca %TName_Pair_Int32_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Int32_Int32** %"$retval_24", metadata !57, metadata !DIExpression()), !dbg !58
  %"$gasrem_153" = load i64, i64* @_gasrem, align 8
  %"$gascmp_154" = icmp ugt i64 2, %"$gasrem_153"
  br i1 %"$gascmp_154", label %"$out_of_gas_155", label %"$have_gas_156"

"$out_of_gas_155":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_156"

"$have_gas_156":                                  ; preds = %"$out_of_gas_155", %entry
  %"$consume_157" = sub i64 %"$gasrem_153", 2
  store i64 %"$consume_157", i64* @_gasrem, align 8
  %"$n_tag_159" = getelementptr inbounds %TName_Nat, %TName_Nat* %1, i32 0, i32 0
  %"$n_tag_160" = load i8, i8* %"$n_tag_159", align 1
  switch i8 %"$n_tag_160", label %"$empty_default_161" [
    i8 1, label %"$Succ_162"
    i8 0, label %"$Zero_203"
  ], !dbg !58

"$Succ_162":                                      ; preds = %"$have_gas_156"
  %"$n_163" = bitcast %TName_Nat* %1 to %CName_Succ*
  %"$n1_gep_164" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$n_163", i32 0, i32 1
  %"$n1_load_165" = load %TName_Nat*, %TName_Nat** %"$n1_gep_164", align 8
  %n1 = alloca %TName_Nat*, align 8
  store %TName_Nat* %"$n1_load_165", %TName_Nat** %n1, align 8
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %"$Succ_162"
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %"$Succ_162"
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem, align 8
  %res = alloca %TName_Pair_Int32_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Int32_Int32** %res, metadata !59, metadata !DIExpression()), !dbg !62
  %"$gasrem_171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_172" = icmp ugt i64 1, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %"$have_gas_169"
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %"$have_gas_169"
  %"$consume_175" = sub i64 %"$gasrem_171", 1
  store i64 %"$consume_175", i64* @_gasrem, align 8
  %"$fn_9" = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$fn_176" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %fn, align 8
  %"$fn_fptr_177" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_176", 0
  %"$fn_envptr_178" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$fn_176", 1
  %"$f0_179" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %f0, align 8
  %"$fn_call_180" = call { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$fn_fptr_177"(i8* %"$fn_envptr_178", %TName_Pair_Int32_Int32* %"$f0_179"), !dbg !63
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$fn_call_180", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$fn_9", align 8, !dbg !63
  %"$fn_10" = alloca %TName_Pair_Int32_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Int32_Int32** %"$fn_10", metadata !64, metadata !DIExpression()), !dbg !63
  %"$$fn_9_181" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$fn_9", align 8
  %"$$fn_9_fptr_182" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$fn_9_181", 0
  %"$$fn_9_envptr_183" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$fn_9_181", 1
  %"$n1_184" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$fn_9_call_185" = call %TName_Pair_Int32_Int32* %"$$fn_9_fptr_182"(i8* %"$$fn_9_envptr_183", %TName_Nat* %"$n1_184"), !dbg !63
  store %TName_Pair_Int32_Int32* %"$$fn_9_call_185", %TName_Pair_Int32_Int32** %"$fn_10", align 8, !dbg !63
  %"$$fn_10_186" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$fn_10", align 8
  store %TName_Pair_Int32_Int32* %"$$fn_10_186", %TName_Pair_Int32_Int32** %res, align 8, !dbg !63
  %"$gasrem_187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_188" = icmp ugt i64 1, %"$gasrem_187"
  br i1 %"$gascmp_188", label %"$out_of_gas_189", label %"$have_gas_190"

"$out_of_gas_189":                                ; preds = %"$have_gas_174"
  call void @_out_of_gas()
  br label %"$have_gas_190"

"$have_gas_190":                                  ; preds = %"$out_of_gas_189", %"$have_gas_174"
  %"$consume_191" = sub i64 %"$gasrem_187", 1
  store i64 %"$consume_191", i64* @_gasrem, align 8
  %"$g_11" = alloca { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, align 8
  %"$g_192" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  %"$g_fptr_193" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_192", 0
  %"$g_envptr_194" = extractvalue { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_192", 1
  %"$res_195" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %res, align 8
  %"$g_call_196" = call { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$g_fptr_193"(i8* %"$g_envptr_194", %TName_Pair_Int32_Int32* %"$res_195"), !dbg !65
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$g_call_196", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$g_11", align 8, !dbg !65
  %"$g_12" = alloca %TName_Pair_Int32_Int32*, align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Int32_Int32** %"$g_12", metadata !66, metadata !DIExpression()), !dbg !65
  %"$$g_11_197" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$g_11", align 8
  %"$$g_11_fptr_198" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$g_11_197", 0
  %"$$g_11_envptr_199" = extractvalue { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$g_11_197", 1
  %"$n1_200" = load %TName_Nat*, %TName_Nat** %n1, align 8
  %"$$g_11_call_201" = call %TName_Pair_Int32_Int32* %"$$g_11_fptr_198"(i8* %"$$g_11_envptr_199", %TName_Nat* %"$n1_200"), !dbg !65
  store %TName_Pair_Int32_Int32* %"$$g_11_call_201", %TName_Pair_Int32_Int32** %"$g_12", align 8, !dbg !65
  %"$$g_12_202" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$g_12", align 8
  store %TName_Pair_Int32_Int32* %"$$g_12_202", %TName_Pair_Int32_Int32** %"$retval_24", align 8, !dbg !65
  br label %"$matchsucc_158"

"$Zero_203":                                      ; preds = %"$have_gas_156"
  %"$n_204" = bitcast %TName_Nat* %1 to %CName_Zero*
  %"$gasrem_205" = load i64, i64* @_gasrem, align 8
  %"$gascmp_206" = icmp ugt i64 1, %"$gasrem_205"
  br i1 %"$gascmp_206", label %"$out_of_gas_207", label %"$have_gas_208"

"$out_of_gas_207":                                ; preds = %"$Zero_203"
  call void @_out_of_gas()
  br label %"$have_gas_208"

"$have_gas_208":                                  ; preds = %"$out_of_gas_207", %"$Zero_203"
  %"$consume_209" = sub i64 %"$gasrem_205", 1
  store i64 %"$consume_209", i64* @_gasrem, align 8
  %"$f0_210" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %f0, align 8
  store %TName_Pair_Int32_Int32* %"$f0_210", %TName_Pair_Int32_Int32** %"$retval_24", align 8, !dbg !67
  br label %"$matchsucc_158"

"$empty_default_161":                             ; preds = %"$have_gas_156"
  br label %"$matchsucc_158"

"$matchsucc_158":                                 ; preds = %"$have_gas_208", %"$have_gas_190", %"$empty_default_161"
  %"$$retval_24_211" = load %TName_Pair_Int32_Int32*, %TName_Pair_Int32_Int32** %"$retval_24", align 8
  ret %TName_Pair_Int32_Int32* %"$$retval_24_211"
}

define internal { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } @"$fundef_21"(%"$$fundef_21_env_96"* %0, %TName_Pair_Int32_Int32* %1) !dbg !69 {
entry:
  %"$f0_146" = alloca %TName_Pair_Int32_Int32*, align 8
  store %TName_Pair_Int32_Int32* %1, %TName_Pair_Int32_Int32** %"$f0_146", align 8
  call void @llvm.dbg.declare(metadata %TName_Pair_Int32_Int32** %"$f0_146", metadata !70, metadata !DIExpression()), !dbg !71
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
  store { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$fundef_23_cloval_139", { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$retval_22", align 8, !dbg !72
  %"$$retval_22_145" = load { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }, { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* }* %"$retval_22", align 8
  ret { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } %"$$retval_22_145"
}

define internal { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } @"$fundef_19"(%"$$fundef_19_env_97"* %0, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %1) !dbg !73 {
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
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$fundef_21_cloval_116", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8, !dbg !74
  %"$$fundef_21_env_fn_117" = getelementptr inbounds %"$$fundef_21_env_96", %"$$fundef_21_env_96"* %"$$fundef_21_envp_113", i32 0, i32 0
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %1, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_21_env_fn_117", align 8
  %"$$fundef_21_env_g_118" = getelementptr inbounds %"$$fundef_21_env_96", %"$$fundef_21_env_96"* %"$$fundef_21_envp_113", i32 0, i32 1
  %"$g_119" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_119", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$$fundef_21_env_g_118", align 8
  %"$g_120" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %g, align 8
  store { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$g_120", { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$retval_20", align 8, !dbg !74
  %"$$retval_20_121" = load { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* }* %"$retval_20", align 8
  ret { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } %"$$retval_20_121"
}

define internal { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } @"$fundef_17"(%"$$fundef_17_env_98"* %0) !dbg !75 {
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
  store { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })* bitcast ({ { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (%"$$fundef_19_env_97"*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })* @"$fundef_19" to { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*), i8* null }, { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %"$retval_18", align 8, !dbg !76
  %"$$retval_18_107" = load { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }, { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* }* %"$retval_18", align 8
  ret { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } %"$$retval_18_107"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() !dbg !77 {
entry:
  %"$gasrem_399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_400" = icmp ugt i64 4, %"$gasrem_399"
  br i1 %"$gascmp_400", label %"$out_of_gas_401", label %"$have_gas_402"

"$out_of_gas_401":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_402"

"$have_gas_402":                                  ; preds = %"$out_of_gas_401", %entry
  %"$consume_403" = sub i64 %"$gasrem_399", 4
  store i64 %"$consume_403", i64* @_gasrem, align 8
  store %Int32 { i32 4 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !79
  %"$gasrem_404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_405" = icmp ugt i64 1, %"$gasrem_404"
  br i1 %"$gascmp_405", label %"$out_of_gas_406", label %"$have_gas_407"

"$out_of_gas_406":                                ; preds = %"$have_gas_402"
  call void @_out_of_gas()
  br label %"$have_gas_407"

"$have_gas_407":                                  ; preds = %"$out_of_gas_406", %"$have_gas_402"
  %"$consume_408" = sub i64 %"$gasrem_404", 1
  store i64 %"$consume_408", i64* @_gasrem, align 8
  %"$dyndisp_table_412_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_412_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_412_salloc_load", i64 16)
  %"$dyndisp_table_412_salloc" = bitcast i8* %"$dyndisp_table_412_salloc_salloc" to [1 x { i8*, i8* }]*
  %"$dyndisp_table_412" = bitcast [1 x { i8*, i8* }]* %"$dyndisp_table_412_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_413" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_412", i32 0
  %"$dyndisp_pcast_414" = bitcast { i8*, i8* }* %"$dyndisp_gep_413" to { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* } { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)* bitcast ({ { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (%"$$fundef_17_env_98"*)* @"$fundef_17" to { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* } (i8*, { { %TName_Pair_Int32_Int32* (i8*, %TName_Nat*)*, i8* } (i8*, %TName_Pair_Int32_Int32*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_414", align 8
  store { i8*, i8* }* %"$dyndisp_table_412", { i8*, i8* }** @nat_fold, align 8, !dbg !80
  %"$gasrem_415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_416" = icmp ugt i64 8, %"$gasrem_415"
  br i1 %"$gascmp_416", label %"$out_of_gas_417", label %"$have_gas_418"

"$out_of_gas_417":                                ; preds = %"$have_gas_407"
  call void @_out_of_gas()
  br label %"$have_gas_418"

"$have_gas_418":                                  ; preds = %"$out_of_gas_417", %"$have_gas_407"
  %"$consume_419" = sub i64 %"$gasrem_415", 8
  store i64 %"$consume_419", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !79
  %"$gasrem_420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_421" = icmp ugt i64 196, %"$gasrem_420"
  br i1 %"$gascmp_421", label %"$out_of_gas_422", label %"$have_gas_423"

"$out_of_gas_422":                                ; preds = %"$have_gas_418"
  call void @_out_of_gas()
  br label %"$have_gas_423"

"$have_gas_423":                                  ; preds = %"$out_of_gas_422", %"$have_gas_418"
  %"$consume_424" = sub i64 %"$gasrem_420", 196
  store i64 %"$consume_424", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !79
  %"$gasrem_425" = load i64, i64* @_gasrem, align 8
  %"$gascmp_426" = icmp ugt i64 20, %"$gasrem_425"
  br i1 %"$gascmp_426", label %"$out_of_gas_427", label %"$have_gas_428"

"$out_of_gas_427":                                ; preds = %"$have_gas_423"
  call void @_out_of_gas()
  br label %"$have_gas_428"

"$have_gas_428":                                  ; preds = %"$out_of_gas_427", %"$have_gas_423"
  %"$consume_429" = sub i64 %"$gasrem_425", 20
  store i64 %"$consume_429", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !79
  %"$gasrem_430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_431" = icmp ugt i64 12, %"$gasrem_430"
  br i1 %"$gascmp_431", label %"$out_of_gas_432", label %"$have_gas_433"

"$out_of_gas_432":                                ; preds = %"$have_gas_428"
  call void @_out_of_gas()
  br label %"$have_gas_433"

"$have_gas_433":                                  ; preds = %"$out_of_gas_432", %"$have_gas_428"
  %"$consume_434" = sub i64 %"$gasrem_430", 12
  store i64 %"$consume_434", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !79
  %"$gasrem_435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_436" = icmp ugt i64 2, %"$gasrem_435"
  br i1 %"$gascmp_436", label %"$out_of_gas_437", label %"$have_gas_438"

"$out_of_gas_437":                                ; preds = %"$have_gas_433"
  call void @_out_of_gas()
  br label %"$have_gas_438"

"$have_gas_438":                                  ; preds = %"$out_of_gas_437", %"$have_gas_433"
  %"$consume_439" = sub i64 %"$gasrem_435", 2
  store i64 %"$consume_439", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !79
  ret void
}

define internal %Int32 @_scilla_expr_fun(i8* %0) !dbg !81 {
entry:
  %"$expr_25" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$expr_25", metadata !82, metadata !DIExpression()), !dbg !83
  %"$gasrem_440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_441" = icmp ugt i64 1, %"$gasrem_440"
  br i1 %"$gascmp_441", label %"$out_of_gas_442", label %"$have_gas_443"

"$out_of_gas_442":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_443"

"$have_gas_443":                                  ; preds = %"$out_of_gas_442", %entry
  %"$consume_444" = sub i64 %"$gasrem_440", 1
  store i64 %"$consume_444", i64* @_gasrem, align 8
  %zero = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %zero, metadata !84, metadata !DIExpression()), !dbg !85
  %"$gasrem_445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_446" = icmp ugt i64 1, %"$gasrem_445"
  br i1 %"$gascmp_446", label %"$out_of_gas_447", label %"$have_gas_448"

"$out_of_gas_447":                                ; preds = %"$have_gas_443"
  call void @_out_of_gas()
  br label %"$have_gas_448"

"$have_gas_448":                                  ; preds = %"$out_of_gas_447", %"$have_gas_443"
  %"$consume_449" = sub i64 %"$gasrem_445", 1
  store i64 %"$consume_449", i64* @_gasrem, align 8
  %"$adtval_450_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_450_salloc" = call i8* @_salloc(i8* %"$adtval_450_load", i64 1)
  %"$adtval_450" = bitcast i8* %"$adtval_450_salloc" to %CName_Zero*
  %"$adtgep_451" = getelementptr inbounds %CName_Zero, %CName_Zero* %"$adtval_450", i32 0, i32 0
  store i8 0, i8* %"$adtgep_451", align 1
  %"$adtptr_452" = bitcast %CName_Zero* %"$adtval_450" to %TName_Nat*
  store %TName_Nat* %"$adtptr_452", %TName_Nat** %zero, align 8, !dbg !83
  %"$gasrem_453" = load i64, i64* @_gasrem, align 8
  %"$gascmp_454" = icmp ugt i64 1, %"$gasrem_453"
  br i1 %"$gascmp_454", label %"$out_of_gas_455", label %"$have_gas_456"

"$out_of_gas_455":                                ; preds = %"$have_gas_448"
  call void @_out_of_gas()
  br label %"$have_gas_456"

"$have_gas_456":                                  ; preds = %"$out_of_gas_455", %"$have_gas_448"
  %"$consume_457" = sub i64 %"$gasrem_453", 1
  store i64 %"$consume_457", i64* @_gasrem, align 8
  %one = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %one, metadata !86, metadata !DIExpression()), !dbg !87
  %"$gasrem_458" = load i64, i64* @_gasrem, align 8
  %"$gascmp_459" = icmp ugt i64 1, %"$gasrem_458"
  br i1 %"$gascmp_459", label %"$out_of_gas_460", label %"$have_gas_461"

"$out_of_gas_460":                                ; preds = %"$have_gas_456"
  call void @_out_of_gas()
  br label %"$have_gas_461"

"$have_gas_461":                                  ; preds = %"$out_of_gas_460", %"$have_gas_456"
  %"$consume_462" = sub i64 %"$gasrem_458", 1
  store i64 %"$consume_462", i64* @_gasrem, align 8
  %"$zero_463" = load %TName_Nat*, %TName_Nat** %zero, align 8
  %"$adtval_464_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_464_salloc" = call i8* @_salloc(i8* %"$adtval_464_load", i64 9)
  %"$adtval_464" = bitcast i8* %"$adtval_464_salloc" to %CName_Succ*
  %"$adtgep_465" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_464", i32 0, i32 0
  store i8 1, i8* %"$adtgep_465", align 1
  %"$adtgep_466" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_464", i32 0, i32 1
  store %TName_Nat* %"$zero_463", %TName_Nat** %"$adtgep_466", align 8
  %"$adtptr_467" = bitcast %CName_Succ* %"$adtval_464" to %TName_Nat*
  store %TName_Nat* %"$adtptr_467", %TName_Nat** %one, align 8, !dbg !88
  %"$gasrem_468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_469" = icmp ugt i64 1, %"$gasrem_468"
  br i1 %"$gascmp_469", label %"$out_of_gas_470", label %"$have_gas_471"

"$out_of_gas_470":                                ; preds = %"$have_gas_461"
  call void @_out_of_gas()
  br label %"$have_gas_471"

"$have_gas_471":                                  ; preds = %"$out_of_gas_470", %"$have_gas_461"
  %"$consume_472" = sub i64 %"$gasrem_468", 1
  store i64 %"$consume_472", i64* @_gasrem, align 8
  %two = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %two, metadata !89, metadata !DIExpression()), !dbg !90
  %"$gasrem_473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_474" = icmp ugt i64 1, %"$gasrem_473"
  br i1 %"$gascmp_474", label %"$out_of_gas_475", label %"$have_gas_476"

"$out_of_gas_475":                                ; preds = %"$have_gas_471"
  call void @_out_of_gas()
  br label %"$have_gas_476"

"$have_gas_476":                                  ; preds = %"$out_of_gas_475", %"$have_gas_471"
  %"$consume_477" = sub i64 %"$gasrem_473", 1
  store i64 %"$consume_477", i64* @_gasrem, align 8
  %"$one_478" = load %TName_Nat*, %TName_Nat** %one, align 8
  %"$adtval_479_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_479_salloc" = call i8* @_salloc(i8* %"$adtval_479_load", i64 9)
  %"$adtval_479" = bitcast i8* %"$adtval_479_salloc" to %CName_Succ*
  %"$adtgep_480" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_479", i32 0, i32 0
  store i8 1, i8* %"$adtgep_480", align 1
  %"$adtgep_481" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_479", i32 0, i32 1
  store %TName_Nat* %"$one_478", %TName_Nat** %"$adtgep_481", align 8
  %"$adtptr_482" = bitcast %CName_Succ* %"$adtval_479" to %TName_Nat*
  store %TName_Nat* %"$adtptr_482", %TName_Nat** %two, align 8, !dbg !91
  %"$gasrem_483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_484" = icmp ugt i64 1, %"$gasrem_483"
  br i1 %"$gascmp_484", label %"$out_of_gas_485", label %"$have_gas_486"

"$out_of_gas_485":                                ; preds = %"$have_gas_476"
  call void @_out_of_gas()
  br label %"$have_gas_486"

"$have_gas_486":                                  ; preds = %"$out_of_gas_485", %"$have_gas_476"
  %"$consume_487" = sub i64 %"$gasrem_483", 1
  store i64 %"$consume_487", i64* @_gasrem, align 8
  %three = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %three, metadata !92, metadata !DIExpression()), !dbg !93
  %"$gasrem_488" = load i64, i64* @_gasrem, align 8
  %"$gascmp_489" = icmp ugt i64 1, %"$gasrem_488"
  br i1 %"$gascmp_489", label %"$out_of_gas_490", label %"$have_gas_491"

"$out_of_gas_490":                                ; preds = %"$have_gas_486"
  call void @_out_of_gas()
  br label %"$have_gas_491"

"$have_gas_491":                                  ; preds = %"$out_of_gas_490", %"$have_gas_486"
  %"$consume_492" = sub i64 %"$gasrem_488", 1
  store i64 %"$consume_492", i64* @_gasrem, align 8
  %"$two_493" = load %TName_Nat*, %TName_Nat** %two, align 8
  %"$adtval_494_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_494_salloc" = call i8* @_salloc(i8* %"$adtval_494_load", i64 9)
  %"$adtval_494" = bitcast i8* %"$adtval_494_salloc" to %CName_Succ*
  %"$adtgep_495" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_494", i32 0, i32 0
  store i8 1, i8* %"$adtgep_495", align 1
  %"$adtgep_496" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_494", i32 0, i32 1
  store %TName_Nat* %"$two_493", %TName_Nat** %"$adtgep_496", align 8
  %"$adtptr_497" = bitcast %CName_Succ* %"$adtval_494" to %TName_Nat*
  store %TName_Nat* %"$adtptr_497", %TName_Nat** %three, align 8, !dbg !94
  %"$gasrem_498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_499" = icmp ugt i64 1, %"$gasrem_498"
  br i1 %"$gascmp_499", label %"$out_of_gas_500", label %"$have_gas_501"

"$out_of_gas_500":                                ; preds = %"$have_gas_491"
  call void @_out_of_gas()
  br label %"$have_gas_501"

"$have_gas_501":                                  ; preds = %"$out_of_gas_500", %"$have_gas_491"
  %"$consume_502" = sub i64 %"$gasrem_498", 1
  store i64 %"$consume_502", i64* @_gasrem, align 8
  %four = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %four, metadata !95, metadata !DIExpression()), !dbg !96
  %"$gasrem_503" = load i64, i64* @_gasrem, align 8
  %"$gascmp_504" = icmp ugt i64 1, %"$gasrem_503"
  br i1 %"$gascmp_504", label %"$out_of_gas_505", label %"$have_gas_506"

"$out_of_gas_505":                                ; preds = %"$have_gas_501"
  call void @_out_of_gas()
  br label %"$have_gas_506"

"$have_gas_506":                                  ; preds = %"$out_of_gas_505", %"$have_gas_501"
  %"$consume_507" = sub i64 %"$gasrem_503", 1
  store i64 %"$consume_507", i64* @_gasrem, align 8
  %"$three_508" = load %TName_Nat*, %TName_Nat** %three, align 8
  %"$adtval_509_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_509_salloc" = call i8* @_salloc(i8* %"$adtval_509_load", i64 9)
  %"$adtval_509" = bitcast i8* %"$adtval_509_salloc" to %CName_Succ*
  %"$adtgep_510" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_509", i32 0, i32 0
  store i8 1, i8* %"$adtgep_510", align 1
  %"$adtgep_511" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_509", i32 0, i32 1
  store %TName_Nat* %"$three_508", %TName_Nat** %"$adtgep_511", align 8
  %"$adtptr_512" = bitcast %CName_Succ* %"$adtval_509" to %TName_Nat*
  store %TName_Nat* %"$adtptr_512", %TName_Nat** %four, align 8, !dbg !97
  %"$gasrem_513" = load i64, i64* @_gasrem, align 8
  %"$gascmp_514" = icmp ugt i64 1, %"$gasrem_513"
  br i1 %"$gascmp_514", label %"$out_of_gas_515", label %"$have_gas_516"

"$out_of_gas_515":                                ; preds = %"$have_gas_506"
  call void @_out_of_gas()
  br label %"$have_gas_516"

"$have_gas_516":                                  ; preds = %"$out_of_gas_515", %"$have_gas_506"
  %"$consume_517" = sub i64 %"$gasrem_513", 1
  store i64 %"$consume_517", i64* @_gasrem, align 8
  %five = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %five, metadata !98, metadata !DIExpression()), !dbg !99
  %"$gasrem_518" = load i64, i64* @_gasrem, align 8
  %"$gascmp_519" = icmp ugt i64 1, %"$gasrem_518"
  br i1 %"$gascmp_519", label %"$out_of_gas_520", label %"$have_gas_521"

"$out_of_gas_520":                                ; preds = %"$have_gas_516"
  call void @_out_of_gas()
  br label %"$have_gas_521"

"$have_gas_521":                                  ; preds = %"$out_of_gas_520", %"$have_gas_516"
  %"$consume_522" = sub i64 %"$gasrem_518", 1
  store i64 %"$consume_522", i64* @_gasrem, align 8
  %"$four_523" = load %TName_Nat*, %TName_Nat** %four, align 8
  %"$adtval_524_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_524_salloc" = call i8* @_salloc(i8* %"$adtval_524_load", i64 9)
  %"$adtval_524" = bitcast i8* %"$adtval_524_salloc" to %CName_Succ*
  %"$adtgep_525" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_524", i32 0, i32 0
  store i8 1, i8* %"$adtgep_525", align 1
  %"$adtgep_526" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_524", i32 0, i32 1
  store %TName_Nat* %"$four_523", %TName_Nat** %"$adtgep_526", align 8
  %"$adtptr_527" = bitcast %CName_Succ* %"$adtval_524" to %TName_Nat*
  store %TName_Nat* %"$adtptr_527", %TName_Nat** %five, align 8, !dbg !100
  %"$gasrem_528" = load i64, i64* @_gasrem, align 8
  %"$gascmp_529" = icmp ugt i64 1, %"$gasrem_528"
  br i1 %"$gascmp_529", label %"$out_of_gas_530", label %"$have_gas_531"

"$out_of_gas_530":                                ; preds = %"$have_gas_521"
  call void @_out_of_gas()
  br label %"$have_gas_531"

"$have_gas_531":                                  ; preds = %"$out_of_gas_530", %"$have_gas_521"
  %"$consume_532" = sub i64 %"$gasrem_528", 1
  store i64 %"$consume_532", i64* @_gasrem, align 8
  %six = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %six, metadata !101, metadata !DIExpression()), !dbg !102
  %"$gasrem_533" = load i64, i64* @_gasrem, align 8
  %"$gascmp_534" = icmp ugt i64 1, %"$gasrem_533"
  br i1 %"$gascmp_534", label %"$out_of_gas_535", label %"$have_gas_536"

"$out_of_gas_535":                                ; preds = %"$have_gas_531"
  call void @_out_of_gas()
  br label %"$have_gas_536"

"$have_gas_536":                                  ; preds = %"$out_of_gas_535", %"$have_gas_531"
  %"$consume_537" = sub i64 %"$gasrem_533", 1
  store i64 %"$consume_537", i64* @_gasrem, align 8
  %"$five_538" = load %TName_Nat*, %TName_Nat** %five, align 8
  %"$adtval_539_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_539_salloc" = call i8* @_salloc(i8* %"$adtval_539_load", i64 9)
  %"$adtval_539" = bitcast i8* %"$adtval_539_salloc" to %CName_Succ*
  %"$adtgep_540" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_539", i32 0, i32 0
  store i8 1, i8* %"$adtgep_540", align 1
  %"$adtgep_541" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_539", i32 0, i32 1
  store %TName_Nat* %"$five_538", %TName_Nat** %"$adtgep_541", align 8
  %"$adtptr_542" = bitcast %CName_Succ* %"$adtval_539" to %TName_Nat*
  store %TName_Nat* %"$adtptr_542", %TName_Nat** %six, align 8, !dbg !103
  %"$gasrem_543" = load i64, i64* @_gasrem, align 8
  %"$gascmp_544" = icmp ugt i64 1, %"$gasrem_543"
  br i1 %"$gascmp_544", label %"$out_of_gas_545", label %"$have_gas_546"

"$out_of_gas_545":                                ; preds = %"$have_gas_536"
  call void @_out_of_gas()
  br label %"$have_gas_546"

"$have_gas_546":                                  ; preds = %"$out_of_gas_545", %"$have_gas_536"
  %"$consume_547" = sub i64 %"$gasrem_543", 1
  store i64 %"$consume_547", i64* @_gasrem, align 8
  %seven = alloca %TName_Nat*, align 8
  call void @llvm.dbg.declare(metadata %TName_Nat** %seven, metadata !104, metadata !DIExpression()), !dbg !105
  %"$gasrem_548" = load i64, i64* @_gasrem, align 8
  %"$gascmp_549" = icmp ugt i64 1, %"$gasrem_548"
  br i1 %"$gascmp_549", label %"$out_of_gas_550", label %"$have_gas_551"

"$out_of_gas_550":                                ; preds = %"$have_gas_546"
  call void @_out_of_gas()
  br label %"$have_gas_551"

"$have_gas_551":                                  ; preds = %"$out_of_gas_550", %"$have_gas_546"
  %"$consume_552" = sub i64 %"$gasrem_548", 1
  store i64 %"$consume_552", i64* @_gasrem, align 8
  %"$six_553" = load %TName_Nat*, %TName_Nat** %six, align 8
  %"$adtval_554_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_554_salloc" = call i8* @_salloc(i8* %"$adtval_554_load", i64 9)
  %"$adtval_554" = bitcast i8* %"$adtval_554_salloc" to %CName_Succ*
  %"$adtgep_555" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_554", i32 0, i32 0
  store i8 1, i8* %"$adtgep_555", align 1
  %"$adtgep_556" = getelementptr inbounds %CName_Succ, %CName_Succ* %"$adtval_554", i32 0, i32 1
  store %TName_Nat* %"$six_553", %TName_Nat** %"$adtgep_556", align 8
  %"$adtptr_557" = bitcast %CName_Succ* %"$adtval_554" to %TName_Nat*
  store %TName_Nat* %"$adtptr_557", %TName_Nat** %seven, align 8, !dbg !106
  %"$gasrem_558" = load i64, i64* @_gasrem, align 8
  %"$gascmp_559" = icmp ugt i64 1, %"$gasrem_558"
  br i1 %"$gascmp_559", label %"$out_of_gas_560", label %"$have_gas_561"

"$out_of_gas_560":                                ; preds = %"$have_gas_551"
  call void @_out_of_gas()
  br label %"$have_gas_561"

"$have_gas_561":                                  ; preds = %"$out_of_gas_560", %"$have_gas_551"
  %"$consume_562" = sub i64 %"$gasrem_558", 1
  store i64 %"$consume_562", i64* @_gasrem, align 8
  %fib = alloca { %Int32 (i8*, %TName_Nat*)*, i8* }, align 8
  %"$gasrem_563" = load i64, i64* @_gasrem, align 8
  %"$gascmp_564" = icmp ugt i64 1, %"$gasrem_563"
  br i1 %"$gascmp_564", label %"$out_of_gas_565", label %"$have_gas_566"

"$out_of_gas_565":                                ; preds = %"$have_gas_561"
  call void @_out_of_gas()
  br label %"$have_gas_566"

"$have_gas_566":                                  ; preds = %"$out_of_gas_565", %"$have_gas_561"
  %"$consume_567" = sub i64 %"$gasrem_563", 1
  store i64 %"$consume_567", i64* @_gasrem, align 8
  %"$$fundef_26_envp_568_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_26_envp_568_salloc" = call i8* @_salloc(i8* %"$$fundef_26_envp_568_load", i64 8)
  %"$$fundef_26_envp_568" = bitcast i8* %"$$fundef_26_envp_568_salloc" to %"$$fundef_26_env_94"*
  %"$$fundef_26_env_voidp_570" = bitcast %"$$fundef_26_env_94"* %"$$fundef_26_envp_568" to i8*
  %"$$fundef_26_cloval_571" = insertvalue { %Int32 (i8*, %TName_Nat*)*, i8* } { %Int32 (i8*, %TName_Nat*)* bitcast (%Int32 (%"$$fundef_26_env_94"*, %TName_Nat*)* @"$fundef_26" to %Int32 (i8*, %TName_Nat*)*), i8* undef }, i8* %"$$fundef_26_env_voidp_570", 1
  %"$$fundef_26_env_nat_fold_572" = getelementptr inbounds %"$$fundef_26_env_94", %"$$fundef_26_env_94"* %"$$fundef_26_envp_568", i32 0, i32 0
  %"$nat_fold_573" = load { i8*, i8* }*, { i8*, i8* }** @nat_fold, align 8
  store { i8*, i8* }* %"$nat_fold_573", { i8*, i8* }** %"$$fundef_26_env_nat_fold_572", align 8
  store { %Int32 (i8*, %TName_Nat*)*, i8* } %"$$fundef_26_cloval_571", { %Int32 (i8*, %TName_Nat*)*, i8* }* %fib, align 8, !dbg !107
  %"$gasrem_574" = load i64, i64* @_gasrem, align 8
  %"$gascmp_575" = icmp ugt i64 1, %"$gasrem_574"
  br i1 %"$gascmp_575", label %"$out_of_gas_576", label %"$have_gas_577"

"$out_of_gas_576":                                ; preds = %"$have_gas_566"
  call void @_out_of_gas()
  br label %"$have_gas_577"

"$have_gas_577":                                  ; preds = %"$out_of_gas_576", %"$have_gas_566"
  %"$consume_578" = sub i64 %"$gasrem_574", 1
  store i64 %"$consume_578", i64* @_gasrem, align 8
  %"$fib_16" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$fib_16", metadata !108, metadata !DIExpression()), !dbg !109
  %"$fib_579" = load { %Int32 (i8*, %TName_Nat*)*, i8* }, { %Int32 (i8*, %TName_Nat*)*, i8* }* %fib, align 8
  %"$fib_fptr_580" = extractvalue { %Int32 (i8*, %TName_Nat*)*, i8* } %"$fib_579", 0
  %"$fib_envptr_581" = extractvalue { %Int32 (i8*, %TName_Nat*)*, i8* } %"$fib_579", 1
  %"$seven_582" = load %TName_Nat*, %TName_Nat** %seven, align 8
  %"$fib_call_583" = call %Int32 %"$fib_fptr_580"(i8* %"$fib_envptr_581", %TName_Nat* %"$seven_582"), !dbg !109
  store %Int32 %"$fib_call_583", %Int32* %"$fib_16", align 4, !dbg !109
  %"$$fib_16_584" = load %Int32, %Int32* %"$fib_16", align 4
  store %Int32 %"$$fib_16_584", %Int32* %"$expr_25", align 4, !dbg !109
  %"$$expr_25_585" = load %Int32, %Int32* %"$expr_25", align 4
  ret %Int32 %"$$expr_25_585"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_586" = call %Int32 @_scilla_expr_fun(i8* null)
  %"$pval_587" = alloca %Int32, align 8
  %"$memvoidcast_588" = bitcast %Int32* %"$pval_587" to i8*
  store %Int32 %"$exprval_586", %Int32* %"$pval_587", align 4
  %"$execptr_load_589" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_589", %_TyDescrTy_Typ* @"$TyDescr_Int32_34", i8* %"$memvoidcast_588")
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
!8 = !DILocalVariable(name: "$n_6", scope: !3, file: !2, line: 14, type: !9)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Nat", baseType: !10, size: 8, align: 8, dwarfAddressSpace: 0)
!10 = !DIBasicType(name: "Nat", size: 8)
!11 = !DILocation(line: 14, column: 42, scope: !3)
!12 = !DILocalVariable(name: "$retval_31", scope: !3, file: !2, line: 15, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Pair (Int32) (Int32)", baseType: !14, size: 8, align: 8, dwarfAddressSpace: 0)
!14 = !DIBasicType(name: "Pair (Int32) (Int32)", size: 8)
!15 = !DILocation(line: 15, column: 7, scope: !3)
!16 = !DILocalVariable(name: "z", scope: !17, file: !2, line: 16, type: !19)
!17 = distinct !DILexicalBlock(scope: !18, file: !2, line: 16, column: 9)
!18 = distinct !DILexicalBlock(scope: !3, file: !2, line: 15, column: 7)
!19 = !DIBasicType(name: "Int32", size: 4)
!20 = !DILocation(line: 16, column: 25, scope: !17)
!21 = !DILocation(line: 16, column: 29, scope: !17)
!22 = !DILocation(line: 17, column: 7, scope: !17)
!23 = distinct !DISubprogram(name: "$fundef_28", linkageName: "$fundef_28", scope: !2, file: !2, line: 14, type: !4, scopeLine: 14, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!24 = !DILocalVariable(name: "res", scope: !23, file: !2, line: 14, type: !13)
!25 = !DILocation(line: 14, column: 10, scope: !23)
!26 = !DILocation(line: 15, column: 7, scope: !23)
!27 = distinct !DISubprogram(name: "$fundef_26", linkageName: "$fundef_26", scope: !2, file: !2, line: 13, type: !4, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!28 = !DILocalVariable(name: "n", scope: !27, file: !2, line: 12, type: !9)
!29 = !DILocation(line: 12, column: 16, scope: !27)
!30 = !DILocalVariable(name: "$retval_27", scope: !27, file: !2, line: 13, type: !19)
!31 = !DILocation(line: 13, column: 3, scope: !27)
!32 = !DILocation(line: 14, column: 37, scope: !27)
!33 = !DILocalVariable(name: "$zero_7", scope: !27, file: !2, line: 20, type: !19)
!34 = !DILocation(line: 20, column: 7, scope: !27)
!35 = !DILocation(line: 20, column: 14, scope: !27)
!36 = !DILocalVariable(name: "$one_8", scope: !27, file: !2, line: 21, type: !19)
!37 = !DILocation(line: 21, column: 7, scope: !27)
!38 = !DILocation(line: 21, column: 13, scope: !27)
!39 = !DILocalVariable(name: "init_val", scope: !27, file: !2, line: 22, type: !13)
!40 = !DILocation(line: 22, column: 7, scope: !27)
!41 = !DILocation(line: 22, column: 18, scope: !27)
!42 = !DILocation(line: 23, column: 23, scope: !27)
!43 = !DILocation(line: 23, column: 22, scope: !27)
!44 = !DILocation(line: 24, column: 15, scope: !27)
!45 = !DILocalVariable(name: "res", scope: !27, file: !2, line: 25, type: !13)
!46 = !DILocation(line: 25, column: 7, scope: !27)
!47 = !DILocalVariable(name: "$folder_15", scope: !27, file: !2, line: 25, type: !13)
!48 = !DILocation(line: 25, column: 13, scope: !27)
!49 = !DILocation(line: 26, column: 2, scope: !27)
!50 = !DILocation(line: 27, column: 16, scope: !51)
!51 = distinct !DILexicalBlock(scope: !52, file: !2, line: 27, column: 4)
!52 = distinct !DILexicalBlock(scope: !27, file: !2, line: 26, column: 2)
!53 = distinct !DISubprogram(name: "$fundef_23", linkageName: "$fundef_23", scope: !54, file: !54, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!54 = !DIFile(filename: "Prelude", directory: ".")
!55 = !DILocalVariable(name: "n", scope: !53, file: !54, line: 1, type: !9)
!56 = !DILocation(line: 1, column: 23, scope: !53)
!57 = !DILocalVariable(name: "$retval_24", scope: !53, file: !54, line: 1, type: !13)
!58 = !DILocation(line: 1, column: 34, scope: !53)
!59 = !DILocalVariable(name: "res", scope: !60, file: !54, line: 1, type: !13)
!60 = distinct !DILexicalBlock(scope: !61, file: !54, line: 1, column: 50)
!61 = distinct !DILexicalBlock(scope: !53, file: !54, line: 1, column: 34)
!62 = !DILocation(line: 1, column: 65, scope: !60)
!63 = !DILocation(line: 1, column: 71, scope: !60)
!64 = !DILocalVariable(name: "$fn_10", scope: !60, file: !54, line: 1, type: !13)
!65 = !DILocation(line: 1, column: 86, scope: !60)
!66 = !DILocalVariable(name: "$g_12", scope: !60, file: !54, line: 1, type: !13)
!67 = !DILocation(line: 1, column: 106, scope: !68)
!68 = distinct !DILexicalBlock(scope: !61, file: !54, line: 1, column: 98)
!69 = distinct !DISubprogram(name: "$fundef_21", linkageName: "$fundef_21", scope: !54, file: !54, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!70 = !DILocalVariable(name: "f0", scope: !69, file: !54, line: 1, type: !13)
!71 = !DILocation(line: 1, column: 6, scope: !69)
!72 = !DILocation(line: 1, column: 34, scope: !69)
!73 = distinct !DISubprogram(name: "$fundef_19", linkageName: "$fundef_19", scope: !54, file: !54, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!74 = !DILocation(line: 1, column: 18, scope: !73)
!75 = distinct !DISubprogram(name: "$fundef_17", linkageName: "$fundef_17", scope: !54, file: !54, line: 1, type: !4, scopeLine: 1, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!76 = !DILocation(line: 1, column: 18, scope: !75)
!77 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !78, file: !78, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!78 = !DIFile(filename: ".", directory: ".")
!79 = !DILocation(line: 0, scope: !77)
!80 = !DILocation(line: 1, column: 18, scope: !77)
!81 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !7)
!82 = !DILocalVariable(name: "$expr_25", scope: !81, file: !2, line: 3, type: !19)
!83 = !DILocation(line: 3, column: 12, scope: !81)
!84 = !DILocalVariable(name: "zero", scope: !81, file: !2, line: 3, type: !9)
!85 = !DILocation(line: 3, column: 5, scope: !81)
!86 = !DILocalVariable(name: "one", scope: !81, file: !2, line: 4, type: !9)
!87 = !DILocation(line: 4, column: 5, scope: !81)
!88 = !DILocation(line: 4, column: 12, scope: !81)
!89 = !DILocalVariable(name: "two", scope: !81, file: !2, line: 5, type: !9)
!90 = !DILocation(line: 5, column: 5, scope: !81)
!91 = !DILocation(line: 5, column: 12, scope: !81)
!92 = !DILocalVariable(name: "three", scope: !81, file: !2, line: 6, type: !9)
!93 = !DILocation(line: 6, column: 5, scope: !81)
!94 = !DILocation(line: 6, column: 13, scope: !81)
!95 = !DILocalVariable(name: "four", scope: !81, file: !2, line: 7, type: !9)
!96 = !DILocation(line: 7, column: 5, scope: !81)
!97 = !DILocation(line: 7, column: 12, scope: !81)
!98 = !DILocalVariable(name: "five", scope: !81, file: !2, line: 8, type: !9)
!99 = !DILocation(line: 8, column: 5, scope: !81)
!100 = !DILocation(line: 8, column: 12, scope: !81)
!101 = !DILocalVariable(name: "six", scope: !81, file: !2, line: 9, type: !9)
!102 = !DILocation(line: 9, column: 5, scope: !81)
!103 = !DILocation(line: 9, column: 11, scope: !81)
!104 = !DILocalVariable(name: "seven", scope: !81, file: !2, line: 10, type: !9)
!105 = !DILocation(line: 10, column: 5, scope: !81)
!106 = !DILocation(line: 10, column: 13, scope: !81)
!107 = !DILocation(line: 13, column: 3, scope: !81)
!108 = !DILocalVariable(name: "$fib_16", scope: !81, file: !2, line: 32, type: !19)
!109 = !DILocation(line: 32, column: 1, scope: !81)
