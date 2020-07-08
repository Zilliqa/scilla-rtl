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
; let c256 = cmul c4 c4 in
; let c256a = cadd c128 c128 in
; let c65536 = cmul c256 c256a in
; let c131072 = cadd c65536 c65536 in
; church_nat_to_uint32 c131072
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_77" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$$fundef_75_env_102" = type { %Uint32 }
%Uint32 = type { i32 }
%"$$fundef_73_env_103" = type {}
%"$$fundef_71_env_104" = type { { i8*, i8* }*, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { i8*, i8* }* }
%"$$fundef_69_env_105" = type { { i8*, i8* }*, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } }
%"$$fundef_67_env_106" = type { { i8*, i8* }*, { i8*, i8* }*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } }
%"$$fundef_65_env_107" = type { { i8*, i8* }*, { i8*, i8* }* }
%"$$fundef_63_env_108" = type { { i8*, i8* }*, { i8*, i8* }* }
%"$$fundef_61_env_109" = type { { i8*, i8* }*, { i8*, i8* }*, { %Uint32 (i8*, %Uint32)*, i8* } }
%"$$fundef_59_env_110" = type { { i8*, i8* }*, { i8*, i8* }* }
%"$$fundef_57_env_111" = type { { i8*, i8* }*, { i8*, i8* }* }
%"$$fundef_55_env_112" = type { { i8*, i8* }* }
%"$$fundef_53_env_113" = type {}
%"$$fundef_51_env_114" = type { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } }
%"$$fundef_49_env_115" = type {}
%"$$fundef_47_env_116" = type {}
%"$$fundef_45_env_117" = type { { %Uint32 (i8*, %Uint32)*, i8* } }
%"$$fundef_43_env_118" = type {}
%"$$fundef_41_env_119" = type {}
%"$$fundef_39_env_120" = type {}
%"$$fundef_37_env_121" = type {}
%"$$fundef_35_env_122" = type {}
%"$$fundef_33_env_123" = type {}
%"$$fundef_31_env_124" = type {}
%"$$fundef_29_env_125" = type {}

@_execptr = global i8* null
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
@"$TyDescr_Bystr_Prim_96" = global %"$TyDescrTy_PrimTyp_77" { i32 7, i32 0 }
@"$TyDescr_Bystr_97" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_77"* @"$TyDescr_Bystr_Prim_96" to i8*) }

define internal %Uint32 @"$fundef_75"(%"$$fundef_75_env_102"* %0, %Uint32 %1) {
entry:
  %"$$fundef_75_env_one_422" = getelementptr inbounds %"$$fundef_75_env_102", %"$$fundef_75_env_102"* %0, i32 0, i32 0
  %"$one_envload_423" = load %Uint32, %Uint32* %"$$fundef_75_env_one_422"
  %one = alloca %Uint32
  store %Uint32 %"$one_envload_423", %Uint32* %one
  %"$retval_76" = alloca %Uint32
  %"$one_424" = load %Uint32, %Uint32* %one
  %"$add_call_425" = call %Uint32 @_add_Uint32(%Uint32 %"$one_424", %Uint32 %1)
  store %Uint32 %"$add_call_425", %Uint32* %"$retval_76"
  %"$$retval_76_426" = load %Uint32, %Uint32* %"$retval_76"
  ret %Uint32 %"$$retval_76_426"
}

define internal %Uint32 @"$fundef_73"(%"$$fundef_73_env_103"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_74" = alloca %Uint32
  %zero = alloca %Uint32
  store %Uint32 zeroinitializer, %Uint32* %zero
  %one = alloca %Uint32
  store %Uint32 { i32 1 }, %Uint32* %one
  %add1 = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$$fundef_75_envp_398_load" = load i8*, i8** @_execptr
  %"$$fundef_75_envp_398_salloc" = call i8* @_salloc(i8* %"$$fundef_75_envp_398_load", i64 4)
  %"$$fundef_75_envp_398" = bitcast i8* %"$$fundef_75_envp_398_salloc" to %"$$fundef_75_env_102"*
  %"$$fundef_75_env_voidp_400" = bitcast %"$$fundef_75_env_102"* %"$$fundef_75_envp_398" to i8*
  %"$$fundef_75_cloval_401" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_75_env_102"*, %Uint32)* @"$fundef_75" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_75_env_voidp_400", 1
  %"$$fundef_75_env_one_402" = getelementptr inbounds %"$$fundef_75_env_102", %"$$fundef_75_env_102"* %"$$fundef_75_envp_398", i32 0, i32 0
  %"$one_403" = load %Uint32, %Uint32* %one
  store %Uint32 %"$one_403", %Uint32* %"$$fundef_75_env_one_402"
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_75_cloval_401", { %Uint32 (i8*, %Uint32)*, i8* }* %add1
  %c32 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$c_404" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 0
  %"$c_405" = bitcast { i8*, i8* }* %"$c_404" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$c_406" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$c_405"
  %"$c_fptr_407" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$c_406", 0
  %"$c_envptr_408" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$c_406", 1
  %"$c_call_409" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c_fptr_407"(i8* %"$c_envptr_408")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c_call_409", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c32
  %"$c32_9" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$c32_410" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c32
  %"$c32_fptr_411" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c32_410", 0
  %"$c32_envptr_412" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c32_410", 1
  %"$add1_413" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %add1
  %"$c32_call_414" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_fptr_411"(i8* %"$c32_envptr_412", { %Uint32 (i8*, %Uint32)*, i8* } %"$add1_413")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_call_414", { %Uint32 (i8*, %Uint32)*, i8* }* %"$c32_9"
  %"$c32_10" = alloca %Uint32
  %"$$c32_9_415" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$c32_9"
  %"$$c32_9_fptr_416" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$c32_9_415", 0
  %"$$c32_9_envptr_417" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$c32_9_415", 1
  %"$zero_418" = load %Uint32, %Uint32* %zero
  %"$$c32_9_call_419" = call %Uint32 %"$$c32_9_fptr_416"(i8* %"$$c32_9_envptr_417", %Uint32 %"$zero_418")
  store %Uint32 %"$$c32_9_call_419", %Uint32* %"$c32_10"
  %"$$c32_10_420" = load %Uint32, %Uint32* %"$c32_10"
  store %Uint32 %"$$c32_10_420", %Uint32* %"$retval_74"
  %"$$retval_74_421" = load %Uint32, %Uint32* %"$retval_74"
  ret %Uint32 %"$$retval_74_421"
}

define internal { i8*, i8* }* @"$fundef_71"(%"$$fundef_71_env_104"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_71_env_c0_368" = getelementptr inbounds %"$$fundef_71_env_104", %"$$fundef_71_env_104"* %0, i32 0, i32 0
  %"$c0_envload_369" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_71_env_c0_368"
  %c0 = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$c0_envload_369", { i8*, i8* }** %c0
  %"$$fundef_71_env_cadd_370" = getelementptr inbounds %"$$fundef_71_env_104", %"$$fundef_71_env_104"* %0, i32 0, i32 1
  %"$cadd_envload_371" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_71_env_cadd_370"
  %cadd = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_envload_371", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd
  %"$$fundef_71_env_m_372" = getelementptr inbounds %"$$fundef_71_env_104", %"$$fundef_71_env_104"* %0, i32 0, i32 2
  %"$m_envload_373" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_71_env_m_372"
  %m = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$m_envload_373", { i8*, i8* }** %m
  %"$retval_72" = alloca { i8*, i8* }*
  %cadd_m = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cadd_6" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cadd_374" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd
  %"$cadd_fptr_375" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_374", 0
  %"$cadd_envptr_376" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_374", 1
  %"$m_377" = load { i8*, i8* }*, { i8*, i8* }** %m
  %"$cadd_call_378" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_fptr_375"(i8* %"$cadd_envptr_376", { i8*, i8* }* %"$m_377")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_call_378", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_6"
  %"$$cadd_6_379" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_6"
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_6_379", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %cadd_m
  %nI = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }
  %"$n_380" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 1
  %"$n_381" = bitcast { i8*, i8* }* %"$n_380" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$n_382" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$n_381"
  %"$n_fptr_383" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_382", 0
  %"$n_envptr_384" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_382", 1
  %"$n_call_385" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_fptr_383"(i8* %"$n_envptr_384")
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_call_385", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nI
  %"$nI_7" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$nI_386" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nI
  %"$nI_fptr_387" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nI_386", 0
  %"$nI_envptr_388" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nI_386", 1
  %"$cadd_m_389" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %cadd_m
  %"$nI_call_390" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nI_fptr_387"(i8* %"$nI_envptr_388", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_m_389")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nI_call_390", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nI_7"
  %"$nI_8" = alloca { i8*, i8* }*
  %"$$nI_7_391" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nI_7"
  %"$$nI_7_fptr_392" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nI_7_391", 0
  %"$$nI_7_envptr_393" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nI_7_391", 1
  %"$c0_394" = load { i8*, i8* }*, { i8*, i8* }** %c0
  %"$$nI_7_call_395" = call { i8*, i8* }* %"$$nI_7_fptr_392"(i8* %"$$nI_7_envptr_393", { i8*, i8* }* %"$c0_394")
  store { i8*, i8* }* %"$$nI_7_call_395", { i8*, i8* }** %"$nI_8"
  %"$$nI_8_396" = load { i8*, i8* }*, { i8*, i8* }** %"$nI_8"
  store { i8*, i8* }* %"$$nI_8_396", { i8*, i8* }** %"$retval_72"
  %"$$retval_72_397" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_72"
  ret { i8*, i8* }* %"$$retval_72_397"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_69"(%"$$fundef_69_env_105"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_69_env_c0_354" = getelementptr inbounds %"$$fundef_69_env_105", %"$$fundef_69_env_105"* %0, i32 0, i32 0
  %"$c0_envload_355" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_69_env_c0_354"
  %c0 = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$c0_envload_355", { i8*, i8* }** %c0
  %"$$fundef_69_env_cadd_356" = getelementptr inbounds %"$$fundef_69_env_105", %"$$fundef_69_env_105"* %0, i32 0, i32 1
  %"$cadd_envload_357" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_69_env_cadd_356"
  %cadd = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_envload_357", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd
  %"$retval_70" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$$fundef_71_envp_358_load" = load i8*, i8** @_execptr
  %"$$fundef_71_envp_358_salloc" = call i8* @_salloc(i8* %"$$fundef_71_envp_358_load", i64 32)
  %"$$fundef_71_envp_358" = bitcast i8* %"$$fundef_71_envp_358_salloc" to %"$$fundef_71_env_104"*
  %"$$fundef_71_env_voidp_360" = bitcast %"$$fundef_71_env_104"* %"$$fundef_71_envp_358" to i8*
  %"$$fundef_71_cloval_361" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_71_env_104"*, { i8*, i8* }*)* @"$fundef_71" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_71_env_voidp_360", 1
  %"$$fundef_71_env_c0_362" = getelementptr inbounds %"$$fundef_71_env_104", %"$$fundef_71_env_104"* %"$$fundef_71_envp_358", i32 0, i32 0
  %"$c0_363" = load { i8*, i8* }*, { i8*, i8* }** %c0
  store { i8*, i8* }* %"$c0_363", { i8*, i8* }** %"$$fundef_71_env_c0_362"
  %"$$fundef_71_env_cadd_364" = getelementptr inbounds %"$$fundef_71_env_104", %"$$fundef_71_env_104"* %"$$fundef_71_envp_358", i32 0, i32 1
  %"$cadd_365" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_365", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_71_env_cadd_364"
  %"$$fundef_71_env_m_366" = getelementptr inbounds %"$$fundef_71_env_104", %"$$fundef_71_env_104"* %"$$fundef_71_envp_358", i32 0, i32 2
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_71_env_m_366"
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_71_cloval_361", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_70"
  %"$$retval_70_367" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_70"
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_70_367"
}

define internal { i8*, i8* }* @"$fundef_67"(%"$$fundef_67_env_106"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_67_env_m_312" = getelementptr inbounds %"$$fundef_67_env_106", %"$$fundef_67_env_106"* %0, i32 0, i32 0
  %"$m_envload_313" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_67_env_m_312"
  %m = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$m_envload_313", { i8*, i8* }** %m
  %"$$fundef_67_env_n_314" = getelementptr inbounds %"$$fundef_67_env_106", %"$$fundef_67_env_106"* %0, i32 0, i32 1
  %"$n_envload_315" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_67_env_n_314"
  %n = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$n_envload_315", { i8*, i8* }** %n
  %"$$fundef_67_env_s_316" = getelementptr inbounds %"$$fundef_67_env_106", %"$$fundef_67_env_106"* %0, i32 0, i32 2
  %"$s_envload_317" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_67_env_s_316"
  %s = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_envload_317", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s
  %"$retval_68" = alloca { i8*, i8* }*
  %mX = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }
  %"$m_318" = load { i8*, i8* }*, { i8*, i8* }** %m
  %"$m_319" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$m_318", i32 1
  %"$m_320" = bitcast { i8*, i8* }* %"$m_319" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$m_321" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$m_320"
  %"$m_fptr_322" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$m_321", 0
  %"$m_envptr_323" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$m_321", 1
  %"$m_call_324" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$m_fptr_322"(i8* %"$m_envptr_323")
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$m_call_324", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %mX
  %nX = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }
  %"$n_325" = load { i8*, i8* }*, { i8*, i8* }** %n
  %"$n_326" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$n_325", i32 1
  %"$n_327" = bitcast { i8*, i8* }* %"$n_326" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$n_328" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$n_327"
  %"$n_fptr_329" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_328", 0
  %"$n_envptr_330" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_328", 1
  %"$n_call_331" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_fptr_329"(i8* %"$n_envptr_330")
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_call_331", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nX
  %nXsz = alloca { i8*, i8* }*
  %"$nX_2" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$nX_332" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nX
  %"$nX_fptr_333" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nX_332", 0
  %"$nX_envptr_334" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nX_332", 1
  %"$s_335" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s
  %"$nX_call_336" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nX_fptr_333"(i8* %"$nX_envptr_334", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_335")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nX_call_336", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nX_2"
  %"$nX_3" = alloca { i8*, i8* }*
  %"$$nX_2_337" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nX_2"
  %"$$nX_2_fptr_338" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nX_2_337", 0
  %"$$nX_2_envptr_339" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nX_2_337", 1
  %"$$nX_2_call_340" = call { i8*, i8* }* %"$$nX_2_fptr_338"(i8* %"$$nX_2_envptr_339", { i8*, i8* }* %1)
  store { i8*, i8* }* %"$$nX_2_call_340", { i8*, i8* }** %"$nX_3"
  %"$$nX_3_341" = load { i8*, i8* }*, { i8*, i8* }** %"$nX_3"
  store { i8*, i8* }* %"$$nX_3_341", { i8*, i8* }** %nXsz
  %"$mX_4" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$mX_342" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %mX
  %"$mX_fptr_343" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$mX_342", 0
  %"$mX_envptr_344" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$mX_342", 1
  %"$s_345" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s
  %"$mX_call_346" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$mX_fptr_343"(i8* %"$mX_envptr_344", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_345")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$mX_call_346", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$mX_4"
  %"$mX_5" = alloca { i8*, i8* }*
  %"$$mX_4_347" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$mX_4"
  %"$$mX_4_fptr_348" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$mX_4_347", 0
  %"$$mX_4_envptr_349" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$mX_4_347", 1
  %"$nXsz_350" = load { i8*, i8* }*, { i8*, i8* }** %nXsz
  %"$$mX_4_call_351" = call { i8*, i8* }* %"$$mX_4_fptr_348"(i8* %"$$mX_4_envptr_349", { i8*, i8* }* %"$nXsz_350")
  store { i8*, i8* }* %"$$mX_4_call_351", { i8*, i8* }** %"$mX_5"
  %"$$mX_5_352" = load { i8*, i8* }*, { i8*, i8* }** %"$mX_5"
  store { i8*, i8* }* %"$$mX_5_352", { i8*, i8* }** %"$retval_68"
  %"$$retval_68_353" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_68"
  ret { i8*, i8* }* %"$$retval_68_353"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_65"(%"$$fundef_65_env_107"* %0, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1) {
entry:
  %"$$fundef_65_env_m_298" = getelementptr inbounds %"$$fundef_65_env_107", %"$$fundef_65_env_107"* %0, i32 0, i32 0
  %"$m_envload_299" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_65_env_m_298"
  %m = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$m_envload_299", { i8*, i8* }** %m
  %"$$fundef_65_env_n_300" = getelementptr inbounds %"$$fundef_65_env_107", %"$$fundef_65_env_107"* %0, i32 0, i32 1
  %"$n_envload_301" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_65_env_n_300"
  %n = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$n_envload_301", { i8*, i8* }** %n
  %"$retval_66" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$$fundef_67_envp_302_load" = load i8*, i8** @_execptr
  %"$$fundef_67_envp_302_salloc" = call i8* @_salloc(i8* %"$$fundef_67_envp_302_load", i64 32)
  %"$$fundef_67_envp_302" = bitcast i8* %"$$fundef_67_envp_302_salloc" to %"$$fundef_67_env_106"*
  %"$$fundef_67_env_voidp_304" = bitcast %"$$fundef_67_env_106"* %"$$fundef_67_envp_302" to i8*
  %"$$fundef_67_cloval_305" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_67_env_106"*, { i8*, i8* }*)* @"$fundef_67" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_67_env_voidp_304", 1
  %"$$fundef_67_env_m_306" = getelementptr inbounds %"$$fundef_67_env_106", %"$$fundef_67_env_106"* %"$$fundef_67_envp_302", i32 0, i32 0
  %"$m_307" = load { i8*, i8* }*, { i8*, i8* }** %m
  store { i8*, i8* }* %"$m_307", { i8*, i8* }** %"$$fundef_67_env_m_306"
  %"$$fundef_67_env_n_308" = getelementptr inbounds %"$$fundef_67_env_106", %"$$fundef_67_env_106"* %"$$fundef_67_envp_302", i32 0, i32 1
  %"$n_309" = load { i8*, i8* }*, { i8*, i8* }** %n
  store { i8*, i8* }* %"$n_309", { i8*, i8* }** %"$$fundef_67_env_n_308"
  %"$$fundef_67_env_s_310" = getelementptr inbounds %"$$fundef_67_env_106", %"$$fundef_67_env_106"* %"$$fundef_67_envp_302", i32 0, i32 2
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_67_env_s_310"
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_67_cloval_305", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_66"
  %"$$retval_66_311" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_66"
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_66_311"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } @"$fundef_63"(%"$$fundef_63_env_108"* %0) {
entry:
  %"$$fundef_63_env_m_285" = getelementptr inbounds %"$$fundef_63_env_108", %"$$fundef_63_env_108"* %0, i32 0, i32 0
  %"$m_envload_286" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_63_env_m_285"
  %m = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$m_envload_286", { i8*, i8* }** %m
  %"$$fundef_63_env_n_287" = getelementptr inbounds %"$$fundef_63_env_108", %"$$fundef_63_env_108"* %0, i32 0, i32 1
  %"$n_envload_288" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_63_env_n_287"
  %n = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$n_envload_288", { i8*, i8* }** %n
  %"$retval_64" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }
  %"$$fundef_65_envp_289_load" = load i8*, i8** @_execptr
  %"$$fundef_65_envp_289_salloc" = call i8* @_salloc(i8* %"$$fundef_65_envp_289_load", i64 16)
  %"$$fundef_65_envp_289" = bitcast i8* %"$$fundef_65_envp_289_salloc" to %"$$fundef_65_env_107"*
  %"$$fundef_65_env_voidp_291" = bitcast %"$$fundef_65_env_107"* %"$$fundef_65_envp_289" to i8*
  %"$$fundef_65_cloval_292" = insertvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_65_env_107"*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* @"$fundef_65" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*), i8* undef }, i8* %"$$fundef_65_env_voidp_291", 1
  %"$$fundef_65_env_m_293" = getelementptr inbounds %"$$fundef_65_env_107", %"$$fundef_65_env_107"* %"$$fundef_65_envp_289", i32 0, i32 0
  %"$m_294" = load { i8*, i8* }*, { i8*, i8* }** %m
  store { i8*, i8* }* %"$m_294", { i8*, i8* }** %"$$fundef_65_env_m_293"
  %"$$fundef_65_env_n_295" = getelementptr inbounds %"$$fundef_65_env_107", %"$$fundef_65_env_107"* %"$$fundef_65_envp_289", i32 0, i32 1
  %"$n_296" = load { i8*, i8* }*, { i8*, i8* }** %n
  store { i8*, i8* }* %"$n_296", { i8*, i8* }** %"$$fundef_65_env_n_295"
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$fundef_65_cloval_292", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_64"
  %"$$retval_64_297" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_64"
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$retval_64_297"
}

define internal %Uint32 @"$fundef_61"(%"$$fundef_61_env_109"* %0, %Uint32 %1) {
entry:
  %"$$fundef_61_env_m_243" = getelementptr inbounds %"$$fundef_61_env_109", %"$$fundef_61_env_109"* %0, i32 0, i32 0
  %"$m_envload_244" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_61_env_m_243"
  %m = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$m_envload_244", { i8*, i8* }** %m
  %"$$fundef_61_env_n_245" = getelementptr inbounds %"$$fundef_61_env_109", %"$$fundef_61_env_109"* %0, i32 0, i32 1
  %"$n_envload_246" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_61_env_n_245"
  %n = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$n_envload_246", { i8*, i8* }** %n
  %"$$fundef_61_env_s_247" = getelementptr inbounds %"$$fundef_61_env_109", %"$$fundef_61_env_109"* %0, i32 0, i32 2
  %"$s_envload_248" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_61_env_s_247"
  %s = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_envload_248", { %Uint32 (i8*, %Uint32)*, i8* }* %s
  %"$retval_62" = alloca %Uint32
  %mX = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$m_249" = load { i8*, i8* }*, { i8*, i8* }** %m
  %"$m_250" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$m_249", i32 0
  %"$m_251" = bitcast { i8*, i8* }* %"$m_250" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$m_252" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$m_251"
  %"$m_fptr_253" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$m_252", 0
  %"$m_envptr_254" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$m_252", 1
  %"$m_call_255" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_fptr_253"(i8* %"$m_envptr_254")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_call_255", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %mX
  %nX = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$n_256" = load { i8*, i8* }*, { i8*, i8* }** %n
  %"$n_257" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$n_256", i32 0
  %"$n_258" = bitcast { i8*, i8* }* %"$n_257" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$n_259" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$n_258"
  %"$n_fptr_260" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$n_259", 0
  %"$n_envptr_261" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$n_259", 1
  %"$n_call_262" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_fptr_260"(i8* %"$n_envptr_261")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_call_262", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %nX
  %nXsz = alloca %Uint32
  %"$nX_2" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$nX_263" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %nX
  %"$nX_fptr_264" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$nX_263", 0
  %"$nX_envptr_265" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$nX_263", 1
  %"$s_266" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s
  %"$nX_call_267" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_fptr_264"(i8* %"$nX_envptr_265", { %Uint32 (i8*, %Uint32)*, i8* } %"$s_266")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_call_267", { %Uint32 (i8*, %Uint32)*, i8* }* %"$nX_2"
  %"$nX_3" = alloca %Uint32
  %"$$nX_2_268" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$nX_2"
  %"$$nX_2_fptr_269" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$nX_2_268", 0
  %"$$nX_2_envptr_270" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$nX_2_268", 1
  %"$$nX_2_call_271" = call %Uint32 %"$$nX_2_fptr_269"(i8* %"$$nX_2_envptr_270", %Uint32 %1)
  store %Uint32 %"$$nX_2_call_271", %Uint32* %"$nX_3"
  %"$$nX_3_272" = load %Uint32, %Uint32* %"$nX_3"
  store %Uint32 %"$$nX_3_272", %Uint32* %nXsz
  %"$mX_4" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$mX_273" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %mX
  %"$mX_fptr_274" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$mX_273", 0
  %"$mX_envptr_275" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$mX_273", 1
  %"$s_276" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s
  %"$mX_call_277" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$mX_fptr_274"(i8* %"$mX_envptr_275", { %Uint32 (i8*, %Uint32)*, i8* } %"$s_276")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$mX_call_277", { %Uint32 (i8*, %Uint32)*, i8* }* %"$mX_4"
  %"$mX_5" = alloca %Uint32
  %"$$mX_4_278" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$mX_4"
  %"$$mX_4_fptr_279" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$mX_4_278", 0
  %"$$mX_4_envptr_280" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$mX_4_278", 1
  %"$nXsz_281" = load %Uint32, %Uint32* %nXsz
  %"$$mX_4_call_282" = call %Uint32 %"$$mX_4_fptr_279"(i8* %"$$mX_4_envptr_280", %Uint32 %"$nXsz_281")
  store %Uint32 %"$$mX_4_call_282", %Uint32* %"$mX_5"
  %"$$mX_5_283" = load %Uint32, %Uint32* %"$mX_5"
  store %Uint32 %"$$mX_5_283", %Uint32* %"$retval_62"
  %"$$retval_62_284" = load %Uint32, %Uint32* %"$retval_62"
  ret %Uint32 %"$$retval_62_284"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_59"(%"$$fundef_59_env_110"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$$fundef_59_env_m_229" = getelementptr inbounds %"$$fundef_59_env_110", %"$$fundef_59_env_110"* %0, i32 0, i32 0
  %"$m_envload_230" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_59_env_m_229"
  %m = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$m_envload_230", { i8*, i8* }** %m
  %"$$fundef_59_env_n_231" = getelementptr inbounds %"$$fundef_59_env_110", %"$$fundef_59_env_110"* %0, i32 0, i32 1
  %"$n_envload_232" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_59_env_n_231"
  %n = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$n_envload_232", { i8*, i8* }** %n
  %"$retval_60" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$$fundef_61_envp_233_load" = load i8*, i8** @_execptr
  %"$$fundef_61_envp_233_salloc" = call i8* @_salloc(i8* %"$$fundef_61_envp_233_load", i64 32)
  %"$$fundef_61_envp_233" = bitcast i8* %"$$fundef_61_envp_233_salloc" to %"$$fundef_61_env_109"*
  %"$$fundef_61_env_voidp_235" = bitcast %"$$fundef_61_env_109"* %"$$fundef_61_envp_233" to i8*
  %"$$fundef_61_cloval_236" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_61_env_109"*, %Uint32)* @"$fundef_61" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_61_env_voidp_235", 1
  %"$$fundef_61_env_m_237" = getelementptr inbounds %"$$fundef_61_env_109", %"$$fundef_61_env_109"* %"$$fundef_61_envp_233", i32 0, i32 0
  %"$m_238" = load { i8*, i8* }*, { i8*, i8* }** %m
  store { i8*, i8* }* %"$m_238", { i8*, i8* }** %"$$fundef_61_env_m_237"
  %"$$fundef_61_env_n_239" = getelementptr inbounds %"$$fundef_61_env_109", %"$$fundef_61_env_109"* %"$$fundef_61_envp_233", i32 0, i32 1
  %"$n_240" = load { i8*, i8* }*, { i8*, i8* }** %n
  store { i8*, i8* }* %"$n_240", { i8*, i8* }** %"$$fundef_61_env_n_239"
  %"$$fundef_61_env_s_241" = getelementptr inbounds %"$$fundef_61_env_109", %"$$fundef_61_env_109"* %"$$fundef_61_envp_233", i32 0, i32 2
  store { %Uint32 (i8*, %Uint32)*, i8* } %1, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_61_env_s_241"
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_61_cloval_236", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_60"
  %"$$retval_60_242" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_60"
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_60_242"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_57"(%"$$fundef_57_env_111"* %0) {
entry:
  %"$$fundef_57_env_m_216" = getelementptr inbounds %"$$fundef_57_env_111", %"$$fundef_57_env_111"* %0, i32 0, i32 0
  %"$m_envload_217" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_57_env_m_216"
  %m = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$m_envload_217", { i8*, i8* }** %m
  %"$$fundef_57_env_n_218" = getelementptr inbounds %"$$fundef_57_env_111", %"$$fundef_57_env_111"* %0, i32 0, i32 1
  %"$n_envload_219" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_57_env_n_218"
  %n = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$n_envload_219", { i8*, i8* }** %n
  %"$retval_58" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  %"$$fundef_59_envp_220_load" = load i8*, i8** @_execptr
  %"$$fundef_59_envp_220_salloc" = call i8* @_salloc(i8* %"$$fundef_59_envp_220_load", i64 16)
  %"$$fundef_59_envp_220" = bitcast i8* %"$$fundef_59_envp_220_salloc" to %"$$fundef_59_env_110"*
  %"$$fundef_59_env_voidp_222" = bitcast %"$$fundef_59_env_110"* %"$$fundef_59_envp_220" to i8*
  %"$$fundef_59_cloval_223" = insertvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_59_env_110"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_59" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* undef }, i8* %"$$fundef_59_env_voidp_222", 1
  %"$$fundef_59_env_m_224" = getelementptr inbounds %"$$fundef_59_env_110", %"$$fundef_59_env_110"* %"$$fundef_59_envp_220", i32 0, i32 0
  %"$m_225" = load { i8*, i8* }*, { i8*, i8* }** %m
  store { i8*, i8* }* %"$m_225", { i8*, i8* }** %"$$fundef_59_env_m_224"
  %"$$fundef_59_env_n_226" = getelementptr inbounds %"$$fundef_59_env_110", %"$$fundef_59_env_110"* %"$$fundef_59_envp_220", i32 0, i32 1
  %"$n_227" = load { i8*, i8* }*, { i8*, i8* }** %n
  store { i8*, i8* }* %"$n_227", { i8*, i8* }** %"$$fundef_59_env_n_226"
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$fundef_59_cloval_223", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_58"
  %"$$retval_58_228" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_58"
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_58_228"
}

define internal { i8*, i8* }* @"$fundef_55"(%"$$fundef_55_env_112"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_55_env_m_198" = getelementptr inbounds %"$$fundef_55_env_112", %"$$fundef_55_env_112"* %0, i32 0, i32 0
  %"$m_envload_199" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_55_env_m_198"
  %m = alloca { i8*, i8* }*
  store { i8*, i8* }* %"$m_envload_199", { i8*, i8* }** %m
  %"$retval_56" = alloca { i8*, i8* }*
  %"$$fundef_57_envp_200_load" = load i8*, i8** @_execptr
  %"$$fundef_57_envp_200_salloc" = call i8* @_salloc(i8* %"$$fundef_57_envp_200_load", i64 16)
  %"$$fundef_57_envp_200" = bitcast i8* %"$$fundef_57_envp_200_salloc" to %"$$fundef_57_env_111"*
  %"$$fundef_57_env_voidp_202" = bitcast %"$$fundef_57_env_111"* %"$$fundef_57_envp_200" to i8*
  %"$$fundef_57_cloval_203" = insertvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_57_env_111"*)* @"$fundef_57" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_57_env_voidp_202", 1
  %"$$fundef_57_env_m_204" = getelementptr inbounds %"$$fundef_57_env_111", %"$$fundef_57_env_111"* %"$$fundef_57_envp_200", i32 0, i32 0
  %"$m_205" = load { i8*, i8* }*, { i8*, i8* }** %m
  store { i8*, i8* }* %"$m_205", { i8*, i8* }** %"$$fundef_57_env_m_204"
  %"$$fundef_57_env_n_206" = getelementptr inbounds %"$$fundef_57_env_111", %"$$fundef_57_env_111"* %"$$fundef_57_envp_200", i32 0, i32 1
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_57_env_n_206"
  %"$$fundef_63_env_voidp_208" = bitcast %"$$fundef_57_env_111"* %"$$fundef_57_envp_200" to i8*
  %"$$fundef_63_cloval_209" = insertvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (%"$$fundef_63_env_108"*)* @"$fundef_63" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_63_env_voidp_208", 1
  %"$dyndisp_table_210_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_210_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_210_salloc_load", i64 32)
  %"$dyndisp_table_210_salloc" = bitcast i8* %"$dyndisp_table_210_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_210" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_210_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_211" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_210", i32 0
  %"$dyndisp_pcast_212" = bitcast { i8*, i8* }* %"$dyndisp_gep_211" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_57_cloval_203", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_212"
  %"$dyndisp_gep_213" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_210", i32 1
  %"$dyndisp_pcast_214" = bitcast { i8*, i8* }* %"$dyndisp_gep_213" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_63_cloval_209", { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_214"
  store { i8*, i8* }* %"$dyndisp_table_210", { i8*, i8* }** %"$retval_56"
  %"$$retval_56_215" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_56"
  ret { i8*, i8* }* %"$$retval_56_215"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_53"(%"$$fundef_53_env_113"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_54" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$$fundef_55_envp_192_load" = load i8*, i8** @_execptr
  %"$$fundef_55_envp_192_salloc" = call i8* @_salloc(i8* %"$$fundef_55_envp_192_load", i64 8)
  %"$$fundef_55_envp_192" = bitcast i8* %"$$fundef_55_envp_192_salloc" to %"$$fundef_55_env_112"*
  %"$$fundef_55_env_voidp_194" = bitcast %"$$fundef_55_env_112"* %"$$fundef_55_envp_192" to i8*
  %"$$fundef_55_cloval_195" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_55_env_112"*, { i8*, i8* }*)* @"$fundef_55" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_55_env_voidp_194", 1
  %"$$fundef_55_env_m_196" = getelementptr inbounds %"$$fundef_55_env_112", %"$$fundef_55_env_112"* %"$$fundef_55_envp_192", i32 0, i32 0
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_55_env_m_196"
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_55_cloval_195", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_54"
  %"$$retval_54_197" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_54"
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_54_197"
}

define internal { i8*, i8* }* @"$fundef_51"(%"$$fundef_51_env_114"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_51_env_s_178" = getelementptr inbounds %"$$fundef_51_env_114", %"$$fundef_51_env_114"* %0, i32 0, i32 0
  %"$s_envload_179" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_51_env_s_178"
  %s = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_envload_179", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s
  %"$retval_52" = alloca { i8*, i8* }*
  %sz = alloca { i8*, i8* }*
  %"$s_0" = alloca { i8*, i8* }*
  %"$s_180" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s
  %"$s_fptr_181" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_180", 0
  %"$s_envptr_182" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_180", 1
  %"$s_call_183" = call { i8*, i8* }* %"$s_fptr_181"(i8* %"$s_envptr_182", { i8*, i8* }* %1)
  store { i8*, i8* }* %"$s_call_183", { i8*, i8* }** %"$s_0"
  %"$$s_0_184" = load { i8*, i8* }*, { i8*, i8* }** %"$s_0"
  store { i8*, i8* }* %"$$s_0_184", { i8*, i8* }** %sz
  %"$s_1" = alloca { i8*, i8* }*
  %"$s_185" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s
  %"$s_fptr_186" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_185", 0
  %"$s_envptr_187" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_185", 1
  %"$sz_188" = load { i8*, i8* }*, { i8*, i8* }** %sz
  %"$s_call_189" = call { i8*, i8* }* %"$s_fptr_186"(i8* %"$s_envptr_187", { i8*, i8* }* %"$sz_188")
  store { i8*, i8* }* %"$s_call_189", { i8*, i8* }** %"$s_1"
  %"$$s_1_190" = load { i8*, i8* }*, { i8*, i8* }** %"$s_1"
  store { i8*, i8* }* %"$$s_1_190", { i8*, i8* }** %"$retval_52"
  %"$$retval_52_191" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_52"
  ret { i8*, i8* }* %"$$retval_52_191"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_49"(%"$$fundef_49_env_115"* %0, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1) {
entry:
  %"$retval_50" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$$fundef_51_envp_172_load" = load i8*, i8** @_execptr
  %"$$fundef_51_envp_172_salloc" = call i8* @_salloc(i8* %"$$fundef_51_envp_172_load", i64 16)
  %"$$fundef_51_envp_172" = bitcast i8* %"$$fundef_51_envp_172_salloc" to %"$$fundef_51_env_114"*
  %"$$fundef_51_env_voidp_174" = bitcast %"$$fundef_51_env_114"* %"$$fundef_51_envp_172" to i8*
  %"$$fundef_51_cloval_175" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_51_env_114"*, { i8*, i8* }*)* @"$fundef_51" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_51_env_voidp_174", 1
  %"$$fundef_51_env_s_176" = getelementptr inbounds %"$$fundef_51_env_114", %"$$fundef_51_env_114"* %"$$fundef_51_envp_172", i32 0, i32 0
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_51_env_s_176"
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_51_cloval_175", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_50"
  %"$$retval_50_177" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_50"
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_50_177"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } @"$fundef_47"(%"$$fundef_47_env_116"* %0) {
entry:
  %"$retval_48" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_49_env_115"*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* @"$fundef_49" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*), i8* null }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_48"
  %"$$retval_48_171" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_48"
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$retval_48_171"
}

define internal %Uint32 @"$fundef_45"(%"$$fundef_45_env_117"* %0, %Uint32 %1) {
entry:
  %"$$fundef_45_env_s_154" = getelementptr inbounds %"$$fundef_45_env_117", %"$$fundef_45_env_117"* %0, i32 0, i32 0
  %"$s_envload_155" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_45_env_s_154"
  %s = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_envload_155", { %Uint32 (i8*, %Uint32)*, i8* }* %s
  %"$retval_46" = alloca %Uint32
  %sz = alloca %Uint32
  %"$s_0" = alloca %Uint32
  %"$s_156" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s
  %"$s_fptr_157" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_156", 0
  %"$s_envptr_158" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_156", 1
  %"$s_call_159" = call %Uint32 %"$s_fptr_157"(i8* %"$s_envptr_158", %Uint32 %1)
  store %Uint32 %"$s_call_159", %Uint32* %"$s_0"
  %"$$s_0_160" = load %Uint32, %Uint32* %"$s_0"
  store %Uint32 %"$$s_0_160", %Uint32* %sz
  %"$s_1" = alloca %Uint32
  %"$s_161" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s
  %"$s_fptr_162" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_161", 0
  %"$s_envptr_163" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_161", 1
  %"$sz_164" = load %Uint32, %Uint32* %sz
  %"$s_call_165" = call %Uint32 %"$s_fptr_162"(i8* %"$s_envptr_163", %Uint32 %"$sz_164")
  store %Uint32 %"$s_call_165", %Uint32* %"$s_1"
  %"$$s_1_166" = load %Uint32, %Uint32* %"$s_1"
  store %Uint32 %"$$s_1_166", %Uint32* %"$retval_46"
  %"$$retval_46_167" = load %Uint32, %Uint32* %"$retval_46"
  ret %Uint32 %"$$retval_46_167"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_43"(%"$$fundef_43_env_118"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_44" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  %"$$fundef_45_envp_148_load" = load i8*, i8** @_execptr
  %"$$fundef_45_envp_148_salloc" = call i8* @_salloc(i8* %"$$fundef_45_envp_148_load", i64 16)
  %"$$fundef_45_envp_148" = bitcast i8* %"$$fundef_45_envp_148_salloc" to %"$$fundef_45_env_117"*
  %"$$fundef_45_env_voidp_150" = bitcast %"$$fundef_45_env_117"* %"$$fundef_45_envp_148" to i8*
  %"$$fundef_45_cloval_151" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_45_env_117"*, %Uint32)* @"$fundef_45" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_45_env_voidp_150", 1
  %"$$fundef_45_env_s_152" = getelementptr inbounds %"$$fundef_45_env_117", %"$$fundef_45_env_117"* %"$$fundef_45_envp_148", i32 0, i32 0
  store { %Uint32 (i8*, %Uint32)*, i8* } %1, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_45_env_s_152"
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_45_cloval_151", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_44"
  %"$$retval_44_153" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_44"
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_44_153"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_41"(%"$$fundef_41_env_119"* %0) {
entry:
  %"$retval_42" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_43_env_118"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_43" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_42"
  %"$$retval_42_147" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_42"
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_42_147"
}

define internal { i8*, i8* }* @"$fundef_39"(%"$$fundef_39_env_120"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_40" = alloca { i8*, i8* }*
  store { i8*, i8* }* %1, { i8*, i8* }** %"$retval_40"
  %"$$retval_40_143" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_40"
  ret { i8*, i8* }* %"$$retval_40_143"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_37"(%"$$fundef_37_env_121"* %0, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1) {
entry:
  %"$retval_38" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_39_env_120"*, { i8*, i8* }*)* @"$fundef_39" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* null }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_38"
  %"$$retval_38_142" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_38"
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_38_142"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } @"$fundef_35"(%"$$fundef_35_env_122"* %0) {
entry:
  %"$retval_36" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_37_env_121"*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* @"$fundef_37" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*), i8* null }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_36"
  %"$$retval_36_138" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_36"
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$retval_36_138"
}

define internal %Uint32 @"$fundef_33"(%"$$fundef_33_env_123"* %0, %Uint32 %1) {
entry:
  %"$retval_34" = alloca %Uint32
  store %Uint32 %1, %Uint32* %"$retval_34"
  %"$$retval_34_134" = load %Uint32, %Uint32* %"$retval_34"
  ret %Uint32 %"$$retval_34_134"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_31"(%"$$fundef_31_env_124"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_32" = alloca { %Uint32 (i8*, %Uint32)*, i8* }
  store { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_33_env_123"*, %Uint32)* @"$fundef_33" to %Uint32 (i8*, %Uint32)*), i8* null }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_32"
  %"$$retval_32_133" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_32"
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_32_133"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_29"(%"$$fundef_29_env_125"* %0) {
entry:
  %"$retval_30" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_31_env_124"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_31" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_30"
  %"$$retval_30_129" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_30"
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_30_129"
}

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  ret void
}

define internal %Uint32 @"$scilla_expr_427"(i8* %0) {
entry:
  %"$expr_28" = alloca %Uint32
  %c0 = alloca { i8*, i8* }*
  %"$dyndisp_table_434_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_434_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_434_salloc_load", i64 32)
  %"$dyndisp_table_434_salloc" = bitcast i8* %"$dyndisp_table_434_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_434" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_434_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_435" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_434", i32 0
  %"$dyndisp_pcast_436" = bitcast { i8*, i8* }* %"$dyndisp_gep_435" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_29_env_125"*)* @"$fundef_29" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_436"
  %"$dyndisp_gep_437" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_434", i32 1
  %"$dyndisp_pcast_438" = bitcast { i8*, i8* }* %"$dyndisp_gep_437" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (%"$$fundef_35_env_122"*)* @"$fundef_35" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_438"
  store { i8*, i8* }* %"$dyndisp_table_434", { i8*, i8* }** %c0
  %c2 = alloca { i8*, i8* }*
  %"$dyndisp_table_445_salloc_load" = load i8*, i8** @_execptr
  %"$dyndisp_table_445_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_445_salloc_load", i64 32)
  %"$dyndisp_table_445_salloc" = bitcast i8* %"$dyndisp_table_445_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_445" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_445_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_446" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_445", i32 0
  %"$dyndisp_pcast_447" = bitcast { i8*, i8* }* %"$dyndisp_gep_446" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_41_env_119"*)* @"$fundef_41" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_447"
  %"$dyndisp_gep_448" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_445", i32 1
  %"$dyndisp_pcast_449" = bitcast { i8*, i8* }* %"$dyndisp_gep_448" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (%"$$fundef_47_env_116"*)* @"$fundef_47" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_449"
  store { i8*, i8* }* %"$dyndisp_table_445", { i8*, i8* }** %c2
  %cadd = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_53_env_113"*, { i8*, i8* }*)* @"$fundef_53" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd
  %cmul = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }
  %"$$fundef_69_envp_453_load" = load i8*, i8** @_execptr
  %"$$fundef_69_envp_453_salloc" = call i8* @_salloc(i8* %"$$fundef_69_envp_453_load", i64 24)
  %"$$fundef_69_envp_453" = bitcast i8* %"$$fundef_69_envp_453_salloc" to %"$$fundef_69_env_105"*
  %"$$fundef_69_env_voidp_455" = bitcast %"$$fundef_69_env_105"* %"$$fundef_69_envp_453" to i8*
  %"$$fundef_69_cloval_456" = insertvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_69_env_105"*, { i8*, i8* }*)* @"$fundef_69" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_69_env_voidp_455", 1
  %"$$fundef_69_env_c0_457" = getelementptr inbounds %"$$fundef_69_env_105", %"$$fundef_69_env_105"* %"$$fundef_69_envp_453", i32 0, i32 0
  %"$c0_458" = load { i8*, i8* }*, { i8*, i8* }** %c0
  store { i8*, i8* }* %"$c0_458", { i8*, i8* }** %"$$fundef_69_env_c0_457"
  %"$$fundef_69_env_cadd_459" = getelementptr inbounds %"$$fundef_69_env_105", %"$$fundef_69_env_105"* %"$$fundef_69_envp_453", i32 0, i32 1
  %"$cadd_460" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_460", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_69_env_cadd_459"
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_69_cloval_456", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul
  %church_nat_to_uint32 = alloca { %Uint32 (i8*, { i8*, i8* }*)*, i8* }
  store { %Uint32 (i8*, { i8*, i8* }*)*, i8* } { %Uint32 (i8*, { i8*, i8* }*)* bitcast (%Uint32 (%"$$fundef_73_env_103"*, { i8*, i8* }*)* @"$fundef_73" to %Uint32 (i8*, { i8*, i8* }*)*), i8* null }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %church_nat_to_uint32
  %c4 = alloca { i8*, i8* }*
  %"$cmul_11" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cmul_464" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul
  %"$cmul_fptr_465" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_464", 0
  %"$cmul_envptr_466" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_464", 1
  %"$c2_467" = load { i8*, i8* }*, { i8*, i8* }** %c2
  %"$cmul_call_468" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_465"(i8* %"$cmul_envptr_466", { i8*, i8* }* %"$c2_467")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_468", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_11"
  %"$cmul_12" = alloca { i8*, i8* }*
  %"$$cmul_11_469" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_11"
  %"$$cmul_11_fptr_470" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_11_469", 0
  %"$$cmul_11_envptr_471" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_11_469", 1
  %"$c2_472" = load { i8*, i8* }*, { i8*, i8* }** %c2
  %"$$cmul_11_call_473" = call { i8*, i8* }* %"$$cmul_11_fptr_470"(i8* %"$$cmul_11_envptr_471", { i8*, i8* }* %"$c2_472")
  store { i8*, i8* }* %"$$cmul_11_call_473", { i8*, i8* }** %"$cmul_12"
  %"$$cmul_12_474" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_12"
  store { i8*, i8* }* %"$$cmul_12_474", { i8*, i8* }** %c4
  %c16 = alloca { i8*, i8* }*
  %"$cmul_13" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cmul_475" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul
  %"$cmul_fptr_476" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_475", 0
  %"$cmul_envptr_477" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_475", 1
  %"$c4_478" = load { i8*, i8* }*, { i8*, i8* }** %c4
  %"$cmul_call_479" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_476"(i8* %"$cmul_envptr_477", { i8*, i8* }* %"$c4_478")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_479", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_13"
  %"$cmul_14" = alloca { i8*, i8* }*
  %"$$cmul_13_480" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_13"
  %"$$cmul_13_fptr_481" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_13_480", 0
  %"$$cmul_13_envptr_482" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_13_480", 1
  %"$c4_483" = load { i8*, i8* }*, { i8*, i8* }** %c4
  %"$$cmul_13_call_484" = call { i8*, i8* }* %"$$cmul_13_fptr_481"(i8* %"$$cmul_13_envptr_482", { i8*, i8* }* %"$c4_483")
  store { i8*, i8* }* %"$$cmul_13_call_484", { i8*, i8* }** %"$cmul_14"
  %"$$cmul_14_485" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_14"
  store { i8*, i8* }* %"$$cmul_14_485", { i8*, i8* }** %c16
  %c32 = alloca { i8*, i8* }*
  %"$cadd_15" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cadd_486" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd
  %"$cadd_fptr_487" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_486", 0
  %"$cadd_envptr_488" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_486", 1
  %"$c16_489" = load { i8*, i8* }*, { i8*, i8* }** %c16
  %"$cadd_call_490" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_fptr_487"(i8* %"$cadd_envptr_488", { i8*, i8* }* %"$c16_489")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_call_490", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_15"
  %"$cadd_16" = alloca { i8*, i8* }*
  %"$$cadd_15_491" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_15"
  %"$$cadd_15_fptr_492" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_15_491", 0
  %"$$cadd_15_envptr_493" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_15_491", 1
  %"$c16_494" = load { i8*, i8* }*, { i8*, i8* }** %c16
  %"$$cadd_15_call_495" = call { i8*, i8* }* %"$$cadd_15_fptr_492"(i8* %"$$cadd_15_envptr_493", { i8*, i8* }* %"$c16_494")
  store { i8*, i8* }* %"$$cadd_15_call_495", { i8*, i8* }** %"$cadd_16"
  %"$$cadd_16_496" = load { i8*, i8* }*, { i8*, i8* }** %"$cadd_16"
  store { i8*, i8* }* %"$$cadd_16_496", { i8*, i8* }** %c32
  %c128 = alloca { i8*, i8* }*
  %"$cmul_17" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cmul_497" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul
  %"$cmul_fptr_498" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_497", 0
  %"$cmul_envptr_499" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_497", 1
  %"$c4_500" = load { i8*, i8* }*, { i8*, i8* }** %c4
  %"$cmul_call_501" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_498"(i8* %"$cmul_envptr_499", { i8*, i8* }* %"$c4_500")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_501", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_17"
  %"$cmul_18" = alloca { i8*, i8* }*
  %"$$cmul_17_502" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_17"
  %"$$cmul_17_fptr_503" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_17_502", 0
  %"$$cmul_17_envptr_504" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_17_502", 1
  %"$c32_505" = load { i8*, i8* }*, { i8*, i8* }** %c32
  %"$$cmul_17_call_506" = call { i8*, i8* }* %"$$cmul_17_fptr_503"(i8* %"$$cmul_17_envptr_504", { i8*, i8* }* %"$c32_505")
  store { i8*, i8* }* %"$$cmul_17_call_506", { i8*, i8* }** %"$cmul_18"
  %"$$cmul_18_507" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_18"
  store { i8*, i8* }* %"$$cmul_18_507", { i8*, i8* }** %c128
  %c256 = alloca { i8*, i8* }*
  %"$cmul_19" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cmul_508" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul
  %"$cmul_fptr_509" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_508", 0
  %"$cmul_envptr_510" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_508", 1
  %"$c4_511" = load { i8*, i8* }*, { i8*, i8* }** %c4
  %"$cmul_call_512" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_509"(i8* %"$cmul_envptr_510", { i8*, i8* }* %"$c4_511")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_512", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_19"
  %"$cmul_20" = alloca { i8*, i8* }*
  %"$$cmul_19_513" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_19"
  %"$$cmul_19_fptr_514" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_19_513", 0
  %"$$cmul_19_envptr_515" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_19_513", 1
  %"$c4_516" = load { i8*, i8* }*, { i8*, i8* }** %c4
  %"$$cmul_19_call_517" = call { i8*, i8* }* %"$$cmul_19_fptr_514"(i8* %"$$cmul_19_envptr_515", { i8*, i8* }* %"$c4_516")
  store { i8*, i8* }* %"$$cmul_19_call_517", { i8*, i8* }** %"$cmul_20"
  %"$$cmul_20_518" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_20"
  store { i8*, i8* }* %"$$cmul_20_518", { i8*, i8* }** %c256
  %c256a = alloca { i8*, i8* }*
  %"$cadd_21" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cadd_519" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd
  %"$cadd_fptr_520" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_519", 0
  %"$cadd_envptr_521" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_519", 1
  %"$c128_522" = load { i8*, i8* }*, { i8*, i8* }** %c128
  %"$cadd_call_523" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_fptr_520"(i8* %"$cadd_envptr_521", { i8*, i8* }* %"$c128_522")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_call_523", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_21"
  %"$cadd_22" = alloca { i8*, i8* }*
  %"$$cadd_21_524" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_21"
  %"$$cadd_21_fptr_525" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_21_524", 0
  %"$$cadd_21_envptr_526" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_21_524", 1
  %"$c128_527" = load { i8*, i8* }*, { i8*, i8* }** %c128
  %"$$cadd_21_call_528" = call { i8*, i8* }* %"$$cadd_21_fptr_525"(i8* %"$$cadd_21_envptr_526", { i8*, i8* }* %"$c128_527")
  store { i8*, i8* }* %"$$cadd_21_call_528", { i8*, i8* }** %"$cadd_22"
  %"$$cadd_22_529" = load { i8*, i8* }*, { i8*, i8* }** %"$cadd_22"
  store { i8*, i8* }* %"$$cadd_22_529", { i8*, i8* }** %c256a
  %c65536 = alloca { i8*, i8* }*
  %"$cmul_23" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cmul_530" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul
  %"$cmul_fptr_531" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_530", 0
  %"$cmul_envptr_532" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_530", 1
  %"$c256_533" = load { i8*, i8* }*, { i8*, i8* }** %c256
  %"$cmul_call_534" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_531"(i8* %"$cmul_envptr_532", { i8*, i8* }* %"$c256_533")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_534", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_23"
  %"$cmul_24" = alloca { i8*, i8* }*
  %"$$cmul_23_535" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_23"
  %"$$cmul_23_fptr_536" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_23_535", 0
  %"$$cmul_23_envptr_537" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_23_535", 1
  %"$c256a_538" = load { i8*, i8* }*, { i8*, i8* }** %c256a
  %"$$cmul_23_call_539" = call { i8*, i8* }* %"$$cmul_23_fptr_536"(i8* %"$$cmul_23_envptr_537", { i8*, i8* }* %"$c256a_538")
  store { i8*, i8* }* %"$$cmul_23_call_539", { i8*, i8* }** %"$cmul_24"
  %"$$cmul_24_540" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_24"
  store { i8*, i8* }* %"$$cmul_24_540", { i8*, i8* }** %c65536
  %c131072 = alloca { i8*, i8* }*
  %"$cadd_25" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }
  %"$cadd_541" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd
  %"$cadd_fptr_542" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_541", 0
  %"$cadd_envptr_543" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_541", 1
  %"$c65536_544" = load { i8*, i8* }*, { i8*, i8* }** %c65536
  %"$cadd_call_545" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_fptr_542"(i8* %"$cadd_envptr_543", { i8*, i8* }* %"$c65536_544")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_call_545", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_25"
  %"$cadd_26" = alloca { i8*, i8* }*
  %"$$cadd_25_546" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_25"
  %"$$cadd_25_fptr_547" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_25_546", 0
  %"$$cadd_25_envptr_548" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_25_546", 1
  %"$c65536_549" = load { i8*, i8* }*, { i8*, i8* }** %c65536
  %"$$cadd_25_call_550" = call { i8*, i8* }* %"$$cadd_25_fptr_547"(i8* %"$$cadd_25_envptr_548", { i8*, i8* }* %"$c65536_549")
  store { i8*, i8* }* %"$$cadd_25_call_550", { i8*, i8* }** %"$cadd_26"
  %"$$cadd_26_551" = load { i8*, i8* }*, { i8*, i8* }** %"$cadd_26"
  store { i8*, i8* }* %"$$cadd_26_551", { i8*, i8* }** %c131072
  %"$church_nat_to_uint32_27" = alloca %Uint32
  %"$church_nat_to_uint32_552" = load { %Uint32 (i8*, { i8*, i8* }*)*, i8* }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %church_nat_to_uint32
  %"$church_nat_to_uint32_fptr_553" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$church_nat_to_uint32_552", 0
  %"$church_nat_to_uint32_envptr_554" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$church_nat_to_uint32_552", 1
  %"$c131072_555" = load { i8*, i8* }*, { i8*, i8* }** %c131072
  %"$church_nat_to_uint32_call_556" = call %Uint32 %"$church_nat_to_uint32_fptr_553"(i8* %"$church_nat_to_uint32_envptr_554", { i8*, i8* }* %"$c131072_555")
  store %Uint32 %"$church_nat_to_uint32_call_556", %Uint32* %"$church_nat_to_uint32_27"
  %"$$church_nat_to_uint32_27_557" = load %Uint32, %Uint32* %"$church_nat_to_uint32_27"
  store %Uint32 %"$$church_nat_to_uint32_27_557", %Uint32* %"$expr_28"
  %"$$expr_28_558" = load %Uint32, %Uint32* %"$expr_28"
  ret %Uint32 %"$$expr_28_558"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_559" = call %Uint32 @"$scilla_expr_427"(i8* null)
  %"$pval_560" = alloca %Uint32
  %"$memvoidcast_561" = bitcast %Uint32* %"$pval_560" to i8*
  store %Uint32 %"$exprval_559", %Uint32* %"$pval_560"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_81", i8* %"$memvoidcast_561")
  ret void
}
