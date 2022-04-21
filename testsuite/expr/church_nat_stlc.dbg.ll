; (* Church-encoded natural numbers (instantiated to Uint32, so it's basically STLC) *)
; (* zero *)
; let c0 = fun (s : Uint32 -> Uint32) => fun (z : Uint32) => z
; in
; (* one *)
; let c1 = fun (s : Uint32 -> Uint32) => fun (z : Uint32) => s z
; in
; (* two *)
; let c2 = fun (s : Uint32 -> Uint32) => fun (z : Uint32) => let sz = s z in s sz
; in
; let c3 = fun (s : Uint32 -> Uint32) => fun (z : Uint32) => let sz = s z in let ssz = s sz in s ssz
; in
; (* Instantiation for exp *)
; let c3_ = fun (s : (Uint32 -> Uint32) -> (Uint32 -> Uint32)) => fun (z : Uint32 -> Uint32) => let sz = s z in let ssz = s sz in s ssz
; in
; 
; (* addition *)
; let cadd : ((Uint32 -> Uint32) -> Uint32 -> Uint32) -> ((Uint32 -> Uint32) -> Uint32 -> Uint32) -> ((Uint32 -> Uint32) -> Uint32 -> Uint32) =
; fun (m : (Uint32 -> Uint32) -> Uint32 -> Uint32) =>
; fun (n : (Uint32 -> Uint32) -> Uint32 -> Uint32) =>
; fun (s : Uint32 -> Uint32) =>
; fun (z : Uint32) =>
; let nsz = n s z in
; m s nsz
; in
; (* multiplication *)
; let cmul : ((Uint32 -> Uint32) -> Uint32 -> Uint32) -> ((Uint32 -> Uint32) -> Uint32 -> Uint32) -> ((Uint32 -> Uint32) -> Uint32 -> Uint32) =
; fun (m : (Uint32 -> Uint32) -> Uint32 -> Uint32) =>
; fun (n : (Uint32 -> Uint32) -> Uint32 -> Uint32) =>
; fun (s : Uint32 -> Uint32) =>
; let add_m = m s in
; n add_m
; in
; 
; (* instantiated power function *)
; let cexp : ((Uint32 -> Uint32) -> (Uint32 -> Uint32)) -> (((Uint32 -> Uint32) -> (Uint32 -> Uint32)) -> ((Uint32 -> Uint32) -> (Uint32 -> Uint32))) -> ((Uint32 -> Uint32) -> Uint32 -> Uint32) =
; fun (m : (Uint32 -> Uint32) -> Uint32 -> Uint32) =>
; fun (n : (((Uint32 -> Uint32) -> (Uint32 -> Uint32)) -> ((Uint32 -> Uint32) -> (Uint32 -> Uint32)))) =>
; n m
; in
; 
; (* Convert Church-encoded nats to Uint32 *)
; let church_nat_to_uint32 : ((Uint32 -> Uint32) -> Uint32 -> Uint32) -> Uint32 =
; fun (c : (Uint32 -> Uint32) -> Uint32 -> Uint32) =>
; let zero = Uint32 0 in
; let one = Uint32 1 in
; let add1 = fun (x : Uint32) => builtin add one x in
; c add1 zero
; in
; (* tests *)
; let c4 = cmul c2 c2 in
; let c16 = cmul c4 c4 in
; let c32 = cadd c16 c16 in
; let c128 = cmul c4 c32 in
; let c256 = cadd c128 c128 in
; let c65536 = cmul c256 c256 in
; let c131072 = cadd c65536 c65536 in
; let c27 = cexp c3 c3_ in
; let c131099 = cadd c131072 c27 in
; church_nat_to_uint32 c131099
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_77" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%Int32 = type { i32 }
%"$ParamDescr_860" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_861" = type { %ParamDescrString, i32, %"$ParamDescr_860"* }
%"$$fundef_75_env_114" = type { %Uint32 }
%Uint32 = type { i32 }
%"$$fundef_73_env_115" = type {}
%"$$fundef_71_env_116" = type { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } }
%"$$fundef_69_env_117" = type {}
%"$$fundef_67_env_118" = type { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } }
%"$$fundef_65_env_119" = type { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } }
%"$$fundef_63_env_120" = type {}
%"$$fundef_61_env_121" = type { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* } }
%"$$fundef_59_env_122" = type { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } }
%"$$fundef_57_env_123" = type { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } }
%"$$fundef_55_env_124" = type {}
%"$$fundef_53_env_125" = type { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } }
%"$$fundef_51_env_126" = type {}
%"$$fundef_49_env_127" = type { { %Uint32 (i8*, %Uint32)*, i8* } }
%"$$fundef_47_env_128" = type {}
%"$$fundef_45_env_129" = type { { %Uint32 (i8*, %Uint32)*, i8* } }
%"$$fundef_43_env_130" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_78" = global %"$TyDescrTy_PrimTyp_77" zeroinitializer
@"$TyDescr_Int32_79" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_77"* @"$TyDescr_Int32_Prim_78" to i8*) }
@"$TyDescr_Uint32_Prim_80" = global %"$TyDescrTy_PrimTyp_77" { i32 1, i32 0 }
@"$TyDescr_Uint32_81" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_77"* @"$TyDescr_Uint32_Prim_80" to i8*) }
@"$TyDescr_Int64_Prim_82" = global %"$TyDescrTy_PrimTyp_77" { i32 0, i32 1 }
@"$TyDescr_Int64_83" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_77"* @"$TyDescr_Int64_Prim_82" to i8*) }
@"$TyDescr_Uint64_Prim_84" = global %"$TyDescrTy_PrimTyp_77" { i32 1, i32 1 }
@"$TyDescr_Uint64_85" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_77"* @"$TyDescr_Uint64_Prim_84" to i8*) }
@"$TyDescr_Int128_Prim_86" = global %"$TyDescrTy_PrimTyp_77" { i32 0, i32 2 }
@"$TyDescr_Int128_87" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_77"* @"$TyDescr_Int128_Prim_86" to i8*) }
@"$TyDescr_Uint128_Prim_88" = global %"$TyDescrTy_PrimTyp_77" { i32 1, i32 2 }
@"$TyDescr_Uint128_89" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_77"* @"$TyDescr_Uint128_Prim_88" to i8*) }
@"$TyDescr_Int256_Prim_90" = global %"$TyDescrTy_PrimTyp_77" { i32 0, i32 3 }
@"$TyDescr_Int256_91" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_77"* @"$TyDescr_Int256_Prim_90" to i8*) }
@"$TyDescr_Uint256_Prim_92" = global %"$TyDescrTy_PrimTyp_77" { i32 1, i32 3 }
@"$TyDescr_Uint256_93" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_77"* @"$TyDescr_Uint256_Prim_92" to i8*) }
@"$TyDescr_String_Prim_94" = global %"$TyDescrTy_PrimTyp_77" { i32 2, i32 0 }
@"$TyDescr_String_95" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_77"* @"$TyDescr_String_Prim_94" to i8*) }
@"$TyDescr_Bnum_Prim_96" = global %"$TyDescrTy_PrimTyp_77" { i32 3, i32 0 }
@"$TyDescr_Bnum_97" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_77"* @"$TyDescr_Bnum_Prim_96" to i8*) }
@"$TyDescr_Message_Prim_98" = global %"$TyDescrTy_PrimTyp_77" { i32 4, i32 0 }
@"$TyDescr_Message_99" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_77"* @"$TyDescr_Message_Prim_98" to i8*) }
@"$TyDescr_Event_Prim_100" = global %"$TyDescrTy_PrimTyp_77" { i32 5, i32 0 }
@"$TyDescr_Event_101" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_77"* @"$TyDescr_Event_Prim_100" to i8*) }
@"$TyDescr_Exception_Prim_102" = global %"$TyDescrTy_PrimTyp_77" { i32 6, i32 0 }
@"$TyDescr_Exception_103" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_77"* @"$TyDescr_Exception_Prim_102" to i8*) }
@"$TyDescr_ReplicateContr_Prim_104" = global %"$TyDescrTy_PrimTyp_77" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_105" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_77"* @"$TyDescr_ReplicateContr_Prim_104" to i8*) }
@"$TyDescr_Bystr_Prim_106" = global %"$TyDescrTy_PrimTyp_77" { i32 7, i32 0 }
@"$TyDescr_Bystr_107" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_77"* @"$TyDescr_Bystr_Prim_106" to i8*) }
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_101", %_TyDescrTy_Typ* @"$TyDescr_Int64_83", %_TyDescrTy_Typ* @"$TyDescr_Uint256_93", %_TyDescrTy_Typ* @"$TyDescr_Uint32_81", %_TyDescrTy_Typ* @"$TyDescr_Uint64_85", %_TyDescrTy_Typ* @"$TyDescr_Bnum_97", %_TyDescrTy_Typ* @"$TyDescr_Uint128_89", %_TyDescrTy_Typ* @"$TyDescr_Exception_103", %_TyDescrTy_Typ* @"$TyDescr_String_95", %_TyDescrTy_Typ* @"$TyDescr_Int256_91", %_TyDescrTy_Typ* @"$TyDescr_Int128_87", %_TyDescrTy_Typ* @"$TyDescr_Bystr_107", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_105", %_TyDescrTy_Typ* @"$TyDescr_Message_99", %_TyDescrTy_Typ* @"$TyDescr_Int32_79"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_860"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_861"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Uint32 @"$fundef_75"(%"$$fundef_75_env_114"* %0, %Uint32 %1) !dbg !3 {
entry:
  %"$$fundef_75_env_one_504" = getelementptr inbounds %"$$fundef_75_env_114", %"$$fundef_75_env_114"* %0, i32 0, i32 0
  %"$one_envload_505" = load %Uint32, %Uint32* %"$$fundef_75_env_one_504", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_505", %Uint32* %one, align 4
  %"$retval_76" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_76", metadata !8, metadata !DIExpression()), !dbg !10
  %"$gasrem_506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_507" = icmp ugt i64 4, %"$gasrem_506"
  br i1 %"$gascmp_507", label %"$out_of_gas_508", label %"$have_gas_509"

"$out_of_gas_508":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_509"

"$have_gas_509":                                  ; preds = %"$out_of_gas_508", %entry
  %"$consume_510" = sub i64 %"$gasrem_506", 4
  store i64 %"$consume_510", i64* @_gasrem, align 8
  %"$one_511" = load %Uint32, %Uint32* %one, align 4
  %"$add_call_512" = call %Uint32 @_add_Uint32(%Uint32 %"$one_511", %Uint32 %1), !dbg !10
  store %Uint32 %"$add_call_512", %Uint32* %"$retval_76", align 4, !dbg !10
  %"$$retval_76_513" = load %Uint32, %Uint32* %"$retval_76", align 4
  ret %Uint32 %"$$retval_76_513"
}

define internal %Uint32 @"$fundef_73"(%"$$fundef_73_env_115"* %0, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1) !dbg !11 {
entry:
  %"$retval_74" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_74", metadata !12, metadata !DIExpression()), !dbg !13
  %"$gasrem_452" = load i64, i64* @_gasrem, align 8
  %"$gascmp_453" = icmp ugt i64 1, %"$gasrem_452"
  br i1 %"$gascmp_453", label %"$out_of_gas_454", label %"$have_gas_455"

"$out_of_gas_454":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_455"

"$have_gas_455":                                  ; preds = %"$out_of_gas_454", %entry
  %"$consume_456" = sub i64 %"$gasrem_452", 1
  store i64 %"$consume_456", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %zero, metadata !14, metadata !DIExpression()), !dbg !15
  %"$gasrem_457" = load i64, i64* @_gasrem, align 8
  %"$gascmp_458" = icmp ugt i64 1, %"$gasrem_457"
  br i1 %"$gascmp_458", label %"$out_of_gas_459", label %"$have_gas_460"

"$out_of_gas_459":                                ; preds = %"$have_gas_455"
  call void @_out_of_gas()
  br label %"$have_gas_460"

"$have_gas_460":                                  ; preds = %"$out_of_gas_459", %"$have_gas_455"
  %"$consume_461" = sub i64 %"$gasrem_457", 1
  store i64 %"$consume_461", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4, !dbg !16
  %"$gasrem_462" = load i64, i64* @_gasrem, align 8
  %"$gascmp_463" = icmp ugt i64 1, %"$gasrem_462"
  br i1 %"$gascmp_463", label %"$out_of_gas_464", label %"$have_gas_465"

"$out_of_gas_464":                                ; preds = %"$have_gas_460"
  call void @_out_of_gas()
  br label %"$have_gas_465"

"$have_gas_465":                                  ; preds = %"$out_of_gas_464", %"$have_gas_460"
  %"$consume_466" = sub i64 %"$gasrem_462", 1
  store i64 %"$consume_466", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %one, metadata !17, metadata !DIExpression()), !dbg !18
  %"$gasrem_467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_468" = icmp ugt i64 1, %"$gasrem_467"
  br i1 %"$gascmp_468", label %"$out_of_gas_469", label %"$have_gas_470"

"$out_of_gas_469":                                ; preds = %"$have_gas_465"
  call void @_out_of_gas()
  br label %"$have_gas_470"

"$have_gas_470":                                  ; preds = %"$out_of_gas_469", %"$have_gas_465"
  %"$consume_471" = sub i64 %"$gasrem_467", 1
  store i64 %"$consume_471", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !19
  %"$gasrem_472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_473" = icmp ugt i64 1, %"$gasrem_472"
  br i1 %"$gascmp_473", label %"$out_of_gas_474", label %"$have_gas_475"

"$out_of_gas_474":                                ; preds = %"$have_gas_470"
  call void @_out_of_gas()
  br label %"$have_gas_475"

"$have_gas_475":                                  ; preds = %"$out_of_gas_474", %"$have_gas_470"
  %"$consume_476" = sub i64 %"$gasrem_472", 1
  store i64 %"$consume_476", i64* @_gasrem, align 8
  %add1 = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_478" = icmp ugt i64 1, %"$gasrem_477"
  br i1 %"$gascmp_478", label %"$out_of_gas_479", label %"$have_gas_480"

"$out_of_gas_479":                                ; preds = %"$have_gas_475"
  call void @_out_of_gas()
  br label %"$have_gas_480"

"$have_gas_480":                                  ; preds = %"$out_of_gas_479", %"$have_gas_475"
  %"$consume_481" = sub i64 %"$gasrem_477", 1
  store i64 %"$consume_481", i64* @_gasrem, align 8
  %"$$fundef_75_envp_482_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_75_envp_482_salloc" = call i8* @_salloc(i8* %"$$fundef_75_envp_482_load", i64 4)
  %"$$fundef_75_envp_482" = bitcast i8* %"$$fundef_75_envp_482_salloc" to %"$$fundef_75_env_114"*
  %"$$fundef_75_env_voidp_484" = bitcast %"$$fundef_75_env_114"* %"$$fundef_75_envp_482" to i8*
  %"$$fundef_75_cloval_485" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_75_env_114"*, %Uint32)* @"$fundef_75" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_75_env_voidp_484", 1
  %"$$fundef_75_env_one_486" = getelementptr inbounds %"$$fundef_75_env_114", %"$$fundef_75_env_114"* %"$$fundef_75_envp_482", i32 0, i32 0
  %"$one_487" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_487", %Uint32* %"$$fundef_75_env_one_486", align 4
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_75_cloval_485", { %Uint32 (i8*, %Uint32)*, i8* }* %add1, align 8, !dbg !20
  %"$gasrem_488" = load i64, i64* @_gasrem, align 8
  %"$gascmp_489" = icmp ugt i64 1, %"$gasrem_488"
  br i1 %"$gascmp_489", label %"$out_of_gas_490", label %"$have_gas_491"

"$out_of_gas_490":                                ; preds = %"$have_gas_480"
  call void @_out_of_gas()
  br label %"$have_gas_491"

"$have_gas_491":                                  ; preds = %"$out_of_gas_490", %"$have_gas_480"
  %"$consume_492" = sub i64 %"$gasrem_488", 1
  store i64 %"$consume_492", i64* @_gasrem, align 8
  %"$c_21" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$c_fptr_493" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1, 0
  %"$c_envptr_494" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1, 1
  %"$add1_495" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %add1, align 8
  %"$c_call_496" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$c_fptr_493"(i8* %"$c_envptr_494", { %Uint32 (i8*, %Uint32)*, i8* } %"$add1_495"), !dbg !21
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$c_call_496", { %Uint32 (i8*, %Uint32)*, i8* }* %"$c_21", align 8, !dbg !21
  %"$c_22" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$c_22", metadata !22, metadata !DIExpression()), !dbg !21
  %"$$c_21_497" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$c_21", align 8
  %"$$c_21_fptr_498" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$c_21_497", 0
  %"$$c_21_envptr_499" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$c_21_497", 1
  %"$zero_500" = load %Uint32, %Uint32* %zero, align 4
  %"$$c_21_call_501" = call %Uint32 %"$$c_21_fptr_498"(i8* %"$$c_21_envptr_499", %Uint32 %"$zero_500"), !dbg !21
  store %Uint32 %"$$c_21_call_501", %Uint32* %"$c_22", align 4, !dbg !21
  %"$$c_22_502" = load %Uint32, %Uint32* %"$c_22", align 4
  store %Uint32 %"$$c_22_502", %Uint32* %"$retval_74", align 4, !dbg !21
  %"$$retval_74_503" = load %Uint32, %Uint32* %"$retval_74", align 4
  ret %Uint32 %"$$retval_74_503"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_71"(%"$$fundef_71_env_116"* %0, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %1) !dbg !23 {
entry:
  %"$$fundef_71_env_m_439" = getelementptr inbounds %"$$fundef_71_env_116", %"$$fundef_71_env_116"* %0, i32 0, i32 0
  %"$m_envload_440" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_71_env_m_439", align 8
  %m = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_envload_440", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m, align 8
  %"$retval_72" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_442" = icmp ugt i64 1, %"$gasrem_441"
  br i1 %"$gascmp_442", label %"$out_of_gas_443", label %"$have_gas_444"

"$out_of_gas_443":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_444"

"$have_gas_444":                                  ; preds = %"$out_of_gas_443", %entry
  %"$consume_445" = sub i64 %"$gasrem_441", 1
  store i64 %"$consume_445", i64* @_gasrem, align 8
  %"$n_20" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$n_fptr_446" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %1, 0
  %"$n_envptr_447" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %1, 1
  %"$m_448" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m, align 8
  %"$n_call_449" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_fptr_446"(i8* %"$n_envptr_447", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_448"), !dbg !24
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_call_449", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$n_20", align 8, !dbg !24
  %"$$n_20_450" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$n_20", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$n_20_450", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_72", align 8, !dbg !24
  %"$$retval_72_451" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_72", align 8
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_72_451"
}

define internal { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } @"$fundef_69"(%"$$fundef_69_env_117"* %0, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1) !dbg !25 {
entry:
  %"$retval_70" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_429" = icmp ugt i64 1, %"$gasrem_428"
  br i1 %"$gascmp_429", label %"$out_of_gas_430", label %"$have_gas_431"

"$out_of_gas_430":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_431"

"$have_gas_431":                                  ; preds = %"$out_of_gas_430", %entry
  %"$consume_432" = sub i64 %"$gasrem_428", 1
  store i64 %"$consume_432", i64* @_gasrem, align 8
  %"$$fundef_71_envp_433_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_71_envp_433_salloc" = call i8* @_salloc(i8* %"$$fundef_71_envp_433_load", i64 16)
  %"$$fundef_71_envp_433" = bitcast i8* %"$$fundef_71_envp_433_salloc" to %"$$fundef_71_env_116"*
  %"$$fundef_71_env_voidp_435" = bitcast %"$$fundef_71_env_116"* %"$$fundef_71_envp_433" to i8*
  %"$$fundef_71_cloval_436" = insertvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_71_env_116"*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })* @"$fundef_71" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*), i8* undef }, i8* %"$$fundef_71_env_voidp_435", 1
  %"$$fundef_71_env_m_437" = getelementptr inbounds %"$$fundef_71_env_116", %"$$fundef_71_env_116"* %"$$fundef_71_envp_433", i32 0, i32 0
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_71_env_m_437", align 8
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } %"$$fundef_71_cloval_436", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* }* %"$retval_70", align 8, !dbg !26
  %"$$retval_70_438" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* }* %"$retval_70", align 8
  ret { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } %"$$retval_70_438"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_67"(%"$$fundef_67_env_118"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) !dbg !27 {
entry:
  %"$$fundef_67_env_m_397" = getelementptr inbounds %"$$fundef_67_env_118", %"$$fundef_67_env_118"* %0, i32 0, i32 0
  %"$m_envload_398" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_67_env_m_397", align 8
  %m = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_envload_398", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m, align 8
  %"$$fundef_67_env_n_399" = getelementptr inbounds %"$$fundef_67_env_118", %"$$fundef_67_env_118"* %0, i32 0, i32 1
  %"$n_envload_400" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_67_env_n_399", align 8
  %n = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_envload_400", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %n, align 8
  %"$retval_68" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_401" = load i64, i64* @_gasrem, align 8
  %"$gascmp_402" = icmp ugt i64 1, %"$gasrem_401"
  br i1 %"$gascmp_402", label %"$out_of_gas_403", label %"$have_gas_404"

"$out_of_gas_403":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_404"

"$have_gas_404":                                  ; preds = %"$out_of_gas_403", %entry
  %"$consume_405" = sub i64 %"$gasrem_401", 1
  store i64 %"$consume_405", i64* @_gasrem, align 8
  %add_m = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_406" = load i64, i64* @_gasrem, align 8
  %"$gascmp_407" = icmp ugt i64 1, %"$gasrem_406"
  br i1 %"$gascmp_407", label %"$out_of_gas_408", label %"$have_gas_409"

"$out_of_gas_408":                                ; preds = %"$have_gas_404"
  call void @_out_of_gas()
  br label %"$have_gas_409"

"$have_gas_409":                                  ; preds = %"$out_of_gas_408", %"$have_gas_404"
  %"$consume_410" = sub i64 %"$gasrem_406", 1
  store i64 %"$consume_410", i64* @_gasrem, align 8
  %"$m_18" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$m_411" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m, align 8
  %"$m_fptr_412" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_411", 0
  %"$m_envptr_413" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_411", 1
  %"$m_call_414" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$m_fptr_412"(i8* %"$m_envptr_413", { %Uint32 (i8*, %Uint32)*, i8* } %1), !dbg !28
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$m_call_414", { %Uint32 (i8*, %Uint32)*, i8* }* %"$m_18", align 8, !dbg !28
  %"$$m_18_415" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$m_18", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$m_18_415", { %Uint32 (i8*, %Uint32)*, i8* }* %add_m, align 8, !dbg !28
  %"$gasrem_416" = load i64, i64* @_gasrem, align 8
  %"$gascmp_417" = icmp ugt i64 1, %"$gasrem_416"
  br i1 %"$gascmp_417", label %"$out_of_gas_418", label %"$have_gas_419"

"$out_of_gas_418":                                ; preds = %"$have_gas_409"
  call void @_out_of_gas()
  br label %"$have_gas_419"

"$have_gas_419":                                  ; preds = %"$out_of_gas_418", %"$have_gas_409"
  %"$consume_420" = sub i64 %"$gasrem_416", 1
  store i64 %"$consume_420", i64* @_gasrem, align 8
  %"$n_19" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$n_421" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %n, align 8
  %"$n_fptr_422" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_421", 0
  %"$n_envptr_423" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_421", 1
  %"$add_m_424" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %add_m, align 8
  %"$n_call_425" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$n_fptr_422"(i8* %"$n_envptr_423", { %Uint32 (i8*, %Uint32)*, i8* } %"$add_m_424"), !dbg !29
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$n_call_425", { %Uint32 (i8*, %Uint32)*, i8* }* %"$n_19", align 8, !dbg !29
  %"$$n_19_426" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$n_19", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$n_19_426", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_68", align 8, !dbg !29
  %"$$retval_68_427" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_68", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_68_427"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_65"(%"$$fundef_65_env_119"* %0, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1) !dbg !30 {
entry:
  %"$$fundef_65_env_m_382" = getelementptr inbounds %"$$fundef_65_env_119", %"$$fundef_65_env_119"* %0, i32 0, i32 0
  %"$m_envload_383" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_65_env_m_382", align 8
  %m = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_envload_383", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m, align 8
  %"$retval_66" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_385" = icmp ugt i64 1, %"$gasrem_384"
  br i1 %"$gascmp_385", label %"$out_of_gas_386", label %"$have_gas_387"

"$out_of_gas_386":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_387"

"$have_gas_387":                                  ; preds = %"$out_of_gas_386", %entry
  %"$consume_388" = sub i64 %"$gasrem_384", 1
  store i64 %"$consume_388", i64* @_gasrem, align 8
  %"$$fundef_67_envp_389_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_67_envp_389_salloc" = call i8* @_salloc(i8* %"$$fundef_67_envp_389_load", i64 32)
  %"$$fundef_67_envp_389" = bitcast i8* %"$$fundef_67_envp_389_salloc" to %"$$fundef_67_env_118"*
  %"$$fundef_67_env_voidp_391" = bitcast %"$$fundef_67_env_118"* %"$$fundef_67_envp_389" to i8*
  %"$$fundef_67_cloval_392" = insertvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_67_env_118"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_67" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* undef }, i8* %"$$fundef_67_env_voidp_391", 1
  %"$$fundef_67_env_m_393" = getelementptr inbounds %"$$fundef_67_env_118", %"$$fundef_67_env_118"* %"$$fundef_67_envp_389", i32 0, i32 0
  %"$m_394" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_394", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_67_env_m_393", align 8
  %"$$fundef_67_env_n_395" = getelementptr inbounds %"$$fundef_67_env_118", %"$$fundef_67_env_118"* %"$$fundef_67_envp_389", i32 0, i32 1
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_67_env_n_395", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$fundef_67_cloval_392", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_66", align 8, !dbg !31
  %"$$retval_66_396" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_66", align 8
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_66_396"
}

define internal { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } @"$fundef_63"(%"$$fundef_63_env_120"* %0, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1) !dbg !32 {
entry:
  %"$retval_64" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_371" = load i64, i64* @_gasrem, align 8
  %"$gascmp_372" = icmp ugt i64 1, %"$gasrem_371"
  br i1 %"$gascmp_372", label %"$out_of_gas_373", label %"$have_gas_374"

"$out_of_gas_373":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_374"

"$have_gas_374":                                  ; preds = %"$out_of_gas_373", %entry
  %"$consume_375" = sub i64 %"$gasrem_371", 1
  store i64 %"$consume_375", i64* @_gasrem, align 8
  %"$$fundef_65_envp_376_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_65_envp_376_salloc" = call i8* @_salloc(i8* %"$$fundef_65_envp_376_load", i64 16)
  %"$$fundef_65_envp_376" = bitcast i8* %"$$fundef_65_envp_376_salloc" to %"$$fundef_65_env_119"*
  %"$$fundef_65_env_voidp_378" = bitcast %"$$fundef_65_env_119"* %"$$fundef_65_envp_376" to i8*
  %"$$fundef_65_cloval_379" = insertvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_65_env_119"*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* @"$fundef_65" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*), i8* undef }, i8* %"$$fundef_65_env_voidp_378", 1
  %"$$fundef_65_env_m_380" = getelementptr inbounds %"$$fundef_65_env_119", %"$$fundef_65_env_119"* %"$$fundef_65_envp_376", i32 0, i32 0
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_65_env_m_380", align 8
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$fundef_65_cloval_379", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$retval_64", align 8, !dbg !33
  %"$$retval_64_381" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$retval_64", align 8
  ret { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$retval_64_381"
}

define internal %Uint32 @"$fundef_61"(%"$$fundef_61_env_121"* %0, %Uint32 %1) !dbg !34 {
entry:
  %"$$fundef_61_env_m_328" = getelementptr inbounds %"$$fundef_61_env_121", %"$$fundef_61_env_121"* %0, i32 0, i32 0
  %"$m_envload_329" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_61_env_m_328", align 8
  %m = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_envload_329", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m, align 8
  %"$$fundef_61_env_n_330" = getelementptr inbounds %"$$fundef_61_env_121", %"$$fundef_61_env_121"* %0, i32 0, i32 1
  %"$n_envload_331" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_61_env_n_330", align 8
  %n = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_envload_331", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %n, align 8
  %"$$fundef_61_env_s_332" = getelementptr inbounds %"$$fundef_61_env_121", %"$$fundef_61_env_121"* %0, i32 0, i32 2
  %"$s_envload_333" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_61_env_s_332", align 8
  %s = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_envload_333", { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$retval_62" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_62", metadata !35, metadata !DIExpression()), !dbg !36
  %"$gasrem_334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_335" = icmp ugt i64 1, %"$gasrem_334"
  br i1 %"$gascmp_335", label %"$out_of_gas_336", label %"$have_gas_337"

"$out_of_gas_336":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_337"

"$have_gas_337":                                  ; preds = %"$out_of_gas_336", %entry
  %"$consume_338" = sub i64 %"$gasrem_334", 1
  store i64 %"$consume_338", i64* @_gasrem, align 8
  %nsz = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %nsz, metadata !37, metadata !DIExpression()), !dbg !38
  %"$gasrem_339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_340" = icmp ugt i64 1, %"$gasrem_339"
  br i1 %"$gascmp_340", label %"$out_of_gas_341", label %"$have_gas_342"

"$out_of_gas_341":                                ; preds = %"$have_gas_337"
  call void @_out_of_gas()
  br label %"$have_gas_342"

"$have_gas_342":                                  ; preds = %"$out_of_gas_341", %"$have_gas_337"
  %"$consume_343" = sub i64 %"$gasrem_339", 1
  store i64 %"$consume_343", i64* @_gasrem, align 8
  %"$n_14" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$n_344" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %n, align 8
  %"$n_fptr_345" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_344", 0
  %"$n_envptr_346" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_344", 1
  %"$s_347" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$n_call_348" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$n_fptr_345"(i8* %"$n_envptr_346", { %Uint32 (i8*, %Uint32)*, i8* } %"$s_347"), !dbg !39
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$n_call_348", { %Uint32 (i8*, %Uint32)*, i8* }* %"$n_14", align 8, !dbg !39
  %"$n_15" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$n_15", metadata !40, metadata !DIExpression()), !dbg !39
  %"$$n_14_349" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$n_14", align 8
  %"$$n_14_fptr_350" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$n_14_349", 0
  %"$$n_14_envptr_351" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$n_14_349", 1
  %"$$n_14_call_352" = call %Uint32 %"$$n_14_fptr_350"(i8* %"$$n_14_envptr_351", %Uint32 %1), !dbg !39
  store %Uint32 %"$$n_14_call_352", %Uint32* %"$n_15", align 4, !dbg !39
  %"$$n_15_353" = load %Uint32, %Uint32* %"$n_15", align 4
  store %Uint32 %"$$n_15_353", %Uint32* %nsz, align 4, !dbg !39
  %"$gasrem_354" = load i64, i64* @_gasrem, align 8
  %"$gascmp_355" = icmp ugt i64 1, %"$gasrem_354"
  br i1 %"$gascmp_355", label %"$out_of_gas_356", label %"$have_gas_357"

"$out_of_gas_356":                                ; preds = %"$have_gas_342"
  call void @_out_of_gas()
  br label %"$have_gas_357"

"$have_gas_357":                                  ; preds = %"$out_of_gas_356", %"$have_gas_342"
  %"$consume_358" = sub i64 %"$gasrem_354", 1
  store i64 %"$consume_358", i64* @_gasrem, align 8
  %"$m_16" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$m_359" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m, align 8
  %"$m_fptr_360" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_359", 0
  %"$m_envptr_361" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_359", 1
  %"$s_362" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$m_call_363" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$m_fptr_360"(i8* %"$m_envptr_361", { %Uint32 (i8*, %Uint32)*, i8* } %"$s_362"), !dbg !41
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$m_call_363", { %Uint32 (i8*, %Uint32)*, i8* }* %"$m_16", align 8, !dbg !41
  %"$m_17" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$m_17", metadata !42, metadata !DIExpression()), !dbg !41
  %"$$m_16_364" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$m_16", align 8
  %"$$m_16_fptr_365" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$m_16_364", 0
  %"$$m_16_envptr_366" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$m_16_364", 1
  %"$nsz_367" = load %Uint32, %Uint32* %nsz, align 4
  %"$$m_16_call_368" = call %Uint32 %"$$m_16_fptr_365"(i8* %"$$m_16_envptr_366", %Uint32 %"$nsz_367"), !dbg !41
  store %Uint32 %"$$m_16_call_368", %Uint32* %"$m_17", align 4, !dbg !41
  %"$$m_17_369" = load %Uint32, %Uint32* %"$m_17", align 4
  store %Uint32 %"$$m_17_369", %Uint32* %"$retval_62", align 4, !dbg !41
  %"$$retval_62_370" = load %Uint32, %Uint32* %"$retval_62", align 4
  ret %Uint32 %"$$retval_62_370"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_59"(%"$$fundef_59_env_122"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) !dbg !43 {
entry:
  %"$$fundef_59_env_m_309" = getelementptr inbounds %"$$fundef_59_env_122", %"$$fundef_59_env_122"* %0, i32 0, i32 0
  %"$m_envload_310" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_59_env_m_309", align 8
  %m = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_envload_310", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m, align 8
  %"$$fundef_59_env_n_311" = getelementptr inbounds %"$$fundef_59_env_122", %"$$fundef_59_env_122"* %0, i32 0, i32 1
  %"$n_envload_312" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_59_env_n_311", align 8
  %n = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_envload_312", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %n, align 8
  %"$retval_60" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_314" = icmp ugt i64 1, %"$gasrem_313"
  br i1 %"$gascmp_314", label %"$out_of_gas_315", label %"$have_gas_316"

"$out_of_gas_315":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_316"

"$have_gas_316":                                  ; preds = %"$out_of_gas_315", %entry
  %"$consume_317" = sub i64 %"$gasrem_313", 1
  store i64 %"$consume_317", i64* @_gasrem, align 8
  %"$$fundef_61_envp_318_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_61_envp_318_salloc" = call i8* @_salloc(i8* %"$$fundef_61_envp_318_load", i64 48)
  %"$$fundef_61_envp_318" = bitcast i8* %"$$fundef_61_envp_318_salloc" to %"$$fundef_61_env_121"*
  %"$$fundef_61_env_voidp_320" = bitcast %"$$fundef_61_env_121"* %"$$fundef_61_envp_318" to i8*
  %"$$fundef_61_cloval_321" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_61_env_121"*, %Uint32)* @"$fundef_61" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_61_env_voidp_320", 1
  %"$$fundef_61_env_m_322" = getelementptr inbounds %"$$fundef_61_env_121", %"$$fundef_61_env_121"* %"$$fundef_61_envp_318", i32 0, i32 0
  %"$m_323" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_323", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_61_env_m_322", align 8
  %"$$fundef_61_env_n_324" = getelementptr inbounds %"$$fundef_61_env_121", %"$$fundef_61_env_121"* %"$$fundef_61_envp_318", i32 0, i32 1
  %"$n_325" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %n, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_325", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_61_env_n_324", align 8
  %"$$fundef_61_env_s_326" = getelementptr inbounds %"$$fundef_61_env_121", %"$$fundef_61_env_121"* %"$$fundef_61_envp_318", i32 0, i32 2
  store { %Uint32 (i8*, %Uint32)*, i8* } %1, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_61_env_s_326", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_61_cloval_321", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_60", align 8, !dbg !44
  %"$$retval_60_327" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_60", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_60_327"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_57"(%"$$fundef_57_env_123"* %0, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1) !dbg !45 {
entry:
  %"$$fundef_57_env_m_294" = getelementptr inbounds %"$$fundef_57_env_123", %"$$fundef_57_env_123"* %0, i32 0, i32 0
  %"$m_envload_295" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_57_env_m_294", align 8
  %m = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_envload_295", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m, align 8
  %"$retval_58" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_297" = icmp ugt i64 1, %"$gasrem_296"
  br i1 %"$gascmp_297", label %"$out_of_gas_298", label %"$have_gas_299"

"$out_of_gas_298":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_299"

"$have_gas_299":                                  ; preds = %"$out_of_gas_298", %entry
  %"$consume_300" = sub i64 %"$gasrem_296", 1
  store i64 %"$consume_300", i64* @_gasrem, align 8
  %"$$fundef_59_envp_301_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_59_envp_301_salloc" = call i8* @_salloc(i8* %"$$fundef_59_envp_301_load", i64 32)
  %"$$fundef_59_envp_301" = bitcast i8* %"$$fundef_59_envp_301_salloc" to %"$$fundef_59_env_122"*
  %"$$fundef_59_env_voidp_303" = bitcast %"$$fundef_59_env_122"* %"$$fundef_59_envp_301" to i8*
  %"$$fundef_59_cloval_304" = insertvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_59_env_122"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_59" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* undef }, i8* %"$$fundef_59_env_voidp_303", 1
  %"$$fundef_59_env_m_305" = getelementptr inbounds %"$$fundef_59_env_122", %"$$fundef_59_env_122"* %"$$fundef_59_envp_301", i32 0, i32 0
  %"$m_306" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_306", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_59_env_m_305", align 8
  %"$$fundef_59_env_n_307" = getelementptr inbounds %"$$fundef_59_env_122", %"$$fundef_59_env_122"* %"$$fundef_59_envp_301", i32 0, i32 1
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_59_env_n_307", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$fundef_59_cloval_304", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_58", align 8, !dbg !46
  %"$$retval_58_308" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_58", align 8
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_58_308"
}

define internal { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } @"$fundef_55"(%"$$fundef_55_env_124"* %0, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1) !dbg !47 {
entry:
  %"$retval_56" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_283" = load i64, i64* @_gasrem, align 8
  %"$gascmp_284" = icmp ugt i64 1, %"$gasrem_283"
  br i1 %"$gascmp_284", label %"$out_of_gas_285", label %"$have_gas_286"

"$out_of_gas_285":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_286"

"$have_gas_286":                                  ; preds = %"$out_of_gas_285", %entry
  %"$consume_287" = sub i64 %"$gasrem_283", 1
  store i64 %"$consume_287", i64* @_gasrem, align 8
  %"$$fundef_57_envp_288_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_57_envp_288_salloc" = call i8* @_salloc(i8* %"$$fundef_57_envp_288_load", i64 16)
  %"$$fundef_57_envp_288" = bitcast i8* %"$$fundef_57_envp_288_salloc" to %"$$fundef_57_env_123"*
  %"$$fundef_57_env_voidp_290" = bitcast %"$$fundef_57_env_123"* %"$$fundef_57_envp_288" to i8*
  %"$$fundef_57_cloval_291" = insertvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_57_env_123"*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* @"$fundef_57" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*), i8* undef }, i8* %"$$fundef_57_env_voidp_290", 1
  %"$$fundef_57_env_m_292" = getelementptr inbounds %"$$fundef_57_env_123", %"$$fundef_57_env_123"* %"$$fundef_57_envp_288", i32 0, i32 0
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_57_env_m_292", align 8
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$fundef_57_cloval_291", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$retval_56", align 8, !dbg !48
  %"$$retval_56_293" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$retval_56", align 8
  ret { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$retval_56_293"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_53"(%"$$fundef_53_env_125"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) !dbg !49 {
entry:
  %"$$fundef_53_env_s_238" = getelementptr inbounds %"$$fundef_53_env_125", %"$$fundef_53_env_125"* %0, i32 0, i32 0
  %"$s_envload_239" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_53_env_s_238", align 8
  %s = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$s_envload_239", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %s, align 8
  %"$retval_54" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_240" = load i64, i64* @_gasrem, align 8
  %"$gascmp_241" = icmp ugt i64 1, %"$gasrem_240"
  br i1 %"$gascmp_241", label %"$out_of_gas_242", label %"$have_gas_243"

"$out_of_gas_242":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_243"

"$have_gas_243":                                  ; preds = %"$out_of_gas_242", %entry
  %"$consume_244" = sub i64 %"$gasrem_240", 1
  store i64 %"$consume_244", i64* @_gasrem, align 8
  %sz = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_245" = load i64, i64* @_gasrem, align 8
  %"$gascmp_246" = icmp ugt i64 1, %"$gasrem_245"
  br i1 %"$gascmp_246", label %"$out_of_gas_247", label %"$have_gas_248"

"$out_of_gas_247":                                ; preds = %"$have_gas_243"
  call void @_out_of_gas()
  br label %"$have_gas_248"

"$have_gas_248":                                  ; preds = %"$out_of_gas_247", %"$have_gas_243"
  %"$consume_249" = sub i64 %"$gasrem_245", 1
  store i64 %"$consume_249", i64* @_gasrem, align 8
  %"$s_11" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$s_250" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %s, align 8
  %"$s_fptr_251" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$s_250", 0
  %"$s_envptr_252" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$s_250", 1
  %"$s_call_253" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$s_fptr_251"(i8* %"$s_envptr_252", { %Uint32 (i8*, %Uint32)*, i8* } %1), !dbg !50
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_call_253", { %Uint32 (i8*, %Uint32)*, i8* }* %"$s_11", align 8, !dbg !50
  %"$$s_11_254" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$s_11", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$s_11_254", { %Uint32 (i8*, %Uint32)*, i8* }* %sz, align 8, !dbg !50
  %"$gasrem_255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_256" = icmp ugt i64 1, %"$gasrem_255"
  br i1 %"$gascmp_256", label %"$out_of_gas_257", label %"$have_gas_258"

"$out_of_gas_257":                                ; preds = %"$have_gas_248"
  call void @_out_of_gas()
  br label %"$have_gas_258"

"$have_gas_258":                                  ; preds = %"$out_of_gas_257", %"$have_gas_248"
  %"$consume_259" = sub i64 %"$gasrem_255", 1
  store i64 %"$consume_259", i64* @_gasrem, align 8
  %ssz = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_261" = icmp ugt i64 1, %"$gasrem_260"
  br i1 %"$gascmp_261", label %"$out_of_gas_262", label %"$have_gas_263"

"$out_of_gas_262":                                ; preds = %"$have_gas_258"
  call void @_out_of_gas()
  br label %"$have_gas_263"

"$have_gas_263":                                  ; preds = %"$out_of_gas_262", %"$have_gas_258"
  %"$consume_264" = sub i64 %"$gasrem_260", 1
  store i64 %"$consume_264", i64* @_gasrem, align 8
  %"$s_12" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$s_265" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %s, align 8
  %"$s_fptr_266" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$s_265", 0
  %"$s_envptr_267" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$s_265", 1
  %"$sz_268" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %sz, align 8
  %"$s_call_269" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$s_fptr_266"(i8* %"$s_envptr_267", { %Uint32 (i8*, %Uint32)*, i8* } %"$sz_268"), !dbg !51
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_call_269", { %Uint32 (i8*, %Uint32)*, i8* }* %"$s_12", align 8, !dbg !51
  %"$$s_12_270" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$s_12", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$s_12_270", { %Uint32 (i8*, %Uint32)*, i8* }* %ssz, align 8, !dbg !51
  %"$gasrem_271" = load i64, i64* @_gasrem, align 8
  %"$gascmp_272" = icmp ugt i64 1, %"$gasrem_271"
  br i1 %"$gascmp_272", label %"$out_of_gas_273", label %"$have_gas_274"

"$out_of_gas_273":                                ; preds = %"$have_gas_263"
  call void @_out_of_gas()
  br label %"$have_gas_274"

"$have_gas_274":                                  ; preds = %"$out_of_gas_273", %"$have_gas_263"
  %"$consume_275" = sub i64 %"$gasrem_271", 1
  store i64 %"$consume_275", i64* @_gasrem, align 8
  %"$s_13" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$s_276" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %s, align 8
  %"$s_fptr_277" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$s_276", 0
  %"$s_envptr_278" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$s_276", 1
  %"$ssz_279" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %ssz, align 8
  %"$s_call_280" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$s_fptr_277"(i8* %"$s_envptr_278", { %Uint32 (i8*, %Uint32)*, i8* } %"$ssz_279"), !dbg !52
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_call_280", { %Uint32 (i8*, %Uint32)*, i8* }* %"$s_13", align 8, !dbg !52
  %"$$s_13_281" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$s_13", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$s_13_281", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_54", align 8, !dbg !52
  %"$$retval_54_282" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_54", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_54_282"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_51"(%"$$fundef_51_env_126"* %0, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1) !dbg !53 {
entry:
  %"$retval_52" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_228" = icmp ugt i64 1, %"$gasrem_227"
  br i1 %"$gascmp_228", label %"$out_of_gas_229", label %"$have_gas_230"

"$out_of_gas_229":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_230"

"$have_gas_230":                                  ; preds = %"$out_of_gas_229", %entry
  %"$consume_231" = sub i64 %"$gasrem_227", 1
  store i64 %"$consume_231", i64* @_gasrem, align 8
  %"$$fundef_53_envp_232_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_53_envp_232_salloc" = call i8* @_salloc(i8* %"$$fundef_53_envp_232_load", i64 16)
  %"$$fundef_53_envp_232" = bitcast i8* %"$$fundef_53_envp_232_salloc" to %"$$fundef_53_env_125"*
  %"$$fundef_53_env_voidp_234" = bitcast %"$$fundef_53_env_125"* %"$$fundef_53_envp_232" to i8*
  %"$$fundef_53_cloval_235" = insertvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_53_env_125"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_53" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* undef }, i8* %"$$fundef_53_env_voidp_234", 1
  %"$$fundef_53_env_s_236" = getelementptr inbounds %"$$fundef_53_env_125", %"$$fundef_53_env_125"* %"$$fundef_53_envp_232", i32 0, i32 0
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_53_env_s_236", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$fundef_53_cloval_235", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_52", align 8, !dbg !54
  %"$$retval_52_237" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_52", align 8
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_52_237"
}

define internal %Uint32 @"$fundef_49"(%"$$fundef_49_env_127"* %0, %Uint32 %1) !dbg !55 {
entry:
  %"$$fundef_49_env_s_182" = getelementptr inbounds %"$$fundef_49_env_127", %"$$fundef_49_env_127"* %0, i32 0, i32 0
  %"$s_envload_183" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_49_env_s_182", align 8
  %s = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_envload_183", { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$retval_50" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_50", metadata !56, metadata !DIExpression()), !dbg !57
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %entry
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem, align 8
  %sz = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %sz, metadata !58, metadata !DIExpression()), !dbg !59
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 1, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %"$have_gas_187"
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %"$have_gas_187"
  %"$consume_193" = sub i64 %"$gasrem_189", 1
  store i64 %"$consume_193", i64* @_gasrem, align 8
  %"$s_8" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$s_8", metadata !60, metadata !DIExpression()), !dbg !61
  %"$s_194" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$s_fptr_195" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_194", 0
  %"$s_envptr_196" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_194", 1
  %"$s_call_197" = call %Uint32 %"$s_fptr_195"(i8* %"$s_envptr_196", %Uint32 %1), !dbg !61
  store %Uint32 %"$s_call_197", %Uint32* %"$s_8", align 4, !dbg !61
  %"$$s_8_198" = load %Uint32, %Uint32* %"$s_8", align 4
  store %Uint32 %"$$s_8_198", %Uint32* %sz, align 4, !dbg !61
  %"$gasrem_199" = load i64, i64* @_gasrem, align 8
  %"$gascmp_200" = icmp ugt i64 1, %"$gasrem_199"
  br i1 %"$gascmp_200", label %"$out_of_gas_201", label %"$have_gas_202"

"$out_of_gas_201":                                ; preds = %"$have_gas_192"
  call void @_out_of_gas()
  br label %"$have_gas_202"

"$have_gas_202":                                  ; preds = %"$out_of_gas_201", %"$have_gas_192"
  %"$consume_203" = sub i64 %"$gasrem_199", 1
  store i64 %"$consume_203", i64* @_gasrem, align 8
  %ssz = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %ssz, metadata !62, metadata !DIExpression()), !dbg !63
  %"$gasrem_204" = load i64, i64* @_gasrem, align 8
  %"$gascmp_205" = icmp ugt i64 1, %"$gasrem_204"
  br i1 %"$gascmp_205", label %"$out_of_gas_206", label %"$have_gas_207"

"$out_of_gas_206":                                ; preds = %"$have_gas_202"
  call void @_out_of_gas()
  br label %"$have_gas_207"

"$have_gas_207":                                  ; preds = %"$out_of_gas_206", %"$have_gas_202"
  %"$consume_208" = sub i64 %"$gasrem_204", 1
  store i64 %"$consume_208", i64* @_gasrem, align 8
  %"$s_9" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$s_9", metadata !64, metadata !DIExpression()), !dbg !65
  %"$s_209" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$s_fptr_210" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_209", 0
  %"$s_envptr_211" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_209", 1
  %"$sz_212" = load %Uint32, %Uint32* %sz, align 4
  %"$s_call_213" = call %Uint32 %"$s_fptr_210"(i8* %"$s_envptr_211", %Uint32 %"$sz_212"), !dbg !65
  store %Uint32 %"$s_call_213", %Uint32* %"$s_9", align 4, !dbg !65
  %"$$s_9_214" = load %Uint32, %Uint32* %"$s_9", align 4
  store %Uint32 %"$$s_9_214", %Uint32* %ssz, align 4, !dbg !65
  %"$gasrem_215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_216" = icmp ugt i64 1, %"$gasrem_215"
  br i1 %"$gascmp_216", label %"$out_of_gas_217", label %"$have_gas_218"

"$out_of_gas_217":                                ; preds = %"$have_gas_207"
  call void @_out_of_gas()
  br label %"$have_gas_218"

"$have_gas_218":                                  ; preds = %"$out_of_gas_217", %"$have_gas_207"
  %"$consume_219" = sub i64 %"$gasrem_215", 1
  store i64 %"$consume_219", i64* @_gasrem, align 8
  %"$s_10" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$s_10", metadata !66, metadata !DIExpression()), !dbg !67
  %"$s_220" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$s_fptr_221" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_220", 0
  %"$s_envptr_222" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_220", 1
  %"$ssz_223" = load %Uint32, %Uint32* %ssz, align 4
  %"$s_call_224" = call %Uint32 %"$s_fptr_221"(i8* %"$s_envptr_222", %Uint32 %"$ssz_223"), !dbg !67
  store %Uint32 %"$s_call_224", %Uint32* %"$s_10", align 4, !dbg !67
  %"$$s_10_225" = load %Uint32, %Uint32* %"$s_10", align 4
  store %Uint32 %"$$s_10_225", %Uint32* %"$retval_50", align 4, !dbg !67
  %"$$retval_50_226" = load %Uint32, %Uint32* %"$retval_50", align 4
  ret %Uint32 %"$$retval_50_226"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_47"(%"$$fundef_47_env_128"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) !dbg !68 {
entry:
  %"$retval_48" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_172" = icmp ugt i64 1, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %entry
  %"$consume_175" = sub i64 %"$gasrem_171", 1
  store i64 %"$consume_175", i64* @_gasrem, align 8
  %"$$fundef_49_envp_176_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_49_envp_176_salloc" = call i8* @_salloc(i8* %"$$fundef_49_envp_176_load", i64 16)
  %"$$fundef_49_envp_176" = bitcast i8* %"$$fundef_49_envp_176_salloc" to %"$$fundef_49_env_127"*
  %"$$fundef_49_env_voidp_178" = bitcast %"$$fundef_49_env_127"* %"$$fundef_49_envp_176" to i8*
  %"$$fundef_49_cloval_179" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_49_env_127"*, %Uint32)* @"$fundef_49" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_49_env_voidp_178", 1
  %"$$fundef_49_env_s_180" = getelementptr inbounds %"$$fundef_49_env_127", %"$$fundef_49_env_127"* %"$$fundef_49_envp_176", i32 0, i32 0
  store { %Uint32 (i8*, %Uint32)*, i8* } %1, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_49_env_s_180", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_49_cloval_179", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_48", align 8, !dbg !69
  %"$$retval_48_181" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_48", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_48_181"
}

define internal %Uint32 @"$fundef_45"(%"$$fundef_45_env_129"* %0, %Uint32 %1) !dbg !70 {
entry:
  %"$$fundef_45_env_s_142" = getelementptr inbounds %"$$fundef_45_env_129", %"$$fundef_45_env_129"* %0, i32 0, i32 0
  %"$s_envload_143" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_45_env_s_142", align 8
  %s = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_envload_143", { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$retval_46" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_46", metadata !71, metadata !DIExpression()), !dbg !72
  %"$gasrem_144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_145" = icmp ugt i64 1, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %entry
  %"$consume_148" = sub i64 %"$gasrem_144", 1
  store i64 %"$consume_148", i64* @_gasrem, align 8
  %sz = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %sz, metadata !73, metadata !DIExpression()), !dbg !74
  %"$gasrem_149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_150" = icmp ugt i64 1, %"$gasrem_149"
  br i1 %"$gascmp_150", label %"$out_of_gas_151", label %"$have_gas_152"

"$out_of_gas_151":                                ; preds = %"$have_gas_147"
  call void @_out_of_gas()
  br label %"$have_gas_152"

"$have_gas_152":                                  ; preds = %"$out_of_gas_151", %"$have_gas_147"
  %"$consume_153" = sub i64 %"$gasrem_149", 1
  store i64 %"$consume_153", i64* @_gasrem, align 8
  %"$s_6" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$s_6", metadata !75, metadata !DIExpression()), !dbg !76
  %"$s_154" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$s_fptr_155" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_154", 0
  %"$s_envptr_156" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_154", 1
  %"$s_call_157" = call %Uint32 %"$s_fptr_155"(i8* %"$s_envptr_156", %Uint32 %1), !dbg !76
  store %Uint32 %"$s_call_157", %Uint32* %"$s_6", align 4, !dbg !76
  %"$$s_6_158" = load %Uint32, %Uint32* %"$s_6", align 4
  store %Uint32 %"$$s_6_158", %Uint32* %sz, align 4, !dbg !76
  %"$gasrem_159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_160" = icmp ugt i64 1, %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %"$have_gas_152"
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %"$have_gas_152"
  %"$consume_163" = sub i64 %"$gasrem_159", 1
  store i64 %"$consume_163", i64* @_gasrem, align 8
  %"$s_7" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$s_7", metadata !77, metadata !DIExpression()), !dbg !78
  %"$s_164" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$s_fptr_165" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_164", 0
  %"$s_envptr_166" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_164", 1
  %"$sz_167" = load %Uint32, %Uint32* %sz, align 4
  %"$s_call_168" = call %Uint32 %"$s_fptr_165"(i8* %"$s_envptr_166", %Uint32 %"$sz_167"), !dbg !78
  store %Uint32 %"$s_call_168", %Uint32* %"$s_7", align 4, !dbg !78
  %"$$s_7_169" = load %Uint32, %Uint32* %"$s_7", align 4
  store %Uint32 %"$$s_7_169", %Uint32* %"$retval_46", align 4, !dbg !78
  %"$$retval_46_170" = load %Uint32, %Uint32* %"$retval_46", align 4
  ret %Uint32 %"$$retval_46_170"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_43"(%"$$fundef_43_env_130"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) !dbg !79 {
entry:
  %"$retval_44" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %entry
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem, align 8
  %"$$fundef_45_envp_136_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_45_envp_136_salloc" = call i8* @_salloc(i8* %"$$fundef_45_envp_136_load", i64 16)
  %"$$fundef_45_envp_136" = bitcast i8* %"$$fundef_45_envp_136_salloc" to %"$$fundef_45_env_129"*
  %"$$fundef_45_env_voidp_138" = bitcast %"$$fundef_45_env_129"* %"$$fundef_45_envp_136" to i8*
  %"$$fundef_45_cloval_139" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_45_env_129"*, %Uint32)* @"$fundef_45" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_45_env_voidp_138", 1
  %"$$fundef_45_env_s_140" = getelementptr inbounds %"$$fundef_45_env_129", %"$$fundef_45_env_129"* %"$$fundef_45_envp_136", i32 0, i32 0
  store { %Uint32 (i8*, %Uint32)*, i8* } %1, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_45_env_s_140", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_45_cloval_139", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_44", align 8, !dbg !80
  %"$$retval_44_141" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_44", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_44_141"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() !dbg !81 {
entry:
  %"$gasrem_514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_515" = icmp ugt i64 5, %"$gasrem_514"
  br i1 %"$gascmp_515", label %"$out_of_gas_516", label %"$have_gas_517"

"$out_of_gas_516":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_517"

"$have_gas_517":                                  ; preds = %"$out_of_gas_516", %entry
  %"$consume_518" = sub i64 %"$gasrem_514", 5
  store i64 %"$consume_518", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !83
  %"$gasrem_519" = load i64, i64* @_gasrem, align 8
  %"$gascmp_520" = icmp ugt i64 8, %"$gasrem_519"
  br i1 %"$gascmp_520", label %"$out_of_gas_521", label %"$have_gas_522"

"$out_of_gas_521":                                ; preds = %"$have_gas_517"
  call void @_out_of_gas()
  br label %"$have_gas_522"

"$have_gas_522":                                  ; preds = %"$out_of_gas_521", %"$have_gas_517"
  %"$consume_523" = sub i64 %"$gasrem_519", 8
  store i64 %"$consume_523", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !83
  %"$gasrem_524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_525" = icmp ugt i64 196, %"$gasrem_524"
  br i1 %"$gascmp_525", label %"$out_of_gas_526", label %"$have_gas_527"

"$out_of_gas_526":                                ; preds = %"$have_gas_522"
  call void @_out_of_gas()
  br label %"$have_gas_527"

"$have_gas_527":                                  ; preds = %"$out_of_gas_526", %"$have_gas_522"
  %"$consume_528" = sub i64 %"$gasrem_524", 196
  store i64 %"$consume_528", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !83
  %"$gasrem_529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_530" = icmp ugt i64 20, %"$gasrem_529"
  br i1 %"$gascmp_530", label %"$out_of_gas_531", label %"$have_gas_532"

"$out_of_gas_531":                                ; preds = %"$have_gas_527"
  call void @_out_of_gas()
  br label %"$have_gas_532"

"$have_gas_532":                                  ; preds = %"$out_of_gas_531", %"$have_gas_527"
  %"$consume_533" = sub i64 %"$gasrem_529", 20
  store i64 %"$consume_533", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !83
  %"$gasrem_534" = load i64, i64* @_gasrem, align 8
  %"$gascmp_535" = icmp ugt i64 12, %"$gasrem_534"
  br i1 %"$gascmp_535", label %"$out_of_gas_536", label %"$have_gas_537"

"$out_of_gas_536":                                ; preds = %"$have_gas_532"
  call void @_out_of_gas()
  br label %"$have_gas_537"

"$have_gas_537":                                  ; preds = %"$out_of_gas_536", %"$have_gas_532"
  %"$consume_538" = sub i64 %"$gasrem_534", 12
  store i64 %"$consume_538", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !83
  %"$gasrem_539" = load i64, i64* @_gasrem, align 8
  %"$gascmp_540" = icmp ugt i64 2, %"$gasrem_539"
  br i1 %"$gascmp_540", label %"$out_of_gas_541", label %"$have_gas_542"

"$out_of_gas_541":                                ; preds = %"$have_gas_537"
  call void @_out_of_gas()
  br label %"$have_gas_542"

"$have_gas_542":                                  ; preds = %"$out_of_gas_541", %"$have_gas_537"
  %"$consume_543" = sub i64 %"$gasrem_539", 2
  store i64 %"$consume_543", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !83
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !84 {
entry:
  %"$expr_42" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$expr_42", metadata !85, metadata !DIExpression()), !dbg !86
  %"$gasrem_544" = load i64, i64* @_gasrem, align 8
  %"$gascmp_545" = icmp ugt i64 1, %"$gasrem_544"
  br i1 %"$gascmp_545", label %"$out_of_gas_546", label %"$have_gas_547"

"$out_of_gas_546":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_547"

"$have_gas_547":                                  ; preds = %"$out_of_gas_546", %entry
  %"$consume_548" = sub i64 %"$gasrem_544", 1
  store i64 %"$consume_548", i64* @_gasrem, align 8
  %"$gasrem_549" = load i64, i64* @_gasrem, align 8
  %"$gascmp_550" = icmp ugt i64 1, %"$gasrem_549"
  br i1 %"$gascmp_550", label %"$out_of_gas_551", label %"$have_gas_552"

"$out_of_gas_551":                                ; preds = %"$have_gas_547"
  call void @_out_of_gas()
  br label %"$have_gas_552"

"$have_gas_552":                                  ; preds = %"$out_of_gas_551", %"$have_gas_547"
  %"$consume_553" = sub i64 %"$gasrem_549", 1
  store i64 %"$consume_553", i64* @_gasrem, align 8
  %"$gasrem_554" = load i64, i64* @_gasrem, align 8
  %"$gascmp_555" = icmp ugt i64 1, %"$gasrem_554"
  br i1 %"$gascmp_555", label %"$out_of_gas_556", label %"$have_gas_557"

"$out_of_gas_556":                                ; preds = %"$have_gas_552"
  call void @_out_of_gas()
  br label %"$have_gas_557"

"$have_gas_557":                                  ; preds = %"$out_of_gas_556", %"$have_gas_552"
  %"$consume_558" = sub i64 %"$gasrem_554", 1
  store i64 %"$consume_558", i64* @_gasrem, align 8
  %"$gasrem_559" = load i64, i64* @_gasrem, align 8
  %"$gascmp_560" = icmp ugt i64 1, %"$gasrem_559"
  br i1 %"$gascmp_560", label %"$out_of_gas_561", label %"$have_gas_562"

"$out_of_gas_561":                                ; preds = %"$have_gas_557"
  call void @_out_of_gas()
  br label %"$have_gas_562"

"$have_gas_562":                                  ; preds = %"$out_of_gas_561", %"$have_gas_557"
  %"$consume_563" = sub i64 %"$gasrem_559", 1
  store i64 %"$consume_563", i64* @_gasrem, align 8
  %"$gasrem_564" = load i64, i64* @_gasrem, align 8
  %"$gascmp_565" = icmp ugt i64 1, %"$gasrem_564"
  br i1 %"$gascmp_565", label %"$out_of_gas_566", label %"$have_gas_567"

"$out_of_gas_566":                                ; preds = %"$have_gas_562"
  call void @_out_of_gas()
  br label %"$have_gas_567"

"$have_gas_567":                                  ; preds = %"$out_of_gas_566", %"$have_gas_562"
  %"$consume_568" = sub i64 %"$gasrem_564", 1
  store i64 %"$consume_568", i64* @_gasrem, align 8
  %c2 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_569" = load i64, i64* @_gasrem, align 8
  %"$gascmp_570" = icmp ugt i64 1, %"$gasrem_569"
  br i1 %"$gascmp_570", label %"$out_of_gas_571", label %"$have_gas_572"

"$out_of_gas_571":                                ; preds = %"$have_gas_567"
  call void @_out_of_gas()
  br label %"$have_gas_572"

"$have_gas_572":                                  ; preds = %"$out_of_gas_571", %"$have_gas_567"
  %"$consume_573" = sub i64 %"$gasrem_569", 1
  store i64 %"$consume_573", i64* @_gasrem, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_43_env_130"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_43" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c2, align 8, !dbg !87
  %"$gasrem_577" = load i64, i64* @_gasrem, align 8
  %"$gascmp_578" = icmp ugt i64 1, %"$gasrem_577"
  br i1 %"$gascmp_578", label %"$out_of_gas_579", label %"$have_gas_580"

"$out_of_gas_579":                                ; preds = %"$have_gas_572"
  call void @_out_of_gas()
  br label %"$have_gas_580"

"$have_gas_580":                                  ; preds = %"$out_of_gas_579", %"$have_gas_572"
  %"$consume_581" = sub i64 %"$gasrem_577", 1
  store i64 %"$consume_581", i64* @_gasrem, align 8
  %c3 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_582" = load i64, i64* @_gasrem, align 8
  %"$gascmp_583" = icmp ugt i64 1, %"$gasrem_582"
  br i1 %"$gascmp_583", label %"$out_of_gas_584", label %"$have_gas_585"

"$out_of_gas_584":                                ; preds = %"$have_gas_580"
  call void @_out_of_gas()
  br label %"$have_gas_585"

"$have_gas_585":                                  ; preds = %"$out_of_gas_584", %"$have_gas_580"
  %"$consume_586" = sub i64 %"$gasrem_582", 1
  store i64 %"$consume_586", i64* @_gasrem, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_47_env_128"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_47" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c3, align 8, !dbg !88
  %"$gasrem_590" = load i64, i64* @_gasrem, align 8
  %"$gascmp_591" = icmp ugt i64 1, %"$gasrem_590"
  br i1 %"$gascmp_591", label %"$out_of_gas_592", label %"$have_gas_593"

"$out_of_gas_592":                                ; preds = %"$have_gas_585"
  call void @_out_of_gas()
  br label %"$have_gas_593"

"$have_gas_593":                                  ; preds = %"$out_of_gas_592", %"$have_gas_585"
  %"$consume_594" = sub i64 %"$gasrem_590", 1
  store i64 %"$consume_594", i64* @_gasrem, align 8
  %c3_ = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_595" = load i64, i64* @_gasrem, align 8
  %"$gascmp_596" = icmp ugt i64 1, %"$gasrem_595"
  br i1 %"$gascmp_596", label %"$out_of_gas_597", label %"$have_gas_598"

"$out_of_gas_597":                                ; preds = %"$have_gas_593"
  call void @_out_of_gas()
  br label %"$have_gas_598"

"$have_gas_598":                                  ; preds = %"$out_of_gas_597", %"$have_gas_593"
  %"$consume_599" = sub i64 %"$gasrem_595", 1
  store i64 %"$consume_599", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_51_env_126"*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* @"$fundef_51" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*), i8* null }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %c3_, align 8, !dbg !89
  %"$gasrem_603" = load i64, i64* @_gasrem, align 8
  %"$gascmp_604" = icmp ugt i64 1, %"$gasrem_603"
  br i1 %"$gascmp_604", label %"$out_of_gas_605", label %"$have_gas_606"

"$out_of_gas_605":                                ; preds = %"$have_gas_598"
  call void @_out_of_gas()
  br label %"$have_gas_606"

"$have_gas_606":                                  ; preds = %"$out_of_gas_605", %"$have_gas_598"
  %"$consume_607" = sub i64 %"$gasrem_603", 1
  store i64 %"$consume_607", i64* @_gasrem, align 8
  %cadd = alloca { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_608" = load i64, i64* @_gasrem, align 8
  %"$gascmp_609" = icmp ugt i64 1, %"$gasrem_608"
  br i1 %"$gascmp_609", label %"$out_of_gas_610", label %"$have_gas_611"

"$out_of_gas_610":                                ; preds = %"$have_gas_606"
  call void @_out_of_gas()
  br label %"$have_gas_611"

"$have_gas_611":                                  ; preds = %"$out_of_gas_610", %"$have_gas_606"
  %"$consume_612" = sub i64 %"$gasrem_608", 1
  store i64 %"$consume_612", i64* @_gasrem, align 8
  store { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* bitcast ({ { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (%"$$fundef_55_env_124"*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* @"$fundef_55" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*), i8* null }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cadd, align 8, !dbg !90
  %"$gasrem_616" = load i64, i64* @_gasrem, align 8
  %"$gascmp_617" = icmp ugt i64 1, %"$gasrem_616"
  br i1 %"$gascmp_617", label %"$out_of_gas_618", label %"$have_gas_619"

"$out_of_gas_618":                                ; preds = %"$have_gas_611"
  call void @_out_of_gas()
  br label %"$have_gas_619"

"$have_gas_619":                                  ; preds = %"$out_of_gas_618", %"$have_gas_611"
  %"$consume_620" = sub i64 %"$gasrem_616", 1
  store i64 %"$consume_620", i64* @_gasrem, align 8
  %cmul = alloca { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_621" = load i64, i64* @_gasrem, align 8
  %"$gascmp_622" = icmp ugt i64 1, %"$gasrem_621"
  br i1 %"$gascmp_622", label %"$out_of_gas_623", label %"$have_gas_624"

"$out_of_gas_623":                                ; preds = %"$have_gas_619"
  call void @_out_of_gas()
  br label %"$have_gas_624"

"$have_gas_624":                                  ; preds = %"$out_of_gas_623", %"$have_gas_619"
  %"$consume_625" = sub i64 %"$gasrem_621", 1
  store i64 %"$consume_625", i64* @_gasrem, align 8
  store { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* bitcast ({ { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (%"$$fundef_63_env_120"*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* @"$fundef_63" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*), i8* null }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cmul, align 8, !dbg !91
  %"$gasrem_629" = load i64, i64* @_gasrem, align 8
  %"$gascmp_630" = icmp ugt i64 1, %"$gasrem_629"
  br i1 %"$gascmp_630", label %"$out_of_gas_631", label %"$have_gas_632"

"$out_of_gas_631":                                ; preds = %"$have_gas_624"
  call void @_out_of_gas()
  br label %"$have_gas_632"

"$have_gas_632":                                  ; preds = %"$out_of_gas_631", %"$have_gas_624"
  %"$consume_633" = sub i64 %"$gasrem_629", 1
  store i64 %"$consume_633", i64* @_gasrem, align 8
  %cexp = alloca { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_634" = load i64, i64* @_gasrem, align 8
  %"$gascmp_635" = icmp ugt i64 1, %"$gasrem_634"
  br i1 %"$gascmp_635", label %"$out_of_gas_636", label %"$have_gas_637"

"$out_of_gas_636":                                ; preds = %"$have_gas_632"
  call void @_out_of_gas()
  br label %"$have_gas_637"

"$have_gas_637":                                  ; preds = %"$out_of_gas_636", %"$have_gas_632"
  %"$consume_638" = sub i64 %"$gasrem_634", 1
  store i64 %"$consume_638", i64* @_gasrem, align 8
  store { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* bitcast ({ { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } (%"$$fundef_69_env_117"*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* @"$fundef_69" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*), i8* null }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cexp, align 8, !dbg !92
  %"$gasrem_642" = load i64, i64* @_gasrem, align 8
  %"$gascmp_643" = icmp ugt i64 1, %"$gasrem_642"
  br i1 %"$gascmp_643", label %"$out_of_gas_644", label %"$have_gas_645"

"$out_of_gas_644":                                ; preds = %"$have_gas_637"
  call void @_out_of_gas()
  br label %"$have_gas_645"

"$have_gas_645":                                  ; preds = %"$out_of_gas_644", %"$have_gas_637"
  %"$consume_646" = sub i64 %"$gasrem_642", 1
  store i64 %"$consume_646", i64* @_gasrem, align 8
  %church_nat_to_uint32 = alloca { %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_647" = load i64, i64* @_gasrem, align 8
  %"$gascmp_648" = icmp ugt i64 1, %"$gasrem_647"
  br i1 %"$gascmp_648", label %"$out_of_gas_649", label %"$have_gas_650"

"$out_of_gas_649":                                ; preds = %"$have_gas_645"
  call void @_out_of_gas()
  br label %"$have_gas_650"

"$have_gas_650":                                  ; preds = %"$out_of_gas_649", %"$have_gas_645"
  %"$consume_651" = sub i64 %"$gasrem_647", 1
  store i64 %"$consume_651", i64* @_gasrem, align 8
  store { %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } { %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* bitcast (%Uint32 (%"$$fundef_73_env_115"*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* @"$fundef_73" to %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*), i8* null }, { %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %church_nat_to_uint32, align 8, !dbg !93
  %"$gasrem_655" = load i64, i64* @_gasrem, align 8
  %"$gascmp_656" = icmp ugt i64 1, %"$gasrem_655"
  br i1 %"$gascmp_656", label %"$out_of_gas_657", label %"$have_gas_658"

"$out_of_gas_657":                                ; preds = %"$have_gas_650"
  call void @_out_of_gas()
  br label %"$have_gas_658"

"$have_gas_658":                                  ; preds = %"$out_of_gas_657", %"$have_gas_650"
  %"$consume_659" = sub i64 %"$gasrem_655", 1
  store i64 %"$consume_659", i64* @_gasrem, align 8
  %c4 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_660" = load i64, i64* @_gasrem, align 8
  %"$gascmp_661" = icmp ugt i64 1, %"$gasrem_660"
  br i1 %"$gascmp_661", label %"$out_of_gas_662", label %"$have_gas_663"

"$out_of_gas_662":                                ; preds = %"$have_gas_658"
  call void @_out_of_gas()
  br label %"$have_gas_663"

"$have_gas_663":                                  ; preds = %"$out_of_gas_662", %"$have_gas_658"
  %"$consume_664" = sub i64 %"$gasrem_660", 1
  store i64 %"$consume_664", i64* @_gasrem, align 8
  %"$cmul_23" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$cmul_665" = load { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cmul, align 8
  %"$cmul_fptr_666" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_665", 0
  %"$cmul_envptr_667" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_665", 1
  %"$c2_668" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c2, align 8
  %"$cmul_call_669" = call { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_fptr_666"(i8* %"$cmul_envptr_667", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c2_668"), !dbg !94
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_call_669", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cmul_23", align 8, !dbg !94
  %"$cmul_24" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$$cmul_23_670" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cmul_23", align 8
  %"$$cmul_23_fptr_671" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cmul_23_670", 0
  %"$$cmul_23_envptr_672" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cmul_23_670", 1
  %"$c2_673" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c2, align 8
  %"$$cmul_23_call_674" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_23_fptr_671"(i8* %"$$cmul_23_envptr_672", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c2_673"), !dbg !94
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_23_call_674", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cmul_24", align 8, !dbg !94
  %"$$cmul_24_675" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cmul_24", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_24_675", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c4, align 8, !dbg !94
  %"$gasrem_676" = load i64, i64* @_gasrem, align 8
  %"$gascmp_677" = icmp ugt i64 1, %"$gasrem_676"
  br i1 %"$gascmp_677", label %"$out_of_gas_678", label %"$have_gas_679"

"$out_of_gas_678":                                ; preds = %"$have_gas_663"
  call void @_out_of_gas()
  br label %"$have_gas_679"

"$have_gas_679":                                  ; preds = %"$out_of_gas_678", %"$have_gas_663"
  %"$consume_680" = sub i64 %"$gasrem_676", 1
  store i64 %"$consume_680", i64* @_gasrem, align 8
  %c16 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_681" = load i64, i64* @_gasrem, align 8
  %"$gascmp_682" = icmp ugt i64 1, %"$gasrem_681"
  br i1 %"$gascmp_682", label %"$out_of_gas_683", label %"$have_gas_684"

"$out_of_gas_683":                                ; preds = %"$have_gas_679"
  call void @_out_of_gas()
  br label %"$have_gas_684"

"$have_gas_684":                                  ; preds = %"$out_of_gas_683", %"$have_gas_679"
  %"$consume_685" = sub i64 %"$gasrem_681", 1
  store i64 %"$consume_685", i64* @_gasrem, align 8
  %"$cmul_25" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$cmul_686" = load { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cmul, align 8
  %"$cmul_fptr_687" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_686", 0
  %"$cmul_envptr_688" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_686", 1
  %"$c4_689" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c4, align 8
  %"$cmul_call_690" = call { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_fptr_687"(i8* %"$cmul_envptr_688", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c4_689"), !dbg !95
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_call_690", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cmul_25", align 8, !dbg !95
  %"$cmul_26" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$$cmul_25_691" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cmul_25", align 8
  %"$$cmul_25_fptr_692" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cmul_25_691", 0
  %"$$cmul_25_envptr_693" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cmul_25_691", 1
  %"$c4_694" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c4, align 8
  %"$$cmul_25_call_695" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_25_fptr_692"(i8* %"$$cmul_25_envptr_693", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c4_694"), !dbg !95
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_25_call_695", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cmul_26", align 8, !dbg !95
  %"$$cmul_26_696" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cmul_26", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_26_696", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c16, align 8, !dbg !95
  %"$gasrem_697" = load i64, i64* @_gasrem, align 8
  %"$gascmp_698" = icmp ugt i64 1, %"$gasrem_697"
  br i1 %"$gascmp_698", label %"$out_of_gas_699", label %"$have_gas_700"

"$out_of_gas_699":                                ; preds = %"$have_gas_684"
  call void @_out_of_gas()
  br label %"$have_gas_700"

"$have_gas_700":                                  ; preds = %"$out_of_gas_699", %"$have_gas_684"
  %"$consume_701" = sub i64 %"$gasrem_697", 1
  store i64 %"$consume_701", i64* @_gasrem, align 8
  %c32 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_702" = load i64, i64* @_gasrem, align 8
  %"$gascmp_703" = icmp ugt i64 1, %"$gasrem_702"
  br i1 %"$gascmp_703", label %"$out_of_gas_704", label %"$have_gas_705"

"$out_of_gas_704":                                ; preds = %"$have_gas_700"
  call void @_out_of_gas()
  br label %"$have_gas_705"

"$have_gas_705":                                  ; preds = %"$out_of_gas_704", %"$have_gas_700"
  %"$consume_706" = sub i64 %"$gasrem_702", 1
  store i64 %"$consume_706", i64* @_gasrem, align 8
  %"$cadd_27" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$cadd_707" = load { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cadd, align 8
  %"$cadd_fptr_708" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_707", 0
  %"$cadd_envptr_709" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_707", 1
  %"$c16_710" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c16, align 8
  %"$cadd_call_711" = call { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_fptr_708"(i8* %"$cadd_envptr_709", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c16_710"), !dbg !96
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_call_711", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cadd_27", align 8, !dbg !96
  %"$cadd_28" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$$cadd_27_712" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cadd_27", align 8
  %"$$cadd_27_fptr_713" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cadd_27_712", 0
  %"$$cadd_27_envptr_714" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cadd_27_712", 1
  %"$c16_715" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c16, align 8
  %"$$cadd_27_call_716" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_27_fptr_713"(i8* %"$$cadd_27_envptr_714", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c16_715"), !dbg !96
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_27_call_716", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cadd_28", align 8, !dbg !96
  %"$$cadd_28_717" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cadd_28", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_28_717", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c32, align 8, !dbg !96
  %"$gasrem_718" = load i64, i64* @_gasrem, align 8
  %"$gascmp_719" = icmp ugt i64 1, %"$gasrem_718"
  br i1 %"$gascmp_719", label %"$out_of_gas_720", label %"$have_gas_721"

"$out_of_gas_720":                                ; preds = %"$have_gas_705"
  call void @_out_of_gas()
  br label %"$have_gas_721"

"$have_gas_721":                                  ; preds = %"$out_of_gas_720", %"$have_gas_705"
  %"$consume_722" = sub i64 %"$gasrem_718", 1
  store i64 %"$consume_722", i64* @_gasrem, align 8
  %c128 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_723" = load i64, i64* @_gasrem, align 8
  %"$gascmp_724" = icmp ugt i64 1, %"$gasrem_723"
  br i1 %"$gascmp_724", label %"$out_of_gas_725", label %"$have_gas_726"

"$out_of_gas_725":                                ; preds = %"$have_gas_721"
  call void @_out_of_gas()
  br label %"$have_gas_726"

"$have_gas_726":                                  ; preds = %"$out_of_gas_725", %"$have_gas_721"
  %"$consume_727" = sub i64 %"$gasrem_723", 1
  store i64 %"$consume_727", i64* @_gasrem, align 8
  %"$cmul_29" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$cmul_728" = load { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cmul, align 8
  %"$cmul_fptr_729" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_728", 0
  %"$cmul_envptr_730" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_728", 1
  %"$c4_731" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c4, align 8
  %"$cmul_call_732" = call { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_fptr_729"(i8* %"$cmul_envptr_730", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c4_731"), !dbg !97
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_call_732", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cmul_29", align 8, !dbg !97
  %"$cmul_30" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$$cmul_29_733" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cmul_29", align 8
  %"$$cmul_29_fptr_734" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cmul_29_733", 0
  %"$$cmul_29_envptr_735" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cmul_29_733", 1
  %"$c32_736" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c32, align 8
  %"$$cmul_29_call_737" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_29_fptr_734"(i8* %"$$cmul_29_envptr_735", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c32_736"), !dbg !97
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_29_call_737", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cmul_30", align 8, !dbg !97
  %"$$cmul_30_738" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cmul_30", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_30_738", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c128, align 8, !dbg !97
  %"$gasrem_739" = load i64, i64* @_gasrem, align 8
  %"$gascmp_740" = icmp ugt i64 1, %"$gasrem_739"
  br i1 %"$gascmp_740", label %"$out_of_gas_741", label %"$have_gas_742"

"$out_of_gas_741":                                ; preds = %"$have_gas_726"
  call void @_out_of_gas()
  br label %"$have_gas_742"

"$have_gas_742":                                  ; preds = %"$out_of_gas_741", %"$have_gas_726"
  %"$consume_743" = sub i64 %"$gasrem_739", 1
  store i64 %"$consume_743", i64* @_gasrem, align 8
  %c256 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_744" = load i64, i64* @_gasrem, align 8
  %"$gascmp_745" = icmp ugt i64 1, %"$gasrem_744"
  br i1 %"$gascmp_745", label %"$out_of_gas_746", label %"$have_gas_747"

"$out_of_gas_746":                                ; preds = %"$have_gas_742"
  call void @_out_of_gas()
  br label %"$have_gas_747"

"$have_gas_747":                                  ; preds = %"$out_of_gas_746", %"$have_gas_742"
  %"$consume_748" = sub i64 %"$gasrem_744", 1
  store i64 %"$consume_748", i64* @_gasrem, align 8
  %"$cadd_31" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$cadd_749" = load { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cadd, align 8
  %"$cadd_fptr_750" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_749", 0
  %"$cadd_envptr_751" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_749", 1
  %"$c128_752" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c128, align 8
  %"$cadd_call_753" = call { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_fptr_750"(i8* %"$cadd_envptr_751", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c128_752"), !dbg !98
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_call_753", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cadd_31", align 8, !dbg !98
  %"$cadd_32" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$$cadd_31_754" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cadd_31", align 8
  %"$$cadd_31_fptr_755" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cadd_31_754", 0
  %"$$cadd_31_envptr_756" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cadd_31_754", 1
  %"$c128_757" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c128, align 8
  %"$$cadd_31_call_758" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_31_fptr_755"(i8* %"$$cadd_31_envptr_756", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c128_757"), !dbg !98
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_31_call_758", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cadd_32", align 8, !dbg !98
  %"$$cadd_32_759" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cadd_32", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_32_759", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c256, align 8, !dbg !98
  %"$gasrem_760" = load i64, i64* @_gasrem, align 8
  %"$gascmp_761" = icmp ugt i64 1, %"$gasrem_760"
  br i1 %"$gascmp_761", label %"$out_of_gas_762", label %"$have_gas_763"

"$out_of_gas_762":                                ; preds = %"$have_gas_747"
  call void @_out_of_gas()
  br label %"$have_gas_763"

"$have_gas_763":                                  ; preds = %"$out_of_gas_762", %"$have_gas_747"
  %"$consume_764" = sub i64 %"$gasrem_760", 1
  store i64 %"$consume_764", i64* @_gasrem, align 8
  %c65536 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_765" = load i64, i64* @_gasrem, align 8
  %"$gascmp_766" = icmp ugt i64 1, %"$gasrem_765"
  br i1 %"$gascmp_766", label %"$out_of_gas_767", label %"$have_gas_768"

"$out_of_gas_767":                                ; preds = %"$have_gas_763"
  call void @_out_of_gas()
  br label %"$have_gas_768"

"$have_gas_768":                                  ; preds = %"$out_of_gas_767", %"$have_gas_763"
  %"$consume_769" = sub i64 %"$gasrem_765", 1
  store i64 %"$consume_769", i64* @_gasrem, align 8
  %"$cmul_33" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$cmul_770" = load { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cmul, align 8
  %"$cmul_fptr_771" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_770", 0
  %"$cmul_envptr_772" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_770", 1
  %"$c256_773" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c256, align 8
  %"$cmul_call_774" = call { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_fptr_771"(i8* %"$cmul_envptr_772", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c256_773"), !dbg !99
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_call_774", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cmul_33", align 8, !dbg !99
  %"$cmul_34" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$$cmul_33_775" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cmul_33", align 8
  %"$$cmul_33_fptr_776" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cmul_33_775", 0
  %"$$cmul_33_envptr_777" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cmul_33_775", 1
  %"$c256_778" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c256, align 8
  %"$$cmul_33_call_779" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_33_fptr_776"(i8* %"$$cmul_33_envptr_777", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c256_778"), !dbg !99
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_33_call_779", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cmul_34", align 8, !dbg !99
  %"$$cmul_34_780" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cmul_34", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_34_780", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c65536, align 8, !dbg !99
  %"$gasrem_781" = load i64, i64* @_gasrem, align 8
  %"$gascmp_782" = icmp ugt i64 1, %"$gasrem_781"
  br i1 %"$gascmp_782", label %"$out_of_gas_783", label %"$have_gas_784"

"$out_of_gas_783":                                ; preds = %"$have_gas_768"
  call void @_out_of_gas()
  br label %"$have_gas_784"

"$have_gas_784":                                  ; preds = %"$out_of_gas_783", %"$have_gas_768"
  %"$consume_785" = sub i64 %"$gasrem_781", 1
  store i64 %"$consume_785", i64* @_gasrem, align 8
  %c131072 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_786" = load i64, i64* @_gasrem, align 8
  %"$gascmp_787" = icmp ugt i64 1, %"$gasrem_786"
  br i1 %"$gascmp_787", label %"$out_of_gas_788", label %"$have_gas_789"

"$out_of_gas_788":                                ; preds = %"$have_gas_784"
  call void @_out_of_gas()
  br label %"$have_gas_789"

"$have_gas_789":                                  ; preds = %"$out_of_gas_788", %"$have_gas_784"
  %"$consume_790" = sub i64 %"$gasrem_786", 1
  store i64 %"$consume_790", i64* @_gasrem, align 8
  %"$cadd_35" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$cadd_791" = load { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cadd, align 8
  %"$cadd_fptr_792" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_791", 0
  %"$cadd_envptr_793" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_791", 1
  %"$c65536_794" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c65536, align 8
  %"$cadd_call_795" = call { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_fptr_792"(i8* %"$cadd_envptr_793", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c65536_794"), !dbg !100
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_call_795", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cadd_35", align 8, !dbg !100
  %"$cadd_36" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$$cadd_35_796" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cadd_35", align 8
  %"$$cadd_35_fptr_797" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cadd_35_796", 0
  %"$$cadd_35_envptr_798" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cadd_35_796", 1
  %"$c65536_799" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c65536, align 8
  %"$$cadd_35_call_800" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_35_fptr_797"(i8* %"$$cadd_35_envptr_798", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c65536_799"), !dbg !100
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_35_call_800", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cadd_36", align 8, !dbg !100
  %"$$cadd_36_801" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cadd_36", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_36_801", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c131072, align 8, !dbg !100
  %"$gasrem_802" = load i64, i64* @_gasrem, align 8
  %"$gascmp_803" = icmp ugt i64 1, %"$gasrem_802"
  br i1 %"$gascmp_803", label %"$out_of_gas_804", label %"$have_gas_805"

"$out_of_gas_804":                                ; preds = %"$have_gas_789"
  call void @_out_of_gas()
  br label %"$have_gas_805"

"$have_gas_805":                                  ; preds = %"$out_of_gas_804", %"$have_gas_789"
  %"$consume_806" = sub i64 %"$gasrem_802", 1
  store i64 %"$consume_806", i64* @_gasrem, align 8
  %c27 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_807" = load i64, i64* @_gasrem, align 8
  %"$gascmp_808" = icmp ugt i64 1, %"$gasrem_807"
  br i1 %"$gascmp_808", label %"$out_of_gas_809", label %"$have_gas_810"

"$out_of_gas_809":                                ; preds = %"$have_gas_805"
  call void @_out_of_gas()
  br label %"$have_gas_810"

"$have_gas_810":                                  ; preds = %"$out_of_gas_809", %"$have_gas_805"
  %"$consume_811" = sub i64 %"$gasrem_807", 1
  store i64 %"$consume_811", i64* @_gasrem, align 8
  %"$cexp_37" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* }, align 8
  %"$cexp_812" = load { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cexp, align 8
  %"$cexp_fptr_813" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cexp_812", 0
  %"$cexp_envptr_814" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cexp_812", 1
  %"$c3_815" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c3, align 8
  %"$cexp_call_816" = call { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } %"$cexp_fptr_813"(i8* %"$cexp_envptr_814", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c3_815"), !dbg !101
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } %"$cexp_call_816", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* }* %"$cexp_37", align 8, !dbg !101
  %"$cexp_38" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$$cexp_37_817" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* }* %"$cexp_37", align 8
  %"$$cexp_37_fptr_818" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } %"$$cexp_37_817", 0
  %"$$cexp_37_envptr_819" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } %"$$cexp_37_817", 1
  %"$c3__820" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %c3_, align 8
  %"$$cexp_37_call_821" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cexp_37_fptr_818"(i8* %"$$cexp_37_envptr_819", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$c3__820"), !dbg !101
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cexp_37_call_821", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cexp_38", align 8, !dbg !101
  %"$$cexp_38_822" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cexp_38", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cexp_38_822", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c27, align 8, !dbg !101
  %"$gasrem_823" = load i64, i64* @_gasrem, align 8
  %"$gascmp_824" = icmp ugt i64 1, %"$gasrem_823"
  br i1 %"$gascmp_824", label %"$out_of_gas_825", label %"$have_gas_826"

"$out_of_gas_825":                                ; preds = %"$have_gas_810"
  call void @_out_of_gas()
  br label %"$have_gas_826"

"$have_gas_826":                                  ; preds = %"$out_of_gas_825", %"$have_gas_810"
  %"$consume_827" = sub i64 %"$gasrem_823", 1
  store i64 %"$consume_827", i64* @_gasrem, align 8
  %c131099 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_828" = load i64, i64* @_gasrem, align 8
  %"$gascmp_829" = icmp ugt i64 1, %"$gasrem_828"
  br i1 %"$gascmp_829", label %"$out_of_gas_830", label %"$have_gas_831"

"$out_of_gas_830":                                ; preds = %"$have_gas_826"
  call void @_out_of_gas()
  br label %"$have_gas_831"

"$have_gas_831":                                  ; preds = %"$out_of_gas_830", %"$have_gas_826"
  %"$consume_832" = sub i64 %"$gasrem_828", 1
  store i64 %"$consume_832", i64* @_gasrem, align 8
  %"$cadd_39" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$cadd_833" = load { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cadd, align 8
  %"$cadd_fptr_834" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_833", 0
  %"$cadd_envptr_835" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_833", 1
  %"$c131072_836" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c131072, align 8
  %"$cadd_call_837" = call { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_fptr_834"(i8* %"$cadd_envptr_835", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c131072_836"), !dbg !102
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_call_837", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cadd_39", align 8, !dbg !102
  %"$cadd_40" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$$cadd_39_838" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cadd_39", align 8
  %"$$cadd_39_fptr_839" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cadd_39_838", 0
  %"$$cadd_39_envptr_840" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cadd_39_838", 1
  %"$c27_841" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c27, align 8
  %"$$cadd_39_call_842" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_39_fptr_839"(i8* %"$$cadd_39_envptr_840", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c27_841"), !dbg !102
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_39_call_842", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cadd_40", align 8, !dbg !102
  %"$$cadd_40_843" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cadd_40", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_40_843", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c131099, align 8, !dbg !102
  %"$gasrem_844" = load i64, i64* @_gasrem, align 8
  %"$gascmp_845" = icmp ugt i64 1, %"$gasrem_844"
  br i1 %"$gascmp_845", label %"$out_of_gas_846", label %"$have_gas_847"

"$out_of_gas_846":                                ; preds = %"$have_gas_831"
  call void @_out_of_gas()
  br label %"$have_gas_847"

"$have_gas_847":                                  ; preds = %"$out_of_gas_846", %"$have_gas_831"
  %"$consume_848" = sub i64 %"$gasrem_844", 1
  store i64 %"$consume_848", i64* @_gasrem, align 8
  %"$church_nat_to_uint32_41" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$church_nat_to_uint32_41", metadata !103, metadata !DIExpression()), !dbg !104
  %"$church_nat_to_uint32_849" = load { %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %church_nat_to_uint32, align 8
  %"$church_nat_to_uint32_fptr_850" = extractvalue { %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$church_nat_to_uint32_849", 0
  %"$church_nat_to_uint32_envptr_851" = extractvalue { %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$church_nat_to_uint32_849", 1
  %"$c131099_852" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c131099, align 8
  %"$church_nat_to_uint32_call_853" = call %Uint32 %"$church_nat_to_uint32_fptr_850"(i8* %"$church_nat_to_uint32_envptr_851", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c131099_852"), !dbg !104
  store %Uint32 %"$church_nat_to_uint32_call_853", %Uint32* %"$church_nat_to_uint32_41", align 4, !dbg !104
  %"$$church_nat_to_uint32_41_854" = load %Uint32, %Uint32* %"$church_nat_to_uint32_41", align 4
  store %Uint32 %"$$church_nat_to_uint32_41_854", %Uint32* %"$expr_42", align 4, !dbg !104
  %"$$expr_42_855" = load %Uint32, %Uint32* %"$expr_42", align 4
  ret %Uint32 %"$$expr_42_855"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_856" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_857" = alloca %Uint32, align 8
  %"$memvoidcast_858" = bitcast %Uint32* %"$pval_857" to i8*
  store %Uint32 %"$exprval_856", %Uint32* %"$pval_857", align 4
  %"$execptr_load_859" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_859", %_TyDescrTy_Typ* @"$TyDescr_Uint32_81", i8* %"$memvoidcast_858")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "church_nat_stlc.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_75", linkageName: "$fundef_75", scope: !2, file: !2, line: 47, type: !4, scopeLine: 47, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!7 = !{}
!8 = !DILocalVariable(name: "$retval_76", scope: !3, file: !2, line: 47, type: !9)
!9 = !DIBasicType(name: "Uint32", size: 4)
!10 = !DILocation(line: 47, column: 36, scope: !3)
!11 = distinct !DISubprogram(name: "$fundef_73", linkageName: "$fundef_73", scope: !2, file: !2, line: 45, type: !4, scopeLine: 45, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!12 = !DILocalVariable(name: "$retval_74", scope: !11, file: !2, line: 45, type: !9)
!13 = !DILocation(line: 45, column: 5, scope: !11)
!14 = !DILocalVariable(name: "zero", scope: !11, file: !2, line: 45, type: !9)
!15 = !DILocation(line: 45, column: 9, scope: !11)
!16 = !DILocation(line: 45, column: 16, scope: !11)
!17 = !DILocalVariable(name: "one", scope: !11, file: !2, line: 46, type: !9)
!18 = !DILocation(line: 46, column: 9, scope: !11)
!19 = !DILocation(line: 46, column: 15, scope: !11)
!20 = !DILocation(line: 47, column: 36, scope: !11)
!21 = !DILocation(line: 48, column: 5, scope: !11)
!22 = !DILocalVariable(name: "$c_22", scope: !11, file: !2, line: 48, type: !9)
!23 = distinct !DISubprogram(name: "$fundef_71", linkageName: "$fundef_71", scope: !2, file: !2, line: 39, type: !4, scopeLine: 39, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!24 = !DILocation(line: 39, column: 3, scope: !23)
!25 = distinct !DISubprogram(name: "$fundef_69", linkageName: "$fundef_69", scope: !2, file: !2, line: 38, type: !4, scopeLine: 38, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!26 = !DILocation(line: 39, column: 3, scope: !25)
!27 = distinct !DISubprogram(name: "$fundef_67", linkageName: "$fundef_67", scope: !2, file: !2, line: 31, type: !4, scopeLine: 31, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!28 = !DILocation(line: 31, column: 15, scope: !27)
!29 = !DILocation(line: 32, column: 3, scope: !27)
!30 = distinct !DISubprogram(name: "$fundef_65", linkageName: "$fundef_65", scope: !2, file: !2, line: 30, type: !4, scopeLine: 30, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!31 = !DILocation(line: 31, column: 3, scope: !30)
!32 = distinct !DISubprogram(name: "$fundef_63", linkageName: "$fundef_63", scope: !2, file: !2, line: 29, type: !4, scopeLine: 29, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!33 = !DILocation(line: 30, column: 3, scope: !32)
!34 = distinct !DISubprogram(name: "$fundef_61", linkageName: "$fundef_61", scope: !2, file: !2, line: 23, type: !4, scopeLine: 23, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!35 = !DILocalVariable(name: "$retval_62", scope: !34, file: !2, line: 23, type: !9)
!36 = !DILocation(line: 23, column: 3, scope: !34)
!37 = !DILocalVariable(name: "nsz", scope: !34, file: !2, line: 23, type: !9)
!38 = !DILocation(line: 23, column: 7, scope: !34)
!39 = !DILocation(line: 23, column: 13, scope: !34)
!40 = !DILocalVariable(name: "$n_15", scope: !34, file: !2, line: 23, type: !9)
!41 = !DILocation(line: 24, column: 3, scope: !34)
!42 = !DILocalVariable(name: "$m_17", scope: !34, file: !2, line: 24, type: !9)
!43 = distinct !DISubprogram(name: "$fundef_59", linkageName: "$fundef_59", scope: !2, file: !2, line: 22, type: !4, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!44 = !DILocation(line: 23, column: 3, scope: !43)
!45 = distinct !DISubprogram(name: "$fundef_57", linkageName: "$fundef_57", scope: !2, file: !2, line: 21, type: !4, scopeLine: 21, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!46 = !DILocation(line: 22, column: 3, scope: !45)
!47 = distinct !DISubprogram(name: "$fundef_55", linkageName: "$fundef_55", scope: !2, file: !2, line: 20, type: !4, scopeLine: 20, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!48 = !DILocation(line: 21, column: 3, scope: !47)
!49 = distinct !DISubprogram(name: "$fundef_53", linkageName: "$fundef_53", scope: !2, file: !2, line: 14, type: !4, scopeLine: 14, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!50 = !DILocation(line: 14, column: 104, scope: !49)
!51 = !DILocation(line: 14, column: 121, scope: !49)
!52 = !DILocation(line: 14, column: 129, scope: !49)
!53 = distinct !DISubprogram(name: "$fundef_51", linkageName: "$fundef_51", scope: !2, file: !2, line: 14, type: !4, scopeLine: 14, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!54 = !DILocation(line: 14, column: 95, scope: !53)
!55 = distinct !DISubprogram(name: "$fundef_49", linkageName: "$fundef_49", scope: !2, file: !2, line: 11, type: !4, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!56 = !DILocalVariable(name: "$retval_50", scope: !55, file: !2, line: 11, type: !9)
!57 = !DILocation(line: 11, column: 60, scope: !55)
!58 = !DILocalVariable(name: "sz", scope: !55, file: !2, line: 11, type: !9)
!59 = !DILocation(line: 11, column: 64, scope: !55)
!60 = !DILocalVariable(name: "$s_8", scope: !55, file: !2, line: 11, type: !9)
!61 = !DILocation(line: 11, column: 69, scope: !55)
!62 = !DILocalVariable(name: "ssz", scope: !55, file: !2, line: 11, type: !9)
!63 = !DILocation(line: 11, column: 80, scope: !55)
!64 = !DILocalVariable(name: "$s_9", scope: !55, file: !2, line: 11, type: !9)
!65 = !DILocation(line: 11, column: 86, scope: !55)
!66 = !DILocalVariable(name: "$s_10", scope: !55, file: !2, line: 11, type: !9)
!67 = !DILocation(line: 11, column: 94, scope: !55)
!68 = distinct !DISubprogram(name: "$fundef_47", linkageName: "$fundef_47", scope: !2, file: !2, line: 11, type: !4, scopeLine: 11, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!69 = !DILocation(line: 11, column: 60, scope: !68)
!70 = distinct !DISubprogram(name: "$fundef_45", linkageName: "$fundef_45", scope: !2, file: !2, line: 9, type: !4, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!71 = !DILocalVariable(name: "$retval_46", scope: !70, file: !2, line: 9, type: !9)
!72 = !DILocation(line: 9, column: 60, scope: !70)
!73 = !DILocalVariable(name: "sz", scope: !70, file: !2, line: 9, type: !9)
!74 = !DILocation(line: 9, column: 64, scope: !70)
!75 = !DILocalVariable(name: "$s_6", scope: !70, file: !2, line: 9, type: !9)
!76 = !DILocation(line: 9, column: 69, scope: !70)
!77 = !DILocalVariable(name: "$s_7", scope: !70, file: !2, line: 9, type: !9)
!78 = !DILocation(line: 9, column: 76, scope: !70)
!79 = distinct !DISubprogram(name: "$fundef_43", linkageName: "$fundef_43", scope: !2, file: !2, line: 9, type: !4, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!80 = !DILocation(line: 9, column: 60, scope: !79)
!81 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !82, file: !82, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!82 = !DIFile(filename: ".", directory: ".")
!83 = !DILocation(line: 0, scope: !81)
!84 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !7)
!85 = !DILocalVariable(name: "$expr_42", scope: !84, file: !2, line: 3, type: !9)
!86 = !DILocation(line: 3, column: 10, scope: !84)
!87 = !DILocation(line: 9, column: 40, scope: !84)
!88 = !DILocation(line: 11, column: 40, scope: !84)
!89 = !DILocation(line: 14, column: 65, scope: !84)
!90 = !DILocation(line: 20, column: 3, scope: !84)
!91 = !DILocation(line: 29, column: 3, scope: !84)
!92 = !DILocation(line: 38, column: 3, scope: !84)
!93 = !DILocation(line: 45, column: 5, scope: !84)
!94 = !DILocation(line: 51, column: 10, scope: !84)
!95 = !DILocation(line: 52, column: 11, scope: !84)
!96 = !DILocation(line: 53, column: 11, scope: !84)
!97 = !DILocation(line: 54, column: 12, scope: !84)
!98 = !DILocation(line: 55, column: 12, scope: !84)
!99 = !DILocation(line: 56, column: 14, scope: !84)
!100 = !DILocation(line: 57, column: 15, scope: !84)
!101 = !DILocation(line: 58, column: 11, scope: !84)
!102 = !DILocation(line: 59, column: 15, scope: !84)
!103 = !DILocalVariable(name: "$church_nat_to_uint32_41", scope: !84, file: !2, line: 60, type: !9)
!104 = !DILocation(line: 60, column: 1, scope: !84)
