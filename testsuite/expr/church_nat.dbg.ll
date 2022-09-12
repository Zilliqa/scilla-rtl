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
%"$ParamDescr_973" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_974" = type { %ParamDescrString, i32, %"$ParamDescr_973"* }
%"$$fundef_77_env_116" = type { %Uint32 }
%Uint32 = type { i32 }
%"$$fundef_75_env_117" = type {}
%"$$fundef_73_env_118" = type { { i8*, i8* }*, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { i8*, i8* }* }
%"$$fundef_71_env_119" = type { { i8*, i8* }*, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } }
%"$$fundef_69_env_120" = type { { i8*, i8* }*, { i8*, i8* }*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } }
%"$$fundef_67_env_121" = type { { i8*, i8* }*, { i8*, i8* }* }
%"$$fundef_65_env_122" = type { { i8*, i8* }*, { i8*, i8* }* }
%"$$fundef_63_env_123" = type { { i8*, i8* }*, { i8*, i8* }*, { %Uint32 (i8*, %Uint32)*, i8* } }
%"$$fundef_61_env_124" = type { { i8*, i8* }*, { i8*, i8* }* }
%"$$fundef_59_env_125" = type { { i8*, i8* }*, { i8*, i8* }* }
%"$$fundef_57_env_126" = type { { i8*, i8* }* }
%"$$fundef_55_env_127" = type {}
%"$$fundef_53_env_128" = type { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } }
%"$$fundef_51_env_129" = type {}
%"$$fundef_49_env_130" = type {}
%"$$fundef_47_env_131" = type { { %Uint32 (i8*, %Uint32)*, i8* } }
%"$$fundef_45_env_132" = type {}
%"$$fundef_43_env_133" = type {}
%"$$fundef_41_env_134" = type {}
%"$$fundef_39_env_135" = type {}
%"$$fundef_37_env_136" = type {}
%"$$fundef_35_env_137" = type {}
%"$$fundef_33_env_138" = type {}
%"$$fundef_31_env_139" = type {}

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
@"$TyDescr_ReplicateContr_Prim_106" = global %"$TyDescrTy_PrimTyp_79" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_107" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_79"* @"$TyDescr_ReplicateContr_Prim_106" to i8*) }
@"$TyDescr_Bystr_Prim_108" = global %"$TyDescrTy_PrimTyp_79" { i32 7, i32 0 }
@"$TyDescr_Bystr_109" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_79"* @"$TyDescr_Bystr_Prim_108" to i8*) }
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_103", %_TyDescrTy_Typ* @"$TyDescr_Int64_85", %_TyDescrTy_Typ* @"$TyDescr_Uint256_95", %_TyDescrTy_Typ* @"$TyDescr_Uint32_83", %_TyDescrTy_Typ* @"$TyDescr_Uint64_87", %_TyDescrTy_Typ* @"$TyDescr_Bnum_99", %_TyDescrTy_Typ* @"$TyDescr_Uint128_91", %_TyDescrTy_Typ* @"$TyDescr_Exception_105", %_TyDescrTy_Typ* @"$TyDescr_String_97", %_TyDescrTy_Typ* @"$TyDescr_Int256_93", %_TyDescrTy_Typ* @"$TyDescr_Int128_89", %_TyDescrTy_Typ* @"$TyDescr_Bystr_109", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_107", %_TyDescrTy_Typ* @"$TyDescr_Message_101", %_TyDescrTy_Typ* @"$TyDescr_Int32_81"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_973"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_974"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Uint32 @"$fundef_77"(%"$$fundef_77_env_116"* %0, %Uint32 %1) !dbg !3 {
entry:
  %"$x_704" = alloca %Uint32, align 8
  store %Uint32 %1, %Uint32* %"$x_704", align 4
  call void @llvm.dbg.declare(metadata %Uint32* %"$x_704", metadata !8, metadata !DIExpression()), !dbg !10
  %"$$fundef_77_env_one_694" = getelementptr inbounds %"$$fundef_77_env_116", %"$$fundef_77_env_116"* %0, i32 0, i32 0
  %"$one_envload_695" = load %Uint32, %Uint32* %"$$fundef_77_env_one_694", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_695", %Uint32* %one, align 4
  %"$retval_78" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_78", metadata !11, metadata !DIExpression()), !dbg !12
  %"$gasrem_696" = load i64, i64* @_gasrem, align 8
  %"$gascmp_697" = icmp ugt i64 4, %"$gasrem_696"
  br i1 %"$gascmp_697", label %"$out_of_gas_698", label %"$have_gas_699"

"$out_of_gas_698":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_699"

"$have_gas_699":                                  ; preds = %"$out_of_gas_698", %entry
  %"$consume_700" = sub i64 %"$gasrem_696", 4
  store i64 %"$consume_700", i64* @_gasrem, align 8
  %"$one_701" = load %Uint32, %Uint32* %one, align 4
  %"$add_call_702" = call %Uint32 @_add_Uint32(%Uint32 %"$one_701", %Uint32 %1), !dbg !12
  store %Uint32 %"$add_call_702", %Uint32* %"$retval_78", align 4, !dbg !12
  %"$$retval_78_703" = load %Uint32, %Uint32* %"$retval_78", align 4
  ret %Uint32 %"$$retval_78_703"
}

define internal %Uint32 @"$fundef_75"(%"$$fundef_75_env_117"* %0, { i8*, i8* }* %1) !dbg !13 {
entry:
  %"$retval_76" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_76", metadata !14, metadata !DIExpression()), !dbg !15
  %"$gasrem_625" = load i64, i64* @_gasrem, align 8
  %"$gascmp_626" = icmp ugt i64 1, %"$gasrem_625"
  br i1 %"$gascmp_626", label %"$out_of_gas_627", label %"$have_gas_628"

"$out_of_gas_627":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_628"

"$have_gas_628":                                  ; preds = %"$out_of_gas_627", %entry
  %"$consume_629" = sub i64 %"$gasrem_625", 1
  store i64 %"$consume_629", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %zero, metadata !16, metadata !DIExpression()), !dbg !17
  %"$gasrem_630" = load i64, i64* @_gasrem, align 8
  %"$gascmp_631" = icmp ugt i64 1, %"$gasrem_630"
  br i1 %"$gascmp_631", label %"$out_of_gas_632", label %"$have_gas_633"

"$out_of_gas_632":                                ; preds = %"$have_gas_628"
  call void @_out_of_gas()
  br label %"$have_gas_633"

"$have_gas_633":                                  ; preds = %"$out_of_gas_632", %"$have_gas_628"
  %"$consume_634" = sub i64 %"$gasrem_630", 1
  store i64 %"$consume_634", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4, !dbg !18
  %"$gasrem_635" = load i64, i64* @_gasrem, align 8
  %"$gascmp_636" = icmp ugt i64 1, %"$gasrem_635"
  br i1 %"$gascmp_636", label %"$out_of_gas_637", label %"$have_gas_638"

"$out_of_gas_637":                                ; preds = %"$have_gas_633"
  call void @_out_of_gas()
  br label %"$have_gas_638"

"$have_gas_638":                                  ; preds = %"$out_of_gas_637", %"$have_gas_633"
  %"$consume_639" = sub i64 %"$gasrem_635", 1
  store i64 %"$consume_639", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %one, metadata !19, metadata !DIExpression()), !dbg !20
  %"$gasrem_640" = load i64, i64* @_gasrem, align 8
  %"$gascmp_641" = icmp ugt i64 1, %"$gasrem_640"
  br i1 %"$gascmp_641", label %"$out_of_gas_642", label %"$have_gas_643"

"$out_of_gas_642":                                ; preds = %"$have_gas_638"
  call void @_out_of_gas()
  br label %"$have_gas_643"

"$have_gas_643":                                  ; preds = %"$out_of_gas_642", %"$have_gas_638"
  %"$consume_644" = sub i64 %"$gasrem_640", 1
  store i64 %"$consume_644", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !21
  %"$gasrem_645" = load i64, i64* @_gasrem, align 8
  %"$gascmp_646" = icmp ugt i64 1, %"$gasrem_645"
  br i1 %"$gascmp_646", label %"$out_of_gas_647", label %"$have_gas_648"

"$out_of_gas_647":                                ; preds = %"$have_gas_643"
  call void @_out_of_gas()
  br label %"$have_gas_648"

"$have_gas_648":                                  ; preds = %"$out_of_gas_647", %"$have_gas_643"
  %"$consume_649" = sub i64 %"$gasrem_645", 1
  store i64 %"$consume_649", i64* @_gasrem, align 8
  %add1 = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_650" = load i64, i64* @_gasrem, align 8
  %"$gascmp_651" = icmp ugt i64 1, %"$gasrem_650"
  br i1 %"$gascmp_651", label %"$out_of_gas_652", label %"$have_gas_653"

"$out_of_gas_652":                                ; preds = %"$have_gas_648"
  call void @_out_of_gas()
  br label %"$have_gas_653"

"$have_gas_653":                                  ; preds = %"$out_of_gas_652", %"$have_gas_648"
  %"$consume_654" = sub i64 %"$gasrem_650", 1
  store i64 %"$consume_654", i64* @_gasrem, align 8
  %"$$fundef_77_envp_655_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_77_envp_655_salloc" = call i8* @_salloc(i8* %"$$fundef_77_envp_655_load", i64 4)
  %"$$fundef_77_envp_655" = bitcast i8* %"$$fundef_77_envp_655_salloc" to %"$$fundef_77_env_116"*
  %"$$fundef_77_env_voidp_657" = bitcast %"$$fundef_77_env_116"* %"$$fundef_77_envp_655" to i8*
  %"$$fundef_77_cloval_658" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_77_env_116"*, %Uint32)* @"$fundef_77" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_77_env_voidp_657", 1
  %"$$fundef_77_env_one_659" = getelementptr inbounds %"$$fundef_77_env_116", %"$$fundef_77_env_116"* %"$$fundef_77_envp_655", i32 0, i32 0
  %"$one_660" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_660", %Uint32* %"$$fundef_77_env_one_659", align 4
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_77_cloval_658", { %Uint32 (i8*, %Uint32)*, i8* }* %add1, align 8, !dbg !22
  %"$gasrem_661" = load i64, i64* @_gasrem, align 8
  %"$gascmp_662" = icmp ugt i64 1, %"$gasrem_661"
  br i1 %"$gascmp_662", label %"$out_of_gas_663", label %"$have_gas_664"

"$out_of_gas_663":                                ; preds = %"$have_gas_653"
  call void @_out_of_gas()
  br label %"$have_gas_664"

"$have_gas_664":                                  ; preds = %"$out_of_gas_663", %"$have_gas_653"
  %"$consume_665" = sub i64 %"$gasrem_661", 1
  store i64 %"$consume_665", i64* @_gasrem, align 8
  %c32 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_666" = load i64, i64* @_gasrem, align 8
  %"$gascmp_667" = icmp ugt i64 1, %"$gasrem_666"
  br i1 %"$gascmp_667", label %"$out_of_gas_668", label %"$have_gas_669"

"$out_of_gas_668":                                ; preds = %"$have_gas_664"
  call void @_out_of_gas()
  br label %"$have_gas_669"

"$have_gas_669":                                  ; preds = %"$out_of_gas_668", %"$have_gas_664"
  %"$consume_670" = sub i64 %"$gasrem_666", 1
  store i64 %"$consume_670", i64* @_gasrem, align 8
  %"$c_671" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 0
  %"$c_672" = bitcast { i8*, i8* }* %"$c_671" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$c_673" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$c_672", align 8
  %"$c_fptr_674" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$c_673", 0
  %"$c_envptr_675" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$c_673", 1
  %"$c_call_676" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c_fptr_674"(i8* %"$c_envptr_675"), !dbg !23
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c_call_676", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c32, align 8, !dbg !24
  %"$gasrem_677" = load i64, i64* @_gasrem, align 8
  %"$gascmp_678" = icmp ugt i64 1, %"$gasrem_677"
  br i1 %"$gascmp_678", label %"$out_of_gas_679", label %"$have_gas_680"

"$out_of_gas_679":                                ; preds = %"$have_gas_669"
  call void @_out_of_gas()
  br label %"$have_gas_680"

"$have_gas_680":                                  ; preds = %"$out_of_gas_679", %"$have_gas_669"
  %"$consume_681" = sub i64 %"$gasrem_677", 1
  store i64 %"$consume_681", i64* @_gasrem, align 8
  %"$c32_15" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$c32_682" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c32, align 8
  %"$c32_fptr_683" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c32_682", 0
  %"$c32_envptr_684" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c32_682", 1
  %"$add1_685" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %add1, align 8
  %"$c32_call_686" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_fptr_683"(i8* %"$c32_envptr_684", { %Uint32 (i8*, %Uint32)*, i8* } %"$add1_685"), !dbg !25
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_call_686", { %Uint32 (i8*, %Uint32)*, i8* }* %"$c32_15", align 8, !dbg !25
  %"$c32_16" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$c32_16", metadata !26, metadata !DIExpression()), !dbg !25
  %"$$c32_15_687" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$c32_15", align 8
  %"$$c32_15_fptr_688" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$c32_15_687", 0
  %"$$c32_15_envptr_689" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$c32_15_687", 1
  %"$zero_690" = load %Uint32, %Uint32* %zero, align 4
  %"$$c32_15_call_691" = call %Uint32 %"$$c32_15_fptr_688"(i8* %"$$c32_15_envptr_689", %Uint32 %"$zero_690"), !dbg !25
  store %Uint32 %"$$c32_15_call_691", %Uint32* %"$c32_16", align 4, !dbg !25
  %"$$c32_16_692" = load %Uint32, %Uint32* %"$c32_16", align 4
  store %Uint32 %"$$c32_16_692", %Uint32* %"$retval_76", align 4, !dbg !25
  %"$$retval_76_693" = load %Uint32, %Uint32* %"$retval_76", align 4
  ret %Uint32 %"$$retval_76_693"
}

define internal { i8*, i8* }* @"$fundef_73"(%"$$fundef_73_env_118"* %0, { i8*, i8* }* %1) !dbg !27 {
entry:
  %"$$fundef_73_env_c0_570" = getelementptr inbounds %"$$fundef_73_env_118", %"$$fundef_73_env_118"* %0, i32 0, i32 0
  %"$c0_envload_571" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_73_env_c0_570", align 8
  %c0 = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$c0_envload_571", { i8*, i8* }** %c0, align 8
  %"$$fundef_73_env_cadd_572" = getelementptr inbounds %"$$fundef_73_env_118", %"$$fundef_73_env_118"* %0, i32 0, i32 1
  %"$cadd_envload_573" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_73_env_cadd_572", align 8
  %cadd = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_envload_573", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$$fundef_73_env_m_574" = getelementptr inbounds %"$$fundef_73_env_118", %"$$fundef_73_env_118"* %0, i32 0, i32 2
  %"$m_envload_575" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_73_env_m_574", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_575", { i8*, i8* }** %m, align 8
  %"$retval_74" = alloca { i8*, i8* }*, align 8
  %"$gasrem_576" = load i64, i64* @_gasrem, align 8
  %"$gascmp_577" = icmp ugt i64 1, %"$gasrem_576"
  br i1 %"$gascmp_577", label %"$out_of_gas_578", label %"$have_gas_579"

"$out_of_gas_578":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_579"

"$have_gas_579":                                  ; preds = %"$out_of_gas_578", %entry
  %"$consume_580" = sub i64 %"$gasrem_576", 1
  store i64 %"$consume_580", i64* @_gasrem, align 8
  %cadd_m = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_581" = load i64, i64* @_gasrem, align 8
  %"$gascmp_582" = icmp ugt i64 1, %"$gasrem_581"
  br i1 %"$gascmp_582", label %"$out_of_gas_583", label %"$have_gas_584"

"$out_of_gas_583":                                ; preds = %"$have_gas_579"
  call void @_out_of_gas()
  br label %"$have_gas_584"

"$have_gas_584":                                  ; preds = %"$out_of_gas_583", %"$have_gas_579"
  %"$consume_585" = sub i64 %"$gasrem_581", 1
  store i64 %"$consume_585", i64* @_gasrem, align 8
  %"$cadd_12" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cadd_586" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$cadd_fptr_587" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_586", 0
  %"$cadd_envptr_588" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_586", 1
  %"$m_589" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  %"$cadd_call_590" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_fptr_587"(i8* %"$cadd_envptr_588", { i8*, i8* }* %"$m_589"), !dbg !28
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_call_590", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_12", align 8, !dbg !28
  %"$$cadd_12_591" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_12", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_12_591", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %cadd_m, align 8, !dbg !28
  %"$gasrem_592" = load i64, i64* @_gasrem, align 8
  %"$gascmp_593" = icmp ugt i64 1, %"$gasrem_592"
  br i1 %"$gascmp_593", label %"$out_of_gas_594", label %"$have_gas_595"

"$out_of_gas_594":                                ; preds = %"$have_gas_584"
  call void @_out_of_gas()
  br label %"$have_gas_595"

"$have_gas_595":                                  ; preds = %"$out_of_gas_594", %"$have_gas_584"
  %"$consume_596" = sub i64 %"$gasrem_592", 1
  store i64 %"$consume_596", i64* @_gasrem, align 8
  %nI = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_597" = load i64, i64* @_gasrem, align 8
  %"$gascmp_598" = icmp ugt i64 1, %"$gasrem_597"
  br i1 %"$gascmp_598", label %"$out_of_gas_599", label %"$have_gas_600"

"$out_of_gas_599":                                ; preds = %"$have_gas_595"
  call void @_out_of_gas()
  br label %"$have_gas_600"

"$have_gas_600":                                  ; preds = %"$out_of_gas_599", %"$have_gas_595"
  %"$consume_601" = sub i64 %"$gasrem_597", 1
  store i64 %"$consume_601", i64* @_gasrem, align 8
  %"$n_602" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 1
  %"$n_603" = bitcast { i8*, i8* }* %"$n_602" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$n_604" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$n_603", align 8
  %"$n_fptr_605" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_604", 0
  %"$n_envptr_606" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_604", 1
  %"$n_call_607" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_fptr_605"(i8* %"$n_envptr_606"), !dbg !29
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_call_607", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nI, align 8, !dbg !30
  %"$gasrem_608" = load i64, i64* @_gasrem, align 8
  %"$gascmp_609" = icmp ugt i64 1, %"$gasrem_608"
  br i1 %"$gascmp_609", label %"$out_of_gas_610", label %"$have_gas_611"

"$out_of_gas_610":                                ; preds = %"$have_gas_600"
  call void @_out_of_gas()
  br label %"$have_gas_611"

"$have_gas_611":                                  ; preds = %"$out_of_gas_610", %"$have_gas_600"
  %"$consume_612" = sub i64 %"$gasrem_608", 1
  store i64 %"$consume_612", i64* @_gasrem, align 8
  %"$nI_13" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$nI_613" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nI, align 8
  %"$nI_fptr_614" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nI_613", 0
  %"$nI_envptr_615" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nI_613", 1
  %"$cadd_m_616" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %cadd_m, align 8
  %"$nI_call_617" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nI_fptr_614"(i8* %"$nI_envptr_615", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_m_616"), !dbg !31
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nI_call_617", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nI_13", align 8, !dbg !31
  %"$nI_14" = alloca { i8*, i8* }*, align 8
  %"$$nI_13_618" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nI_13", align 8
  %"$$nI_13_fptr_619" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nI_13_618", 0
  %"$$nI_13_envptr_620" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nI_13_618", 1
  %"$c0_621" = load { i8*, i8* }*, { i8*, i8* }** %c0, align 8
  %"$$nI_13_call_622" = call { i8*, i8* }* %"$$nI_13_fptr_619"(i8* %"$$nI_13_envptr_620", { i8*, i8* }* %"$c0_621"), !dbg !31
  store { i8*, i8* }* %"$$nI_13_call_622", { i8*, i8* }** %"$nI_14", align 8, !dbg !31
  %"$$nI_14_623" = load { i8*, i8* }*, { i8*, i8* }** %"$nI_14", align 8
  store { i8*, i8* }* %"$$nI_14_623", { i8*, i8* }** %"$retval_74", align 8, !dbg !31
  %"$$retval_74_624" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_74", align 8
  ret { i8*, i8* }* %"$$retval_74_624"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_71"(%"$$fundef_71_env_119"* %0, { i8*, i8* }* %1) !dbg !32 {
entry:
  %"$$fundef_71_env_c0_551" = getelementptr inbounds %"$$fundef_71_env_119", %"$$fundef_71_env_119"* %0, i32 0, i32 0
  %"$c0_envload_552" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_71_env_c0_551", align 8
  %c0 = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$c0_envload_552", { i8*, i8* }** %c0, align 8
  %"$$fundef_71_env_cadd_553" = getelementptr inbounds %"$$fundef_71_env_119", %"$$fundef_71_env_119"* %0, i32 0, i32 1
  %"$cadd_envload_554" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_71_env_cadd_553", align 8
  %cadd = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_envload_554", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$retval_72" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_555" = load i64, i64* @_gasrem, align 8
  %"$gascmp_556" = icmp ugt i64 1, %"$gasrem_555"
  br i1 %"$gascmp_556", label %"$out_of_gas_557", label %"$have_gas_558"

"$out_of_gas_557":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_558"

"$have_gas_558":                                  ; preds = %"$out_of_gas_557", %entry
  %"$consume_559" = sub i64 %"$gasrem_555", 1
  store i64 %"$consume_559", i64* @_gasrem, align 8
  %"$$fundef_73_envp_560_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_73_envp_560_salloc" = call i8* @_salloc(i8* %"$$fundef_73_envp_560_load", i64 32)
  %"$$fundef_73_envp_560" = bitcast i8* %"$$fundef_73_envp_560_salloc" to %"$$fundef_73_env_118"*
  %"$$fundef_73_env_voidp_562" = bitcast %"$$fundef_73_env_118"* %"$$fundef_73_envp_560" to i8*
  %"$$fundef_73_cloval_563" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_73_env_118"*, { i8*, i8* }*)* @"$fundef_73" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_73_env_voidp_562", 1
  %"$$fundef_73_env_c0_564" = getelementptr inbounds %"$$fundef_73_env_118", %"$$fundef_73_env_118"* %"$$fundef_73_envp_560", i32 0, i32 0
  %"$c0_565" = load { i8*, i8* }*, { i8*, i8* }** %c0, align 8
  store { i8*, i8* }* %"$c0_565", { i8*, i8* }** %"$$fundef_73_env_c0_564", align 8
  %"$$fundef_73_env_cadd_566" = getelementptr inbounds %"$$fundef_73_env_118", %"$$fundef_73_env_118"* %"$$fundef_73_envp_560", i32 0, i32 1
  %"$cadd_567" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_567", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_73_env_cadd_566", align 8
  %"$$fundef_73_env_m_568" = getelementptr inbounds %"$$fundef_73_env_118", %"$$fundef_73_env_118"* %"$$fundef_73_envp_560", i32 0, i32 2
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_73_env_m_568", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_73_cloval_563", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_72", align 8, !dbg !33
  %"$$retval_72_569" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_72", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_72_569"
}

define internal { i8*, i8* }* @"$fundef_69"(%"$$fundef_69_env_120"* %0, { i8*, i8* }* %1) !dbg !34 {
entry:
  %"$$fundef_69_env_m_474" = getelementptr inbounds %"$$fundef_69_env_120", %"$$fundef_69_env_120"* %0, i32 0, i32 0
  %"$m_envload_475" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_69_env_m_474", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_475", { i8*, i8* }** %m, align 8
  %"$$fundef_69_env_n_476" = getelementptr inbounds %"$$fundef_69_env_120", %"$$fundef_69_env_120"* %0, i32 0, i32 1
  %"$n_envload_477" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_69_env_n_476", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_477", { i8*, i8* }** %n, align 8
  %"$$fundef_69_env_s_478" = getelementptr inbounds %"$$fundef_69_env_120", %"$$fundef_69_env_120"* %0, i32 0, i32 2
  %"$s_envload_479" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_69_env_s_478", align 8
  %s = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_envload_479", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$retval_70" = alloca { i8*, i8* }*, align 8
  %"$gasrem_480" = load i64, i64* @_gasrem, align 8
  %"$gascmp_481" = icmp ugt i64 1, %"$gasrem_480"
  br i1 %"$gascmp_481", label %"$out_of_gas_482", label %"$have_gas_483"

"$out_of_gas_482":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_483"

"$have_gas_483":                                  ; preds = %"$out_of_gas_482", %entry
  %"$consume_484" = sub i64 %"$gasrem_480", 1
  store i64 %"$consume_484", i64* @_gasrem, align 8
  %mX = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_485" = load i64, i64* @_gasrem, align 8
  %"$gascmp_486" = icmp ugt i64 1, %"$gasrem_485"
  br i1 %"$gascmp_486", label %"$out_of_gas_487", label %"$have_gas_488"

"$out_of_gas_487":                                ; preds = %"$have_gas_483"
  call void @_out_of_gas()
  br label %"$have_gas_488"

"$have_gas_488":                                  ; preds = %"$out_of_gas_487", %"$have_gas_483"
  %"$consume_489" = sub i64 %"$gasrem_485", 1
  store i64 %"$consume_489", i64* @_gasrem, align 8
  %"$m_490" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  %"$m_491" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$m_490", i32 1
  %"$m_492" = bitcast { i8*, i8* }* %"$m_491" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$m_493" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$m_492", align 8
  %"$m_fptr_494" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$m_493", 0
  %"$m_envptr_495" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$m_493", 1
  %"$m_call_496" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$m_fptr_494"(i8* %"$m_envptr_495"), !dbg !35
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$m_call_496", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %mX, align 8, !dbg !36
  %"$gasrem_497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_498" = icmp ugt i64 1, %"$gasrem_497"
  br i1 %"$gascmp_498", label %"$out_of_gas_499", label %"$have_gas_500"

"$out_of_gas_499":                                ; preds = %"$have_gas_488"
  call void @_out_of_gas()
  br label %"$have_gas_500"

"$have_gas_500":                                  ; preds = %"$out_of_gas_499", %"$have_gas_488"
  %"$consume_501" = sub i64 %"$gasrem_497", 1
  store i64 %"$consume_501", i64* @_gasrem, align 8
  %nX = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_502" = load i64, i64* @_gasrem, align 8
  %"$gascmp_503" = icmp ugt i64 1, %"$gasrem_502"
  br i1 %"$gascmp_503", label %"$out_of_gas_504", label %"$have_gas_505"

"$out_of_gas_504":                                ; preds = %"$have_gas_500"
  call void @_out_of_gas()
  br label %"$have_gas_505"

"$have_gas_505":                                  ; preds = %"$out_of_gas_504", %"$have_gas_500"
  %"$consume_506" = sub i64 %"$gasrem_502", 1
  store i64 %"$consume_506", i64* @_gasrem, align 8
  %"$n_507" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  %"$n_508" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$n_507", i32 1
  %"$n_509" = bitcast { i8*, i8* }* %"$n_508" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$n_510" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$n_509", align 8
  %"$n_fptr_511" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_510", 0
  %"$n_envptr_512" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_510", 1
  %"$n_call_513" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_fptr_511"(i8* %"$n_envptr_512"), !dbg !37
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_call_513", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nX, align 8, !dbg !38
  %"$gasrem_514" = load i64, i64* @_gasrem, align 8
  %"$gascmp_515" = icmp ugt i64 1, %"$gasrem_514"
  br i1 %"$gascmp_515", label %"$out_of_gas_516", label %"$have_gas_517"

"$out_of_gas_516":                                ; preds = %"$have_gas_505"
  call void @_out_of_gas()
  br label %"$have_gas_517"

"$have_gas_517":                                  ; preds = %"$out_of_gas_516", %"$have_gas_505"
  %"$consume_518" = sub i64 %"$gasrem_514", 1
  store i64 %"$consume_518", i64* @_gasrem, align 8
  %nXsz = alloca { i8*, i8* }*, align 8
  %"$gasrem_519" = load i64, i64* @_gasrem, align 8
  %"$gascmp_520" = icmp ugt i64 1, %"$gasrem_519"
  br i1 %"$gascmp_520", label %"$out_of_gas_521", label %"$have_gas_522"

"$out_of_gas_521":                                ; preds = %"$have_gas_517"
  call void @_out_of_gas()
  br label %"$have_gas_522"

"$have_gas_522":                                  ; preds = %"$out_of_gas_521", %"$have_gas_517"
  %"$consume_523" = sub i64 %"$gasrem_519", 1
  store i64 %"$consume_523", i64* @_gasrem, align 8
  %"$nX_8" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$nX_524" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nX, align 8
  %"$nX_fptr_525" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nX_524", 0
  %"$nX_envptr_526" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nX_524", 1
  %"$s_527" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$nX_call_528" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nX_fptr_525"(i8* %"$nX_envptr_526", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_527"), !dbg !39
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nX_call_528", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nX_8", align 8, !dbg !39
  %"$nX_9" = alloca { i8*, i8* }*, align 8
  %"$$nX_8_529" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nX_8", align 8
  %"$$nX_8_fptr_530" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nX_8_529", 0
  %"$$nX_8_envptr_531" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nX_8_529", 1
  %"$$nX_8_call_532" = call { i8*, i8* }* %"$$nX_8_fptr_530"(i8* %"$$nX_8_envptr_531", { i8*, i8* }* %1), !dbg !39
  store { i8*, i8* }* %"$$nX_8_call_532", { i8*, i8* }** %"$nX_9", align 8, !dbg !39
  %"$$nX_9_533" = load { i8*, i8* }*, { i8*, i8* }** %"$nX_9", align 8
  store { i8*, i8* }* %"$$nX_9_533", { i8*, i8* }** %nXsz, align 8, !dbg !39
  %"$gasrem_534" = load i64, i64* @_gasrem, align 8
  %"$gascmp_535" = icmp ugt i64 1, %"$gasrem_534"
  br i1 %"$gascmp_535", label %"$out_of_gas_536", label %"$have_gas_537"

"$out_of_gas_536":                                ; preds = %"$have_gas_522"
  call void @_out_of_gas()
  br label %"$have_gas_537"

"$have_gas_537":                                  ; preds = %"$out_of_gas_536", %"$have_gas_522"
  %"$consume_538" = sub i64 %"$gasrem_534", 1
  store i64 %"$consume_538", i64* @_gasrem, align 8
  %"$mX_10" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$mX_539" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %mX, align 8
  %"$mX_fptr_540" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$mX_539", 0
  %"$mX_envptr_541" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$mX_539", 1
  %"$s_542" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$mX_call_543" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$mX_fptr_540"(i8* %"$mX_envptr_541", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_542"), !dbg !40
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$mX_call_543", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$mX_10", align 8, !dbg !40
  %"$mX_11" = alloca { i8*, i8* }*, align 8
  %"$$mX_10_544" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$mX_10", align 8
  %"$$mX_10_fptr_545" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$mX_10_544", 0
  %"$$mX_10_envptr_546" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$mX_10_544", 1
  %"$nXsz_547" = load { i8*, i8* }*, { i8*, i8* }** %nXsz, align 8
  %"$$mX_10_call_548" = call { i8*, i8* }* %"$$mX_10_fptr_545"(i8* %"$$mX_10_envptr_546", { i8*, i8* }* %"$nXsz_547"), !dbg !40
  store { i8*, i8* }* %"$$mX_10_call_548", { i8*, i8* }** %"$mX_11", align 8, !dbg !40
  %"$$mX_11_549" = load { i8*, i8* }*, { i8*, i8* }** %"$mX_11", align 8
  store { i8*, i8* }* %"$$mX_11_549", { i8*, i8* }** %"$retval_70", align 8, !dbg !40
  %"$$retval_70_550" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_70", align 8
  ret { i8*, i8* }* %"$$retval_70_550"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_67"(%"$$fundef_67_env_121"* %0, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1) !dbg !41 {
entry:
  %"$$fundef_67_env_m_455" = getelementptr inbounds %"$$fundef_67_env_121", %"$$fundef_67_env_121"* %0, i32 0, i32 0
  %"$m_envload_456" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_67_env_m_455", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_456", { i8*, i8* }** %m, align 8
  %"$$fundef_67_env_n_457" = getelementptr inbounds %"$$fundef_67_env_121", %"$$fundef_67_env_121"* %0, i32 0, i32 1
  %"$n_envload_458" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_67_env_n_457", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_458", { i8*, i8* }** %n, align 8
  %"$retval_68" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_459" = load i64, i64* @_gasrem, align 8
  %"$gascmp_460" = icmp ugt i64 1, %"$gasrem_459"
  br i1 %"$gascmp_460", label %"$out_of_gas_461", label %"$have_gas_462"

"$out_of_gas_461":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_462"

"$have_gas_462":                                  ; preds = %"$out_of_gas_461", %entry
  %"$consume_463" = sub i64 %"$gasrem_459", 1
  store i64 %"$consume_463", i64* @_gasrem, align 8
  %"$$fundef_69_envp_464_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_69_envp_464_salloc" = call i8* @_salloc(i8* %"$$fundef_69_envp_464_load", i64 32)
  %"$$fundef_69_envp_464" = bitcast i8* %"$$fundef_69_envp_464_salloc" to %"$$fundef_69_env_120"*
  %"$$fundef_69_env_voidp_466" = bitcast %"$$fundef_69_env_120"* %"$$fundef_69_envp_464" to i8*
  %"$$fundef_69_cloval_467" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_69_env_120"*, { i8*, i8* }*)* @"$fundef_69" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_69_env_voidp_466", 1
  %"$$fundef_69_env_m_468" = getelementptr inbounds %"$$fundef_69_env_120", %"$$fundef_69_env_120"* %"$$fundef_69_envp_464", i32 0, i32 0
  %"$m_469" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  store { i8*, i8* }* %"$m_469", { i8*, i8* }** %"$$fundef_69_env_m_468", align 8
  %"$$fundef_69_env_n_470" = getelementptr inbounds %"$$fundef_69_env_120", %"$$fundef_69_env_120"* %"$$fundef_69_envp_464", i32 0, i32 1
  %"$n_471" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  store { i8*, i8* }* %"$n_471", { i8*, i8* }** %"$$fundef_69_env_n_470", align 8
  %"$$fundef_69_env_s_472" = getelementptr inbounds %"$$fundef_69_env_120", %"$$fundef_69_env_120"* %"$$fundef_69_envp_464", i32 0, i32 2
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_69_env_s_472", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_69_cloval_467", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_68", align 8, !dbg !42
  %"$$retval_68_473" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_68", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_68_473"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } @"$fundef_65"(%"$$fundef_65_env_122"* %0) !dbg !43 {
entry:
  %"$$fundef_65_env_m_437" = getelementptr inbounds %"$$fundef_65_env_122", %"$$fundef_65_env_122"* %0, i32 0, i32 0
  %"$m_envload_438" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_65_env_m_437", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_438", { i8*, i8* }** %m, align 8
  %"$$fundef_65_env_n_439" = getelementptr inbounds %"$$fundef_65_env_122", %"$$fundef_65_env_122"* %0, i32 0, i32 1
  %"$n_envload_440" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_65_env_n_439", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_440", { i8*, i8* }** %n, align 8
  %"$retval_66" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_442" = icmp ugt i64 1, %"$gasrem_441"
  br i1 %"$gascmp_442", label %"$out_of_gas_443", label %"$have_gas_444"

"$out_of_gas_443":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_444"

"$have_gas_444":                                  ; preds = %"$out_of_gas_443", %entry
  %"$consume_445" = sub i64 %"$gasrem_441", 1
  store i64 %"$consume_445", i64* @_gasrem, align 8
  %"$$fundef_67_envp_446_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_67_envp_446_salloc" = call i8* @_salloc(i8* %"$$fundef_67_envp_446_load", i64 16)
  %"$$fundef_67_envp_446" = bitcast i8* %"$$fundef_67_envp_446_salloc" to %"$$fundef_67_env_121"*
  %"$$fundef_67_env_voidp_448" = bitcast %"$$fundef_67_env_121"* %"$$fundef_67_envp_446" to i8*
  %"$$fundef_67_cloval_449" = insertvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_67_env_121"*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* @"$fundef_67" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*), i8* undef }, i8* %"$$fundef_67_env_voidp_448", 1
  %"$$fundef_67_env_m_450" = getelementptr inbounds %"$$fundef_67_env_121", %"$$fundef_67_env_121"* %"$$fundef_67_envp_446", i32 0, i32 0
  %"$m_451" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  store { i8*, i8* }* %"$m_451", { i8*, i8* }** %"$$fundef_67_env_m_450", align 8
  %"$$fundef_67_env_n_452" = getelementptr inbounds %"$$fundef_67_env_121", %"$$fundef_67_env_121"* %"$$fundef_67_envp_446", i32 0, i32 1
  %"$n_453" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  store { i8*, i8* }* %"$n_453", { i8*, i8* }** %"$$fundef_67_env_n_452", align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$fundef_67_cloval_449", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_66", align 8, !dbg !44
  %"$$retval_66_454" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_66", align 8
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$retval_66_454"
}

define internal %Uint32 @"$fundef_63"(%"$$fundef_63_env_123"* %0, %Uint32 %1) !dbg !45 {
entry:
  %"$z_436" = alloca %Uint32, align 8
  store %Uint32 %1, %Uint32* %"$z_436", align 4
  call void @llvm.dbg.declare(metadata %Uint32* %"$z_436", metadata !46, metadata !DIExpression()), !dbg !47
  %"$$fundef_63_env_m_359" = getelementptr inbounds %"$$fundef_63_env_123", %"$$fundef_63_env_123"* %0, i32 0, i32 0
  %"$m_envload_360" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_63_env_m_359", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_360", { i8*, i8* }** %m, align 8
  %"$$fundef_63_env_n_361" = getelementptr inbounds %"$$fundef_63_env_123", %"$$fundef_63_env_123"* %0, i32 0, i32 1
  %"$n_envload_362" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_63_env_n_361", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_362", { i8*, i8* }** %n, align 8
  %"$$fundef_63_env_s_363" = getelementptr inbounds %"$$fundef_63_env_123", %"$$fundef_63_env_123"* %0, i32 0, i32 2
  %"$s_envload_364" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_63_env_s_363", align 8
  %s = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_envload_364", { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$retval_64" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_64", metadata !48, metadata !DIExpression()), !dbg !49
  %"$gasrem_365" = load i64, i64* @_gasrem, align 8
  %"$gascmp_366" = icmp ugt i64 1, %"$gasrem_365"
  br i1 %"$gascmp_366", label %"$out_of_gas_367", label %"$have_gas_368"

"$out_of_gas_367":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_368"

"$have_gas_368":                                  ; preds = %"$out_of_gas_367", %entry
  %"$consume_369" = sub i64 %"$gasrem_365", 1
  store i64 %"$consume_369", i64* @_gasrem, align 8
  %mX = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_370" = load i64, i64* @_gasrem, align 8
  %"$gascmp_371" = icmp ugt i64 1, %"$gasrem_370"
  br i1 %"$gascmp_371", label %"$out_of_gas_372", label %"$have_gas_373"

"$out_of_gas_372":                                ; preds = %"$have_gas_368"
  call void @_out_of_gas()
  br label %"$have_gas_373"

"$have_gas_373":                                  ; preds = %"$out_of_gas_372", %"$have_gas_368"
  %"$consume_374" = sub i64 %"$gasrem_370", 1
  store i64 %"$consume_374", i64* @_gasrem, align 8
  %"$m_375" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  %"$m_376" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$m_375", i32 0
  %"$m_377" = bitcast { i8*, i8* }* %"$m_376" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$m_378" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$m_377", align 8
  %"$m_fptr_379" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$m_378", 0
  %"$m_envptr_380" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$m_378", 1
  %"$m_call_381" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_fptr_379"(i8* %"$m_envptr_380"), !dbg !50
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_call_381", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %mX, align 8, !dbg !51
  %"$gasrem_382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_383" = icmp ugt i64 1, %"$gasrem_382"
  br i1 %"$gascmp_383", label %"$out_of_gas_384", label %"$have_gas_385"

"$out_of_gas_384":                                ; preds = %"$have_gas_373"
  call void @_out_of_gas()
  br label %"$have_gas_385"

"$have_gas_385":                                  ; preds = %"$out_of_gas_384", %"$have_gas_373"
  %"$consume_386" = sub i64 %"$gasrem_382", 1
  store i64 %"$consume_386", i64* @_gasrem, align 8
  %nX = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_388" = icmp ugt i64 1, %"$gasrem_387"
  br i1 %"$gascmp_388", label %"$out_of_gas_389", label %"$have_gas_390"

"$out_of_gas_389":                                ; preds = %"$have_gas_385"
  call void @_out_of_gas()
  br label %"$have_gas_390"

"$have_gas_390":                                  ; preds = %"$out_of_gas_389", %"$have_gas_385"
  %"$consume_391" = sub i64 %"$gasrem_387", 1
  store i64 %"$consume_391", i64* @_gasrem, align 8
  %"$n_392" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  %"$n_393" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$n_392", i32 0
  %"$n_394" = bitcast { i8*, i8* }* %"$n_393" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$n_395" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$n_394", align 8
  %"$n_fptr_396" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$n_395", 0
  %"$n_envptr_397" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$n_395", 1
  %"$n_call_398" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_fptr_396"(i8* %"$n_envptr_397"), !dbg !52
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_call_398", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %nX, align 8, !dbg !53
  %"$gasrem_399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_400" = icmp ugt i64 1, %"$gasrem_399"
  br i1 %"$gascmp_400", label %"$out_of_gas_401", label %"$have_gas_402"

"$out_of_gas_401":                                ; preds = %"$have_gas_390"
  call void @_out_of_gas()
  br label %"$have_gas_402"

"$have_gas_402":                                  ; preds = %"$out_of_gas_401", %"$have_gas_390"
  %"$consume_403" = sub i64 %"$gasrem_399", 1
  store i64 %"$consume_403", i64* @_gasrem, align 8
  %nXsz = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %nXsz, metadata !54, metadata !DIExpression()), !dbg !55
  %"$gasrem_404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_405" = icmp ugt i64 1, %"$gasrem_404"
  br i1 %"$gascmp_405", label %"$out_of_gas_406", label %"$have_gas_407"

"$out_of_gas_406":                                ; preds = %"$have_gas_402"
  call void @_out_of_gas()
  br label %"$have_gas_407"

"$have_gas_407":                                  ; preds = %"$out_of_gas_406", %"$have_gas_402"
  %"$consume_408" = sub i64 %"$gasrem_404", 1
  store i64 %"$consume_408", i64* @_gasrem, align 8
  %"$nX_8" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$nX_409" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %nX, align 8
  %"$nX_fptr_410" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$nX_409", 0
  %"$nX_envptr_411" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$nX_409", 1
  %"$s_412" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$nX_call_413" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_fptr_410"(i8* %"$nX_envptr_411", { %Uint32 (i8*, %Uint32)*, i8* } %"$s_412"), !dbg !56
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_call_413", { %Uint32 (i8*, %Uint32)*, i8* }* %"$nX_8", align 8, !dbg !56
  %"$nX_9" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$nX_9", metadata !57, metadata !DIExpression()), !dbg !56
  %"$$nX_8_414" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$nX_8", align 8
  %"$$nX_8_fptr_415" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$nX_8_414", 0
  %"$$nX_8_envptr_416" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$nX_8_414", 1
  %"$$nX_8_call_417" = call %Uint32 %"$$nX_8_fptr_415"(i8* %"$$nX_8_envptr_416", %Uint32 %1), !dbg !56
  store %Uint32 %"$$nX_8_call_417", %Uint32* %"$nX_9", align 4, !dbg !56
  %"$$nX_9_418" = load %Uint32, %Uint32* %"$nX_9", align 4
  store %Uint32 %"$$nX_9_418", %Uint32* %nXsz, align 4, !dbg !56
  %"$gasrem_419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_420" = icmp ugt i64 1, %"$gasrem_419"
  br i1 %"$gascmp_420", label %"$out_of_gas_421", label %"$have_gas_422"

"$out_of_gas_421":                                ; preds = %"$have_gas_407"
  call void @_out_of_gas()
  br label %"$have_gas_422"

"$have_gas_422":                                  ; preds = %"$out_of_gas_421", %"$have_gas_407"
  %"$consume_423" = sub i64 %"$gasrem_419", 1
  store i64 %"$consume_423", i64* @_gasrem, align 8
  %"$mX_10" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$mX_424" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %mX, align 8
  %"$mX_fptr_425" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$mX_424", 0
  %"$mX_envptr_426" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$mX_424", 1
  %"$s_427" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$mX_call_428" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$mX_fptr_425"(i8* %"$mX_envptr_426", { %Uint32 (i8*, %Uint32)*, i8* } %"$s_427"), !dbg !58
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$mX_call_428", { %Uint32 (i8*, %Uint32)*, i8* }* %"$mX_10", align 8, !dbg !58
  %"$mX_11" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$mX_11", metadata !59, metadata !DIExpression()), !dbg !58
  %"$$mX_10_429" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$mX_10", align 8
  %"$$mX_10_fptr_430" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$mX_10_429", 0
  %"$$mX_10_envptr_431" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$mX_10_429", 1
  %"$nXsz_432" = load %Uint32, %Uint32* %nXsz, align 4
  %"$$mX_10_call_433" = call %Uint32 %"$$mX_10_fptr_430"(i8* %"$$mX_10_envptr_431", %Uint32 %"$nXsz_432"), !dbg !58
  store %Uint32 %"$$mX_10_call_433", %Uint32* %"$mX_11", align 4, !dbg !58
  %"$$mX_11_434" = load %Uint32, %Uint32* %"$mX_11", align 4
  store %Uint32 %"$$mX_11_434", %Uint32* %"$retval_64", align 4, !dbg !58
  %"$$retval_64_435" = load %Uint32, %Uint32* %"$retval_64", align 4
  ret %Uint32 %"$$retval_64_435"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_61"(%"$$fundef_61_env_124"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) !dbg !60 {
entry:
  %"$$fundef_61_env_m_340" = getelementptr inbounds %"$$fundef_61_env_124", %"$$fundef_61_env_124"* %0, i32 0, i32 0
  %"$m_envload_341" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_61_env_m_340", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_341", { i8*, i8* }** %m, align 8
  %"$$fundef_61_env_n_342" = getelementptr inbounds %"$$fundef_61_env_124", %"$$fundef_61_env_124"* %0, i32 0, i32 1
  %"$n_envload_343" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_61_env_n_342", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_343", { i8*, i8* }** %n, align 8
  %"$retval_62" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_345" = icmp ugt i64 1, %"$gasrem_344"
  br i1 %"$gascmp_345", label %"$out_of_gas_346", label %"$have_gas_347"

"$out_of_gas_346":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_347"

"$have_gas_347":                                  ; preds = %"$out_of_gas_346", %entry
  %"$consume_348" = sub i64 %"$gasrem_344", 1
  store i64 %"$consume_348", i64* @_gasrem, align 8
  %"$$fundef_63_envp_349_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_63_envp_349_salloc" = call i8* @_salloc(i8* %"$$fundef_63_envp_349_load", i64 32)
  %"$$fundef_63_envp_349" = bitcast i8* %"$$fundef_63_envp_349_salloc" to %"$$fundef_63_env_123"*
  %"$$fundef_63_env_voidp_351" = bitcast %"$$fundef_63_env_123"* %"$$fundef_63_envp_349" to i8*
  %"$$fundef_63_cloval_352" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_63_env_123"*, %Uint32)* @"$fundef_63" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_63_env_voidp_351", 1
  %"$$fundef_63_env_m_353" = getelementptr inbounds %"$$fundef_63_env_123", %"$$fundef_63_env_123"* %"$$fundef_63_envp_349", i32 0, i32 0
  %"$m_354" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  store { i8*, i8* }* %"$m_354", { i8*, i8* }** %"$$fundef_63_env_m_353", align 8
  %"$$fundef_63_env_n_355" = getelementptr inbounds %"$$fundef_63_env_123", %"$$fundef_63_env_123"* %"$$fundef_63_envp_349", i32 0, i32 1
  %"$n_356" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  store { i8*, i8* }* %"$n_356", { i8*, i8* }** %"$$fundef_63_env_n_355", align 8
  %"$$fundef_63_env_s_357" = getelementptr inbounds %"$$fundef_63_env_123", %"$$fundef_63_env_123"* %"$$fundef_63_envp_349", i32 0, i32 2
  store { %Uint32 (i8*, %Uint32)*, i8* } %1, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_63_env_s_357", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_63_cloval_352", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_62", align 8, !dbg !61
  %"$$retval_62_358" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_62", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_62_358"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_59"(%"$$fundef_59_env_125"* %0) !dbg !62 {
entry:
  %"$$fundef_59_env_m_322" = getelementptr inbounds %"$$fundef_59_env_125", %"$$fundef_59_env_125"* %0, i32 0, i32 0
  %"$m_envload_323" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_59_env_m_322", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_323", { i8*, i8* }** %m, align 8
  %"$$fundef_59_env_n_324" = getelementptr inbounds %"$$fundef_59_env_125", %"$$fundef_59_env_125"* %0, i32 0, i32 1
  %"$n_envload_325" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_59_env_n_324", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_325", { i8*, i8* }** %n, align 8
  %"$retval_60" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_327" = icmp ugt i64 1, %"$gasrem_326"
  br i1 %"$gascmp_327", label %"$out_of_gas_328", label %"$have_gas_329"

"$out_of_gas_328":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_329"

"$have_gas_329":                                  ; preds = %"$out_of_gas_328", %entry
  %"$consume_330" = sub i64 %"$gasrem_326", 1
  store i64 %"$consume_330", i64* @_gasrem, align 8
  %"$$fundef_61_envp_331_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_61_envp_331_salloc" = call i8* @_salloc(i8* %"$$fundef_61_envp_331_load", i64 16)
  %"$$fundef_61_envp_331" = bitcast i8* %"$$fundef_61_envp_331_salloc" to %"$$fundef_61_env_124"*
  %"$$fundef_61_env_voidp_333" = bitcast %"$$fundef_61_env_124"* %"$$fundef_61_envp_331" to i8*
  %"$$fundef_61_cloval_334" = insertvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_61_env_124"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_61" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* undef }, i8* %"$$fundef_61_env_voidp_333", 1
  %"$$fundef_61_env_m_335" = getelementptr inbounds %"$$fundef_61_env_124", %"$$fundef_61_env_124"* %"$$fundef_61_envp_331", i32 0, i32 0
  %"$m_336" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  store { i8*, i8* }* %"$m_336", { i8*, i8* }** %"$$fundef_61_env_m_335", align 8
  %"$$fundef_61_env_n_337" = getelementptr inbounds %"$$fundef_61_env_124", %"$$fundef_61_env_124"* %"$$fundef_61_envp_331", i32 0, i32 1
  %"$n_338" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  store { i8*, i8* }* %"$n_338", { i8*, i8* }** %"$$fundef_61_env_n_337", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$fundef_61_cloval_334", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_60", align 8, !dbg !63
  %"$$retval_60_339" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_60", align 8
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_60_339"
}

define internal { i8*, i8* }* @"$fundef_57"(%"$$fundef_57_env_126"* %0, { i8*, i8* }* %1) !dbg !64 {
entry:
  %"$$fundef_57_env_m_299" = getelementptr inbounds %"$$fundef_57_env_126", %"$$fundef_57_env_126"* %0, i32 0, i32 0
  %"$m_envload_300" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_57_env_m_299", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_300", { i8*, i8* }** %m, align 8
  %"$retval_58" = alloca { i8*, i8* }*, align 8
  %"$gasrem_301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_302" = icmp ugt i64 1, %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %entry
  %"$consume_305" = sub i64 %"$gasrem_301", 1
  store i64 %"$consume_305", i64* @_gasrem, align 8
  %"$$fundef_59_envp_306_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_59_envp_306_salloc" = call i8* @_salloc(i8* %"$$fundef_59_envp_306_load", i64 16)
  %"$$fundef_59_envp_306" = bitcast i8* %"$$fundef_59_envp_306_salloc" to %"$$fundef_59_env_125"*
  %"$$fundef_59_env_voidp_308" = bitcast %"$$fundef_59_env_125"* %"$$fundef_59_envp_306" to i8*
  %"$$fundef_59_cloval_309" = insertvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_59_env_125"*)* @"$fundef_59" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_59_env_voidp_308", 1
  %"$$fundef_59_env_m_310" = getelementptr inbounds %"$$fundef_59_env_125", %"$$fundef_59_env_125"* %"$$fundef_59_envp_306", i32 0, i32 0
  %"$m_311" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  store { i8*, i8* }* %"$m_311", { i8*, i8* }** %"$$fundef_59_env_m_310", align 8
  %"$$fundef_59_env_n_312" = getelementptr inbounds %"$$fundef_59_env_125", %"$$fundef_59_env_125"* %"$$fundef_59_envp_306", i32 0, i32 1
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_59_env_n_312", align 8
  %"$$fundef_65_env_voidp_314" = bitcast %"$$fundef_59_env_125"* %"$$fundef_59_envp_306" to i8*
  %"$$fundef_65_cloval_315" = insertvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (%"$$fundef_65_env_122"*)* @"$fundef_65" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_65_env_voidp_314", 1
  %"$dyndisp_table_316_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_316_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_316_salloc_load", i64 32)
  %"$dyndisp_table_316_salloc" = bitcast i8* %"$dyndisp_table_316_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_316" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_316_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_317" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_316", i32 0
  %"$dyndisp_pcast_318" = bitcast { i8*, i8* }* %"$dyndisp_gep_317" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_59_cloval_309", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_318", align 8
  %"$dyndisp_gep_319" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_316", i32 1
  %"$dyndisp_pcast_320" = bitcast { i8*, i8* }* %"$dyndisp_gep_319" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_65_cloval_315", { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_320", align 8
  store { i8*, i8* }* %"$dyndisp_table_316", { i8*, i8* }** %"$retval_58", align 8, !dbg !65
  %"$$retval_58_321" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_58", align 8
  ret { i8*, i8* }* %"$$retval_58_321"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_55"(%"$$fundef_55_env_127"* %0, { i8*, i8* }* %1) !dbg !66 {
entry:
  %"$retval_56" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_289" = icmp ugt i64 1, %"$gasrem_288"
  br i1 %"$gascmp_289", label %"$out_of_gas_290", label %"$have_gas_291"

"$out_of_gas_290":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_291"

"$have_gas_291":                                  ; preds = %"$out_of_gas_290", %entry
  %"$consume_292" = sub i64 %"$gasrem_288", 1
  store i64 %"$consume_292", i64* @_gasrem, align 8
  %"$$fundef_57_envp_293_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_57_envp_293_salloc" = call i8* @_salloc(i8* %"$$fundef_57_envp_293_load", i64 8)
  %"$$fundef_57_envp_293" = bitcast i8* %"$$fundef_57_envp_293_salloc" to %"$$fundef_57_env_126"*
  %"$$fundef_57_env_voidp_295" = bitcast %"$$fundef_57_env_126"* %"$$fundef_57_envp_293" to i8*
  %"$$fundef_57_cloval_296" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_57_env_126"*, { i8*, i8* }*)* @"$fundef_57" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_57_env_voidp_295", 1
  %"$$fundef_57_env_m_297" = getelementptr inbounds %"$$fundef_57_env_126", %"$$fundef_57_env_126"* %"$$fundef_57_envp_293", i32 0, i32 0
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_57_env_m_297", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_57_cloval_296", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_56", align 8, !dbg !67
  %"$$retval_56_298" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_56", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_56_298"
}

define internal { i8*, i8* }* @"$fundef_53"(%"$$fundef_53_env_128"* %0, { i8*, i8* }* %1) !dbg !68 {
entry:
  %"$$fundef_53_env_s_259" = getelementptr inbounds %"$$fundef_53_env_128", %"$$fundef_53_env_128"* %0, i32 0, i32 0
  %"$s_envload_260" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_53_env_s_259", align 8
  %s = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_envload_260", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$retval_54" = alloca { i8*, i8* }*, align 8
  %"$gasrem_261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_262" = icmp ugt i64 1, %"$gasrem_261"
  br i1 %"$gascmp_262", label %"$out_of_gas_263", label %"$have_gas_264"

"$out_of_gas_263":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_264"

"$have_gas_264":                                  ; preds = %"$out_of_gas_263", %entry
  %"$consume_265" = sub i64 %"$gasrem_261", 1
  store i64 %"$consume_265", i64* @_gasrem, align 8
  %sz = alloca { i8*, i8* }*, align 8
  %"$gasrem_266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_267" = icmp ugt i64 1, %"$gasrem_266"
  br i1 %"$gascmp_267", label %"$out_of_gas_268", label %"$have_gas_269"

"$out_of_gas_268":                                ; preds = %"$have_gas_264"
  call void @_out_of_gas()
  br label %"$have_gas_269"

"$have_gas_269":                                  ; preds = %"$out_of_gas_268", %"$have_gas_264"
  %"$consume_270" = sub i64 %"$gasrem_266", 1
  store i64 %"$consume_270", i64* @_gasrem, align 8
  %"$s_6" = alloca { i8*, i8* }*, align 8
  %"$s_271" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$s_fptr_272" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_271", 0
  %"$s_envptr_273" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_271", 1
  %"$s_call_274" = call { i8*, i8* }* %"$s_fptr_272"(i8* %"$s_envptr_273", { i8*, i8* }* %1), !dbg !69
  store { i8*, i8* }* %"$s_call_274", { i8*, i8* }** %"$s_6", align 8, !dbg !69
  %"$$s_6_275" = load { i8*, i8* }*, { i8*, i8* }** %"$s_6", align 8
  store { i8*, i8* }* %"$$s_6_275", { i8*, i8* }** %sz, align 8, !dbg !69
  %"$gasrem_276" = load i64, i64* @_gasrem, align 8
  %"$gascmp_277" = icmp ugt i64 1, %"$gasrem_276"
  br i1 %"$gascmp_277", label %"$out_of_gas_278", label %"$have_gas_279"

"$out_of_gas_278":                                ; preds = %"$have_gas_269"
  call void @_out_of_gas()
  br label %"$have_gas_279"

"$have_gas_279":                                  ; preds = %"$out_of_gas_278", %"$have_gas_269"
  %"$consume_280" = sub i64 %"$gasrem_276", 1
  store i64 %"$consume_280", i64* @_gasrem, align 8
  %"$s_7" = alloca { i8*, i8* }*, align 8
  %"$s_281" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$s_fptr_282" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_281", 0
  %"$s_envptr_283" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_281", 1
  %"$sz_284" = load { i8*, i8* }*, { i8*, i8* }** %sz, align 8
  %"$s_call_285" = call { i8*, i8* }* %"$s_fptr_282"(i8* %"$s_envptr_283", { i8*, i8* }* %"$sz_284"), !dbg !70
  store { i8*, i8* }* %"$s_call_285", { i8*, i8* }** %"$s_7", align 8, !dbg !70
  %"$$s_7_286" = load { i8*, i8* }*, { i8*, i8* }** %"$s_7", align 8
  store { i8*, i8* }* %"$$s_7_286", { i8*, i8* }** %"$retval_54", align 8, !dbg !70
  %"$$retval_54_287" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_54", align 8
  ret { i8*, i8* }* %"$$retval_54_287"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_51"(%"$$fundef_51_env_129"* %0, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1) !dbg !71 {
entry:
  %"$retval_52" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 1, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %entry
  %"$consume_252" = sub i64 %"$gasrem_248", 1
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %"$$fundef_53_envp_253_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_53_envp_253_salloc" = call i8* @_salloc(i8* %"$$fundef_53_envp_253_load", i64 16)
  %"$$fundef_53_envp_253" = bitcast i8* %"$$fundef_53_envp_253_salloc" to %"$$fundef_53_env_128"*
  %"$$fundef_53_env_voidp_255" = bitcast %"$$fundef_53_env_128"* %"$$fundef_53_envp_253" to i8*
  %"$$fundef_53_cloval_256" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_53_env_128"*, { i8*, i8* }*)* @"$fundef_53" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_53_env_voidp_255", 1
  %"$$fundef_53_env_s_257" = getelementptr inbounds %"$$fundef_53_env_128", %"$$fundef_53_env_128"* %"$$fundef_53_envp_253", i32 0, i32 0
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_53_env_s_257", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_53_cloval_256", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_52", align 8, !dbg !72
  %"$$retval_52_258" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_52", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_52_258"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } @"$fundef_49"(%"$$fundef_49_env_130"* %0) !dbg !73 {
entry:
  %"$retval_50" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_240" = icmp ugt i64 1, %"$gasrem_239"
  br i1 %"$gascmp_240", label %"$out_of_gas_241", label %"$have_gas_242"

"$out_of_gas_241":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_242"

"$have_gas_242":                                  ; preds = %"$out_of_gas_241", %entry
  %"$consume_243" = sub i64 %"$gasrem_239", 1
  store i64 %"$consume_243", i64* @_gasrem, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_51_env_129"*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* @"$fundef_51" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*), i8* null }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_50", align 8, !dbg !74
  %"$$retval_50_247" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_50", align 8
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$retval_50_247"
}

define internal %Uint32 @"$fundef_47"(%"$$fundef_47_env_131"* %0, %Uint32 %1) !dbg !75 {
entry:
  %"$z_238" = alloca %Uint32, align 8
  store %Uint32 %1, %Uint32* %"$z_238", align 4
  call void @llvm.dbg.declare(metadata %Uint32* %"$z_238", metadata !76, metadata !DIExpression()), !dbg !77
  %"$$fundef_47_env_s_209" = getelementptr inbounds %"$$fundef_47_env_131", %"$$fundef_47_env_131"* %0, i32 0, i32 0
  %"$s_envload_210" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_47_env_s_209", align 8
  %s = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_envload_210", { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$retval_48" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_48", metadata !78, metadata !DIExpression()), !dbg !79
  %"$gasrem_211" = load i64, i64* @_gasrem, align 8
  %"$gascmp_212" = icmp ugt i64 1, %"$gasrem_211"
  br i1 %"$gascmp_212", label %"$out_of_gas_213", label %"$have_gas_214"

"$out_of_gas_213":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_214"

"$have_gas_214":                                  ; preds = %"$out_of_gas_213", %entry
  %"$consume_215" = sub i64 %"$gasrem_211", 1
  store i64 %"$consume_215", i64* @_gasrem, align 8
  %sz = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %sz, metadata !80, metadata !DIExpression()), !dbg !81
  %"$gasrem_216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_217" = icmp ugt i64 1, %"$gasrem_216"
  br i1 %"$gascmp_217", label %"$out_of_gas_218", label %"$have_gas_219"

"$out_of_gas_218":                                ; preds = %"$have_gas_214"
  call void @_out_of_gas()
  br label %"$have_gas_219"

"$have_gas_219":                                  ; preds = %"$out_of_gas_218", %"$have_gas_214"
  %"$consume_220" = sub i64 %"$gasrem_216", 1
  store i64 %"$consume_220", i64* @_gasrem, align 8
  %"$s_6" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$s_6", metadata !82, metadata !DIExpression()), !dbg !83
  %"$s_221" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$s_fptr_222" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_221", 0
  %"$s_envptr_223" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_221", 1
  %"$s_call_224" = call %Uint32 %"$s_fptr_222"(i8* %"$s_envptr_223", %Uint32 %1), !dbg !83
  store %Uint32 %"$s_call_224", %Uint32* %"$s_6", align 4, !dbg !83
  %"$$s_6_225" = load %Uint32, %Uint32* %"$s_6", align 4
  store %Uint32 %"$$s_6_225", %Uint32* %sz, align 4, !dbg !83
  %"$gasrem_226" = load i64, i64* @_gasrem, align 8
  %"$gascmp_227" = icmp ugt i64 1, %"$gasrem_226"
  br i1 %"$gascmp_227", label %"$out_of_gas_228", label %"$have_gas_229"

"$out_of_gas_228":                                ; preds = %"$have_gas_219"
  call void @_out_of_gas()
  br label %"$have_gas_229"

"$have_gas_229":                                  ; preds = %"$out_of_gas_228", %"$have_gas_219"
  %"$consume_230" = sub i64 %"$gasrem_226", 1
  store i64 %"$consume_230", i64* @_gasrem, align 8
  %"$s_7" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$s_7", metadata !84, metadata !DIExpression()), !dbg !85
  %"$s_231" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$s_fptr_232" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_231", 0
  %"$s_envptr_233" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_231", 1
  %"$sz_234" = load %Uint32, %Uint32* %sz, align 4
  %"$s_call_235" = call %Uint32 %"$s_fptr_232"(i8* %"$s_envptr_233", %Uint32 %"$sz_234"), !dbg !85
  store %Uint32 %"$s_call_235", %Uint32* %"$s_7", align 4, !dbg !85
  %"$$s_7_236" = load %Uint32, %Uint32* %"$s_7", align 4
  store %Uint32 %"$$s_7_236", %Uint32* %"$retval_48", align 4, !dbg !85
  %"$$retval_48_237" = load %Uint32, %Uint32* %"$retval_48", align 4
  ret %Uint32 %"$$retval_48_237"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_45"(%"$$fundef_45_env_132"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) !dbg !86 {
entry:
  %"$retval_46" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_199" = icmp ugt i64 1, %"$gasrem_198"
  br i1 %"$gascmp_199", label %"$out_of_gas_200", label %"$have_gas_201"

"$out_of_gas_200":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_201"

"$have_gas_201":                                  ; preds = %"$out_of_gas_200", %entry
  %"$consume_202" = sub i64 %"$gasrem_198", 1
  store i64 %"$consume_202", i64* @_gasrem, align 8
  %"$$fundef_47_envp_203_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_47_envp_203_salloc" = call i8* @_salloc(i8* %"$$fundef_47_envp_203_load", i64 16)
  %"$$fundef_47_envp_203" = bitcast i8* %"$$fundef_47_envp_203_salloc" to %"$$fundef_47_env_131"*
  %"$$fundef_47_env_voidp_205" = bitcast %"$$fundef_47_env_131"* %"$$fundef_47_envp_203" to i8*
  %"$$fundef_47_cloval_206" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_47_env_131"*, %Uint32)* @"$fundef_47" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_47_env_voidp_205", 1
  %"$$fundef_47_env_s_207" = getelementptr inbounds %"$$fundef_47_env_131", %"$$fundef_47_env_131"* %"$$fundef_47_envp_203", i32 0, i32 0
  store { %Uint32 (i8*, %Uint32)*, i8* } %1, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_47_env_s_207", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_47_cloval_206", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_46", align 8, !dbg !87
  %"$$retval_46_208" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_46", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_46_208"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_43"(%"$$fundef_43_env_133"* %0) !dbg !88 {
entry:
  %"$retval_44" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 1, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %entry
  %"$consume_193" = sub i64 %"$gasrem_189", 1
  store i64 %"$consume_193", i64* @_gasrem, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_45_env_132"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_45" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_44", align 8, !dbg !89
  %"$$retval_44_197" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_44", align 8
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_44_197"
}

define internal { i8*, i8* }* @"$fundef_41"(%"$$fundef_41_env_134"* %0, { i8*, i8* }* %1) !dbg !90 {
entry:
  %"$retval_42" = alloca { i8*, i8* }*, align 8
  %"$gasrem_183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_184" = icmp ugt i64 1, %"$gasrem_183"
  br i1 %"$gascmp_184", label %"$out_of_gas_185", label %"$have_gas_186"

"$out_of_gas_185":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_186"

"$have_gas_186":                                  ; preds = %"$out_of_gas_185", %entry
  %"$consume_187" = sub i64 %"$gasrem_183", 1
  store i64 %"$consume_187", i64* @_gasrem, align 8
  store { i8*, i8* }* %1, { i8*, i8* }** %"$retval_42", align 8, !dbg !91
  %"$$retval_42_188" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_42", align 8
  ret { i8*, i8* }* %"$$retval_42_188"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_39"(%"$$fundef_39_env_135"* %0, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1) !dbg !92 {
entry:
  %"$retval_40" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %entry
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem, align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_41_env_134"*, { i8*, i8* }*)* @"$fundef_41" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* null }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_40", align 8, !dbg !93
  %"$$retval_40_182" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_40", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_40_182"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } @"$fundef_37"(%"$$fundef_37_env_136"* %0) !dbg !94 {
entry:
  %"$retval_38" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 1, %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %entry
  %"$consume_169" = sub i64 %"$gasrem_165", 1
  store i64 %"$consume_169", i64* @_gasrem, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_39_env_135"*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* @"$fundef_39" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*), i8* null }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_38", align 8, !dbg !95
  %"$$retval_38_173" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_38", align 8
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$retval_38_173"
}

define internal %Uint32 @"$fundef_35"(%"$$fundef_35_env_137"* %0, %Uint32 %1) !dbg !96 {
entry:
  %"$z_164" = alloca %Uint32, align 8
  store %Uint32 %1, %Uint32* %"$z_164", align 4
  call void @llvm.dbg.declare(metadata %Uint32* %"$z_164", metadata !97, metadata !DIExpression()), !dbg !98
  %"$retval_36" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$retval_36", metadata !99, metadata !DIExpression()), !dbg !100
  %"$gasrem_158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_159" = icmp ugt i64 1, %"$gasrem_158"
  br i1 %"$gascmp_159", label %"$out_of_gas_160", label %"$have_gas_161"

"$out_of_gas_160":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_161"

"$have_gas_161":                                  ; preds = %"$out_of_gas_160", %entry
  %"$consume_162" = sub i64 %"$gasrem_158", 1
  store i64 %"$consume_162", i64* @_gasrem, align 8
  store %Uint32 %1, %Uint32* %"$retval_36", align 4, !dbg !100
  %"$$retval_36_163" = load %Uint32, %Uint32* %"$retval_36", align 4
  ret %Uint32 %"$$retval_36_163"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_33"(%"$$fundef_33_env_138"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) !dbg !101 {
entry:
  %"$retval_34" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_150" = icmp ugt i64 1, %"$gasrem_149"
  br i1 %"$gascmp_150", label %"$out_of_gas_151", label %"$have_gas_152"

"$out_of_gas_151":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_152"

"$have_gas_152":                                  ; preds = %"$out_of_gas_151", %entry
  %"$consume_153" = sub i64 %"$gasrem_149", 1
  store i64 %"$consume_153", i64* @_gasrem, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_35_env_137"*, %Uint32)* @"$fundef_35" to %Uint32 (i8*, %Uint32)*), i8* null }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_34", align 8, !dbg !102
  %"$$retval_34_157" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_34", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_34_157"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_31"(%"$$fundef_31_env_139"* %0) !dbg !103 {
entry:
  %"$retval_32" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_140" = load i64, i64* @_gasrem, align 8
  %"$gascmp_141" = icmp ugt i64 1, %"$gasrem_140"
  br i1 %"$gascmp_141", label %"$out_of_gas_142", label %"$have_gas_143"

"$out_of_gas_142":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_143"

"$have_gas_143":                                  ; preds = %"$out_of_gas_142", %entry
  %"$consume_144" = sub i64 %"$gasrem_140", 1
  store i64 %"$consume_144", i64* @_gasrem, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_33_env_138"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_33" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_32", align 8, !dbg !104
  %"$$retval_32_148" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_32", align 8
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_32_148"
}

declare void @_out_of_gas()

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() !dbg !105 {
entry:
  %"$gasrem_705" = load i64, i64* @_gasrem, align 8
  %"$gascmp_706" = icmp ugt i64 5, %"$gasrem_705"
  br i1 %"$gascmp_706", label %"$out_of_gas_707", label %"$have_gas_708"

"$out_of_gas_707":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_708"

"$have_gas_708":                                  ; preds = %"$out_of_gas_707", %entry
  %"$consume_709" = sub i64 %"$gasrem_705", 5
  store i64 %"$consume_709", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !107
  %"$gasrem_710" = load i64, i64* @_gasrem, align 8
  %"$gascmp_711" = icmp ugt i64 8, %"$gasrem_710"
  br i1 %"$gascmp_711", label %"$out_of_gas_712", label %"$have_gas_713"

"$out_of_gas_712":                                ; preds = %"$have_gas_708"
  call void @_out_of_gas()
  br label %"$have_gas_713"

"$have_gas_713":                                  ; preds = %"$out_of_gas_712", %"$have_gas_708"
  %"$consume_714" = sub i64 %"$gasrem_710", 8
  store i64 %"$consume_714", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !107
  %"$gasrem_715" = load i64, i64* @_gasrem, align 8
  %"$gascmp_716" = icmp ugt i64 196, %"$gasrem_715"
  br i1 %"$gascmp_716", label %"$out_of_gas_717", label %"$have_gas_718"

"$out_of_gas_717":                                ; preds = %"$have_gas_713"
  call void @_out_of_gas()
  br label %"$have_gas_718"

"$have_gas_718":                                  ; preds = %"$out_of_gas_717", %"$have_gas_713"
  %"$consume_719" = sub i64 %"$gasrem_715", 196
  store i64 %"$consume_719", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !107
  %"$gasrem_720" = load i64, i64* @_gasrem, align 8
  %"$gascmp_721" = icmp ugt i64 20, %"$gasrem_720"
  br i1 %"$gascmp_721", label %"$out_of_gas_722", label %"$have_gas_723"

"$out_of_gas_722":                                ; preds = %"$have_gas_718"
  call void @_out_of_gas()
  br label %"$have_gas_723"

"$have_gas_723":                                  ; preds = %"$out_of_gas_722", %"$have_gas_718"
  %"$consume_724" = sub i64 %"$gasrem_720", 20
  store i64 %"$consume_724", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !107
  %"$gasrem_725" = load i64, i64* @_gasrem, align 8
  %"$gascmp_726" = icmp ugt i64 12, %"$gasrem_725"
  br i1 %"$gascmp_726", label %"$out_of_gas_727", label %"$have_gas_728"

"$out_of_gas_727":                                ; preds = %"$have_gas_723"
  call void @_out_of_gas()
  br label %"$have_gas_728"

"$have_gas_728":                                  ; preds = %"$out_of_gas_727", %"$have_gas_723"
  %"$consume_729" = sub i64 %"$gasrem_725", 12
  store i64 %"$consume_729", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !107
  %"$gasrem_730" = load i64, i64* @_gasrem, align 8
  %"$gascmp_731" = icmp ugt i64 2, %"$gasrem_730"
  br i1 %"$gascmp_731", label %"$out_of_gas_732", label %"$have_gas_733"

"$out_of_gas_732":                                ; preds = %"$have_gas_728"
  call void @_out_of_gas()
  br label %"$have_gas_733"

"$have_gas_733":                                  ; preds = %"$out_of_gas_732", %"$have_gas_728"
  %"$consume_734" = sub i64 %"$gasrem_730", 2
  store i64 %"$consume_734", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !107
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) !dbg !108 {
entry:
  %"$expr_30" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$expr_30", metadata !109, metadata !DIExpression()), !dbg !110
  %"$gasrem_735" = load i64, i64* @_gasrem, align 8
  %"$gascmp_736" = icmp ugt i64 1, %"$gasrem_735"
  br i1 %"$gascmp_736", label %"$out_of_gas_737", label %"$have_gas_738"

"$out_of_gas_737":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_738"

"$have_gas_738":                                  ; preds = %"$out_of_gas_737", %entry
  %"$consume_739" = sub i64 %"$gasrem_735", 1
  store i64 %"$consume_739", i64* @_gasrem, align 8
  %c0 = alloca { i8*, i8* }*, align 8
  %"$gasrem_740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_741" = icmp ugt i64 1, %"$gasrem_740"
  br i1 %"$gascmp_741", label %"$out_of_gas_742", label %"$have_gas_743"

"$out_of_gas_742":                                ; preds = %"$have_gas_738"
  call void @_out_of_gas()
  br label %"$have_gas_743"

"$have_gas_743":                                  ; preds = %"$out_of_gas_742", %"$have_gas_738"
  %"$consume_744" = sub i64 %"$gasrem_740", 1
  store i64 %"$consume_744", i64* @_gasrem, align 8
  %"$dyndisp_table_751_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_751_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_751_salloc_load", i64 32)
  %"$dyndisp_table_751_salloc" = bitcast i8* %"$dyndisp_table_751_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_751" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_751_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_752" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_751", i32 0
  %"$dyndisp_pcast_753" = bitcast { i8*, i8* }* %"$dyndisp_gep_752" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_31_env_139"*)* @"$fundef_31" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_753", align 8
  %"$dyndisp_gep_754" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_751", i32 1
  %"$dyndisp_pcast_755" = bitcast { i8*, i8* }* %"$dyndisp_gep_754" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (%"$$fundef_37_env_136"*)* @"$fundef_37" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_755", align 8
  store { i8*, i8* }* %"$dyndisp_table_751", { i8*, i8* }** %c0, align 8, !dbg !110
  %"$gasrem_756" = load i64, i64* @_gasrem, align 8
  %"$gascmp_757" = icmp ugt i64 1, %"$gasrem_756"
  br i1 %"$gascmp_757", label %"$out_of_gas_758", label %"$have_gas_759"

"$out_of_gas_758":                                ; preds = %"$have_gas_743"
  call void @_out_of_gas()
  br label %"$have_gas_759"

"$have_gas_759":                                  ; preds = %"$out_of_gas_758", %"$have_gas_743"
  %"$consume_760" = sub i64 %"$gasrem_756", 1
  store i64 %"$consume_760", i64* @_gasrem, align 8
  %"$gasrem_761" = load i64, i64* @_gasrem, align 8
  %"$gascmp_762" = icmp ugt i64 1, %"$gasrem_761"
  br i1 %"$gascmp_762", label %"$out_of_gas_763", label %"$have_gas_764"

"$out_of_gas_763":                                ; preds = %"$have_gas_759"
  call void @_out_of_gas()
  br label %"$have_gas_764"

"$have_gas_764":                                  ; preds = %"$out_of_gas_763", %"$have_gas_759"
  %"$consume_765" = sub i64 %"$gasrem_761", 1
  store i64 %"$consume_765", i64* @_gasrem, align 8
  %"$gasrem_766" = load i64, i64* @_gasrem, align 8
  %"$gascmp_767" = icmp ugt i64 1, %"$gasrem_766"
  br i1 %"$gascmp_767", label %"$out_of_gas_768", label %"$have_gas_769"

"$out_of_gas_768":                                ; preds = %"$have_gas_764"
  call void @_out_of_gas()
  br label %"$have_gas_769"

"$have_gas_769":                                  ; preds = %"$out_of_gas_768", %"$have_gas_764"
  %"$consume_770" = sub i64 %"$gasrem_766", 1
  store i64 %"$consume_770", i64* @_gasrem, align 8
  %c2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_771" = load i64, i64* @_gasrem, align 8
  %"$gascmp_772" = icmp ugt i64 1, %"$gasrem_771"
  br i1 %"$gascmp_772", label %"$out_of_gas_773", label %"$have_gas_774"

"$out_of_gas_773":                                ; preds = %"$have_gas_769"
  call void @_out_of_gas()
  br label %"$have_gas_774"

"$have_gas_774":                                  ; preds = %"$out_of_gas_773", %"$have_gas_769"
  %"$consume_775" = sub i64 %"$gasrem_771", 1
  store i64 %"$consume_775", i64* @_gasrem, align 8
  %"$dyndisp_table_782_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_782_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_782_salloc_load", i64 32)
  %"$dyndisp_table_782_salloc" = bitcast i8* %"$dyndisp_table_782_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_782" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_782_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_783" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_782", i32 0
  %"$dyndisp_pcast_784" = bitcast { i8*, i8* }* %"$dyndisp_gep_783" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_43_env_133"*)* @"$fundef_43" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_784", align 8
  %"$dyndisp_gep_785" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_782", i32 1
  %"$dyndisp_pcast_786" = bitcast { i8*, i8* }* %"$dyndisp_gep_785" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (%"$$fundef_49_env_130"*)* @"$fundef_49" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_786", align 8
  store { i8*, i8* }* %"$dyndisp_table_782", { i8*, i8* }** %c2, align 8, !dbg !111
  %"$gasrem_787" = load i64, i64* @_gasrem, align 8
  %"$gascmp_788" = icmp ugt i64 1, %"$gasrem_787"
  br i1 %"$gascmp_788", label %"$out_of_gas_789", label %"$have_gas_790"

"$out_of_gas_789":                                ; preds = %"$have_gas_774"
  call void @_out_of_gas()
  br label %"$have_gas_790"

"$have_gas_790":                                  ; preds = %"$out_of_gas_789", %"$have_gas_774"
  %"$consume_791" = sub i64 %"$gasrem_787", 1
  store i64 %"$consume_791", i64* @_gasrem, align 8
  %cadd = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_792" = load i64, i64* @_gasrem, align 8
  %"$gascmp_793" = icmp ugt i64 1, %"$gasrem_792"
  br i1 %"$gascmp_793", label %"$out_of_gas_794", label %"$have_gas_795"

"$out_of_gas_794":                                ; preds = %"$have_gas_790"
  call void @_out_of_gas()
  br label %"$have_gas_795"

"$have_gas_795":                                  ; preds = %"$out_of_gas_794", %"$have_gas_790"
  %"$consume_796" = sub i64 %"$gasrem_792", 1
  store i64 %"$consume_796", i64* @_gasrem, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_55_env_127"*, { i8*, i8* }*)* @"$fundef_55" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8, !dbg !112
  %"$gasrem_800" = load i64, i64* @_gasrem, align 8
  %"$gascmp_801" = icmp ugt i64 1, %"$gasrem_800"
  br i1 %"$gascmp_801", label %"$out_of_gas_802", label %"$have_gas_803"

"$out_of_gas_802":                                ; preds = %"$have_gas_795"
  call void @_out_of_gas()
  br label %"$have_gas_803"

"$have_gas_803":                                  ; preds = %"$out_of_gas_802", %"$have_gas_795"
  %"$consume_804" = sub i64 %"$gasrem_800", 1
  store i64 %"$consume_804", i64* @_gasrem, align 8
  %cmul = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_805" = load i64, i64* @_gasrem, align 8
  %"$gascmp_806" = icmp ugt i64 1, %"$gasrem_805"
  br i1 %"$gascmp_806", label %"$out_of_gas_807", label %"$have_gas_808"

"$out_of_gas_807":                                ; preds = %"$have_gas_803"
  call void @_out_of_gas()
  br label %"$have_gas_808"

"$have_gas_808":                                  ; preds = %"$out_of_gas_807", %"$have_gas_803"
  %"$consume_809" = sub i64 %"$gasrem_805", 1
  store i64 %"$consume_809", i64* @_gasrem, align 8
  %"$$fundef_71_envp_810_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_71_envp_810_salloc" = call i8* @_salloc(i8* %"$$fundef_71_envp_810_load", i64 24)
  %"$$fundef_71_envp_810" = bitcast i8* %"$$fundef_71_envp_810_salloc" to %"$$fundef_71_env_119"*
  %"$$fundef_71_env_voidp_812" = bitcast %"$$fundef_71_env_119"* %"$$fundef_71_envp_810" to i8*
  %"$$fundef_71_cloval_813" = insertvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_71_env_119"*, { i8*, i8* }*)* @"$fundef_71" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_71_env_voidp_812", 1
  %"$$fundef_71_env_c0_814" = getelementptr inbounds %"$$fundef_71_env_119", %"$$fundef_71_env_119"* %"$$fundef_71_envp_810", i32 0, i32 0
  %"$c0_815" = load { i8*, i8* }*, { i8*, i8* }** %c0, align 8
  store { i8*, i8* }* %"$c0_815", { i8*, i8* }** %"$$fundef_71_env_c0_814", align 8
  %"$$fundef_71_env_cadd_816" = getelementptr inbounds %"$$fundef_71_env_119", %"$$fundef_71_env_119"* %"$$fundef_71_envp_810", i32 0, i32 1
  %"$cadd_817" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_817", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_71_env_cadd_816", align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_71_cloval_813", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul, align 8, !dbg !113
  %"$gasrem_818" = load i64, i64* @_gasrem, align 8
  %"$gascmp_819" = icmp ugt i64 1, %"$gasrem_818"
  br i1 %"$gascmp_819", label %"$out_of_gas_820", label %"$have_gas_821"

"$out_of_gas_820":                                ; preds = %"$have_gas_808"
  call void @_out_of_gas()
  br label %"$have_gas_821"

"$have_gas_821":                                  ; preds = %"$out_of_gas_820", %"$have_gas_808"
  %"$consume_822" = sub i64 %"$gasrem_818", 1
  store i64 %"$consume_822", i64* @_gasrem, align 8
  %church_nat_to_uint32 = alloca { %Uint32 (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_823" = load i64, i64* @_gasrem, align 8
  %"$gascmp_824" = icmp ugt i64 1, %"$gasrem_823"
  br i1 %"$gascmp_824", label %"$out_of_gas_825", label %"$have_gas_826"

"$out_of_gas_825":                                ; preds = %"$have_gas_821"
  call void @_out_of_gas()
  br label %"$have_gas_826"

"$have_gas_826":                                  ; preds = %"$out_of_gas_825", %"$have_gas_821"
  %"$consume_827" = sub i64 %"$gasrem_823", 1
  store i64 %"$consume_827", i64* @_gasrem, align 8
  store { %Uint32 (i8*, { i8*, i8* }*)*, i8* } { %Uint32 (i8*, { i8*, i8* }*)* bitcast (%Uint32 (%"$$fundef_75_env_117"*, { i8*, i8* }*)* @"$fundef_75" to %Uint32 (i8*, { i8*, i8* }*)*), i8* null }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %church_nat_to_uint32, align 8, !dbg !114
  %"$gasrem_831" = load i64, i64* @_gasrem, align 8
  %"$gascmp_832" = icmp ugt i64 1, %"$gasrem_831"
  br i1 %"$gascmp_832", label %"$out_of_gas_833", label %"$have_gas_834"

"$out_of_gas_833":                                ; preds = %"$have_gas_826"
  call void @_out_of_gas()
  br label %"$have_gas_834"

"$have_gas_834":                                  ; preds = %"$out_of_gas_833", %"$have_gas_826"
  %"$consume_835" = sub i64 %"$gasrem_831", 1
  store i64 %"$consume_835", i64* @_gasrem, align 8
  %c4 = alloca { i8*, i8* }*, align 8
  %"$gasrem_836" = load i64, i64* @_gasrem, align 8
  %"$gascmp_837" = icmp ugt i64 1, %"$gasrem_836"
  br i1 %"$gascmp_837", label %"$out_of_gas_838", label %"$have_gas_839"

"$out_of_gas_838":                                ; preds = %"$have_gas_834"
  call void @_out_of_gas()
  br label %"$have_gas_839"

"$have_gas_839":                                  ; preds = %"$out_of_gas_838", %"$have_gas_834"
  %"$consume_840" = sub i64 %"$gasrem_836", 1
  store i64 %"$consume_840", i64* @_gasrem, align 8
  %"$cmul_17" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cmul_841" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul, align 8
  %"$cmul_fptr_842" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_841", 0
  %"$cmul_envptr_843" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_841", 1
  %"$c2_844" = load { i8*, i8* }*, { i8*, i8* }** %c2, align 8
  %"$cmul_call_845" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_842"(i8* %"$cmul_envptr_843", { i8*, i8* }* %"$c2_844"), !dbg !115
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_845", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_17", align 8, !dbg !115
  %"$cmul_18" = alloca { i8*, i8* }*, align 8
  %"$$cmul_17_846" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_17", align 8
  %"$$cmul_17_fptr_847" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_17_846", 0
  %"$$cmul_17_envptr_848" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_17_846", 1
  %"$c2_849" = load { i8*, i8* }*, { i8*, i8* }** %c2, align 8
  %"$$cmul_17_call_850" = call { i8*, i8* }* %"$$cmul_17_fptr_847"(i8* %"$$cmul_17_envptr_848", { i8*, i8* }* %"$c2_849"), !dbg !115
  store { i8*, i8* }* %"$$cmul_17_call_850", { i8*, i8* }** %"$cmul_18", align 8, !dbg !115
  %"$$cmul_18_851" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_18", align 8
  store { i8*, i8* }* %"$$cmul_18_851", { i8*, i8* }** %c4, align 8, !dbg !115
  %"$gasrem_852" = load i64, i64* @_gasrem, align 8
  %"$gascmp_853" = icmp ugt i64 1, %"$gasrem_852"
  br i1 %"$gascmp_853", label %"$out_of_gas_854", label %"$have_gas_855"

"$out_of_gas_854":                                ; preds = %"$have_gas_839"
  call void @_out_of_gas()
  br label %"$have_gas_855"

"$have_gas_855":                                  ; preds = %"$out_of_gas_854", %"$have_gas_839"
  %"$consume_856" = sub i64 %"$gasrem_852", 1
  store i64 %"$consume_856", i64* @_gasrem, align 8
  %c16 = alloca { i8*, i8* }*, align 8
  %"$gasrem_857" = load i64, i64* @_gasrem, align 8
  %"$gascmp_858" = icmp ugt i64 1, %"$gasrem_857"
  br i1 %"$gascmp_858", label %"$out_of_gas_859", label %"$have_gas_860"

"$out_of_gas_859":                                ; preds = %"$have_gas_855"
  call void @_out_of_gas()
  br label %"$have_gas_860"

"$have_gas_860":                                  ; preds = %"$out_of_gas_859", %"$have_gas_855"
  %"$consume_861" = sub i64 %"$gasrem_857", 1
  store i64 %"$consume_861", i64* @_gasrem, align 8
  %"$cmul_19" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cmul_862" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul, align 8
  %"$cmul_fptr_863" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_862", 0
  %"$cmul_envptr_864" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_862", 1
  %"$c4_865" = load { i8*, i8* }*, { i8*, i8* }** %c4, align 8
  %"$cmul_call_866" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_863"(i8* %"$cmul_envptr_864", { i8*, i8* }* %"$c4_865"), !dbg !116
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_866", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_19", align 8, !dbg !116
  %"$cmul_20" = alloca { i8*, i8* }*, align 8
  %"$$cmul_19_867" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_19", align 8
  %"$$cmul_19_fptr_868" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_19_867", 0
  %"$$cmul_19_envptr_869" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_19_867", 1
  %"$c4_870" = load { i8*, i8* }*, { i8*, i8* }** %c4, align 8
  %"$$cmul_19_call_871" = call { i8*, i8* }* %"$$cmul_19_fptr_868"(i8* %"$$cmul_19_envptr_869", { i8*, i8* }* %"$c4_870"), !dbg !116
  store { i8*, i8* }* %"$$cmul_19_call_871", { i8*, i8* }** %"$cmul_20", align 8, !dbg !116
  %"$$cmul_20_872" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_20", align 8
  store { i8*, i8* }* %"$$cmul_20_872", { i8*, i8* }** %c16, align 8, !dbg !116
  %"$gasrem_873" = load i64, i64* @_gasrem, align 8
  %"$gascmp_874" = icmp ugt i64 1, %"$gasrem_873"
  br i1 %"$gascmp_874", label %"$out_of_gas_875", label %"$have_gas_876"

"$out_of_gas_875":                                ; preds = %"$have_gas_860"
  call void @_out_of_gas()
  br label %"$have_gas_876"

"$have_gas_876":                                  ; preds = %"$out_of_gas_875", %"$have_gas_860"
  %"$consume_877" = sub i64 %"$gasrem_873", 1
  store i64 %"$consume_877", i64* @_gasrem, align 8
  %c32 = alloca { i8*, i8* }*, align 8
  %"$gasrem_878" = load i64, i64* @_gasrem, align 8
  %"$gascmp_879" = icmp ugt i64 1, %"$gasrem_878"
  br i1 %"$gascmp_879", label %"$out_of_gas_880", label %"$have_gas_881"

"$out_of_gas_880":                                ; preds = %"$have_gas_876"
  call void @_out_of_gas()
  br label %"$have_gas_881"

"$have_gas_881":                                  ; preds = %"$out_of_gas_880", %"$have_gas_876"
  %"$consume_882" = sub i64 %"$gasrem_878", 1
  store i64 %"$consume_882", i64* @_gasrem, align 8
  %"$cadd_21" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cadd_883" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$cadd_fptr_884" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_883", 0
  %"$cadd_envptr_885" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_883", 1
  %"$c16_886" = load { i8*, i8* }*, { i8*, i8* }** %c16, align 8
  %"$cadd_call_887" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_fptr_884"(i8* %"$cadd_envptr_885", { i8*, i8* }* %"$c16_886"), !dbg !117
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_call_887", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_21", align 8, !dbg !117
  %"$cadd_22" = alloca { i8*, i8* }*, align 8
  %"$$cadd_21_888" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_21", align 8
  %"$$cadd_21_fptr_889" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_21_888", 0
  %"$$cadd_21_envptr_890" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_21_888", 1
  %"$c16_891" = load { i8*, i8* }*, { i8*, i8* }** %c16, align 8
  %"$$cadd_21_call_892" = call { i8*, i8* }* %"$$cadd_21_fptr_889"(i8* %"$$cadd_21_envptr_890", { i8*, i8* }* %"$c16_891"), !dbg !117
  store { i8*, i8* }* %"$$cadd_21_call_892", { i8*, i8* }** %"$cadd_22", align 8, !dbg !117
  %"$$cadd_22_893" = load { i8*, i8* }*, { i8*, i8* }** %"$cadd_22", align 8
  store { i8*, i8* }* %"$$cadd_22_893", { i8*, i8* }** %c32, align 8, !dbg !117
  %"$gasrem_894" = load i64, i64* @_gasrem, align 8
  %"$gascmp_895" = icmp ugt i64 1, %"$gasrem_894"
  br i1 %"$gascmp_895", label %"$out_of_gas_896", label %"$have_gas_897"

"$out_of_gas_896":                                ; preds = %"$have_gas_881"
  call void @_out_of_gas()
  br label %"$have_gas_897"

"$have_gas_897":                                  ; preds = %"$out_of_gas_896", %"$have_gas_881"
  %"$consume_898" = sub i64 %"$gasrem_894", 1
  store i64 %"$consume_898", i64* @_gasrem, align 8
  %c128 = alloca { i8*, i8* }*, align 8
  %"$gasrem_899" = load i64, i64* @_gasrem, align 8
  %"$gascmp_900" = icmp ugt i64 1, %"$gasrem_899"
  br i1 %"$gascmp_900", label %"$out_of_gas_901", label %"$have_gas_902"

"$out_of_gas_901":                                ; preds = %"$have_gas_897"
  call void @_out_of_gas()
  br label %"$have_gas_902"

"$have_gas_902":                                  ; preds = %"$out_of_gas_901", %"$have_gas_897"
  %"$consume_903" = sub i64 %"$gasrem_899", 1
  store i64 %"$consume_903", i64* @_gasrem, align 8
  %"$cmul_23" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cmul_904" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul, align 8
  %"$cmul_fptr_905" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_904", 0
  %"$cmul_envptr_906" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_904", 1
  %"$c4_907" = load { i8*, i8* }*, { i8*, i8* }** %c4, align 8
  %"$cmul_call_908" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_905"(i8* %"$cmul_envptr_906", { i8*, i8* }* %"$c4_907"), !dbg !118
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_908", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_23", align 8, !dbg !118
  %"$cmul_24" = alloca { i8*, i8* }*, align 8
  %"$$cmul_23_909" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_23", align 8
  %"$$cmul_23_fptr_910" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_23_909", 0
  %"$$cmul_23_envptr_911" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_23_909", 1
  %"$c32_912" = load { i8*, i8* }*, { i8*, i8* }** %c32, align 8
  %"$$cmul_23_call_913" = call { i8*, i8* }* %"$$cmul_23_fptr_910"(i8* %"$$cmul_23_envptr_911", { i8*, i8* }* %"$c32_912"), !dbg !118
  store { i8*, i8* }* %"$$cmul_23_call_913", { i8*, i8* }** %"$cmul_24", align 8, !dbg !118
  %"$$cmul_24_914" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_24", align 8
  store { i8*, i8* }* %"$$cmul_24_914", { i8*, i8* }** %c128, align 8, !dbg !118
  %"$gasrem_915" = load i64, i64* @_gasrem, align 8
  %"$gascmp_916" = icmp ugt i64 1, %"$gasrem_915"
  br i1 %"$gascmp_916", label %"$out_of_gas_917", label %"$have_gas_918"

"$out_of_gas_917":                                ; preds = %"$have_gas_902"
  call void @_out_of_gas()
  br label %"$have_gas_918"

"$have_gas_918":                                  ; preds = %"$out_of_gas_917", %"$have_gas_902"
  %"$consume_919" = sub i64 %"$gasrem_915", 1
  store i64 %"$consume_919", i64* @_gasrem, align 8
  %c256 = alloca { i8*, i8* }*, align 8
  %"$gasrem_920" = load i64, i64* @_gasrem, align 8
  %"$gascmp_921" = icmp ugt i64 1, %"$gasrem_920"
  br i1 %"$gascmp_921", label %"$out_of_gas_922", label %"$have_gas_923"

"$out_of_gas_922":                                ; preds = %"$have_gas_918"
  call void @_out_of_gas()
  br label %"$have_gas_923"

"$have_gas_923":                                  ; preds = %"$out_of_gas_922", %"$have_gas_918"
  %"$consume_924" = sub i64 %"$gasrem_920", 1
  store i64 %"$consume_924", i64* @_gasrem, align 8
  %"$cadd_25" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cadd_925" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$cadd_fptr_926" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_925", 0
  %"$cadd_envptr_927" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_925", 1
  %"$c128_928" = load { i8*, i8* }*, { i8*, i8* }** %c128, align 8
  %"$cadd_call_929" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_fptr_926"(i8* %"$cadd_envptr_927", { i8*, i8* }* %"$c128_928"), !dbg !119
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_call_929", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_25", align 8, !dbg !119
  %"$cadd_26" = alloca { i8*, i8* }*, align 8
  %"$$cadd_25_930" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_25", align 8
  %"$$cadd_25_fptr_931" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_25_930", 0
  %"$$cadd_25_envptr_932" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_25_930", 1
  %"$c128_933" = load { i8*, i8* }*, { i8*, i8* }** %c128, align 8
  %"$$cadd_25_call_934" = call { i8*, i8* }* %"$$cadd_25_fptr_931"(i8* %"$$cadd_25_envptr_932", { i8*, i8* }* %"$c128_933"), !dbg !119
  store { i8*, i8* }* %"$$cadd_25_call_934", { i8*, i8* }** %"$cadd_26", align 8, !dbg !119
  %"$$cadd_26_935" = load { i8*, i8* }*, { i8*, i8* }** %"$cadd_26", align 8
  store { i8*, i8* }* %"$$cadd_26_935", { i8*, i8* }** %c256, align 8, !dbg !119
  %"$gasrem_936" = load i64, i64* @_gasrem, align 8
  %"$gascmp_937" = icmp ugt i64 1, %"$gasrem_936"
  br i1 %"$gascmp_937", label %"$out_of_gas_938", label %"$have_gas_939"

"$out_of_gas_938":                                ; preds = %"$have_gas_923"
  call void @_out_of_gas()
  br label %"$have_gas_939"

"$have_gas_939":                                  ; preds = %"$out_of_gas_938", %"$have_gas_923"
  %"$consume_940" = sub i64 %"$gasrem_936", 1
  store i64 %"$consume_940", i64* @_gasrem, align 8
  %c65536 = alloca { i8*, i8* }*, align 8
  %"$gasrem_941" = load i64, i64* @_gasrem, align 8
  %"$gascmp_942" = icmp ugt i64 1, %"$gasrem_941"
  br i1 %"$gascmp_942", label %"$out_of_gas_943", label %"$have_gas_944"

"$out_of_gas_943":                                ; preds = %"$have_gas_939"
  call void @_out_of_gas()
  br label %"$have_gas_944"

"$have_gas_944":                                  ; preds = %"$out_of_gas_943", %"$have_gas_939"
  %"$consume_945" = sub i64 %"$gasrem_941", 1
  store i64 %"$consume_945", i64* @_gasrem, align 8
  %"$cmul_27" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cmul_946" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul, align 8
  %"$cmul_fptr_947" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_946", 0
  %"$cmul_envptr_948" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_946", 1
  %"$c256_949" = load { i8*, i8* }*, { i8*, i8* }** %c256, align 8
  %"$cmul_call_950" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_947"(i8* %"$cmul_envptr_948", { i8*, i8* }* %"$c256_949"), !dbg !120
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_950", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_27", align 8, !dbg !120
  %"$cmul_28" = alloca { i8*, i8* }*, align 8
  %"$$cmul_27_951" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_27", align 8
  %"$$cmul_27_fptr_952" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_27_951", 0
  %"$$cmul_27_envptr_953" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_27_951", 1
  %"$c256_954" = load { i8*, i8* }*, { i8*, i8* }** %c256, align 8
  %"$$cmul_27_call_955" = call { i8*, i8* }* %"$$cmul_27_fptr_952"(i8* %"$$cmul_27_envptr_953", { i8*, i8* }* %"$c256_954"), !dbg !120
  store { i8*, i8* }* %"$$cmul_27_call_955", { i8*, i8* }** %"$cmul_28", align 8, !dbg !120
  %"$$cmul_28_956" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_28", align 8
  store { i8*, i8* }* %"$$cmul_28_956", { i8*, i8* }** %c65536, align 8, !dbg !120
  %"$gasrem_957" = load i64, i64* @_gasrem, align 8
  %"$gascmp_958" = icmp ugt i64 1, %"$gasrem_957"
  br i1 %"$gascmp_958", label %"$out_of_gas_959", label %"$have_gas_960"

"$out_of_gas_959":                                ; preds = %"$have_gas_944"
  call void @_out_of_gas()
  br label %"$have_gas_960"

"$have_gas_960":                                  ; preds = %"$out_of_gas_959", %"$have_gas_944"
  %"$consume_961" = sub i64 %"$gasrem_957", 1
  store i64 %"$consume_961", i64* @_gasrem, align 8
  %"$church_nat_to_uint32_29" = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %"$church_nat_to_uint32_29", metadata !121, metadata !DIExpression()), !dbg !122
  %"$church_nat_to_uint32_962" = load { %Uint32 (i8*, { i8*, i8* }*)*, i8* }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %church_nat_to_uint32, align 8
  %"$church_nat_to_uint32_fptr_963" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$church_nat_to_uint32_962", 0
  %"$church_nat_to_uint32_envptr_964" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$church_nat_to_uint32_962", 1
  %"$c65536_965" = load { i8*, i8* }*, { i8*, i8* }** %c65536, align 8
  %"$church_nat_to_uint32_call_966" = call %Uint32 %"$church_nat_to_uint32_fptr_963"(i8* %"$church_nat_to_uint32_envptr_964", { i8*, i8* }* %"$c65536_965"), !dbg !122
  store %Uint32 %"$church_nat_to_uint32_call_966", %Uint32* %"$church_nat_to_uint32_29", align 4, !dbg !122
  %"$$church_nat_to_uint32_29_967" = load %Uint32, %Uint32* %"$church_nat_to_uint32_29", align 4
  store %Uint32 %"$$church_nat_to_uint32_29_967", %Uint32* %"$expr_30", align 4, !dbg !122
  %"$$expr_30_968" = load %Uint32, %Uint32* %"$expr_30", align 4
  ret %Uint32 %"$$expr_30_968"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_969" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_970" = alloca %Uint32, align 8
  %"$memvoidcast_971" = bitcast %Uint32* %"$pval_970" to i8*
  store %Uint32 %"$exprval_969", %Uint32* %"$pval_970", align 4
  %"$execptr_load_972" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_972", %_TyDescrTy_Typ* @"$TyDescr_Uint32_83", i8* %"$memvoidcast_971")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "church_nat.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_77", linkageName: "$fundef_77", scope: !2, file: !2, line: 36, type: !4, scopeLine: 36, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!7 = !{}
!8 = !DILocalVariable(name: "x", scope: !3, file: !2, line: 36, type: !9)
!9 = !DIBasicType(name: "Uint32", size: 4)
!10 = !DILocation(line: 36, column: 21, scope: !3)
!11 = !DILocalVariable(name: "$retval_78", scope: !3, file: !2, line: 36, type: !9)
!12 = !DILocation(line: 36, column: 36, scope: !3)
!13 = distinct !DISubprogram(name: "$fundef_75", linkageName: "$fundef_75", scope: !2, file: !2, line: 34, type: !4, scopeLine: 34, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!14 = !DILocalVariable(name: "$retval_76", scope: !13, file: !2, line: 34, type: !9)
!15 = !DILocation(line: 34, column: 5, scope: !13)
!16 = !DILocalVariable(name: "zero", scope: !13, file: !2, line: 34, type: !9)
!17 = !DILocation(line: 34, column: 9, scope: !13)
!18 = !DILocation(line: 34, column: 16, scope: !13)
!19 = !DILocalVariable(name: "one", scope: !13, file: !2, line: 35, type: !9)
!20 = !DILocation(line: 35, column: 9, scope: !13)
!21 = !DILocation(line: 35, column: 15, scope: !13)
!22 = !DILocation(line: 36, column: 36, scope: !13)
!23 = !DILocation(line: 37, column: 16, scope: !13)
!24 = !DILocation(line: 37, column: 15, scope: !13)
!25 = !DILocation(line: 38, column: 5, scope: !13)
!26 = !DILocalVariable(name: "$c32_16", scope: !13, file: !2, line: 38, type: !9)
!27 = distinct !DISubprogram(name: "$fundef_73", linkageName: "$fundef_73", scope: !2, file: !2, line: 27, type: !4, scopeLine: 27, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!28 = !DILocation(line: 27, column: 16, scope: !27)
!29 = !DILocation(line: 28, column: 13, scope: !27)
!30 = !DILocation(line: 28, column: 12, scope: !27)
!31 = !DILocation(line: 29, column: 3, scope: !27)
!32 = distinct !DISubprogram(name: "$fundef_71", linkageName: "$fundef_71", scope: !2, file: !2, line: 26, type: !4, scopeLine: 26, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!33 = !DILocation(line: 27, column: 3, scope: !32)
!34 = distinct !DISubprogram(name: "$fundef_69", linkageName: "$fundef_69", scope: !2, file: !2, line: 18, type: !4, scopeLine: 18, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!35 = !DILocation(line: 18, column: 13, scope: !34)
!36 = !DILocation(line: 18, column: 12, scope: !34)
!37 = !DILocation(line: 19, column: 13, scope: !34)
!38 = !DILocation(line: 19, column: 12, scope: !34)
!39 = !DILocation(line: 20, column: 14, scope: !34)
!40 = !DILocation(line: 21, column: 3, scope: !34)
!41 = distinct !DISubprogram(name: "$fundef_67", linkageName: "$fundef_67", scope: !2, file: !2, line: 17, type: !4, scopeLine: 17, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!42 = !DILocation(line: 18, column: 3, scope: !41)
!43 = distinct !DISubprogram(name: "$fundef_65", linkageName: "$fundef_65", scope: !2, file: !2, line: 17, type: !4, scopeLine: 17, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!44 = !DILocation(line: 17, column: 3, scope: !43)
!45 = distinct !DISubprogram(name: "$fundef_63", linkageName: "$fundef_63", scope: !2, file: !2, line: 18, type: !4, scopeLine: 18, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!46 = !DILocalVariable(name: "z", scope: !45, file: !2, line: 17, type: !9)
!47 = !DILocation(line: 17, column: 8, scope: !45)
!48 = !DILocalVariable(name: "$retval_64", scope: !45, file: !2, line: 18, type: !9)
!49 = !DILocation(line: 18, column: 3, scope: !45)
!50 = !DILocation(line: 18, column: 13, scope: !45)
!51 = !DILocation(line: 18, column: 12, scope: !45)
!52 = !DILocation(line: 19, column: 13, scope: !45)
!53 = !DILocation(line: 19, column: 12, scope: !45)
!54 = !DILocalVariable(name: "nXsz", scope: !45, file: !2, line: 20, type: !9)
!55 = !DILocation(line: 20, column: 7, scope: !45)
!56 = !DILocation(line: 20, column: 14, scope: !45)
!57 = !DILocalVariable(name: "$nX_9", scope: !45, file: !2, line: 20, type: !9)
!58 = !DILocation(line: 21, column: 3, scope: !45)
!59 = !DILocalVariable(name: "$mX_11", scope: !45, file: !2, line: 21, type: !9)
!60 = distinct !DISubprogram(name: "$fundef_61", linkageName: "$fundef_61", scope: !2, file: !2, line: 17, type: !4, scopeLine: 17, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!61 = !DILocation(line: 18, column: 3, scope: !60)
!62 = distinct !DISubprogram(name: "$fundef_59", linkageName: "$fundef_59", scope: !2, file: !2, line: 17, type: !4, scopeLine: 17, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!63 = !DILocation(line: 17, column: 3, scope: !62)
!64 = distinct !DISubprogram(name: "$fundef_57", linkageName: "$fundef_57", scope: !2, file: !2, line: 15, type: !4, scopeLine: 15, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!65 = !DILocation(line: 15, column: 3, scope: !64)
!66 = distinct !DISubprogram(name: "$fundef_55", linkageName: "$fundef_55", scope: !2, file: !2, line: 14, type: !4, scopeLine: 14, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!67 = !DILocation(line: 15, column: 3, scope: !66)
!68 = distinct !DISubprogram(name: "$fundef_53", linkageName: "$fundef_53", scope: !2, file: !2, line: 9, type: !4, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!69 = !DILocation(line: 9, column: 68, scope: !68)
!70 = !DILocation(line: 9, column: 75, scope: !68)
!71 = distinct !DISubprogram(name: "$fundef_51", linkageName: "$fundef_51", scope: !2, file: !2, line: 9, type: !4, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!72 = !DILocation(line: 9, column: 59, scope: !71)
!73 = distinct !DISubprogram(name: "$fundef_49", linkageName: "$fundef_49", scope: !2, file: !2, line: 9, type: !4, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!74 = !DILocation(line: 9, column: 43, scope: !73)
!75 = distinct !DISubprogram(name: "$fundef_47", linkageName: "$fundef_47", scope: !2, file: !2, line: 9, type: !4, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!76 = !DILocalVariable(name: "z", scope: !75, file: !2, line: 9, type: !9)
!77 = !DILocation(line: 9, column: 48, scope: !75)
!78 = !DILocalVariable(name: "$retval_48", scope: !75, file: !2, line: 9, type: !9)
!79 = !DILocation(line: 9, column: 59, scope: !75)
!80 = !DILocalVariable(name: "sz", scope: !75, file: !2, line: 9, type: !9)
!81 = !DILocation(line: 9, column: 63, scope: !75)
!82 = !DILocalVariable(name: "$s_6", scope: !75, file: !2, line: 9, type: !9)
!83 = !DILocation(line: 9, column: 68, scope: !75)
!84 = !DILocalVariable(name: "$s_7", scope: !75, file: !2, line: 9, type: !9)
!85 = !DILocation(line: 9, column: 75, scope: !75)
!86 = distinct !DISubprogram(name: "$fundef_45", linkageName: "$fundef_45", scope: !2, file: !2, line: 9, type: !4, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!87 = !DILocation(line: 9, column: 59, scope: !86)
!88 = distinct !DISubprogram(name: "$fundef_43", linkageName: "$fundef_43", scope: !2, file: !2, line: 9, type: !4, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!89 = !DILocation(line: 9, column: 43, scope: !88)
!90 = distinct !DISubprogram(name: "$fundef_41", linkageName: "$fundef_41", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!91 = !DILocation(line: 3, column: 59, scope: !90)
!92 = distinct !DISubprogram(name: "$fundef_39", linkageName: "$fundef_39", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!93 = !DILocation(line: 3, column: 59, scope: !92)
!94 = distinct !DISubprogram(name: "$fundef_37", linkageName: "$fundef_37", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!95 = !DILocation(line: 3, column: 43, scope: !94)
!96 = distinct !DISubprogram(name: "$fundef_35", linkageName: "$fundef_35", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!97 = !DILocalVariable(name: "z", scope: !96, file: !2, line: 3, type: !9)
!98 = !DILocation(line: 3, column: 48, scope: !96)
!99 = !DILocalVariable(name: "$retval_36", scope: !96, file: !2, line: 3, type: !9)
!100 = !DILocation(line: 3, column: 59, scope: !96)
!101 = distinct !DISubprogram(name: "$fundef_33", linkageName: "$fundef_33", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!102 = !DILocation(line: 3, column: 59, scope: !101)
!103 = distinct !DISubprogram(name: "$fundef_31", linkageName: "$fundef_31", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!104 = !DILocation(line: 3, column: 43, scope: !103)
!105 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !106, file: !106, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!106 = !DIFile(filename: ".", directory: ".")
!107 = !DILocation(line: 0, scope: !105)
!108 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !7)
!109 = !DILocalVariable(name: "$expr_30", scope: !108, file: !2, line: 3, type: !9)
!110 = !DILocation(line: 3, column: 10, scope: !108)
!111 = !DILocation(line: 9, column: 10, scope: !108)
!112 = !DILocation(line: 14, column: 3, scope: !108)
!113 = !DILocation(line: 26, column: 3, scope: !108)
!114 = !DILocation(line: 34, column: 5, scope: !108)
!115 = !DILocation(line: 41, column: 10, scope: !108)
!116 = !DILocation(line: 42, column: 11, scope: !108)
!117 = !DILocation(line: 43, column: 11, scope: !108)
!118 = !DILocation(line: 44, column: 12, scope: !108)
!119 = !DILocation(line: 45, column: 12, scope: !108)
!120 = !DILocation(line: 46, column: 14, scope: !108)
!121 = !DILocalVariable(name: "$church_nat_to_uint32_29", scope: !108, file: !2, line: 47, type: !9)
!122 = !DILocation(line: 47, column: 1, scope: !108)
