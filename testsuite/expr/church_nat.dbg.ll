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
target triple = "x86_64-unknown-linux-gnu"

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
@_gasrem = global i64 0
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

define internal %Uint32 @"$fundef_71"(%"$$fundef_71_env_106"* %0, %Uint32 %1) !dbg !4 {
entry:
  %"$$fundef_71_env_one_681" = getelementptr inbounds %"$$fundef_71_env_106", %"$$fundef_71_env_106"* %0, i32 0, i32 0
  %"$one_envload_682" = load %Uint32, %Uint32* %"$$fundef_71_env_one_681", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_682", %Uint32* %one, align 4
  %"$retval_72" = alloca %Uint32, align 8
  %"$one_683" = load %Uint32, %Uint32* %one, align 4
  %"$add_call_684" = call %Uint32 @_add_Uint32(%Uint32 %"$one_683", %Uint32 %1)
  store %Uint32 %"$add_call_684", %Uint32* %"$retval_72", align 4, !dbg !8
  %"$$retval_72_685" = load %Uint32, %Uint32* %"$retval_72", align 4
  ret %Uint32 %"$$retval_72_685"
}

define internal %Uint32 @"$fundef_69"(%"$$fundef_69_env_107"* %0, { i8*, i8* }* %1) !dbg !9 {
entry:
  %"$retval_70" = alloca %Uint32, align 8
  %"$gasrem_612" = load i64, i64* @_gasrem, align 8
  %"$gascmp_613" = icmp ugt i64 1, %"$gasrem_612"
  br i1 %"$gascmp_613", label %"$out_of_gas_614", label %"$have_gas_615"

"$out_of_gas_614":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_615"

"$have_gas_615":                                  ; preds = %"$out_of_gas_614", %entry
  %"$consume_616" = sub i64 %"$gasrem_612", 1
  store i64 %"$consume_616", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_617" = load i64, i64* @_gasrem, align 8
  %"$gascmp_618" = icmp ugt i64 1, %"$gasrem_617"
  br i1 %"$gascmp_618", label %"$out_of_gas_619", label %"$have_gas_620"

"$out_of_gas_619":                                ; preds = %"$have_gas_615"
  call void @_out_of_gas()
  br label %"$have_gas_620"

"$have_gas_620":                                  ; preds = %"$out_of_gas_619", %"$have_gas_615"
  %"$consume_621" = sub i64 %"$gasrem_617", 1
  store i64 %"$consume_621", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4, !dbg !10
  %"$gasrem_622" = load i64, i64* @_gasrem, align 8
  %"$gascmp_623" = icmp ugt i64 1, %"$gasrem_622"
  br i1 %"$gascmp_623", label %"$out_of_gas_624", label %"$have_gas_625"

"$out_of_gas_624":                                ; preds = %"$have_gas_620"
  call void @_out_of_gas()
  br label %"$have_gas_625"

"$have_gas_625":                                  ; preds = %"$out_of_gas_624", %"$have_gas_620"
  %"$consume_626" = sub i64 %"$gasrem_622", 1
  store i64 %"$consume_626", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_627" = load i64, i64* @_gasrem, align 8
  %"$gascmp_628" = icmp ugt i64 1, %"$gasrem_627"
  br i1 %"$gascmp_628", label %"$out_of_gas_629", label %"$have_gas_630"

"$out_of_gas_629":                                ; preds = %"$have_gas_625"
  call void @_out_of_gas()
  br label %"$have_gas_630"

"$have_gas_630":                                  ; preds = %"$out_of_gas_629", %"$have_gas_625"
  %"$consume_631" = sub i64 %"$gasrem_627", 1
  store i64 %"$consume_631", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !11
  %"$gasrem_632" = load i64, i64* @_gasrem, align 8
  %"$gascmp_633" = icmp ugt i64 1, %"$gasrem_632"
  br i1 %"$gascmp_633", label %"$out_of_gas_634", label %"$have_gas_635"

"$out_of_gas_634":                                ; preds = %"$have_gas_630"
  call void @_out_of_gas()
  br label %"$have_gas_635"

"$have_gas_635":                                  ; preds = %"$out_of_gas_634", %"$have_gas_630"
  %"$consume_636" = sub i64 %"$gasrem_632", 1
  store i64 %"$consume_636", i64* @_gasrem, align 8
  %add1 = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_637" = load i64, i64* @_gasrem, align 8
  %"$gascmp_638" = icmp ugt i64 1, %"$gasrem_637"
  br i1 %"$gascmp_638", label %"$out_of_gas_639", label %"$have_gas_640"

"$out_of_gas_639":                                ; preds = %"$have_gas_635"
  call void @_out_of_gas()
  br label %"$have_gas_640"

"$have_gas_640":                                  ; preds = %"$out_of_gas_639", %"$have_gas_635"
  %"$consume_641" = sub i64 %"$gasrem_637", 1
  store i64 %"$consume_641", i64* @_gasrem, align 8
  %"$$fundef_71_envp_642_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_71_envp_642_salloc" = call i8* @_salloc(i8* %"$$fundef_71_envp_642_load", i64 4)
  %"$$fundef_71_envp_642" = bitcast i8* %"$$fundef_71_envp_642_salloc" to %"$$fundef_71_env_106"*
  %"$$fundef_71_env_voidp_644" = bitcast %"$$fundef_71_env_106"* %"$$fundef_71_envp_642" to i8*
  %"$$fundef_71_cloval_645" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_71_env_106"*, %Uint32)* @"$fundef_71" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_71_env_voidp_644", 1
  %"$$fundef_71_env_one_646" = getelementptr inbounds %"$$fundef_71_env_106", %"$$fundef_71_env_106"* %"$$fundef_71_envp_642", i32 0, i32 0
  %"$one_647" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_647", %Uint32* %"$$fundef_71_env_one_646", align 4
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_71_cloval_645", { %Uint32 (i8*, %Uint32)*, i8* }* %add1, align 8, !dbg !12
  %"$gasrem_648" = load i64, i64* @_gasrem, align 8
  %"$gascmp_649" = icmp ugt i64 1, %"$gasrem_648"
  br i1 %"$gascmp_649", label %"$out_of_gas_650", label %"$have_gas_651"

"$out_of_gas_650":                                ; preds = %"$have_gas_640"
  call void @_out_of_gas()
  br label %"$have_gas_651"

"$have_gas_651":                                  ; preds = %"$out_of_gas_650", %"$have_gas_640"
  %"$consume_652" = sub i64 %"$gasrem_648", 1
  store i64 %"$consume_652", i64* @_gasrem, align 8
  %c32 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_653" = load i64, i64* @_gasrem, align 8
  %"$gascmp_654" = icmp ugt i64 1, %"$gasrem_653"
  br i1 %"$gascmp_654", label %"$out_of_gas_655", label %"$have_gas_656"

"$out_of_gas_655":                                ; preds = %"$have_gas_651"
  call void @_out_of_gas()
  br label %"$have_gas_656"

"$have_gas_656":                                  ; preds = %"$out_of_gas_655", %"$have_gas_651"
  %"$consume_657" = sub i64 %"$gasrem_653", 1
  store i64 %"$consume_657", i64* @_gasrem, align 8
  %"$c_658" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 0
  %"$c_659" = bitcast { i8*, i8* }* %"$c_658" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$c_660" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$c_659", align 8
  %"$c_fptr_661" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$c_660", 0
  %"$c_envptr_662" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$c_660", 1
  %"$c_call_663" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c_fptr_661"(i8* %"$c_envptr_662"), !dbg !13
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c_call_663", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c32, align 8, !dbg !14
  %"$gasrem_664" = load i64, i64* @_gasrem, align 8
  %"$gascmp_665" = icmp ugt i64 1, %"$gasrem_664"
  br i1 %"$gascmp_665", label %"$out_of_gas_666", label %"$have_gas_667"

"$out_of_gas_666":                                ; preds = %"$have_gas_656"
  call void @_out_of_gas()
  br label %"$have_gas_667"

"$have_gas_667":                                  ; preds = %"$out_of_gas_666", %"$have_gas_656"
  %"$consume_668" = sub i64 %"$gasrem_664", 1
  store i64 %"$consume_668", i64* @_gasrem, align 8
  %"$c32_9" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$c32_669" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c32, align 8
  %"$c32_fptr_670" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c32_669", 0
  %"$c32_envptr_671" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c32_669", 1
  %"$add1_672" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %add1, align 8
  %"$c32_call_673" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_fptr_670"(i8* %"$c32_envptr_671", { %Uint32 (i8*, %Uint32)*, i8* } %"$add1_672"), !dbg !15
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_call_673", { %Uint32 (i8*, %Uint32)*, i8* }* %"$c32_9", align 8, !dbg !15
  %"$c32_10" = alloca %Uint32, align 8
  %"$$c32_9_674" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$c32_9", align 8
  %"$$c32_9_fptr_675" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$c32_9_674", 0
  %"$$c32_9_envptr_676" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$c32_9_674", 1
  %"$zero_677" = load %Uint32, %Uint32* %zero, align 4
  %"$$c32_9_call_678" = call %Uint32 %"$$c32_9_fptr_675"(i8* %"$$c32_9_envptr_676", %Uint32 %"$zero_677"), !dbg !15
  store %Uint32 %"$$c32_9_call_678", %Uint32* %"$c32_10", align 4, !dbg !15
  %"$$c32_10_679" = load %Uint32, %Uint32* %"$c32_10", align 4
  store %Uint32 %"$$c32_10_679", %Uint32* %"$retval_70", align 4, !dbg !15
  %"$$retval_70_680" = load %Uint32, %Uint32* %"$retval_70", align 4
  ret %Uint32 %"$$retval_70_680"
}

define internal { i8*, i8* }* @"$fundef_67"(%"$$fundef_67_env_108"* %0, { i8*, i8* }* %1) !dbg !16 {
entry:
  %"$$fundef_67_env_c0_557" = getelementptr inbounds %"$$fundef_67_env_108", %"$$fundef_67_env_108"* %0, i32 0, i32 0
  %"$c0_envload_558" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_67_env_c0_557", align 8
  %c0 = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$c0_envload_558", { i8*, i8* }** %c0, align 8
  %"$$fundef_67_env_cadd_559" = getelementptr inbounds %"$$fundef_67_env_108", %"$$fundef_67_env_108"* %0, i32 0, i32 1
  %"$cadd_envload_560" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_67_env_cadd_559", align 8
  %cadd = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_envload_560", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$$fundef_67_env_m_561" = getelementptr inbounds %"$$fundef_67_env_108", %"$$fundef_67_env_108"* %0, i32 0, i32 2
  %"$m_envload_562" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_67_env_m_561", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_562", { i8*, i8* }** %m, align 8
  %"$retval_68" = alloca { i8*, i8* }*, align 8
  %"$gasrem_563" = load i64, i64* @_gasrem, align 8
  %"$gascmp_564" = icmp ugt i64 1, %"$gasrem_563"
  br i1 %"$gascmp_564", label %"$out_of_gas_565", label %"$have_gas_566"

"$out_of_gas_565":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_566"

"$have_gas_566":                                  ; preds = %"$out_of_gas_565", %entry
  %"$consume_567" = sub i64 %"$gasrem_563", 1
  store i64 %"$consume_567", i64* @_gasrem, align 8
  %cadd_m = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_568" = load i64, i64* @_gasrem, align 8
  %"$gascmp_569" = icmp ugt i64 1, %"$gasrem_568"
  br i1 %"$gascmp_569", label %"$out_of_gas_570", label %"$have_gas_571"

"$out_of_gas_570":                                ; preds = %"$have_gas_566"
  call void @_out_of_gas()
  br label %"$have_gas_571"

"$have_gas_571":                                  ; preds = %"$out_of_gas_570", %"$have_gas_566"
  %"$consume_572" = sub i64 %"$gasrem_568", 1
  store i64 %"$consume_572", i64* @_gasrem, align 8
  %"$cadd_6" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cadd_573" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$cadd_fptr_574" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_573", 0
  %"$cadd_envptr_575" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_573", 1
  %"$m_576" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  %"$cadd_call_577" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_fptr_574"(i8* %"$cadd_envptr_575", { i8*, i8* }* %"$m_576"), !dbg !17
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_call_577", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_6", align 8, !dbg !17
  %"$$cadd_6_578" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_6", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_6_578", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %cadd_m, align 8, !dbg !17
  %"$gasrem_579" = load i64, i64* @_gasrem, align 8
  %"$gascmp_580" = icmp ugt i64 1, %"$gasrem_579"
  br i1 %"$gascmp_580", label %"$out_of_gas_581", label %"$have_gas_582"

"$out_of_gas_581":                                ; preds = %"$have_gas_571"
  call void @_out_of_gas()
  br label %"$have_gas_582"

"$have_gas_582":                                  ; preds = %"$out_of_gas_581", %"$have_gas_571"
  %"$consume_583" = sub i64 %"$gasrem_579", 1
  store i64 %"$consume_583", i64* @_gasrem, align 8
  %nI = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_584" = load i64, i64* @_gasrem, align 8
  %"$gascmp_585" = icmp ugt i64 1, %"$gasrem_584"
  br i1 %"$gascmp_585", label %"$out_of_gas_586", label %"$have_gas_587"

"$out_of_gas_586":                                ; preds = %"$have_gas_582"
  call void @_out_of_gas()
  br label %"$have_gas_587"

"$have_gas_587":                                  ; preds = %"$out_of_gas_586", %"$have_gas_582"
  %"$consume_588" = sub i64 %"$gasrem_584", 1
  store i64 %"$consume_588", i64* @_gasrem, align 8
  %"$n_589" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 1
  %"$n_590" = bitcast { i8*, i8* }* %"$n_589" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$n_591" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$n_590", align 8
  %"$n_fptr_592" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_591", 0
  %"$n_envptr_593" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_591", 1
  %"$n_call_594" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_fptr_592"(i8* %"$n_envptr_593"), !dbg !18
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_call_594", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nI, align 8, !dbg !19
  %"$gasrem_595" = load i64, i64* @_gasrem, align 8
  %"$gascmp_596" = icmp ugt i64 1, %"$gasrem_595"
  br i1 %"$gascmp_596", label %"$out_of_gas_597", label %"$have_gas_598"

"$out_of_gas_597":                                ; preds = %"$have_gas_587"
  call void @_out_of_gas()
  br label %"$have_gas_598"

"$have_gas_598":                                  ; preds = %"$out_of_gas_597", %"$have_gas_587"
  %"$consume_599" = sub i64 %"$gasrem_595", 1
  store i64 %"$consume_599", i64* @_gasrem, align 8
  %"$nI_7" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$nI_600" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nI, align 8
  %"$nI_fptr_601" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nI_600", 0
  %"$nI_envptr_602" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nI_600", 1
  %"$cadd_m_603" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %cadd_m, align 8
  %"$nI_call_604" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nI_fptr_601"(i8* %"$nI_envptr_602", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_m_603"), !dbg !20
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nI_call_604", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nI_7", align 8, !dbg !20
  %"$nI_8" = alloca { i8*, i8* }*, align 8
  %"$$nI_7_605" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nI_7", align 8
  %"$$nI_7_fptr_606" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nI_7_605", 0
  %"$$nI_7_envptr_607" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nI_7_605", 1
  %"$c0_608" = load { i8*, i8* }*, { i8*, i8* }** %c0, align 8
  %"$$nI_7_call_609" = call { i8*, i8* }* %"$$nI_7_fptr_606"(i8* %"$$nI_7_envptr_607", { i8*, i8* }* %"$c0_608"), !dbg !20
  store { i8*, i8* }* %"$$nI_7_call_609", { i8*, i8* }** %"$nI_8", align 8, !dbg !20
  %"$$nI_8_610" = load { i8*, i8* }*, { i8*, i8* }** %"$nI_8", align 8
  store { i8*, i8* }* %"$$nI_8_610", { i8*, i8* }** %"$retval_68", align 8, !dbg !20
  %"$$retval_68_611" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_68", align 8
  ret { i8*, i8* }* %"$$retval_68_611"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_65"(%"$$fundef_65_env_109"* %0, { i8*, i8* }* %1) !dbg !21 {
entry:
  %"$$fundef_65_env_c0_538" = getelementptr inbounds %"$$fundef_65_env_109", %"$$fundef_65_env_109"* %0, i32 0, i32 0
  %"$c0_envload_539" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_65_env_c0_538", align 8
  %c0 = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$c0_envload_539", { i8*, i8* }** %c0, align 8
  %"$$fundef_65_env_cadd_540" = getelementptr inbounds %"$$fundef_65_env_109", %"$$fundef_65_env_109"* %0, i32 0, i32 1
  %"$cadd_envload_541" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_65_env_cadd_540", align 8
  %cadd = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_envload_541", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$retval_66" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_542" = load i64, i64* @_gasrem, align 8
  %"$gascmp_543" = icmp ugt i64 1, %"$gasrem_542"
  br i1 %"$gascmp_543", label %"$out_of_gas_544", label %"$have_gas_545"

"$out_of_gas_544":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_545"

"$have_gas_545":                                  ; preds = %"$out_of_gas_544", %entry
  %"$consume_546" = sub i64 %"$gasrem_542", 1
  store i64 %"$consume_546", i64* @_gasrem, align 8
  %"$$fundef_67_envp_547_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_67_envp_547_salloc" = call i8* @_salloc(i8* %"$$fundef_67_envp_547_load", i64 32)
  %"$$fundef_67_envp_547" = bitcast i8* %"$$fundef_67_envp_547_salloc" to %"$$fundef_67_env_108"*
  %"$$fundef_67_env_voidp_549" = bitcast %"$$fundef_67_env_108"* %"$$fundef_67_envp_547" to i8*
  %"$$fundef_67_cloval_550" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_67_env_108"*, { i8*, i8* }*)* @"$fundef_67" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_67_env_voidp_549", 1
  %"$$fundef_67_env_c0_551" = getelementptr inbounds %"$$fundef_67_env_108", %"$$fundef_67_env_108"* %"$$fundef_67_envp_547", i32 0, i32 0
  %"$c0_552" = load { i8*, i8* }*, { i8*, i8* }** %c0, align 8
  store { i8*, i8* }* %"$c0_552", { i8*, i8* }** %"$$fundef_67_env_c0_551", align 8
  %"$$fundef_67_env_cadd_553" = getelementptr inbounds %"$$fundef_67_env_108", %"$$fundef_67_env_108"* %"$$fundef_67_envp_547", i32 0, i32 1
  %"$cadd_554" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_554", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_67_env_cadd_553", align 8
  %"$$fundef_67_env_m_555" = getelementptr inbounds %"$$fundef_67_env_108", %"$$fundef_67_env_108"* %"$$fundef_67_envp_547", i32 0, i32 2
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_67_env_m_555", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_67_cloval_550", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_66", align 8, !dbg !22
  %"$$retval_66_556" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_66", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_66_556"
}

define internal { i8*, i8* }* @"$fundef_63"(%"$$fundef_63_env_110"* %0, { i8*, i8* }* %1) !dbg !23 {
entry:
  %"$$fundef_63_env_m_461" = getelementptr inbounds %"$$fundef_63_env_110", %"$$fundef_63_env_110"* %0, i32 0, i32 0
  %"$m_envload_462" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_63_env_m_461", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_462", { i8*, i8* }** %m, align 8
  %"$$fundef_63_env_n_463" = getelementptr inbounds %"$$fundef_63_env_110", %"$$fundef_63_env_110"* %0, i32 0, i32 1
  %"$n_envload_464" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_63_env_n_463", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_464", { i8*, i8* }** %n, align 8
  %"$$fundef_63_env_s_465" = getelementptr inbounds %"$$fundef_63_env_110", %"$$fundef_63_env_110"* %0, i32 0, i32 2
  %"$s_envload_466" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_63_env_s_465", align 8
  %s = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_envload_466", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$retval_64" = alloca { i8*, i8* }*, align 8
  %"$gasrem_467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_468" = icmp ugt i64 1, %"$gasrem_467"
  br i1 %"$gascmp_468", label %"$out_of_gas_469", label %"$have_gas_470"

"$out_of_gas_469":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_470"

"$have_gas_470":                                  ; preds = %"$out_of_gas_469", %entry
  %"$consume_471" = sub i64 %"$gasrem_467", 1
  store i64 %"$consume_471", i64* @_gasrem, align 8
  %mX = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_473" = icmp ugt i64 1, %"$gasrem_472"
  br i1 %"$gascmp_473", label %"$out_of_gas_474", label %"$have_gas_475"

"$out_of_gas_474":                                ; preds = %"$have_gas_470"
  call void @_out_of_gas()
  br label %"$have_gas_475"

"$have_gas_475":                                  ; preds = %"$out_of_gas_474", %"$have_gas_470"
  %"$consume_476" = sub i64 %"$gasrem_472", 1
  store i64 %"$consume_476", i64* @_gasrem, align 8
  %"$m_477" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  %"$m_478" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$m_477", i32 1
  %"$m_479" = bitcast { i8*, i8* }* %"$m_478" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$m_480" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$m_479", align 8
  %"$m_fptr_481" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$m_480", 0
  %"$m_envptr_482" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$m_480", 1
  %"$m_call_483" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$m_fptr_481"(i8* %"$m_envptr_482"), !dbg !24
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$m_call_483", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %mX, align 8, !dbg !25
  %"$gasrem_484" = load i64, i64* @_gasrem, align 8
  %"$gascmp_485" = icmp ugt i64 1, %"$gasrem_484"
  br i1 %"$gascmp_485", label %"$out_of_gas_486", label %"$have_gas_487"

"$out_of_gas_486":                                ; preds = %"$have_gas_475"
  call void @_out_of_gas()
  br label %"$have_gas_487"

"$have_gas_487":                                  ; preds = %"$out_of_gas_486", %"$have_gas_475"
  %"$consume_488" = sub i64 %"$gasrem_484", 1
  store i64 %"$consume_488", i64* @_gasrem, align 8
  %nX = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_490" = icmp ugt i64 1, %"$gasrem_489"
  br i1 %"$gascmp_490", label %"$out_of_gas_491", label %"$have_gas_492"

"$out_of_gas_491":                                ; preds = %"$have_gas_487"
  call void @_out_of_gas()
  br label %"$have_gas_492"

"$have_gas_492":                                  ; preds = %"$out_of_gas_491", %"$have_gas_487"
  %"$consume_493" = sub i64 %"$gasrem_489", 1
  store i64 %"$consume_493", i64* @_gasrem, align 8
  %"$n_494" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  %"$n_495" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$n_494", i32 1
  %"$n_496" = bitcast { i8*, i8* }* %"$n_495" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$n_497" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$n_496", align 8
  %"$n_fptr_498" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_497", 0
  %"$n_envptr_499" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_497", 1
  %"$n_call_500" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_fptr_498"(i8* %"$n_envptr_499"), !dbg !26
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_call_500", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nX, align 8, !dbg !27
  %"$gasrem_501" = load i64, i64* @_gasrem, align 8
  %"$gascmp_502" = icmp ugt i64 1, %"$gasrem_501"
  br i1 %"$gascmp_502", label %"$out_of_gas_503", label %"$have_gas_504"

"$out_of_gas_503":                                ; preds = %"$have_gas_492"
  call void @_out_of_gas()
  br label %"$have_gas_504"

"$have_gas_504":                                  ; preds = %"$out_of_gas_503", %"$have_gas_492"
  %"$consume_505" = sub i64 %"$gasrem_501", 1
  store i64 %"$consume_505", i64* @_gasrem, align 8
  %nXsz = alloca { i8*, i8* }*, align 8
  %"$gasrem_506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_507" = icmp ugt i64 1, %"$gasrem_506"
  br i1 %"$gascmp_507", label %"$out_of_gas_508", label %"$have_gas_509"

"$out_of_gas_508":                                ; preds = %"$have_gas_504"
  call void @_out_of_gas()
  br label %"$have_gas_509"

"$have_gas_509":                                  ; preds = %"$out_of_gas_508", %"$have_gas_504"
  %"$consume_510" = sub i64 %"$gasrem_506", 1
  store i64 %"$consume_510", i64* @_gasrem, align 8
  %"$nX_2" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$nX_511" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nX, align 8
  %"$nX_fptr_512" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nX_511", 0
  %"$nX_envptr_513" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nX_511", 1
  %"$s_514" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$nX_call_515" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nX_fptr_512"(i8* %"$nX_envptr_513", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_514"), !dbg !28
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nX_call_515", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nX_2", align 8, !dbg !28
  %"$nX_3" = alloca { i8*, i8* }*, align 8
  %"$$nX_2_516" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nX_2", align 8
  %"$$nX_2_fptr_517" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nX_2_516", 0
  %"$$nX_2_envptr_518" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nX_2_516", 1
  %"$$nX_2_call_519" = call { i8*, i8* }* %"$$nX_2_fptr_517"(i8* %"$$nX_2_envptr_518", { i8*, i8* }* %1), !dbg !28
  store { i8*, i8* }* %"$$nX_2_call_519", { i8*, i8* }** %"$nX_3", align 8, !dbg !28
  %"$$nX_3_520" = load { i8*, i8* }*, { i8*, i8* }** %"$nX_3", align 8
  store { i8*, i8* }* %"$$nX_3_520", { i8*, i8* }** %nXsz, align 8, !dbg !28
  %"$gasrem_521" = load i64, i64* @_gasrem, align 8
  %"$gascmp_522" = icmp ugt i64 1, %"$gasrem_521"
  br i1 %"$gascmp_522", label %"$out_of_gas_523", label %"$have_gas_524"

"$out_of_gas_523":                                ; preds = %"$have_gas_509"
  call void @_out_of_gas()
  br label %"$have_gas_524"

"$have_gas_524":                                  ; preds = %"$out_of_gas_523", %"$have_gas_509"
  %"$consume_525" = sub i64 %"$gasrem_521", 1
  store i64 %"$consume_525", i64* @_gasrem, align 8
  %"$mX_4" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$mX_526" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %mX, align 8
  %"$mX_fptr_527" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$mX_526", 0
  %"$mX_envptr_528" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$mX_526", 1
  %"$s_529" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$mX_call_530" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$mX_fptr_527"(i8* %"$mX_envptr_528", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_529"), !dbg !29
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$mX_call_530", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$mX_4", align 8, !dbg !29
  %"$mX_5" = alloca { i8*, i8* }*, align 8
  %"$$mX_4_531" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$mX_4", align 8
  %"$$mX_4_fptr_532" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$mX_4_531", 0
  %"$$mX_4_envptr_533" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$mX_4_531", 1
  %"$nXsz_534" = load { i8*, i8* }*, { i8*, i8* }** %nXsz, align 8
  %"$$mX_4_call_535" = call { i8*, i8* }* %"$$mX_4_fptr_532"(i8* %"$$mX_4_envptr_533", { i8*, i8* }* %"$nXsz_534"), !dbg !29
  store { i8*, i8* }* %"$$mX_4_call_535", { i8*, i8* }** %"$mX_5", align 8, !dbg !29
  %"$$mX_5_536" = load { i8*, i8* }*, { i8*, i8* }** %"$mX_5", align 8
  store { i8*, i8* }* %"$$mX_5_536", { i8*, i8* }** %"$retval_64", align 8, !dbg !29
  %"$$retval_64_537" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_64", align 8
  ret { i8*, i8* }* %"$$retval_64_537"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_61"(%"$$fundef_61_env_111"* %0, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1) !dbg !30 {
entry:
  %"$$fundef_61_env_m_442" = getelementptr inbounds %"$$fundef_61_env_111", %"$$fundef_61_env_111"* %0, i32 0, i32 0
  %"$m_envload_443" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_61_env_m_442", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_443", { i8*, i8* }** %m, align 8
  %"$$fundef_61_env_n_444" = getelementptr inbounds %"$$fundef_61_env_111", %"$$fundef_61_env_111"* %0, i32 0, i32 1
  %"$n_envload_445" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_61_env_n_444", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_445", { i8*, i8* }** %n, align 8
  %"$retval_62" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_446" = load i64, i64* @_gasrem, align 8
  %"$gascmp_447" = icmp ugt i64 1, %"$gasrem_446"
  br i1 %"$gascmp_447", label %"$out_of_gas_448", label %"$have_gas_449"

"$out_of_gas_448":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_449"

"$have_gas_449":                                  ; preds = %"$out_of_gas_448", %entry
  %"$consume_450" = sub i64 %"$gasrem_446", 1
  store i64 %"$consume_450", i64* @_gasrem, align 8
  %"$$fundef_63_envp_451_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_63_envp_451_salloc" = call i8* @_salloc(i8* %"$$fundef_63_envp_451_load", i64 32)
  %"$$fundef_63_envp_451" = bitcast i8* %"$$fundef_63_envp_451_salloc" to %"$$fundef_63_env_110"*
  %"$$fundef_63_env_voidp_453" = bitcast %"$$fundef_63_env_110"* %"$$fundef_63_envp_451" to i8*
  %"$$fundef_63_cloval_454" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_63_env_110"*, { i8*, i8* }*)* @"$fundef_63" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_63_env_voidp_453", 1
  %"$$fundef_63_env_m_455" = getelementptr inbounds %"$$fundef_63_env_110", %"$$fundef_63_env_110"* %"$$fundef_63_envp_451", i32 0, i32 0
  %"$m_456" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  store { i8*, i8* }* %"$m_456", { i8*, i8* }** %"$$fundef_63_env_m_455", align 8
  %"$$fundef_63_env_n_457" = getelementptr inbounds %"$$fundef_63_env_110", %"$$fundef_63_env_110"* %"$$fundef_63_envp_451", i32 0, i32 1
  %"$n_458" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  store { i8*, i8* }* %"$n_458", { i8*, i8* }** %"$$fundef_63_env_n_457", align 8
  %"$$fundef_63_env_s_459" = getelementptr inbounds %"$$fundef_63_env_110", %"$$fundef_63_env_110"* %"$$fundef_63_envp_451", i32 0, i32 2
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_63_env_s_459", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_63_cloval_454", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_62", align 8, !dbg !31
  %"$$retval_62_460" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_62", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_62_460"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } @"$fundef_59"(%"$$fundef_59_env_112"* %0) !dbg !32 {
entry:
  %"$$fundef_59_env_m_424" = getelementptr inbounds %"$$fundef_59_env_112", %"$$fundef_59_env_112"* %0, i32 0, i32 0
  %"$m_envload_425" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_59_env_m_424", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_425", { i8*, i8* }** %m, align 8
  %"$$fundef_59_env_n_426" = getelementptr inbounds %"$$fundef_59_env_112", %"$$fundef_59_env_112"* %0, i32 0, i32 1
  %"$n_envload_427" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_59_env_n_426", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_427", { i8*, i8* }** %n, align 8
  %"$retval_60" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_429" = icmp ugt i64 1, %"$gasrem_428"
  br i1 %"$gascmp_429", label %"$out_of_gas_430", label %"$have_gas_431"

"$out_of_gas_430":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_431"

"$have_gas_431":                                  ; preds = %"$out_of_gas_430", %entry
  %"$consume_432" = sub i64 %"$gasrem_428", 1
  store i64 %"$consume_432", i64* @_gasrem, align 8
  %"$$fundef_61_envp_433_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_61_envp_433_salloc" = call i8* @_salloc(i8* %"$$fundef_61_envp_433_load", i64 16)
  %"$$fundef_61_envp_433" = bitcast i8* %"$$fundef_61_envp_433_salloc" to %"$$fundef_61_env_111"*
  %"$$fundef_61_env_voidp_435" = bitcast %"$$fundef_61_env_111"* %"$$fundef_61_envp_433" to i8*
  %"$$fundef_61_cloval_436" = insertvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_61_env_111"*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* @"$fundef_61" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*), i8* undef }, i8* %"$$fundef_61_env_voidp_435", 1
  %"$$fundef_61_env_m_437" = getelementptr inbounds %"$$fundef_61_env_111", %"$$fundef_61_env_111"* %"$$fundef_61_envp_433", i32 0, i32 0
  %"$m_438" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  store { i8*, i8* }* %"$m_438", { i8*, i8* }** %"$$fundef_61_env_m_437", align 8
  %"$$fundef_61_env_n_439" = getelementptr inbounds %"$$fundef_61_env_111", %"$$fundef_61_env_111"* %"$$fundef_61_envp_433", i32 0, i32 1
  %"$n_440" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  store { i8*, i8* }* %"$n_440", { i8*, i8* }** %"$$fundef_61_env_n_439", align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$fundef_61_cloval_436", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_60", align 8, !dbg !33
  %"$$retval_60_441" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_60", align 8
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$retval_60_441"
}

define internal %Uint32 @"$fundef_57"(%"$$fundef_57_env_113"* %0, %Uint32 %1) !dbg !34 {
entry:
  %"$$fundef_57_env_m_347" = getelementptr inbounds %"$$fundef_57_env_113", %"$$fundef_57_env_113"* %0, i32 0, i32 0
  %"$m_envload_348" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_57_env_m_347", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_348", { i8*, i8* }** %m, align 8
  %"$$fundef_57_env_n_349" = getelementptr inbounds %"$$fundef_57_env_113", %"$$fundef_57_env_113"* %0, i32 0, i32 1
  %"$n_envload_350" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_57_env_n_349", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_350", { i8*, i8* }** %n, align 8
  %"$$fundef_57_env_s_351" = getelementptr inbounds %"$$fundef_57_env_113", %"$$fundef_57_env_113"* %0, i32 0, i32 2
  %"$s_envload_352" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_57_env_s_351", align 8
  %s = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_envload_352", { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$retval_58" = alloca %Uint32, align 8
  %"$gasrem_353" = load i64, i64* @_gasrem, align 8
  %"$gascmp_354" = icmp ugt i64 1, %"$gasrem_353"
  br i1 %"$gascmp_354", label %"$out_of_gas_355", label %"$have_gas_356"

"$out_of_gas_355":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_356"

"$have_gas_356":                                  ; preds = %"$out_of_gas_355", %entry
  %"$consume_357" = sub i64 %"$gasrem_353", 1
  store i64 %"$consume_357", i64* @_gasrem, align 8
  %mX = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_358" = load i64, i64* @_gasrem, align 8
  %"$gascmp_359" = icmp ugt i64 1, %"$gasrem_358"
  br i1 %"$gascmp_359", label %"$out_of_gas_360", label %"$have_gas_361"

"$out_of_gas_360":                                ; preds = %"$have_gas_356"
  call void @_out_of_gas()
  br label %"$have_gas_361"

"$have_gas_361":                                  ; preds = %"$out_of_gas_360", %"$have_gas_356"
  %"$consume_362" = sub i64 %"$gasrem_358", 1
  store i64 %"$consume_362", i64* @_gasrem, align 8
  %"$m_363" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  %"$m_364" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$m_363", i32 0
  %"$m_365" = bitcast { i8*, i8* }* %"$m_364" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$m_366" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$m_365", align 8
  %"$m_fptr_367" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$m_366", 0
  %"$m_envptr_368" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$m_366", 1
  %"$m_call_369" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_fptr_367"(i8* %"$m_envptr_368"), !dbg !35
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_call_369", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %mX, align 8, !dbg !36
  %"$gasrem_370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_371" = icmp ugt i64 1, %"$gasrem_370"
  br i1 %"$gascmp_371", label %"$out_of_gas_372", label %"$have_gas_373"

"$out_of_gas_372":                                ; preds = %"$have_gas_361"
  call void @_out_of_gas()
  br label %"$have_gas_373"

"$have_gas_373":                                  ; preds = %"$out_of_gas_372", %"$have_gas_361"
  %"$consume_374" = sub i64 %"$gasrem_370", 1
  store i64 %"$consume_374", i64* @_gasrem, align 8
  %nX = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_376" = icmp ugt i64 1, %"$gasrem_375"
  br i1 %"$gascmp_376", label %"$out_of_gas_377", label %"$have_gas_378"

"$out_of_gas_377":                                ; preds = %"$have_gas_373"
  call void @_out_of_gas()
  br label %"$have_gas_378"

"$have_gas_378":                                  ; preds = %"$out_of_gas_377", %"$have_gas_373"
  %"$consume_379" = sub i64 %"$gasrem_375", 1
  store i64 %"$consume_379", i64* @_gasrem, align 8
  %"$n_380" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  %"$n_381" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$n_380", i32 0
  %"$n_382" = bitcast { i8*, i8* }* %"$n_381" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$n_383" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$n_382", align 8
  %"$n_fptr_384" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$n_383", 0
  %"$n_envptr_385" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$n_383", 1
  %"$n_call_386" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_fptr_384"(i8* %"$n_envptr_385"), !dbg !37
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_call_386", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %nX, align 8, !dbg !38
  %"$gasrem_387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_388" = icmp ugt i64 1, %"$gasrem_387"
  br i1 %"$gascmp_388", label %"$out_of_gas_389", label %"$have_gas_390"

"$out_of_gas_389":                                ; preds = %"$have_gas_378"
  call void @_out_of_gas()
  br label %"$have_gas_390"

"$have_gas_390":                                  ; preds = %"$out_of_gas_389", %"$have_gas_378"
  %"$consume_391" = sub i64 %"$gasrem_387", 1
  store i64 %"$consume_391", i64* @_gasrem, align 8
  %nXsz = alloca %Uint32, align 8
  %"$gasrem_392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_393" = icmp ugt i64 1, %"$gasrem_392"
  br i1 %"$gascmp_393", label %"$out_of_gas_394", label %"$have_gas_395"

"$out_of_gas_394":                                ; preds = %"$have_gas_390"
  call void @_out_of_gas()
  br label %"$have_gas_395"

"$have_gas_395":                                  ; preds = %"$out_of_gas_394", %"$have_gas_390"
  %"$consume_396" = sub i64 %"$gasrem_392", 1
  store i64 %"$consume_396", i64* @_gasrem, align 8
  %"$nX_2" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$nX_397" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %nX, align 8
  %"$nX_fptr_398" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$nX_397", 0
  %"$nX_envptr_399" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$nX_397", 1
  %"$s_400" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$nX_call_401" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_fptr_398"(i8* %"$nX_envptr_399", { %Uint32 (i8*, %Uint32)*, i8* } %"$s_400"), !dbg !39
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_call_401", { %Uint32 (i8*, %Uint32)*, i8* }* %"$nX_2", align 8, !dbg !39
  %"$nX_3" = alloca %Uint32, align 8
  %"$$nX_2_402" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$nX_2", align 8
  %"$$nX_2_fptr_403" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$nX_2_402", 0
  %"$$nX_2_envptr_404" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$nX_2_402", 1
  %"$$nX_2_call_405" = call %Uint32 %"$$nX_2_fptr_403"(i8* %"$$nX_2_envptr_404", %Uint32 %1), !dbg !39
  store %Uint32 %"$$nX_2_call_405", %Uint32* %"$nX_3", align 4, !dbg !39
  %"$$nX_3_406" = load %Uint32, %Uint32* %"$nX_3", align 4
  store %Uint32 %"$$nX_3_406", %Uint32* %nXsz, align 4, !dbg !39
  %"$gasrem_407" = load i64, i64* @_gasrem, align 8
  %"$gascmp_408" = icmp ugt i64 1, %"$gasrem_407"
  br i1 %"$gascmp_408", label %"$out_of_gas_409", label %"$have_gas_410"

"$out_of_gas_409":                                ; preds = %"$have_gas_395"
  call void @_out_of_gas()
  br label %"$have_gas_410"

"$have_gas_410":                                  ; preds = %"$out_of_gas_409", %"$have_gas_395"
  %"$consume_411" = sub i64 %"$gasrem_407", 1
  store i64 %"$consume_411", i64* @_gasrem, align 8
  %"$mX_4" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$mX_412" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %mX, align 8
  %"$mX_fptr_413" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$mX_412", 0
  %"$mX_envptr_414" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$mX_412", 1
  %"$s_415" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$mX_call_416" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$mX_fptr_413"(i8* %"$mX_envptr_414", { %Uint32 (i8*, %Uint32)*, i8* } %"$s_415"), !dbg !40
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$mX_call_416", { %Uint32 (i8*, %Uint32)*, i8* }* %"$mX_4", align 8, !dbg !40
  %"$mX_5" = alloca %Uint32, align 8
  %"$$mX_4_417" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$mX_4", align 8
  %"$$mX_4_fptr_418" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$mX_4_417", 0
  %"$$mX_4_envptr_419" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$mX_4_417", 1
  %"$nXsz_420" = load %Uint32, %Uint32* %nXsz, align 4
  %"$$mX_4_call_421" = call %Uint32 %"$$mX_4_fptr_418"(i8* %"$$mX_4_envptr_419", %Uint32 %"$nXsz_420"), !dbg !40
  store %Uint32 %"$$mX_4_call_421", %Uint32* %"$mX_5", align 4, !dbg !40
  %"$$mX_5_422" = load %Uint32, %Uint32* %"$mX_5", align 4
  store %Uint32 %"$$mX_5_422", %Uint32* %"$retval_58", align 4, !dbg !40
  %"$$retval_58_423" = load %Uint32, %Uint32* %"$retval_58", align 4
  ret %Uint32 %"$$retval_58_423"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_55"(%"$$fundef_55_env_114"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) !dbg !41 {
entry:
  %"$$fundef_55_env_m_328" = getelementptr inbounds %"$$fundef_55_env_114", %"$$fundef_55_env_114"* %0, i32 0, i32 0
  %"$m_envload_329" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_55_env_m_328", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_329", { i8*, i8* }** %m, align 8
  %"$$fundef_55_env_n_330" = getelementptr inbounds %"$$fundef_55_env_114", %"$$fundef_55_env_114"* %0, i32 0, i32 1
  %"$n_envload_331" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_55_env_n_330", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_331", { i8*, i8* }** %n, align 8
  %"$retval_56" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_333" = icmp ugt i64 1, %"$gasrem_332"
  br i1 %"$gascmp_333", label %"$out_of_gas_334", label %"$have_gas_335"

"$out_of_gas_334":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_335"

"$have_gas_335":                                  ; preds = %"$out_of_gas_334", %entry
  %"$consume_336" = sub i64 %"$gasrem_332", 1
  store i64 %"$consume_336", i64* @_gasrem, align 8
  %"$$fundef_57_envp_337_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_57_envp_337_salloc" = call i8* @_salloc(i8* %"$$fundef_57_envp_337_load", i64 32)
  %"$$fundef_57_envp_337" = bitcast i8* %"$$fundef_57_envp_337_salloc" to %"$$fundef_57_env_113"*
  %"$$fundef_57_env_voidp_339" = bitcast %"$$fundef_57_env_113"* %"$$fundef_57_envp_337" to i8*
  %"$$fundef_57_cloval_340" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_57_env_113"*, %Uint32)* @"$fundef_57" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_57_env_voidp_339", 1
  %"$$fundef_57_env_m_341" = getelementptr inbounds %"$$fundef_57_env_113", %"$$fundef_57_env_113"* %"$$fundef_57_envp_337", i32 0, i32 0
  %"$m_342" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  store { i8*, i8* }* %"$m_342", { i8*, i8* }** %"$$fundef_57_env_m_341", align 8
  %"$$fundef_57_env_n_343" = getelementptr inbounds %"$$fundef_57_env_113", %"$$fundef_57_env_113"* %"$$fundef_57_envp_337", i32 0, i32 1
  %"$n_344" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  store { i8*, i8* }* %"$n_344", { i8*, i8* }** %"$$fundef_57_env_n_343", align 8
  %"$$fundef_57_env_s_345" = getelementptr inbounds %"$$fundef_57_env_113", %"$$fundef_57_env_113"* %"$$fundef_57_envp_337", i32 0, i32 2
  store { %Uint32 (i8*, %Uint32)*, i8* } %1, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_57_env_s_345", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_57_cloval_340", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_56", align 8, !dbg !42
  %"$$retval_56_346" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_56", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_56_346"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_53"(%"$$fundef_53_env_115"* %0) !dbg !43 {
entry:
  %"$$fundef_53_env_m_310" = getelementptr inbounds %"$$fundef_53_env_115", %"$$fundef_53_env_115"* %0, i32 0, i32 0
  %"$m_envload_311" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_53_env_m_310", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_311", { i8*, i8* }** %m, align 8
  %"$$fundef_53_env_n_312" = getelementptr inbounds %"$$fundef_53_env_115", %"$$fundef_53_env_115"* %0, i32 0, i32 1
  %"$n_envload_313" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_53_env_n_312", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_313", { i8*, i8* }** %n, align 8
  %"$retval_54" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_315" = icmp ugt i64 1, %"$gasrem_314"
  br i1 %"$gascmp_315", label %"$out_of_gas_316", label %"$have_gas_317"

"$out_of_gas_316":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_317"

"$have_gas_317":                                  ; preds = %"$out_of_gas_316", %entry
  %"$consume_318" = sub i64 %"$gasrem_314", 1
  store i64 %"$consume_318", i64* @_gasrem, align 8
  %"$$fundef_55_envp_319_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_55_envp_319_salloc" = call i8* @_salloc(i8* %"$$fundef_55_envp_319_load", i64 16)
  %"$$fundef_55_envp_319" = bitcast i8* %"$$fundef_55_envp_319_salloc" to %"$$fundef_55_env_114"*
  %"$$fundef_55_env_voidp_321" = bitcast %"$$fundef_55_env_114"* %"$$fundef_55_envp_319" to i8*
  %"$$fundef_55_cloval_322" = insertvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_55_env_114"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_55" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* undef }, i8* %"$$fundef_55_env_voidp_321", 1
  %"$$fundef_55_env_m_323" = getelementptr inbounds %"$$fundef_55_env_114", %"$$fundef_55_env_114"* %"$$fundef_55_envp_319", i32 0, i32 0
  %"$m_324" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  store { i8*, i8* }* %"$m_324", { i8*, i8* }** %"$$fundef_55_env_m_323", align 8
  %"$$fundef_55_env_n_325" = getelementptr inbounds %"$$fundef_55_env_114", %"$$fundef_55_env_114"* %"$$fundef_55_envp_319", i32 0, i32 1
  %"$n_326" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  store { i8*, i8* }* %"$n_326", { i8*, i8* }** %"$$fundef_55_env_n_325", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$fundef_55_cloval_322", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_54", align 8, !dbg !44
  %"$$retval_54_327" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_54", align 8
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_54_327"
}

define internal { i8*, i8* }* @"$fundef_51"(%"$$fundef_51_env_116"* %0, { i8*, i8* }* %1) !dbg !45 {
entry:
  %"$$fundef_51_env_m_287" = getelementptr inbounds %"$$fundef_51_env_116", %"$$fundef_51_env_116"* %0, i32 0, i32 0
  %"$m_envload_288" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_51_env_m_287", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_288", { i8*, i8* }** %m, align 8
  %"$retval_52" = alloca { i8*, i8* }*, align 8
  %"$gasrem_289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_290" = icmp ugt i64 1, %"$gasrem_289"
  br i1 %"$gascmp_290", label %"$out_of_gas_291", label %"$have_gas_292"

"$out_of_gas_291":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_292"

"$have_gas_292":                                  ; preds = %"$out_of_gas_291", %entry
  %"$consume_293" = sub i64 %"$gasrem_289", 1
  store i64 %"$consume_293", i64* @_gasrem, align 8
  %"$$fundef_53_envp_294_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_53_envp_294_salloc" = call i8* @_salloc(i8* %"$$fundef_53_envp_294_load", i64 16)
  %"$$fundef_53_envp_294" = bitcast i8* %"$$fundef_53_envp_294_salloc" to %"$$fundef_53_env_115"*
  %"$$fundef_53_env_voidp_296" = bitcast %"$$fundef_53_env_115"* %"$$fundef_53_envp_294" to i8*
  %"$$fundef_53_cloval_297" = insertvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_53_env_115"*)* @"$fundef_53" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_53_env_voidp_296", 1
  %"$$fundef_53_env_m_298" = getelementptr inbounds %"$$fundef_53_env_115", %"$$fundef_53_env_115"* %"$$fundef_53_envp_294", i32 0, i32 0
  %"$m_299" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  store { i8*, i8* }* %"$m_299", { i8*, i8* }** %"$$fundef_53_env_m_298", align 8
  %"$$fundef_53_env_n_300" = getelementptr inbounds %"$$fundef_53_env_115", %"$$fundef_53_env_115"* %"$$fundef_53_envp_294", i32 0, i32 1
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_53_env_n_300", align 8
  %"$$fundef_59_env_voidp_302" = bitcast %"$$fundef_53_env_115"* %"$$fundef_53_envp_294" to i8*
  %"$$fundef_59_cloval_303" = insertvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (%"$$fundef_59_env_112"*)* @"$fundef_59" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_59_env_voidp_302", 1
  %"$dyndisp_table_304_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_304_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_304_salloc_load", i64 32)
  %"$dyndisp_table_304_salloc" = bitcast i8* %"$dyndisp_table_304_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_304" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_304_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_305" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_304", i32 0
  %"$dyndisp_pcast_306" = bitcast { i8*, i8* }* %"$dyndisp_gep_305" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_53_cloval_297", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_306", align 8
  %"$dyndisp_gep_307" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_304", i32 1
  %"$dyndisp_pcast_308" = bitcast { i8*, i8* }* %"$dyndisp_gep_307" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_59_cloval_303", { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_308", align 8
  store { i8*, i8* }* %"$dyndisp_table_304", { i8*, i8* }** %"$retval_52", align 8, !dbg !46
  %"$$retval_52_309" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_52", align 8
  ret { i8*, i8* }* %"$$retval_52_309"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_49"(%"$$fundef_49_env_117"* %0, { i8*, i8* }* %1) !dbg !47 {
entry:
  %"$retval_50" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_277" = icmp ugt i64 1, %"$gasrem_276"
  br i1 %"$gascmp_277", label %"$out_of_gas_278", label %"$have_gas_279"

"$out_of_gas_278":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_279"

"$have_gas_279":                                  ; preds = %"$out_of_gas_278", %entry
  %"$consume_280" = sub i64 %"$gasrem_276", 1
  store i64 %"$consume_280", i64* @_gasrem, align 8
  %"$$fundef_51_envp_281_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_51_envp_281_salloc" = call i8* @_salloc(i8* %"$$fundef_51_envp_281_load", i64 8)
  %"$$fundef_51_envp_281" = bitcast i8* %"$$fundef_51_envp_281_salloc" to %"$$fundef_51_env_116"*
  %"$$fundef_51_env_voidp_283" = bitcast %"$$fundef_51_env_116"* %"$$fundef_51_envp_281" to i8*
  %"$$fundef_51_cloval_284" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_51_env_116"*, { i8*, i8* }*)* @"$fundef_51" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_51_env_voidp_283", 1
  %"$$fundef_51_env_m_285" = getelementptr inbounds %"$$fundef_51_env_116", %"$$fundef_51_env_116"* %"$$fundef_51_envp_281", i32 0, i32 0
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_51_env_m_285", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_51_cloval_284", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_50", align 8, !dbg !48
  %"$$retval_50_286" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_50", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_50_286"
}

define internal { i8*, i8* }* @"$fundef_47"(%"$$fundef_47_env_118"* %0, { i8*, i8* }* %1) !dbg !49 {
entry:
  %"$$fundef_47_env_s_247" = getelementptr inbounds %"$$fundef_47_env_118", %"$$fundef_47_env_118"* %0, i32 0, i32 0
  %"$s_envload_248" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_47_env_s_247", align 8
  %s = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_envload_248", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$retval_48" = alloca { i8*, i8* }*, align 8
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 1, %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %entry
  %"$consume_253" = sub i64 %"$gasrem_249", 1
  store i64 %"$consume_253", i64* @_gasrem, align 8
  %sz = alloca { i8*, i8* }*, align 8
  %"$gasrem_254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_255" = icmp ugt i64 1, %"$gasrem_254"
  br i1 %"$gascmp_255", label %"$out_of_gas_256", label %"$have_gas_257"

"$out_of_gas_256":                                ; preds = %"$have_gas_252"
  call void @_out_of_gas()
  br label %"$have_gas_257"

"$have_gas_257":                                  ; preds = %"$out_of_gas_256", %"$have_gas_252"
  %"$consume_258" = sub i64 %"$gasrem_254", 1
  store i64 %"$consume_258", i64* @_gasrem, align 8
  %"$s_0" = alloca { i8*, i8* }*, align 8
  %"$s_259" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$s_fptr_260" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_259", 0
  %"$s_envptr_261" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_259", 1
  %"$s_call_262" = call { i8*, i8* }* %"$s_fptr_260"(i8* %"$s_envptr_261", { i8*, i8* }* %1), !dbg !50
  store { i8*, i8* }* %"$s_call_262", { i8*, i8* }** %"$s_0", align 8, !dbg !50
  %"$$s_0_263" = load { i8*, i8* }*, { i8*, i8* }** %"$s_0", align 8
  store { i8*, i8* }* %"$$s_0_263", { i8*, i8* }** %sz, align 8, !dbg !50
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 1, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %"$have_gas_257"
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %"$have_gas_257"
  %"$consume_268" = sub i64 %"$gasrem_264", 1
  store i64 %"$consume_268", i64* @_gasrem, align 8
  %"$s_1" = alloca { i8*, i8* }*, align 8
  %"$s_269" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$s_fptr_270" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_269", 0
  %"$s_envptr_271" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_269", 1
  %"$sz_272" = load { i8*, i8* }*, { i8*, i8* }** %sz, align 8
  %"$s_call_273" = call { i8*, i8* }* %"$s_fptr_270"(i8* %"$s_envptr_271", { i8*, i8* }* %"$sz_272"), !dbg !51
  store { i8*, i8* }* %"$s_call_273", { i8*, i8* }** %"$s_1", align 8, !dbg !51
  %"$$s_1_274" = load { i8*, i8* }*, { i8*, i8* }** %"$s_1", align 8
  store { i8*, i8* }* %"$$s_1_274", { i8*, i8* }** %"$retval_48", align 8, !dbg !51
  %"$$retval_48_275" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_48", align 8
  ret { i8*, i8* }* %"$$retval_48_275"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_45"(%"$$fundef_45_env_119"* %0, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1) !dbg !52 {
entry:
  %"$retval_46" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_237" = icmp ugt i64 1, %"$gasrem_236"
  br i1 %"$gascmp_237", label %"$out_of_gas_238", label %"$have_gas_239"

"$out_of_gas_238":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_239"

"$have_gas_239":                                  ; preds = %"$out_of_gas_238", %entry
  %"$consume_240" = sub i64 %"$gasrem_236", 1
  store i64 %"$consume_240", i64* @_gasrem, align 8
  %"$$fundef_47_envp_241_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_47_envp_241_salloc" = call i8* @_salloc(i8* %"$$fundef_47_envp_241_load", i64 16)
  %"$$fundef_47_envp_241" = bitcast i8* %"$$fundef_47_envp_241_salloc" to %"$$fundef_47_env_118"*
  %"$$fundef_47_env_voidp_243" = bitcast %"$$fundef_47_env_118"* %"$$fundef_47_envp_241" to i8*
  %"$$fundef_47_cloval_244" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_47_env_118"*, { i8*, i8* }*)* @"$fundef_47" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_47_env_voidp_243", 1
  %"$$fundef_47_env_s_245" = getelementptr inbounds %"$$fundef_47_env_118", %"$$fundef_47_env_118"* %"$$fundef_47_envp_241", i32 0, i32 0
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_47_env_s_245", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_47_cloval_244", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_46", align 8, !dbg !53
  %"$$retval_46_246" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_46", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_46_246"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } @"$fundef_43"(%"$$fundef_43_env_120"* %0) !dbg !54 {
entry:
  %"$retval_44" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_227" = load i64, i64* @_gasrem, align 8
  %"$gascmp_228" = icmp ugt i64 1, %"$gasrem_227"
  br i1 %"$gascmp_228", label %"$out_of_gas_229", label %"$have_gas_230"

"$out_of_gas_229":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_230"

"$have_gas_230":                                  ; preds = %"$out_of_gas_229", %entry
  %"$consume_231" = sub i64 %"$gasrem_227", 1
  store i64 %"$consume_231", i64* @_gasrem, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_45_env_119"*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* @"$fundef_45" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*), i8* null }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_44", align 8, !dbg !55
  %"$$retval_44_235" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_44", align 8
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$retval_44_235"
}

define internal %Uint32 @"$fundef_41"(%"$$fundef_41_env_121"* %0, %Uint32 %1) !dbg !56 {
entry:
  %"$$fundef_41_env_s_198" = getelementptr inbounds %"$$fundef_41_env_121", %"$$fundef_41_env_121"* %0, i32 0, i32 0
  %"$s_envload_199" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_41_env_s_198", align 8
  %s = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_envload_199", { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$retval_42" = alloca %Uint32, align 8
  %"$gasrem_200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_201" = icmp ugt i64 1, %"$gasrem_200"
  br i1 %"$gascmp_201", label %"$out_of_gas_202", label %"$have_gas_203"

"$out_of_gas_202":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_203"

"$have_gas_203":                                  ; preds = %"$out_of_gas_202", %entry
  %"$consume_204" = sub i64 %"$gasrem_200", 1
  store i64 %"$consume_204", i64* @_gasrem, align 8
  %sz = alloca %Uint32, align 8
  %"$gasrem_205" = load i64, i64* @_gasrem, align 8
  %"$gascmp_206" = icmp ugt i64 1, %"$gasrem_205"
  br i1 %"$gascmp_206", label %"$out_of_gas_207", label %"$have_gas_208"

"$out_of_gas_207":                                ; preds = %"$have_gas_203"
  call void @_out_of_gas()
  br label %"$have_gas_208"

"$have_gas_208":                                  ; preds = %"$out_of_gas_207", %"$have_gas_203"
  %"$consume_209" = sub i64 %"$gasrem_205", 1
  store i64 %"$consume_209", i64* @_gasrem, align 8
  %"$s_0" = alloca %Uint32, align 8
  %"$s_210" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$s_fptr_211" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_210", 0
  %"$s_envptr_212" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_210", 1
  %"$s_call_213" = call %Uint32 %"$s_fptr_211"(i8* %"$s_envptr_212", %Uint32 %1), !dbg !57
  store %Uint32 %"$s_call_213", %Uint32* %"$s_0", align 4, !dbg !57
  %"$$s_0_214" = load %Uint32, %Uint32* %"$s_0", align 4
  store %Uint32 %"$$s_0_214", %Uint32* %sz, align 4, !dbg !57
  %"$gasrem_215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_216" = icmp ugt i64 1, %"$gasrem_215"
  br i1 %"$gascmp_216", label %"$out_of_gas_217", label %"$have_gas_218"

"$out_of_gas_217":                                ; preds = %"$have_gas_208"
  call void @_out_of_gas()
  br label %"$have_gas_218"

"$have_gas_218":                                  ; preds = %"$out_of_gas_217", %"$have_gas_208"
  %"$consume_219" = sub i64 %"$gasrem_215", 1
  store i64 %"$consume_219", i64* @_gasrem, align 8
  %"$s_1" = alloca %Uint32, align 8
  %"$s_220" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$s_fptr_221" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_220", 0
  %"$s_envptr_222" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_220", 1
  %"$sz_223" = load %Uint32, %Uint32* %sz, align 4
  %"$s_call_224" = call %Uint32 %"$s_fptr_221"(i8* %"$s_envptr_222", %Uint32 %"$sz_223"), !dbg !58
  store %Uint32 %"$s_call_224", %Uint32* %"$s_1", align 4, !dbg !58
  %"$$s_1_225" = load %Uint32, %Uint32* %"$s_1", align 4
  store %Uint32 %"$$s_1_225", %Uint32* %"$retval_42", align 4, !dbg !58
  %"$$retval_42_226" = load %Uint32, %Uint32* %"$retval_42", align 4
  ret %Uint32 %"$$retval_42_226"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_39"(%"$$fundef_39_env_122"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) !dbg !59 {
entry:
  %"$retval_40" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_187" = load i64, i64* @_gasrem, align 8
  %"$gascmp_188" = icmp ugt i64 1, %"$gasrem_187"
  br i1 %"$gascmp_188", label %"$out_of_gas_189", label %"$have_gas_190"

"$out_of_gas_189":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_190"

"$have_gas_190":                                  ; preds = %"$out_of_gas_189", %entry
  %"$consume_191" = sub i64 %"$gasrem_187", 1
  store i64 %"$consume_191", i64* @_gasrem, align 8
  %"$$fundef_41_envp_192_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_41_envp_192_salloc" = call i8* @_salloc(i8* %"$$fundef_41_envp_192_load", i64 16)
  %"$$fundef_41_envp_192" = bitcast i8* %"$$fundef_41_envp_192_salloc" to %"$$fundef_41_env_121"*
  %"$$fundef_41_env_voidp_194" = bitcast %"$$fundef_41_env_121"* %"$$fundef_41_envp_192" to i8*
  %"$$fundef_41_cloval_195" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_41_env_121"*, %Uint32)* @"$fundef_41" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_41_env_voidp_194", 1
  %"$$fundef_41_env_s_196" = getelementptr inbounds %"$$fundef_41_env_121", %"$$fundef_41_env_121"* %"$$fundef_41_envp_192", i32 0, i32 0
  store { %Uint32 (i8*, %Uint32)*, i8* } %1, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_41_env_s_196", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_41_cloval_195", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_40", align 8, !dbg !60
  %"$$retval_40_197" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_40", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_40_197"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_37"(%"$$fundef_37_env_123"* %0) !dbg !61 {
entry:
  %"$retval_38" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_179" = icmp ugt i64 1, %"$gasrem_178"
  br i1 %"$gascmp_179", label %"$out_of_gas_180", label %"$have_gas_181"

"$out_of_gas_180":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_181"

"$have_gas_181":                                  ; preds = %"$out_of_gas_180", %entry
  %"$consume_182" = sub i64 %"$gasrem_178", 1
  store i64 %"$consume_182", i64* @_gasrem, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_39_env_122"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_39" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_38", align 8, !dbg !62
  %"$$retval_38_186" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_38", align 8
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_38_186"
}

define internal { i8*, i8* }* @"$fundef_35"(%"$$fundef_35_env_124"* %0, { i8*, i8* }* %1) !dbg !63 {
entry:
  %"$retval_36" = alloca { i8*, i8* }*, align 8
  %"$gasrem_172" = load i64, i64* @_gasrem, align 8
  %"$gascmp_173" = icmp ugt i64 1, %"$gasrem_172"
  br i1 %"$gascmp_173", label %"$out_of_gas_174", label %"$have_gas_175"

"$out_of_gas_174":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_175"

"$have_gas_175":                                  ; preds = %"$out_of_gas_174", %entry
  %"$consume_176" = sub i64 %"$gasrem_172", 1
  store i64 %"$consume_176", i64* @_gasrem, align 8
  store { i8*, i8* }* %1, { i8*, i8* }** %"$retval_36", align 8, !dbg !64
  %"$$retval_36_177" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_36", align 8
  ret { i8*, i8* }* %"$$retval_36_177"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_33"(%"$$fundef_33_env_125"* %0, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1) !dbg !65 {
entry:
  %"$retval_34" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_164" = icmp ugt i64 1, %"$gasrem_163"
  br i1 %"$gascmp_164", label %"$out_of_gas_165", label %"$have_gas_166"

"$out_of_gas_165":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_166"

"$have_gas_166":                                  ; preds = %"$out_of_gas_165", %entry
  %"$consume_167" = sub i64 %"$gasrem_163", 1
  store i64 %"$consume_167", i64* @_gasrem, align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_35_env_124"*, { i8*, i8* }*)* @"$fundef_35" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* null }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_34", align 8, !dbg !66
  %"$$retval_34_171" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_34", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_34_171"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } @"$fundef_31"(%"$$fundef_31_env_126"* %0) !dbg !67 {
entry:
  %"$retval_32" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_155" = icmp ugt i64 1, %"$gasrem_154"
  br i1 %"$gascmp_155", label %"$out_of_gas_156", label %"$have_gas_157"

"$out_of_gas_156":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_157"

"$have_gas_157":                                  ; preds = %"$out_of_gas_156", %entry
  %"$consume_158" = sub i64 %"$gasrem_154", 1
  store i64 %"$consume_158", i64* @_gasrem, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_33_env_125"*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* @"$fundef_33" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*), i8* null }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_32", align 8, !dbg !68
  %"$$retval_32_162" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_32", align 8
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$retval_32_162"
}

define internal %Uint32 @"$fundef_29"(%"$$fundef_29_env_127"* %0, %Uint32 %1) !dbg !69 {
entry:
  %"$retval_30" = alloca %Uint32, align 8
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 1, %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %entry
  %"$consume_152" = sub i64 %"$gasrem_148", 1
  store i64 %"$consume_152", i64* @_gasrem, align 8
  store %Uint32 %1, %Uint32* %"$retval_30", align 4, !dbg !70
  %"$$retval_30_153" = load %Uint32, %Uint32* %"$retval_30", align 4
  ret %Uint32 %"$$retval_30_153"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_27"(%"$$fundef_27_env_128"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) !dbg !71 {
entry:
  %"$retval_28" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_140" = icmp ugt i64 1, %"$gasrem_139"
  br i1 %"$gascmp_140", label %"$out_of_gas_141", label %"$have_gas_142"

"$out_of_gas_141":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_142"

"$have_gas_142":                                  ; preds = %"$out_of_gas_141", %entry
  %"$consume_143" = sub i64 %"$gasrem_139", 1
  store i64 %"$consume_143", i64* @_gasrem, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_29_env_127"*, %Uint32)* @"$fundef_29" to %Uint32 (i8*, %Uint32)*), i8* null }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_28", align 8, !dbg !72
  %"$$retval_28_147" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_28", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_28_147"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_25"(%"$$fundef_25_env_129"* %0) !dbg !73 {
entry:
  %"$retval_26" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 1, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %entry
  %"$consume_134" = sub i64 %"$gasrem_130", 1
  store i64 %"$consume_134", i64* @_gasrem, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_27_env_128"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_27" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_26", align 8, !dbg !74
  %"$$retval_26_138" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_26", align 8
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_26_138"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() !dbg !75 {
entry:
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !77 {
entry:
  %"$expr_24" = alloca %Uint32, align 8
  %"$gasrem_686" = load i64, i64* @_gasrem, align 8
  %"$gascmp_687" = icmp ugt i64 1, %"$gasrem_686"
  br i1 %"$gascmp_687", label %"$out_of_gas_688", label %"$have_gas_689"

"$out_of_gas_688":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_689"

"$have_gas_689":                                  ; preds = %"$out_of_gas_688", %entry
  %"$consume_690" = sub i64 %"$gasrem_686", 1
  store i64 %"$consume_690", i64* @_gasrem, align 8
  %c0 = alloca { i8*, i8* }*, align 8
  %"$gasrem_691" = load i64, i64* @_gasrem, align 8
  %"$gascmp_692" = icmp ugt i64 1, %"$gasrem_691"
  br i1 %"$gascmp_692", label %"$out_of_gas_693", label %"$have_gas_694"

"$out_of_gas_693":                                ; preds = %"$have_gas_689"
  call void @_out_of_gas()
  br label %"$have_gas_694"

"$have_gas_694":                                  ; preds = %"$out_of_gas_693", %"$have_gas_689"
  %"$consume_695" = sub i64 %"$gasrem_691", 1
  store i64 %"$consume_695", i64* @_gasrem, align 8
  %"$dyndisp_table_702_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_702_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_702_salloc_load", i64 32)
  %"$dyndisp_table_702_salloc" = bitcast i8* %"$dyndisp_table_702_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_702" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_702_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_703" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_702", i32 0
  %"$dyndisp_pcast_704" = bitcast { i8*, i8* }* %"$dyndisp_gep_703" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_25_env_129"*)* @"$fundef_25" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_704", align 8
  %"$dyndisp_gep_705" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_702", i32 1
  %"$dyndisp_pcast_706" = bitcast { i8*, i8* }* %"$dyndisp_gep_705" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (%"$$fundef_31_env_126"*)* @"$fundef_31" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_706", align 8
  store { i8*, i8* }* %"$dyndisp_table_702", { i8*, i8* }** %c0, align 8, !dbg !78
  %"$gasrem_707" = load i64, i64* @_gasrem, align 8
  %"$gascmp_708" = icmp ugt i64 1, %"$gasrem_707"
  br i1 %"$gascmp_708", label %"$out_of_gas_709", label %"$have_gas_710"

"$out_of_gas_709":                                ; preds = %"$have_gas_694"
  call void @_out_of_gas()
  br label %"$have_gas_710"

"$have_gas_710":                                  ; preds = %"$out_of_gas_709", %"$have_gas_694"
  %"$consume_711" = sub i64 %"$gasrem_707", 1
  store i64 %"$consume_711", i64* @_gasrem, align 8
  %"$gasrem_712" = load i64, i64* @_gasrem, align 8
  %"$gascmp_713" = icmp ugt i64 1, %"$gasrem_712"
  br i1 %"$gascmp_713", label %"$out_of_gas_714", label %"$have_gas_715"

"$out_of_gas_714":                                ; preds = %"$have_gas_710"
  call void @_out_of_gas()
  br label %"$have_gas_715"

"$have_gas_715":                                  ; preds = %"$out_of_gas_714", %"$have_gas_710"
  %"$consume_716" = sub i64 %"$gasrem_712", 1
  store i64 %"$consume_716", i64* @_gasrem, align 8
  %c2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_717" = load i64, i64* @_gasrem, align 8
  %"$gascmp_718" = icmp ugt i64 1, %"$gasrem_717"
  br i1 %"$gascmp_718", label %"$out_of_gas_719", label %"$have_gas_720"

"$out_of_gas_719":                                ; preds = %"$have_gas_715"
  call void @_out_of_gas()
  br label %"$have_gas_720"

"$have_gas_720":                                  ; preds = %"$out_of_gas_719", %"$have_gas_715"
  %"$consume_721" = sub i64 %"$gasrem_717", 1
  store i64 %"$consume_721", i64* @_gasrem, align 8
  %"$dyndisp_table_728_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_728_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_728_salloc_load", i64 32)
  %"$dyndisp_table_728_salloc" = bitcast i8* %"$dyndisp_table_728_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_728" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_728_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_729" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_728", i32 0
  %"$dyndisp_pcast_730" = bitcast { i8*, i8* }* %"$dyndisp_gep_729" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_37_env_123"*)* @"$fundef_37" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_730", align 8
  %"$dyndisp_gep_731" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_728", i32 1
  %"$dyndisp_pcast_732" = bitcast { i8*, i8* }* %"$dyndisp_gep_731" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (%"$$fundef_43_env_120"*)* @"$fundef_43" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_732", align 8
  store { i8*, i8* }* %"$dyndisp_table_728", { i8*, i8* }** %c2, align 8, !dbg !79
  %"$gasrem_733" = load i64, i64* @_gasrem, align 8
  %"$gascmp_734" = icmp ugt i64 1, %"$gasrem_733"
  br i1 %"$gascmp_734", label %"$out_of_gas_735", label %"$have_gas_736"

"$out_of_gas_735":                                ; preds = %"$have_gas_720"
  call void @_out_of_gas()
  br label %"$have_gas_736"

"$have_gas_736":                                  ; preds = %"$out_of_gas_735", %"$have_gas_720"
  %"$consume_737" = sub i64 %"$gasrem_733", 1
  store i64 %"$consume_737", i64* @_gasrem, align 8
  %cadd = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_738" = load i64, i64* @_gasrem, align 8
  %"$gascmp_739" = icmp ugt i64 1, %"$gasrem_738"
  br i1 %"$gascmp_739", label %"$out_of_gas_740", label %"$have_gas_741"

"$out_of_gas_740":                                ; preds = %"$have_gas_736"
  call void @_out_of_gas()
  br label %"$have_gas_741"

"$have_gas_741":                                  ; preds = %"$out_of_gas_740", %"$have_gas_736"
  %"$consume_742" = sub i64 %"$gasrem_738", 1
  store i64 %"$consume_742", i64* @_gasrem, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_49_env_117"*, { i8*, i8* }*)* @"$fundef_49" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8, !dbg !80
  %"$gasrem_746" = load i64, i64* @_gasrem, align 8
  %"$gascmp_747" = icmp ugt i64 1, %"$gasrem_746"
  br i1 %"$gascmp_747", label %"$out_of_gas_748", label %"$have_gas_749"

"$out_of_gas_748":                                ; preds = %"$have_gas_741"
  call void @_out_of_gas()
  br label %"$have_gas_749"

"$have_gas_749":                                  ; preds = %"$out_of_gas_748", %"$have_gas_741"
  %"$consume_750" = sub i64 %"$gasrem_746", 1
  store i64 %"$consume_750", i64* @_gasrem, align 8
  %cmul = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_751" = load i64, i64* @_gasrem, align 8
  %"$gascmp_752" = icmp ugt i64 1, %"$gasrem_751"
  br i1 %"$gascmp_752", label %"$out_of_gas_753", label %"$have_gas_754"

"$out_of_gas_753":                                ; preds = %"$have_gas_749"
  call void @_out_of_gas()
  br label %"$have_gas_754"

"$have_gas_754":                                  ; preds = %"$out_of_gas_753", %"$have_gas_749"
  %"$consume_755" = sub i64 %"$gasrem_751", 1
  store i64 %"$consume_755", i64* @_gasrem, align 8
  %"$$fundef_65_envp_756_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_65_envp_756_salloc" = call i8* @_salloc(i8* %"$$fundef_65_envp_756_load", i64 24)
  %"$$fundef_65_envp_756" = bitcast i8* %"$$fundef_65_envp_756_salloc" to %"$$fundef_65_env_109"*
  %"$$fundef_65_env_voidp_758" = bitcast %"$$fundef_65_env_109"* %"$$fundef_65_envp_756" to i8*
  %"$$fundef_65_cloval_759" = insertvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_65_env_109"*, { i8*, i8* }*)* @"$fundef_65" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_65_env_voidp_758", 1
  %"$$fundef_65_env_c0_760" = getelementptr inbounds %"$$fundef_65_env_109", %"$$fundef_65_env_109"* %"$$fundef_65_envp_756", i32 0, i32 0
  %"$c0_761" = load { i8*, i8* }*, { i8*, i8* }** %c0, align 8
  store { i8*, i8* }* %"$c0_761", { i8*, i8* }** %"$$fundef_65_env_c0_760", align 8
  %"$$fundef_65_env_cadd_762" = getelementptr inbounds %"$$fundef_65_env_109", %"$$fundef_65_env_109"* %"$$fundef_65_envp_756", i32 0, i32 1
  %"$cadd_763" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_763", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_65_env_cadd_762", align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_65_cloval_759", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul, align 8, !dbg !81
  %"$gasrem_764" = load i64, i64* @_gasrem, align 8
  %"$gascmp_765" = icmp ugt i64 1, %"$gasrem_764"
  br i1 %"$gascmp_765", label %"$out_of_gas_766", label %"$have_gas_767"

"$out_of_gas_766":                                ; preds = %"$have_gas_754"
  call void @_out_of_gas()
  br label %"$have_gas_767"

"$have_gas_767":                                  ; preds = %"$out_of_gas_766", %"$have_gas_754"
  %"$consume_768" = sub i64 %"$gasrem_764", 1
  store i64 %"$consume_768", i64* @_gasrem, align 8
  %church_nat_to_uint32 = alloca { %Uint32 (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_769" = load i64, i64* @_gasrem, align 8
  %"$gascmp_770" = icmp ugt i64 1, %"$gasrem_769"
  br i1 %"$gascmp_770", label %"$out_of_gas_771", label %"$have_gas_772"

"$out_of_gas_771":                                ; preds = %"$have_gas_767"
  call void @_out_of_gas()
  br label %"$have_gas_772"

"$have_gas_772":                                  ; preds = %"$out_of_gas_771", %"$have_gas_767"
  %"$consume_773" = sub i64 %"$gasrem_769", 1
  store i64 %"$consume_773", i64* @_gasrem, align 8
  store { %Uint32 (i8*, { i8*, i8* }*)*, i8* } { %Uint32 (i8*, { i8*, i8* }*)* bitcast (%Uint32 (%"$$fundef_69_env_107"*, { i8*, i8* }*)* @"$fundef_69" to %Uint32 (i8*, { i8*, i8* }*)*), i8* null }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %church_nat_to_uint32, align 8, !dbg !82
  %"$gasrem_777" = load i64, i64* @_gasrem, align 8
  %"$gascmp_778" = icmp ugt i64 1, %"$gasrem_777"
  br i1 %"$gascmp_778", label %"$out_of_gas_779", label %"$have_gas_780"

"$out_of_gas_779":                                ; preds = %"$have_gas_772"
  call void @_out_of_gas()
  br label %"$have_gas_780"

"$have_gas_780":                                  ; preds = %"$out_of_gas_779", %"$have_gas_772"
  %"$consume_781" = sub i64 %"$gasrem_777", 1
  store i64 %"$consume_781", i64* @_gasrem, align 8
  %c4 = alloca { i8*, i8* }*, align 8
  %"$gasrem_782" = load i64, i64* @_gasrem, align 8
  %"$gascmp_783" = icmp ugt i64 1, %"$gasrem_782"
  br i1 %"$gascmp_783", label %"$out_of_gas_784", label %"$have_gas_785"

"$out_of_gas_784":                                ; preds = %"$have_gas_780"
  call void @_out_of_gas()
  br label %"$have_gas_785"

"$have_gas_785":                                  ; preds = %"$out_of_gas_784", %"$have_gas_780"
  %"$consume_786" = sub i64 %"$gasrem_782", 1
  store i64 %"$consume_786", i64* @_gasrem, align 8
  %"$cmul_11" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cmul_787" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul, align 8
  %"$cmul_fptr_788" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_787", 0
  %"$cmul_envptr_789" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_787", 1
  %"$c2_790" = load { i8*, i8* }*, { i8*, i8* }** %c2, align 8
  %"$cmul_call_791" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_788"(i8* %"$cmul_envptr_789", { i8*, i8* }* %"$c2_790"), !dbg !83
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_791", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_11", align 8, !dbg !83
  %"$cmul_12" = alloca { i8*, i8* }*, align 8
  %"$$cmul_11_792" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_11", align 8
  %"$$cmul_11_fptr_793" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_11_792", 0
  %"$$cmul_11_envptr_794" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_11_792", 1
  %"$c2_795" = load { i8*, i8* }*, { i8*, i8* }** %c2, align 8
  %"$$cmul_11_call_796" = call { i8*, i8* }* %"$$cmul_11_fptr_793"(i8* %"$$cmul_11_envptr_794", { i8*, i8* }* %"$c2_795"), !dbg !83
  store { i8*, i8* }* %"$$cmul_11_call_796", { i8*, i8* }** %"$cmul_12", align 8, !dbg !83
  %"$$cmul_12_797" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_12", align 8
  store { i8*, i8* }* %"$$cmul_12_797", { i8*, i8* }** %c4, align 8, !dbg !83
  %"$gasrem_798" = load i64, i64* @_gasrem, align 8
  %"$gascmp_799" = icmp ugt i64 1, %"$gasrem_798"
  br i1 %"$gascmp_799", label %"$out_of_gas_800", label %"$have_gas_801"

"$out_of_gas_800":                                ; preds = %"$have_gas_785"
  call void @_out_of_gas()
  br label %"$have_gas_801"

"$have_gas_801":                                  ; preds = %"$out_of_gas_800", %"$have_gas_785"
  %"$consume_802" = sub i64 %"$gasrem_798", 1
  store i64 %"$consume_802", i64* @_gasrem, align 8
  %c16 = alloca { i8*, i8* }*, align 8
  %"$gasrem_803" = load i64, i64* @_gasrem, align 8
  %"$gascmp_804" = icmp ugt i64 1, %"$gasrem_803"
  br i1 %"$gascmp_804", label %"$out_of_gas_805", label %"$have_gas_806"

"$out_of_gas_805":                                ; preds = %"$have_gas_801"
  call void @_out_of_gas()
  br label %"$have_gas_806"

"$have_gas_806":                                  ; preds = %"$out_of_gas_805", %"$have_gas_801"
  %"$consume_807" = sub i64 %"$gasrem_803", 1
  store i64 %"$consume_807", i64* @_gasrem, align 8
  %"$cmul_13" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cmul_808" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul, align 8
  %"$cmul_fptr_809" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_808", 0
  %"$cmul_envptr_810" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_808", 1
  %"$c4_811" = load { i8*, i8* }*, { i8*, i8* }** %c4, align 8
  %"$cmul_call_812" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_809"(i8* %"$cmul_envptr_810", { i8*, i8* }* %"$c4_811"), !dbg !84
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_812", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_13", align 8, !dbg !84
  %"$cmul_14" = alloca { i8*, i8* }*, align 8
  %"$$cmul_13_813" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_13", align 8
  %"$$cmul_13_fptr_814" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_13_813", 0
  %"$$cmul_13_envptr_815" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_13_813", 1
  %"$c4_816" = load { i8*, i8* }*, { i8*, i8* }** %c4, align 8
  %"$$cmul_13_call_817" = call { i8*, i8* }* %"$$cmul_13_fptr_814"(i8* %"$$cmul_13_envptr_815", { i8*, i8* }* %"$c4_816"), !dbg !84
  store { i8*, i8* }* %"$$cmul_13_call_817", { i8*, i8* }** %"$cmul_14", align 8, !dbg !84
  %"$$cmul_14_818" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_14", align 8
  store { i8*, i8* }* %"$$cmul_14_818", { i8*, i8* }** %c16, align 8, !dbg !84
  %"$gasrem_819" = load i64, i64* @_gasrem, align 8
  %"$gascmp_820" = icmp ugt i64 1, %"$gasrem_819"
  br i1 %"$gascmp_820", label %"$out_of_gas_821", label %"$have_gas_822"

"$out_of_gas_821":                                ; preds = %"$have_gas_806"
  call void @_out_of_gas()
  br label %"$have_gas_822"

"$have_gas_822":                                  ; preds = %"$out_of_gas_821", %"$have_gas_806"
  %"$consume_823" = sub i64 %"$gasrem_819", 1
  store i64 %"$consume_823", i64* @_gasrem, align 8
  %c32 = alloca { i8*, i8* }*, align 8
  %"$gasrem_824" = load i64, i64* @_gasrem, align 8
  %"$gascmp_825" = icmp ugt i64 1, %"$gasrem_824"
  br i1 %"$gascmp_825", label %"$out_of_gas_826", label %"$have_gas_827"

"$out_of_gas_826":                                ; preds = %"$have_gas_822"
  call void @_out_of_gas()
  br label %"$have_gas_827"

"$have_gas_827":                                  ; preds = %"$out_of_gas_826", %"$have_gas_822"
  %"$consume_828" = sub i64 %"$gasrem_824", 1
  store i64 %"$consume_828", i64* @_gasrem, align 8
  %"$cadd_15" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cadd_829" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$cadd_fptr_830" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_829", 0
  %"$cadd_envptr_831" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_829", 1
  %"$c16_832" = load { i8*, i8* }*, { i8*, i8* }** %c16, align 8
  %"$cadd_call_833" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_fptr_830"(i8* %"$cadd_envptr_831", { i8*, i8* }* %"$c16_832"), !dbg !85
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_call_833", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_15", align 8, !dbg !85
  %"$cadd_16" = alloca { i8*, i8* }*, align 8
  %"$$cadd_15_834" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_15", align 8
  %"$$cadd_15_fptr_835" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_15_834", 0
  %"$$cadd_15_envptr_836" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_15_834", 1
  %"$c16_837" = load { i8*, i8* }*, { i8*, i8* }** %c16, align 8
  %"$$cadd_15_call_838" = call { i8*, i8* }* %"$$cadd_15_fptr_835"(i8* %"$$cadd_15_envptr_836", { i8*, i8* }* %"$c16_837"), !dbg !85
  store { i8*, i8* }* %"$$cadd_15_call_838", { i8*, i8* }** %"$cadd_16", align 8, !dbg !85
  %"$$cadd_16_839" = load { i8*, i8* }*, { i8*, i8* }** %"$cadd_16", align 8
  store { i8*, i8* }* %"$$cadd_16_839", { i8*, i8* }** %c32, align 8, !dbg !85
  %"$gasrem_840" = load i64, i64* @_gasrem, align 8
  %"$gascmp_841" = icmp ugt i64 1, %"$gasrem_840"
  br i1 %"$gascmp_841", label %"$out_of_gas_842", label %"$have_gas_843"

"$out_of_gas_842":                                ; preds = %"$have_gas_827"
  call void @_out_of_gas()
  br label %"$have_gas_843"

"$have_gas_843":                                  ; preds = %"$out_of_gas_842", %"$have_gas_827"
  %"$consume_844" = sub i64 %"$gasrem_840", 1
  store i64 %"$consume_844", i64* @_gasrem, align 8
  %c128 = alloca { i8*, i8* }*, align 8
  %"$gasrem_845" = load i64, i64* @_gasrem, align 8
  %"$gascmp_846" = icmp ugt i64 1, %"$gasrem_845"
  br i1 %"$gascmp_846", label %"$out_of_gas_847", label %"$have_gas_848"

"$out_of_gas_847":                                ; preds = %"$have_gas_843"
  call void @_out_of_gas()
  br label %"$have_gas_848"

"$have_gas_848":                                  ; preds = %"$out_of_gas_847", %"$have_gas_843"
  %"$consume_849" = sub i64 %"$gasrem_845", 1
  store i64 %"$consume_849", i64* @_gasrem, align 8
  %"$cmul_17" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cmul_850" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul, align 8
  %"$cmul_fptr_851" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_850", 0
  %"$cmul_envptr_852" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_850", 1
  %"$c4_853" = load { i8*, i8* }*, { i8*, i8* }** %c4, align 8
  %"$cmul_call_854" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_851"(i8* %"$cmul_envptr_852", { i8*, i8* }* %"$c4_853"), !dbg !86
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_854", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_17", align 8, !dbg !86
  %"$cmul_18" = alloca { i8*, i8* }*, align 8
  %"$$cmul_17_855" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_17", align 8
  %"$$cmul_17_fptr_856" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_17_855", 0
  %"$$cmul_17_envptr_857" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_17_855", 1
  %"$c32_858" = load { i8*, i8* }*, { i8*, i8* }** %c32, align 8
  %"$$cmul_17_call_859" = call { i8*, i8* }* %"$$cmul_17_fptr_856"(i8* %"$$cmul_17_envptr_857", { i8*, i8* }* %"$c32_858"), !dbg !86
  store { i8*, i8* }* %"$$cmul_17_call_859", { i8*, i8* }** %"$cmul_18", align 8, !dbg !86
  %"$$cmul_18_860" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_18", align 8
  store { i8*, i8* }* %"$$cmul_18_860", { i8*, i8* }** %c128, align 8, !dbg !86
  %"$gasrem_861" = load i64, i64* @_gasrem, align 8
  %"$gascmp_862" = icmp ugt i64 1, %"$gasrem_861"
  br i1 %"$gascmp_862", label %"$out_of_gas_863", label %"$have_gas_864"

"$out_of_gas_863":                                ; preds = %"$have_gas_848"
  call void @_out_of_gas()
  br label %"$have_gas_864"

"$have_gas_864":                                  ; preds = %"$out_of_gas_863", %"$have_gas_848"
  %"$consume_865" = sub i64 %"$gasrem_861", 1
  store i64 %"$consume_865", i64* @_gasrem, align 8
  %c256 = alloca { i8*, i8* }*, align 8
  %"$gasrem_866" = load i64, i64* @_gasrem, align 8
  %"$gascmp_867" = icmp ugt i64 1, %"$gasrem_866"
  br i1 %"$gascmp_867", label %"$out_of_gas_868", label %"$have_gas_869"

"$out_of_gas_868":                                ; preds = %"$have_gas_864"
  call void @_out_of_gas()
  br label %"$have_gas_869"

"$have_gas_869":                                  ; preds = %"$out_of_gas_868", %"$have_gas_864"
  %"$consume_870" = sub i64 %"$gasrem_866", 1
  store i64 %"$consume_870", i64* @_gasrem, align 8
  %"$cadd_19" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cadd_871" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$cadd_fptr_872" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_871", 0
  %"$cadd_envptr_873" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_871", 1
  %"$c128_874" = load { i8*, i8* }*, { i8*, i8* }** %c128, align 8
  %"$cadd_call_875" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_fptr_872"(i8* %"$cadd_envptr_873", { i8*, i8* }* %"$c128_874"), !dbg !87
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_call_875", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_19", align 8, !dbg !87
  %"$cadd_20" = alloca { i8*, i8* }*, align 8
  %"$$cadd_19_876" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_19", align 8
  %"$$cadd_19_fptr_877" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_19_876", 0
  %"$$cadd_19_envptr_878" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_19_876", 1
  %"$c128_879" = load { i8*, i8* }*, { i8*, i8* }** %c128, align 8
  %"$$cadd_19_call_880" = call { i8*, i8* }* %"$$cadd_19_fptr_877"(i8* %"$$cadd_19_envptr_878", { i8*, i8* }* %"$c128_879"), !dbg !87
  store { i8*, i8* }* %"$$cadd_19_call_880", { i8*, i8* }** %"$cadd_20", align 8, !dbg !87
  %"$$cadd_20_881" = load { i8*, i8* }*, { i8*, i8* }** %"$cadd_20", align 8
  store { i8*, i8* }* %"$$cadd_20_881", { i8*, i8* }** %c256, align 8, !dbg !87
  %"$gasrem_882" = load i64, i64* @_gasrem, align 8
  %"$gascmp_883" = icmp ugt i64 1, %"$gasrem_882"
  br i1 %"$gascmp_883", label %"$out_of_gas_884", label %"$have_gas_885"

"$out_of_gas_884":                                ; preds = %"$have_gas_869"
  call void @_out_of_gas()
  br label %"$have_gas_885"

"$have_gas_885":                                  ; preds = %"$out_of_gas_884", %"$have_gas_869"
  %"$consume_886" = sub i64 %"$gasrem_882", 1
  store i64 %"$consume_886", i64* @_gasrem, align 8
  %c65536 = alloca { i8*, i8* }*, align 8
  %"$gasrem_887" = load i64, i64* @_gasrem, align 8
  %"$gascmp_888" = icmp ugt i64 1, %"$gasrem_887"
  br i1 %"$gascmp_888", label %"$out_of_gas_889", label %"$have_gas_890"

"$out_of_gas_889":                                ; preds = %"$have_gas_885"
  call void @_out_of_gas()
  br label %"$have_gas_890"

"$have_gas_890":                                  ; preds = %"$out_of_gas_889", %"$have_gas_885"
  %"$consume_891" = sub i64 %"$gasrem_887", 1
  store i64 %"$consume_891", i64* @_gasrem, align 8
  %"$cmul_21" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cmul_892" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul, align 8
  %"$cmul_fptr_893" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_892", 0
  %"$cmul_envptr_894" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_892", 1
  %"$c256_895" = load { i8*, i8* }*, { i8*, i8* }** %c256, align 8
  %"$cmul_call_896" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_893"(i8* %"$cmul_envptr_894", { i8*, i8* }* %"$c256_895"), !dbg !88
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_896", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_21", align 8, !dbg !88
  %"$cmul_22" = alloca { i8*, i8* }*, align 8
  %"$$cmul_21_897" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_21", align 8
  %"$$cmul_21_fptr_898" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_21_897", 0
  %"$$cmul_21_envptr_899" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_21_897", 1
  %"$c256_900" = load { i8*, i8* }*, { i8*, i8* }** %c256, align 8
  %"$$cmul_21_call_901" = call { i8*, i8* }* %"$$cmul_21_fptr_898"(i8* %"$$cmul_21_envptr_899", { i8*, i8* }* %"$c256_900"), !dbg !88
  store { i8*, i8* }* %"$$cmul_21_call_901", { i8*, i8* }** %"$cmul_22", align 8, !dbg !88
  %"$$cmul_22_902" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_22", align 8
  store { i8*, i8* }* %"$$cmul_22_902", { i8*, i8* }** %c65536, align 8, !dbg !88
  %"$gasrem_903" = load i64, i64* @_gasrem, align 8
  %"$gascmp_904" = icmp ugt i64 1, %"$gasrem_903"
  br i1 %"$gascmp_904", label %"$out_of_gas_905", label %"$have_gas_906"

"$out_of_gas_905":                                ; preds = %"$have_gas_890"
  call void @_out_of_gas()
  br label %"$have_gas_906"

"$have_gas_906":                                  ; preds = %"$out_of_gas_905", %"$have_gas_890"
  %"$consume_907" = sub i64 %"$gasrem_903", 1
  store i64 %"$consume_907", i64* @_gasrem, align 8
  %"$church_nat_to_uint32_23" = alloca %Uint32, align 8
  %"$church_nat_to_uint32_908" = load { %Uint32 (i8*, { i8*, i8* }*)*, i8* }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %church_nat_to_uint32, align 8
  %"$church_nat_to_uint32_fptr_909" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$church_nat_to_uint32_908", 0
  %"$church_nat_to_uint32_envptr_910" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$church_nat_to_uint32_908", 1
  %"$c65536_911" = load { i8*, i8* }*, { i8*, i8* }** %c65536, align 8
  %"$church_nat_to_uint32_call_912" = call %Uint32 %"$church_nat_to_uint32_fptr_909"(i8* %"$church_nat_to_uint32_envptr_910", { i8*, i8* }* %"$c65536_911"), !dbg !89
  store %Uint32 %"$church_nat_to_uint32_call_912", %Uint32* %"$church_nat_to_uint32_23", align 4, !dbg !89
  %"$$church_nat_to_uint32_23_913" = load %Uint32, %Uint32* %"$church_nat_to_uint32_23", align 4
  store %Uint32 %"$$church_nat_to_uint32_23_913", %Uint32* %"$expr_24", align 4, !dbg !89
  %"$$expr_24_914" = load %Uint32, %Uint32* %"$expr_24", align 4
  ret %Uint32 %"$$expr_24_914"
}

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_915" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_916" = alloca %Uint32, align 8
  %"$memvoidcast_917" = bitcast %Uint32* %"$pval_916" to i8*
  store %Uint32 %"$exprval_915", %Uint32* %"$pval_916", align 4
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Uint32_77", i8* %"$memvoidcast_917")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "church_nat.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_71", linkageName: "$fundef_71", scope: !2, file: !2, line: 36, type: !5, scopeLine: 36, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 36, column: 36, scope: !4)
!9 = distinct !DISubprogram(name: "$fundef_69", linkageName: "$fundef_69", scope: !2, file: !2, line: 34, type: !5, scopeLine: 34, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 34, column: 16, scope: !9)
!11 = !DILocation(line: 35, column: 15, scope: !9)
!12 = !DILocation(line: 36, column: 36, scope: !9)
!13 = !DILocation(line: 37, column: 16, scope: !9)
!14 = !DILocation(line: 37, column: 15, scope: !9)
!15 = !DILocation(line: 38, column: 5, scope: !9)
!16 = distinct !DISubprogram(name: "$fundef_67", linkageName: "$fundef_67", scope: !2, file: !2, line: 27, type: !5, scopeLine: 27, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!17 = !DILocation(line: 27, column: 16, scope: !16)
!18 = !DILocation(line: 28, column: 13, scope: !16)
!19 = !DILocation(line: 28, column: 12, scope: !16)
!20 = !DILocation(line: 29, column: 3, scope: !16)
!21 = distinct !DISubprogram(name: "$fundef_65", linkageName: "$fundef_65", scope: !2, file: !2, line: 26, type: !5, scopeLine: 26, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!22 = !DILocation(line: 27, column: 3, scope: !21)
!23 = distinct !DISubprogram(name: "$fundef_63", linkageName: "$fundef_63", scope: !2, file: !2, line: 18, type: !5, scopeLine: 18, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!24 = !DILocation(line: 18, column: 13, scope: !23)
!25 = !DILocation(line: 18, column: 12, scope: !23)
!26 = !DILocation(line: 19, column: 13, scope: !23)
!27 = !DILocation(line: 19, column: 12, scope: !23)
!28 = !DILocation(line: 20, column: 14, scope: !23)
!29 = !DILocation(line: 21, column: 3, scope: !23)
!30 = distinct !DISubprogram(name: "$fundef_61", linkageName: "$fundef_61", scope: !2, file: !2, line: 17, type: !5, scopeLine: 17, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!31 = !DILocation(line: 18, column: 3, scope: !30)
!32 = distinct !DISubprogram(name: "$fundef_59", linkageName: "$fundef_59", scope: !2, file: !2, line: 17, type: !5, scopeLine: 17, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!33 = !DILocation(line: 17, column: 3, scope: !32)
!34 = distinct !DISubprogram(name: "$fundef_57", linkageName: "$fundef_57", scope: !2, file: !2, line: 18, type: !5, scopeLine: 18, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!35 = !DILocation(line: 18, column: 13, scope: !34)
!36 = !DILocation(line: 18, column: 12, scope: !34)
!37 = !DILocation(line: 19, column: 13, scope: !34)
!38 = !DILocation(line: 19, column: 12, scope: !34)
!39 = !DILocation(line: 20, column: 14, scope: !34)
!40 = !DILocation(line: 21, column: 3, scope: !34)
!41 = distinct !DISubprogram(name: "$fundef_55", linkageName: "$fundef_55", scope: !2, file: !2, line: 17, type: !5, scopeLine: 17, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!42 = !DILocation(line: 18, column: 3, scope: !41)
!43 = distinct !DISubprogram(name: "$fundef_53", linkageName: "$fundef_53", scope: !2, file: !2, line: 17, type: !5, scopeLine: 17, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!44 = !DILocation(line: 17, column: 3, scope: !43)
!45 = distinct !DISubprogram(name: "$fundef_51", linkageName: "$fundef_51", scope: !2, file: !2, line: 15, type: !5, scopeLine: 15, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!46 = !DILocation(line: 15, column: 3, scope: !45)
!47 = distinct !DISubprogram(name: "$fundef_49", linkageName: "$fundef_49", scope: !2, file: !2, line: 14, type: !5, scopeLine: 14, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!48 = !DILocation(line: 15, column: 3, scope: !47)
!49 = distinct !DISubprogram(name: "$fundef_47", linkageName: "$fundef_47", scope: !2, file: !2, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!50 = !DILocation(line: 9, column: 68, scope: !49)
!51 = !DILocation(line: 9, column: 75, scope: !49)
!52 = distinct !DISubprogram(name: "$fundef_45", linkageName: "$fundef_45", scope: !2, file: !2, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!53 = !DILocation(line: 9, column: 59, scope: !52)
!54 = distinct !DISubprogram(name: "$fundef_43", linkageName: "$fundef_43", scope: !2, file: !2, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!55 = !DILocation(line: 9, column: 43, scope: !54)
!56 = distinct !DISubprogram(name: "$fundef_41", linkageName: "$fundef_41", scope: !2, file: !2, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!57 = !DILocation(line: 9, column: 68, scope: !56)
!58 = !DILocation(line: 9, column: 75, scope: !56)
!59 = distinct !DISubprogram(name: "$fundef_39", linkageName: "$fundef_39", scope: !2, file: !2, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!60 = !DILocation(line: 9, column: 59, scope: !59)
!61 = distinct !DISubprogram(name: "$fundef_37", linkageName: "$fundef_37", scope: !2, file: !2, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!62 = !DILocation(line: 9, column: 43, scope: !61)
!63 = distinct !DISubprogram(name: "$fundef_35", linkageName: "$fundef_35", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!64 = !DILocation(line: 3, column: 59, scope: !63)
!65 = distinct !DISubprogram(name: "$fundef_33", linkageName: "$fundef_33", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!66 = !DILocation(line: 3, column: 59, scope: !65)
!67 = distinct !DISubprogram(name: "$fundef_31", linkageName: "$fundef_31", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!68 = !DILocation(line: 3, column: 43, scope: !67)
!69 = distinct !DISubprogram(name: "$fundef_29", linkageName: "$fundef_29", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!70 = !DILocation(line: 3, column: 59, scope: !69)
!71 = distinct !DISubprogram(name: "$fundef_27", linkageName: "$fundef_27", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!72 = !DILocation(line: 3, column: 59, scope: !71)
!73 = distinct !DISubprogram(name: "$fundef_25", linkageName: "$fundef_25", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!74 = !DILocation(line: 3, column: 43, scope: !73)
!75 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !76, file: !76, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!76 = !DIFile(filename: ".", directory: ".")
!77 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!78 = !DILocation(line: 3, column: 10, scope: !77)
!79 = !DILocation(line: 9, column: 10, scope: !77)
!80 = !DILocation(line: 14, column: 3, scope: !77)
!81 = !DILocation(line: 26, column: 3, scope: !77)
!82 = !DILocation(line: 34, column: 5, scope: !77)
!83 = !DILocation(line: 41, column: 10, scope: !77)
!84 = !DILocation(line: 42, column: 11, scope: !77)
!85 = !DILocation(line: 43, column: 11, scope: !77)
!86 = !DILocation(line: 44, column: 12, scope: !77)
!87 = !DILocation(line: 45, column: 12, scope: !77)
!88 = !DILocation(line: 46, column: 14, scope: !77)
!89 = !DILocation(line: 47, column: 1, scope: !77)
