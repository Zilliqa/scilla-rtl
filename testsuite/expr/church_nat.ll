; (* Church-encoded natural numbers *)
; (* zero *)
; let c0 = tfun 'X => fun (s : 'X -> 'X) => fun (z : 'X) => z
; in
; (* one *)
; let c1 = tfun 'X => fun (s : 'X -> 'X) => fun (z : 'X) => s z
; in
; (* two *)
; let c2 = tfun 'X => fun (s : 'X -> 'X) => fun (z : 'X) => let sz = s z in s sz
; in
; (* addition *)
; let cadd : (forall 'X. ('X -> 'X) -> 'X -> 'X) -> (forall 'X. ('X -> 'X) -> 'X -> 'X) -> (forall 'X. ('X -> 'X) -> 'X -> 'X) =
; fun (m : forall 'X. ('X -> 'X) -> 'X -> 'X) =>
; fun (n : forall 'X. ('X -> 'X) -> 'X -> 'X) =>
; tfun 'X =>
; fun (s : 'X -> 'X) =>
; fun (z : 'X) =>
; let mX = @m 'X in
; let nX = @n 'X in
; let nXsz = nX s z in
; mX s nXsz
; in
; (* multiplication *)
; let cmul : (forall 'X. ('X -> 'X) -> 'X -> 'X) -> (forall 'X. ('X -> 'X) -> 'X -> 'X) -> (forall 'X. ('X -> 'X) -> 'X -> 'X) =
; fun (m : forall 'X. ('X -> 'X) -> 'X -> 'X) =>
; fun (n : forall 'X. ('X -> 'X) -> 'X -> 'X) =>
; let cadd_m = cadd m in
; let nI = @n (forall 'X. ('X -> 'X) -> 'X -> 'X) in
; nI cadd_m c0
; in
; (* Convert Church-encoded nats to Uint32 *)
; let church_nat_to_uint32 : (forall 'X. ('X -> 'X) -> 'X -> 'X) -> Uint32 =
; fun (c : forall 'X. ('X -> 'X) -> 'X -> 'X) =>
; let zero = Uint32 0 in
; let one = Uint32 1 in
; let add1 = fun (x : Uint32) => builtin add one x in
; let c32 = @c Uint32 in
; c32 add1 zero
; in
; (* tests *)
; let c4 = cmul c2 c2 in
; let c16 = cmul c4 c4 in
; let c32 = cadd c16 c16 in
; let c128 = cmul c4 c32 in
; let c256 = cadd c128 c128 in
; let c65536 = cmul c256 c256 in
; church_nat_to_uint32 c65536
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_73" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$$fundef_71_env_106" = type { %Uint32 }
%Uint32 = type { i32 }
%"$$fundef_69_env_107" = type {}
%"$$fundef_67_env_108" = type { { i8*, i8* }*, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { i8*, i8* }* }
%"$$fundef_65_env_109" = type { { i8*, i8* }*, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } }
%"$$fundef_63_env_110" = type { { i8*, i8* }*, { i8*, i8* }*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } }
%"$$fundef_61_env_111" = type { { i8*, i8* }*, { i8*, i8* }* }
%"$$fundef_59_env_112" = type { { i8*, i8* }*, { i8*, i8* }* }
%"$$fundef_57_env_113" = type { { i8*, i8* }*, { i8*, i8* }*, { %Uint32 (i8*, %Uint32)*, i8* } }
%"$$fundef_55_env_114" = type { { i8*, i8* }*, { i8*, i8* }* }
%"$$fundef_53_env_115" = type { { i8*, i8* }*, { i8*, i8* }* }
%"$$fundef_51_env_116" = type { { i8*, i8* }* }
%"$$fundef_49_env_117" = type {}
%"$$fundef_47_env_118" = type { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } }
%"$$fundef_45_env_119" = type {}
%"$$fundef_43_env_120" = type {}
%"$$fundef_41_env_121" = type { { %Uint32 (i8*, %Uint32)*, i8* } }
%"$$fundef_39_env_122" = type {}
%"$$fundef_37_env_123" = type {}
%"$$fundef_35_env_124" = type {}
%"$$fundef_33_env_125" = type {}
%"$$fundef_31_env_126" = type {}
%"$$fundef_29_env_127" = type {}
%"$$fundef_27_env_128" = type {}
%"$$fundef_25_env_129" = type {}

@_execptr = global i8* null
@"$TyDescr_Int32_Prim_74" = global %"$TyDescrTy_PrimTyp_73" zeroinitializer
@"$TyDescr_Int32_75" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_73"* @"$TyDescr_Int32_Prim_74" to i8*) }
@"$TyDescr_Uint32_Prim_76" = global %"$TyDescrTy_PrimTyp_73" { i32 1, i32 0 }
@"$TyDescr_Uint32_77" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_73"* @"$TyDescr_Uint32_Prim_76" to i8*) }
@"$TyDescr_Int64_Prim_78" = global %"$TyDescrTy_PrimTyp_73" { i32 0, i32 1 }
@"$TyDescr_Int64_79" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_73"* @"$TyDescr_Int64_Prim_78" to i8*) }
@"$TyDescr_Uint64_Prim_80" = global %"$TyDescrTy_PrimTyp_73" { i32 1, i32 1 }
@"$TyDescr_Uint64_81" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_73"* @"$TyDescr_Uint64_Prim_80" to i8*) }
@"$TyDescr_Int128_Prim_82" = global %"$TyDescrTy_PrimTyp_73" { i32 0, i32 2 }
@"$TyDescr_Int128_83" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_73"* @"$TyDescr_Int128_Prim_82" to i8*) }
@"$TyDescr_Uint128_Prim_84" = global %"$TyDescrTy_PrimTyp_73" { i32 1, i32 2 }
@"$TyDescr_Uint128_85" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_73"* @"$TyDescr_Uint128_Prim_84" to i8*) }
@"$TyDescr_Int256_Prim_86" = global %"$TyDescrTy_PrimTyp_73" { i32 0, i32 3 }
@"$TyDescr_Int256_87" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_73"* @"$TyDescr_Int256_Prim_86" to i8*) }
@"$TyDescr_Uint256_Prim_88" = global %"$TyDescrTy_PrimTyp_73" { i32 1, i32 3 }
@"$TyDescr_Uint256_89" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_73"* @"$TyDescr_Uint256_Prim_88" to i8*) }
@"$TyDescr_String_Prim_90" = global %"$TyDescrTy_PrimTyp_73" { i32 2, i32 0 }
@"$TyDescr_String_91" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_73"* @"$TyDescr_String_Prim_90" to i8*) }
@"$TyDescr_Bnum_Prim_92" = global %"$TyDescrTy_PrimTyp_73" { i32 3, i32 0 }
@"$TyDescr_Bnum_93" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_73"* @"$TyDescr_Bnum_Prim_92" to i8*) }
@"$TyDescr_Message_Prim_94" = global %"$TyDescrTy_PrimTyp_73" { i32 4, i32 0 }
@"$TyDescr_Message_95" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_73"* @"$TyDescr_Message_Prim_94" to i8*) }
@"$TyDescr_Event_Prim_96" = global %"$TyDescrTy_PrimTyp_73" { i32 5, i32 0 }
@"$TyDescr_Event_97" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_73"* @"$TyDescr_Event_Prim_96" to i8*) }
@"$TyDescr_Exception_Prim_98" = global %"$TyDescrTy_PrimTyp_73" { i32 6, i32 0 }
@"$TyDescr_Exception_99" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_73"* @"$TyDescr_Exception_Prim_98" to i8*) }
@"$TyDescr_Bystr_Prim_100" = global %"$TyDescrTy_PrimTyp_73" { i32 7, i32 0 }
@"$TyDescr_Bystr_101" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_73"* @"$TyDescr_Bystr_Prim_100" to i8*) }

define internal %Uint32 @"$fundef_71"(%"$$fundef_71_env_106"* %0, %Uint32 %1) {
entry:
  %"$$fundef_71_env_one_426" = getelementptr inbounds %"$$fundef_71_env_106", %"$$fundef_71_env_106"* %0, i32 0, i32 0
  %"$one_envload_427" = load %Uint32, %Uint32* %"$$fundef_71_env_one_426"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_427", %Uint32* %one
  %"$retval_72" = alloca %Uint32
  %"$one_428" = load %Uint32, %Uint32* %one
  %"$add_call_429" = call %Uint32 @_add_Uint32(%Uint32 %"$one_428", %Uint32 %1)
  store %Uint32 %"$add_call_429", %Uint32* %"$retval_72"
  %"$$retval_72_430" = load %Uint32, %Uint32* %"$retval_72"
  ret %Uint32 %"$$retval_72_430"
}

define internal %Uint32 @"$fundef_69"(%"$$fundef_69_env_107"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_70" = alloca %Uint32
  %zero = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %zero
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %add1 = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$$fundef_71_envp_402_load" = load i8*, i8** @_execptr
  %"$$fundef_71_envp_402_salloc" = call i8* @_salloc(i8* %"$$fundef_71_envp_402_load", i64 4)
  %"$$fundef_71_envp_402" = bitcast i8* %"$$fundef_71_envp_402_salloc" to %"$$fundef_71_env_106"*
  %"$$fundef_71_env_voidp_404" = bitcast %"$$fundef_71_env_106"* %"$$fundef_71_envp_402" to i8*
  %"$$fundef_71_cloval_405" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_71_env_106"*, %Uint32)* @"$fundef_71" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_71_env_voidp_404", 1
  %"$$fundef_71_env_one_406" = getelementptr inbounds %"$$fundef_71_env_106", %"$$fundef_71_env_106"* %"$$fundef_71_envp_402", i32 0, i32 0
  %"$one_407" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_407", %Uint32* %"$$fundef_71_env_one_406"
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_71_cloval_405", { %Uint32 (i8*, %Uint32)*, i8* }* %add1
  %c32 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$c_408" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 0
  %"$c_409" = bitcast { i8*, i8* }* %"$c_408" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$c_410" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$c_409"
  %"$c_fptr_411" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$c_410", 0
  %"$c_envptr_412" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$c_410", 1
  %"$c_call_413" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c_fptr_411"(i8* %"$c_envptr_412")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c_call_413", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c32
  %"$c32_9" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$c32_414" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c32
  %"$c32_fptr_415" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c32_414", 0
  %"$c32_envptr_416" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c32_414", 1
  %"$add1_417" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %add1
  %"$c32_call_418" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_fptr_415"(i8* %"$c32_envptr_416", { %Uint32 (i8*, %Uint32)*, i8* } %"$add1_417")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_call_418", { %Uint32 (i8*, %Uint32)*, i8* }* %"$c32_9"
  %"$c32_10" = alloca %Uint32
  %"$$c32_9_419" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$c32_9"
  %"$$c32_9_fptr_420" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$c32_9_419", 0
  %"$$c32_9_envptr_421" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$c32_9_419", 1
  %"$zero_422" = load %Uint32, %Uint32* %zero
  %"$$c32_9_call_423" = call %Uint32 %"$$c32_9_fptr_420"(i8* %"$$c32_9_envptr_421", %Uint32 %"$zero_422")
  store %Uint32 %"$$c32_9_call_423", %Uint32* %"$c32_10"
  %"$$c32_10_424" = load %Uint32, %Uint32* %"$c32_10"
  store %Uint32 %"$$c32_10_424", %Uint32* %"$retval_70"
  %"$$retval_70_425" = load %Uint32, %Uint32* %"$retval_70"
  ret %Uint32 %"$$retval_70_425"
}

define internal { i8*, i8* }* @"$fundef_67"(%"$$fundef_67_env_108"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_67_env_c0_372" = getelementptr inbounds %"$$fundef_67_env_108", %"$$fundef_67_env_108"* %0, i32 0, i32 0
  %"$c0_envload_373" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_67_env_c0_372"
  %c0 = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$c0_envload_373", { i8*, i8* }** %c0
  %"$$fundef_67_env_cadd_374" = getelementptr inbounds %"$$fundef_67_env_108", %"$$fundef_67_env_108"* %0, i32 0, i32 1
  %"$cadd_envload_375" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_67_env_cadd_374"
  %cadd = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_envload_375", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd
  %"$$fundef_67_env_m_376" = getelementptr inbounds %"$$fundef_67_env_108", %"$$fundef_67_env_108"* %0, i32 0, i32 2
  %"$m_envload_377" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_67_env_m_376"
  %m = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$m_envload_377", { i8*, i8* }** %m
  %"$retval_68" = alloca { i8*, i8* }*
  %cadd_m = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cadd_6" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cadd_378" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd
  %"$cadd_fptr_379" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_378", 0
  %"$cadd_envptr_380" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_378", 1
  %"$m_381" = load { i8*, i8* }*, { i8*, i8* }** %m
  %"$cadd_call_382" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_fptr_379"(i8* %"$cadd_envptr_380", { i8*, i8* }* %"$m_381")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_call_382", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_6"
  %"$$cadd_6_383" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_6"
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_6_383", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %cadd_m
  %nI = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }
  %"$n_384" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 1
  %"$n_385" = bitcast { i8*, i8* }* %"$n_384" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$n_386" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$n_385"
  %"$n_fptr_387" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_386", 0
  %"$n_envptr_388" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_386", 1
  %"$n_call_389" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_fptr_387"(i8* %"$n_envptr_388")
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_call_389", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nI
  %"$nI_7" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$nI_390" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nI
  %"$nI_fptr_391" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nI_390", 0
  %"$nI_envptr_392" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nI_390", 1
  %"$cadd_m_393" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %cadd_m
  %"$nI_call_394" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nI_fptr_391"(i8* %"$nI_envptr_392", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_m_393")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nI_call_394", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nI_7"
  %"$nI_8" = alloca { i8*, i8* }*
  %"$$nI_7_395" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nI_7"
  %"$$nI_7_fptr_396" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nI_7_395", 0
  %"$$nI_7_envptr_397" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nI_7_395", 1
  %"$c0_398" = load { i8*, i8* }*, { i8*, i8* }** %c0
  %"$$nI_7_call_399" = call { i8*, i8* }* %"$$nI_7_fptr_396"(i8* %"$$nI_7_envptr_397", { i8*, i8* }* %"$c0_398")
  store { i8*, i8* }* %"$$nI_7_call_399", { i8*, i8* }** %"$nI_8"
  %"$$nI_8_400" = load { i8*, i8* }*, { i8*, i8* }** %"$nI_8"
  store { i8*, i8* }* %"$$nI_8_400", { i8*, i8* }** %"$retval_68"
  %"$$retval_68_401" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_68"
  ret { i8*, i8* }* %"$$retval_68_401"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_65"(%"$$fundef_65_env_109"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_65_env_c0_358" = getelementptr inbounds %"$$fundef_65_env_109", %"$$fundef_65_env_109"* %0, i32 0, i32 0
  %"$c0_envload_359" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_65_env_c0_358"
  %c0 = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$c0_envload_359", { i8*, i8* }** %c0
  %"$$fundef_65_env_cadd_360" = getelementptr inbounds %"$$fundef_65_env_109", %"$$fundef_65_env_109"* %0, i32 0, i32 1
  %"$cadd_envload_361" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_65_env_cadd_360"
  %cadd = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_envload_361", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd
  %"$retval_66" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$$fundef_67_envp_362_load" = load i8*, i8** @_execptr
  %"$$fundef_67_envp_362_salloc" = call i8* @_salloc(i8* %"$$fundef_67_envp_362_load", i64 32)
  %"$$fundef_67_envp_362" = bitcast i8* %"$$fundef_67_envp_362_salloc" to %"$$fundef_67_env_108"*
  %"$$fundef_67_env_voidp_364" = bitcast %"$$fundef_67_env_108"* %"$$fundef_67_envp_362" to i8*
  %"$$fundef_67_cloval_365" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_67_env_108"*, { i8*, i8* }*)* @"$fundef_67" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_67_env_voidp_364", 1
  %"$$fundef_67_env_c0_366" = getelementptr inbounds %"$$fundef_67_env_108", %"$$fundef_67_env_108"* %"$$fundef_67_envp_362", i32 0, i32 0
  %"$c0_367" = load { i8*, i8* }*, { i8*, i8* }** %c0
  store { i8*, i8* }* %"$c0_367", { i8*, i8* }** %"$$fundef_67_env_c0_366"
  %"$$fundef_67_env_cadd_368" = getelementptr inbounds %"$$fundef_67_env_108", %"$$fundef_67_env_108"* %"$$fundef_67_envp_362", i32 0, i32 1
  %"$cadd_369" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_369", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_67_env_cadd_368"
  %"$$fundef_67_env_m_370" = getelementptr inbounds %"$$fundef_67_env_108", %"$$fundef_67_env_108"* %"$$fundef_67_envp_362", i32 0, i32 2
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_67_env_m_370"
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_67_cloval_365", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_66"
  %"$$retval_66_371" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_66"
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_66_371"
}

define internal { i8*, i8* }* @"$fundef_63"(%"$$fundef_63_env_110"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_63_env_m_316" = getelementptr inbounds %"$$fundef_63_env_110", %"$$fundef_63_env_110"* %0, i32 0, i32 0
  %"$m_envload_317" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_63_env_m_316"
  %m = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$m_envload_317", { i8*, i8* }** %m
  %"$$fundef_63_env_n_318" = getelementptr inbounds %"$$fundef_63_env_110", %"$$fundef_63_env_110"* %0, i32 0, i32 1
  %"$n_envload_319" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_63_env_n_318"
  %n = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$n_envload_319", { i8*, i8* }** %n
  %"$$fundef_63_env_s_320" = getelementptr inbounds %"$$fundef_63_env_110", %"$$fundef_63_env_110"* %0, i32 0, i32 2
  %"$s_envload_321" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_63_env_s_320"
  %s = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_envload_321", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s
  %"$retval_64" = alloca { i8*, i8* }*
  %mX = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }
  %"$m_322" = load { i8*, i8* }*, { i8*, i8* }** %m
  %"$m_323" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$m_322", i32 1
  %"$m_324" = bitcast { i8*, i8* }* %"$m_323" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$m_325" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$m_324"
  %"$m_fptr_326" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$m_325", 0
  %"$m_envptr_327" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$m_325", 1
  %"$m_call_328" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$m_fptr_326"(i8* %"$m_envptr_327")
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$m_call_328", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %mX
  %nX = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }
  %"$n_329" = load { i8*, i8* }*, { i8*, i8* }** %n
  %"$n_330" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$n_329", i32 1
  %"$n_331" = bitcast { i8*, i8* }* %"$n_330" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$n_332" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$n_331"
  %"$n_fptr_333" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_332", 0
  %"$n_envptr_334" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_332", 1
  %"$n_call_335" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_fptr_333"(i8* %"$n_envptr_334")
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_call_335", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nX
  %nXsz = alloca { i8*, i8* }*
  %"$nX_2" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$nX_336" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nX
  %"$nX_fptr_337" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nX_336", 0
  %"$nX_envptr_338" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nX_336", 1
  %"$s_339" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s
  %"$nX_call_340" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nX_fptr_337"(i8* %"$nX_envptr_338", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_339")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nX_call_340", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nX_2"
  %"$nX_3" = alloca { i8*, i8* }*
  %"$$nX_2_341" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nX_2"
  %"$$nX_2_fptr_342" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nX_2_341", 0
  %"$$nX_2_envptr_343" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nX_2_341", 1
  %"$$nX_2_call_344" = call { i8*, i8* }* %"$$nX_2_fptr_342"(i8* %"$$nX_2_envptr_343", { i8*, i8* }* %1)
  store { i8*, i8* }* %"$$nX_2_call_344", { i8*, i8* }** %"$nX_3"
  %"$$nX_3_345" = load { i8*, i8* }*, { i8*, i8* }** %"$nX_3"
  store { i8*, i8* }* %"$$nX_3_345", { i8*, i8* }** %nXsz
  %"$mX_4" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$mX_346" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %mX
  %"$mX_fptr_347" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$mX_346", 0
  %"$mX_envptr_348" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$mX_346", 1
  %"$s_349" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s
  %"$mX_call_350" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$mX_fptr_347"(i8* %"$mX_envptr_348", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_349")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$mX_call_350", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$mX_4"
  %"$mX_5" = alloca { i8*, i8* }*
  %"$$mX_4_351" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$mX_4"
  %"$$mX_4_fptr_352" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$mX_4_351", 0
  %"$$mX_4_envptr_353" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$mX_4_351", 1
  %"$nXsz_354" = load { i8*, i8* }*, { i8*, i8* }** %nXsz
  %"$$mX_4_call_355" = call { i8*, i8* }* %"$$mX_4_fptr_352"(i8* %"$$mX_4_envptr_353", { i8*, i8* }* %"$nXsz_354")
  store { i8*, i8* }* %"$$mX_4_call_355", { i8*, i8* }** %"$mX_5"
  %"$$mX_5_356" = load { i8*, i8* }*, { i8*, i8* }** %"$mX_5"
  store { i8*, i8* }* %"$$mX_5_356", { i8*, i8* }** %"$retval_64"
  %"$$retval_64_357" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_64"
  ret { i8*, i8* }* %"$$retval_64_357"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_61"(%"$$fundef_61_env_111"* %0, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1) {
entry:
  %"$$fundef_61_env_m_302" = getelementptr inbounds %"$$fundef_61_env_111", %"$$fundef_61_env_111"* %0, i32 0, i32 0
  %"$m_envload_303" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_61_env_m_302"
  %m = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$m_envload_303", { i8*, i8* }** %m
  %"$$fundef_61_env_n_304" = getelementptr inbounds %"$$fundef_61_env_111", %"$$fundef_61_env_111"* %0, i32 0, i32 1
  %"$n_envload_305" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_61_env_n_304"
  %n = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$n_envload_305", { i8*, i8* }** %n
  %"$retval_62" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$$fundef_63_envp_306_load" = load i8*, i8** @_execptr
  %"$$fundef_63_envp_306_salloc" = call i8* @_salloc(i8* %"$$fundef_63_envp_306_load", i64 32)
  %"$$fundef_63_envp_306" = bitcast i8* %"$$fundef_63_envp_306_salloc" to %"$$fundef_63_env_110"*
  %"$$fundef_63_env_voidp_308" = bitcast %"$$fundef_63_env_110"* %"$$fundef_63_envp_306" to i8*
  %"$$fundef_63_cloval_309" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_63_env_110"*, { i8*, i8* }*)* @"$fundef_63" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_63_env_voidp_308", 1
  %"$$fundef_63_env_m_310" = getelementptr inbounds %"$$fundef_63_env_110", %"$$fundef_63_env_110"* %"$$fundef_63_envp_306", i32 0, i32 0
  %"$m_311" = load { i8*, i8* }*, { i8*, i8* }** %m
  store { i8*, i8* }* %"$m_311", { i8*, i8* }** %"$$fundef_63_env_m_310"
  %"$$fundef_63_env_n_312" = getelementptr inbounds %"$$fundef_63_env_110", %"$$fundef_63_env_110"* %"$$fundef_63_envp_306", i32 0, i32 1
  %"$n_313" = load { i8*, i8* }*, { i8*, i8* }** %n
  store { i8*, i8* }* %"$n_313", { i8*, i8* }** %"$$fundef_63_env_n_312"
  %"$$fundef_63_env_s_314" = getelementptr inbounds %"$$fundef_63_env_110", %"$$fundef_63_env_110"* %"$$fundef_63_envp_306", i32 0, i32 2
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_63_env_s_314"
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_63_cloval_309", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_62"
  %"$$retval_62_315" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_62"
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_62_315"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } @"$fundef_59"(%"$$fundef_59_env_112"* %0) {
entry:
  %"$$fundef_59_env_m_289" = getelementptr inbounds %"$$fundef_59_env_112", %"$$fundef_59_env_112"* %0, i32 0, i32 0
  %"$m_envload_290" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_59_env_m_289"
  %m = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$m_envload_290", { i8*, i8* }** %m
  %"$$fundef_59_env_n_291" = getelementptr inbounds %"$$fundef_59_env_112", %"$$fundef_59_env_112"* %0, i32 0, i32 1
  %"$n_envload_292" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_59_env_n_291"
  %n = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$n_envload_292", { i8*, i8* }** %n
  %"$retval_60" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }
  %"$$fundef_61_envp_293_load" = load i8*, i8** @_execptr
  %"$$fundef_61_envp_293_salloc" = call i8* @_salloc(i8* %"$$fundef_61_envp_293_load", i64 16)
  %"$$fundef_61_envp_293" = bitcast i8* %"$$fundef_61_envp_293_salloc" to %"$$fundef_61_env_111"*
  %"$$fundef_61_env_voidp_295" = bitcast %"$$fundef_61_env_111"* %"$$fundef_61_envp_293" to i8*
  %"$$fundef_61_cloval_296" = insertvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_61_env_111"*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* @"$fundef_61" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*), i8* undef }, i8* %"$$fundef_61_env_voidp_295", 1
  %"$$fundef_61_env_m_297" = getelementptr inbounds %"$$fundef_61_env_111", %"$$fundef_61_env_111"* %"$$fundef_61_envp_293", i32 0, i32 0
  %"$m_298" = load { i8*, i8* }*, { i8*, i8* }** %m
  store { i8*, i8* }* %"$m_298", { i8*, i8* }** %"$$fundef_61_env_m_297"
  %"$$fundef_61_env_n_299" = getelementptr inbounds %"$$fundef_61_env_111", %"$$fundef_61_env_111"* %"$$fundef_61_envp_293", i32 0, i32 1
  %"$n_300" = load { i8*, i8* }*, { i8*, i8* }** %n
  store { i8*, i8* }* %"$n_300", { i8*, i8* }** %"$$fundef_61_env_n_299"
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$fundef_61_cloval_296", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_60"
  %"$$retval_60_301" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_60"
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$retval_60_301"
}

define internal %Uint32 @"$fundef_57"(%"$$fundef_57_env_113"* %0, %Uint32 %1) {
entry:
  %"$$fundef_57_env_m_247" = getelementptr inbounds %"$$fundef_57_env_113", %"$$fundef_57_env_113"* %0, i32 0, i32 0
  %"$m_envload_248" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_57_env_m_247"
  %m = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$m_envload_248", { i8*, i8* }** %m
  %"$$fundef_57_env_n_249" = getelementptr inbounds %"$$fundef_57_env_113", %"$$fundef_57_env_113"* %0, i32 0, i32 1
  %"$n_envload_250" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_57_env_n_249"
  %n = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$n_envload_250", { i8*, i8* }** %n
  %"$$fundef_57_env_s_251" = getelementptr inbounds %"$$fundef_57_env_113", %"$$fundef_57_env_113"* %0, i32 0, i32 2
  %"$s_envload_252" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_57_env_s_251"
  %s = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_envload_252", { %Uint32 (i8*, %Uint32)*, i8* }* %s
  %"$retval_58" = alloca %Uint32
  %mX = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$m_253" = load { i8*, i8* }*, { i8*, i8* }** %m
  %"$m_254" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$m_253", i32 0
  %"$m_255" = bitcast { i8*, i8* }* %"$m_254" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$m_256" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$m_255"
  %"$m_fptr_257" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$m_256", 0
  %"$m_envptr_258" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$m_256", 1
  %"$m_call_259" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_fptr_257"(i8* %"$m_envptr_258")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_call_259", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %mX
  %nX = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$n_260" = load { i8*, i8* }*, { i8*, i8* }** %n
  %"$n_261" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$n_260", i32 0
  %"$n_262" = bitcast { i8*, i8* }* %"$n_261" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$n_263" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$n_262"
  %"$n_fptr_264" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$n_263", 0
  %"$n_envptr_265" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$n_263", 1
  %"$n_call_266" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_fptr_264"(i8* %"$n_envptr_265")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_call_266", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %nX
  %nXsz = alloca %Uint32
  %"$nX_2" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$nX_267" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %nX
  %"$nX_fptr_268" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$nX_267", 0
  %"$nX_envptr_269" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$nX_267", 1
  %"$s_270" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s
  %"$nX_call_271" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_fptr_268"(i8* %"$nX_envptr_269", { %Uint32 (i8*, %Uint32)*, i8* } %"$s_270")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_call_271", { %Uint32 (i8*, %Uint32)*, i8* }* %"$nX_2"
  %"$nX_3" = alloca %Uint32
  %"$$nX_2_272" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$nX_2"
  %"$$nX_2_fptr_273" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$nX_2_272", 0
  %"$$nX_2_envptr_274" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$nX_2_272", 1
  %"$$nX_2_call_275" = call %Uint32 %"$$nX_2_fptr_273"(i8* %"$$nX_2_envptr_274", %Uint32 %1)
  store %Uint32 %"$$nX_2_call_275", %Uint32* %"$nX_3"
  %"$$nX_3_276" = load %Uint32, %Uint32* %"$nX_3"
  store %Uint32 %"$$nX_3_276", %Uint32* %nXsz
  %"$mX_4" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$mX_277" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %mX
  %"$mX_fptr_278" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$mX_277", 0
  %"$mX_envptr_279" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$mX_277", 1
  %"$s_280" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s
  %"$mX_call_281" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$mX_fptr_278"(i8* %"$mX_envptr_279", { %Uint32 (i8*, %Uint32)*, i8* } %"$s_280")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$mX_call_281", { %Uint32 (i8*, %Uint32)*, i8* }* %"$mX_4"
  %"$mX_5" = alloca %Uint32
  %"$$mX_4_282" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$mX_4"
  %"$$mX_4_fptr_283" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$mX_4_282", 0
  %"$$mX_4_envptr_284" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$mX_4_282", 1
  %"$nXsz_285" = load %Uint32, %Uint32* %nXsz
  %"$$mX_4_call_286" = call %Uint32 %"$$mX_4_fptr_283"(i8* %"$$mX_4_envptr_284", %Uint32 %"$nXsz_285")
  store %Uint32 %"$$mX_4_call_286", %Uint32* %"$mX_5"
  %"$$mX_5_287" = load %Uint32, %Uint32* %"$mX_5"
  store %Uint32 %"$$mX_5_287", %Uint32* %"$retval_58"
  %"$$retval_58_288" = load %Uint32, %Uint32* %"$retval_58"
  ret %Uint32 %"$$retval_58_288"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_55"(%"$$fundef_55_env_114"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$$fundef_55_env_m_233" = getelementptr inbounds %"$$fundef_55_env_114", %"$$fundef_55_env_114"* %0, i32 0, i32 0
  %"$m_envload_234" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_55_env_m_233"
  %m = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$m_envload_234", { i8*, i8* }** %m
  %"$$fundef_55_env_n_235" = getelementptr inbounds %"$$fundef_55_env_114", %"$$fundef_55_env_114"* %0, i32 0, i32 1
  %"$n_envload_236" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_55_env_n_235"
  %n = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$n_envload_236", { i8*, i8* }** %n
  %"$retval_56" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$$fundef_57_envp_237_load" = load i8*, i8** @_execptr
  %"$$fundef_57_envp_237_salloc" = call i8* @_salloc(i8* %"$$fundef_57_envp_237_load", i64 32)
  %"$$fundef_57_envp_237" = bitcast i8* %"$$fundef_57_envp_237_salloc" to %"$$fundef_57_env_113"*
  %"$$fundef_57_env_voidp_239" = bitcast %"$$fundef_57_env_113"* %"$$fundef_57_envp_237" to i8*
  %"$$fundef_57_cloval_240" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_57_env_113"*, %Uint32)* @"$fundef_57" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_57_env_voidp_239", 1
  %"$$fundef_57_env_m_241" = getelementptr inbounds %"$$fundef_57_env_113", %"$$fundef_57_env_113"* %"$$fundef_57_envp_237", i32 0, i32 0
  %"$m_242" = load { i8*, i8* }*, { i8*, i8* }** %m
  store { i8*, i8* }* %"$m_242", { i8*, i8* }** %"$$fundef_57_env_m_241"
  %"$$fundef_57_env_n_243" = getelementptr inbounds %"$$fundef_57_env_113", %"$$fundef_57_env_113"* %"$$fundef_57_envp_237", i32 0, i32 1
  %"$n_244" = load { i8*, i8* }*, { i8*, i8* }** %n
  store { i8*, i8* }* %"$n_244", { i8*, i8* }** %"$$fundef_57_env_n_243"
  %"$$fundef_57_env_s_245" = getelementptr inbounds %"$$fundef_57_env_113", %"$$fundef_57_env_113"* %"$$fundef_57_envp_237", i32 0, i32 2
  store { %Uint32 (i8*, %Uint32)*, i8* } %1, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_57_env_s_245"
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_57_cloval_240", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_56"
  %"$$retval_56_246" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_56"
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_56_246"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_53"(%"$$fundef_53_env_115"* %0) {
entry:
  %"$$fundef_53_env_m_220" = getelementptr inbounds %"$$fundef_53_env_115", %"$$fundef_53_env_115"* %0, i32 0, i32 0
  %"$m_envload_221" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_53_env_m_220"
  %m = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$m_envload_221", { i8*, i8* }** %m
  %"$$fundef_53_env_n_222" = getelementptr inbounds %"$$fundef_53_env_115", %"$$fundef_53_env_115"* %0, i32 0, i32 1
  %"$n_envload_223" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_53_env_n_222"
  %n = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$n_envload_223", { i8*, i8* }** %n
  %"$retval_54" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$$fundef_55_envp_224_load" = load i8*, i8** @_execptr
  %"$$fundef_55_envp_224_salloc" = call i8* @_salloc(i8* %"$$fundef_55_envp_224_load", i64 16)
  %"$$fundef_55_envp_224" = bitcast i8* %"$$fundef_55_envp_224_salloc" to %"$$fundef_55_env_114"*
  %"$$fundef_55_env_voidp_226" = bitcast %"$$fundef_55_env_114"* %"$$fundef_55_envp_224" to i8*
  %"$$fundef_55_cloval_227" = insertvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_55_env_114"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_55" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* undef }, i8* %"$$fundef_55_env_voidp_226", 1
  %"$$fundef_55_env_m_228" = getelementptr inbounds %"$$fundef_55_env_114", %"$$fundef_55_env_114"* %"$$fundef_55_envp_224", i32 0, i32 0
  %"$m_229" = load { i8*, i8* }*, { i8*, i8* }** %m
  store { i8*, i8* }* %"$m_229", { i8*, i8* }** %"$$fundef_55_env_m_228"
  %"$$fundef_55_env_n_230" = getelementptr inbounds %"$$fundef_55_env_114", %"$$fundef_55_env_114"* %"$$fundef_55_envp_224", i32 0, i32 1
  %"$n_231" = load { i8*, i8* }*, { i8*, i8* }** %n
  store { i8*, i8* }* %"$n_231", { i8*, i8* }** %"$$fundef_55_env_n_230"
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$fundef_55_cloval_227", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_54"
  %"$$retval_54_232" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_54"
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_54_232"
}

define internal { i8*, i8* }* @"$fundef_51"(%"$$fundef_51_env_116"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_51_env_m_202" = getelementptr inbounds %"$$fundef_51_env_116", %"$$fundef_51_env_116"* %0, i32 0, i32 0
  %"$m_envload_203" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_51_env_m_202"
  %m = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$m_envload_203", { i8*, i8* }** %m
  %"$retval_52" = alloca { i8*, i8* }*
  %"$$fundef_53_envp_204_load" = load i8*, i8** @_execptr
  %"$$fundef_53_envp_204_salloc" = call i8* @_salloc(i8* %"$$fundef_53_envp_204_load", i64 16)
  %"$$fundef_53_envp_204" = bitcast i8* %"$$fundef_53_envp_204_salloc" to %"$$fundef_53_env_115"*
  %"$$fundef_53_env_voidp_206" = bitcast %"$$fundef_53_env_115"* %"$$fundef_53_envp_204" to i8*
  %"$$fundef_53_cloval_207" = insertvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_53_env_115"*)* @"$fundef_53" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_53_env_voidp_206", 1
  %"$$fundef_53_env_m_208" = getelementptr inbounds %"$$fundef_53_env_115", %"$$fundef_53_env_115"* %"$$fundef_53_envp_204", i32 0, i32 0
  %"$m_209" = load { i8*, i8* }*, { i8*, i8* }** %m
  store { i8*, i8* }* %"$m_209", { i8*, i8* }** %"$$fundef_53_env_m_208"
  %"$$fundef_53_env_n_210" = getelementptr inbounds %"$$fundef_53_env_115", %"$$fundef_53_env_115"* %"$$fundef_53_envp_204", i32 0, i32 1
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_53_env_n_210"
  %"$$fundef_59_env_voidp_212" = bitcast %"$$fundef_53_env_115"* %"$$fundef_53_envp_204" to i8*
  %"$$fundef_59_cloval_213" = insertvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (%"$$fundef_59_env_112"*)* @"$fundef_59" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_59_env_voidp_212", 1
  %"$dyndisp_table_214_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_214_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_214_salloc_load", i64 32)
  %"$dyndisp_table_214_salloc" = bitcast i8* %"$dyndisp_table_214_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_214" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_214_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_215" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_214", i32 0
  %"$dyndisp_pcast_216" = bitcast { i8*, i8* }* %"$dyndisp_gep_215" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_53_cloval_207", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_216"
  %"$dyndisp_gep_217" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_214", i32 1
  %"$dyndisp_pcast_218" = bitcast { i8*, i8* }* %"$dyndisp_gep_217" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_59_cloval_213", { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_218"
  store { i8*, i8* }* %"$dyndisp_table_214", { i8*, i8* }** %"$retval_52"
  %"$$retval_52_219" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_52"
  ret { i8*, i8* }* %"$$retval_52_219"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_49"(%"$$fundef_49_env_117"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_50" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$$fundef_51_envp_196_load" = load i8*, i8** @_execptr
  %"$$fundef_51_envp_196_salloc" = call i8* @_salloc(i8* %"$$fundef_51_envp_196_load", i64 8)
  %"$$fundef_51_envp_196" = bitcast i8* %"$$fundef_51_envp_196_salloc" to %"$$fundef_51_env_116"*
  %"$$fundef_51_env_voidp_198" = bitcast %"$$fundef_51_env_116"* %"$$fundef_51_envp_196" to i8*
  %"$$fundef_51_cloval_199" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_51_env_116"*, { i8*, i8* }*)* @"$fundef_51" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_51_env_voidp_198", 1
  %"$$fundef_51_env_m_200" = getelementptr inbounds %"$$fundef_51_env_116", %"$$fundef_51_env_116"* %"$$fundef_51_envp_196", i32 0, i32 0
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_51_env_m_200"
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_51_cloval_199", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_50"
  %"$$retval_50_201" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_50"
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_50_201"
}

define internal { i8*, i8* }* @"$fundef_47"(%"$$fundef_47_env_118"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_47_env_s_182" = getelementptr inbounds %"$$fundef_47_env_118", %"$$fundef_47_env_118"* %0, i32 0, i32 0
  %"$s_envload_183" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_47_env_s_182"
  %s = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_envload_183", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s
  %"$retval_48" = alloca { i8*, i8* }*
  %sz = alloca { i8*, i8* }*
  %"$s_0" = alloca { i8*, i8* }*
  %"$s_184" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s
  %"$s_fptr_185" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_184", 0
  %"$s_envptr_186" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_184", 1
  %"$s_call_187" = call { i8*, i8* }* %"$s_fptr_185"(i8* %"$s_envptr_186", { i8*, i8* }* %1)
  store { i8*, i8* }* %"$s_call_187", { i8*, i8* }** %"$s_0"
  %"$$s_0_188" = load { i8*, i8* }*, { i8*, i8* }** %"$s_0"
  store { i8*, i8* }* %"$$s_0_188", { i8*, i8* }** %sz
  %"$s_1" = alloca { i8*, i8* }*
  %"$s_189" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s
  %"$s_fptr_190" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_189", 0
  %"$s_envptr_191" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_189", 1
  %"$sz_192" = load { i8*, i8* }*, { i8*, i8* }** %sz
  %"$s_call_193" = call { i8*, i8* }* %"$s_fptr_190"(i8* %"$s_envptr_191", { i8*, i8* }* %"$sz_192")
  store { i8*, i8* }* %"$s_call_193", { i8*, i8* }** %"$s_1"
  %"$$s_1_194" = load { i8*, i8* }*, { i8*, i8* }** %"$s_1"
  store { i8*, i8* }* %"$$s_1_194", { i8*, i8* }** %"$retval_48"
  %"$$retval_48_195" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_48"
  ret { i8*, i8* }* %"$$retval_48_195"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_45"(%"$$fundef_45_env_119"* %0, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1) {
entry:
  %"$retval_46" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$$fundef_47_envp_176_load" = load i8*, i8** @_execptr
  %"$$fundef_47_envp_176_salloc" = call i8* @_salloc(i8* %"$$fundef_47_envp_176_load", i64 16)
  %"$$fundef_47_envp_176" = bitcast i8* %"$$fundef_47_envp_176_salloc" to %"$$fundef_47_env_118"*
  %"$$fundef_47_env_voidp_178" = bitcast %"$$fundef_47_env_118"* %"$$fundef_47_envp_176" to i8*
  %"$$fundef_47_cloval_179" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_47_env_118"*, { i8*, i8* }*)* @"$fundef_47" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_47_env_voidp_178", 1
  %"$$fundef_47_env_s_180" = getelementptr inbounds %"$$fundef_47_env_118", %"$$fundef_47_env_118"* %"$$fundef_47_envp_176", i32 0, i32 0
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_47_env_s_180"
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_47_cloval_179", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_46"
  %"$$retval_46_181" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_46"
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_46_181"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } @"$fundef_43"(%"$$fundef_43_env_120"* %0) {
entry:
  %"$retval_44" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_45_env_119"*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* @"$fundef_45" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*), i8* null }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_44"
  %"$$retval_44_175" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_44"
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$retval_44_175"
}

define internal %Uint32 @"$fundef_41"(%"$$fundef_41_env_121"* %0, %Uint32 %1) {
entry:
  %"$$fundef_41_env_s_158" = getelementptr inbounds %"$$fundef_41_env_121", %"$$fundef_41_env_121"* %0, i32 0, i32 0
  %"$s_envload_159" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_41_env_s_158"
  %s = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_envload_159", { %Uint32 (i8*, %Uint32)*, i8* }* %s
  %"$retval_42" = alloca %Uint32
  %sz = alloca %Uint32
  %"$s_0" = alloca %Uint32
  %"$s_160" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s
  %"$s_fptr_161" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_160", 0
  %"$s_envptr_162" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_160", 1
  %"$s_call_163" = call %Uint32 %"$s_fptr_161"(i8* %"$s_envptr_162", %Uint32 %1)
  store %Uint32 %"$s_call_163", %Uint32* %"$s_0"
  %"$$s_0_164" = load %Uint32, %Uint32* %"$s_0"
  store %Uint32 %"$$s_0_164", %Uint32* %sz
  %"$s_1" = alloca %Uint32
  %"$s_165" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s
  %"$s_fptr_166" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_165", 0
  %"$s_envptr_167" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_165", 1
  %"$sz_168" = load %Uint32, %Uint32* %sz
  %"$s_call_169" = call %Uint32 %"$s_fptr_166"(i8* %"$s_envptr_167", %Uint32 %"$sz_168")
  store %Uint32 %"$s_call_169", %Uint32* %"$s_1"
  %"$$s_1_170" = load %Uint32, %Uint32* %"$s_1"
  store %Uint32 %"$$s_1_170", %Uint32* %"$retval_42"
  %"$$retval_42_171" = load %Uint32, %Uint32* %"$retval_42"
  ret %Uint32 %"$$retval_42_171"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_39"(%"$$fundef_39_env_122"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_40" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$$fundef_41_envp_152_load" = load i8*, i8** @_execptr
  %"$$fundef_41_envp_152_salloc" = call i8* @_salloc(i8* %"$$fundef_41_envp_152_load", i64 16)
  %"$$fundef_41_envp_152" = bitcast i8* %"$$fundef_41_envp_152_salloc" to %"$$fundef_41_env_121"*
  %"$$fundef_41_env_voidp_154" = bitcast %"$$fundef_41_env_121"* %"$$fundef_41_envp_152" to i8*
  %"$$fundef_41_cloval_155" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_41_env_121"*, %Uint32)* @"$fundef_41" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_41_env_voidp_154", 1
  %"$$fundef_41_env_s_156" = getelementptr inbounds %"$$fundef_41_env_121", %"$$fundef_41_env_121"* %"$$fundef_41_envp_152", i32 0, i32 0
  store { %Uint32 (i8*, %Uint32)*, i8* } %1, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_41_env_s_156"
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_41_cloval_155", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_40"
  %"$$retval_40_157" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_40"
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_40_157"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_37"(%"$$fundef_37_env_123"* %0) {
entry:
  %"$retval_38" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_39_env_122"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_39" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_38"
  %"$$retval_38_151" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_38"
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_38_151"
}

define internal { i8*, i8* }* @"$fundef_35"(%"$$fundef_35_env_124"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_36" = alloca { i8*, i8* }*
  store { i8*, i8* }* %1, { i8*, i8* }** %"$retval_36"
  %"$$retval_36_147" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_36"
  ret { i8*, i8* }* %"$$retval_36_147"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_33"(%"$$fundef_33_env_125"* %0, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1) {
entry:
  %"$retval_34" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_35_env_124"*, { i8*, i8* }*)* @"$fundef_35" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* null }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_34"
  %"$$retval_34_146" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_34"
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_34_146"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } @"$fundef_31"(%"$$fundef_31_env_126"* %0) {
entry:
  %"$retval_32" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_33_env_125"*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* @"$fundef_33" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*), i8* null }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_32"
  %"$$retval_32_142" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_32"
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$retval_32_142"
}

define internal %Uint32 @"$fundef_29"(%"$$fundef_29_env_127"* %0, %Uint32 %1) {
entry:
  %"$retval_30" = alloca %Uint32
  store %Uint32 %1, %Uint32* %"$retval_30"
  %"$$retval_30_138" = load %Uint32, %Uint32* %"$retval_30"
  ret %Uint32 %"$$retval_30_138"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_27"(%"$$fundef_27_env_128"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_28" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  store { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_29_env_127"*, %Uint32)* @"$fundef_29" to %Uint32 (i8*, %Uint32)*), i8* null }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_28"
  %"$$retval_28_137" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_28"
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_28_137"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_25"(%"$$fundef_25_env_129"* %0) {
entry:
  %"$retval_26" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_27_env_128"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_27" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_26"
  %"$$retval_26_133" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_26"
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_26_133"
}

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_431"(i8* %0) {
entry:
  %"$expr_24" = alloca %Uint32
  %c0 = alloca { i8*, i8* }*
  %"$dyndisp_table_438_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_438_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_438_salloc_load", i64 32)
  %"$dyndisp_table_438_salloc" = bitcast i8* %"$dyndisp_table_438_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_438" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_438_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_439" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_438", i32 0
  %"$dyndisp_pcast_440" = bitcast { i8*, i8* }* %"$dyndisp_gep_439" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_25_env_129"*)* @"$fundef_25" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_440"
  %"$dyndisp_gep_441" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_438", i32 1
  %"$dyndisp_pcast_442" = bitcast { i8*, i8* }* %"$dyndisp_gep_441" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (%"$$fundef_31_env_126"*)* @"$fundef_31" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_442"
  store { i8*, i8* }* %"$dyndisp_table_438", { i8*, i8* }** %c0
  %c2 = alloca { i8*, i8* }*
  %"$dyndisp_table_449_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_449_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_449_salloc_load", i64 32)
  %"$dyndisp_table_449_salloc" = bitcast i8* %"$dyndisp_table_449_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_449" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_449_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_450" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_449", i32 0
  %"$dyndisp_pcast_451" = bitcast { i8*, i8* }* %"$dyndisp_gep_450" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_37_env_123"*)* @"$fundef_37" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_451"
  %"$dyndisp_gep_452" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_449", i32 1
  %"$dyndisp_pcast_453" = bitcast { i8*, i8* }* %"$dyndisp_gep_452" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (%"$$fundef_43_env_120"*)* @"$fundef_43" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_453"
  store { i8*, i8* }* %"$dyndisp_table_449", { i8*, i8* }** %c2
  %cadd = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_49_env_117"*, { i8*, i8* }*)* @"$fundef_49" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd
  %cmul = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  %"$$fundef_65_envp_457_load" = load i8*, i8** @_execptr
  %"$$fundef_65_envp_457_salloc" = call i8* @_salloc(i8* %"$$fundef_65_envp_457_load", i64 24)
  %"$$fundef_65_envp_457" = bitcast i8* %"$$fundef_65_envp_457_salloc" to %"$$fundef_65_env_109"*
  %"$$fundef_65_env_voidp_459" = bitcast %"$$fundef_65_env_109"* %"$$fundef_65_envp_457" to i8*
  %"$$fundef_65_cloval_460" = insertvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_65_env_109"*, { i8*, i8* }*)* @"$fundef_65" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_65_env_voidp_459", 1
  %"$$fundef_65_env_c0_461" = getelementptr inbounds %"$$fundef_65_env_109", %"$$fundef_65_env_109"* %"$$fundef_65_envp_457", i32 0, i32 0
  %"$c0_462" = load { i8*, i8* }*, { i8*, i8* }** %c0
  store { i8*, i8* }* %"$c0_462", { i8*, i8* }** %"$$fundef_65_env_c0_461"
  %"$$fundef_65_env_cadd_463" = getelementptr inbounds %"$$fundef_65_env_109", %"$$fundef_65_env_109"* %"$$fundef_65_envp_457", i32 0, i32 1
  %"$cadd_464" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_464", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_65_env_cadd_463"
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_65_cloval_460", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul
  %church_nat_to_uint32 = alloca { %Uint32 (i8*, { i8*, i8* }*)*, i8* }
  store { %Uint32 (i8*, { i8*, i8* }*)*, i8* } { %Uint32 (i8*, { i8*, i8* }*)* bitcast (%Uint32 (%"$$fundef_69_env_107"*, { i8*, i8* }*)* @"$fundef_69" to %Uint32 (i8*, { i8*, i8* }*)*), i8* null }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %church_nat_to_uint32
  %c4 = alloca { i8*, i8* }*
  %"$cmul_11" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cmul_468" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul
  %"$cmul_fptr_469" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_468", 0
  %"$cmul_envptr_470" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_468", 1
  %"$c2_471" = load { i8*, i8* }*, { i8*, i8* }** %c2
  %"$cmul_call_472" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_469"(i8* %"$cmul_envptr_470", { i8*, i8* }* %"$c2_471")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_472", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_11"
  %"$cmul_12" = alloca { i8*, i8* }*
  %"$$cmul_11_473" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_11"
  %"$$cmul_11_fptr_474" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_11_473", 0
  %"$$cmul_11_envptr_475" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_11_473", 1
  %"$c2_476" = load { i8*, i8* }*, { i8*, i8* }** %c2
  %"$$cmul_11_call_477" = call { i8*, i8* }* %"$$cmul_11_fptr_474"(i8* %"$$cmul_11_envptr_475", { i8*, i8* }* %"$c2_476")
  store { i8*, i8* }* %"$$cmul_11_call_477", { i8*, i8* }** %"$cmul_12"
  %"$$cmul_12_478" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_12"
  store { i8*, i8* }* %"$$cmul_12_478", { i8*, i8* }** %c4
  %c16 = alloca { i8*, i8* }*
  %"$cmul_13" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cmul_479" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul
  %"$cmul_fptr_480" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_479", 0
  %"$cmul_envptr_481" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_479", 1
  %"$c4_482" = load { i8*, i8* }*, { i8*, i8* }** %c4
  %"$cmul_call_483" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_480"(i8* %"$cmul_envptr_481", { i8*, i8* }* %"$c4_482")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_483", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_13"
  %"$cmul_14" = alloca { i8*, i8* }*
  %"$$cmul_13_484" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_13"
  %"$$cmul_13_fptr_485" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_13_484", 0
  %"$$cmul_13_envptr_486" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_13_484", 1
  %"$c4_487" = load { i8*, i8* }*, { i8*, i8* }** %c4
  %"$$cmul_13_call_488" = call { i8*, i8* }* %"$$cmul_13_fptr_485"(i8* %"$$cmul_13_envptr_486", { i8*, i8* }* %"$c4_487")
  store { i8*, i8* }* %"$$cmul_13_call_488", { i8*, i8* }** %"$cmul_14"
  %"$$cmul_14_489" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_14"
  store { i8*, i8* }* %"$$cmul_14_489", { i8*, i8* }** %c16
  %c32 = alloca { i8*, i8* }*
  %"$cadd_15" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cadd_490" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd
  %"$cadd_fptr_491" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_490", 0
  %"$cadd_envptr_492" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_490", 1
  %"$c16_493" = load { i8*, i8* }*, { i8*, i8* }** %c16
  %"$cadd_call_494" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_fptr_491"(i8* %"$cadd_envptr_492", { i8*, i8* }* %"$c16_493")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_call_494", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_15"
  %"$cadd_16" = alloca { i8*, i8* }*
  %"$$cadd_15_495" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_15"
  %"$$cadd_15_fptr_496" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_15_495", 0
  %"$$cadd_15_envptr_497" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_15_495", 1
  %"$c16_498" = load { i8*, i8* }*, { i8*, i8* }** %c16
  %"$$cadd_15_call_499" = call { i8*, i8* }* %"$$cadd_15_fptr_496"(i8* %"$$cadd_15_envptr_497", { i8*, i8* }* %"$c16_498")
  store { i8*, i8* }* %"$$cadd_15_call_499", { i8*, i8* }** %"$cadd_16"
  %"$$cadd_16_500" = load { i8*, i8* }*, { i8*, i8* }** %"$cadd_16"
  store { i8*, i8* }* %"$$cadd_16_500", { i8*, i8* }** %c32
  %c128 = alloca { i8*, i8* }*
  %"$cmul_17" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cmul_501" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul
  %"$cmul_fptr_502" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_501", 0
  %"$cmul_envptr_503" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_501", 1
  %"$c4_504" = load { i8*, i8* }*, { i8*, i8* }** %c4
  %"$cmul_call_505" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_502"(i8* %"$cmul_envptr_503", { i8*, i8* }* %"$c4_504")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_505", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_17"
  %"$cmul_18" = alloca { i8*, i8* }*
  %"$$cmul_17_506" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_17"
  %"$$cmul_17_fptr_507" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_17_506", 0
  %"$$cmul_17_envptr_508" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_17_506", 1
  %"$c32_509" = load { i8*, i8* }*, { i8*, i8* }** %c32
  %"$$cmul_17_call_510" = call { i8*, i8* }* %"$$cmul_17_fptr_507"(i8* %"$$cmul_17_envptr_508", { i8*, i8* }* %"$c32_509")
  store { i8*, i8* }* %"$$cmul_17_call_510", { i8*, i8* }** %"$cmul_18"
  %"$$cmul_18_511" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_18"
  store { i8*, i8* }* %"$$cmul_18_511", { i8*, i8* }** %c128
  %c256 = alloca { i8*, i8* }*
  %"$cadd_19" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cadd_512" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd
  %"$cadd_fptr_513" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_512", 0
  %"$cadd_envptr_514" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_512", 1
  %"$c128_515" = load { i8*, i8* }*, { i8*, i8* }** %c128
  %"$cadd_call_516" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_fptr_513"(i8* %"$cadd_envptr_514", { i8*, i8* }* %"$c128_515")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_call_516", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_19"
  %"$cadd_20" = alloca { i8*, i8* }*
  %"$$cadd_19_517" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_19"
  %"$$cadd_19_fptr_518" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_19_517", 0
  %"$$cadd_19_envptr_519" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_19_517", 1
  %"$c128_520" = load { i8*, i8* }*, { i8*, i8* }** %c128
  %"$$cadd_19_call_521" = call { i8*, i8* }* %"$$cadd_19_fptr_518"(i8* %"$$cadd_19_envptr_519", { i8*, i8* }* %"$c128_520")
  store { i8*, i8* }* %"$$cadd_19_call_521", { i8*, i8* }** %"$cadd_20"
  %"$$cadd_20_522" = load { i8*, i8* }*, { i8*, i8* }** %"$cadd_20"
  store { i8*, i8* }* %"$$cadd_20_522", { i8*, i8* }** %c256
  %c65536 = alloca { i8*, i8* }*
  %"$cmul_21" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cmul_523" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul
  %"$cmul_fptr_524" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_523", 0
  %"$cmul_envptr_525" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_523", 1
  %"$c256_526" = load { i8*, i8* }*, { i8*, i8* }** %c256
  %"$cmul_call_527" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_524"(i8* %"$cmul_envptr_525", { i8*, i8* }* %"$c256_526")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_527", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_21"
  %"$cmul_22" = alloca { i8*, i8* }*
  %"$$cmul_21_528" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_21"
  %"$$cmul_21_fptr_529" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_21_528", 0
  %"$$cmul_21_envptr_530" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_21_528", 1
  %"$c256_531" = load { i8*, i8* }*, { i8*, i8* }** %c256
  %"$$cmul_21_call_532" = call { i8*, i8* }* %"$$cmul_21_fptr_529"(i8* %"$$cmul_21_envptr_530", { i8*, i8* }* %"$c256_531")
  store { i8*, i8* }* %"$$cmul_21_call_532", { i8*, i8* }** %"$cmul_22"
  %"$$cmul_22_533" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_22"
  store { i8*, i8* }* %"$$cmul_22_533", { i8*, i8* }** %c65536
  %"$church_nat_to_uint32_23" = alloca %Uint32
  %"$church_nat_to_uint32_534" = load { %Uint32 (i8*, { i8*, i8* }*)*, i8* }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %church_nat_to_uint32
  %"$church_nat_to_uint32_fptr_535" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$church_nat_to_uint32_534", 0
  %"$church_nat_to_uint32_envptr_536" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$church_nat_to_uint32_534", 1
  %"$c65536_537" = load { i8*, i8* }*, { i8*, i8* }** %c65536
  %"$church_nat_to_uint32_call_538" = call %Uint32 %"$church_nat_to_uint32_fptr_535"(i8* %"$church_nat_to_uint32_envptr_536", { i8*, i8* }* %"$c65536_537")
  store %Uint32 %"$church_nat_to_uint32_call_538", %Uint32* %"$church_nat_to_uint32_23"
  %"$$church_nat_to_uint32_23_539" = load %Uint32, %Uint32* %"$church_nat_to_uint32_23"
  store %Uint32 %"$$church_nat_to_uint32_23_539", %Uint32* %"$expr_24"
  %"$$expr_24_540" = load %Uint32, %Uint32* %"$expr_24"
  ret %Uint32 %"$$expr_24_540"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_541" = call %Uint32 @"$scilla_expr_431"(i8* null)
  %"$pval_542" = alloca %Uint32
  %"$memvoidcast_543" = bitcast %Uint32* %"$pval_542" to i8*
  store %Uint32 %"$exprval_541", %Uint32* %"$pval_542"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_77", i8* %"$memvoidcast_543")
  ret void
}
