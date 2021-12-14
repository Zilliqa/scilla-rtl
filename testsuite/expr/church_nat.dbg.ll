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

%"$TyDescrTy_PrimTyp_79" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%Int32 = type { i32 }
%"$ParamDescr_967" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_968" = type { %ParamDescrString, i32, %"$ParamDescr_967"* }
%"$$fundef_77_env_114" = type { %Uint32 }
%Uint32 = type { i32 }
%"$$fundef_75_env_115" = type {}
%"$$fundef_73_env_116" = type { { i8*, i8* }*, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { i8*, i8* }* }
%"$$fundef_71_env_117" = type { { i8*, i8* }*, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } }
%"$$fundef_69_env_118" = type { { i8*, i8* }*, { i8*, i8* }*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } }
%"$$fundef_67_env_119" = type { { i8*, i8* }*, { i8*, i8* }* }
%"$$fundef_65_env_120" = type { { i8*, i8* }*, { i8*, i8* }* }
%"$$fundef_63_env_121" = type { { i8*, i8* }*, { i8*, i8* }*, { %Uint32 (i8*, %Uint32)*, i8* } }
%"$$fundef_61_env_122" = type { { i8*, i8* }*, { i8*, i8* }* }
%"$$fundef_59_env_123" = type { { i8*, i8* }*, { i8*, i8* }* }
%"$$fundef_57_env_124" = type { { i8*, i8* }* }
%"$$fundef_55_env_125" = type {}
%"$$fundef_53_env_126" = type { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } }
%"$$fundef_51_env_127" = type {}
%"$$fundef_49_env_128" = type {}
%"$$fundef_47_env_129" = type { { %Uint32 (i8*, %Uint32)*, i8* } }
%"$$fundef_45_env_130" = type {}
%"$$fundef_43_env_131" = type {}
%"$$fundef_41_env_132" = type {}
%"$$fundef_39_env_133" = type {}
%"$$fundef_37_env_134" = type {}
%"$$fundef_35_env_135" = type {}
%"$$fundef_33_env_136" = type {}
%"$$fundef_31_env_137" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_80" = global %"$TyDescrTy_PrimTyp_79" zeroinitializer
@"$TyDescr_Int32_81" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_79"* @"$TyDescr_Int32_Prim_80" to i8*) }
@"$TyDescr_Uint32_Prim_82" = global %"$TyDescrTy_PrimTyp_79" { i32 1, i32 0 }
@"$TyDescr_Uint32_83" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_79"* @"$TyDescr_Uint32_Prim_82" to i8*) }
@"$TyDescr_Int64_Prim_84" = global %"$TyDescrTy_PrimTyp_79" { i32 0, i32 1 }
@"$TyDescr_Int64_85" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_79"* @"$TyDescr_Int64_Prim_84" to i8*) }
@"$TyDescr_Uint64_Prim_86" = global %"$TyDescrTy_PrimTyp_79" { i32 1, i32 1 }
@"$TyDescr_Uint64_87" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_79"* @"$TyDescr_Uint64_Prim_86" to i8*) }
@"$TyDescr_Int128_Prim_88" = global %"$TyDescrTy_PrimTyp_79" { i32 0, i32 2 }
@"$TyDescr_Int128_89" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_79"* @"$TyDescr_Int128_Prim_88" to i8*) }
@"$TyDescr_Uint128_Prim_90" = global %"$TyDescrTy_PrimTyp_79" { i32 1, i32 2 }
@"$TyDescr_Uint128_91" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_79"* @"$TyDescr_Uint128_Prim_90" to i8*) }
@"$TyDescr_Int256_Prim_92" = global %"$TyDescrTy_PrimTyp_79" { i32 0, i32 3 }
@"$TyDescr_Int256_93" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_79"* @"$TyDescr_Int256_Prim_92" to i8*) }
@"$TyDescr_Uint256_Prim_94" = global %"$TyDescrTy_PrimTyp_79" { i32 1, i32 3 }
@"$TyDescr_Uint256_95" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_79"* @"$TyDescr_Uint256_Prim_94" to i8*) }
@"$TyDescr_String_Prim_96" = global %"$TyDescrTy_PrimTyp_79" { i32 2, i32 0 }
@"$TyDescr_String_97" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_79"* @"$TyDescr_String_Prim_96" to i8*) }
@"$TyDescr_Bnum_Prim_98" = global %"$TyDescrTy_PrimTyp_79" { i32 3, i32 0 }
@"$TyDescr_Bnum_99" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_79"* @"$TyDescr_Bnum_Prim_98" to i8*) }
@"$TyDescr_Message_Prim_100" = global %"$TyDescrTy_PrimTyp_79" { i32 4, i32 0 }
@"$TyDescr_Message_101" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_79"* @"$TyDescr_Message_Prim_100" to i8*) }
@"$TyDescr_Event_Prim_102" = global %"$TyDescrTy_PrimTyp_79" { i32 5, i32 0 }
@"$TyDescr_Event_103" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_79"* @"$TyDescr_Event_Prim_102" to i8*) }
@"$TyDescr_Exception_Prim_104" = global %"$TyDescrTy_PrimTyp_79" { i32 6, i32 0 }
@"$TyDescr_Exception_105" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_79"* @"$TyDescr_Exception_Prim_104" to i8*) }
@"$TyDescr_Bystr_Prim_106" = global %"$TyDescrTy_PrimTyp_79" { i32 7, i32 0 }
@"$TyDescr_Bystr_107" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_79"* @"$TyDescr_Bystr_Prim_106" to i8*) }
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [14 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_103", %_TyDescrTy_Typ* @"$TyDescr_Int64_85", %_TyDescrTy_Typ* @"$TyDescr_Uint256_95", %_TyDescrTy_Typ* @"$TyDescr_Uint32_83", %_TyDescrTy_Typ* @"$TyDescr_Uint64_87", %_TyDescrTy_Typ* @"$TyDescr_Bnum_99", %_TyDescrTy_Typ* @"$TyDescr_Uint128_91", %_TyDescrTy_Typ* @"$TyDescr_Exception_105", %_TyDescrTy_Typ* @"$TyDescr_String_97", %_TyDescrTy_Typ* @"$TyDescr_Int256_93", %_TyDescrTy_Typ* @"$TyDescr_Int128_89", %_TyDescrTy_Typ* @"$TyDescr_Bystr_107", %_TyDescrTy_Typ* @"$TyDescr_Message_101", %_TyDescrTy_Typ* @"$TyDescr_Int32_81"]
@_tydescr_table_length = constant i32 14
@_contract_parameters = constant [0 x %"$ParamDescr_967"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_968"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Uint32 @"$fundef_77"(%"$$fundef_77_env_114"* %0, %Uint32 %1) !dbg !4 {
entry:
  %"$$fundef_77_env_one_689" = getelementptr inbounds %"$$fundef_77_env_114", %"$$fundef_77_env_114"* %0, i32 0, i32 0
  %"$one_envload_690" = load %Uint32, %Uint32* %"$$fundef_77_env_one_689", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_690", %Uint32* %one, align 4
  %"$retval_78" = alloca %Uint32, align 8
  %"$gasrem_691" = load i64, i64* @_gasrem, align 8
  %"$gascmp_692" = icmp ugt i64 4, %"$gasrem_691"
  br i1 %"$gascmp_692", label %"$out_of_gas_693", label %"$have_gas_694"

"$out_of_gas_693":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_694"

"$have_gas_694":                                  ; preds = %"$out_of_gas_693", %entry
  %"$consume_695" = sub i64 %"$gasrem_691", 4
  store i64 %"$consume_695", i64* @_gasrem, align 8
  %"$one_696" = load %Uint32, %Uint32* %one, align 4
  %"$add_call_697" = call %Uint32 @_add_Uint32(%Uint32 %"$one_696", %Uint32 %1), !dbg !8
  store %Uint32 %"$add_call_697", %Uint32* %"$retval_78", align 4, !dbg !8
  %"$$retval_78_698" = load %Uint32, %Uint32* %"$retval_78", align 4
  ret %Uint32 %"$$retval_78_698"
}

define internal %Uint32 @"$fundef_75"(%"$$fundef_75_env_115"* %0, { i8*, i8* }* %1) !dbg !9 {
entry:
  %"$retval_76" = alloca %Uint32, align 8
  %"$gasrem_620" = load i64, i64* @_gasrem, align 8
  %"$gascmp_621" = icmp ugt i64 1, %"$gasrem_620"
  br i1 %"$gascmp_621", label %"$out_of_gas_622", label %"$have_gas_623"

"$out_of_gas_622":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_623"

"$have_gas_623":                                  ; preds = %"$out_of_gas_622", %entry
  %"$consume_624" = sub i64 %"$gasrem_620", 1
  store i64 %"$consume_624", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_625" = load i64, i64* @_gasrem, align 8
  %"$gascmp_626" = icmp ugt i64 1, %"$gasrem_625"
  br i1 %"$gascmp_626", label %"$out_of_gas_627", label %"$have_gas_628"

"$out_of_gas_627":                                ; preds = %"$have_gas_623"
  call void @_out_of_gas()
  br label %"$have_gas_628"

"$have_gas_628":                                  ; preds = %"$out_of_gas_627", %"$have_gas_623"
  %"$consume_629" = sub i64 %"$gasrem_625", 1
  store i64 %"$consume_629", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4, !dbg !10
  %"$gasrem_630" = load i64, i64* @_gasrem, align 8
  %"$gascmp_631" = icmp ugt i64 1, %"$gasrem_630"
  br i1 %"$gascmp_631", label %"$out_of_gas_632", label %"$have_gas_633"

"$out_of_gas_632":                                ; preds = %"$have_gas_628"
  call void @_out_of_gas()
  br label %"$have_gas_633"

"$have_gas_633":                                  ; preds = %"$out_of_gas_632", %"$have_gas_628"
  %"$consume_634" = sub i64 %"$gasrem_630", 1
  store i64 %"$consume_634", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_635" = load i64, i64* @_gasrem, align 8
  %"$gascmp_636" = icmp ugt i64 1, %"$gasrem_635"
  br i1 %"$gascmp_636", label %"$out_of_gas_637", label %"$have_gas_638"

"$out_of_gas_637":                                ; preds = %"$have_gas_633"
  call void @_out_of_gas()
  br label %"$have_gas_638"

"$have_gas_638":                                  ; preds = %"$out_of_gas_637", %"$have_gas_633"
  %"$consume_639" = sub i64 %"$gasrem_635", 1
  store i64 %"$consume_639", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !11
  %"$gasrem_640" = load i64, i64* @_gasrem, align 8
  %"$gascmp_641" = icmp ugt i64 1, %"$gasrem_640"
  br i1 %"$gascmp_641", label %"$out_of_gas_642", label %"$have_gas_643"

"$out_of_gas_642":                                ; preds = %"$have_gas_638"
  call void @_out_of_gas()
  br label %"$have_gas_643"

"$have_gas_643":                                  ; preds = %"$out_of_gas_642", %"$have_gas_638"
  %"$consume_644" = sub i64 %"$gasrem_640", 1
  store i64 %"$consume_644", i64* @_gasrem, align 8
  %add1 = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_645" = load i64, i64* @_gasrem, align 8
  %"$gascmp_646" = icmp ugt i64 1, %"$gasrem_645"
  br i1 %"$gascmp_646", label %"$out_of_gas_647", label %"$have_gas_648"

"$out_of_gas_647":                                ; preds = %"$have_gas_643"
  call void @_out_of_gas()
  br label %"$have_gas_648"

"$have_gas_648":                                  ; preds = %"$out_of_gas_647", %"$have_gas_643"
  %"$consume_649" = sub i64 %"$gasrem_645", 1
  store i64 %"$consume_649", i64* @_gasrem, align 8
  %"$$fundef_77_envp_650_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_77_envp_650_salloc" = call i8* @_salloc(i8* %"$$fundef_77_envp_650_load", i64 4)
  %"$$fundef_77_envp_650" = bitcast i8* %"$$fundef_77_envp_650_salloc" to %"$$fundef_77_env_114"*
  %"$$fundef_77_env_voidp_652" = bitcast %"$$fundef_77_env_114"* %"$$fundef_77_envp_650" to i8*
  %"$$fundef_77_cloval_653" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_77_env_114"*, %Uint32)* @"$fundef_77" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_77_env_voidp_652", 1
  %"$$fundef_77_env_one_654" = getelementptr inbounds %"$$fundef_77_env_114", %"$$fundef_77_env_114"* %"$$fundef_77_envp_650", i32 0, i32 0
  %"$one_655" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_655", %Uint32* %"$$fundef_77_env_one_654", align 4
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_77_cloval_653", { %Uint32 (i8*, %Uint32)*, i8* }* %add1, align 8, !dbg !12
  %"$gasrem_656" = load i64, i64* @_gasrem, align 8
  %"$gascmp_657" = icmp ugt i64 1, %"$gasrem_656"
  br i1 %"$gascmp_657", label %"$out_of_gas_658", label %"$have_gas_659"

"$out_of_gas_658":                                ; preds = %"$have_gas_648"
  call void @_out_of_gas()
  br label %"$have_gas_659"

"$have_gas_659":                                  ; preds = %"$out_of_gas_658", %"$have_gas_648"
  %"$consume_660" = sub i64 %"$gasrem_656", 1
  store i64 %"$consume_660", i64* @_gasrem, align 8
  %c32 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_661" = load i64, i64* @_gasrem, align 8
  %"$gascmp_662" = icmp ugt i64 1, %"$gasrem_661"
  br i1 %"$gascmp_662", label %"$out_of_gas_663", label %"$have_gas_664"

"$out_of_gas_663":                                ; preds = %"$have_gas_659"
  call void @_out_of_gas()
  br label %"$have_gas_664"

"$have_gas_664":                                  ; preds = %"$out_of_gas_663", %"$have_gas_659"
  %"$consume_665" = sub i64 %"$gasrem_661", 1
  store i64 %"$consume_665", i64* @_gasrem, align 8
  %"$c_666" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 0
  %"$c_667" = bitcast { i8*, i8* }* %"$c_666" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$c_668" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$c_667", align 8
  %"$c_fptr_669" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$c_668", 0
  %"$c_envptr_670" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$c_668", 1
  %"$c_call_671" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c_fptr_669"(i8* %"$c_envptr_670"), !dbg !13
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c_call_671", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c32, align 8, !dbg !14
  %"$gasrem_672" = load i64, i64* @_gasrem, align 8
  %"$gascmp_673" = icmp ugt i64 1, %"$gasrem_672"
  br i1 %"$gascmp_673", label %"$out_of_gas_674", label %"$have_gas_675"

"$out_of_gas_674":                                ; preds = %"$have_gas_664"
  call void @_out_of_gas()
  br label %"$have_gas_675"

"$have_gas_675":                                  ; preds = %"$out_of_gas_674", %"$have_gas_664"
  %"$consume_676" = sub i64 %"$gasrem_672", 1
  store i64 %"$consume_676", i64* @_gasrem, align 8
  %"$c32_15" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$c32_677" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c32, align 8
  %"$c32_fptr_678" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c32_677", 0
  %"$c32_envptr_679" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c32_677", 1
  %"$add1_680" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %add1, align 8
  %"$c32_call_681" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_fptr_678"(i8* %"$c32_envptr_679", { %Uint32 (i8*, %Uint32)*, i8* } %"$add1_680"), !dbg !15
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_call_681", { %Uint32 (i8*, %Uint32)*, i8* }* %"$c32_15", align 8, !dbg !15
  %"$c32_16" = alloca %Uint32, align 8
  %"$$c32_15_682" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$c32_15", align 8
  %"$$c32_15_fptr_683" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$c32_15_682", 0
  %"$$c32_15_envptr_684" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$c32_15_682", 1
  %"$zero_685" = load %Uint32, %Uint32* %zero, align 4
  %"$$c32_15_call_686" = call %Uint32 %"$$c32_15_fptr_683"(i8* %"$$c32_15_envptr_684", %Uint32 %"$zero_685"), !dbg !15
  store %Uint32 %"$$c32_15_call_686", %Uint32* %"$c32_16", align 4, !dbg !15
  %"$$c32_16_687" = load %Uint32, %Uint32* %"$c32_16", align 4
  store %Uint32 %"$$c32_16_687", %Uint32* %"$retval_76", align 4, !dbg !15
  %"$$retval_76_688" = load %Uint32, %Uint32* %"$retval_76", align 4
  ret %Uint32 %"$$retval_76_688"
}

define internal { i8*, i8* }* @"$fundef_73"(%"$$fundef_73_env_116"* %0, { i8*, i8* }* %1) !dbg !16 {
entry:
  %"$$fundef_73_env_c0_565" = getelementptr inbounds %"$$fundef_73_env_116", %"$$fundef_73_env_116"* %0, i32 0, i32 0
  %"$c0_envload_566" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_73_env_c0_565", align 8
  %c0 = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$c0_envload_566", { i8*, i8* }** %c0, align 8
  %"$$fundef_73_env_cadd_567" = getelementptr inbounds %"$$fundef_73_env_116", %"$$fundef_73_env_116"* %0, i32 0, i32 1
  %"$cadd_envload_568" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_73_env_cadd_567", align 8
  %cadd = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_envload_568", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$$fundef_73_env_m_569" = getelementptr inbounds %"$$fundef_73_env_116", %"$$fundef_73_env_116"* %0, i32 0, i32 2
  %"$m_envload_570" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_73_env_m_569", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_570", { i8*, i8* }** %m, align 8
  %"$retval_74" = alloca { i8*, i8* }*, align 8
  %"$gasrem_571" = load i64, i64* @_gasrem, align 8
  %"$gascmp_572" = icmp ugt i64 1, %"$gasrem_571"
  br i1 %"$gascmp_572", label %"$out_of_gas_573", label %"$have_gas_574"

"$out_of_gas_573":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_574"

"$have_gas_574":                                  ; preds = %"$out_of_gas_573", %entry
  %"$consume_575" = sub i64 %"$gasrem_571", 1
  store i64 %"$consume_575", i64* @_gasrem, align 8
  %cadd_m = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_576" = load i64, i64* @_gasrem, align 8
  %"$gascmp_577" = icmp ugt i64 1, %"$gasrem_576"
  br i1 %"$gascmp_577", label %"$out_of_gas_578", label %"$have_gas_579"

"$out_of_gas_578":                                ; preds = %"$have_gas_574"
  call void @_out_of_gas()
  br label %"$have_gas_579"

"$have_gas_579":                                  ; preds = %"$out_of_gas_578", %"$have_gas_574"
  %"$consume_580" = sub i64 %"$gasrem_576", 1
  store i64 %"$consume_580", i64* @_gasrem, align 8
  %"$cadd_12" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cadd_581" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$cadd_fptr_582" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_581", 0
  %"$cadd_envptr_583" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_581", 1
  %"$m_584" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  %"$cadd_call_585" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_fptr_582"(i8* %"$cadd_envptr_583", { i8*, i8* }* %"$m_584"), !dbg !17
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_call_585", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_12", align 8, !dbg !17
  %"$$cadd_12_586" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_12", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_12_586", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %cadd_m, align 8, !dbg !17
  %"$gasrem_587" = load i64, i64* @_gasrem, align 8
  %"$gascmp_588" = icmp ugt i64 1, %"$gasrem_587"
  br i1 %"$gascmp_588", label %"$out_of_gas_589", label %"$have_gas_590"

"$out_of_gas_589":                                ; preds = %"$have_gas_579"
  call void @_out_of_gas()
  br label %"$have_gas_590"

"$have_gas_590":                                  ; preds = %"$out_of_gas_589", %"$have_gas_579"
  %"$consume_591" = sub i64 %"$gasrem_587", 1
  store i64 %"$consume_591", i64* @_gasrem, align 8
  %nI = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_592" = load i64, i64* @_gasrem, align 8
  %"$gascmp_593" = icmp ugt i64 1, %"$gasrem_592"
  br i1 %"$gascmp_593", label %"$out_of_gas_594", label %"$have_gas_595"

"$out_of_gas_594":                                ; preds = %"$have_gas_590"
  call void @_out_of_gas()
  br label %"$have_gas_595"

"$have_gas_595":                                  ; preds = %"$out_of_gas_594", %"$have_gas_590"
  %"$consume_596" = sub i64 %"$gasrem_592", 1
  store i64 %"$consume_596", i64* @_gasrem, align 8
  %"$n_597" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 1
  %"$n_598" = bitcast { i8*, i8* }* %"$n_597" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$n_599" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$n_598", align 8
  %"$n_fptr_600" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_599", 0
  %"$n_envptr_601" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_599", 1
  %"$n_call_602" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_fptr_600"(i8* %"$n_envptr_601"), !dbg !18
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_call_602", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nI, align 8, !dbg !19
  %"$gasrem_603" = load i64, i64* @_gasrem, align 8
  %"$gascmp_604" = icmp ugt i64 1, %"$gasrem_603"
  br i1 %"$gascmp_604", label %"$out_of_gas_605", label %"$have_gas_606"

"$out_of_gas_605":                                ; preds = %"$have_gas_595"
  call void @_out_of_gas()
  br label %"$have_gas_606"

"$have_gas_606":                                  ; preds = %"$out_of_gas_605", %"$have_gas_595"
  %"$consume_607" = sub i64 %"$gasrem_603", 1
  store i64 %"$consume_607", i64* @_gasrem, align 8
  %"$nI_13" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$nI_608" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nI, align 8
  %"$nI_fptr_609" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nI_608", 0
  %"$nI_envptr_610" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nI_608", 1
  %"$cadd_m_611" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %cadd_m, align 8
  %"$nI_call_612" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nI_fptr_609"(i8* %"$nI_envptr_610", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_m_611"), !dbg !20
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nI_call_612", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nI_13", align 8, !dbg !20
  %"$nI_14" = alloca { i8*, i8* }*, align 8
  %"$$nI_13_613" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nI_13", align 8
  %"$$nI_13_fptr_614" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nI_13_613", 0
  %"$$nI_13_envptr_615" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nI_13_613", 1
  %"$c0_616" = load { i8*, i8* }*, { i8*, i8* }** %c0, align 8
  %"$$nI_13_call_617" = call { i8*, i8* }* %"$$nI_13_fptr_614"(i8* %"$$nI_13_envptr_615", { i8*, i8* }* %"$c0_616"), !dbg !20
  store { i8*, i8* }* %"$$nI_13_call_617", { i8*, i8* }** %"$nI_14", align 8, !dbg !20
  %"$$nI_14_618" = load { i8*, i8* }*, { i8*, i8* }** %"$nI_14", align 8
  store { i8*, i8* }* %"$$nI_14_618", { i8*, i8* }** %"$retval_74", align 8, !dbg !20
  %"$$retval_74_619" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_74", align 8
  ret { i8*, i8* }* %"$$retval_74_619"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_71"(%"$$fundef_71_env_117"* %0, { i8*, i8* }* %1) !dbg !21 {
entry:
  %"$$fundef_71_env_c0_546" = getelementptr inbounds %"$$fundef_71_env_117", %"$$fundef_71_env_117"* %0, i32 0, i32 0
  %"$c0_envload_547" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_71_env_c0_546", align 8
  %c0 = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$c0_envload_547", { i8*, i8* }** %c0, align 8
  %"$$fundef_71_env_cadd_548" = getelementptr inbounds %"$$fundef_71_env_117", %"$$fundef_71_env_117"* %0, i32 0, i32 1
  %"$cadd_envload_549" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_71_env_cadd_548", align 8
  %cadd = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_envload_549", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$retval_72" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_550" = load i64, i64* @_gasrem, align 8
  %"$gascmp_551" = icmp ugt i64 1, %"$gasrem_550"
  br i1 %"$gascmp_551", label %"$out_of_gas_552", label %"$have_gas_553"

"$out_of_gas_552":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_553"

"$have_gas_553":                                  ; preds = %"$out_of_gas_552", %entry
  %"$consume_554" = sub i64 %"$gasrem_550", 1
  store i64 %"$consume_554", i64* @_gasrem, align 8
  %"$$fundef_73_envp_555_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_73_envp_555_salloc" = call i8* @_salloc(i8* %"$$fundef_73_envp_555_load", i64 32)
  %"$$fundef_73_envp_555" = bitcast i8* %"$$fundef_73_envp_555_salloc" to %"$$fundef_73_env_116"*
  %"$$fundef_73_env_voidp_557" = bitcast %"$$fundef_73_env_116"* %"$$fundef_73_envp_555" to i8*
  %"$$fundef_73_cloval_558" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_73_env_116"*, { i8*, i8* }*)* @"$fundef_73" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_73_env_voidp_557", 1
  %"$$fundef_73_env_c0_559" = getelementptr inbounds %"$$fundef_73_env_116", %"$$fundef_73_env_116"* %"$$fundef_73_envp_555", i32 0, i32 0
  %"$c0_560" = load { i8*, i8* }*, { i8*, i8* }** %c0, align 8
  store { i8*, i8* }* %"$c0_560", { i8*, i8* }** %"$$fundef_73_env_c0_559", align 8
  %"$$fundef_73_env_cadd_561" = getelementptr inbounds %"$$fundef_73_env_116", %"$$fundef_73_env_116"* %"$$fundef_73_envp_555", i32 0, i32 1
  %"$cadd_562" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_562", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_73_env_cadd_561", align 8
  %"$$fundef_73_env_m_563" = getelementptr inbounds %"$$fundef_73_env_116", %"$$fundef_73_env_116"* %"$$fundef_73_envp_555", i32 0, i32 2
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_73_env_m_563", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_73_cloval_558", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_72", align 8, !dbg !22
  %"$$retval_72_564" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_72", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_72_564"
}

define internal { i8*, i8* }* @"$fundef_69"(%"$$fundef_69_env_118"* %0, { i8*, i8* }* %1) !dbg !23 {
entry:
  %"$$fundef_69_env_m_469" = getelementptr inbounds %"$$fundef_69_env_118", %"$$fundef_69_env_118"* %0, i32 0, i32 0
  %"$m_envload_470" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_69_env_m_469", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_470", { i8*, i8* }** %m, align 8
  %"$$fundef_69_env_n_471" = getelementptr inbounds %"$$fundef_69_env_118", %"$$fundef_69_env_118"* %0, i32 0, i32 1
  %"$n_envload_472" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_69_env_n_471", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_472", { i8*, i8* }** %n, align 8
  %"$$fundef_69_env_s_473" = getelementptr inbounds %"$$fundef_69_env_118", %"$$fundef_69_env_118"* %0, i32 0, i32 2
  %"$s_envload_474" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_69_env_s_473", align 8
  %s = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_envload_474", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$retval_70" = alloca { i8*, i8* }*, align 8
  %"$gasrem_475" = load i64, i64* @_gasrem, align 8
  %"$gascmp_476" = icmp ugt i64 1, %"$gasrem_475"
  br i1 %"$gascmp_476", label %"$out_of_gas_477", label %"$have_gas_478"

"$out_of_gas_477":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_478"

"$have_gas_478":                                  ; preds = %"$out_of_gas_477", %entry
  %"$consume_479" = sub i64 %"$gasrem_475", 1
  store i64 %"$consume_479", i64* @_gasrem, align 8
  %mX = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_480" = load i64, i64* @_gasrem, align 8
  %"$gascmp_481" = icmp ugt i64 1, %"$gasrem_480"
  br i1 %"$gascmp_481", label %"$out_of_gas_482", label %"$have_gas_483"

"$out_of_gas_482":                                ; preds = %"$have_gas_478"
  call void @_out_of_gas()
  br label %"$have_gas_483"

"$have_gas_483":                                  ; preds = %"$out_of_gas_482", %"$have_gas_478"
  %"$consume_484" = sub i64 %"$gasrem_480", 1
  store i64 %"$consume_484", i64* @_gasrem, align 8
  %"$m_485" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  %"$m_486" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$m_485", i32 1
  %"$m_487" = bitcast { i8*, i8* }* %"$m_486" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$m_488" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$m_487", align 8
  %"$m_fptr_489" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$m_488", 0
  %"$m_envptr_490" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$m_488", 1
  %"$m_call_491" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$m_fptr_489"(i8* %"$m_envptr_490"), !dbg !24
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$m_call_491", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %mX, align 8, !dbg !25
  %"$gasrem_492" = load i64, i64* @_gasrem, align 8
  %"$gascmp_493" = icmp ugt i64 1, %"$gasrem_492"
  br i1 %"$gascmp_493", label %"$out_of_gas_494", label %"$have_gas_495"

"$out_of_gas_494":                                ; preds = %"$have_gas_483"
  call void @_out_of_gas()
  br label %"$have_gas_495"

"$have_gas_495":                                  ; preds = %"$out_of_gas_494", %"$have_gas_483"
  %"$consume_496" = sub i64 %"$gasrem_492", 1
  store i64 %"$consume_496", i64* @_gasrem, align 8
  %nX = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_498" = icmp ugt i64 1, %"$gasrem_497"
  br i1 %"$gascmp_498", label %"$out_of_gas_499", label %"$have_gas_500"

"$out_of_gas_499":                                ; preds = %"$have_gas_495"
  call void @_out_of_gas()
  br label %"$have_gas_500"

"$have_gas_500":                                  ; preds = %"$out_of_gas_499", %"$have_gas_495"
  %"$consume_501" = sub i64 %"$gasrem_497", 1
  store i64 %"$consume_501", i64* @_gasrem, align 8
  %"$n_502" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  %"$n_503" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$n_502", i32 1
  %"$n_504" = bitcast { i8*, i8* }* %"$n_503" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$n_505" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$n_504", align 8
  %"$n_fptr_506" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_505", 0
  %"$n_envptr_507" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_505", 1
  %"$n_call_508" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_fptr_506"(i8* %"$n_envptr_507"), !dbg !26
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_call_508", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nX, align 8, !dbg !27
  %"$gasrem_509" = load i64, i64* @_gasrem, align 8
  %"$gascmp_510" = icmp ugt i64 1, %"$gasrem_509"
  br i1 %"$gascmp_510", label %"$out_of_gas_511", label %"$have_gas_512"

"$out_of_gas_511":                                ; preds = %"$have_gas_500"
  call void @_out_of_gas()
  br label %"$have_gas_512"

"$have_gas_512":                                  ; preds = %"$out_of_gas_511", %"$have_gas_500"
  %"$consume_513" = sub i64 %"$gasrem_509", 1
  store i64 %"$consume_513", i64* @_gasrem, align 8
  %nXsz = alloca { i8*, i8* }*, align 8
  %"$gasrem_514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_515" = icmp ugt i64 1, %"$gasrem_514"
  br i1 %"$gascmp_515", label %"$out_of_gas_516", label %"$have_gas_517"

"$out_of_gas_516":                                ; preds = %"$have_gas_512"
  call void @_out_of_gas()
  br label %"$have_gas_517"

"$have_gas_517":                                  ; preds = %"$out_of_gas_516", %"$have_gas_512"
  %"$consume_518" = sub i64 %"$gasrem_514", 1
  store i64 %"$consume_518", i64* @_gasrem, align 8
  %"$nX_8" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$nX_519" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nX, align 8
  %"$nX_fptr_520" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nX_519", 0
  %"$nX_envptr_521" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nX_519", 1
  %"$s_522" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$nX_call_523" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nX_fptr_520"(i8* %"$nX_envptr_521", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_522"), !dbg !28
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nX_call_523", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nX_8", align 8, !dbg !28
  %"$nX_9" = alloca { i8*, i8* }*, align 8
  %"$$nX_8_524" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nX_8", align 8
  %"$$nX_8_fptr_525" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nX_8_524", 0
  %"$$nX_8_envptr_526" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nX_8_524", 1
  %"$$nX_8_call_527" = call { i8*, i8* }* %"$$nX_8_fptr_525"(i8* %"$$nX_8_envptr_526", { i8*, i8* }* %1), !dbg !28
  store { i8*, i8* }* %"$$nX_8_call_527", { i8*, i8* }** %"$nX_9", align 8, !dbg !28
  %"$$nX_9_528" = load { i8*, i8* }*, { i8*, i8* }** %"$nX_9", align 8
  store { i8*, i8* }* %"$$nX_9_528", { i8*, i8* }** %nXsz, align 8, !dbg !28
  %"$gasrem_529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_530" = icmp ugt i64 1, %"$gasrem_529"
  br i1 %"$gascmp_530", label %"$out_of_gas_531", label %"$have_gas_532"

"$out_of_gas_531":                                ; preds = %"$have_gas_517"
  call void @_out_of_gas()
  br label %"$have_gas_532"

"$have_gas_532":                                  ; preds = %"$out_of_gas_531", %"$have_gas_517"
  %"$consume_533" = sub i64 %"$gasrem_529", 1
  store i64 %"$consume_533", i64* @_gasrem, align 8
  %"$mX_10" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$mX_534" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %mX, align 8
  %"$mX_fptr_535" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$mX_534", 0
  %"$mX_envptr_536" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$mX_534", 1
  %"$s_537" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$mX_call_538" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$mX_fptr_535"(i8* %"$mX_envptr_536", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_537"), !dbg !29
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$mX_call_538", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$mX_10", align 8, !dbg !29
  %"$mX_11" = alloca { i8*, i8* }*, align 8
  %"$$mX_10_539" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$mX_10", align 8
  %"$$mX_10_fptr_540" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$mX_10_539", 0
  %"$$mX_10_envptr_541" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$mX_10_539", 1
  %"$nXsz_542" = load { i8*, i8* }*, { i8*, i8* }** %nXsz, align 8
  %"$$mX_10_call_543" = call { i8*, i8* }* %"$$mX_10_fptr_540"(i8* %"$$mX_10_envptr_541", { i8*, i8* }* %"$nXsz_542"), !dbg !29
  store { i8*, i8* }* %"$$mX_10_call_543", { i8*, i8* }** %"$mX_11", align 8, !dbg !29
  %"$$mX_11_544" = load { i8*, i8* }*, { i8*, i8* }** %"$mX_11", align 8
  store { i8*, i8* }* %"$$mX_11_544", { i8*, i8* }** %"$retval_70", align 8, !dbg !29
  %"$$retval_70_545" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_70", align 8
  ret { i8*, i8* }* %"$$retval_70_545"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_67"(%"$$fundef_67_env_119"* %0, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1) !dbg !30 {
entry:
  %"$$fundef_67_env_m_450" = getelementptr inbounds %"$$fundef_67_env_119", %"$$fundef_67_env_119"* %0, i32 0, i32 0
  %"$m_envload_451" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_67_env_m_450", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_451", { i8*, i8* }** %m, align 8
  %"$$fundef_67_env_n_452" = getelementptr inbounds %"$$fundef_67_env_119", %"$$fundef_67_env_119"* %0, i32 0, i32 1
  %"$n_envload_453" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_67_env_n_452", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_453", { i8*, i8* }** %n, align 8
  %"$retval_68" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_454" = load i64, i64* @_gasrem, align 8
  %"$gascmp_455" = icmp ugt i64 1, %"$gasrem_454"
  br i1 %"$gascmp_455", label %"$out_of_gas_456", label %"$have_gas_457"

"$out_of_gas_456":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_457"

"$have_gas_457":                                  ; preds = %"$out_of_gas_456", %entry
  %"$consume_458" = sub i64 %"$gasrem_454", 1
  store i64 %"$consume_458", i64* @_gasrem, align 8
  %"$$fundef_69_envp_459_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_69_envp_459_salloc" = call i8* @_salloc(i8* %"$$fundef_69_envp_459_load", i64 32)
  %"$$fundef_69_envp_459" = bitcast i8* %"$$fundef_69_envp_459_salloc" to %"$$fundef_69_env_118"*
  %"$$fundef_69_env_voidp_461" = bitcast %"$$fundef_69_env_118"* %"$$fundef_69_envp_459" to i8*
  %"$$fundef_69_cloval_462" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_69_env_118"*, { i8*, i8* }*)* @"$fundef_69" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_69_env_voidp_461", 1
  %"$$fundef_69_env_m_463" = getelementptr inbounds %"$$fundef_69_env_118", %"$$fundef_69_env_118"* %"$$fundef_69_envp_459", i32 0, i32 0
  %"$m_464" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  store { i8*, i8* }* %"$m_464", { i8*, i8* }** %"$$fundef_69_env_m_463", align 8
  %"$$fundef_69_env_n_465" = getelementptr inbounds %"$$fundef_69_env_118", %"$$fundef_69_env_118"* %"$$fundef_69_envp_459", i32 0, i32 1
  %"$n_466" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  store { i8*, i8* }* %"$n_466", { i8*, i8* }** %"$$fundef_69_env_n_465", align 8
  %"$$fundef_69_env_s_467" = getelementptr inbounds %"$$fundef_69_env_118", %"$$fundef_69_env_118"* %"$$fundef_69_envp_459", i32 0, i32 2
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_69_env_s_467", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_69_cloval_462", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_68", align 8, !dbg !31
  %"$$retval_68_468" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_68", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_68_468"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } @"$fundef_65"(%"$$fundef_65_env_120"* %0) !dbg !32 {
entry:
  %"$$fundef_65_env_m_432" = getelementptr inbounds %"$$fundef_65_env_120", %"$$fundef_65_env_120"* %0, i32 0, i32 0
  %"$m_envload_433" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_65_env_m_432", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_433", { i8*, i8* }** %m, align 8
  %"$$fundef_65_env_n_434" = getelementptr inbounds %"$$fundef_65_env_120", %"$$fundef_65_env_120"* %0, i32 0, i32 1
  %"$n_envload_435" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_65_env_n_434", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_435", { i8*, i8* }** %n, align 8
  %"$retval_66" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_436" = load i64, i64* @_gasrem, align 8
  %"$gascmp_437" = icmp ugt i64 1, %"$gasrem_436"
  br i1 %"$gascmp_437", label %"$out_of_gas_438", label %"$have_gas_439"

"$out_of_gas_438":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_439"

"$have_gas_439":                                  ; preds = %"$out_of_gas_438", %entry
  %"$consume_440" = sub i64 %"$gasrem_436", 1
  store i64 %"$consume_440", i64* @_gasrem, align 8
  %"$$fundef_67_envp_441_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_67_envp_441_salloc" = call i8* @_salloc(i8* %"$$fundef_67_envp_441_load", i64 16)
  %"$$fundef_67_envp_441" = bitcast i8* %"$$fundef_67_envp_441_salloc" to %"$$fundef_67_env_119"*
  %"$$fundef_67_env_voidp_443" = bitcast %"$$fundef_67_env_119"* %"$$fundef_67_envp_441" to i8*
  %"$$fundef_67_cloval_444" = insertvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_67_env_119"*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* @"$fundef_67" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*), i8* undef }, i8* %"$$fundef_67_env_voidp_443", 1
  %"$$fundef_67_env_m_445" = getelementptr inbounds %"$$fundef_67_env_119", %"$$fundef_67_env_119"* %"$$fundef_67_envp_441", i32 0, i32 0
  %"$m_446" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  store { i8*, i8* }* %"$m_446", { i8*, i8* }** %"$$fundef_67_env_m_445", align 8
  %"$$fundef_67_env_n_447" = getelementptr inbounds %"$$fundef_67_env_119", %"$$fundef_67_env_119"* %"$$fundef_67_envp_441", i32 0, i32 1
  %"$n_448" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  store { i8*, i8* }* %"$n_448", { i8*, i8* }** %"$$fundef_67_env_n_447", align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$fundef_67_cloval_444", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_66", align 8, !dbg !33
  %"$$retval_66_449" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_66", align 8
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$retval_66_449"
}

define internal %Uint32 @"$fundef_63"(%"$$fundef_63_env_121"* %0, %Uint32 %1) !dbg !34 {
entry:
  %"$$fundef_63_env_m_355" = getelementptr inbounds %"$$fundef_63_env_121", %"$$fundef_63_env_121"* %0, i32 0, i32 0
  %"$m_envload_356" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_63_env_m_355", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_356", { i8*, i8* }** %m, align 8
  %"$$fundef_63_env_n_357" = getelementptr inbounds %"$$fundef_63_env_121", %"$$fundef_63_env_121"* %0, i32 0, i32 1
  %"$n_envload_358" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_63_env_n_357", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_358", { i8*, i8* }** %n, align 8
  %"$$fundef_63_env_s_359" = getelementptr inbounds %"$$fundef_63_env_121", %"$$fundef_63_env_121"* %0, i32 0, i32 2
  %"$s_envload_360" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_63_env_s_359", align 8
  %s = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_envload_360", { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$retval_64" = alloca %Uint32, align 8
  %"$gasrem_361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_362" = icmp ugt i64 1, %"$gasrem_361"
  br i1 %"$gascmp_362", label %"$out_of_gas_363", label %"$have_gas_364"

"$out_of_gas_363":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_364"

"$have_gas_364":                                  ; preds = %"$out_of_gas_363", %entry
  %"$consume_365" = sub i64 %"$gasrem_361", 1
  store i64 %"$consume_365", i64* @_gasrem, align 8
  %mX = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_367" = icmp ugt i64 1, %"$gasrem_366"
  br i1 %"$gascmp_367", label %"$out_of_gas_368", label %"$have_gas_369"

"$out_of_gas_368":                                ; preds = %"$have_gas_364"
  call void @_out_of_gas()
  br label %"$have_gas_369"

"$have_gas_369":                                  ; preds = %"$out_of_gas_368", %"$have_gas_364"
  %"$consume_370" = sub i64 %"$gasrem_366", 1
  store i64 %"$consume_370", i64* @_gasrem, align 8
  %"$m_371" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  %"$m_372" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$m_371", i32 0
  %"$m_373" = bitcast { i8*, i8* }* %"$m_372" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$m_374" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$m_373", align 8
  %"$m_fptr_375" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$m_374", 0
  %"$m_envptr_376" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$m_374", 1
  %"$m_call_377" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_fptr_375"(i8* %"$m_envptr_376"), !dbg !35
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_call_377", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %mX, align 8, !dbg !36
  %"$gasrem_378" = load i64, i64* @_gasrem, align 8
  %"$gascmp_379" = icmp ugt i64 1, %"$gasrem_378"
  br i1 %"$gascmp_379", label %"$out_of_gas_380", label %"$have_gas_381"

"$out_of_gas_380":                                ; preds = %"$have_gas_369"
  call void @_out_of_gas()
  br label %"$have_gas_381"

"$have_gas_381":                                  ; preds = %"$out_of_gas_380", %"$have_gas_369"
  %"$consume_382" = sub i64 %"$gasrem_378", 1
  store i64 %"$consume_382", i64* @_gasrem, align 8
  %nX = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_383" = load i64, i64* @_gasrem, align 8
  %"$gascmp_384" = icmp ugt i64 1, %"$gasrem_383"
  br i1 %"$gascmp_384", label %"$out_of_gas_385", label %"$have_gas_386"

"$out_of_gas_385":                                ; preds = %"$have_gas_381"
  call void @_out_of_gas()
  br label %"$have_gas_386"

"$have_gas_386":                                  ; preds = %"$out_of_gas_385", %"$have_gas_381"
  %"$consume_387" = sub i64 %"$gasrem_383", 1
  store i64 %"$consume_387", i64* @_gasrem, align 8
  %"$n_388" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  %"$n_389" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$n_388", i32 0
  %"$n_390" = bitcast { i8*, i8* }* %"$n_389" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$n_391" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$n_390", align 8
  %"$n_fptr_392" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$n_391", 0
  %"$n_envptr_393" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$n_391", 1
  %"$n_call_394" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_fptr_392"(i8* %"$n_envptr_393"), !dbg !37
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_call_394", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %nX, align 8, !dbg !38
  %"$gasrem_395" = load i64, i64* @_gasrem, align 8
  %"$gascmp_396" = icmp ugt i64 1, %"$gasrem_395"
  br i1 %"$gascmp_396", label %"$out_of_gas_397", label %"$have_gas_398"

"$out_of_gas_397":                                ; preds = %"$have_gas_386"
  call void @_out_of_gas()
  br label %"$have_gas_398"

"$have_gas_398":                                  ; preds = %"$out_of_gas_397", %"$have_gas_386"
  %"$consume_399" = sub i64 %"$gasrem_395", 1
  store i64 %"$consume_399", i64* @_gasrem, align 8
  %nXsz = alloca %Uint32, align 8
  %"$gasrem_400" = load i64, i64* @_gasrem, align 8
  %"$gascmp_401" = icmp ugt i64 1, %"$gasrem_400"
  br i1 %"$gascmp_401", label %"$out_of_gas_402", label %"$have_gas_403"

"$out_of_gas_402":                                ; preds = %"$have_gas_398"
  call void @_out_of_gas()
  br label %"$have_gas_403"

"$have_gas_403":                                  ; preds = %"$out_of_gas_402", %"$have_gas_398"
  %"$consume_404" = sub i64 %"$gasrem_400", 1
  store i64 %"$consume_404", i64* @_gasrem, align 8
  %"$nX_8" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$nX_405" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %nX, align 8
  %"$nX_fptr_406" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$nX_405", 0
  %"$nX_envptr_407" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$nX_405", 1
  %"$s_408" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$nX_call_409" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_fptr_406"(i8* %"$nX_envptr_407", { %Uint32 (i8*, %Uint32)*, i8* } %"$s_408"), !dbg !39
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_call_409", { %Uint32 (i8*, %Uint32)*, i8* }* %"$nX_8", align 8, !dbg !39
  %"$nX_9" = alloca %Uint32, align 8
  %"$$nX_8_410" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$nX_8", align 8
  %"$$nX_8_fptr_411" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$nX_8_410", 0
  %"$$nX_8_envptr_412" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$nX_8_410", 1
  %"$$nX_8_call_413" = call %Uint32 %"$$nX_8_fptr_411"(i8* %"$$nX_8_envptr_412", %Uint32 %1), !dbg !39
  store %Uint32 %"$$nX_8_call_413", %Uint32* %"$nX_9", align 4, !dbg !39
  %"$$nX_9_414" = load %Uint32, %Uint32* %"$nX_9", align 4
  store %Uint32 %"$$nX_9_414", %Uint32* %nXsz, align 4, !dbg !39
  %"$gasrem_415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_416" = icmp ugt i64 1, %"$gasrem_415"
  br i1 %"$gascmp_416", label %"$out_of_gas_417", label %"$have_gas_418"

"$out_of_gas_417":                                ; preds = %"$have_gas_403"
  call void @_out_of_gas()
  br label %"$have_gas_418"

"$have_gas_418":                                  ; preds = %"$out_of_gas_417", %"$have_gas_403"
  %"$consume_419" = sub i64 %"$gasrem_415", 1
  store i64 %"$consume_419", i64* @_gasrem, align 8
  %"$mX_10" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$mX_420" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %mX, align 8
  %"$mX_fptr_421" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$mX_420", 0
  %"$mX_envptr_422" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$mX_420", 1
  %"$s_423" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$mX_call_424" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$mX_fptr_421"(i8* %"$mX_envptr_422", { %Uint32 (i8*, %Uint32)*, i8* } %"$s_423"), !dbg !40
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$mX_call_424", { %Uint32 (i8*, %Uint32)*, i8* }* %"$mX_10", align 8, !dbg !40
  %"$mX_11" = alloca %Uint32, align 8
  %"$$mX_10_425" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$mX_10", align 8
  %"$$mX_10_fptr_426" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$mX_10_425", 0
  %"$$mX_10_envptr_427" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$mX_10_425", 1
  %"$nXsz_428" = load %Uint32, %Uint32* %nXsz, align 4
  %"$$mX_10_call_429" = call %Uint32 %"$$mX_10_fptr_426"(i8* %"$$mX_10_envptr_427", %Uint32 %"$nXsz_428"), !dbg !40
  store %Uint32 %"$$mX_10_call_429", %Uint32* %"$mX_11", align 4, !dbg !40
  %"$$mX_11_430" = load %Uint32, %Uint32* %"$mX_11", align 4
  store %Uint32 %"$$mX_11_430", %Uint32* %"$retval_64", align 4, !dbg !40
  %"$$retval_64_431" = load %Uint32, %Uint32* %"$retval_64", align 4
  ret %Uint32 %"$$retval_64_431"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_61"(%"$$fundef_61_env_122"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) !dbg !41 {
entry:
  %"$$fundef_61_env_m_336" = getelementptr inbounds %"$$fundef_61_env_122", %"$$fundef_61_env_122"* %0, i32 0, i32 0
  %"$m_envload_337" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_61_env_m_336", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_337", { i8*, i8* }** %m, align 8
  %"$$fundef_61_env_n_338" = getelementptr inbounds %"$$fundef_61_env_122", %"$$fundef_61_env_122"* %0, i32 0, i32 1
  %"$n_envload_339" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_61_env_n_338", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_339", { i8*, i8* }** %n, align 8
  %"$retval_62" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 1, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %entry
  %"$consume_344" = sub i64 %"$gasrem_340", 1
  store i64 %"$consume_344", i64* @_gasrem, align 8
  %"$$fundef_63_envp_345_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_63_envp_345_salloc" = call i8* @_salloc(i8* %"$$fundef_63_envp_345_load", i64 32)
  %"$$fundef_63_envp_345" = bitcast i8* %"$$fundef_63_envp_345_salloc" to %"$$fundef_63_env_121"*
  %"$$fundef_63_env_voidp_347" = bitcast %"$$fundef_63_env_121"* %"$$fundef_63_envp_345" to i8*
  %"$$fundef_63_cloval_348" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_63_env_121"*, %Uint32)* @"$fundef_63" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_63_env_voidp_347", 1
  %"$$fundef_63_env_m_349" = getelementptr inbounds %"$$fundef_63_env_121", %"$$fundef_63_env_121"* %"$$fundef_63_envp_345", i32 0, i32 0
  %"$m_350" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  store { i8*, i8* }* %"$m_350", { i8*, i8* }** %"$$fundef_63_env_m_349", align 8
  %"$$fundef_63_env_n_351" = getelementptr inbounds %"$$fundef_63_env_121", %"$$fundef_63_env_121"* %"$$fundef_63_envp_345", i32 0, i32 1
  %"$n_352" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  store { i8*, i8* }* %"$n_352", { i8*, i8* }** %"$$fundef_63_env_n_351", align 8
  %"$$fundef_63_env_s_353" = getelementptr inbounds %"$$fundef_63_env_121", %"$$fundef_63_env_121"* %"$$fundef_63_envp_345", i32 0, i32 2
  store { %Uint32 (i8*, %Uint32)*, i8* } %1, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_63_env_s_353", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_63_cloval_348", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_62", align 8, !dbg !42
  %"$$retval_62_354" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_62", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_62_354"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_59"(%"$$fundef_59_env_123"* %0) !dbg !43 {
entry:
  %"$$fundef_59_env_m_318" = getelementptr inbounds %"$$fundef_59_env_123", %"$$fundef_59_env_123"* %0, i32 0, i32 0
  %"$m_envload_319" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_59_env_m_318", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_319", { i8*, i8* }** %m, align 8
  %"$$fundef_59_env_n_320" = getelementptr inbounds %"$$fundef_59_env_123", %"$$fundef_59_env_123"* %0, i32 0, i32 1
  %"$n_envload_321" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_59_env_n_320", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_321", { i8*, i8* }** %n, align 8
  %"$retval_60" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_322" = load i64, i64* @_gasrem, align 8
  %"$gascmp_323" = icmp ugt i64 1, %"$gasrem_322"
  br i1 %"$gascmp_323", label %"$out_of_gas_324", label %"$have_gas_325"

"$out_of_gas_324":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_325"

"$have_gas_325":                                  ; preds = %"$out_of_gas_324", %entry
  %"$consume_326" = sub i64 %"$gasrem_322", 1
  store i64 %"$consume_326", i64* @_gasrem, align 8
  %"$$fundef_61_envp_327_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_61_envp_327_salloc" = call i8* @_salloc(i8* %"$$fundef_61_envp_327_load", i64 16)
  %"$$fundef_61_envp_327" = bitcast i8* %"$$fundef_61_envp_327_salloc" to %"$$fundef_61_env_122"*
  %"$$fundef_61_env_voidp_329" = bitcast %"$$fundef_61_env_122"* %"$$fundef_61_envp_327" to i8*
  %"$$fundef_61_cloval_330" = insertvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_61_env_122"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_61" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* undef }, i8* %"$$fundef_61_env_voidp_329", 1
  %"$$fundef_61_env_m_331" = getelementptr inbounds %"$$fundef_61_env_122", %"$$fundef_61_env_122"* %"$$fundef_61_envp_327", i32 0, i32 0
  %"$m_332" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  store { i8*, i8* }* %"$m_332", { i8*, i8* }** %"$$fundef_61_env_m_331", align 8
  %"$$fundef_61_env_n_333" = getelementptr inbounds %"$$fundef_61_env_122", %"$$fundef_61_env_122"* %"$$fundef_61_envp_327", i32 0, i32 1
  %"$n_334" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  store { i8*, i8* }* %"$n_334", { i8*, i8* }** %"$$fundef_61_env_n_333", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$fundef_61_cloval_330", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_60", align 8, !dbg !44
  %"$$retval_60_335" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_60", align 8
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_60_335"
}

define internal { i8*, i8* }* @"$fundef_57"(%"$$fundef_57_env_124"* %0, { i8*, i8* }* %1) !dbg !45 {
entry:
  %"$$fundef_57_env_m_295" = getelementptr inbounds %"$$fundef_57_env_124", %"$$fundef_57_env_124"* %0, i32 0, i32 0
  %"$m_envload_296" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_57_env_m_295", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_296", { i8*, i8* }** %m, align 8
  %"$retval_58" = alloca { i8*, i8* }*, align 8
  %"$gasrem_297" = load i64, i64* @_gasrem, align 8
  %"$gascmp_298" = icmp ugt i64 1, %"$gasrem_297"
  br i1 %"$gascmp_298", label %"$out_of_gas_299", label %"$have_gas_300"

"$out_of_gas_299":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_300"

"$have_gas_300":                                  ; preds = %"$out_of_gas_299", %entry
  %"$consume_301" = sub i64 %"$gasrem_297", 1
  store i64 %"$consume_301", i64* @_gasrem, align 8
  %"$$fundef_59_envp_302_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_59_envp_302_salloc" = call i8* @_salloc(i8* %"$$fundef_59_envp_302_load", i64 16)
  %"$$fundef_59_envp_302" = bitcast i8* %"$$fundef_59_envp_302_salloc" to %"$$fundef_59_env_123"*
  %"$$fundef_59_env_voidp_304" = bitcast %"$$fundef_59_env_123"* %"$$fundef_59_envp_302" to i8*
  %"$$fundef_59_cloval_305" = insertvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_59_env_123"*)* @"$fundef_59" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_59_env_voidp_304", 1
  %"$$fundef_59_env_m_306" = getelementptr inbounds %"$$fundef_59_env_123", %"$$fundef_59_env_123"* %"$$fundef_59_envp_302", i32 0, i32 0
  %"$m_307" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  store { i8*, i8* }* %"$m_307", { i8*, i8* }** %"$$fundef_59_env_m_306", align 8
  %"$$fundef_59_env_n_308" = getelementptr inbounds %"$$fundef_59_env_123", %"$$fundef_59_env_123"* %"$$fundef_59_envp_302", i32 0, i32 1
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_59_env_n_308", align 8
  %"$$fundef_65_env_voidp_310" = bitcast %"$$fundef_59_env_123"* %"$$fundef_59_envp_302" to i8*
  %"$$fundef_65_cloval_311" = insertvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (%"$$fundef_65_env_120"*)* @"$fundef_65" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_65_env_voidp_310", 1
  %"$dyndisp_table_312_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_312_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_312_salloc_load", i64 32)
  %"$dyndisp_table_312_salloc" = bitcast i8* %"$dyndisp_table_312_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_312" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_312_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_313" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_312", i32 0
  %"$dyndisp_pcast_314" = bitcast { i8*, i8* }* %"$dyndisp_gep_313" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_59_cloval_305", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_314", align 8
  %"$dyndisp_gep_315" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_312", i32 1
  %"$dyndisp_pcast_316" = bitcast { i8*, i8* }* %"$dyndisp_gep_315" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_65_cloval_311", { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_316", align 8
  store { i8*, i8* }* %"$dyndisp_table_312", { i8*, i8* }** %"$retval_58", align 8, !dbg !46
  %"$$retval_58_317" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_58", align 8
  ret { i8*, i8* }* %"$$retval_58_317"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_55"(%"$$fundef_55_env_125"* %0, { i8*, i8* }* %1) !dbg !47 {
entry:
  %"$retval_56" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 1, %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %entry
  %"$consume_288" = sub i64 %"$gasrem_284", 1
  store i64 %"$consume_288", i64* @_gasrem, align 8
  %"$$fundef_57_envp_289_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_57_envp_289_salloc" = call i8* @_salloc(i8* %"$$fundef_57_envp_289_load", i64 8)
  %"$$fundef_57_envp_289" = bitcast i8* %"$$fundef_57_envp_289_salloc" to %"$$fundef_57_env_124"*
  %"$$fundef_57_env_voidp_291" = bitcast %"$$fundef_57_env_124"* %"$$fundef_57_envp_289" to i8*
  %"$$fundef_57_cloval_292" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_57_env_124"*, { i8*, i8* }*)* @"$fundef_57" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_57_env_voidp_291", 1
  %"$$fundef_57_env_m_293" = getelementptr inbounds %"$$fundef_57_env_124", %"$$fundef_57_env_124"* %"$$fundef_57_envp_289", i32 0, i32 0
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_57_env_m_293", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_57_cloval_292", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_56", align 8, !dbg !48
  %"$$retval_56_294" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_56", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_56_294"
}

define internal { i8*, i8* }* @"$fundef_53"(%"$$fundef_53_env_126"* %0, { i8*, i8* }* %1) !dbg !49 {
entry:
  %"$$fundef_53_env_s_255" = getelementptr inbounds %"$$fundef_53_env_126", %"$$fundef_53_env_126"* %0, i32 0, i32 0
  %"$s_envload_256" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_53_env_s_255", align 8
  %s = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_envload_256", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$retval_54" = alloca { i8*, i8* }*, align 8
  %"$gasrem_257" = load i64, i64* @_gasrem, align 8
  %"$gascmp_258" = icmp ugt i64 1, %"$gasrem_257"
  br i1 %"$gascmp_258", label %"$out_of_gas_259", label %"$have_gas_260"

"$out_of_gas_259":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_260"

"$have_gas_260":                                  ; preds = %"$out_of_gas_259", %entry
  %"$consume_261" = sub i64 %"$gasrem_257", 1
  store i64 %"$consume_261", i64* @_gasrem, align 8
  %sz = alloca { i8*, i8* }*, align 8
  %"$gasrem_262" = load i64, i64* @_gasrem, align 8
  %"$gascmp_263" = icmp ugt i64 1, %"$gasrem_262"
  br i1 %"$gascmp_263", label %"$out_of_gas_264", label %"$have_gas_265"

"$out_of_gas_264":                                ; preds = %"$have_gas_260"
  call void @_out_of_gas()
  br label %"$have_gas_265"

"$have_gas_265":                                  ; preds = %"$out_of_gas_264", %"$have_gas_260"
  %"$consume_266" = sub i64 %"$gasrem_262", 1
  store i64 %"$consume_266", i64* @_gasrem, align 8
  %"$s_6" = alloca { i8*, i8* }*, align 8
  %"$s_267" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$s_fptr_268" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_267", 0
  %"$s_envptr_269" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_267", 1
  %"$s_call_270" = call { i8*, i8* }* %"$s_fptr_268"(i8* %"$s_envptr_269", { i8*, i8* }* %1), !dbg !50
  store { i8*, i8* }* %"$s_call_270", { i8*, i8* }** %"$s_6", align 8, !dbg !50
  %"$$s_6_271" = load { i8*, i8* }*, { i8*, i8* }** %"$s_6", align 8
  store { i8*, i8* }* %"$$s_6_271", { i8*, i8* }** %sz, align 8, !dbg !50
  %"$gasrem_272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_273" = icmp ugt i64 1, %"$gasrem_272"
  br i1 %"$gascmp_273", label %"$out_of_gas_274", label %"$have_gas_275"

"$out_of_gas_274":                                ; preds = %"$have_gas_265"
  call void @_out_of_gas()
  br label %"$have_gas_275"

"$have_gas_275":                                  ; preds = %"$out_of_gas_274", %"$have_gas_265"
  %"$consume_276" = sub i64 %"$gasrem_272", 1
  store i64 %"$consume_276", i64* @_gasrem, align 8
  %"$s_7" = alloca { i8*, i8* }*, align 8
  %"$s_277" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$s_fptr_278" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_277", 0
  %"$s_envptr_279" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_277", 1
  %"$sz_280" = load { i8*, i8* }*, { i8*, i8* }** %sz, align 8
  %"$s_call_281" = call { i8*, i8* }* %"$s_fptr_278"(i8* %"$s_envptr_279", { i8*, i8* }* %"$sz_280"), !dbg !51
  store { i8*, i8* }* %"$s_call_281", { i8*, i8* }** %"$s_7", align 8, !dbg !51
  %"$$s_7_282" = load { i8*, i8* }*, { i8*, i8* }** %"$s_7", align 8
  store { i8*, i8* }* %"$$s_7_282", { i8*, i8* }** %"$retval_54", align 8, !dbg !51
  %"$$retval_54_283" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_54", align 8
  ret { i8*, i8* }* %"$$retval_54_283"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_51"(%"$$fundef_51_env_127"* %0, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1) !dbg !52 {
entry:
  %"$retval_52" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_245" = icmp ugt i64 1, %"$gasrem_244"
  br i1 %"$gascmp_245", label %"$out_of_gas_246", label %"$have_gas_247"

"$out_of_gas_246":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_247"

"$have_gas_247":                                  ; preds = %"$out_of_gas_246", %entry
  %"$consume_248" = sub i64 %"$gasrem_244", 1
  store i64 %"$consume_248", i64* @_gasrem, align 8
  %"$$fundef_53_envp_249_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_53_envp_249_salloc" = call i8* @_salloc(i8* %"$$fundef_53_envp_249_load", i64 16)
  %"$$fundef_53_envp_249" = bitcast i8* %"$$fundef_53_envp_249_salloc" to %"$$fundef_53_env_126"*
  %"$$fundef_53_env_voidp_251" = bitcast %"$$fundef_53_env_126"* %"$$fundef_53_envp_249" to i8*
  %"$$fundef_53_cloval_252" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_53_env_126"*, { i8*, i8* }*)* @"$fundef_53" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_53_env_voidp_251", 1
  %"$$fundef_53_env_s_253" = getelementptr inbounds %"$$fundef_53_env_126", %"$$fundef_53_env_126"* %"$$fundef_53_envp_249", i32 0, i32 0
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_53_env_s_253", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_53_cloval_252", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_52", align 8, !dbg !53
  %"$$retval_52_254" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_52", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_52_254"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } @"$fundef_49"(%"$$fundef_49_env_128"* %0) !dbg !54 {
entry:
  %"$retval_50" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_236" = icmp ugt i64 1, %"$gasrem_235"
  br i1 %"$gascmp_236", label %"$out_of_gas_237", label %"$have_gas_238"

"$out_of_gas_237":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_238"

"$have_gas_238":                                  ; preds = %"$out_of_gas_237", %entry
  %"$consume_239" = sub i64 %"$gasrem_235", 1
  store i64 %"$consume_239", i64* @_gasrem, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_51_env_127"*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* @"$fundef_51" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*), i8* null }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_50", align 8, !dbg !55
  %"$$retval_50_243" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_50", align 8
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$retval_50_243"
}

define internal %Uint32 @"$fundef_47"(%"$$fundef_47_env_129"* %0, %Uint32 %1) !dbg !56 {
entry:
  %"$$fundef_47_env_s_206" = getelementptr inbounds %"$$fundef_47_env_129", %"$$fundef_47_env_129"* %0, i32 0, i32 0
  %"$s_envload_207" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_47_env_s_206", align 8
  %s = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_envload_207", { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$retval_48" = alloca %Uint32, align 8
  %"$gasrem_208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_209" = icmp ugt i64 1, %"$gasrem_208"
  br i1 %"$gascmp_209", label %"$out_of_gas_210", label %"$have_gas_211"

"$out_of_gas_210":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_211"

"$have_gas_211":                                  ; preds = %"$out_of_gas_210", %entry
  %"$consume_212" = sub i64 %"$gasrem_208", 1
  store i64 %"$consume_212", i64* @_gasrem, align 8
  %sz = alloca %Uint32, align 8
  %"$gasrem_213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_214" = icmp ugt i64 1, %"$gasrem_213"
  br i1 %"$gascmp_214", label %"$out_of_gas_215", label %"$have_gas_216"

"$out_of_gas_215":                                ; preds = %"$have_gas_211"
  call void @_out_of_gas()
  br label %"$have_gas_216"

"$have_gas_216":                                  ; preds = %"$out_of_gas_215", %"$have_gas_211"
  %"$consume_217" = sub i64 %"$gasrem_213", 1
  store i64 %"$consume_217", i64* @_gasrem, align 8
  %"$s_6" = alloca %Uint32, align 8
  %"$s_218" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$s_fptr_219" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_218", 0
  %"$s_envptr_220" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_218", 1
  %"$s_call_221" = call %Uint32 %"$s_fptr_219"(i8* %"$s_envptr_220", %Uint32 %1), !dbg !57
  store %Uint32 %"$s_call_221", %Uint32* %"$s_6", align 4, !dbg !57
  %"$$s_6_222" = load %Uint32, %Uint32* %"$s_6", align 4
  store %Uint32 %"$$s_6_222", %Uint32* %sz, align 4, !dbg !57
  %"$gasrem_223" = load i64, i64* @_gasrem, align 8
  %"$gascmp_224" = icmp ugt i64 1, %"$gasrem_223"
  br i1 %"$gascmp_224", label %"$out_of_gas_225", label %"$have_gas_226"

"$out_of_gas_225":                                ; preds = %"$have_gas_216"
  call void @_out_of_gas()
  br label %"$have_gas_226"

"$have_gas_226":                                  ; preds = %"$out_of_gas_225", %"$have_gas_216"
  %"$consume_227" = sub i64 %"$gasrem_223", 1
  store i64 %"$consume_227", i64* @_gasrem, align 8
  %"$s_7" = alloca %Uint32, align 8
  %"$s_228" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$s_fptr_229" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_228", 0
  %"$s_envptr_230" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_228", 1
  %"$sz_231" = load %Uint32, %Uint32* %sz, align 4
  %"$s_call_232" = call %Uint32 %"$s_fptr_229"(i8* %"$s_envptr_230", %Uint32 %"$sz_231"), !dbg !58
  store %Uint32 %"$s_call_232", %Uint32* %"$s_7", align 4, !dbg !58
  %"$$s_7_233" = load %Uint32, %Uint32* %"$s_7", align 4
  store %Uint32 %"$$s_7_233", %Uint32* %"$retval_48", align 4, !dbg !58
  %"$$retval_48_234" = load %Uint32, %Uint32* %"$retval_48", align 4
  ret %Uint32 %"$$retval_48_234"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_45"(%"$$fundef_45_env_130"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) !dbg !59 {
entry:
  %"$retval_46" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 1, %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %entry
  %"$consume_199" = sub i64 %"$gasrem_195", 1
  store i64 %"$consume_199", i64* @_gasrem, align 8
  %"$$fundef_47_envp_200_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_47_envp_200_salloc" = call i8* @_salloc(i8* %"$$fundef_47_envp_200_load", i64 16)
  %"$$fundef_47_envp_200" = bitcast i8* %"$$fundef_47_envp_200_salloc" to %"$$fundef_47_env_129"*
  %"$$fundef_47_env_voidp_202" = bitcast %"$$fundef_47_env_129"* %"$$fundef_47_envp_200" to i8*
  %"$$fundef_47_cloval_203" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_47_env_129"*, %Uint32)* @"$fundef_47" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_47_env_voidp_202", 1
  %"$$fundef_47_env_s_204" = getelementptr inbounds %"$$fundef_47_env_129", %"$$fundef_47_env_129"* %"$$fundef_47_envp_200", i32 0, i32 0
  store { %Uint32 (i8*, %Uint32)*, i8* } %1, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_47_env_s_204", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_47_cloval_203", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_46", align 8, !dbg !60
  %"$$retval_46_205" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_46", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_46_205"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_43"(%"$$fundef_43_env_131"* %0) !dbg !61 {
entry:
  %"$retval_44" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_187" = icmp ugt i64 1, %"$gasrem_186"
  br i1 %"$gascmp_187", label %"$out_of_gas_188", label %"$have_gas_189"

"$out_of_gas_188":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_189"

"$have_gas_189":                                  ; preds = %"$out_of_gas_188", %entry
  %"$consume_190" = sub i64 %"$gasrem_186", 1
  store i64 %"$consume_190", i64* @_gasrem, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_45_env_130"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_45" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_44", align 8, !dbg !62
  %"$$retval_44_194" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_44", align 8
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_44_194"
}

define internal { i8*, i8* }* @"$fundef_41"(%"$$fundef_41_env_132"* %0, { i8*, i8* }* %1) !dbg !63 {
entry:
  %"$retval_42" = alloca { i8*, i8* }*, align 8
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 1, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %entry
  %"$consume_184" = sub i64 %"$gasrem_180", 1
  store i64 %"$consume_184", i64* @_gasrem, align 8
  store { i8*, i8* }* %1, { i8*, i8* }** %"$retval_42", align 8, !dbg !64
  %"$$retval_42_185" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_42", align 8
  ret { i8*, i8* }* %"$$retval_42_185"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_39"(%"$$fundef_39_env_133"* %0, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1) !dbg !65 {
entry:
  %"$retval_40" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_172" = icmp ugt i64 1, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %entry
  %"$consume_175" = sub i64 %"$gasrem_171", 1
  store i64 %"$consume_175", i64* @_gasrem, align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_41_env_132"*, { i8*, i8* }*)* @"$fundef_41" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* null }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_40", align 8, !dbg !66
  %"$$retval_40_179" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_40", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_40_179"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } @"$fundef_37"(%"$$fundef_37_env_134"* %0) !dbg !67 {
entry:
  %"$retval_38" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_163" = icmp ugt i64 1, %"$gasrem_162"
  br i1 %"$gascmp_163", label %"$out_of_gas_164", label %"$have_gas_165"

"$out_of_gas_164":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_165"

"$have_gas_165":                                  ; preds = %"$out_of_gas_164", %entry
  %"$consume_166" = sub i64 %"$gasrem_162", 1
  store i64 %"$consume_166", i64* @_gasrem, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_39_env_133"*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* @"$fundef_39" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*), i8* null }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_38", align 8, !dbg !68
  %"$$retval_38_170" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_38", align 8
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$retval_38_170"
}

define internal %Uint32 @"$fundef_35"(%"$$fundef_35_env_135"* %0, %Uint32 %1) !dbg !69 {
entry:
  %"$retval_36" = alloca %Uint32, align 8
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 1, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %entry
  %"$consume_160" = sub i64 %"$gasrem_156", 1
  store i64 %"$consume_160", i64* @_gasrem, align 8
  store %Uint32 %1, %Uint32* %"$retval_36", align 4, !dbg !70
  %"$$retval_36_161" = load %Uint32, %Uint32* %"$retval_36", align 4
  ret %Uint32 %"$$retval_36_161"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_33"(%"$$fundef_33_env_136"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) !dbg !71 {
entry:
  %"$retval_34" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_148" = icmp ugt i64 1, %"$gasrem_147"
  br i1 %"$gascmp_148", label %"$out_of_gas_149", label %"$have_gas_150"

"$out_of_gas_149":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_150"

"$have_gas_150":                                  ; preds = %"$out_of_gas_149", %entry
  %"$consume_151" = sub i64 %"$gasrem_147", 1
  store i64 %"$consume_151", i64* @_gasrem, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_35_env_135"*, %Uint32)* @"$fundef_35" to %Uint32 (i8*, %Uint32)*), i8* null }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_34", align 8, !dbg !72
  %"$$retval_34_155" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_34", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_34_155"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_31"(%"$$fundef_31_env_137"* %0) !dbg !73 {
entry:
  %"$retval_32" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_139" = icmp ugt i64 1, %"$gasrem_138"
  br i1 %"$gascmp_139", label %"$out_of_gas_140", label %"$have_gas_141"

"$out_of_gas_140":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_141"

"$have_gas_141":                                  ; preds = %"$out_of_gas_140", %entry
  %"$consume_142" = sub i64 %"$gasrem_138", 1
  store i64 %"$consume_142", i64* @_gasrem, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_33_env_136"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_33" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_32", align 8, !dbg !74
  %"$$retval_32_146" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_32", align 8
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_32_146"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() !dbg !75 {
entry:
  %"$gasrem_699" = load i64, i64* @_gasrem, align 8
  %"$gascmp_700" = icmp ugt i64 5, %"$gasrem_699"
  br i1 %"$gascmp_700", label %"$out_of_gas_701", label %"$have_gas_702"

"$out_of_gas_701":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_702"

"$have_gas_702":                                  ; preds = %"$out_of_gas_701", %entry
  %"$consume_703" = sub i64 %"$gasrem_699", 5
  store i64 %"$consume_703", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !77
  %"$gasrem_704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_705" = icmp ugt i64 8, %"$gasrem_704"
  br i1 %"$gascmp_705", label %"$out_of_gas_706", label %"$have_gas_707"

"$out_of_gas_706":                                ; preds = %"$have_gas_702"
  call void @_out_of_gas()
  br label %"$have_gas_707"

"$have_gas_707":                                  ; preds = %"$out_of_gas_706", %"$have_gas_702"
  %"$consume_708" = sub i64 %"$gasrem_704", 8
  store i64 %"$consume_708", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !77
  %"$gasrem_709" = load i64, i64* @_gasrem, align 8
  %"$gascmp_710" = icmp ugt i64 196, %"$gasrem_709"
  br i1 %"$gascmp_710", label %"$out_of_gas_711", label %"$have_gas_712"

"$out_of_gas_711":                                ; preds = %"$have_gas_707"
  call void @_out_of_gas()
  br label %"$have_gas_712"

"$have_gas_712":                                  ; preds = %"$out_of_gas_711", %"$have_gas_707"
  %"$consume_713" = sub i64 %"$gasrem_709", 196
  store i64 %"$consume_713", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !77
  %"$gasrem_714" = load i64, i64* @_gasrem, align 8
  %"$gascmp_715" = icmp ugt i64 20, %"$gasrem_714"
  br i1 %"$gascmp_715", label %"$out_of_gas_716", label %"$have_gas_717"

"$out_of_gas_716":                                ; preds = %"$have_gas_712"
  call void @_out_of_gas()
  br label %"$have_gas_717"

"$have_gas_717":                                  ; preds = %"$out_of_gas_716", %"$have_gas_712"
  %"$consume_718" = sub i64 %"$gasrem_714", 20
  store i64 %"$consume_718", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !77
  %"$gasrem_719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_720" = icmp ugt i64 12, %"$gasrem_719"
  br i1 %"$gascmp_720", label %"$out_of_gas_721", label %"$have_gas_722"

"$out_of_gas_721":                                ; preds = %"$have_gas_717"
  call void @_out_of_gas()
  br label %"$have_gas_722"

"$have_gas_722":                                  ; preds = %"$out_of_gas_721", %"$have_gas_717"
  %"$consume_723" = sub i64 %"$gasrem_719", 12
  store i64 %"$consume_723", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !77
  %"$gasrem_724" = load i64, i64* @_gasrem, align 8
  %"$gascmp_725" = icmp ugt i64 2, %"$gasrem_724"
  br i1 %"$gascmp_725", label %"$out_of_gas_726", label %"$have_gas_727"

"$out_of_gas_726":                                ; preds = %"$have_gas_722"
  call void @_out_of_gas()
  br label %"$have_gas_727"

"$have_gas_727":                                  ; preds = %"$out_of_gas_726", %"$have_gas_722"
  %"$consume_728" = sub i64 %"$gasrem_724", 2
  store i64 %"$consume_728", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !77
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !78 {
entry:
  %"$expr_30" = alloca %Uint32, align 8
  %"$gasrem_729" = load i64, i64* @_gasrem, align 8
  %"$gascmp_730" = icmp ugt i64 1, %"$gasrem_729"
  br i1 %"$gascmp_730", label %"$out_of_gas_731", label %"$have_gas_732"

"$out_of_gas_731":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_732"

"$have_gas_732":                                  ; preds = %"$out_of_gas_731", %entry
  %"$consume_733" = sub i64 %"$gasrem_729", 1
  store i64 %"$consume_733", i64* @_gasrem, align 8
  %c0 = alloca { i8*, i8* }*, align 8
  %"$gasrem_734" = load i64, i64* @_gasrem, align 8
  %"$gascmp_735" = icmp ugt i64 1, %"$gasrem_734"
  br i1 %"$gascmp_735", label %"$out_of_gas_736", label %"$have_gas_737"

"$out_of_gas_736":                                ; preds = %"$have_gas_732"
  call void @_out_of_gas()
  br label %"$have_gas_737"

"$have_gas_737":                                  ; preds = %"$out_of_gas_736", %"$have_gas_732"
  %"$consume_738" = sub i64 %"$gasrem_734", 1
  store i64 %"$consume_738", i64* @_gasrem, align 8
  %"$dyndisp_table_745_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_745_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_745_salloc_load", i64 32)
  %"$dyndisp_table_745_salloc" = bitcast i8* %"$dyndisp_table_745_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_745" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_745_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_746" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_745", i32 0
  %"$dyndisp_pcast_747" = bitcast { i8*, i8* }* %"$dyndisp_gep_746" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_31_env_137"*)* @"$fundef_31" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_747", align 8
  %"$dyndisp_gep_748" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_745", i32 1
  %"$dyndisp_pcast_749" = bitcast { i8*, i8* }* %"$dyndisp_gep_748" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (%"$$fundef_37_env_134"*)* @"$fundef_37" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_749", align 8
  store { i8*, i8* }* %"$dyndisp_table_745", { i8*, i8* }** %c0, align 8, !dbg !79
  %"$gasrem_750" = load i64, i64* @_gasrem, align 8
  %"$gascmp_751" = icmp ugt i64 1, %"$gasrem_750"
  br i1 %"$gascmp_751", label %"$out_of_gas_752", label %"$have_gas_753"

"$out_of_gas_752":                                ; preds = %"$have_gas_737"
  call void @_out_of_gas()
  br label %"$have_gas_753"

"$have_gas_753":                                  ; preds = %"$out_of_gas_752", %"$have_gas_737"
  %"$consume_754" = sub i64 %"$gasrem_750", 1
  store i64 %"$consume_754", i64* @_gasrem, align 8
  %"$gasrem_755" = load i64, i64* @_gasrem, align 8
  %"$gascmp_756" = icmp ugt i64 1, %"$gasrem_755"
  br i1 %"$gascmp_756", label %"$out_of_gas_757", label %"$have_gas_758"

"$out_of_gas_757":                                ; preds = %"$have_gas_753"
  call void @_out_of_gas()
  br label %"$have_gas_758"

"$have_gas_758":                                  ; preds = %"$out_of_gas_757", %"$have_gas_753"
  %"$consume_759" = sub i64 %"$gasrem_755", 1
  store i64 %"$consume_759", i64* @_gasrem, align 8
  %"$gasrem_760" = load i64, i64* @_gasrem, align 8
  %"$gascmp_761" = icmp ugt i64 1, %"$gasrem_760"
  br i1 %"$gascmp_761", label %"$out_of_gas_762", label %"$have_gas_763"

"$out_of_gas_762":                                ; preds = %"$have_gas_758"
  call void @_out_of_gas()
  br label %"$have_gas_763"

"$have_gas_763":                                  ; preds = %"$out_of_gas_762", %"$have_gas_758"
  %"$consume_764" = sub i64 %"$gasrem_760", 1
  store i64 %"$consume_764", i64* @_gasrem, align 8
  %c2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_765" = load i64, i64* @_gasrem, align 8
  %"$gascmp_766" = icmp ugt i64 1, %"$gasrem_765"
  br i1 %"$gascmp_766", label %"$out_of_gas_767", label %"$have_gas_768"

"$out_of_gas_767":                                ; preds = %"$have_gas_763"
  call void @_out_of_gas()
  br label %"$have_gas_768"

"$have_gas_768":                                  ; preds = %"$out_of_gas_767", %"$have_gas_763"
  %"$consume_769" = sub i64 %"$gasrem_765", 1
  store i64 %"$consume_769", i64* @_gasrem, align 8
  %"$dyndisp_table_776_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_776_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_776_salloc_load", i64 32)
  %"$dyndisp_table_776_salloc" = bitcast i8* %"$dyndisp_table_776_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_776" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_776_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_777" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_776", i32 0
  %"$dyndisp_pcast_778" = bitcast { i8*, i8* }* %"$dyndisp_gep_777" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_43_env_131"*)* @"$fundef_43" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_778", align 8
  %"$dyndisp_gep_779" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_776", i32 1
  %"$dyndisp_pcast_780" = bitcast { i8*, i8* }* %"$dyndisp_gep_779" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (%"$$fundef_49_env_128"*)* @"$fundef_49" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_780", align 8
  store { i8*, i8* }* %"$dyndisp_table_776", { i8*, i8* }** %c2, align 8, !dbg !80
  %"$gasrem_781" = load i64, i64* @_gasrem, align 8
  %"$gascmp_782" = icmp ugt i64 1, %"$gasrem_781"
  br i1 %"$gascmp_782", label %"$out_of_gas_783", label %"$have_gas_784"

"$out_of_gas_783":                                ; preds = %"$have_gas_768"
  call void @_out_of_gas()
  br label %"$have_gas_784"

"$have_gas_784":                                  ; preds = %"$out_of_gas_783", %"$have_gas_768"
  %"$consume_785" = sub i64 %"$gasrem_781", 1
  store i64 %"$consume_785", i64* @_gasrem, align 8
  %cadd = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_786" = load i64, i64* @_gasrem, align 8
  %"$gascmp_787" = icmp ugt i64 1, %"$gasrem_786"
  br i1 %"$gascmp_787", label %"$out_of_gas_788", label %"$have_gas_789"

"$out_of_gas_788":                                ; preds = %"$have_gas_784"
  call void @_out_of_gas()
  br label %"$have_gas_789"

"$have_gas_789":                                  ; preds = %"$out_of_gas_788", %"$have_gas_784"
  %"$consume_790" = sub i64 %"$gasrem_786", 1
  store i64 %"$consume_790", i64* @_gasrem, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_55_env_125"*, { i8*, i8* }*)* @"$fundef_55" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8, !dbg !81
  %"$gasrem_794" = load i64, i64* @_gasrem, align 8
  %"$gascmp_795" = icmp ugt i64 1, %"$gasrem_794"
  br i1 %"$gascmp_795", label %"$out_of_gas_796", label %"$have_gas_797"

"$out_of_gas_796":                                ; preds = %"$have_gas_789"
  call void @_out_of_gas()
  br label %"$have_gas_797"

"$have_gas_797":                                  ; preds = %"$out_of_gas_796", %"$have_gas_789"
  %"$consume_798" = sub i64 %"$gasrem_794", 1
  store i64 %"$consume_798", i64* @_gasrem, align 8
  %cmul = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_799" = load i64, i64* @_gasrem, align 8
  %"$gascmp_800" = icmp ugt i64 1, %"$gasrem_799"
  br i1 %"$gascmp_800", label %"$out_of_gas_801", label %"$have_gas_802"

"$out_of_gas_801":                                ; preds = %"$have_gas_797"
  call void @_out_of_gas()
  br label %"$have_gas_802"

"$have_gas_802":                                  ; preds = %"$out_of_gas_801", %"$have_gas_797"
  %"$consume_803" = sub i64 %"$gasrem_799", 1
  store i64 %"$consume_803", i64* @_gasrem, align 8
  %"$$fundef_71_envp_804_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_71_envp_804_salloc" = call i8* @_salloc(i8* %"$$fundef_71_envp_804_load", i64 24)
  %"$$fundef_71_envp_804" = bitcast i8* %"$$fundef_71_envp_804_salloc" to %"$$fundef_71_env_117"*
  %"$$fundef_71_env_voidp_806" = bitcast %"$$fundef_71_env_117"* %"$$fundef_71_envp_804" to i8*
  %"$$fundef_71_cloval_807" = insertvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_71_env_117"*, { i8*, i8* }*)* @"$fundef_71" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_71_env_voidp_806", 1
  %"$$fundef_71_env_c0_808" = getelementptr inbounds %"$$fundef_71_env_117", %"$$fundef_71_env_117"* %"$$fundef_71_envp_804", i32 0, i32 0
  %"$c0_809" = load { i8*, i8* }*, { i8*, i8* }** %c0, align 8
  store { i8*, i8* }* %"$c0_809", { i8*, i8* }** %"$$fundef_71_env_c0_808", align 8
  %"$$fundef_71_env_cadd_810" = getelementptr inbounds %"$$fundef_71_env_117", %"$$fundef_71_env_117"* %"$$fundef_71_envp_804", i32 0, i32 1
  %"$cadd_811" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_811", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_71_env_cadd_810", align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_71_cloval_807", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul, align 8, !dbg !82
  %"$gasrem_812" = load i64, i64* @_gasrem, align 8
  %"$gascmp_813" = icmp ugt i64 1, %"$gasrem_812"
  br i1 %"$gascmp_813", label %"$out_of_gas_814", label %"$have_gas_815"

"$out_of_gas_814":                                ; preds = %"$have_gas_802"
  call void @_out_of_gas()
  br label %"$have_gas_815"

"$have_gas_815":                                  ; preds = %"$out_of_gas_814", %"$have_gas_802"
  %"$consume_816" = sub i64 %"$gasrem_812", 1
  store i64 %"$consume_816", i64* @_gasrem, align 8
  %church_nat_to_uint32 = alloca { %Uint32 (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_817" = load i64, i64* @_gasrem, align 8
  %"$gascmp_818" = icmp ugt i64 1, %"$gasrem_817"
  br i1 %"$gascmp_818", label %"$out_of_gas_819", label %"$have_gas_820"

"$out_of_gas_819":                                ; preds = %"$have_gas_815"
  call void @_out_of_gas()
  br label %"$have_gas_820"

"$have_gas_820":                                  ; preds = %"$out_of_gas_819", %"$have_gas_815"
  %"$consume_821" = sub i64 %"$gasrem_817", 1
  store i64 %"$consume_821", i64* @_gasrem, align 8
  store { %Uint32 (i8*, { i8*, i8* }*)*, i8* } { %Uint32 (i8*, { i8*, i8* }*)* bitcast (%Uint32 (%"$$fundef_75_env_115"*, { i8*, i8* }*)* @"$fundef_75" to %Uint32 (i8*, { i8*, i8* }*)*), i8* null }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %church_nat_to_uint32, align 8, !dbg !83
  %"$gasrem_825" = load i64, i64* @_gasrem, align 8
  %"$gascmp_826" = icmp ugt i64 1, %"$gasrem_825"
  br i1 %"$gascmp_826", label %"$out_of_gas_827", label %"$have_gas_828"

"$out_of_gas_827":                                ; preds = %"$have_gas_820"
  call void @_out_of_gas()
  br label %"$have_gas_828"

"$have_gas_828":                                  ; preds = %"$out_of_gas_827", %"$have_gas_820"
  %"$consume_829" = sub i64 %"$gasrem_825", 1
  store i64 %"$consume_829", i64* @_gasrem, align 8
  %c4 = alloca { i8*, i8* }*, align 8
  %"$gasrem_830" = load i64, i64* @_gasrem, align 8
  %"$gascmp_831" = icmp ugt i64 1, %"$gasrem_830"
  br i1 %"$gascmp_831", label %"$out_of_gas_832", label %"$have_gas_833"

"$out_of_gas_832":                                ; preds = %"$have_gas_828"
  call void @_out_of_gas()
  br label %"$have_gas_833"

"$have_gas_833":                                  ; preds = %"$out_of_gas_832", %"$have_gas_828"
  %"$consume_834" = sub i64 %"$gasrem_830", 1
  store i64 %"$consume_834", i64* @_gasrem, align 8
  %"$cmul_17" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cmul_835" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul, align 8
  %"$cmul_fptr_836" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_835", 0
  %"$cmul_envptr_837" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_835", 1
  %"$c2_838" = load { i8*, i8* }*, { i8*, i8* }** %c2, align 8
  %"$cmul_call_839" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_836"(i8* %"$cmul_envptr_837", { i8*, i8* }* %"$c2_838"), !dbg !84
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_839", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_17", align 8, !dbg !84
  %"$cmul_18" = alloca { i8*, i8* }*, align 8
  %"$$cmul_17_840" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_17", align 8
  %"$$cmul_17_fptr_841" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_17_840", 0
  %"$$cmul_17_envptr_842" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_17_840", 1
  %"$c2_843" = load { i8*, i8* }*, { i8*, i8* }** %c2, align 8
  %"$$cmul_17_call_844" = call { i8*, i8* }* %"$$cmul_17_fptr_841"(i8* %"$$cmul_17_envptr_842", { i8*, i8* }* %"$c2_843"), !dbg !84
  store { i8*, i8* }* %"$$cmul_17_call_844", { i8*, i8* }** %"$cmul_18", align 8, !dbg !84
  %"$$cmul_18_845" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_18", align 8
  store { i8*, i8* }* %"$$cmul_18_845", { i8*, i8* }** %c4, align 8, !dbg !84
  %"$gasrem_846" = load i64, i64* @_gasrem, align 8
  %"$gascmp_847" = icmp ugt i64 1, %"$gasrem_846"
  br i1 %"$gascmp_847", label %"$out_of_gas_848", label %"$have_gas_849"

"$out_of_gas_848":                                ; preds = %"$have_gas_833"
  call void @_out_of_gas()
  br label %"$have_gas_849"

"$have_gas_849":                                  ; preds = %"$out_of_gas_848", %"$have_gas_833"
  %"$consume_850" = sub i64 %"$gasrem_846", 1
  store i64 %"$consume_850", i64* @_gasrem, align 8
  %c16 = alloca { i8*, i8* }*, align 8
  %"$gasrem_851" = load i64, i64* @_gasrem, align 8
  %"$gascmp_852" = icmp ugt i64 1, %"$gasrem_851"
  br i1 %"$gascmp_852", label %"$out_of_gas_853", label %"$have_gas_854"

"$out_of_gas_853":                                ; preds = %"$have_gas_849"
  call void @_out_of_gas()
  br label %"$have_gas_854"

"$have_gas_854":                                  ; preds = %"$out_of_gas_853", %"$have_gas_849"
  %"$consume_855" = sub i64 %"$gasrem_851", 1
  store i64 %"$consume_855", i64* @_gasrem, align 8
  %"$cmul_19" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cmul_856" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul, align 8
  %"$cmul_fptr_857" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_856", 0
  %"$cmul_envptr_858" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_856", 1
  %"$c4_859" = load { i8*, i8* }*, { i8*, i8* }** %c4, align 8
  %"$cmul_call_860" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_857"(i8* %"$cmul_envptr_858", { i8*, i8* }* %"$c4_859"), !dbg !85
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_860", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_19", align 8, !dbg !85
  %"$cmul_20" = alloca { i8*, i8* }*, align 8
  %"$$cmul_19_861" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_19", align 8
  %"$$cmul_19_fptr_862" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_19_861", 0
  %"$$cmul_19_envptr_863" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_19_861", 1
  %"$c4_864" = load { i8*, i8* }*, { i8*, i8* }** %c4, align 8
  %"$$cmul_19_call_865" = call { i8*, i8* }* %"$$cmul_19_fptr_862"(i8* %"$$cmul_19_envptr_863", { i8*, i8* }* %"$c4_864"), !dbg !85
  store { i8*, i8* }* %"$$cmul_19_call_865", { i8*, i8* }** %"$cmul_20", align 8, !dbg !85
  %"$$cmul_20_866" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_20", align 8
  store { i8*, i8* }* %"$$cmul_20_866", { i8*, i8* }** %c16, align 8, !dbg !85
  %"$gasrem_867" = load i64, i64* @_gasrem, align 8
  %"$gascmp_868" = icmp ugt i64 1, %"$gasrem_867"
  br i1 %"$gascmp_868", label %"$out_of_gas_869", label %"$have_gas_870"

"$out_of_gas_869":                                ; preds = %"$have_gas_854"
  call void @_out_of_gas()
  br label %"$have_gas_870"

"$have_gas_870":                                  ; preds = %"$out_of_gas_869", %"$have_gas_854"
  %"$consume_871" = sub i64 %"$gasrem_867", 1
  store i64 %"$consume_871", i64* @_gasrem, align 8
  %c32 = alloca { i8*, i8* }*, align 8
  %"$gasrem_872" = load i64, i64* @_gasrem, align 8
  %"$gascmp_873" = icmp ugt i64 1, %"$gasrem_872"
  br i1 %"$gascmp_873", label %"$out_of_gas_874", label %"$have_gas_875"

"$out_of_gas_874":                                ; preds = %"$have_gas_870"
  call void @_out_of_gas()
  br label %"$have_gas_875"

"$have_gas_875":                                  ; preds = %"$out_of_gas_874", %"$have_gas_870"
  %"$consume_876" = sub i64 %"$gasrem_872", 1
  store i64 %"$consume_876", i64* @_gasrem, align 8
  %"$cadd_21" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cadd_877" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$cadd_fptr_878" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_877", 0
  %"$cadd_envptr_879" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_877", 1
  %"$c16_880" = load { i8*, i8* }*, { i8*, i8* }** %c16, align 8
  %"$cadd_call_881" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_fptr_878"(i8* %"$cadd_envptr_879", { i8*, i8* }* %"$c16_880"), !dbg !86
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_call_881", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_21", align 8, !dbg !86
  %"$cadd_22" = alloca { i8*, i8* }*, align 8
  %"$$cadd_21_882" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_21", align 8
  %"$$cadd_21_fptr_883" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_21_882", 0
  %"$$cadd_21_envptr_884" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_21_882", 1
  %"$c16_885" = load { i8*, i8* }*, { i8*, i8* }** %c16, align 8
  %"$$cadd_21_call_886" = call { i8*, i8* }* %"$$cadd_21_fptr_883"(i8* %"$$cadd_21_envptr_884", { i8*, i8* }* %"$c16_885"), !dbg !86
  store { i8*, i8* }* %"$$cadd_21_call_886", { i8*, i8* }** %"$cadd_22", align 8, !dbg !86
  %"$$cadd_22_887" = load { i8*, i8* }*, { i8*, i8* }** %"$cadd_22", align 8
  store { i8*, i8* }* %"$$cadd_22_887", { i8*, i8* }** %c32, align 8, !dbg !86
  %"$gasrem_888" = load i64, i64* @_gasrem, align 8
  %"$gascmp_889" = icmp ugt i64 1, %"$gasrem_888"
  br i1 %"$gascmp_889", label %"$out_of_gas_890", label %"$have_gas_891"

"$out_of_gas_890":                                ; preds = %"$have_gas_875"
  call void @_out_of_gas()
  br label %"$have_gas_891"

"$have_gas_891":                                  ; preds = %"$out_of_gas_890", %"$have_gas_875"
  %"$consume_892" = sub i64 %"$gasrem_888", 1
  store i64 %"$consume_892", i64* @_gasrem, align 8
  %c128 = alloca { i8*, i8* }*, align 8
  %"$gasrem_893" = load i64, i64* @_gasrem, align 8
  %"$gascmp_894" = icmp ugt i64 1, %"$gasrem_893"
  br i1 %"$gascmp_894", label %"$out_of_gas_895", label %"$have_gas_896"

"$out_of_gas_895":                                ; preds = %"$have_gas_891"
  call void @_out_of_gas()
  br label %"$have_gas_896"

"$have_gas_896":                                  ; preds = %"$out_of_gas_895", %"$have_gas_891"
  %"$consume_897" = sub i64 %"$gasrem_893", 1
  store i64 %"$consume_897", i64* @_gasrem, align 8
  %"$cmul_23" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cmul_898" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul, align 8
  %"$cmul_fptr_899" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_898", 0
  %"$cmul_envptr_900" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_898", 1
  %"$c4_901" = load { i8*, i8* }*, { i8*, i8* }** %c4, align 8
  %"$cmul_call_902" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_899"(i8* %"$cmul_envptr_900", { i8*, i8* }* %"$c4_901"), !dbg !87
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_902", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_23", align 8, !dbg !87
  %"$cmul_24" = alloca { i8*, i8* }*, align 8
  %"$$cmul_23_903" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_23", align 8
  %"$$cmul_23_fptr_904" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_23_903", 0
  %"$$cmul_23_envptr_905" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_23_903", 1
  %"$c32_906" = load { i8*, i8* }*, { i8*, i8* }** %c32, align 8
  %"$$cmul_23_call_907" = call { i8*, i8* }* %"$$cmul_23_fptr_904"(i8* %"$$cmul_23_envptr_905", { i8*, i8* }* %"$c32_906"), !dbg !87
  store { i8*, i8* }* %"$$cmul_23_call_907", { i8*, i8* }** %"$cmul_24", align 8, !dbg !87
  %"$$cmul_24_908" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_24", align 8
  store { i8*, i8* }* %"$$cmul_24_908", { i8*, i8* }** %c128, align 8, !dbg !87
  %"$gasrem_909" = load i64, i64* @_gasrem, align 8
  %"$gascmp_910" = icmp ugt i64 1, %"$gasrem_909"
  br i1 %"$gascmp_910", label %"$out_of_gas_911", label %"$have_gas_912"

"$out_of_gas_911":                                ; preds = %"$have_gas_896"
  call void @_out_of_gas()
  br label %"$have_gas_912"

"$have_gas_912":                                  ; preds = %"$out_of_gas_911", %"$have_gas_896"
  %"$consume_913" = sub i64 %"$gasrem_909", 1
  store i64 %"$consume_913", i64* @_gasrem, align 8
  %c256 = alloca { i8*, i8* }*, align 8
  %"$gasrem_914" = load i64, i64* @_gasrem, align 8
  %"$gascmp_915" = icmp ugt i64 1, %"$gasrem_914"
  br i1 %"$gascmp_915", label %"$out_of_gas_916", label %"$have_gas_917"

"$out_of_gas_916":                                ; preds = %"$have_gas_912"
  call void @_out_of_gas()
  br label %"$have_gas_917"

"$have_gas_917":                                  ; preds = %"$out_of_gas_916", %"$have_gas_912"
  %"$consume_918" = sub i64 %"$gasrem_914", 1
  store i64 %"$consume_918", i64* @_gasrem, align 8
  %"$cadd_25" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cadd_919" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$cadd_fptr_920" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_919", 0
  %"$cadd_envptr_921" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_919", 1
  %"$c128_922" = load { i8*, i8* }*, { i8*, i8* }** %c128, align 8
  %"$cadd_call_923" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_fptr_920"(i8* %"$cadd_envptr_921", { i8*, i8* }* %"$c128_922"), !dbg !88
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_call_923", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_25", align 8, !dbg !88
  %"$cadd_26" = alloca { i8*, i8* }*, align 8
  %"$$cadd_25_924" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_25", align 8
  %"$$cadd_25_fptr_925" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_25_924", 0
  %"$$cadd_25_envptr_926" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_25_924", 1
  %"$c128_927" = load { i8*, i8* }*, { i8*, i8* }** %c128, align 8
  %"$$cadd_25_call_928" = call { i8*, i8* }* %"$$cadd_25_fptr_925"(i8* %"$$cadd_25_envptr_926", { i8*, i8* }* %"$c128_927"), !dbg !88
  store { i8*, i8* }* %"$$cadd_25_call_928", { i8*, i8* }** %"$cadd_26", align 8, !dbg !88
  %"$$cadd_26_929" = load { i8*, i8* }*, { i8*, i8* }** %"$cadd_26", align 8
  store { i8*, i8* }* %"$$cadd_26_929", { i8*, i8* }** %c256, align 8, !dbg !88
  %"$gasrem_930" = load i64, i64* @_gasrem, align 8
  %"$gascmp_931" = icmp ugt i64 1, %"$gasrem_930"
  br i1 %"$gascmp_931", label %"$out_of_gas_932", label %"$have_gas_933"

"$out_of_gas_932":                                ; preds = %"$have_gas_917"
  call void @_out_of_gas()
  br label %"$have_gas_933"

"$have_gas_933":                                  ; preds = %"$out_of_gas_932", %"$have_gas_917"
  %"$consume_934" = sub i64 %"$gasrem_930", 1
  store i64 %"$consume_934", i64* @_gasrem, align 8
  %c65536 = alloca { i8*, i8* }*, align 8
  %"$gasrem_935" = load i64, i64* @_gasrem, align 8
  %"$gascmp_936" = icmp ugt i64 1, %"$gasrem_935"
  br i1 %"$gascmp_936", label %"$out_of_gas_937", label %"$have_gas_938"

"$out_of_gas_937":                                ; preds = %"$have_gas_933"
  call void @_out_of_gas()
  br label %"$have_gas_938"

"$have_gas_938":                                  ; preds = %"$out_of_gas_937", %"$have_gas_933"
  %"$consume_939" = sub i64 %"$gasrem_935", 1
  store i64 %"$consume_939", i64* @_gasrem, align 8
  %"$cmul_27" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cmul_940" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul, align 8
  %"$cmul_fptr_941" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_940", 0
  %"$cmul_envptr_942" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_940", 1
  %"$c256_943" = load { i8*, i8* }*, { i8*, i8* }** %c256, align 8
  %"$cmul_call_944" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_941"(i8* %"$cmul_envptr_942", { i8*, i8* }* %"$c256_943"), !dbg !89
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_944", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_27", align 8, !dbg !89
  %"$cmul_28" = alloca { i8*, i8* }*, align 8
  %"$$cmul_27_945" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_27", align 8
  %"$$cmul_27_fptr_946" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_27_945", 0
  %"$$cmul_27_envptr_947" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_27_945", 1
  %"$c256_948" = load { i8*, i8* }*, { i8*, i8* }** %c256, align 8
  %"$$cmul_27_call_949" = call { i8*, i8* }* %"$$cmul_27_fptr_946"(i8* %"$$cmul_27_envptr_947", { i8*, i8* }* %"$c256_948"), !dbg !89
  store { i8*, i8* }* %"$$cmul_27_call_949", { i8*, i8* }** %"$cmul_28", align 8, !dbg !89
  %"$$cmul_28_950" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_28", align 8
  store { i8*, i8* }* %"$$cmul_28_950", { i8*, i8* }** %c65536, align 8, !dbg !89
  %"$gasrem_951" = load i64, i64* @_gasrem, align 8
  %"$gascmp_952" = icmp ugt i64 1, %"$gasrem_951"
  br i1 %"$gascmp_952", label %"$out_of_gas_953", label %"$have_gas_954"

"$out_of_gas_953":                                ; preds = %"$have_gas_938"
  call void @_out_of_gas()
  br label %"$have_gas_954"

"$have_gas_954":                                  ; preds = %"$out_of_gas_953", %"$have_gas_938"
  %"$consume_955" = sub i64 %"$gasrem_951", 1
  store i64 %"$consume_955", i64* @_gasrem, align 8
  %"$church_nat_to_uint32_29" = alloca %Uint32, align 8
  %"$church_nat_to_uint32_956" = load { %Uint32 (i8*, { i8*, i8* }*)*, i8* }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %church_nat_to_uint32, align 8
  %"$church_nat_to_uint32_fptr_957" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$church_nat_to_uint32_956", 0
  %"$church_nat_to_uint32_envptr_958" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$church_nat_to_uint32_956", 1
  %"$c65536_959" = load { i8*, i8* }*, { i8*, i8* }** %c65536, align 8
  %"$church_nat_to_uint32_call_960" = call %Uint32 %"$church_nat_to_uint32_fptr_957"(i8* %"$church_nat_to_uint32_envptr_958", { i8*, i8* }* %"$c65536_959"), !dbg !90
  store %Uint32 %"$church_nat_to_uint32_call_960", %Uint32* %"$church_nat_to_uint32_29", align 4, !dbg !90
  %"$$church_nat_to_uint32_29_961" = load %Uint32, %Uint32* %"$church_nat_to_uint32_29", align 4
  store %Uint32 %"$$church_nat_to_uint32_29_961", %Uint32* %"$expr_30", align 4, !dbg !90
  %"$$expr_30_962" = load %Uint32, %Uint32* %"$expr_30", align 4
  ret %Uint32 %"$$expr_30_962"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_963" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_964" = alloca %Uint32, align 8
  %"$memvoidcast_965" = bitcast %Uint32* %"$pval_964" to i8*
  store %Uint32 %"$exprval_963", %Uint32* %"$pval_964", align 4
  %"$execptr_load_966" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_966", %_TyDescrTy_Typ* @"$TyDescr_Uint32_83", i8* %"$memvoidcast_965")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "church_nat.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_77", linkageName: "$fundef_77", scope: !2, file: !2, line: 36, type: !5, scopeLine: 36, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 36, column: 36, scope: !4)
!9 = distinct !DISubprogram(name: "$fundef_75", linkageName: "$fundef_75", scope: !2, file: !2, line: 34, type: !5, scopeLine: 34, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 34, column: 16, scope: !9)
!11 = !DILocation(line: 35, column: 15, scope: !9)
!12 = !DILocation(line: 36, column: 36, scope: !9)
!13 = !DILocation(line: 37, column: 16, scope: !9)
!14 = !DILocation(line: 37, column: 15, scope: !9)
!15 = !DILocation(line: 38, column: 5, scope: !9)
!16 = distinct !DISubprogram(name: "$fundef_73", linkageName: "$fundef_73", scope: !2, file: !2, line: 27, type: !5, scopeLine: 27, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!17 = !DILocation(line: 27, column: 16, scope: !16)
!18 = !DILocation(line: 28, column: 13, scope: !16)
!19 = !DILocation(line: 28, column: 12, scope: !16)
!20 = !DILocation(line: 29, column: 3, scope: !16)
!21 = distinct !DISubprogram(name: "$fundef_71", linkageName: "$fundef_71", scope: !2, file: !2, line: 26, type: !5, scopeLine: 26, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!22 = !DILocation(line: 27, column: 3, scope: !21)
!23 = distinct !DISubprogram(name: "$fundef_69", linkageName: "$fundef_69", scope: !2, file: !2, line: 18, type: !5, scopeLine: 18, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!24 = !DILocation(line: 18, column: 13, scope: !23)
!25 = !DILocation(line: 18, column: 12, scope: !23)
!26 = !DILocation(line: 19, column: 13, scope: !23)
!27 = !DILocation(line: 19, column: 12, scope: !23)
!28 = !DILocation(line: 20, column: 14, scope: !23)
!29 = !DILocation(line: 21, column: 3, scope: !23)
!30 = distinct !DISubprogram(name: "$fundef_67", linkageName: "$fundef_67", scope: !2, file: !2, line: 17, type: !5, scopeLine: 17, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!31 = !DILocation(line: 18, column: 3, scope: !30)
!32 = distinct !DISubprogram(name: "$fundef_65", linkageName: "$fundef_65", scope: !2, file: !2, line: 17, type: !5, scopeLine: 17, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!33 = !DILocation(line: 17, column: 3, scope: !32)
!34 = distinct !DISubprogram(name: "$fundef_63", linkageName: "$fundef_63", scope: !2, file: !2, line: 18, type: !5, scopeLine: 18, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!35 = !DILocation(line: 18, column: 13, scope: !34)
!36 = !DILocation(line: 18, column: 12, scope: !34)
!37 = !DILocation(line: 19, column: 13, scope: !34)
!38 = !DILocation(line: 19, column: 12, scope: !34)
!39 = !DILocation(line: 20, column: 14, scope: !34)
!40 = !DILocation(line: 21, column: 3, scope: !34)
!41 = distinct !DISubprogram(name: "$fundef_61", linkageName: "$fundef_61", scope: !2, file: !2, line: 17, type: !5, scopeLine: 17, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!42 = !DILocation(line: 18, column: 3, scope: !41)
!43 = distinct !DISubprogram(name: "$fundef_59", linkageName: "$fundef_59", scope: !2, file: !2, line: 17, type: !5, scopeLine: 17, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!44 = !DILocation(line: 17, column: 3, scope: !43)
!45 = distinct !DISubprogram(name: "$fundef_57", linkageName: "$fundef_57", scope: !2, file: !2, line: 15, type: !5, scopeLine: 15, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!46 = !DILocation(line: 15, column: 3, scope: !45)
!47 = distinct !DISubprogram(name: "$fundef_55", linkageName: "$fundef_55", scope: !2, file: !2, line: 14, type: !5, scopeLine: 14, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!48 = !DILocation(line: 15, column: 3, scope: !47)
!49 = distinct !DISubprogram(name: "$fundef_53", linkageName: "$fundef_53", scope: !2, file: !2, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!50 = !DILocation(line: 9, column: 68, scope: !49)
!51 = !DILocation(line: 9, column: 75, scope: !49)
!52 = distinct !DISubprogram(name: "$fundef_51", linkageName: "$fundef_51", scope: !2, file: !2, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!53 = !DILocation(line: 9, column: 59, scope: !52)
!54 = distinct !DISubprogram(name: "$fundef_49", linkageName: "$fundef_49", scope: !2, file: !2, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!55 = !DILocation(line: 9, column: 43, scope: !54)
!56 = distinct !DISubprogram(name: "$fundef_47", linkageName: "$fundef_47", scope: !2, file: !2, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!57 = !DILocation(line: 9, column: 68, scope: !56)
!58 = !DILocation(line: 9, column: 75, scope: !56)
!59 = distinct !DISubprogram(name: "$fundef_45", linkageName: "$fundef_45", scope: !2, file: !2, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!60 = !DILocation(line: 9, column: 59, scope: !59)
!61 = distinct !DISubprogram(name: "$fundef_43", linkageName: "$fundef_43", scope: !2, file: !2, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!62 = !DILocation(line: 9, column: 43, scope: !61)
!63 = distinct !DISubprogram(name: "$fundef_41", linkageName: "$fundef_41", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!64 = !DILocation(line: 3, column: 59, scope: !63)
!65 = distinct !DISubprogram(name: "$fundef_39", linkageName: "$fundef_39", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!66 = !DILocation(line: 3, column: 59, scope: !65)
!67 = distinct !DISubprogram(name: "$fundef_37", linkageName: "$fundef_37", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!68 = !DILocation(line: 3, column: 43, scope: !67)
!69 = distinct !DISubprogram(name: "$fundef_35", linkageName: "$fundef_35", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!70 = !DILocation(line: 3, column: 59, scope: !69)
!71 = distinct !DISubprogram(name: "$fundef_33", linkageName: "$fundef_33", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!72 = !DILocation(line: 3, column: 59, scope: !71)
!73 = distinct !DISubprogram(name: "$fundef_31", linkageName: "$fundef_31", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!74 = !DILocation(line: 3, column: 43, scope: !73)
!75 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !76, file: !76, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!76 = !DIFile(filename: ".", directory: ".")
!77 = !DILocation(line: 0, scope: !75)
!78 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!79 = !DILocation(line: 3, column: 10, scope: !78)
!80 = !DILocation(line: 9, column: 10, scope: !78)
!81 = !DILocation(line: 14, column: 3, scope: !78)
!82 = !DILocation(line: 26, column: 3, scope: !78)
!83 = !DILocation(line: 34, column: 5, scope: !78)
!84 = !DILocation(line: 41, column: 10, scope: !78)
!85 = !DILocation(line: 42, column: 11, scope: !78)
!86 = !DILocation(line: 43, column: 11, scope: !78)
!87 = !DILocation(line: 44, column: 12, scope: !78)
!88 = !DILocation(line: 45, column: 12, scope: !78)
!89 = !DILocation(line: 46, column: 14, scope: !78)
!90 = !DILocation(line: 47, column: 1, scope: !78)
