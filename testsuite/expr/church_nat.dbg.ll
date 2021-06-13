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
%"$ParamDescr_921" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_922" = type { %ParamDescrString, i32, %"$ParamDescr_921"* }
%"$$fundef_71_env_108" = type { %Uint32 }
%Uint32 = type { i32 }
%"$$fundef_69_env_109" = type {}
%"$$fundef_67_env_110" = type { { i8*, i8* }*, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { i8*, i8* }* }
%"$$fundef_65_env_111" = type { { i8*, i8* }*, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } }
%"$$fundef_63_env_112" = type { { i8*, i8* }*, { i8*, i8* }*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } }
%"$$fundef_61_env_113" = type { { i8*, i8* }*, { i8*, i8* }* }
%"$$fundef_59_env_114" = type { { i8*, i8* }*, { i8*, i8* }* }
%"$$fundef_57_env_115" = type { { i8*, i8* }*, { i8*, i8* }*, { %Uint32 (i8*, %Uint32)*, i8* } }
%"$$fundef_55_env_116" = type { { i8*, i8* }*, { i8*, i8* }* }
%"$$fundef_53_env_117" = type { { i8*, i8* }*, { i8*, i8* }* }
%"$$fundef_51_env_118" = type { { i8*, i8* }* }
%"$$fundef_49_env_119" = type {}
%"$$fundef_47_env_120" = type { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } }
%"$$fundef_45_env_121" = type {}
%"$$fundef_43_env_122" = type {}
%"$$fundef_41_env_123" = type { { %Uint32 (i8*, %Uint32)*, i8* } }
%"$$fundef_39_env_124" = type {}
%"$$fundef_37_env_125" = type {}
%"$$fundef_35_env_126" = type {}
%"$$fundef_33_env_127" = type {}
%"$$fundef_31_env_128" = type {}
%"$$fundef_29_env_129" = type {}
%"$$fundef_27_env_130" = type {}
%"$$fundef_25_env_131" = type {}

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
@_tydescr_table = constant [14 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_97", %_TyDescrTy_Typ* @"$TyDescr_Int64_79", %_TyDescrTy_Typ* @"$TyDescr_Uint256_89", %_TyDescrTy_Typ* @"$TyDescr_Uint32_77", %_TyDescrTy_Typ* @"$TyDescr_Uint64_81", %_TyDescrTy_Typ* @"$TyDescr_Bnum_93", %_TyDescrTy_Typ* @"$TyDescr_Uint128_85", %_TyDescrTy_Typ* @"$TyDescr_Exception_99", %_TyDescrTy_Typ* @"$TyDescr_String_91", %_TyDescrTy_Typ* @"$TyDescr_Int256_87", %_TyDescrTy_Typ* @"$TyDescr_Int128_83", %_TyDescrTy_Typ* @"$TyDescr_Bystr_101", %_TyDescrTy_Typ* @"$TyDescr_Message_95", %_TyDescrTy_Typ* @"$TyDescr_Int32_75"]
@_tydescr_table_length = constant i32 14
@_contract_parameters = constant [0 x %"$ParamDescr_921"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_922"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Uint32 @"$fundef_71"(%"$$fundef_71_env_108"* %0, %Uint32 %1) !dbg !4 {
entry:
  %"$$fundef_71_env_one_683" = getelementptr inbounds %"$$fundef_71_env_108", %"$$fundef_71_env_108"* %0, i32 0, i32 0
  %"$one_envload_684" = load %Uint32, %Uint32* %"$$fundef_71_env_one_683", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_684", %Uint32* %one, align 4
  %"$retval_72" = alloca %Uint32, align 8
  %"$one_685" = load %Uint32, %Uint32* %one, align 4
  %"$add_call_686" = call %Uint32 @_add_Uint32(%Uint32 %"$one_685", %Uint32 %1)
  store %Uint32 %"$add_call_686", %Uint32* %"$retval_72", align 4, !dbg !8
  %"$$retval_72_687" = load %Uint32, %Uint32* %"$retval_72", align 4
  ret %Uint32 %"$$retval_72_687"
}

define internal %Uint32 @"$fundef_69"(%"$$fundef_69_env_109"* %0, { i8*, i8* }* %1) !dbg !9 {
entry:
  %"$retval_70" = alloca %Uint32, align 8
  %"$gasrem_614" = load i64, i64* @_gasrem, align 8
  %"$gascmp_615" = icmp ugt i64 1, %"$gasrem_614"
  br i1 %"$gascmp_615", label %"$out_of_gas_616", label %"$have_gas_617"

"$out_of_gas_616":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_617"

"$have_gas_617":                                  ; preds = %"$out_of_gas_616", %entry
  %"$consume_618" = sub i64 %"$gasrem_614", 1
  store i64 %"$consume_618", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_619" = load i64, i64* @_gasrem, align 8
  %"$gascmp_620" = icmp ugt i64 1, %"$gasrem_619"
  br i1 %"$gascmp_620", label %"$out_of_gas_621", label %"$have_gas_622"

"$out_of_gas_621":                                ; preds = %"$have_gas_617"
  call void @_out_of_gas()
  br label %"$have_gas_622"

"$have_gas_622":                                  ; preds = %"$out_of_gas_621", %"$have_gas_617"
  %"$consume_623" = sub i64 %"$gasrem_619", 1
  store i64 %"$consume_623", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4, !dbg !10
  %"$gasrem_624" = load i64, i64* @_gasrem, align 8
  %"$gascmp_625" = icmp ugt i64 1, %"$gasrem_624"
  br i1 %"$gascmp_625", label %"$out_of_gas_626", label %"$have_gas_627"

"$out_of_gas_626":                                ; preds = %"$have_gas_622"
  call void @_out_of_gas()
  br label %"$have_gas_627"

"$have_gas_627":                                  ; preds = %"$out_of_gas_626", %"$have_gas_622"
  %"$consume_628" = sub i64 %"$gasrem_624", 1
  store i64 %"$consume_628", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_629" = load i64, i64* @_gasrem, align 8
  %"$gascmp_630" = icmp ugt i64 1, %"$gasrem_629"
  br i1 %"$gascmp_630", label %"$out_of_gas_631", label %"$have_gas_632"

"$out_of_gas_631":                                ; preds = %"$have_gas_627"
  call void @_out_of_gas()
  br label %"$have_gas_632"

"$have_gas_632":                                  ; preds = %"$out_of_gas_631", %"$have_gas_627"
  %"$consume_633" = sub i64 %"$gasrem_629", 1
  store i64 %"$consume_633", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !11
  %"$gasrem_634" = load i64, i64* @_gasrem, align 8
  %"$gascmp_635" = icmp ugt i64 1, %"$gasrem_634"
  br i1 %"$gascmp_635", label %"$out_of_gas_636", label %"$have_gas_637"

"$out_of_gas_636":                                ; preds = %"$have_gas_632"
  call void @_out_of_gas()
  br label %"$have_gas_637"

"$have_gas_637":                                  ; preds = %"$out_of_gas_636", %"$have_gas_632"
  %"$consume_638" = sub i64 %"$gasrem_634", 1
  store i64 %"$consume_638", i64* @_gasrem, align 8
  %add1 = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_639" = load i64, i64* @_gasrem, align 8
  %"$gascmp_640" = icmp ugt i64 1, %"$gasrem_639"
  br i1 %"$gascmp_640", label %"$out_of_gas_641", label %"$have_gas_642"

"$out_of_gas_641":                                ; preds = %"$have_gas_637"
  call void @_out_of_gas()
  br label %"$have_gas_642"

"$have_gas_642":                                  ; preds = %"$out_of_gas_641", %"$have_gas_637"
  %"$consume_643" = sub i64 %"$gasrem_639", 1
  store i64 %"$consume_643", i64* @_gasrem, align 8
  %"$$fundef_71_envp_644_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_71_envp_644_salloc" = call i8* @_salloc(i8* %"$$fundef_71_envp_644_load", i64 4)
  %"$$fundef_71_envp_644" = bitcast i8* %"$$fundef_71_envp_644_salloc" to %"$$fundef_71_env_108"*
  %"$$fundef_71_env_voidp_646" = bitcast %"$$fundef_71_env_108"* %"$$fundef_71_envp_644" to i8*
  %"$$fundef_71_cloval_647" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_71_env_108"*, %Uint32)* @"$fundef_71" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_71_env_voidp_646", 1
  %"$$fundef_71_env_one_648" = getelementptr inbounds %"$$fundef_71_env_108", %"$$fundef_71_env_108"* %"$$fundef_71_envp_644", i32 0, i32 0
  %"$one_649" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_649", %Uint32* %"$$fundef_71_env_one_648", align 4
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_71_cloval_647", { %Uint32 (i8*, %Uint32)*, i8* }* %add1, align 8, !dbg !12
  %"$gasrem_650" = load i64, i64* @_gasrem, align 8
  %"$gascmp_651" = icmp ugt i64 1, %"$gasrem_650"
  br i1 %"$gascmp_651", label %"$out_of_gas_652", label %"$have_gas_653"

"$out_of_gas_652":                                ; preds = %"$have_gas_642"
  call void @_out_of_gas()
  br label %"$have_gas_653"

"$have_gas_653":                                  ; preds = %"$out_of_gas_652", %"$have_gas_642"
  %"$consume_654" = sub i64 %"$gasrem_650", 1
  store i64 %"$consume_654", i64* @_gasrem, align 8
  %c32 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_655" = load i64, i64* @_gasrem, align 8
  %"$gascmp_656" = icmp ugt i64 1, %"$gasrem_655"
  br i1 %"$gascmp_656", label %"$out_of_gas_657", label %"$have_gas_658"

"$out_of_gas_657":                                ; preds = %"$have_gas_653"
  call void @_out_of_gas()
  br label %"$have_gas_658"

"$have_gas_658":                                  ; preds = %"$out_of_gas_657", %"$have_gas_653"
  %"$consume_659" = sub i64 %"$gasrem_655", 1
  store i64 %"$consume_659", i64* @_gasrem, align 8
  %"$c_660" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 0
  %"$c_661" = bitcast { i8*, i8* }* %"$c_660" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$c_662" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$c_661", align 8
  %"$c_fptr_663" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$c_662", 0
  %"$c_envptr_664" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$c_662", 1
  %"$c_call_665" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c_fptr_663"(i8* %"$c_envptr_664"), !dbg !13
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c_call_665", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c32, align 8, !dbg !14
  %"$gasrem_666" = load i64, i64* @_gasrem, align 8
  %"$gascmp_667" = icmp ugt i64 1, %"$gasrem_666"
  br i1 %"$gascmp_667", label %"$out_of_gas_668", label %"$have_gas_669"

"$out_of_gas_668":                                ; preds = %"$have_gas_658"
  call void @_out_of_gas()
  br label %"$have_gas_669"

"$have_gas_669":                                  ; preds = %"$out_of_gas_668", %"$have_gas_658"
  %"$consume_670" = sub i64 %"$gasrem_666", 1
  store i64 %"$consume_670", i64* @_gasrem, align 8
  %"$c32_9" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$c32_671" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c32, align 8
  %"$c32_fptr_672" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c32_671", 0
  %"$c32_envptr_673" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c32_671", 1
  %"$add1_674" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %add1, align 8
  %"$c32_call_675" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_fptr_672"(i8* %"$c32_envptr_673", { %Uint32 (i8*, %Uint32)*, i8* } %"$add1_674"), !dbg !15
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_call_675", { %Uint32 (i8*, %Uint32)*, i8* }* %"$c32_9", align 8, !dbg !15
  %"$c32_10" = alloca %Uint32, align 8
  %"$$c32_9_676" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$c32_9", align 8
  %"$$c32_9_fptr_677" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$c32_9_676", 0
  %"$$c32_9_envptr_678" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$c32_9_676", 1
  %"$zero_679" = load %Uint32, %Uint32* %zero, align 4
  %"$$c32_9_call_680" = call %Uint32 %"$$c32_9_fptr_677"(i8* %"$$c32_9_envptr_678", %Uint32 %"$zero_679"), !dbg !15
  store %Uint32 %"$$c32_9_call_680", %Uint32* %"$c32_10", align 4, !dbg !15
  %"$$c32_10_681" = load %Uint32, %Uint32* %"$c32_10", align 4
  store %Uint32 %"$$c32_10_681", %Uint32* %"$retval_70", align 4, !dbg !15
  %"$$retval_70_682" = load %Uint32, %Uint32* %"$retval_70", align 4
  ret %Uint32 %"$$retval_70_682"
}

define internal { i8*, i8* }* @"$fundef_67"(%"$$fundef_67_env_110"* %0, { i8*, i8* }* %1) !dbg !16 {
entry:
  %"$$fundef_67_env_c0_559" = getelementptr inbounds %"$$fundef_67_env_110", %"$$fundef_67_env_110"* %0, i32 0, i32 0
  %"$c0_envload_560" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_67_env_c0_559", align 8
  %c0 = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$c0_envload_560", { i8*, i8* }** %c0, align 8
  %"$$fundef_67_env_cadd_561" = getelementptr inbounds %"$$fundef_67_env_110", %"$$fundef_67_env_110"* %0, i32 0, i32 1
  %"$cadd_envload_562" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_67_env_cadd_561", align 8
  %cadd = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_envload_562", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$$fundef_67_env_m_563" = getelementptr inbounds %"$$fundef_67_env_110", %"$$fundef_67_env_110"* %0, i32 0, i32 2
  %"$m_envload_564" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_67_env_m_563", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_564", { i8*, i8* }** %m, align 8
  %"$retval_68" = alloca { i8*, i8* }*, align 8
  %"$gasrem_565" = load i64, i64* @_gasrem, align 8
  %"$gascmp_566" = icmp ugt i64 1, %"$gasrem_565"
  br i1 %"$gascmp_566", label %"$out_of_gas_567", label %"$have_gas_568"

"$out_of_gas_567":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_568"

"$have_gas_568":                                  ; preds = %"$out_of_gas_567", %entry
  %"$consume_569" = sub i64 %"$gasrem_565", 1
  store i64 %"$consume_569", i64* @_gasrem, align 8
  %cadd_m = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_570" = load i64, i64* @_gasrem, align 8
  %"$gascmp_571" = icmp ugt i64 1, %"$gasrem_570"
  br i1 %"$gascmp_571", label %"$out_of_gas_572", label %"$have_gas_573"

"$out_of_gas_572":                                ; preds = %"$have_gas_568"
  call void @_out_of_gas()
  br label %"$have_gas_573"

"$have_gas_573":                                  ; preds = %"$out_of_gas_572", %"$have_gas_568"
  %"$consume_574" = sub i64 %"$gasrem_570", 1
  store i64 %"$consume_574", i64* @_gasrem, align 8
  %"$cadd_6" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cadd_575" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$cadd_fptr_576" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_575", 0
  %"$cadd_envptr_577" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_575", 1
  %"$m_578" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  %"$cadd_call_579" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_fptr_576"(i8* %"$cadd_envptr_577", { i8*, i8* }* %"$m_578"), !dbg !17
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_call_579", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_6", align 8, !dbg !17
  %"$$cadd_6_580" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_6", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_6_580", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %cadd_m, align 8, !dbg !17
  %"$gasrem_581" = load i64, i64* @_gasrem, align 8
  %"$gascmp_582" = icmp ugt i64 1, %"$gasrem_581"
  br i1 %"$gascmp_582", label %"$out_of_gas_583", label %"$have_gas_584"

"$out_of_gas_583":                                ; preds = %"$have_gas_573"
  call void @_out_of_gas()
  br label %"$have_gas_584"

"$have_gas_584":                                  ; preds = %"$out_of_gas_583", %"$have_gas_573"
  %"$consume_585" = sub i64 %"$gasrem_581", 1
  store i64 %"$consume_585", i64* @_gasrem, align 8
  %nI = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_586" = load i64, i64* @_gasrem, align 8
  %"$gascmp_587" = icmp ugt i64 1, %"$gasrem_586"
  br i1 %"$gascmp_587", label %"$out_of_gas_588", label %"$have_gas_589"

"$out_of_gas_588":                                ; preds = %"$have_gas_584"
  call void @_out_of_gas()
  br label %"$have_gas_589"

"$have_gas_589":                                  ; preds = %"$out_of_gas_588", %"$have_gas_584"
  %"$consume_590" = sub i64 %"$gasrem_586", 1
  store i64 %"$consume_590", i64* @_gasrem, align 8
  %"$n_591" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 1
  %"$n_592" = bitcast { i8*, i8* }* %"$n_591" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$n_593" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$n_592", align 8
  %"$n_fptr_594" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_593", 0
  %"$n_envptr_595" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_593", 1
  %"$n_call_596" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_fptr_594"(i8* %"$n_envptr_595"), !dbg !18
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_call_596", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nI, align 8, !dbg !19
  %"$gasrem_597" = load i64, i64* @_gasrem, align 8
  %"$gascmp_598" = icmp ugt i64 1, %"$gasrem_597"
  br i1 %"$gascmp_598", label %"$out_of_gas_599", label %"$have_gas_600"

"$out_of_gas_599":                                ; preds = %"$have_gas_589"
  call void @_out_of_gas()
  br label %"$have_gas_600"

"$have_gas_600":                                  ; preds = %"$out_of_gas_599", %"$have_gas_589"
  %"$consume_601" = sub i64 %"$gasrem_597", 1
  store i64 %"$consume_601", i64* @_gasrem, align 8
  %"$nI_7" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$nI_602" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nI, align 8
  %"$nI_fptr_603" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nI_602", 0
  %"$nI_envptr_604" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nI_602", 1
  %"$cadd_m_605" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %cadd_m, align 8
  %"$nI_call_606" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nI_fptr_603"(i8* %"$nI_envptr_604", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_m_605"), !dbg !20
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nI_call_606", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nI_7", align 8, !dbg !20
  %"$nI_8" = alloca { i8*, i8* }*, align 8
  %"$$nI_7_607" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nI_7", align 8
  %"$$nI_7_fptr_608" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nI_7_607", 0
  %"$$nI_7_envptr_609" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nI_7_607", 1
  %"$c0_610" = load { i8*, i8* }*, { i8*, i8* }** %c0, align 8
  %"$$nI_7_call_611" = call { i8*, i8* }* %"$$nI_7_fptr_608"(i8* %"$$nI_7_envptr_609", { i8*, i8* }* %"$c0_610"), !dbg !20
  store { i8*, i8* }* %"$$nI_7_call_611", { i8*, i8* }** %"$nI_8", align 8, !dbg !20
  %"$$nI_8_612" = load { i8*, i8* }*, { i8*, i8* }** %"$nI_8", align 8
  store { i8*, i8* }* %"$$nI_8_612", { i8*, i8* }** %"$retval_68", align 8, !dbg !20
  %"$$retval_68_613" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_68", align 8
  ret { i8*, i8* }* %"$$retval_68_613"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_65"(%"$$fundef_65_env_111"* %0, { i8*, i8* }* %1) !dbg !21 {
entry:
  %"$$fundef_65_env_c0_540" = getelementptr inbounds %"$$fundef_65_env_111", %"$$fundef_65_env_111"* %0, i32 0, i32 0
  %"$c0_envload_541" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_65_env_c0_540", align 8
  %c0 = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$c0_envload_541", { i8*, i8* }** %c0, align 8
  %"$$fundef_65_env_cadd_542" = getelementptr inbounds %"$$fundef_65_env_111", %"$$fundef_65_env_111"* %0, i32 0, i32 1
  %"$cadd_envload_543" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_65_env_cadd_542", align 8
  %cadd = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_envload_543", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$retval_66" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_544" = load i64, i64* @_gasrem, align 8
  %"$gascmp_545" = icmp ugt i64 1, %"$gasrem_544"
  br i1 %"$gascmp_545", label %"$out_of_gas_546", label %"$have_gas_547"

"$out_of_gas_546":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_547"

"$have_gas_547":                                  ; preds = %"$out_of_gas_546", %entry
  %"$consume_548" = sub i64 %"$gasrem_544", 1
  store i64 %"$consume_548", i64* @_gasrem, align 8
  %"$$fundef_67_envp_549_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_67_envp_549_salloc" = call i8* @_salloc(i8* %"$$fundef_67_envp_549_load", i64 32)
  %"$$fundef_67_envp_549" = bitcast i8* %"$$fundef_67_envp_549_salloc" to %"$$fundef_67_env_110"*
  %"$$fundef_67_env_voidp_551" = bitcast %"$$fundef_67_env_110"* %"$$fundef_67_envp_549" to i8*
  %"$$fundef_67_cloval_552" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_67_env_110"*, { i8*, i8* }*)* @"$fundef_67" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_67_env_voidp_551", 1
  %"$$fundef_67_env_c0_553" = getelementptr inbounds %"$$fundef_67_env_110", %"$$fundef_67_env_110"* %"$$fundef_67_envp_549", i32 0, i32 0
  %"$c0_554" = load { i8*, i8* }*, { i8*, i8* }** %c0, align 8
  store { i8*, i8* }* %"$c0_554", { i8*, i8* }** %"$$fundef_67_env_c0_553", align 8
  %"$$fundef_67_env_cadd_555" = getelementptr inbounds %"$$fundef_67_env_110", %"$$fundef_67_env_110"* %"$$fundef_67_envp_549", i32 0, i32 1
  %"$cadd_556" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_556", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_67_env_cadd_555", align 8
  %"$$fundef_67_env_m_557" = getelementptr inbounds %"$$fundef_67_env_110", %"$$fundef_67_env_110"* %"$$fundef_67_envp_549", i32 0, i32 2
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_67_env_m_557", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_67_cloval_552", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_66", align 8, !dbg !22
  %"$$retval_66_558" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_66", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_66_558"
}

define internal { i8*, i8* }* @"$fundef_63"(%"$$fundef_63_env_112"* %0, { i8*, i8* }* %1) !dbg !23 {
entry:
  %"$$fundef_63_env_m_463" = getelementptr inbounds %"$$fundef_63_env_112", %"$$fundef_63_env_112"* %0, i32 0, i32 0
  %"$m_envload_464" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_63_env_m_463", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_464", { i8*, i8* }** %m, align 8
  %"$$fundef_63_env_n_465" = getelementptr inbounds %"$$fundef_63_env_112", %"$$fundef_63_env_112"* %0, i32 0, i32 1
  %"$n_envload_466" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_63_env_n_465", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_466", { i8*, i8* }** %n, align 8
  %"$$fundef_63_env_s_467" = getelementptr inbounds %"$$fundef_63_env_112", %"$$fundef_63_env_112"* %0, i32 0, i32 2
  %"$s_envload_468" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_63_env_s_467", align 8
  %s = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_envload_468", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$retval_64" = alloca { i8*, i8* }*, align 8
  %"$gasrem_469" = load i64, i64* @_gasrem, align 8
  %"$gascmp_470" = icmp ugt i64 1, %"$gasrem_469"
  br i1 %"$gascmp_470", label %"$out_of_gas_471", label %"$have_gas_472"

"$out_of_gas_471":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_472"

"$have_gas_472":                                  ; preds = %"$out_of_gas_471", %entry
  %"$consume_473" = sub i64 %"$gasrem_469", 1
  store i64 %"$consume_473", i64* @_gasrem, align 8
  %mX = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_474" = load i64, i64* @_gasrem, align 8
  %"$gascmp_475" = icmp ugt i64 1, %"$gasrem_474"
  br i1 %"$gascmp_475", label %"$out_of_gas_476", label %"$have_gas_477"

"$out_of_gas_476":                                ; preds = %"$have_gas_472"
  call void @_out_of_gas()
  br label %"$have_gas_477"

"$have_gas_477":                                  ; preds = %"$out_of_gas_476", %"$have_gas_472"
  %"$consume_478" = sub i64 %"$gasrem_474", 1
  store i64 %"$consume_478", i64* @_gasrem, align 8
  %"$m_479" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  %"$m_480" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$m_479", i32 1
  %"$m_481" = bitcast { i8*, i8* }* %"$m_480" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$m_482" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$m_481", align 8
  %"$m_fptr_483" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$m_482", 0
  %"$m_envptr_484" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$m_482", 1
  %"$m_call_485" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$m_fptr_483"(i8* %"$m_envptr_484"), !dbg !24
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$m_call_485", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %mX, align 8, !dbg !25
  %"$gasrem_486" = load i64, i64* @_gasrem, align 8
  %"$gascmp_487" = icmp ugt i64 1, %"$gasrem_486"
  br i1 %"$gascmp_487", label %"$out_of_gas_488", label %"$have_gas_489"

"$out_of_gas_488":                                ; preds = %"$have_gas_477"
  call void @_out_of_gas()
  br label %"$have_gas_489"

"$have_gas_489":                                  ; preds = %"$out_of_gas_488", %"$have_gas_477"
  %"$consume_490" = sub i64 %"$gasrem_486", 1
  store i64 %"$consume_490", i64* @_gasrem, align 8
  %nX = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_491" = load i64, i64* @_gasrem, align 8
  %"$gascmp_492" = icmp ugt i64 1, %"$gasrem_491"
  br i1 %"$gascmp_492", label %"$out_of_gas_493", label %"$have_gas_494"

"$out_of_gas_493":                                ; preds = %"$have_gas_489"
  call void @_out_of_gas()
  br label %"$have_gas_494"

"$have_gas_494":                                  ; preds = %"$out_of_gas_493", %"$have_gas_489"
  %"$consume_495" = sub i64 %"$gasrem_491", 1
  store i64 %"$consume_495", i64* @_gasrem, align 8
  %"$n_496" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  %"$n_497" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$n_496", i32 1
  %"$n_498" = bitcast { i8*, i8* }* %"$n_497" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$n_499" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$n_498", align 8
  %"$n_fptr_500" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_499", 0
  %"$n_envptr_501" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_499", 1
  %"$n_call_502" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_fptr_500"(i8* %"$n_envptr_501"), !dbg !26
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_call_502", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nX, align 8, !dbg !27
  %"$gasrem_503" = load i64, i64* @_gasrem, align 8
  %"$gascmp_504" = icmp ugt i64 1, %"$gasrem_503"
  br i1 %"$gascmp_504", label %"$out_of_gas_505", label %"$have_gas_506"

"$out_of_gas_505":                                ; preds = %"$have_gas_494"
  call void @_out_of_gas()
  br label %"$have_gas_506"

"$have_gas_506":                                  ; preds = %"$out_of_gas_505", %"$have_gas_494"
  %"$consume_507" = sub i64 %"$gasrem_503", 1
  store i64 %"$consume_507", i64* @_gasrem, align 8
  %nXsz = alloca { i8*, i8* }*, align 8
  %"$gasrem_508" = load i64, i64* @_gasrem, align 8
  %"$gascmp_509" = icmp ugt i64 1, %"$gasrem_508"
  br i1 %"$gascmp_509", label %"$out_of_gas_510", label %"$have_gas_511"

"$out_of_gas_510":                                ; preds = %"$have_gas_506"
  call void @_out_of_gas()
  br label %"$have_gas_511"

"$have_gas_511":                                  ; preds = %"$out_of_gas_510", %"$have_gas_506"
  %"$consume_512" = sub i64 %"$gasrem_508", 1
  store i64 %"$consume_512", i64* @_gasrem, align 8
  %"$nX_2" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$nX_513" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nX, align 8
  %"$nX_fptr_514" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nX_513", 0
  %"$nX_envptr_515" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nX_513", 1
  %"$s_516" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$nX_call_517" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nX_fptr_514"(i8* %"$nX_envptr_515", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_516"), !dbg !28
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nX_call_517", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nX_2", align 8, !dbg !28
  %"$nX_3" = alloca { i8*, i8* }*, align 8
  %"$$nX_2_518" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nX_2", align 8
  %"$$nX_2_fptr_519" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nX_2_518", 0
  %"$$nX_2_envptr_520" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nX_2_518", 1
  %"$$nX_2_call_521" = call { i8*, i8* }* %"$$nX_2_fptr_519"(i8* %"$$nX_2_envptr_520", { i8*, i8* }* %1), !dbg !28
  store { i8*, i8* }* %"$$nX_2_call_521", { i8*, i8* }** %"$nX_3", align 8, !dbg !28
  %"$$nX_3_522" = load { i8*, i8* }*, { i8*, i8* }** %"$nX_3", align 8
  store { i8*, i8* }* %"$$nX_3_522", { i8*, i8* }** %nXsz, align 8, !dbg !28
  %"$gasrem_523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_524" = icmp ugt i64 1, %"$gasrem_523"
  br i1 %"$gascmp_524", label %"$out_of_gas_525", label %"$have_gas_526"

"$out_of_gas_525":                                ; preds = %"$have_gas_511"
  call void @_out_of_gas()
  br label %"$have_gas_526"

"$have_gas_526":                                  ; preds = %"$out_of_gas_525", %"$have_gas_511"
  %"$consume_527" = sub i64 %"$gasrem_523", 1
  store i64 %"$consume_527", i64* @_gasrem, align 8
  %"$mX_4" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$mX_528" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %mX, align 8
  %"$mX_fptr_529" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$mX_528", 0
  %"$mX_envptr_530" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$mX_528", 1
  %"$s_531" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$mX_call_532" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$mX_fptr_529"(i8* %"$mX_envptr_530", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_531"), !dbg !29
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$mX_call_532", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$mX_4", align 8, !dbg !29
  %"$mX_5" = alloca { i8*, i8* }*, align 8
  %"$$mX_4_533" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$mX_4", align 8
  %"$$mX_4_fptr_534" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$mX_4_533", 0
  %"$$mX_4_envptr_535" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$mX_4_533", 1
  %"$nXsz_536" = load { i8*, i8* }*, { i8*, i8* }** %nXsz, align 8
  %"$$mX_4_call_537" = call { i8*, i8* }* %"$$mX_4_fptr_534"(i8* %"$$mX_4_envptr_535", { i8*, i8* }* %"$nXsz_536"), !dbg !29
  store { i8*, i8* }* %"$$mX_4_call_537", { i8*, i8* }** %"$mX_5", align 8, !dbg !29
  %"$$mX_5_538" = load { i8*, i8* }*, { i8*, i8* }** %"$mX_5", align 8
  store { i8*, i8* }* %"$$mX_5_538", { i8*, i8* }** %"$retval_64", align 8, !dbg !29
  %"$$retval_64_539" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_64", align 8
  ret { i8*, i8* }* %"$$retval_64_539"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_61"(%"$$fundef_61_env_113"* %0, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1) !dbg !30 {
entry:
  %"$$fundef_61_env_m_444" = getelementptr inbounds %"$$fundef_61_env_113", %"$$fundef_61_env_113"* %0, i32 0, i32 0
  %"$m_envload_445" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_61_env_m_444", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_445", { i8*, i8* }** %m, align 8
  %"$$fundef_61_env_n_446" = getelementptr inbounds %"$$fundef_61_env_113", %"$$fundef_61_env_113"* %0, i32 0, i32 1
  %"$n_envload_447" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_61_env_n_446", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_447", { i8*, i8* }** %n, align 8
  %"$retval_62" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_448" = load i64, i64* @_gasrem, align 8
  %"$gascmp_449" = icmp ugt i64 1, %"$gasrem_448"
  br i1 %"$gascmp_449", label %"$out_of_gas_450", label %"$have_gas_451"

"$out_of_gas_450":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_451"

"$have_gas_451":                                  ; preds = %"$out_of_gas_450", %entry
  %"$consume_452" = sub i64 %"$gasrem_448", 1
  store i64 %"$consume_452", i64* @_gasrem, align 8
  %"$$fundef_63_envp_453_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_63_envp_453_salloc" = call i8* @_salloc(i8* %"$$fundef_63_envp_453_load", i64 32)
  %"$$fundef_63_envp_453" = bitcast i8* %"$$fundef_63_envp_453_salloc" to %"$$fundef_63_env_112"*
  %"$$fundef_63_env_voidp_455" = bitcast %"$$fundef_63_env_112"* %"$$fundef_63_envp_453" to i8*
  %"$$fundef_63_cloval_456" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_63_env_112"*, { i8*, i8* }*)* @"$fundef_63" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_63_env_voidp_455", 1
  %"$$fundef_63_env_m_457" = getelementptr inbounds %"$$fundef_63_env_112", %"$$fundef_63_env_112"* %"$$fundef_63_envp_453", i32 0, i32 0
  %"$m_458" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  store { i8*, i8* }* %"$m_458", { i8*, i8* }** %"$$fundef_63_env_m_457", align 8
  %"$$fundef_63_env_n_459" = getelementptr inbounds %"$$fundef_63_env_112", %"$$fundef_63_env_112"* %"$$fundef_63_envp_453", i32 0, i32 1
  %"$n_460" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  store { i8*, i8* }* %"$n_460", { i8*, i8* }** %"$$fundef_63_env_n_459", align 8
  %"$$fundef_63_env_s_461" = getelementptr inbounds %"$$fundef_63_env_112", %"$$fundef_63_env_112"* %"$$fundef_63_envp_453", i32 0, i32 2
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_63_env_s_461", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_63_cloval_456", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_62", align 8, !dbg !31
  %"$$retval_62_462" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_62", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_62_462"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } @"$fundef_59"(%"$$fundef_59_env_114"* %0) !dbg !32 {
entry:
  %"$$fundef_59_env_m_426" = getelementptr inbounds %"$$fundef_59_env_114", %"$$fundef_59_env_114"* %0, i32 0, i32 0
  %"$m_envload_427" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_59_env_m_426", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_427", { i8*, i8* }** %m, align 8
  %"$$fundef_59_env_n_428" = getelementptr inbounds %"$$fundef_59_env_114", %"$$fundef_59_env_114"* %0, i32 0, i32 1
  %"$n_envload_429" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_59_env_n_428", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_429", { i8*, i8* }** %n, align 8
  %"$retval_60" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_430" = load i64, i64* @_gasrem, align 8
  %"$gascmp_431" = icmp ugt i64 1, %"$gasrem_430"
  br i1 %"$gascmp_431", label %"$out_of_gas_432", label %"$have_gas_433"

"$out_of_gas_432":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_433"

"$have_gas_433":                                  ; preds = %"$out_of_gas_432", %entry
  %"$consume_434" = sub i64 %"$gasrem_430", 1
  store i64 %"$consume_434", i64* @_gasrem, align 8
  %"$$fundef_61_envp_435_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_61_envp_435_salloc" = call i8* @_salloc(i8* %"$$fundef_61_envp_435_load", i64 16)
  %"$$fundef_61_envp_435" = bitcast i8* %"$$fundef_61_envp_435_salloc" to %"$$fundef_61_env_113"*
  %"$$fundef_61_env_voidp_437" = bitcast %"$$fundef_61_env_113"* %"$$fundef_61_envp_435" to i8*
  %"$$fundef_61_cloval_438" = insertvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_61_env_113"*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* @"$fundef_61" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*), i8* undef }, i8* %"$$fundef_61_env_voidp_437", 1
  %"$$fundef_61_env_m_439" = getelementptr inbounds %"$$fundef_61_env_113", %"$$fundef_61_env_113"* %"$$fundef_61_envp_435", i32 0, i32 0
  %"$m_440" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  store { i8*, i8* }* %"$m_440", { i8*, i8* }** %"$$fundef_61_env_m_439", align 8
  %"$$fundef_61_env_n_441" = getelementptr inbounds %"$$fundef_61_env_113", %"$$fundef_61_env_113"* %"$$fundef_61_envp_435", i32 0, i32 1
  %"$n_442" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  store { i8*, i8* }* %"$n_442", { i8*, i8* }** %"$$fundef_61_env_n_441", align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$fundef_61_cloval_438", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_60", align 8, !dbg !33
  %"$$retval_60_443" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_60", align 8
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$retval_60_443"
}

define internal %Uint32 @"$fundef_57"(%"$$fundef_57_env_115"* %0, %Uint32 %1) !dbg !34 {
entry:
  %"$$fundef_57_env_m_349" = getelementptr inbounds %"$$fundef_57_env_115", %"$$fundef_57_env_115"* %0, i32 0, i32 0
  %"$m_envload_350" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_57_env_m_349", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_350", { i8*, i8* }** %m, align 8
  %"$$fundef_57_env_n_351" = getelementptr inbounds %"$$fundef_57_env_115", %"$$fundef_57_env_115"* %0, i32 0, i32 1
  %"$n_envload_352" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_57_env_n_351", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_352", { i8*, i8* }** %n, align 8
  %"$$fundef_57_env_s_353" = getelementptr inbounds %"$$fundef_57_env_115", %"$$fundef_57_env_115"* %0, i32 0, i32 2
  %"$s_envload_354" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_57_env_s_353", align 8
  %s = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_envload_354", { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$retval_58" = alloca %Uint32, align 8
  %"$gasrem_355" = load i64, i64* @_gasrem, align 8
  %"$gascmp_356" = icmp ugt i64 1, %"$gasrem_355"
  br i1 %"$gascmp_356", label %"$out_of_gas_357", label %"$have_gas_358"

"$out_of_gas_357":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_358"

"$have_gas_358":                                  ; preds = %"$out_of_gas_357", %entry
  %"$consume_359" = sub i64 %"$gasrem_355", 1
  store i64 %"$consume_359", i64* @_gasrem, align 8
  %mX = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_360" = load i64, i64* @_gasrem, align 8
  %"$gascmp_361" = icmp ugt i64 1, %"$gasrem_360"
  br i1 %"$gascmp_361", label %"$out_of_gas_362", label %"$have_gas_363"

"$out_of_gas_362":                                ; preds = %"$have_gas_358"
  call void @_out_of_gas()
  br label %"$have_gas_363"

"$have_gas_363":                                  ; preds = %"$out_of_gas_362", %"$have_gas_358"
  %"$consume_364" = sub i64 %"$gasrem_360", 1
  store i64 %"$consume_364", i64* @_gasrem, align 8
  %"$m_365" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  %"$m_366" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$m_365", i32 0
  %"$m_367" = bitcast { i8*, i8* }* %"$m_366" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$m_368" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$m_367", align 8
  %"$m_fptr_369" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$m_368", 0
  %"$m_envptr_370" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$m_368", 1
  %"$m_call_371" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_fptr_369"(i8* %"$m_envptr_370"), !dbg !35
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_call_371", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %mX, align 8, !dbg !36
  %"$gasrem_372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_373" = icmp ugt i64 1, %"$gasrem_372"
  br i1 %"$gascmp_373", label %"$out_of_gas_374", label %"$have_gas_375"

"$out_of_gas_374":                                ; preds = %"$have_gas_363"
  call void @_out_of_gas()
  br label %"$have_gas_375"

"$have_gas_375":                                  ; preds = %"$out_of_gas_374", %"$have_gas_363"
  %"$consume_376" = sub i64 %"$gasrem_372", 1
  store i64 %"$consume_376", i64* @_gasrem, align 8
  %nX = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_378" = icmp ugt i64 1, %"$gasrem_377"
  br i1 %"$gascmp_378", label %"$out_of_gas_379", label %"$have_gas_380"

"$out_of_gas_379":                                ; preds = %"$have_gas_375"
  call void @_out_of_gas()
  br label %"$have_gas_380"

"$have_gas_380":                                  ; preds = %"$out_of_gas_379", %"$have_gas_375"
  %"$consume_381" = sub i64 %"$gasrem_377", 1
  store i64 %"$consume_381", i64* @_gasrem, align 8
  %"$n_382" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  %"$n_383" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$n_382", i32 0
  %"$n_384" = bitcast { i8*, i8* }* %"$n_383" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$n_385" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$n_384", align 8
  %"$n_fptr_386" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$n_385", 0
  %"$n_envptr_387" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$n_385", 1
  %"$n_call_388" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_fptr_386"(i8* %"$n_envptr_387"), !dbg !37
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_call_388", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %nX, align 8, !dbg !38
  %"$gasrem_389" = load i64, i64* @_gasrem, align 8
  %"$gascmp_390" = icmp ugt i64 1, %"$gasrem_389"
  br i1 %"$gascmp_390", label %"$out_of_gas_391", label %"$have_gas_392"

"$out_of_gas_391":                                ; preds = %"$have_gas_380"
  call void @_out_of_gas()
  br label %"$have_gas_392"

"$have_gas_392":                                  ; preds = %"$out_of_gas_391", %"$have_gas_380"
  %"$consume_393" = sub i64 %"$gasrem_389", 1
  store i64 %"$consume_393", i64* @_gasrem, align 8
  %nXsz = alloca %Uint32, align 8
  %"$gasrem_394" = load i64, i64* @_gasrem, align 8
  %"$gascmp_395" = icmp ugt i64 1, %"$gasrem_394"
  br i1 %"$gascmp_395", label %"$out_of_gas_396", label %"$have_gas_397"

"$out_of_gas_396":                                ; preds = %"$have_gas_392"
  call void @_out_of_gas()
  br label %"$have_gas_397"

"$have_gas_397":                                  ; preds = %"$out_of_gas_396", %"$have_gas_392"
  %"$consume_398" = sub i64 %"$gasrem_394", 1
  store i64 %"$consume_398", i64* @_gasrem, align 8
  %"$nX_2" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$nX_399" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %nX, align 8
  %"$nX_fptr_400" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$nX_399", 0
  %"$nX_envptr_401" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$nX_399", 1
  %"$s_402" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$nX_call_403" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_fptr_400"(i8* %"$nX_envptr_401", { %Uint32 (i8*, %Uint32)*, i8* } %"$s_402"), !dbg !39
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_call_403", { %Uint32 (i8*, %Uint32)*, i8* }* %"$nX_2", align 8, !dbg !39
  %"$nX_3" = alloca %Uint32, align 8
  %"$$nX_2_404" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$nX_2", align 8
  %"$$nX_2_fptr_405" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$nX_2_404", 0
  %"$$nX_2_envptr_406" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$nX_2_404", 1
  %"$$nX_2_call_407" = call %Uint32 %"$$nX_2_fptr_405"(i8* %"$$nX_2_envptr_406", %Uint32 %1), !dbg !39
  store %Uint32 %"$$nX_2_call_407", %Uint32* %"$nX_3", align 4, !dbg !39
  %"$$nX_3_408" = load %Uint32, %Uint32* %"$nX_3", align 4
  store %Uint32 %"$$nX_3_408", %Uint32* %nXsz, align 4, !dbg !39
  %"$gasrem_409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_410" = icmp ugt i64 1, %"$gasrem_409"
  br i1 %"$gascmp_410", label %"$out_of_gas_411", label %"$have_gas_412"

"$out_of_gas_411":                                ; preds = %"$have_gas_397"
  call void @_out_of_gas()
  br label %"$have_gas_412"

"$have_gas_412":                                  ; preds = %"$out_of_gas_411", %"$have_gas_397"
  %"$consume_413" = sub i64 %"$gasrem_409", 1
  store i64 %"$consume_413", i64* @_gasrem, align 8
  %"$mX_4" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$mX_414" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %mX, align 8
  %"$mX_fptr_415" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$mX_414", 0
  %"$mX_envptr_416" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$mX_414", 1
  %"$s_417" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$mX_call_418" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$mX_fptr_415"(i8* %"$mX_envptr_416", { %Uint32 (i8*, %Uint32)*, i8* } %"$s_417"), !dbg !40
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$mX_call_418", { %Uint32 (i8*, %Uint32)*, i8* }* %"$mX_4", align 8, !dbg !40
  %"$mX_5" = alloca %Uint32, align 8
  %"$$mX_4_419" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$mX_4", align 8
  %"$$mX_4_fptr_420" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$mX_4_419", 0
  %"$$mX_4_envptr_421" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$mX_4_419", 1
  %"$nXsz_422" = load %Uint32, %Uint32* %nXsz, align 4
  %"$$mX_4_call_423" = call %Uint32 %"$$mX_4_fptr_420"(i8* %"$$mX_4_envptr_421", %Uint32 %"$nXsz_422"), !dbg !40
  store %Uint32 %"$$mX_4_call_423", %Uint32* %"$mX_5", align 4, !dbg !40
  %"$$mX_5_424" = load %Uint32, %Uint32* %"$mX_5", align 4
  store %Uint32 %"$$mX_5_424", %Uint32* %"$retval_58", align 4, !dbg !40
  %"$$retval_58_425" = load %Uint32, %Uint32* %"$retval_58", align 4
  ret %Uint32 %"$$retval_58_425"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_55"(%"$$fundef_55_env_116"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) !dbg !41 {
entry:
  %"$$fundef_55_env_m_330" = getelementptr inbounds %"$$fundef_55_env_116", %"$$fundef_55_env_116"* %0, i32 0, i32 0
  %"$m_envload_331" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_55_env_m_330", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_331", { i8*, i8* }** %m, align 8
  %"$$fundef_55_env_n_332" = getelementptr inbounds %"$$fundef_55_env_116", %"$$fundef_55_env_116"* %0, i32 0, i32 1
  %"$n_envload_333" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_55_env_n_332", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_333", { i8*, i8* }** %n, align 8
  %"$retval_56" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_334" = load i64, i64* @_gasrem, align 8
  %"$gascmp_335" = icmp ugt i64 1, %"$gasrem_334"
  br i1 %"$gascmp_335", label %"$out_of_gas_336", label %"$have_gas_337"

"$out_of_gas_336":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_337"

"$have_gas_337":                                  ; preds = %"$out_of_gas_336", %entry
  %"$consume_338" = sub i64 %"$gasrem_334", 1
  store i64 %"$consume_338", i64* @_gasrem, align 8
  %"$$fundef_57_envp_339_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_57_envp_339_salloc" = call i8* @_salloc(i8* %"$$fundef_57_envp_339_load", i64 32)
  %"$$fundef_57_envp_339" = bitcast i8* %"$$fundef_57_envp_339_salloc" to %"$$fundef_57_env_115"*
  %"$$fundef_57_env_voidp_341" = bitcast %"$$fundef_57_env_115"* %"$$fundef_57_envp_339" to i8*
  %"$$fundef_57_cloval_342" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_57_env_115"*, %Uint32)* @"$fundef_57" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_57_env_voidp_341", 1
  %"$$fundef_57_env_m_343" = getelementptr inbounds %"$$fundef_57_env_115", %"$$fundef_57_env_115"* %"$$fundef_57_envp_339", i32 0, i32 0
  %"$m_344" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  store { i8*, i8* }* %"$m_344", { i8*, i8* }** %"$$fundef_57_env_m_343", align 8
  %"$$fundef_57_env_n_345" = getelementptr inbounds %"$$fundef_57_env_115", %"$$fundef_57_env_115"* %"$$fundef_57_envp_339", i32 0, i32 1
  %"$n_346" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  store { i8*, i8* }* %"$n_346", { i8*, i8* }** %"$$fundef_57_env_n_345", align 8
  %"$$fundef_57_env_s_347" = getelementptr inbounds %"$$fundef_57_env_115", %"$$fundef_57_env_115"* %"$$fundef_57_envp_339", i32 0, i32 2
  store { %Uint32 (i8*, %Uint32)*, i8* } %1, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_57_env_s_347", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_57_cloval_342", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_56", align 8, !dbg !42
  %"$$retval_56_348" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_56", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_56_348"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_53"(%"$$fundef_53_env_117"* %0) !dbg !43 {
entry:
  %"$$fundef_53_env_m_312" = getelementptr inbounds %"$$fundef_53_env_117", %"$$fundef_53_env_117"* %0, i32 0, i32 0
  %"$m_envload_313" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_53_env_m_312", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_313", { i8*, i8* }** %m, align 8
  %"$$fundef_53_env_n_314" = getelementptr inbounds %"$$fundef_53_env_117", %"$$fundef_53_env_117"* %0, i32 0, i32 1
  %"$n_envload_315" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_53_env_n_314", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_315", { i8*, i8* }** %n, align 8
  %"$retval_54" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_316" = load i64, i64* @_gasrem, align 8
  %"$gascmp_317" = icmp ugt i64 1, %"$gasrem_316"
  br i1 %"$gascmp_317", label %"$out_of_gas_318", label %"$have_gas_319"

"$out_of_gas_318":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_319"

"$have_gas_319":                                  ; preds = %"$out_of_gas_318", %entry
  %"$consume_320" = sub i64 %"$gasrem_316", 1
  store i64 %"$consume_320", i64* @_gasrem, align 8
  %"$$fundef_55_envp_321_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_55_envp_321_salloc" = call i8* @_salloc(i8* %"$$fundef_55_envp_321_load", i64 16)
  %"$$fundef_55_envp_321" = bitcast i8* %"$$fundef_55_envp_321_salloc" to %"$$fundef_55_env_116"*
  %"$$fundef_55_env_voidp_323" = bitcast %"$$fundef_55_env_116"* %"$$fundef_55_envp_321" to i8*
  %"$$fundef_55_cloval_324" = insertvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_55_env_116"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_55" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* undef }, i8* %"$$fundef_55_env_voidp_323", 1
  %"$$fundef_55_env_m_325" = getelementptr inbounds %"$$fundef_55_env_116", %"$$fundef_55_env_116"* %"$$fundef_55_envp_321", i32 0, i32 0
  %"$m_326" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  store { i8*, i8* }* %"$m_326", { i8*, i8* }** %"$$fundef_55_env_m_325", align 8
  %"$$fundef_55_env_n_327" = getelementptr inbounds %"$$fundef_55_env_116", %"$$fundef_55_env_116"* %"$$fundef_55_envp_321", i32 0, i32 1
  %"$n_328" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  store { i8*, i8* }* %"$n_328", { i8*, i8* }** %"$$fundef_55_env_n_327", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$fundef_55_cloval_324", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_54", align 8, !dbg !44
  %"$$retval_54_329" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_54", align 8
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_54_329"
}

define internal { i8*, i8* }* @"$fundef_51"(%"$$fundef_51_env_118"* %0, { i8*, i8* }* %1) !dbg !45 {
entry:
  %"$$fundef_51_env_m_289" = getelementptr inbounds %"$$fundef_51_env_118", %"$$fundef_51_env_118"* %0, i32 0, i32 0
  %"$m_envload_290" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_51_env_m_289", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_290", { i8*, i8* }** %m, align 8
  %"$retval_52" = alloca { i8*, i8* }*, align 8
  %"$gasrem_291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_292" = icmp ugt i64 1, %"$gasrem_291"
  br i1 %"$gascmp_292", label %"$out_of_gas_293", label %"$have_gas_294"

"$out_of_gas_293":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_294"

"$have_gas_294":                                  ; preds = %"$out_of_gas_293", %entry
  %"$consume_295" = sub i64 %"$gasrem_291", 1
  store i64 %"$consume_295", i64* @_gasrem, align 8
  %"$$fundef_53_envp_296_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_53_envp_296_salloc" = call i8* @_salloc(i8* %"$$fundef_53_envp_296_load", i64 16)
  %"$$fundef_53_envp_296" = bitcast i8* %"$$fundef_53_envp_296_salloc" to %"$$fundef_53_env_117"*
  %"$$fundef_53_env_voidp_298" = bitcast %"$$fundef_53_env_117"* %"$$fundef_53_envp_296" to i8*
  %"$$fundef_53_cloval_299" = insertvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_53_env_117"*)* @"$fundef_53" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_53_env_voidp_298", 1
  %"$$fundef_53_env_m_300" = getelementptr inbounds %"$$fundef_53_env_117", %"$$fundef_53_env_117"* %"$$fundef_53_envp_296", i32 0, i32 0
  %"$m_301" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  store { i8*, i8* }* %"$m_301", { i8*, i8* }** %"$$fundef_53_env_m_300", align 8
  %"$$fundef_53_env_n_302" = getelementptr inbounds %"$$fundef_53_env_117", %"$$fundef_53_env_117"* %"$$fundef_53_envp_296", i32 0, i32 1
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_53_env_n_302", align 8
  %"$$fundef_59_env_voidp_304" = bitcast %"$$fundef_53_env_117"* %"$$fundef_53_envp_296" to i8*
  %"$$fundef_59_cloval_305" = insertvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (%"$$fundef_59_env_114"*)* @"$fundef_59" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_59_env_voidp_304", 1
  %"$dyndisp_table_306_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_306_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_306_salloc_load", i64 32)
  %"$dyndisp_table_306_salloc" = bitcast i8* %"$dyndisp_table_306_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_306" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_306_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_307" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_306", i32 0
  %"$dyndisp_pcast_308" = bitcast { i8*, i8* }* %"$dyndisp_gep_307" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_53_cloval_299", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_308", align 8
  %"$dyndisp_gep_309" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_306", i32 1
  %"$dyndisp_pcast_310" = bitcast { i8*, i8* }* %"$dyndisp_gep_309" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_59_cloval_305", { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_310", align 8
  store { i8*, i8* }* %"$dyndisp_table_306", { i8*, i8* }** %"$retval_52", align 8, !dbg !46
  %"$$retval_52_311" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_52", align 8
  ret { i8*, i8* }* %"$$retval_52_311"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_49"(%"$$fundef_49_env_119"* %0, { i8*, i8* }* %1) !dbg !47 {
entry:
  %"$retval_50" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_279" = icmp ugt i64 1, %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %entry
  %"$consume_282" = sub i64 %"$gasrem_278", 1
  store i64 %"$consume_282", i64* @_gasrem, align 8
  %"$$fundef_51_envp_283_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_51_envp_283_salloc" = call i8* @_salloc(i8* %"$$fundef_51_envp_283_load", i64 8)
  %"$$fundef_51_envp_283" = bitcast i8* %"$$fundef_51_envp_283_salloc" to %"$$fundef_51_env_118"*
  %"$$fundef_51_env_voidp_285" = bitcast %"$$fundef_51_env_118"* %"$$fundef_51_envp_283" to i8*
  %"$$fundef_51_cloval_286" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_51_env_118"*, { i8*, i8* }*)* @"$fundef_51" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_51_env_voidp_285", 1
  %"$$fundef_51_env_m_287" = getelementptr inbounds %"$$fundef_51_env_118", %"$$fundef_51_env_118"* %"$$fundef_51_envp_283", i32 0, i32 0
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_51_env_m_287", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_51_cloval_286", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_50", align 8, !dbg !48
  %"$$retval_50_288" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_50", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_50_288"
}

define internal { i8*, i8* }* @"$fundef_47"(%"$$fundef_47_env_120"* %0, { i8*, i8* }* %1) !dbg !49 {
entry:
  %"$$fundef_47_env_s_249" = getelementptr inbounds %"$$fundef_47_env_120", %"$$fundef_47_env_120"* %0, i32 0, i32 0
  %"$s_envload_250" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_47_env_s_249", align 8
  %s = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_envload_250", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$retval_48" = alloca { i8*, i8* }*, align 8
  %"$gasrem_251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_252" = icmp ugt i64 1, %"$gasrem_251"
  br i1 %"$gascmp_252", label %"$out_of_gas_253", label %"$have_gas_254"

"$out_of_gas_253":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_254"

"$have_gas_254":                                  ; preds = %"$out_of_gas_253", %entry
  %"$consume_255" = sub i64 %"$gasrem_251", 1
  store i64 %"$consume_255", i64* @_gasrem, align 8
  %sz = alloca { i8*, i8* }*, align 8
  %"$gasrem_256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_257" = icmp ugt i64 1, %"$gasrem_256"
  br i1 %"$gascmp_257", label %"$out_of_gas_258", label %"$have_gas_259"

"$out_of_gas_258":                                ; preds = %"$have_gas_254"
  call void @_out_of_gas()
  br label %"$have_gas_259"

"$have_gas_259":                                  ; preds = %"$out_of_gas_258", %"$have_gas_254"
  %"$consume_260" = sub i64 %"$gasrem_256", 1
  store i64 %"$consume_260", i64* @_gasrem, align 8
  %"$s_0" = alloca { i8*, i8* }*, align 8
  %"$s_261" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$s_fptr_262" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_261", 0
  %"$s_envptr_263" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_261", 1
  %"$s_call_264" = call { i8*, i8* }* %"$s_fptr_262"(i8* %"$s_envptr_263", { i8*, i8* }* %1), !dbg !50
  store { i8*, i8* }* %"$s_call_264", { i8*, i8* }** %"$s_0", align 8, !dbg !50
  %"$$s_0_265" = load { i8*, i8* }*, { i8*, i8* }** %"$s_0", align 8
  store { i8*, i8* }* %"$$s_0_265", { i8*, i8* }** %sz, align 8, !dbg !50
  %"$gasrem_266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_267" = icmp ugt i64 1, %"$gasrem_266"
  br i1 %"$gascmp_267", label %"$out_of_gas_268", label %"$have_gas_269"

"$out_of_gas_268":                                ; preds = %"$have_gas_259"
  call void @_out_of_gas()
  br label %"$have_gas_269"

"$have_gas_269":                                  ; preds = %"$out_of_gas_268", %"$have_gas_259"
  %"$consume_270" = sub i64 %"$gasrem_266", 1
  store i64 %"$consume_270", i64* @_gasrem, align 8
  %"$s_1" = alloca { i8*, i8* }*, align 8
  %"$s_271" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$s_fptr_272" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_271", 0
  %"$s_envptr_273" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_271", 1
  %"$sz_274" = load { i8*, i8* }*, { i8*, i8* }** %sz, align 8
  %"$s_call_275" = call { i8*, i8* }* %"$s_fptr_272"(i8* %"$s_envptr_273", { i8*, i8* }* %"$sz_274"), !dbg !51
  store { i8*, i8* }* %"$s_call_275", { i8*, i8* }** %"$s_1", align 8, !dbg !51
  %"$$s_1_276" = load { i8*, i8* }*, { i8*, i8* }** %"$s_1", align 8
  store { i8*, i8* }* %"$$s_1_276", { i8*, i8* }** %"$retval_48", align 8, !dbg !51
  %"$$retval_48_277" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_48", align 8
  ret { i8*, i8* }* %"$$retval_48_277"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_45"(%"$$fundef_45_env_121"* %0, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1) !dbg !52 {
entry:
  %"$retval_46" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_238" = load i64, i64* @_gasrem, align 8
  %"$gascmp_239" = icmp ugt i64 1, %"$gasrem_238"
  br i1 %"$gascmp_239", label %"$out_of_gas_240", label %"$have_gas_241"

"$out_of_gas_240":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_241"

"$have_gas_241":                                  ; preds = %"$out_of_gas_240", %entry
  %"$consume_242" = sub i64 %"$gasrem_238", 1
  store i64 %"$consume_242", i64* @_gasrem, align 8
  %"$$fundef_47_envp_243_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_47_envp_243_salloc" = call i8* @_salloc(i8* %"$$fundef_47_envp_243_load", i64 16)
  %"$$fundef_47_envp_243" = bitcast i8* %"$$fundef_47_envp_243_salloc" to %"$$fundef_47_env_120"*
  %"$$fundef_47_env_voidp_245" = bitcast %"$$fundef_47_env_120"* %"$$fundef_47_envp_243" to i8*
  %"$$fundef_47_cloval_246" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_47_env_120"*, { i8*, i8* }*)* @"$fundef_47" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_47_env_voidp_245", 1
  %"$$fundef_47_env_s_247" = getelementptr inbounds %"$$fundef_47_env_120", %"$$fundef_47_env_120"* %"$$fundef_47_envp_243", i32 0, i32 0
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_47_env_s_247", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_47_cloval_246", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_46", align 8, !dbg !53
  %"$$retval_46_248" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_46", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_46_248"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } @"$fundef_43"(%"$$fundef_43_env_122"* %0) !dbg !54 {
entry:
  %"$retval_44" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_230" = icmp ugt i64 1, %"$gasrem_229"
  br i1 %"$gascmp_230", label %"$out_of_gas_231", label %"$have_gas_232"

"$out_of_gas_231":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_232"

"$have_gas_232":                                  ; preds = %"$out_of_gas_231", %entry
  %"$consume_233" = sub i64 %"$gasrem_229", 1
  store i64 %"$consume_233", i64* @_gasrem, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_45_env_121"*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* @"$fundef_45" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*), i8* null }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_44", align 8, !dbg !55
  %"$$retval_44_237" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_44", align 8
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$retval_44_237"
}

define internal %Uint32 @"$fundef_41"(%"$$fundef_41_env_123"* %0, %Uint32 %1) !dbg !56 {
entry:
  %"$$fundef_41_env_s_200" = getelementptr inbounds %"$$fundef_41_env_123", %"$$fundef_41_env_123"* %0, i32 0, i32 0
  %"$s_envload_201" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_41_env_s_200", align 8
  %s = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_envload_201", { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$retval_42" = alloca %Uint32, align 8
  %"$gasrem_202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_203" = icmp ugt i64 1, %"$gasrem_202"
  br i1 %"$gascmp_203", label %"$out_of_gas_204", label %"$have_gas_205"

"$out_of_gas_204":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_205"

"$have_gas_205":                                  ; preds = %"$out_of_gas_204", %entry
  %"$consume_206" = sub i64 %"$gasrem_202", 1
  store i64 %"$consume_206", i64* @_gasrem, align 8
  %sz = alloca %Uint32, align 8
  %"$gasrem_207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_208" = icmp ugt i64 1, %"$gasrem_207"
  br i1 %"$gascmp_208", label %"$out_of_gas_209", label %"$have_gas_210"

"$out_of_gas_209":                                ; preds = %"$have_gas_205"
  call void @_out_of_gas()
  br label %"$have_gas_210"

"$have_gas_210":                                  ; preds = %"$out_of_gas_209", %"$have_gas_205"
  %"$consume_211" = sub i64 %"$gasrem_207", 1
  store i64 %"$consume_211", i64* @_gasrem, align 8
  %"$s_0" = alloca %Uint32, align 8
  %"$s_212" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$s_fptr_213" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_212", 0
  %"$s_envptr_214" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_212", 1
  %"$s_call_215" = call %Uint32 %"$s_fptr_213"(i8* %"$s_envptr_214", %Uint32 %1), !dbg !57
  store %Uint32 %"$s_call_215", %Uint32* %"$s_0", align 4, !dbg !57
  %"$$s_0_216" = load %Uint32, %Uint32* %"$s_0", align 4
  store %Uint32 %"$$s_0_216", %Uint32* %sz, align 4, !dbg !57
  %"$gasrem_217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_218" = icmp ugt i64 1, %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %"$have_gas_210"
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %"$have_gas_210"
  %"$consume_221" = sub i64 %"$gasrem_217", 1
  store i64 %"$consume_221", i64* @_gasrem, align 8
  %"$s_1" = alloca %Uint32, align 8
  %"$s_222" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$s_fptr_223" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_222", 0
  %"$s_envptr_224" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_222", 1
  %"$sz_225" = load %Uint32, %Uint32* %sz, align 4
  %"$s_call_226" = call %Uint32 %"$s_fptr_223"(i8* %"$s_envptr_224", %Uint32 %"$sz_225"), !dbg !58
  store %Uint32 %"$s_call_226", %Uint32* %"$s_1", align 4, !dbg !58
  %"$$s_1_227" = load %Uint32, %Uint32* %"$s_1", align 4
  store %Uint32 %"$$s_1_227", %Uint32* %"$retval_42", align 4, !dbg !58
  %"$$retval_42_228" = load %Uint32, %Uint32* %"$retval_42", align 4
  ret %Uint32 %"$$retval_42_228"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_39"(%"$$fundef_39_env_124"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) !dbg !59 {
entry:
  %"$retval_40" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 1, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %entry
  %"$consume_193" = sub i64 %"$gasrem_189", 1
  store i64 %"$consume_193", i64* @_gasrem, align 8
  %"$$fundef_41_envp_194_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_41_envp_194_salloc" = call i8* @_salloc(i8* %"$$fundef_41_envp_194_load", i64 16)
  %"$$fundef_41_envp_194" = bitcast i8* %"$$fundef_41_envp_194_salloc" to %"$$fundef_41_env_123"*
  %"$$fundef_41_env_voidp_196" = bitcast %"$$fundef_41_env_123"* %"$$fundef_41_envp_194" to i8*
  %"$$fundef_41_cloval_197" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_41_env_123"*, %Uint32)* @"$fundef_41" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_41_env_voidp_196", 1
  %"$$fundef_41_env_s_198" = getelementptr inbounds %"$$fundef_41_env_123", %"$$fundef_41_env_123"* %"$$fundef_41_envp_194", i32 0, i32 0
  store { %Uint32 (i8*, %Uint32)*, i8* } %1, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_41_env_s_198", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_41_cloval_197", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_40", align 8, !dbg !60
  %"$$retval_40_199" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_40", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_40_199"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_37"(%"$$fundef_37_env_125"* %0) !dbg !61 {
entry:
  %"$retval_38" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 1, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %entry
  %"$consume_184" = sub i64 %"$gasrem_180", 1
  store i64 %"$consume_184", i64* @_gasrem, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_39_env_124"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_39" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_38", align 8, !dbg !62
  %"$$retval_38_188" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_38", align 8
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_38_188"
}

define internal { i8*, i8* }* @"$fundef_35"(%"$$fundef_35_env_126"* %0, { i8*, i8* }* %1) !dbg !63 {
entry:
  %"$retval_36" = alloca { i8*, i8* }*, align 8
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %entry
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem, align 8
  store { i8*, i8* }* %1, { i8*, i8* }** %"$retval_36", align 8, !dbg !64
  %"$$retval_36_179" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_36", align 8
  ret { i8*, i8* }* %"$$retval_36_179"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_33"(%"$$fundef_33_env_127"* %0, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1) !dbg !65 {
entry:
  %"$retval_34" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 1, %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %entry
  %"$consume_169" = sub i64 %"$gasrem_165", 1
  store i64 %"$consume_169", i64* @_gasrem, align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_35_env_126"*, { i8*, i8* }*)* @"$fundef_35" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* null }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_34", align 8, !dbg !66
  %"$$retval_34_173" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_34", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_34_173"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } @"$fundef_31"(%"$$fundef_31_env_128"* %0) !dbg !67 {
entry:
  %"$retval_32" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 1, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %entry
  %"$consume_160" = sub i64 %"$gasrem_156", 1
  store i64 %"$consume_160", i64* @_gasrem, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_33_env_127"*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* @"$fundef_33" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*), i8* null }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_32", align 8, !dbg !68
  %"$$retval_32_164" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_32", align 8
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$retval_32_164"
}

define internal %Uint32 @"$fundef_29"(%"$$fundef_29_env_129"* %0, %Uint32 %1) !dbg !69 {
entry:
  %"$retval_30" = alloca %Uint32, align 8
  %"$gasrem_150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_151" = icmp ugt i64 1, %"$gasrem_150"
  br i1 %"$gascmp_151", label %"$out_of_gas_152", label %"$have_gas_153"

"$out_of_gas_152":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_153"

"$have_gas_153":                                  ; preds = %"$out_of_gas_152", %entry
  %"$consume_154" = sub i64 %"$gasrem_150", 1
  store i64 %"$consume_154", i64* @_gasrem, align 8
  store %Uint32 %1, %Uint32* %"$retval_30", align 4, !dbg !70
  %"$$retval_30_155" = load %Uint32, %Uint32* %"$retval_30", align 4
  ret %Uint32 %"$$retval_30_155"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_27"(%"$$fundef_27_env_130"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) !dbg !71 {
entry:
  %"$retval_28" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 1, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %entry
  %"$consume_145" = sub i64 %"$gasrem_141", 1
  store i64 %"$consume_145", i64* @_gasrem, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_29_env_129"*, %Uint32)* @"$fundef_29" to %Uint32 (i8*, %Uint32)*), i8* null }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_28", align 8, !dbg !72
  %"$$retval_28_149" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_28", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_28_149"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_25"(%"$$fundef_25_env_131"* %0) !dbg !73 {
entry:
  %"$retval_26" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_133" = icmp ugt i64 1, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %entry
  %"$consume_136" = sub i64 %"$gasrem_132", 1
  store i64 %"$consume_136", i64* @_gasrem, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_27_env_130"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_27" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_26", align 8, !dbg !74
  %"$$retval_26_140" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_26", align 8
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_26_140"
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
  %"$gasrem_688" = load i64, i64* @_gasrem, align 8
  %"$gascmp_689" = icmp ugt i64 1, %"$gasrem_688"
  br i1 %"$gascmp_689", label %"$out_of_gas_690", label %"$have_gas_691"

"$out_of_gas_690":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_691"

"$have_gas_691":                                  ; preds = %"$out_of_gas_690", %entry
  %"$consume_692" = sub i64 %"$gasrem_688", 1
  store i64 %"$consume_692", i64* @_gasrem, align 8
  %c0 = alloca { i8*, i8* }*, align 8
  %"$gasrem_693" = load i64, i64* @_gasrem, align 8
  %"$gascmp_694" = icmp ugt i64 1, %"$gasrem_693"
  br i1 %"$gascmp_694", label %"$out_of_gas_695", label %"$have_gas_696"

"$out_of_gas_695":                                ; preds = %"$have_gas_691"
  call void @_out_of_gas()
  br label %"$have_gas_696"

"$have_gas_696":                                  ; preds = %"$out_of_gas_695", %"$have_gas_691"
  %"$consume_697" = sub i64 %"$gasrem_693", 1
  store i64 %"$consume_697", i64* @_gasrem, align 8
  %"$dyndisp_table_704_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_704_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_704_salloc_load", i64 32)
  %"$dyndisp_table_704_salloc" = bitcast i8* %"$dyndisp_table_704_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_704" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_704_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_705" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_704", i32 0
  %"$dyndisp_pcast_706" = bitcast { i8*, i8* }* %"$dyndisp_gep_705" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_25_env_131"*)* @"$fundef_25" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_706", align 8
  %"$dyndisp_gep_707" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_704", i32 1
  %"$dyndisp_pcast_708" = bitcast { i8*, i8* }* %"$dyndisp_gep_707" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (%"$$fundef_31_env_128"*)* @"$fundef_31" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_708", align 8
  store { i8*, i8* }* %"$dyndisp_table_704", { i8*, i8* }** %c0, align 8, !dbg !78
  %"$gasrem_709" = load i64, i64* @_gasrem, align 8
  %"$gascmp_710" = icmp ugt i64 1, %"$gasrem_709"
  br i1 %"$gascmp_710", label %"$out_of_gas_711", label %"$have_gas_712"

"$out_of_gas_711":                                ; preds = %"$have_gas_696"
  call void @_out_of_gas()
  br label %"$have_gas_712"

"$have_gas_712":                                  ; preds = %"$out_of_gas_711", %"$have_gas_696"
  %"$consume_713" = sub i64 %"$gasrem_709", 1
  store i64 %"$consume_713", i64* @_gasrem, align 8
  %"$gasrem_714" = load i64, i64* @_gasrem, align 8
  %"$gascmp_715" = icmp ugt i64 1, %"$gasrem_714"
  br i1 %"$gascmp_715", label %"$out_of_gas_716", label %"$have_gas_717"

"$out_of_gas_716":                                ; preds = %"$have_gas_712"
  call void @_out_of_gas()
  br label %"$have_gas_717"

"$have_gas_717":                                  ; preds = %"$out_of_gas_716", %"$have_gas_712"
  %"$consume_718" = sub i64 %"$gasrem_714", 1
  store i64 %"$consume_718", i64* @_gasrem, align 8
  %c2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_720" = icmp ugt i64 1, %"$gasrem_719"
  br i1 %"$gascmp_720", label %"$out_of_gas_721", label %"$have_gas_722"

"$out_of_gas_721":                                ; preds = %"$have_gas_717"
  call void @_out_of_gas()
  br label %"$have_gas_722"

"$have_gas_722":                                  ; preds = %"$out_of_gas_721", %"$have_gas_717"
  %"$consume_723" = sub i64 %"$gasrem_719", 1
  store i64 %"$consume_723", i64* @_gasrem, align 8
  %"$dyndisp_table_730_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_730_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_730_salloc_load", i64 32)
  %"$dyndisp_table_730_salloc" = bitcast i8* %"$dyndisp_table_730_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_730" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_730_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_731" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_730", i32 0
  %"$dyndisp_pcast_732" = bitcast { i8*, i8* }* %"$dyndisp_gep_731" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_37_env_125"*)* @"$fundef_37" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_732", align 8
  %"$dyndisp_gep_733" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_730", i32 1
  %"$dyndisp_pcast_734" = bitcast { i8*, i8* }* %"$dyndisp_gep_733" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (%"$$fundef_43_env_122"*)* @"$fundef_43" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_734", align 8
  store { i8*, i8* }* %"$dyndisp_table_730", { i8*, i8* }** %c2, align 8, !dbg !79
  %"$gasrem_735" = load i64, i64* @_gasrem, align 8
  %"$gascmp_736" = icmp ugt i64 1, %"$gasrem_735"
  br i1 %"$gascmp_736", label %"$out_of_gas_737", label %"$have_gas_738"

"$out_of_gas_737":                                ; preds = %"$have_gas_722"
  call void @_out_of_gas()
  br label %"$have_gas_738"

"$have_gas_738":                                  ; preds = %"$out_of_gas_737", %"$have_gas_722"
  %"$consume_739" = sub i64 %"$gasrem_735", 1
  store i64 %"$consume_739", i64* @_gasrem, align 8
  %cadd = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_741" = icmp ugt i64 1, %"$gasrem_740"
  br i1 %"$gascmp_741", label %"$out_of_gas_742", label %"$have_gas_743"

"$out_of_gas_742":                                ; preds = %"$have_gas_738"
  call void @_out_of_gas()
  br label %"$have_gas_743"

"$have_gas_743":                                  ; preds = %"$out_of_gas_742", %"$have_gas_738"
  %"$consume_744" = sub i64 %"$gasrem_740", 1
  store i64 %"$consume_744", i64* @_gasrem, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_49_env_119"*, { i8*, i8* }*)* @"$fundef_49" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8, !dbg !80
  %"$gasrem_748" = load i64, i64* @_gasrem, align 8
  %"$gascmp_749" = icmp ugt i64 1, %"$gasrem_748"
  br i1 %"$gascmp_749", label %"$out_of_gas_750", label %"$have_gas_751"

"$out_of_gas_750":                                ; preds = %"$have_gas_743"
  call void @_out_of_gas()
  br label %"$have_gas_751"

"$have_gas_751":                                  ; preds = %"$out_of_gas_750", %"$have_gas_743"
  %"$consume_752" = sub i64 %"$gasrem_748", 1
  store i64 %"$consume_752", i64* @_gasrem, align 8
  %cmul = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_753" = load i64, i64* @_gasrem, align 8
  %"$gascmp_754" = icmp ugt i64 1, %"$gasrem_753"
  br i1 %"$gascmp_754", label %"$out_of_gas_755", label %"$have_gas_756"

"$out_of_gas_755":                                ; preds = %"$have_gas_751"
  call void @_out_of_gas()
  br label %"$have_gas_756"

"$have_gas_756":                                  ; preds = %"$out_of_gas_755", %"$have_gas_751"
  %"$consume_757" = sub i64 %"$gasrem_753", 1
  store i64 %"$consume_757", i64* @_gasrem, align 8
  %"$$fundef_65_envp_758_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_65_envp_758_salloc" = call i8* @_salloc(i8* %"$$fundef_65_envp_758_load", i64 24)
  %"$$fundef_65_envp_758" = bitcast i8* %"$$fundef_65_envp_758_salloc" to %"$$fundef_65_env_111"*
  %"$$fundef_65_env_voidp_760" = bitcast %"$$fundef_65_env_111"* %"$$fundef_65_envp_758" to i8*
  %"$$fundef_65_cloval_761" = insertvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_65_env_111"*, { i8*, i8* }*)* @"$fundef_65" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_65_env_voidp_760", 1
  %"$$fundef_65_env_c0_762" = getelementptr inbounds %"$$fundef_65_env_111", %"$$fundef_65_env_111"* %"$$fundef_65_envp_758", i32 0, i32 0
  %"$c0_763" = load { i8*, i8* }*, { i8*, i8* }** %c0, align 8
  store { i8*, i8* }* %"$c0_763", { i8*, i8* }** %"$$fundef_65_env_c0_762", align 8
  %"$$fundef_65_env_cadd_764" = getelementptr inbounds %"$$fundef_65_env_111", %"$$fundef_65_env_111"* %"$$fundef_65_envp_758", i32 0, i32 1
  %"$cadd_765" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_765", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_65_env_cadd_764", align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_65_cloval_761", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul, align 8, !dbg !81
  %"$gasrem_766" = load i64, i64* @_gasrem, align 8
  %"$gascmp_767" = icmp ugt i64 1, %"$gasrem_766"
  br i1 %"$gascmp_767", label %"$out_of_gas_768", label %"$have_gas_769"

"$out_of_gas_768":                                ; preds = %"$have_gas_756"
  call void @_out_of_gas()
  br label %"$have_gas_769"

"$have_gas_769":                                  ; preds = %"$out_of_gas_768", %"$have_gas_756"
  %"$consume_770" = sub i64 %"$gasrem_766", 1
  store i64 %"$consume_770", i64* @_gasrem, align 8
  %church_nat_to_uint32 = alloca { %Uint32 (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_771" = load i64, i64* @_gasrem, align 8
  %"$gascmp_772" = icmp ugt i64 1, %"$gasrem_771"
  br i1 %"$gascmp_772", label %"$out_of_gas_773", label %"$have_gas_774"

"$out_of_gas_773":                                ; preds = %"$have_gas_769"
  call void @_out_of_gas()
  br label %"$have_gas_774"

"$have_gas_774":                                  ; preds = %"$out_of_gas_773", %"$have_gas_769"
  %"$consume_775" = sub i64 %"$gasrem_771", 1
  store i64 %"$consume_775", i64* @_gasrem, align 8
  store { %Uint32 (i8*, { i8*, i8* }*)*, i8* } { %Uint32 (i8*, { i8*, i8* }*)* bitcast (%Uint32 (%"$$fundef_69_env_109"*, { i8*, i8* }*)* @"$fundef_69" to %Uint32 (i8*, { i8*, i8* }*)*), i8* null }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %church_nat_to_uint32, align 8, !dbg !82
  %"$gasrem_779" = load i64, i64* @_gasrem, align 8
  %"$gascmp_780" = icmp ugt i64 1, %"$gasrem_779"
  br i1 %"$gascmp_780", label %"$out_of_gas_781", label %"$have_gas_782"

"$out_of_gas_781":                                ; preds = %"$have_gas_774"
  call void @_out_of_gas()
  br label %"$have_gas_782"

"$have_gas_782":                                  ; preds = %"$out_of_gas_781", %"$have_gas_774"
  %"$consume_783" = sub i64 %"$gasrem_779", 1
  store i64 %"$consume_783", i64* @_gasrem, align 8
  %c4 = alloca { i8*, i8* }*, align 8
  %"$gasrem_784" = load i64, i64* @_gasrem, align 8
  %"$gascmp_785" = icmp ugt i64 1, %"$gasrem_784"
  br i1 %"$gascmp_785", label %"$out_of_gas_786", label %"$have_gas_787"

"$out_of_gas_786":                                ; preds = %"$have_gas_782"
  call void @_out_of_gas()
  br label %"$have_gas_787"

"$have_gas_787":                                  ; preds = %"$out_of_gas_786", %"$have_gas_782"
  %"$consume_788" = sub i64 %"$gasrem_784", 1
  store i64 %"$consume_788", i64* @_gasrem, align 8
  %"$cmul_11" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cmul_789" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul, align 8
  %"$cmul_fptr_790" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_789", 0
  %"$cmul_envptr_791" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_789", 1
  %"$c2_792" = load { i8*, i8* }*, { i8*, i8* }** %c2, align 8
  %"$cmul_call_793" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_790"(i8* %"$cmul_envptr_791", { i8*, i8* }* %"$c2_792"), !dbg !83
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_793", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_11", align 8, !dbg !83
  %"$cmul_12" = alloca { i8*, i8* }*, align 8
  %"$$cmul_11_794" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_11", align 8
  %"$$cmul_11_fptr_795" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_11_794", 0
  %"$$cmul_11_envptr_796" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_11_794", 1
  %"$c2_797" = load { i8*, i8* }*, { i8*, i8* }** %c2, align 8
  %"$$cmul_11_call_798" = call { i8*, i8* }* %"$$cmul_11_fptr_795"(i8* %"$$cmul_11_envptr_796", { i8*, i8* }* %"$c2_797"), !dbg !83
  store { i8*, i8* }* %"$$cmul_11_call_798", { i8*, i8* }** %"$cmul_12", align 8, !dbg !83
  %"$$cmul_12_799" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_12", align 8
  store { i8*, i8* }* %"$$cmul_12_799", { i8*, i8* }** %c4, align 8, !dbg !83
  %"$gasrem_800" = load i64, i64* @_gasrem, align 8
  %"$gascmp_801" = icmp ugt i64 1, %"$gasrem_800"
  br i1 %"$gascmp_801", label %"$out_of_gas_802", label %"$have_gas_803"

"$out_of_gas_802":                                ; preds = %"$have_gas_787"
  call void @_out_of_gas()
  br label %"$have_gas_803"

"$have_gas_803":                                  ; preds = %"$out_of_gas_802", %"$have_gas_787"
  %"$consume_804" = sub i64 %"$gasrem_800", 1
  store i64 %"$consume_804", i64* @_gasrem, align 8
  %c16 = alloca { i8*, i8* }*, align 8
  %"$gasrem_805" = load i64, i64* @_gasrem, align 8
  %"$gascmp_806" = icmp ugt i64 1, %"$gasrem_805"
  br i1 %"$gascmp_806", label %"$out_of_gas_807", label %"$have_gas_808"

"$out_of_gas_807":                                ; preds = %"$have_gas_803"
  call void @_out_of_gas()
  br label %"$have_gas_808"

"$have_gas_808":                                  ; preds = %"$out_of_gas_807", %"$have_gas_803"
  %"$consume_809" = sub i64 %"$gasrem_805", 1
  store i64 %"$consume_809", i64* @_gasrem, align 8
  %"$cmul_13" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cmul_810" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul, align 8
  %"$cmul_fptr_811" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_810", 0
  %"$cmul_envptr_812" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_810", 1
  %"$c4_813" = load { i8*, i8* }*, { i8*, i8* }** %c4, align 8
  %"$cmul_call_814" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_811"(i8* %"$cmul_envptr_812", { i8*, i8* }* %"$c4_813"), !dbg !84
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_814", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_13", align 8, !dbg !84
  %"$cmul_14" = alloca { i8*, i8* }*, align 8
  %"$$cmul_13_815" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_13", align 8
  %"$$cmul_13_fptr_816" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_13_815", 0
  %"$$cmul_13_envptr_817" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_13_815", 1
  %"$c4_818" = load { i8*, i8* }*, { i8*, i8* }** %c4, align 8
  %"$$cmul_13_call_819" = call { i8*, i8* }* %"$$cmul_13_fptr_816"(i8* %"$$cmul_13_envptr_817", { i8*, i8* }* %"$c4_818"), !dbg !84
  store { i8*, i8* }* %"$$cmul_13_call_819", { i8*, i8* }** %"$cmul_14", align 8, !dbg !84
  %"$$cmul_14_820" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_14", align 8
  store { i8*, i8* }* %"$$cmul_14_820", { i8*, i8* }** %c16, align 8, !dbg !84
  %"$gasrem_821" = load i64, i64* @_gasrem, align 8
  %"$gascmp_822" = icmp ugt i64 1, %"$gasrem_821"
  br i1 %"$gascmp_822", label %"$out_of_gas_823", label %"$have_gas_824"

"$out_of_gas_823":                                ; preds = %"$have_gas_808"
  call void @_out_of_gas()
  br label %"$have_gas_824"

"$have_gas_824":                                  ; preds = %"$out_of_gas_823", %"$have_gas_808"
  %"$consume_825" = sub i64 %"$gasrem_821", 1
  store i64 %"$consume_825", i64* @_gasrem, align 8
  %c32 = alloca { i8*, i8* }*, align 8
  %"$gasrem_826" = load i64, i64* @_gasrem, align 8
  %"$gascmp_827" = icmp ugt i64 1, %"$gasrem_826"
  br i1 %"$gascmp_827", label %"$out_of_gas_828", label %"$have_gas_829"

"$out_of_gas_828":                                ; preds = %"$have_gas_824"
  call void @_out_of_gas()
  br label %"$have_gas_829"

"$have_gas_829":                                  ; preds = %"$out_of_gas_828", %"$have_gas_824"
  %"$consume_830" = sub i64 %"$gasrem_826", 1
  store i64 %"$consume_830", i64* @_gasrem, align 8
  %"$cadd_15" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cadd_831" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$cadd_fptr_832" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_831", 0
  %"$cadd_envptr_833" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_831", 1
  %"$c16_834" = load { i8*, i8* }*, { i8*, i8* }** %c16, align 8
  %"$cadd_call_835" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_fptr_832"(i8* %"$cadd_envptr_833", { i8*, i8* }* %"$c16_834"), !dbg !85
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_call_835", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_15", align 8, !dbg !85
  %"$cadd_16" = alloca { i8*, i8* }*, align 8
  %"$$cadd_15_836" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_15", align 8
  %"$$cadd_15_fptr_837" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_15_836", 0
  %"$$cadd_15_envptr_838" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_15_836", 1
  %"$c16_839" = load { i8*, i8* }*, { i8*, i8* }** %c16, align 8
  %"$$cadd_15_call_840" = call { i8*, i8* }* %"$$cadd_15_fptr_837"(i8* %"$$cadd_15_envptr_838", { i8*, i8* }* %"$c16_839"), !dbg !85
  store { i8*, i8* }* %"$$cadd_15_call_840", { i8*, i8* }** %"$cadd_16", align 8, !dbg !85
  %"$$cadd_16_841" = load { i8*, i8* }*, { i8*, i8* }** %"$cadd_16", align 8
  store { i8*, i8* }* %"$$cadd_16_841", { i8*, i8* }** %c32, align 8, !dbg !85
  %"$gasrem_842" = load i64, i64* @_gasrem, align 8
  %"$gascmp_843" = icmp ugt i64 1, %"$gasrem_842"
  br i1 %"$gascmp_843", label %"$out_of_gas_844", label %"$have_gas_845"

"$out_of_gas_844":                                ; preds = %"$have_gas_829"
  call void @_out_of_gas()
  br label %"$have_gas_845"

"$have_gas_845":                                  ; preds = %"$out_of_gas_844", %"$have_gas_829"
  %"$consume_846" = sub i64 %"$gasrem_842", 1
  store i64 %"$consume_846", i64* @_gasrem, align 8
  %c128 = alloca { i8*, i8* }*, align 8
  %"$gasrem_847" = load i64, i64* @_gasrem, align 8
  %"$gascmp_848" = icmp ugt i64 1, %"$gasrem_847"
  br i1 %"$gascmp_848", label %"$out_of_gas_849", label %"$have_gas_850"

"$out_of_gas_849":                                ; preds = %"$have_gas_845"
  call void @_out_of_gas()
  br label %"$have_gas_850"

"$have_gas_850":                                  ; preds = %"$out_of_gas_849", %"$have_gas_845"
  %"$consume_851" = sub i64 %"$gasrem_847", 1
  store i64 %"$consume_851", i64* @_gasrem, align 8
  %"$cmul_17" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cmul_852" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul, align 8
  %"$cmul_fptr_853" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_852", 0
  %"$cmul_envptr_854" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_852", 1
  %"$c4_855" = load { i8*, i8* }*, { i8*, i8* }** %c4, align 8
  %"$cmul_call_856" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_853"(i8* %"$cmul_envptr_854", { i8*, i8* }* %"$c4_855"), !dbg !86
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_856", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_17", align 8, !dbg !86
  %"$cmul_18" = alloca { i8*, i8* }*, align 8
  %"$$cmul_17_857" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_17", align 8
  %"$$cmul_17_fptr_858" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_17_857", 0
  %"$$cmul_17_envptr_859" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_17_857", 1
  %"$c32_860" = load { i8*, i8* }*, { i8*, i8* }** %c32, align 8
  %"$$cmul_17_call_861" = call { i8*, i8* }* %"$$cmul_17_fptr_858"(i8* %"$$cmul_17_envptr_859", { i8*, i8* }* %"$c32_860"), !dbg !86
  store { i8*, i8* }* %"$$cmul_17_call_861", { i8*, i8* }** %"$cmul_18", align 8, !dbg !86
  %"$$cmul_18_862" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_18", align 8
  store { i8*, i8* }* %"$$cmul_18_862", { i8*, i8* }** %c128, align 8, !dbg !86
  %"$gasrem_863" = load i64, i64* @_gasrem, align 8
  %"$gascmp_864" = icmp ugt i64 1, %"$gasrem_863"
  br i1 %"$gascmp_864", label %"$out_of_gas_865", label %"$have_gas_866"

"$out_of_gas_865":                                ; preds = %"$have_gas_850"
  call void @_out_of_gas()
  br label %"$have_gas_866"

"$have_gas_866":                                  ; preds = %"$out_of_gas_865", %"$have_gas_850"
  %"$consume_867" = sub i64 %"$gasrem_863", 1
  store i64 %"$consume_867", i64* @_gasrem, align 8
  %c256 = alloca { i8*, i8* }*, align 8
  %"$gasrem_868" = load i64, i64* @_gasrem, align 8
  %"$gascmp_869" = icmp ugt i64 1, %"$gasrem_868"
  br i1 %"$gascmp_869", label %"$out_of_gas_870", label %"$have_gas_871"

"$out_of_gas_870":                                ; preds = %"$have_gas_866"
  call void @_out_of_gas()
  br label %"$have_gas_871"

"$have_gas_871":                                  ; preds = %"$out_of_gas_870", %"$have_gas_866"
  %"$consume_872" = sub i64 %"$gasrem_868", 1
  store i64 %"$consume_872", i64* @_gasrem, align 8
  %"$cadd_19" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cadd_873" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$cadd_fptr_874" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_873", 0
  %"$cadd_envptr_875" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_873", 1
  %"$c128_876" = load { i8*, i8* }*, { i8*, i8* }** %c128, align 8
  %"$cadd_call_877" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_fptr_874"(i8* %"$cadd_envptr_875", { i8*, i8* }* %"$c128_876"), !dbg !87
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_call_877", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_19", align 8, !dbg !87
  %"$cadd_20" = alloca { i8*, i8* }*, align 8
  %"$$cadd_19_878" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_19", align 8
  %"$$cadd_19_fptr_879" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_19_878", 0
  %"$$cadd_19_envptr_880" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_19_878", 1
  %"$c128_881" = load { i8*, i8* }*, { i8*, i8* }** %c128, align 8
  %"$$cadd_19_call_882" = call { i8*, i8* }* %"$$cadd_19_fptr_879"(i8* %"$$cadd_19_envptr_880", { i8*, i8* }* %"$c128_881"), !dbg !87
  store { i8*, i8* }* %"$$cadd_19_call_882", { i8*, i8* }** %"$cadd_20", align 8, !dbg !87
  %"$$cadd_20_883" = load { i8*, i8* }*, { i8*, i8* }** %"$cadd_20", align 8
  store { i8*, i8* }* %"$$cadd_20_883", { i8*, i8* }** %c256, align 8, !dbg !87
  %"$gasrem_884" = load i64, i64* @_gasrem, align 8
  %"$gascmp_885" = icmp ugt i64 1, %"$gasrem_884"
  br i1 %"$gascmp_885", label %"$out_of_gas_886", label %"$have_gas_887"

"$out_of_gas_886":                                ; preds = %"$have_gas_871"
  call void @_out_of_gas()
  br label %"$have_gas_887"

"$have_gas_887":                                  ; preds = %"$out_of_gas_886", %"$have_gas_871"
  %"$consume_888" = sub i64 %"$gasrem_884", 1
  store i64 %"$consume_888", i64* @_gasrem, align 8
  %c65536 = alloca { i8*, i8* }*, align 8
  %"$gasrem_889" = load i64, i64* @_gasrem, align 8
  %"$gascmp_890" = icmp ugt i64 1, %"$gasrem_889"
  br i1 %"$gascmp_890", label %"$out_of_gas_891", label %"$have_gas_892"

"$out_of_gas_891":                                ; preds = %"$have_gas_887"
  call void @_out_of_gas()
  br label %"$have_gas_892"

"$have_gas_892":                                  ; preds = %"$out_of_gas_891", %"$have_gas_887"
  %"$consume_893" = sub i64 %"$gasrem_889", 1
  store i64 %"$consume_893", i64* @_gasrem, align 8
  %"$cmul_21" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cmul_894" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul, align 8
  %"$cmul_fptr_895" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_894", 0
  %"$cmul_envptr_896" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_894", 1
  %"$c256_897" = load { i8*, i8* }*, { i8*, i8* }** %c256, align 8
  %"$cmul_call_898" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_895"(i8* %"$cmul_envptr_896", { i8*, i8* }* %"$c256_897"), !dbg !88
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_898", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_21", align 8, !dbg !88
  %"$cmul_22" = alloca { i8*, i8* }*, align 8
  %"$$cmul_21_899" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_21", align 8
  %"$$cmul_21_fptr_900" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_21_899", 0
  %"$$cmul_21_envptr_901" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_21_899", 1
  %"$c256_902" = load { i8*, i8* }*, { i8*, i8* }** %c256, align 8
  %"$$cmul_21_call_903" = call { i8*, i8* }* %"$$cmul_21_fptr_900"(i8* %"$$cmul_21_envptr_901", { i8*, i8* }* %"$c256_902"), !dbg !88
  store { i8*, i8* }* %"$$cmul_21_call_903", { i8*, i8* }** %"$cmul_22", align 8, !dbg !88
  %"$$cmul_22_904" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_22", align 8
  store { i8*, i8* }* %"$$cmul_22_904", { i8*, i8* }** %c65536, align 8, !dbg !88
  %"$gasrem_905" = load i64, i64* @_gasrem, align 8
  %"$gascmp_906" = icmp ugt i64 1, %"$gasrem_905"
  br i1 %"$gascmp_906", label %"$out_of_gas_907", label %"$have_gas_908"

"$out_of_gas_907":                                ; preds = %"$have_gas_892"
  call void @_out_of_gas()
  br label %"$have_gas_908"

"$have_gas_908":                                  ; preds = %"$out_of_gas_907", %"$have_gas_892"
  %"$consume_909" = sub i64 %"$gasrem_905", 1
  store i64 %"$consume_909", i64* @_gasrem, align 8
  %"$church_nat_to_uint32_23" = alloca %Uint32, align 8
  %"$church_nat_to_uint32_910" = load { %Uint32 (i8*, { i8*, i8* }*)*, i8* }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %church_nat_to_uint32, align 8
  %"$church_nat_to_uint32_fptr_911" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$church_nat_to_uint32_910", 0
  %"$church_nat_to_uint32_envptr_912" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$church_nat_to_uint32_910", 1
  %"$c65536_913" = load { i8*, i8* }*, { i8*, i8* }** %c65536, align 8
  %"$church_nat_to_uint32_call_914" = call %Uint32 %"$church_nat_to_uint32_fptr_911"(i8* %"$church_nat_to_uint32_envptr_912", { i8*, i8* }* %"$c65536_913"), !dbg !89
  store %Uint32 %"$church_nat_to_uint32_call_914", %Uint32* %"$church_nat_to_uint32_23", align 4, !dbg !89
  %"$$church_nat_to_uint32_23_915" = load %Uint32, %Uint32* %"$church_nat_to_uint32_23", align 4
  store %Uint32 %"$$church_nat_to_uint32_23_915", %Uint32* %"$expr_24", align 4, !dbg !89
  %"$$expr_24_916" = load %Uint32, %Uint32* %"$expr_24", align 4
  ret %Uint32 %"$$expr_24_916"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_917" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_918" = alloca %Uint32, align 8
  %"$memvoidcast_919" = bitcast %Uint32* %"$pval_918" to i8*
  store %Uint32 %"$exprval_917", %Uint32* %"$pval_918", align 4
  %"$execptr_load_920" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_920", %_TyDescrTy_Typ* @"$TyDescr_Uint32_77", i8* %"$memvoidcast_919")
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
