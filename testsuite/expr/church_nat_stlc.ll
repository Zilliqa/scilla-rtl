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

%"$TyDescrTy_PrimTyp_71" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$ParamDescr_812" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_813" = type { %ParamDescrString, i32, %"$ParamDescr_812"* }
%"$$fundef_69_env_106" = type { %Uint32 }
%Uint32 = type { i32 }
%"$$fundef_67_env_107" = type {}
%"$$fundef_65_env_108" = type { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } }
%"$$fundef_63_env_109" = type {}
%"$$fundef_61_env_110" = type { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } }
%"$$fundef_59_env_111" = type { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } }
%"$$fundef_57_env_112" = type {}
%"$$fundef_55_env_113" = type { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* } }
%"$$fundef_53_env_114" = type { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } }
%"$$fundef_51_env_115" = type { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } }
%"$$fundef_49_env_116" = type {}
%"$$fundef_47_env_117" = type { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } }
%"$$fundef_45_env_118" = type {}
%"$$fundef_43_env_119" = type { { %Uint32 (i8*, %Uint32)*, i8* } }
%"$$fundef_41_env_120" = type {}
%"$$fundef_39_env_121" = type { { %Uint32 (i8*, %Uint32)*, i8* } }
%"$$fundef_37_env_122" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_72" = global %"$TyDescrTy_PrimTyp_71" zeroinitializer
@"$TyDescr_Int32_73" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_71"* @"$TyDescr_Int32_Prim_72" to i8*) }
@"$TyDescr_Uint32_Prim_74" = global %"$TyDescrTy_PrimTyp_71" { i32 1, i32 0 }
@"$TyDescr_Uint32_75" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_71"* @"$TyDescr_Uint32_Prim_74" to i8*) }
@"$TyDescr_Int64_Prim_76" = global %"$TyDescrTy_PrimTyp_71" { i32 0, i32 1 }
@"$TyDescr_Int64_77" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_71"* @"$TyDescr_Int64_Prim_76" to i8*) }
@"$TyDescr_Uint64_Prim_78" = global %"$TyDescrTy_PrimTyp_71" { i32 1, i32 1 }
@"$TyDescr_Uint64_79" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_71"* @"$TyDescr_Uint64_Prim_78" to i8*) }
@"$TyDescr_Int128_Prim_80" = global %"$TyDescrTy_PrimTyp_71" { i32 0, i32 2 }
@"$TyDescr_Int128_81" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_71"* @"$TyDescr_Int128_Prim_80" to i8*) }
@"$TyDescr_Uint128_Prim_82" = global %"$TyDescrTy_PrimTyp_71" { i32 1, i32 2 }
@"$TyDescr_Uint128_83" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_71"* @"$TyDescr_Uint128_Prim_82" to i8*) }
@"$TyDescr_Int256_Prim_84" = global %"$TyDescrTy_PrimTyp_71" { i32 0, i32 3 }
@"$TyDescr_Int256_85" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_71"* @"$TyDescr_Int256_Prim_84" to i8*) }
@"$TyDescr_Uint256_Prim_86" = global %"$TyDescrTy_PrimTyp_71" { i32 1, i32 3 }
@"$TyDescr_Uint256_87" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_71"* @"$TyDescr_Uint256_Prim_86" to i8*) }
@"$TyDescr_String_Prim_88" = global %"$TyDescrTy_PrimTyp_71" { i32 2, i32 0 }
@"$TyDescr_String_89" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_71"* @"$TyDescr_String_Prim_88" to i8*) }
@"$TyDescr_Bnum_Prim_90" = global %"$TyDescrTy_PrimTyp_71" { i32 3, i32 0 }
@"$TyDescr_Bnum_91" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_71"* @"$TyDescr_Bnum_Prim_90" to i8*) }
@"$TyDescr_Message_Prim_92" = global %"$TyDescrTy_PrimTyp_71" { i32 4, i32 0 }
@"$TyDescr_Message_93" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_71"* @"$TyDescr_Message_Prim_92" to i8*) }
@"$TyDescr_Event_Prim_94" = global %"$TyDescrTy_PrimTyp_71" { i32 5, i32 0 }
@"$TyDescr_Event_95" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_71"* @"$TyDescr_Event_Prim_94" to i8*) }
@"$TyDescr_Exception_Prim_96" = global %"$TyDescrTy_PrimTyp_71" { i32 6, i32 0 }
@"$TyDescr_Exception_97" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_71"* @"$TyDescr_Exception_Prim_96" to i8*) }
@"$TyDescr_Bystr_Prim_98" = global %"$TyDescrTy_PrimTyp_71" { i32 7, i32 0 }
@"$TyDescr_Bystr_99" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_71"* @"$TyDescr_Bystr_Prim_98" to i8*) }
@_tydescr_table = constant [14 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_95", %_TyDescrTy_Typ* @"$TyDescr_Int64_77", %_TyDescrTy_Typ* @"$TyDescr_Uint256_87", %_TyDescrTy_Typ* @"$TyDescr_Uint32_75", %_TyDescrTy_Typ* @"$TyDescr_Uint64_79", %_TyDescrTy_Typ* @"$TyDescr_Bnum_91", %_TyDescrTy_Typ* @"$TyDescr_Uint128_83", %_TyDescrTy_Typ* @"$TyDescr_Exception_97", %_TyDescrTy_Typ* @"$TyDescr_String_89", %_TyDescrTy_Typ* @"$TyDescr_Int256_85", %_TyDescrTy_Typ* @"$TyDescr_Int128_81", %_TyDescrTy_Typ* @"$TyDescr_Bystr_99", %_TyDescrTy_Typ* @"$TyDescr_Message_93", %_TyDescrTy_Typ* @"$TyDescr_Int32_73"]
@_tydescr_table_length = constant i32 14
@_contract_parameters = constant [0 x %"$ParamDescr_812"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_813"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Uint32 @"$fundef_69"(%"$$fundef_69_env_106"* %0, %Uint32 %1) {
entry:
  %"$$fundef_69_env_one_496" = getelementptr inbounds %"$$fundef_69_env_106", %"$$fundef_69_env_106"* %0, i32 0, i32 0
  %"$one_envload_497" = load %Uint32, %Uint32* %"$$fundef_69_env_one_496", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_497", %Uint32* %one, align 4
  %"$retval_70" = alloca %Uint32, align 8
  %"$gasrem_498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_499" = icmp ugt i64 4, %"$gasrem_498"
  br i1 %"$gascmp_499", label %"$out_of_gas_500", label %"$have_gas_501"

"$out_of_gas_500":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_501"

"$have_gas_501":                                  ; preds = %"$out_of_gas_500", %entry
  %"$consume_502" = sub i64 %"$gasrem_498", 4
  store i64 %"$consume_502", i64* @_gasrem, align 8
  %"$one_503" = load %Uint32, %Uint32* %one, align 4
  %"$add_call_504" = call %Uint32 @_add_Uint32(%Uint32 %"$one_503", %Uint32 %1)
  store %Uint32 %"$add_call_504", %Uint32* %"$retval_70", align 4
  %"$$retval_70_505" = load %Uint32, %Uint32* %"$retval_70", align 4
  ret %Uint32 %"$$retval_70_505"
}

define internal %Uint32 @"$fundef_67"(%"$$fundef_67_env_107"* %0, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1) {
entry:
  %"$retval_68" = alloca %Uint32, align 8
  %"$gasrem_444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_445" = icmp ugt i64 1, %"$gasrem_444"
  br i1 %"$gascmp_445", label %"$out_of_gas_446", label %"$have_gas_447"

"$out_of_gas_446":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_447"

"$have_gas_447":                                  ; preds = %"$out_of_gas_446", %entry
  %"$consume_448" = sub i64 %"$gasrem_444", 1
  store i64 %"$consume_448", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_450" = icmp ugt i64 1, %"$gasrem_449"
  br i1 %"$gascmp_450", label %"$out_of_gas_451", label %"$have_gas_452"

"$out_of_gas_451":                                ; preds = %"$have_gas_447"
  call void @_out_of_gas()
  br label %"$have_gas_452"

"$have_gas_452":                                  ; preds = %"$out_of_gas_451", %"$have_gas_447"
  %"$consume_453" = sub i64 %"$gasrem_449", 1
  store i64 %"$consume_453", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_454" = load i64, i64* @_gasrem, align 8
  %"$gascmp_455" = icmp ugt i64 1, %"$gasrem_454"
  br i1 %"$gascmp_455", label %"$out_of_gas_456", label %"$have_gas_457"

"$out_of_gas_456":                                ; preds = %"$have_gas_452"
  call void @_out_of_gas()
  br label %"$have_gas_457"

"$have_gas_457":                                  ; preds = %"$out_of_gas_456", %"$have_gas_452"
  %"$consume_458" = sub i64 %"$gasrem_454", 1
  store i64 %"$consume_458", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_460" = icmp ugt i64 1, %"$gasrem_459"
  br i1 %"$gascmp_460", label %"$out_of_gas_461", label %"$have_gas_462"

"$out_of_gas_461":                                ; preds = %"$have_gas_457"
  call void @_out_of_gas()
  br label %"$have_gas_462"

"$have_gas_462":                                  ; preds = %"$out_of_gas_461", %"$have_gas_457"
  %"$consume_463" = sub i64 %"$gasrem_459", 1
  store i64 %"$consume_463", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4
  %"$gasrem_464" = load i64, i64* @_gasrem, align 8
  %"$gascmp_465" = icmp ugt i64 1, %"$gasrem_464"
  br i1 %"$gascmp_465", label %"$out_of_gas_466", label %"$have_gas_467"

"$out_of_gas_466":                                ; preds = %"$have_gas_462"
  call void @_out_of_gas()
  br label %"$have_gas_467"

"$have_gas_467":                                  ; preds = %"$out_of_gas_466", %"$have_gas_462"
  %"$consume_468" = sub i64 %"$gasrem_464", 1
  store i64 %"$consume_468", i64* @_gasrem, align 8
  %add1 = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_470" = icmp ugt i64 1, %"$gasrem_469"
  br i1 %"$gascmp_470", label %"$out_of_gas_471", label %"$have_gas_472"

"$out_of_gas_471":                                ; preds = %"$have_gas_467"
  call void @_out_of_gas()
  br label %"$have_gas_472"

"$have_gas_472":                                  ; preds = %"$out_of_gas_471", %"$have_gas_467"
  %"$consume_473" = sub i64 %"$gasrem_469", 1
  store i64 %"$consume_473", i64* @_gasrem, align 8
  %"$$fundef_69_envp_474_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_69_envp_474_salloc" = call i8* @_salloc(i8* %"$$fundef_69_envp_474_load", i64 4)
  %"$$fundef_69_envp_474" = bitcast i8* %"$$fundef_69_envp_474_salloc" to %"$$fundef_69_env_106"*
  %"$$fundef_69_env_voidp_476" = bitcast %"$$fundef_69_env_106"* %"$$fundef_69_envp_474" to i8*
  %"$$fundef_69_cloval_477" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_69_env_106"*, %Uint32)* @"$fundef_69" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_69_env_voidp_476", 1
  %"$$fundef_69_env_one_478" = getelementptr inbounds %"$$fundef_69_env_106", %"$$fundef_69_env_106"* %"$$fundef_69_envp_474", i32 0, i32 0
  %"$one_479" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_479", %Uint32* %"$$fundef_69_env_one_478", align 4
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_69_cloval_477", { %Uint32 (i8*, %Uint32)*, i8* }* %add1, align 8
  %"$gasrem_480" = load i64, i64* @_gasrem, align 8
  %"$gascmp_481" = icmp ugt i64 1, %"$gasrem_480"
  br i1 %"$gascmp_481", label %"$out_of_gas_482", label %"$have_gas_483"

"$out_of_gas_482":                                ; preds = %"$have_gas_472"
  call void @_out_of_gas()
  br label %"$have_gas_483"

"$have_gas_483":                                  ; preds = %"$out_of_gas_482", %"$have_gas_472"
  %"$consume_484" = sub i64 %"$gasrem_480", 1
  store i64 %"$consume_484", i64* @_gasrem, align 8
  %"$c_15" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$c_fptr_485" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1, 0
  %"$c_envptr_486" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1, 1
  %"$add1_487" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %add1, align 8
  %"$c_call_488" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$c_fptr_485"(i8* %"$c_envptr_486", { %Uint32 (i8*, %Uint32)*, i8* } %"$add1_487")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$c_call_488", { %Uint32 (i8*, %Uint32)*, i8* }* %"$c_15", align 8
  %"$c_16" = alloca %Uint32, align 8
  %"$$c_15_489" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$c_15", align 8
  %"$$c_15_fptr_490" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$c_15_489", 0
  %"$$c_15_envptr_491" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$c_15_489", 1
  %"$zero_492" = load %Uint32, %Uint32* %zero, align 4
  %"$$c_15_call_493" = call %Uint32 %"$$c_15_fptr_490"(i8* %"$$c_15_envptr_491", %Uint32 %"$zero_492")
  store %Uint32 %"$$c_15_call_493", %Uint32* %"$c_16", align 4
  %"$$c_16_494" = load %Uint32, %Uint32* %"$c_16", align 4
  store %Uint32 %"$$c_16_494", %Uint32* %"$retval_68", align 4
  %"$$retval_68_495" = load %Uint32, %Uint32* %"$retval_68", align 4
  ret %Uint32 %"$$retval_68_495"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_65"(%"$$fundef_65_env_108"* %0, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %1) {
entry:
  %"$$fundef_65_env_m_431" = getelementptr inbounds %"$$fundef_65_env_108", %"$$fundef_65_env_108"* %0, i32 0, i32 0
  %"$m_envload_432" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_65_env_m_431", align 8
  %m = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_envload_432", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m, align 8
  %"$retval_66" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_434" = icmp ugt i64 1, %"$gasrem_433"
  br i1 %"$gascmp_434", label %"$out_of_gas_435", label %"$have_gas_436"

"$out_of_gas_435":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_436"

"$have_gas_436":                                  ; preds = %"$out_of_gas_435", %entry
  %"$consume_437" = sub i64 %"$gasrem_433", 1
  store i64 %"$consume_437", i64* @_gasrem, align 8
  %"$n_14" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$n_fptr_438" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %1, 0
  %"$n_envptr_439" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %1, 1
  %"$m_440" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m, align 8
  %"$n_call_441" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_fptr_438"(i8* %"$n_envptr_439", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_440")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_call_441", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$n_14", align 8
  %"$$n_14_442" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$n_14", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$n_14_442", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_66", align 8
  %"$$retval_66_443" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_66", align 8
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_66_443"
}

define internal { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } @"$fundef_63"(%"$$fundef_63_env_109"* %0, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1) {
entry:
  %"$retval_64" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_420" = load i64, i64* @_gasrem, align 8
  %"$gascmp_421" = icmp ugt i64 1, %"$gasrem_420"
  br i1 %"$gascmp_421", label %"$out_of_gas_422", label %"$have_gas_423"

"$out_of_gas_422":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_423"

"$have_gas_423":                                  ; preds = %"$out_of_gas_422", %entry
  %"$consume_424" = sub i64 %"$gasrem_420", 1
  store i64 %"$consume_424", i64* @_gasrem, align 8
  %"$$fundef_65_envp_425_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_65_envp_425_salloc" = call i8* @_salloc(i8* %"$$fundef_65_envp_425_load", i64 16)
  %"$$fundef_65_envp_425" = bitcast i8* %"$$fundef_65_envp_425_salloc" to %"$$fundef_65_env_108"*
  %"$$fundef_65_env_voidp_427" = bitcast %"$$fundef_65_env_108"* %"$$fundef_65_envp_425" to i8*
  %"$$fundef_65_cloval_428" = insertvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_65_env_108"*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })* @"$fundef_65" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*), i8* undef }, i8* %"$$fundef_65_env_voidp_427", 1
  %"$$fundef_65_env_m_429" = getelementptr inbounds %"$$fundef_65_env_108", %"$$fundef_65_env_108"* %"$$fundef_65_envp_425", i32 0, i32 0
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_65_env_m_429", align 8
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } %"$$fundef_65_cloval_428", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* }* %"$retval_64", align 8
  %"$$retval_64_430" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* }* %"$retval_64", align 8
  ret { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } %"$$retval_64_430"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_61"(%"$$fundef_61_env_110"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$$fundef_61_env_m_389" = getelementptr inbounds %"$$fundef_61_env_110", %"$$fundef_61_env_110"* %0, i32 0, i32 0
  %"$m_envload_390" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_61_env_m_389", align 8
  %m = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_envload_390", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m, align 8
  %"$$fundef_61_env_n_391" = getelementptr inbounds %"$$fundef_61_env_110", %"$$fundef_61_env_110"* %0, i32 0, i32 1
  %"$n_envload_392" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_61_env_n_391", align 8
  %n = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_envload_392", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %n, align 8
  %"$retval_62" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_393" = load i64, i64* @_gasrem, align 8
  %"$gascmp_394" = icmp ugt i64 1, %"$gasrem_393"
  br i1 %"$gascmp_394", label %"$out_of_gas_395", label %"$have_gas_396"

"$out_of_gas_395":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_396"

"$have_gas_396":                                  ; preds = %"$out_of_gas_395", %entry
  %"$consume_397" = sub i64 %"$gasrem_393", 1
  store i64 %"$consume_397", i64* @_gasrem, align 8
  %add_m = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_399" = icmp ugt i64 1, %"$gasrem_398"
  br i1 %"$gascmp_399", label %"$out_of_gas_400", label %"$have_gas_401"

"$out_of_gas_400":                                ; preds = %"$have_gas_396"
  call void @_out_of_gas()
  br label %"$have_gas_401"

"$have_gas_401":                                  ; preds = %"$out_of_gas_400", %"$have_gas_396"
  %"$consume_402" = sub i64 %"$gasrem_398", 1
  store i64 %"$consume_402", i64* @_gasrem, align 8
  %"$m_12" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$m_403" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m, align 8
  %"$m_fptr_404" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_403", 0
  %"$m_envptr_405" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_403", 1
  %"$m_call_406" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$m_fptr_404"(i8* %"$m_envptr_405", { %Uint32 (i8*, %Uint32)*, i8* } %1)
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$m_call_406", { %Uint32 (i8*, %Uint32)*, i8* }* %"$m_12", align 8
  %"$$m_12_407" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$m_12", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$m_12_407", { %Uint32 (i8*, %Uint32)*, i8* }* %add_m, align 8
  %"$gasrem_408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_409" = icmp ugt i64 1, %"$gasrem_408"
  br i1 %"$gascmp_409", label %"$out_of_gas_410", label %"$have_gas_411"

"$out_of_gas_410":                                ; preds = %"$have_gas_401"
  call void @_out_of_gas()
  br label %"$have_gas_411"

"$have_gas_411":                                  ; preds = %"$out_of_gas_410", %"$have_gas_401"
  %"$consume_412" = sub i64 %"$gasrem_408", 1
  store i64 %"$consume_412", i64* @_gasrem, align 8
  %"$n_13" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$n_413" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %n, align 8
  %"$n_fptr_414" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_413", 0
  %"$n_envptr_415" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_413", 1
  %"$add_m_416" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %add_m, align 8
  %"$n_call_417" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$n_fptr_414"(i8* %"$n_envptr_415", { %Uint32 (i8*, %Uint32)*, i8* } %"$add_m_416")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$n_call_417", { %Uint32 (i8*, %Uint32)*, i8* }* %"$n_13", align 8
  %"$$n_13_418" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$n_13", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$n_13_418", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_62", align 8
  %"$$retval_62_419" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_62", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_62_419"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_59"(%"$$fundef_59_env_111"* %0, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1) {
entry:
  %"$$fundef_59_env_m_374" = getelementptr inbounds %"$$fundef_59_env_111", %"$$fundef_59_env_111"* %0, i32 0, i32 0
  %"$m_envload_375" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_59_env_m_374", align 8
  %m = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_envload_375", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m, align 8
  %"$retval_60" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_376" = load i64, i64* @_gasrem, align 8
  %"$gascmp_377" = icmp ugt i64 1, %"$gasrem_376"
  br i1 %"$gascmp_377", label %"$out_of_gas_378", label %"$have_gas_379"

"$out_of_gas_378":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_379"

"$have_gas_379":                                  ; preds = %"$out_of_gas_378", %entry
  %"$consume_380" = sub i64 %"$gasrem_376", 1
  store i64 %"$consume_380", i64* @_gasrem, align 8
  %"$$fundef_61_envp_381_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_61_envp_381_salloc" = call i8* @_salloc(i8* %"$$fundef_61_envp_381_load", i64 32)
  %"$$fundef_61_envp_381" = bitcast i8* %"$$fundef_61_envp_381_salloc" to %"$$fundef_61_env_110"*
  %"$$fundef_61_env_voidp_383" = bitcast %"$$fundef_61_env_110"* %"$$fundef_61_envp_381" to i8*
  %"$$fundef_61_cloval_384" = insertvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_61_env_110"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_61" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* undef }, i8* %"$$fundef_61_env_voidp_383", 1
  %"$$fundef_61_env_m_385" = getelementptr inbounds %"$$fundef_61_env_110", %"$$fundef_61_env_110"* %"$$fundef_61_envp_381", i32 0, i32 0
  %"$m_386" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_386", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_61_env_m_385", align 8
  %"$$fundef_61_env_n_387" = getelementptr inbounds %"$$fundef_61_env_110", %"$$fundef_61_env_110"* %"$$fundef_61_envp_381", i32 0, i32 1
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_61_env_n_387", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$fundef_61_cloval_384", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_60", align 8
  %"$$retval_60_388" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_60", align 8
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_60_388"
}

define internal { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } @"$fundef_57"(%"$$fundef_57_env_112"* %0, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1) {
entry:
  %"$retval_58" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_364" = icmp ugt i64 1, %"$gasrem_363"
  br i1 %"$gascmp_364", label %"$out_of_gas_365", label %"$have_gas_366"

"$out_of_gas_365":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_366"

"$have_gas_366":                                  ; preds = %"$out_of_gas_365", %entry
  %"$consume_367" = sub i64 %"$gasrem_363", 1
  store i64 %"$consume_367", i64* @_gasrem, align 8
  %"$$fundef_59_envp_368_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_59_envp_368_salloc" = call i8* @_salloc(i8* %"$$fundef_59_envp_368_load", i64 16)
  %"$$fundef_59_envp_368" = bitcast i8* %"$$fundef_59_envp_368_salloc" to %"$$fundef_59_env_111"*
  %"$$fundef_59_env_voidp_370" = bitcast %"$$fundef_59_env_111"* %"$$fundef_59_envp_368" to i8*
  %"$$fundef_59_cloval_371" = insertvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_59_env_111"*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* @"$fundef_59" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*), i8* undef }, i8* %"$$fundef_59_env_voidp_370", 1
  %"$$fundef_59_env_m_372" = getelementptr inbounds %"$$fundef_59_env_111", %"$$fundef_59_env_111"* %"$$fundef_59_envp_368", i32 0, i32 0
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_59_env_m_372", align 8
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$fundef_59_cloval_371", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$retval_58", align 8
  %"$$retval_58_373" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$retval_58", align 8
  ret { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$retval_58_373"
}

define internal %Uint32 @"$fundef_55"(%"$$fundef_55_env_113"* %0, %Uint32 %1) {
entry:
  %"$$fundef_55_env_m_320" = getelementptr inbounds %"$$fundef_55_env_113", %"$$fundef_55_env_113"* %0, i32 0, i32 0
  %"$m_envload_321" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_55_env_m_320", align 8
  %m = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_envload_321", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m, align 8
  %"$$fundef_55_env_n_322" = getelementptr inbounds %"$$fundef_55_env_113", %"$$fundef_55_env_113"* %0, i32 0, i32 1
  %"$n_envload_323" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_55_env_n_322", align 8
  %n = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_envload_323", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %n, align 8
  %"$$fundef_55_env_s_324" = getelementptr inbounds %"$$fundef_55_env_113", %"$$fundef_55_env_113"* %0, i32 0, i32 2
  %"$s_envload_325" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_55_env_s_324", align 8
  %s = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_envload_325", { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$retval_56" = alloca %Uint32, align 8
  %"$gasrem_326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_327" = icmp ugt i64 1, %"$gasrem_326"
  br i1 %"$gascmp_327", label %"$out_of_gas_328", label %"$have_gas_329"

"$out_of_gas_328":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_329"

"$have_gas_329":                                  ; preds = %"$out_of_gas_328", %entry
  %"$consume_330" = sub i64 %"$gasrem_326", 1
  store i64 %"$consume_330", i64* @_gasrem, align 8
  %nsz = alloca %Uint32, align 8
  %"$gasrem_331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_332" = icmp ugt i64 1, %"$gasrem_331"
  br i1 %"$gascmp_332", label %"$out_of_gas_333", label %"$have_gas_334"

"$out_of_gas_333":                                ; preds = %"$have_gas_329"
  call void @_out_of_gas()
  br label %"$have_gas_334"

"$have_gas_334":                                  ; preds = %"$out_of_gas_333", %"$have_gas_329"
  %"$consume_335" = sub i64 %"$gasrem_331", 1
  store i64 %"$consume_335", i64* @_gasrem, align 8
  %"$n_8" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$n_336" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %n, align 8
  %"$n_fptr_337" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_336", 0
  %"$n_envptr_338" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_336", 1
  %"$s_339" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$n_call_340" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$n_fptr_337"(i8* %"$n_envptr_338", { %Uint32 (i8*, %Uint32)*, i8* } %"$s_339")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$n_call_340", { %Uint32 (i8*, %Uint32)*, i8* }* %"$n_8", align 8
  %"$n_9" = alloca %Uint32, align 8
  %"$$n_8_341" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$n_8", align 8
  %"$$n_8_fptr_342" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$n_8_341", 0
  %"$$n_8_envptr_343" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$n_8_341", 1
  %"$$n_8_call_344" = call %Uint32 %"$$n_8_fptr_342"(i8* %"$$n_8_envptr_343", %Uint32 %1)
  store %Uint32 %"$$n_8_call_344", %Uint32* %"$n_9", align 4
  %"$$n_9_345" = load %Uint32, %Uint32* %"$n_9", align 4
  store %Uint32 %"$$n_9_345", %Uint32* %nsz, align 4
  %"$gasrem_346" = load i64, i64* @_gasrem, align 8
  %"$gascmp_347" = icmp ugt i64 1, %"$gasrem_346"
  br i1 %"$gascmp_347", label %"$out_of_gas_348", label %"$have_gas_349"

"$out_of_gas_348":                                ; preds = %"$have_gas_334"
  call void @_out_of_gas()
  br label %"$have_gas_349"

"$have_gas_349":                                  ; preds = %"$out_of_gas_348", %"$have_gas_334"
  %"$consume_350" = sub i64 %"$gasrem_346", 1
  store i64 %"$consume_350", i64* @_gasrem, align 8
  %"$m_10" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$m_351" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m, align 8
  %"$m_fptr_352" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_351", 0
  %"$m_envptr_353" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_351", 1
  %"$s_354" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$m_call_355" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$m_fptr_352"(i8* %"$m_envptr_353", { %Uint32 (i8*, %Uint32)*, i8* } %"$s_354")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$m_call_355", { %Uint32 (i8*, %Uint32)*, i8* }* %"$m_10", align 8
  %"$m_11" = alloca %Uint32, align 8
  %"$$m_10_356" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$m_10", align 8
  %"$$m_10_fptr_357" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$m_10_356", 0
  %"$$m_10_envptr_358" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$m_10_356", 1
  %"$nsz_359" = load %Uint32, %Uint32* %nsz, align 4
  %"$$m_10_call_360" = call %Uint32 %"$$m_10_fptr_357"(i8* %"$$m_10_envptr_358", %Uint32 %"$nsz_359")
  store %Uint32 %"$$m_10_call_360", %Uint32* %"$m_11", align 4
  %"$$m_11_361" = load %Uint32, %Uint32* %"$m_11", align 4
  store %Uint32 %"$$m_11_361", %Uint32* %"$retval_56", align 4
  %"$$retval_56_362" = load %Uint32, %Uint32* %"$retval_56", align 4
  ret %Uint32 %"$$retval_56_362"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_53"(%"$$fundef_53_env_114"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$$fundef_53_env_m_301" = getelementptr inbounds %"$$fundef_53_env_114", %"$$fundef_53_env_114"* %0, i32 0, i32 0
  %"$m_envload_302" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_53_env_m_301", align 8
  %m = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_envload_302", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m, align 8
  %"$$fundef_53_env_n_303" = getelementptr inbounds %"$$fundef_53_env_114", %"$$fundef_53_env_114"* %0, i32 0, i32 1
  %"$n_envload_304" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_53_env_n_303", align 8
  %n = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_envload_304", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %n, align 8
  %"$retval_54" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_306" = icmp ugt i64 1, %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %entry
  %"$consume_309" = sub i64 %"$gasrem_305", 1
  store i64 %"$consume_309", i64* @_gasrem, align 8
  %"$$fundef_55_envp_310_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_55_envp_310_salloc" = call i8* @_salloc(i8* %"$$fundef_55_envp_310_load", i64 48)
  %"$$fundef_55_envp_310" = bitcast i8* %"$$fundef_55_envp_310_salloc" to %"$$fundef_55_env_113"*
  %"$$fundef_55_env_voidp_312" = bitcast %"$$fundef_55_env_113"* %"$$fundef_55_envp_310" to i8*
  %"$$fundef_55_cloval_313" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_55_env_113"*, %Uint32)* @"$fundef_55" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_55_env_voidp_312", 1
  %"$$fundef_55_env_m_314" = getelementptr inbounds %"$$fundef_55_env_113", %"$$fundef_55_env_113"* %"$$fundef_55_envp_310", i32 0, i32 0
  %"$m_315" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_315", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_55_env_m_314", align 8
  %"$$fundef_55_env_n_316" = getelementptr inbounds %"$$fundef_55_env_113", %"$$fundef_55_env_113"* %"$$fundef_55_envp_310", i32 0, i32 1
  %"$n_317" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %n, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_317", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_55_env_n_316", align 8
  %"$$fundef_55_env_s_318" = getelementptr inbounds %"$$fundef_55_env_113", %"$$fundef_55_env_113"* %"$$fundef_55_envp_310", i32 0, i32 2
  store { %Uint32 (i8*, %Uint32)*, i8* } %1, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_55_env_s_318", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_55_cloval_313", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_54", align 8
  %"$$retval_54_319" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_54", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_54_319"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_51"(%"$$fundef_51_env_115"* %0, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1) {
entry:
  %"$$fundef_51_env_m_286" = getelementptr inbounds %"$$fundef_51_env_115", %"$$fundef_51_env_115"* %0, i32 0, i32 0
  %"$m_envload_287" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_51_env_m_286", align 8
  %m = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_envload_287", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m, align 8
  %"$retval_52" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_289" = icmp ugt i64 1, %"$gasrem_288"
  br i1 %"$gascmp_289", label %"$out_of_gas_290", label %"$have_gas_291"

"$out_of_gas_290":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_291"

"$have_gas_291":                                  ; preds = %"$out_of_gas_290", %entry
  %"$consume_292" = sub i64 %"$gasrem_288", 1
  store i64 %"$consume_292", i64* @_gasrem, align 8
  %"$$fundef_53_envp_293_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_53_envp_293_salloc" = call i8* @_salloc(i8* %"$$fundef_53_envp_293_load", i64 32)
  %"$$fundef_53_envp_293" = bitcast i8* %"$$fundef_53_envp_293_salloc" to %"$$fundef_53_env_114"*
  %"$$fundef_53_env_voidp_295" = bitcast %"$$fundef_53_env_114"* %"$$fundef_53_envp_293" to i8*
  %"$$fundef_53_cloval_296" = insertvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_53_env_114"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_53" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* undef }, i8* %"$$fundef_53_env_voidp_295", 1
  %"$$fundef_53_env_m_297" = getelementptr inbounds %"$$fundef_53_env_114", %"$$fundef_53_env_114"* %"$$fundef_53_envp_293", i32 0, i32 0
  %"$m_298" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %m, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_298", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_53_env_m_297", align 8
  %"$$fundef_53_env_n_299" = getelementptr inbounds %"$$fundef_53_env_114", %"$$fundef_53_env_114"* %"$$fundef_53_envp_293", i32 0, i32 1
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_53_env_n_299", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$fundef_53_cloval_296", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_52", align 8
  %"$$retval_52_300" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_52", align 8
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_52_300"
}

define internal { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } @"$fundef_49"(%"$$fundef_49_env_116"* %0, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1) {
entry:
  %"$retval_50" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_276" = icmp ugt i64 1, %"$gasrem_275"
  br i1 %"$gascmp_276", label %"$out_of_gas_277", label %"$have_gas_278"

"$out_of_gas_277":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_278"

"$have_gas_278":                                  ; preds = %"$out_of_gas_277", %entry
  %"$consume_279" = sub i64 %"$gasrem_275", 1
  store i64 %"$consume_279", i64* @_gasrem, align 8
  %"$$fundef_51_envp_280_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_51_envp_280_salloc" = call i8* @_salloc(i8* %"$$fundef_51_envp_280_load", i64 16)
  %"$$fundef_51_envp_280" = bitcast i8* %"$$fundef_51_envp_280_salloc" to %"$$fundef_51_env_115"*
  %"$$fundef_51_env_voidp_282" = bitcast %"$$fundef_51_env_115"* %"$$fundef_51_envp_280" to i8*
  %"$$fundef_51_cloval_283" = insertvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_51_env_115"*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* @"$fundef_51" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*), i8* undef }, i8* %"$$fundef_51_env_voidp_282", 1
  %"$$fundef_51_env_m_284" = getelementptr inbounds %"$$fundef_51_env_115", %"$$fundef_51_env_115"* %"$$fundef_51_envp_280", i32 0, i32 0
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_51_env_m_284", align 8
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$fundef_51_cloval_283", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$retval_50", align 8
  %"$$retval_50_285" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$retval_50", align 8
  ret { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$retval_50_285"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_47"(%"$$fundef_47_env_117"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$$fundef_47_env_s_230" = getelementptr inbounds %"$$fundef_47_env_117", %"$$fundef_47_env_117"* %0, i32 0, i32 0
  %"$s_envload_231" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_47_env_s_230", align 8
  %s = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$s_envload_231", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %s, align 8
  %"$retval_48" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_232" = load i64, i64* @_gasrem, align 8
  %"$gascmp_233" = icmp ugt i64 1, %"$gasrem_232"
  br i1 %"$gascmp_233", label %"$out_of_gas_234", label %"$have_gas_235"

"$out_of_gas_234":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_235"

"$have_gas_235":                                  ; preds = %"$out_of_gas_234", %entry
  %"$consume_236" = sub i64 %"$gasrem_232", 1
  store i64 %"$consume_236", i64* @_gasrem, align 8
  %sz = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_238" = icmp ugt i64 1, %"$gasrem_237"
  br i1 %"$gascmp_238", label %"$out_of_gas_239", label %"$have_gas_240"

"$out_of_gas_239":                                ; preds = %"$have_gas_235"
  call void @_out_of_gas()
  br label %"$have_gas_240"

"$have_gas_240":                                  ; preds = %"$out_of_gas_239", %"$have_gas_235"
  %"$consume_241" = sub i64 %"$gasrem_237", 1
  store i64 %"$consume_241", i64* @_gasrem, align 8
  %"$s_5" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$s_242" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %s, align 8
  %"$s_fptr_243" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$s_242", 0
  %"$s_envptr_244" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$s_242", 1
  %"$s_call_245" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$s_fptr_243"(i8* %"$s_envptr_244", { %Uint32 (i8*, %Uint32)*, i8* } %1)
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_call_245", { %Uint32 (i8*, %Uint32)*, i8* }* %"$s_5", align 8
  %"$$s_5_246" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$s_5", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$s_5_246", { %Uint32 (i8*, %Uint32)*, i8* }* %sz, align 8
  %"$gasrem_247" = load i64, i64* @_gasrem, align 8
  %"$gascmp_248" = icmp ugt i64 1, %"$gasrem_247"
  br i1 %"$gascmp_248", label %"$out_of_gas_249", label %"$have_gas_250"

"$out_of_gas_249":                                ; preds = %"$have_gas_240"
  call void @_out_of_gas()
  br label %"$have_gas_250"

"$have_gas_250":                                  ; preds = %"$out_of_gas_249", %"$have_gas_240"
  %"$consume_251" = sub i64 %"$gasrem_247", 1
  store i64 %"$consume_251", i64* @_gasrem, align 8
  %ssz = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_252" = load i64, i64* @_gasrem, align 8
  %"$gascmp_253" = icmp ugt i64 1, %"$gasrem_252"
  br i1 %"$gascmp_253", label %"$out_of_gas_254", label %"$have_gas_255"

"$out_of_gas_254":                                ; preds = %"$have_gas_250"
  call void @_out_of_gas()
  br label %"$have_gas_255"

"$have_gas_255":                                  ; preds = %"$out_of_gas_254", %"$have_gas_250"
  %"$consume_256" = sub i64 %"$gasrem_252", 1
  store i64 %"$consume_256", i64* @_gasrem, align 8
  %"$s_6" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$s_257" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %s, align 8
  %"$s_fptr_258" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$s_257", 0
  %"$s_envptr_259" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$s_257", 1
  %"$sz_260" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %sz, align 8
  %"$s_call_261" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$s_fptr_258"(i8* %"$s_envptr_259", { %Uint32 (i8*, %Uint32)*, i8* } %"$sz_260")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_call_261", { %Uint32 (i8*, %Uint32)*, i8* }* %"$s_6", align 8
  %"$$s_6_262" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$s_6", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$s_6_262", { %Uint32 (i8*, %Uint32)*, i8* }* %ssz, align 8
  %"$gasrem_263" = load i64, i64* @_gasrem, align 8
  %"$gascmp_264" = icmp ugt i64 1, %"$gasrem_263"
  br i1 %"$gascmp_264", label %"$out_of_gas_265", label %"$have_gas_266"

"$out_of_gas_265":                                ; preds = %"$have_gas_255"
  call void @_out_of_gas()
  br label %"$have_gas_266"

"$have_gas_266":                                  ; preds = %"$out_of_gas_265", %"$have_gas_255"
  %"$consume_267" = sub i64 %"$gasrem_263", 1
  store i64 %"$consume_267", i64* @_gasrem, align 8
  %"$s_7" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$s_268" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %s, align 8
  %"$s_fptr_269" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$s_268", 0
  %"$s_envptr_270" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$s_268", 1
  %"$ssz_271" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %ssz, align 8
  %"$s_call_272" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$s_fptr_269"(i8* %"$s_envptr_270", { %Uint32 (i8*, %Uint32)*, i8* } %"$ssz_271")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_call_272", { %Uint32 (i8*, %Uint32)*, i8* }* %"$s_7", align 8
  %"$$s_7_273" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$s_7", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$s_7_273", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_48", align 8
  %"$$retval_48_274" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_48", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_48_274"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_45"(%"$$fundef_45_env_118"* %0, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1) {
entry:
  %"$retval_46" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 1, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %entry
  %"$consume_223" = sub i64 %"$gasrem_219", 1
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %"$$fundef_47_envp_224_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_47_envp_224_salloc" = call i8* @_salloc(i8* %"$$fundef_47_envp_224_load", i64 16)
  %"$$fundef_47_envp_224" = bitcast i8* %"$$fundef_47_envp_224_salloc" to %"$$fundef_47_env_117"*
  %"$$fundef_47_env_voidp_226" = bitcast %"$$fundef_47_env_117"* %"$$fundef_47_envp_224" to i8*
  %"$$fundef_47_cloval_227" = insertvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_47_env_117"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_47" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* undef }, i8* %"$$fundef_47_env_voidp_226", 1
  %"$$fundef_47_env_s_228" = getelementptr inbounds %"$$fundef_47_env_117", %"$$fundef_47_env_117"* %"$$fundef_47_envp_224", i32 0, i32 0
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %1, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$$fundef_47_env_s_228", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$fundef_47_cloval_227", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_46", align 8
  %"$$retval_46_229" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_46", align 8
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_46_229"
}

define internal %Uint32 @"$fundef_43"(%"$$fundef_43_env_119"* %0, %Uint32 %1) {
entry:
  %"$$fundef_43_env_s_174" = getelementptr inbounds %"$$fundef_43_env_119", %"$$fundef_43_env_119"* %0, i32 0, i32 0
  %"$s_envload_175" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_43_env_s_174", align 8
  %s = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_envload_175", { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$retval_44" = alloca %Uint32, align 8
  %"$gasrem_176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_177" = icmp ugt i64 1, %"$gasrem_176"
  br i1 %"$gascmp_177", label %"$out_of_gas_178", label %"$have_gas_179"

"$out_of_gas_178":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_179"

"$have_gas_179":                                  ; preds = %"$out_of_gas_178", %entry
  %"$consume_180" = sub i64 %"$gasrem_176", 1
  store i64 %"$consume_180", i64* @_gasrem, align 8
  %sz = alloca %Uint32, align 8
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 1, %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %"$have_gas_179"
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %"$have_gas_179"
  %"$consume_185" = sub i64 %"$gasrem_181", 1
  store i64 %"$consume_185", i64* @_gasrem, align 8
  %"$s_2" = alloca %Uint32, align 8
  %"$s_186" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$s_fptr_187" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_186", 0
  %"$s_envptr_188" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_186", 1
  %"$s_call_189" = call %Uint32 %"$s_fptr_187"(i8* %"$s_envptr_188", %Uint32 %1)
  store %Uint32 %"$s_call_189", %Uint32* %"$s_2", align 4
  %"$$s_2_190" = load %Uint32, %Uint32* %"$s_2", align 4
  store %Uint32 %"$$s_2_190", %Uint32* %sz, align 4
  %"$gasrem_191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_192" = icmp ugt i64 1, %"$gasrem_191"
  br i1 %"$gascmp_192", label %"$out_of_gas_193", label %"$have_gas_194"

"$out_of_gas_193":                                ; preds = %"$have_gas_184"
  call void @_out_of_gas()
  br label %"$have_gas_194"

"$have_gas_194":                                  ; preds = %"$out_of_gas_193", %"$have_gas_184"
  %"$consume_195" = sub i64 %"$gasrem_191", 1
  store i64 %"$consume_195", i64* @_gasrem, align 8
  %ssz = alloca %Uint32, align 8
  %"$gasrem_196" = load i64, i64* @_gasrem, align 8
  %"$gascmp_197" = icmp ugt i64 1, %"$gasrem_196"
  br i1 %"$gascmp_197", label %"$out_of_gas_198", label %"$have_gas_199"

"$out_of_gas_198":                                ; preds = %"$have_gas_194"
  call void @_out_of_gas()
  br label %"$have_gas_199"

"$have_gas_199":                                  ; preds = %"$out_of_gas_198", %"$have_gas_194"
  %"$consume_200" = sub i64 %"$gasrem_196", 1
  store i64 %"$consume_200", i64* @_gasrem, align 8
  %"$s_3" = alloca %Uint32, align 8
  %"$s_201" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$s_fptr_202" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_201", 0
  %"$s_envptr_203" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_201", 1
  %"$sz_204" = load %Uint32, %Uint32* %sz, align 4
  %"$s_call_205" = call %Uint32 %"$s_fptr_202"(i8* %"$s_envptr_203", %Uint32 %"$sz_204")
  store %Uint32 %"$s_call_205", %Uint32* %"$s_3", align 4
  %"$$s_3_206" = load %Uint32, %Uint32* %"$s_3", align 4
  store %Uint32 %"$$s_3_206", %Uint32* %ssz, align 4
  %"$gasrem_207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_208" = icmp ugt i64 1, %"$gasrem_207"
  br i1 %"$gascmp_208", label %"$out_of_gas_209", label %"$have_gas_210"

"$out_of_gas_209":                                ; preds = %"$have_gas_199"
  call void @_out_of_gas()
  br label %"$have_gas_210"

"$have_gas_210":                                  ; preds = %"$out_of_gas_209", %"$have_gas_199"
  %"$consume_211" = sub i64 %"$gasrem_207", 1
  store i64 %"$consume_211", i64* @_gasrem, align 8
  %"$s_4" = alloca %Uint32, align 8
  %"$s_212" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$s_fptr_213" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_212", 0
  %"$s_envptr_214" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_212", 1
  %"$ssz_215" = load %Uint32, %Uint32* %ssz, align 4
  %"$s_call_216" = call %Uint32 %"$s_fptr_213"(i8* %"$s_envptr_214", %Uint32 %"$ssz_215")
  store %Uint32 %"$s_call_216", %Uint32* %"$s_4", align 4
  %"$$s_4_217" = load %Uint32, %Uint32* %"$s_4", align 4
  store %Uint32 %"$$s_4_217", %Uint32* %"$retval_44", align 4
  %"$$retval_44_218" = load %Uint32, %Uint32* %"$retval_44", align 4
  ret %Uint32 %"$$retval_44_218"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_41"(%"$$fundef_41_env_120"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_42" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 1, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %entry
  %"$consume_167" = sub i64 %"$gasrem_163", 1
  store i64 %"$consume_167", i64* @_gasrem, align 8
  %"$$fundef_43_envp_168_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_43_envp_168_salloc" = call i8* @_salloc(i8* %"$$fundef_43_envp_168_load", i64 16)
  %"$$fundef_43_envp_168" = bitcast i8* %"$$fundef_43_envp_168_salloc" to %"$$fundef_43_env_119"*
  %"$$fundef_43_env_voidp_170" = bitcast %"$$fundef_43_env_119"* %"$$fundef_43_envp_168" to i8*
  %"$$fundef_43_cloval_171" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_43_env_119"*, %Uint32)* @"$fundef_43" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_43_env_voidp_170", 1
  %"$$fundef_43_env_s_172" = getelementptr inbounds %"$$fundef_43_env_119", %"$$fundef_43_env_119"* %"$$fundef_43_envp_168", i32 0, i32 0
  store { %Uint32 (i8*, %Uint32)*, i8* } %1, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_43_env_s_172", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_43_cloval_171", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_42", align 8
  %"$$retval_42_173" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_42", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_42_173"
}

define internal %Uint32 @"$fundef_39"(%"$$fundef_39_env_121"* %0, %Uint32 %1) {
entry:
  %"$$fundef_39_env_s_134" = getelementptr inbounds %"$$fundef_39_env_121", %"$$fundef_39_env_121"* %0, i32 0, i32 0
  %"$s_envload_135" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_39_env_s_134", align 8
  %s = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_envload_135", { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$retval_40" = alloca %Uint32, align 8
  %"$gasrem_136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_137" = icmp ugt i64 1, %"$gasrem_136"
  br i1 %"$gascmp_137", label %"$out_of_gas_138", label %"$have_gas_139"

"$out_of_gas_138":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_139"

"$have_gas_139":                                  ; preds = %"$out_of_gas_138", %entry
  %"$consume_140" = sub i64 %"$gasrem_136", 1
  store i64 %"$consume_140", i64* @_gasrem, align 8
  %sz = alloca %Uint32, align 8
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 1, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %"$have_gas_139"
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %"$have_gas_139"
  %"$consume_145" = sub i64 %"$gasrem_141", 1
  store i64 %"$consume_145", i64* @_gasrem, align 8
  %"$s_0" = alloca %Uint32, align 8
  %"$s_146" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$s_fptr_147" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_146", 0
  %"$s_envptr_148" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_146", 1
  %"$s_call_149" = call %Uint32 %"$s_fptr_147"(i8* %"$s_envptr_148", %Uint32 %1)
  store %Uint32 %"$s_call_149", %Uint32* %"$s_0", align 4
  %"$$s_0_150" = load %Uint32, %Uint32* %"$s_0", align 4
  store %Uint32 %"$$s_0_150", %Uint32* %sz, align 4
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 1, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %"$have_gas_144"
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %"$have_gas_144"
  %"$consume_155" = sub i64 %"$gasrem_151", 1
  store i64 %"$consume_155", i64* @_gasrem, align 8
  %"$s_1" = alloca %Uint32, align 8
  %"$s_156" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$s_fptr_157" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_156", 0
  %"$s_envptr_158" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_156", 1
  %"$sz_159" = load %Uint32, %Uint32* %sz, align 4
  %"$s_call_160" = call %Uint32 %"$s_fptr_157"(i8* %"$s_envptr_158", %Uint32 %"$sz_159")
  store %Uint32 %"$s_call_160", %Uint32* %"$s_1", align 4
  %"$$s_1_161" = load %Uint32, %Uint32* %"$s_1", align 4
  store %Uint32 %"$$s_1_161", %Uint32* %"$retval_40", align 4
  %"$$retval_40_162" = load %Uint32, %Uint32* %"$retval_40", align 4
  ret %Uint32 %"$$retval_40_162"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_37"(%"$$fundef_37_env_122"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_38" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 1, %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %entry
  %"$consume_127" = sub i64 %"$gasrem_123", 1
  store i64 %"$consume_127", i64* @_gasrem, align 8
  %"$$fundef_39_envp_128_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_39_envp_128_salloc" = call i8* @_salloc(i8* %"$$fundef_39_envp_128_load", i64 16)
  %"$$fundef_39_envp_128" = bitcast i8* %"$$fundef_39_envp_128_salloc" to %"$$fundef_39_env_121"*
  %"$$fundef_39_env_voidp_130" = bitcast %"$$fundef_39_env_121"* %"$$fundef_39_envp_128" to i8*
  %"$$fundef_39_cloval_131" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_39_env_121"*, %Uint32)* @"$fundef_39" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_39_env_voidp_130", 1
  %"$$fundef_39_env_s_132" = getelementptr inbounds %"$$fundef_39_env_121", %"$$fundef_39_env_121"* %"$$fundef_39_envp_128", i32 0, i32 0
  store { %Uint32 (i8*, %Uint32)*, i8* } %1, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_39_env_s_132", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_39_cloval_131", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_38", align 8
  %"$$retval_38_133" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_38", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_38_133"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_36" = alloca %Uint32, align 8
  %"$gasrem_506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_507" = icmp ugt i64 1, %"$gasrem_506"
  br i1 %"$gascmp_507", label %"$out_of_gas_508", label %"$have_gas_509"

"$out_of_gas_508":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_509"

"$have_gas_509":                                  ; preds = %"$out_of_gas_508", %entry
  %"$consume_510" = sub i64 %"$gasrem_506", 1
  store i64 %"$consume_510", i64* @_gasrem, align 8
  %"$gasrem_511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_512" = icmp ugt i64 1, %"$gasrem_511"
  br i1 %"$gascmp_512", label %"$out_of_gas_513", label %"$have_gas_514"

"$out_of_gas_513":                                ; preds = %"$have_gas_509"
  call void @_out_of_gas()
  br label %"$have_gas_514"

"$have_gas_514":                                  ; preds = %"$out_of_gas_513", %"$have_gas_509"
  %"$consume_515" = sub i64 %"$gasrem_511", 1
  store i64 %"$consume_515", i64* @_gasrem, align 8
  %"$gasrem_516" = load i64, i64* @_gasrem, align 8
  %"$gascmp_517" = icmp ugt i64 1, %"$gasrem_516"
  br i1 %"$gascmp_517", label %"$out_of_gas_518", label %"$have_gas_519"

"$out_of_gas_518":                                ; preds = %"$have_gas_514"
  call void @_out_of_gas()
  br label %"$have_gas_519"

"$have_gas_519":                                  ; preds = %"$out_of_gas_518", %"$have_gas_514"
  %"$consume_520" = sub i64 %"$gasrem_516", 1
  store i64 %"$consume_520", i64* @_gasrem, align 8
  %c2 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_521" = load i64, i64* @_gasrem, align 8
  %"$gascmp_522" = icmp ugt i64 1, %"$gasrem_521"
  br i1 %"$gascmp_522", label %"$out_of_gas_523", label %"$have_gas_524"

"$out_of_gas_523":                                ; preds = %"$have_gas_519"
  call void @_out_of_gas()
  br label %"$have_gas_524"

"$have_gas_524":                                  ; preds = %"$out_of_gas_523", %"$have_gas_519"
  %"$consume_525" = sub i64 %"$gasrem_521", 1
  store i64 %"$consume_525", i64* @_gasrem, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_37_env_122"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_37" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c2, align 8
  %"$gasrem_529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_530" = icmp ugt i64 1, %"$gasrem_529"
  br i1 %"$gascmp_530", label %"$out_of_gas_531", label %"$have_gas_532"

"$out_of_gas_531":                                ; preds = %"$have_gas_524"
  call void @_out_of_gas()
  br label %"$have_gas_532"

"$have_gas_532":                                  ; preds = %"$out_of_gas_531", %"$have_gas_524"
  %"$consume_533" = sub i64 %"$gasrem_529", 1
  store i64 %"$consume_533", i64* @_gasrem, align 8
  %c3 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_534" = load i64, i64* @_gasrem, align 8
  %"$gascmp_535" = icmp ugt i64 1, %"$gasrem_534"
  br i1 %"$gascmp_535", label %"$out_of_gas_536", label %"$have_gas_537"

"$out_of_gas_536":                                ; preds = %"$have_gas_532"
  call void @_out_of_gas()
  br label %"$have_gas_537"

"$have_gas_537":                                  ; preds = %"$out_of_gas_536", %"$have_gas_532"
  %"$consume_538" = sub i64 %"$gasrem_534", 1
  store i64 %"$consume_538", i64* @_gasrem, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_41_env_120"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_41" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c3, align 8
  %"$gasrem_542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_543" = icmp ugt i64 1, %"$gasrem_542"
  br i1 %"$gascmp_543", label %"$out_of_gas_544", label %"$have_gas_545"

"$out_of_gas_544":                                ; preds = %"$have_gas_537"
  call void @_out_of_gas()
  br label %"$have_gas_545"

"$have_gas_545":                                  ; preds = %"$out_of_gas_544", %"$have_gas_537"
  %"$consume_546" = sub i64 %"$gasrem_542", 1
  store i64 %"$consume_546", i64* @_gasrem, align 8
  %c3_ = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_547" = load i64, i64* @_gasrem, align 8
  %"$gascmp_548" = icmp ugt i64 1, %"$gasrem_547"
  br i1 %"$gascmp_548", label %"$out_of_gas_549", label %"$have_gas_550"

"$out_of_gas_549":                                ; preds = %"$have_gas_545"
  call void @_out_of_gas()
  br label %"$have_gas_550"

"$have_gas_550":                                  ; preds = %"$out_of_gas_549", %"$have_gas_545"
  %"$consume_551" = sub i64 %"$gasrem_547", 1
  store i64 %"$consume_551", i64* @_gasrem, align 8
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_45_env_118"*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* @"$fundef_45" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*), i8* null }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %c3_, align 8
  %"$gasrem_555" = load i64, i64* @_gasrem, align 8
  %"$gascmp_556" = icmp ugt i64 1, %"$gasrem_555"
  br i1 %"$gascmp_556", label %"$out_of_gas_557", label %"$have_gas_558"

"$out_of_gas_557":                                ; preds = %"$have_gas_550"
  call void @_out_of_gas()
  br label %"$have_gas_558"

"$have_gas_558":                                  ; preds = %"$out_of_gas_557", %"$have_gas_550"
  %"$consume_559" = sub i64 %"$gasrem_555", 1
  store i64 %"$consume_559", i64* @_gasrem, align 8
  %cadd = alloca { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_560" = load i64, i64* @_gasrem, align 8
  %"$gascmp_561" = icmp ugt i64 1, %"$gasrem_560"
  br i1 %"$gascmp_561", label %"$out_of_gas_562", label %"$have_gas_563"

"$out_of_gas_562":                                ; preds = %"$have_gas_558"
  call void @_out_of_gas()
  br label %"$have_gas_563"

"$have_gas_563":                                  ; preds = %"$out_of_gas_562", %"$have_gas_558"
  %"$consume_564" = sub i64 %"$gasrem_560", 1
  store i64 %"$consume_564", i64* @_gasrem, align 8
  store { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* bitcast ({ { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (%"$$fundef_49_env_116"*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* @"$fundef_49" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*), i8* null }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cadd, align 8
  %"$gasrem_568" = load i64, i64* @_gasrem, align 8
  %"$gascmp_569" = icmp ugt i64 1, %"$gasrem_568"
  br i1 %"$gascmp_569", label %"$out_of_gas_570", label %"$have_gas_571"

"$out_of_gas_570":                                ; preds = %"$have_gas_563"
  call void @_out_of_gas()
  br label %"$have_gas_571"

"$have_gas_571":                                  ; preds = %"$out_of_gas_570", %"$have_gas_563"
  %"$consume_572" = sub i64 %"$gasrem_568", 1
  store i64 %"$consume_572", i64* @_gasrem, align 8
  %cmul = alloca { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_573" = load i64, i64* @_gasrem, align 8
  %"$gascmp_574" = icmp ugt i64 1, %"$gasrem_573"
  br i1 %"$gascmp_574", label %"$out_of_gas_575", label %"$have_gas_576"

"$out_of_gas_575":                                ; preds = %"$have_gas_571"
  call void @_out_of_gas()
  br label %"$have_gas_576"

"$have_gas_576":                                  ; preds = %"$out_of_gas_575", %"$have_gas_571"
  %"$consume_577" = sub i64 %"$gasrem_573", 1
  store i64 %"$consume_577", i64* @_gasrem, align 8
  store { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* bitcast ({ { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (%"$$fundef_57_env_112"*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* @"$fundef_57" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*), i8* null }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cmul, align 8
  %"$gasrem_581" = load i64, i64* @_gasrem, align 8
  %"$gascmp_582" = icmp ugt i64 1, %"$gasrem_581"
  br i1 %"$gascmp_582", label %"$out_of_gas_583", label %"$have_gas_584"

"$out_of_gas_583":                                ; preds = %"$have_gas_576"
  call void @_out_of_gas()
  br label %"$have_gas_584"

"$have_gas_584":                                  ; preds = %"$out_of_gas_583", %"$have_gas_576"
  %"$consume_585" = sub i64 %"$gasrem_581", 1
  store i64 %"$consume_585", i64* @_gasrem, align 8
  %cexp = alloca { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_586" = load i64, i64* @_gasrem, align 8
  %"$gascmp_587" = icmp ugt i64 1, %"$gasrem_586"
  br i1 %"$gascmp_587", label %"$out_of_gas_588", label %"$have_gas_589"

"$out_of_gas_588":                                ; preds = %"$have_gas_584"
  call void @_out_of_gas()
  br label %"$have_gas_589"

"$have_gas_589":                                  ; preds = %"$out_of_gas_588", %"$have_gas_584"
  %"$consume_590" = sub i64 %"$gasrem_586", 1
  store i64 %"$consume_590", i64* @_gasrem, align 8
  store { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* bitcast ({ { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } (%"$$fundef_63_env_109"*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* @"$fundef_63" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*), i8* null }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cexp, align 8
  %"$gasrem_594" = load i64, i64* @_gasrem, align 8
  %"$gascmp_595" = icmp ugt i64 1, %"$gasrem_594"
  br i1 %"$gascmp_595", label %"$out_of_gas_596", label %"$have_gas_597"

"$out_of_gas_596":                                ; preds = %"$have_gas_589"
  call void @_out_of_gas()
  br label %"$have_gas_597"

"$have_gas_597":                                  ; preds = %"$out_of_gas_596", %"$have_gas_589"
  %"$consume_598" = sub i64 %"$gasrem_594", 1
  store i64 %"$consume_598", i64* @_gasrem, align 8
  %church_nat_to_uint32 = alloca { %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$gasrem_599" = load i64, i64* @_gasrem, align 8
  %"$gascmp_600" = icmp ugt i64 1, %"$gasrem_599"
  br i1 %"$gascmp_600", label %"$out_of_gas_601", label %"$have_gas_602"

"$out_of_gas_601":                                ; preds = %"$have_gas_597"
  call void @_out_of_gas()
  br label %"$have_gas_602"

"$have_gas_602":                                  ; preds = %"$out_of_gas_601", %"$have_gas_597"
  %"$consume_603" = sub i64 %"$gasrem_599", 1
  store i64 %"$consume_603", i64* @_gasrem, align 8
  store { %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } { %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* bitcast (%Uint32 (%"$$fundef_67_env_107"*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })* @"$fundef_67" to %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*), i8* null }, { %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %church_nat_to_uint32, align 8
  %"$gasrem_607" = load i64, i64* @_gasrem, align 8
  %"$gascmp_608" = icmp ugt i64 1, %"$gasrem_607"
  br i1 %"$gascmp_608", label %"$out_of_gas_609", label %"$have_gas_610"

"$out_of_gas_609":                                ; preds = %"$have_gas_602"
  call void @_out_of_gas()
  br label %"$have_gas_610"

"$have_gas_610":                                  ; preds = %"$out_of_gas_609", %"$have_gas_602"
  %"$consume_611" = sub i64 %"$gasrem_607", 1
  store i64 %"$consume_611", i64* @_gasrem, align 8
  %c4 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_612" = load i64, i64* @_gasrem, align 8
  %"$gascmp_613" = icmp ugt i64 1, %"$gasrem_612"
  br i1 %"$gascmp_613", label %"$out_of_gas_614", label %"$have_gas_615"

"$out_of_gas_614":                                ; preds = %"$have_gas_610"
  call void @_out_of_gas()
  br label %"$have_gas_615"

"$have_gas_615":                                  ; preds = %"$out_of_gas_614", %"$have_gas_610"
  %"$consume_616" = sub i64 %"$gasrem_612", 1
  store i64 %"$consume_616", i64* @_gasrem, align 8
  %"$cmul_17" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$cmul_617" = load { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cmul, align 8
  %"$cmul_fptr_618" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_617", 0
  %"$cmul_envptr_619" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_617", 1
  %"$c2_620" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c2, align 8
  %"$cmul_call_621" = call { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_fptr_618"(i8* %"$cmul_envptr_619", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c2_620")
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_call_621", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cmul_17", align 8
  %"$cmul_18" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$$cmul_17_622" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cmul_17", align 8
  %"$$cmul_17_fptr_623" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cmul_17_622", 0
  %"$$cmul_17_envptr_624" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cmul_17_622", 1
  %"$c2_625" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c2, align 8
  %"$$cmul_17_call_626" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_17_fptr_623"(i8* %"$$cmul_17_envptr_624", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c2_625")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_17_call_626", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cmul_18", align 8
  %"$$cmul_18_627" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cmul_18", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_18_627", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c4, align 8
  %"$gasrem_628" = load i64, i64* @_gasrem, align 8
  %"$gascmp_629" = icmp ugt i64 1, %"$gasrem_628"
  br i1 %"$gascmp_629", label %"$out_of_gas_630", label %"$have_gas_631"

"$out_of_gas_630":                                ; preds = %"$have_gas_615"
  call void @_out_of_gas()
  br label %"$have_gas_631"

"$have_gas_631":                                  ; preds = %"$out_of_gas_630", %"$have_gas_615"
  %"$consume_632" = sub i64 %"$gasrem_628", 1
  store i64 %"$consume_632", i64* @_gasrem, align 8
  %c16 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_633" = load i64, i64* @_gasrem, align 8
  %"$gascmp_634" = icmp ugt i64 1, %"$gasrem_633"
  br i1 %"$gascmp_634", label %"$out_of_gas_635", label %"$have_gas_636"

"$out_of_gas_635":                                ; preds = %"$have_gas_631"
  call void @_out_of_gas()
  br label %"$have_gas_636"

"$have_gas_636":                                  ; preds = %"$out_of_gas_635", %"$have_gas_631"
  %"$consume_637" = sub i64 %"$gasrem_633", 1
  store i64 %"$consume_637", i64* @_gasrem, align 8
  %"$cmul_19" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$cmul_638" = load { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cmul, align 8
  %"$cmul_fptr_639" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_638", 0
  %"$cmul_envptr_640" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_638", 1
  %"$c4_641" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c4, align 8
  %"$cmul_call_642" = call { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_fptr_639"(i8* %"$cmul_envptr_640", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c4_641")
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_call_642", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cmul_19", align 8
  %"$cmul_20" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$$cmul_19_643" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cmul_19", align 8
  %"$$cmul_19_fptr_644" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cmul_19_643", 0
  %"$$cmul_19_envptr_645" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cmul_19_643", 1
  %"$c4_646" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c4, align 8
  %"$$cmul_19_call_647" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_19_fptr_644"(i8* %"$$cmul_19_envptr_645", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c4_646")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_19_call_647", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cmul_20", align 8
  %"$$cmul_20_648" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cmul_20", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_20_648", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c16, align 8
  %"$gasrem_649" = load i64, i64* @_gasrem, align 8
  %"$gascmp_650" = icmp ugt i64 1, %"$gasrem_649"
  br i1 %"$gascmp_650", label %"$out_of_gas_651", label %"$have_gas_652"

"$out_of_gas_651":                                ; preds = %"$have_gas_636"
  call void @_out_of_gas()
  br label %"$have_gas_652"

"$have_gas_652":                                  ; preds = %"$out_of_gas_651", %"$have_gas_636"
  %"$consume_653" = sub i64 %"$gasrem_649", 1
  store i64 %"$consume_653", i64* @_gasrem, align 8
  %c32 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_654" = load i64, i64* @_gasrem, align 8
  %"$gascmp_655" = icmp ugt i64 1, %"$gasrem_654"
  br i1 %"$gascmp_655", label %"$out_of_gas_656", label %"$have_gas_657"

"$out_of_gas_656":                                ; preds = %"$have_gas_652"
  call void @_out_of_gas()
  br label %"$have_gas_657"

"$have_gas_657":                                  ; preds = %"$out_of_gas_656", %"$have_gas_652"
  %"$consume_658" = sub i64 %"$gasrem_654", 1
  store i64 %"$consume_658", i64* @_gasrem, align 8
  %"$cadd_21" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$cadd_659" = load { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cadd, align 8
  %"$cadd_fptr_660" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_659", 0
  %"$cadd_envptr_661" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_659", 1
  %"$c16_662" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c16, align 8
  %"$cadd_call_663" = call { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_fptr_660"(i8* %"$cadd_envptr_661", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c16_662")
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_call_663", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cadd_21", align 8
  %"$cadd_22" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$$cadd_21_664" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cadd_21", align 8
  %"$$cadd_21_fptr_665" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cadd_21_664", 0
  %"$$cadd_21_envptr_666" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cadd_21_664", 1
  %"$c16_667" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c16, align 8
  %"$$cadd_21_call_668" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_21_fptr_665"(i8* %"$$cadd_21_envptr_666", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c16_667")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_21_call_668", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cadd_22", align 8
  %"$$cadd_22_669" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cadd_22", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_22_669", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c32, align 8
  %"$gasrem_670" = load i64, i64* @_gasrem, align 8
  %"$gascmp_671" = icmp ugt i64 1, %"$gasrem_670"
  br i1 %"$gascmp_671", label %"$out_of_gas_672", label %"$have_gas_673"

"$out_of_gas_672":                                ; preds = %"$have_gas_657"
  call void @_out_of_gas()
  br label %"$have_gas_673"

"$have_gas_673":                                  ; preds = %"$out_of_gas_672", %"$have_gas_657"
  %"$consume_674" = sub i64 %"$gasrem_670", 1
  store i64 %"$consume_674", i64* @_gasrem, align 8
  %c128 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_675" = load i64, i64* @_gasrem, align 8
  %"$gascmp_676" = icmp ugt i64 1, %"$gasrem_675"
  br i1 %"$gascmp_676", label %"$out_of_gas_677", label %"$have_gas_678"

"$out_of_gas_677":                                ; preds = %"$have_gas_673"
  call void @_out_of_gas()
  br label %"$have_gas_678"

"$have_gas_678":                                  ; preds = %"$out_of_gas_677", %"$have_gas_673"
  %"$consume_679" = sub i64 %"$gasrem_675", 1
  store i64 %"$consume_679", i64* @_gasrem, align 8
  %"$cmul_23" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$cmul_680" = load { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cmul, align 8
  %"$cmul_fptr_681" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_680", 0
  %"$cmul_envptr_682" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_680", 1
  %"$c4_683" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c4, align 8
  %"$cmul_call_684" = call { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_fptr_681"(i8* %"$cmul_envptr_682", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c4_683")
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_call_684", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cmul_23", align 8
  %"$cmul_24" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$$cmul_23_685" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cmul_23", align 8
  %"$$cmul_23_fptr_686" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cmul_23_685", 0
  %"$$cmul_23_envptr_687" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cmul_23_685", 1
  %"$c32_688" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c32, align 8
  %"$$cmul_23_call_689" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_23_fptr_686"(i8* %"$$cmul_23_envptr_687", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c32_688")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_23_call_689", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cmul_24", align 8
  %"$$cmul_24_690" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cmul_24", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_24_690", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c128, align 8
  %"$gasrem_691" = load i64, i64* @_gasrem, align 8
  %"$gascmp_692" = icmp ugt i64 1, %"$gasrem_691"
  br i1 %"$gascmp_692", label %"$out_of_gas_693", label %"$have_gas_694"

"$out_of_gas_693":                                ; preds = %"$have_gas_678"
  call void @_out_of_gas()
  br label %"$have_gas_694"

"$have_gas_694":                                  ; preds = %"$out_of_gas_693", %"$have_gas_678"
  %"$consume_695" = sub i64 %"$gasrem_691", 1
  store i64 %"$consume_695", i64* @_gasrem, align 8
  %c256 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_696" = load i64, i64* @_gasrem, align 8
  %"$gascmp_697" = icmp ugt i64 1, %"$gasrem_696"
  br i1 %"$gascmp_697", label %"$out_of_gas_698", label %"$have_gas_699"

"$out_of_gas_698":                                ; preds = %"$have_gas_694"
  call void @_out_of_gas()
  br label %"$have_gas_699"

"$have_gas_699":                                  ; preds = %"$out_of_gas_698", %"$have_gas_694"
  %"$consume_700" = sub i64 %"$gasrem_696", 1
  store i64 %"$consume_700", i64* @_gasrem, align 8
  %"$cadd_25" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$cadd_701" = load { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cadd, align 8
  %"$cadd_fptr_702" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_701", 0
  %"$cadd_envptr_703" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_701", 1
  %"$c128_704" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c128, align 8
  %"$cadd_call_705" = call { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_fptr_702"(i8* %"$cadd_envptr_703", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c128_704")
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_call_705", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cadd_25", align 8
  %"$cadd_26" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$$cadd_25_706" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cadd_25", align 8
  %"$$cadd_25_fptr_707" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cadd_25_706", 0
  %"$$cadd_25_envptr_708" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cadd_25_706", 1
  %"$c128_709" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c128, align 8
  %"$$cadd_25_call_710" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_25_fptr_707"(i8* %"$$cadd_25_envptr_708", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c128_709")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_25_call_710", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cadd_26", align 8
  %"$$cadd_26_711" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cadd_26", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_26_711", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c256, align 8
  %"$gasrem_712" = load i64, i64* @_gasrem, align 8
  %"$gascmp_713" = icmp ugt i64 1, %"$gasrem_712"
  br i1 %"$gascmp_713", label %"$out_of_gas_714", label %"$have_gas_715"

"$out_of_gas_714":                                ; preds = %"$have_gas_699"
  call void @_out_of_gas()
  br label %"$have_gas_715"

"$have_gas_715":                                  ; preds = %"$out_of_gas_714", %"$have_gas_699"
  %"$consume_716" = sub i64 %"$gasrem_712", 1
  store i64 %"$consume_716", i64* @_gasrem, align 8
  %c65536 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_717" = load i64, i64* @_gasrem, align 8
  %"$gascmp_718" = icmp ugt i64 1, %"$gasrem_717"
  br i1 %"$gascmp_718", label %"$out_of_gas_719", label %"$have_gas_720"

"$out_of_gas_719":                                ; preds = %"$have_gas_715"
  call void @_out_of_gas()
  br label %"$have_gas_720"

"$have_gas_720":                                  ; preds = %"$out_of_gas_719", %"$have_gas_715"
  %"$consume_721" = sub i64 %"$gasrem_717", 1
  store i64 %"$consume_721", i64* @_gasrem, align 8
  %"$cmul_27" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$cmul_722" = load { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cmul, align 8
  %"$cmul_fptr_723" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_722", 0
  %"$cmul_envptr_724" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_722", 1
  %"$c256_725" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c256, align 8
  %"$cmul_call_726" = call { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_fptr_723"(i8* %"$cmul_envptr_724", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c256_725")
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cmul_call_726", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cmul_27", align 8
  %"$cmul_28" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$$cmul_27_727" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cmul_27", align 8
  %"$$cmul_27_fptr_728" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cmul_27_727", 0
  %"$$cmul_27_envptr_729" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cmul_27_727", 1
  %"$c256_730" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c256, align 8
  %"$$cmul_27_call_731" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_27_fptr_728"(i8* %"$$cmul_27_envptr_729", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c256_730")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_27_call_731", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cmul_28", align 8
  %"$$cmul_28_732" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cmul_28", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cmul_28_732", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c65536, align 8
  %"$gasrem_733" = load i64, i64* @_gasrem, align 8
  %"$gascmp_734" = icmp ugt i64 1, %"$gasrem_733"
  br i1 %"$gascmp_734", label %"$out_of_gas_735", label %"$have_gas_736"

"$out_of_gas_735":                                ; preds = %"$have_gas_720"
  call void @_out_of_gas()
  br label %"$have_gas_736"

"$have_gas_736":                                  ; preds = %"$out_of_gas_735", %"$have_gas_720"
  %"$consume_737" = sub i64 %"$gasrem_733", 1
  store i64 %"$consume_737", i64* @_gasrem, align 8
  %c131072 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_738" = load i64, i64* @_gasrem, align 8
  %"$gascmp_739" = icmp ugt i64 1, %"$gasrem_738"
  br i1 %"$gascmp_739", label %"$out_of_gas_740", label %"$have_gas_741"

"$out_of_gas_740":                                ; preds = %"$have_gas_736"
  call void @_out_of_gas()
  br label %"$have_gas_741"

"$have_gas_741":                                  ; preds = %"$out_of_gas_740", %"$have_gas_736"
  %"$consume_742" = sub i64 %"$gasrem_738", 1
  store i64 %"$consume_742", i64* @_gasrem, align 8
  %"$cadd_29" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$cadd_743" = load { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cadd, align 8
  %"$cadd_fptr_744" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_743", 0
  %"$cadd_envptr_745" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_743", 1
  %"$c65536_746" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c65536, align 8
  %"$cadd_call_747" = call { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_fptr_744"(i8* %"$cadd_envptr_745", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c65536_746")
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_call_747", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cadd_29", align 8
  %"$cadd_30" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$$cadd_29_748" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cadd_29", align 8
  %"$$cadd_29_fptr_749" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cadd_29_748", 0
  %"$$cadd_29_envptr_750" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cadd_29_748", 1
  %"$c65536_751" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c65536, align 8
  %"$$cadd_29_call_752" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_29_fptr_749"(i8* %"$$cadd_29_envptr_750", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c65536_751")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_29_call_752", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cadd_30", align 8
  %"$$cadd_30_753" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cadd_30", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_30_753", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c131072, align 8
  %"$gasrem_754" = load i64, i64* @_gasrem, align 8
  %"$gascmp_755" = icmp ugt i64 1, %"$gasrem_754"
  br i1 %"$gascmp_755", label %"$out_of_gas_756", label %"$have_gas_757"

"$out_of_gas_756":                                ; preds = %"$have_gas_741"
  call void @_out_of_gas()
  br label %"$have_gas_757"

"$have_gas_757":                                  ; preds = %"$out_of_gas_756", %"$have_gas_741"
  %"$consume_758" = sub i64 %"$gasrem_754", 1
  store i64 %"$consume_758", i64* @_gasrem, align 8
  %c27 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_759" = load i64, i64* @_gasrem, align 8
  %"$gascmp_760" = icmp ugt i64 1, %"$gasrem_759"
  br i1 %"$gascmp_760", label %"$out_of_gas_761", label %"$have_gas_762"

"$out_of_gas_761":                                ; preds = %"$have_gas_757"
  call void @_out_of_gas()
  br label %"$have_gas_762"

"$have_gas_762":                                  ; preds = %"$out_of_gas_761", %"$have_gas_757"
  %"$consume_763" = sub i64 %"$gasrem_759", 1
  store i64 %"$consume_763", i64* @_gasrem, align 8
  %"$cexp_31" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* }, align 8
  %"$cexp_764" = load { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cexp, align 8
  %"$cexp_fptr_765" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cexp_764", 0
  %"$cexp_envptr_766" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cexp_764", 1
  %"$c3_767" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c3, align 8
  %"$cexp_call_768" = call { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } %"$cexp_fptr_765"(i8* %"$cexp_envptr_766", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c3_767")
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } %"$cexp_call_768", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* }* %"$cexp_31", align 8
  %"$cexp_32" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$$cexp_31_769" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* }* %"$cexp_31", align 8
  %"$$cexp_31_fptr_770" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } %"$$cexp_31_769", 0
  %"$$cexp_31_envptr_771" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* })*, i8* } %"$$cexp_31_769", 1
  %"$c3__772" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %c3_, align 8
  %"$$cexp_31_call_773" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cexp_31_fptr_770"(i8* %"$$cexp_31_envptr_771", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$c3__772")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cexp_31_call_773", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cexp_32", align 8
  %"$$cexp_32_774" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cexp_32", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cexp_32_774", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c27, align 8
  %"$gasrem_775" = load i64, i64* @_gasrem, align 8
  %"$gascmp_776" = icmp ugt i64 1, %"$gasrem_775"
  br i1 %"$gascmp_776", label %"$out_of_gas_777", label %"$have_gas_778"

"$out_of_gas_777":                                ; preds = %"$have_gas_762"
  call void @_out_of_gas()
  br label %"$have_gas_778"

"$have_gas_778":                                  ; preds = %"$out_of_gas_777", %"$have_gas_762"
  %"$consume_779" = sub i64 %"$gasrem_775", 1
  store i64 %"$consume_779", i64* @_gasrem, align 8
  %c131099 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_780" = load i64, i64* @_gasrem, align 8
  %"$gascmp_781" = icmp ugt i64 1, %"$gasrem_780"
  br i1 %"$gascmp_781", label %"$out_of_gas_782", label %"$have_gas_783"

"$out_of_gas_782":                                ; preds = %"$have_gas_778"
  call void @_out_of_gas()
  br label %"$have_gas_783"

"$have_gas_783":                                  ; preds = %"$out_of_gas_782", %"$have_gas_778"
  %"$consume_784" = sub i64 %"$gasrem_780", 1
  store i64 %"$consume_784", i64* @_gasrem, align 8
  %"$cadd_33" = alloca { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, align 8
  %"$cadd_785" = load { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %cadd, align 8
  %"$cadd_fptr_786" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_785", 0
  %"$cadd_envptr_787" = extractvalue { { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_785", 1
  %"$c131072_788" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c131072, align 8
  %"$cadd_call_789" = call { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_fptr_786"(i8* %"$cadd_envptr_787", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c131072_788")
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$cadd_call_789", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cadd_33", align 8
  %"$cadd_34" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$$cadd_33_790" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %"$cadd_33", align 8
  %"$$cadd_33_fptr_791" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cadd_33_790", 0
  %"$$cadd_33_envptr_792" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$$cadd_33_790", 1
  %"$c27_793" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c27, align 8
  %"$$cadd_33_call_794" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_33_fptr_791"(i8* %"$$cadd_33_envptr_792", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c27_793")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_33_call_794", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cadd_34", align 8
  %"$$cadd_34_795" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$cadd_34", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$cadd_34_795", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c131099, align 8
  %"$gasrem_796" = load i64, i64* @_gasrem, align 8
  %"$gascmp_797" = icmp ugt i64 1, %"$gasrem_796"
  br i1 %"$gascmp_797", label %"$out_of_gas_798", label %"$have_gas_799"

"$out_of_gas_798":                                ; preds = %"$have_gas_783"
  call void @_out_of_gas()
  br label %"$have_gas_799"

"$have_gas_799":                                  ; preds = %"$out_of_gas_798", %"$have_gas_783"
  %"$consume_800" = sub i64 %"$gasrem_796", 1
  store i64 %"$consume_800", i64* @_gasrem, align 8
  %"$church_nat_to_uint32_35" = alloca %Uint32, align 8
  %"$church_nat_to_uint32_801" = load { %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }, { %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* }* %church_nat_to_uint32, align 8
  %"$church_nat_to_uint32_fptr_802" = extractvalue { %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$church_nat_to_uint32_801", 0
  %"$church_nat_to_uint32_envptr_803" = extractvalue { %Uint32 (i8*, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* })*, i8* } %"$church_nat_to_uint32_801", 1
  %"$c131099_804" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c131099, align 8
  %"$church_nat_to_uint32_call_805" = call %Uint32 %"$church_nat_to_uint32_fptr_802"(i8* %"$church_nat_to_uint32_envptr_803", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c131099_804")
  store %Uint32 %"$church_nat_to_uint32_call_805", %Uint32* %"$church_nat_to_uint32_35", align 4
  %"$$church_nat_to_uint32_35_806" = load %Uint32, %Uint32* %"$church_nat_to_uint32_35", align 4
  store %Uint32 %"$$church_nat_to_uint32_35_806", %Uint32* %"$expr_36", align 4
  %"$$expr_36_807" = load %Uint32, %Uint32* %"$expr_36", align 4
  ret %Uint32 %"$$expr_36_807"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_808" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_809" = alloca %Uint32, align 8
  %"$memvoidcast_810" = bitcast %Uint32* %"$pval_809" to i8*
  store %Uint32 %"$exprval_808", %Uint32* %"$pval_809", align 4
  %"$execptr_load_811" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_811", %_TyDescrTy_Typ* @"$TyDescr_Uint32_75", i8* %"$memvoidcast_810")
  ret void
}
