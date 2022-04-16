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

%"$TyDescrTy_PrimTyp_79" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%Int32 = type { i32 }
%"$ParamDescr_969" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_970" = type { %ParamDescrString, i32, %"$ParamDescr_969"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_969"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_970"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Uint32 @"$fundef_77"(%"$$fundef_77_env_116"* %0, %Uint32 %1) {
entry:
  %"$$fundef_77_env_one_691" = getelementptr inbounds %"$$fundef_77_env_116", %"$$fundef_77_env_116"* %0, i32 0, i32 0
  %"$one_envload_692" = load %Uint32, %Uint32* %"$$fundef_77_env_one_691", align 4
  %one = alloca %Uint32, align 8
  store %Uint32 %"$one_envload_692", %Uint32* %one, align 4
  %"$retval_78" = alloca %Uint32, align 8
  %"$gasrem_693" = load i64, i64* @_gasrem, align 8
  %"$gascmp_694" = icmp ugt i64 4, %"$gasrem_693"
  br i1 %"$gascmp_694", label %"$out_of_gas_695", label %"$have_gas_696"

"$out_of_gas_695":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_696"

"$have_gas_696":                                  ; preds = %"$out_of_gas_695", %entry
  %"$consume_697" = sub i64 %"$gasrem_693", 4
  store i64 %"$consume_697", i64* @_gasrem, align 8
  %"$one_698" = load %Uint32, %Uint32* %one, align 4
  %"$add_call_699" = call %Uint32 @_add_Uint32(%Uint32 %"$one_698", %Uint32 %1)
  store %Uint32 %"$add_call_699", %Uint32* %"$retval_78", align 4
  %"$$retval_78_700" = load %Uint32, %Uint32* %"$retval_78", align 4
  ret %Uint32 %"$$retval_78_700"
}

define internal %Uint32 @"$fundef_75"(%"$$fundef_75_env_117"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_76" = alloca %Uint32, align 8
  %"$gasrem_622" = load i64, i64* @_gasrem, align 8
  %"$gascmp_623" = icmp ugt i64 1, %"$gasrem_622"
  br i1 %"$gascmp_623", label %"$out_of_gas_624", label %"$have_gas_625"

"$out_of_gas_624":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_625"

"$have_gas_625":                                  ; preds = %"$out_of_gas_624", %entry
  %"$consume_626" = sub i64 %"$gasrem_622", 1
  store i64 %"$consume_626", i64* @_gasrem, align 8
  %zero = alloca %Uint32, align 8
  %"$gasrem_627" = load i64, i64* @_gasrem, align 8
  %"$gascmp_628" = icmp ugt i64 1, %"$gasrem_627"
  br i1 %"$gascmp_628", label %"$out_of_gas_629", label %"$have_gas_630"

"$out_of_gas_629":                                ; preds = %"$have_gas_625"
  call void @_out_of_gas()
  br label %"$have_gas_630"

"$have_gas_630":                                  ; preds = %"$out_of_gas_629", %"$have_gas_625"
  %"$consume_631" = sub i64 %"$gasrem_627", 1
  store i64 %"$consume_631", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %zero, align 4
  %"$gasrem_632" = load i64, i64* @_gasrem, align 8
  %"$gascmp_633" = icmp ugt i64 1, %"$gasrem_632"
  br i1 %"$gascmp_633", label %"$out_of_gas_634", label %"$have_gas_635"

"$out_of_gas_634":                                ; preds = %"$have_gas_630"
  call void @_out_of_gas()
  br label %"$have_gas_635"

"$have_gas_635":                                  ; preds = %"$out_of_gas_634", %"$have_gas_630"
  %"$consume_636" = sub i64 %"$gasrem_632", 1
  store i64 %"$consume_636", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  %"$gasrem_637" = load i64, i64* @_gasrem, align 8
  %"$gascmp_638" = icmp ugt i64 1, %"$gasrem_637"
  br i1 %"$gascmp_638", label %"$out_of_gas_639", label %"$have_gas_640"

"$out_of_gas_639":                                ; preds = %"$have_gas_635"
  call void @_out_of_gas()
  br label %"$have_gas_640"

"$have_gas_640":                                  ; preds = %"$out_of_gas_639", %"$have_gas_635"
  %"$consume_641" = sub i64 %"$gasrem_637", 1
  store i64 %"$consume_641", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4
  %"$gasrem_642" = load i64, i64* @_gasrem, align 8
  %"$gascmp_643" = icmp ugt i64 1, %"$gasrem_642"
  br i1 %"$gascmp_643", label %"$out_of_gas_644", label %"$have_gas_645"

"$out_of_gas_644":                                ; preds = %"$have_gas_640"
  call void @_out_of_gas()
  br label %"$have_gas_645"

"$have_gas_645":                                  ; preds = %"$out_of_gas_644", %"$have_gas_640"
  %"$consume_646" = sub i64 %"$gasrem_642", 1
  store i64 %"$consume_646", i64* @_gasrem, align 8
  %add1 = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_647" = load i64, i64* @_gasrem, align 8
  %"$gascmp_648" = icmp ugt i64 1, %"$gasrem_647"
  br i1 %"$gascmp_648", label %"$out_of_gas_649", label %"$have_gas_650"

"$out_of_gas_649":                                ; preds = %"$have_gas_645"
  call void @_out_of_gas()
  br label %"$have_gas_650"

"$have_gas_650":                                  ; preds = %"$out_of_gas_649", %"$have_gas_645"
  %"$consume_651" = sub i64 %"$gasrem_647", 1
  store i64 %"$consume_651", i64* @_gasrem, align 8
  %"$$fundef_77_envp_652_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_77_envp_652_salloc" = call i8* @_salloc(i8* %"$$fundef_77_envp_652_load", i64 4)
  %"$$fundef_77_envp_652" = bitcast i8* %"$$fundef_77_envp_652_salloc" to %"$$fundef_77_env_116"*
  %"$$fundef_77_env_voidp_654" = bitcast %"$$fundef_77_env_116"* %"$$fundef_77_envp_652" to i8*
  %"$$fundef_77_cloval_655" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_77_env_116"*, %Uint32)* @"$fundef_77" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_77_env_voidp_654", 1
  %"$$fundef_77_env_one_656" = getelementptr inbounds %"$$fundef_77_env_116", %"$$fundef_77_env_116"* %"$$fundef_77_envp_652", i32 0, i32 0
  %"$one_657" = load %Uint32, %Uint32* %one, align 4
  store %Uint32 %"$one_657", %Uint32* %"$$fundef_77_env_one_656", align 4
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_77_cloval_655", { %Uint32 (i8*, %Uint32)*, i8* }* %add1, align 8
  %"$gasrem_658" = load i64, i64* @_gasrem, align 8
  %"$gascmp_659" = icmp ugt i64 1, %"$gasrem_658"
  br i1 %"$gascmp_659", label %"$out_of_gas_660", label %"$have_gas_661"

"$out_of_gas_660":                                ; preds = %"$have_gas_650"
  call void @_out_of_gas()
  br label %"$have_gas_661"

"$have_gas_661":                                  ; preds = %"$out_of_gas_660", %"$have_gas_650"
  %"$consume_662" = sub i64 %"$gasrem_658", 1
  store i64 %"$consume_662", i64* @_gasrem, align 8
  %c32 = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_663" = load i64, i64* @_gasrem, align 8
  %"$gascmp_664" = icmp ugt i64 1, %"$gasrem_663"
  br i1 %"$gascmp_664", label %"$out_of_gas_665", label %"$have_gas_666"

"$out_of_gas_665":                                ; preds = %"$have_gas_661"
  call void @_out_of_gas()
  br label %"$have_gas_666"

"$have_gas_666":                                  ; preds = %"$out_of_gas_665", %"$have_gas_661"
  %"$consume_667" = sub i64 %"$gasrem_663", 1
  store i64 %"$consume_667", i64* @_gasrem, align 8
  %"$c_668" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 0
  %"$c_669" = bitcast { i8*, i8* }* %"$c_668" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$c_670" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$c_669", align 8
  %"$c_fptr_671" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$c_670", 0
  %"$c_envptr_672" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$c_670", 1
  %"$c_call_673" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c_fptr_671"(i8* %"$c_envptr_672")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c_call_673", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c32, align 8
  %"$gasrem_674" = load i64, i64* @_gasrem, align 8
  %"$gascmp_675" = icmp ugt i64 1, %"$gasrem_674"
  br i1 %"$gascmp_675", label %"$out_of_gas_676", label %"$have_gas_677"

"$out_of_gas_676":                                ; preds = %"$have_gas_666"
  call void @_out_of_gas()
  br label %"$have_gas_677"

"$have_gas_677":                                  ; preds = %"$out_of_gas_676", %"$have_gas_666"
  %"$consume_678" = sub i64 %"$gasrem_674", 1
  store i64 %"$consume_678", i64* @_gasrem, align 8
  %"$c32_15" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$c32_679" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %c32, align 8
  %"$c32_fptr_680" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c32_679", 0
  %"$c32_envptr_681" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$c32_679", 1
  %"$add1_682" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %add1, align 8
  %"$c32_call_683" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_fptr_680"(i8* %"$c32_envptr_681", { %Uint32 (i8*, %Uint32)*, i8* } %"$add1_682")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$c32_call_683", { %Uint32 (i8*, %Uint32)*, i8* }* %"$c32_15", align 8
  %"$c32_16" = alloca %Uint32, align 8
  %"$$c32_15_684" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$c32_15", align 8
  %"$$c32_15_fptr_685" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$c32_15_684", 0
  %"$$c32_15_envptr_686" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$c32_15_684", 1
  %"$zero_687" = load %Uint32, %Uint32* %zero, align 4
  %"$$c32_15_call_688" = call %Uint32 %"$$c32_15_fptr_685"(i8* %"$$c32_15_envptr_686", %Uint32 %"$zero_687")
  store %Uint32 %"$$c32_15_call_688", %Uint32* %"$c32_16", align 4
  %"$$c32_16_689" = load %Uint32, %Uint32* %"$c32_16", align 4
  store %Uint32 %"$$c32_16_689", %Uint32* %"$retval_76", align 4
  %"$$retval_76_690" = load %Uint32, %Uint32* %"$retval_76", align 4
  ret %Uint32 %"$$retval_76_690"
}

define internal { i8*, i8* }* @"$fundef_73"(%"$$fundef_73_env_118"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_73_env_c0_567" = getelementptr inbounds %"$$fundef_73_env_118", %"$$fundef_73_env_118"* %0, i32 0, i32 0
  %"$c0_envload_568" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_73_env_c0_567", align 8
  %c0 = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$c0_envload_568", { i8*, i8* }** %c0, align 8
  %"$$fundef_73_env_cadd_569" = getelementptr inbounds %"$$fundef_73_env_118", %"$$fundef_73_env_118"* %0, i32 0, i32 1
  %"$cadd_envload_570" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_73_env_cadd_569", align 8
  %cadd = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_envload_570", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$$fundef_73_env_m_571" = getelementptr inbounds %"$$fundef_73_env_118", %"$$fundef_73_env_118"* %0, i32 0, i32 2
  %"$m_envload_572" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_73_env_m_571", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_572", { i8*, i8* }** %m, align 8
  %"$retval_74" = alloca { i8*, i8* }*, align 8
  %"$gasrem_573" = load i64, i64* @_gasrem, align 8
  %"$gascmp_574" = icmp ugt i64 1, %"$gasrem_573"
  br i1 %"$gascmp_574", label %"$out_of_gas_575", label %"$have_gas_576"

"$out_of_gas_575":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_576"

"$have_gas_576":                                  ; preds = %"$out_of_gas_575", %entry
  %"$consume_577" = sub i64 %"$gasrem_573", 1
  store i64 %"$consume_577", i64* @_gasrem, align 8
  %cadd_m = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_578" = load i64, i64* @_gasrem, align 8
  %"$gascmp_579" = icmp ugt i64 1, %"$gasrem_578"
  br i1 %"$gascmp_579", label %"$out_of_gas_580", label %"$have_gas_581"

"$out_of_gas_580":                                ; preds = %"$have_gas_576"
  call void @_out_of_gas()
  br label %"$have_gas_581"

"$have_gas_581":                                  ; preds = %"$out_of_gas_580", %"$have_gas_576"
  %"$consume_582" = sub i64 %"$gasrem_578", 1
  store i64 %"$consume_582", i64* @_gasrem, align 8
  %"$cadd_12" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cadd_583" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$cadd_fptr_584" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_583", 0
  %"$cadd_envptr_585" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_583", 1
  %"$m_586" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  %"$cadd_call_587" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_fptr_584"(i8* %"$cadd_envptr_585", { i8*, i8* }* %"$m_586")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_call_587", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_12", align 8
  %"$$cadd_12_588" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_12", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_12_588", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %cadd_m, align 8
  %"$gasrem_589" = load i64, i64* @_gasrem, align 8
  %"$gascmp_590" = icmp ugt i64 1, %"$gasrem_589"
  br i1 %"$gascmp_590", label %"$out_of_gas_591", label %"$have_gas_592"

"$out_of_gas_591":                                ; preds = %"$have_gas_581"
  call void @_out_of_gas()
  br label %"$have_gas_592"

"$have_gas_592":                                  ; preds = %"$out_of_gas_591", %"$have_gas_581"
  %"$consume_593" = sub i64 %"$gasrem_589", 1
  store i64 %"$consume_593", i64* @_gasrem, align 8
  %nI = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_594" = load i64, i64* @_gasrem, align 8
  %"$gascmp_595" = icmp ugt i64 1, %"$gasrem_594"
  br i1 %"$gascmp_595", label %"$out_of_gas_596", label %"$have_gas_597"

"$out_of_gas_596":                                ; preds = %"$have_gas_592"
  call void @_out_of_gas()
  br label %"$have_gas_597"

"$have_gas_597":                                  ; preds = %"$out_of_gas_596", %"$have_gas_592"
  %"$consume_598" = sub i64 %"$gasrem_594", 1
  store i64 %"$consume_598", i64* @_gasrem, align 8
  %"$n_599" = getelementptr { i8*, i8* }, { i8*, i8* }* %1, i32 1
  %"$n_600" = bitcast { i8*, i8* }* %"$n_599" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$n_601" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$n_600", align 8
  %"$n_fptr_602" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_601", 0
  %"$n_envptr_603" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_601", 1
  %"$n_call_604" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_fptr_602"(i8* %"$n_envptr_603")
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_call_604", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nI, align 8
  %"$gasrem_605" = load i64, i64* @_gasrem, align 8
  %"$gascmp_606" = icmp ugt i64 1, %"$gasrem_605"
  br i1 %"$gascmp_606", label %"$out_of_gas_607", label %"$have_gas_608"

"$out_of_gas_607":                                ; preds = %"$have_gas_597"
  call void @_out_of_gas()
  br label %"$have_gas_608"

"$have_gas_608":                                  ; preds = %"$out_of_gas_607", %"$have_gas_597"
  %"$consume_609" = sub i64 %"$gasrem_605", 1
  store i64 %"$consume_609", i64* @_gasrem, align 8
  %"$nI_13" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$nI_610" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nI, align 8
  %"$nI_fptr_611" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nI_610", 0
  %"$nI_envptr_612" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nI_610", 1
  %"$cadd_m_613" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %cadd_m, align 8
  %"$nI_call_614" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nI_fptr_611"(i8* %"$nI_envptr_612", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_m_613")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nI_call_614", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nI_13", align 8
  %"$nI_14" = alloca { i8*, i8* }*, align 8
  %"$$nI_13_615" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nI_13", align 8
  %"$$nI_13_fptr_616" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nI_13_615", 0
  %"$$nI_13_envptr_617" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nI_13_615", 1
  %"$c0_618" = load { i8*, i8* }*, { i8*, i8* }** %c0, align 8
  %"$$nI_13_call_619" = call { i8*, i8* }* %"$$nI_13_fptr_616"(i8* %"$$nI_13_envptr_617", { i8*, i8* }* %"$c0_618")
  store { i8*, i8* }* %"$$nI_13_call_619", { i8*, i8* }** %"$nI_14", align 8
  %"$$nI_14_620" = load { i8*, i8* }*, { i8*, i8* }** %"$nI_14", align 8
  store { i8*, i8* }* %"$$nI_14_620", { i8*, i8* }** %"$retval_74", align 8
  %"$$retval_74_621" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_74", align 8
  ret { i8*, i8* }* %"$$retval_74_621"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_71"(%"$$fundef_71_env_119"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_71_env_c0_548" = getelementptr inbounds %"$$fundef_71_env_119", %"$$fundef_71_env_119"* %0, i32 0, i32 0
  %"$c0_envload_549" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_71_env_c0_548", align 8
  %c0 = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$c0_envload_549", { i8*, i8* }** %c0, align 8
  %"$$fundef_71_env_cadd_550" = getelementptr inbounds %"$$fundef_71_env_119", %"$$fundef_71_env_119"* %0, i32 0, i32 1
  %"$cadd_envload_551" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_71_env_cadd_550", align 8
  %cadd = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_envload_551", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$retval_72" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_553" = icmp ugt i64 1, %"$gasrem_552"
  br i1 %"$gascmp_553", label %"$out_of_gas_554", label %"$have_gas_555"

"$out_of_gas_554":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_555"

"$have_gas_555":                                  ; preds = %"$out_of_gas_554", %entry
  %"$consume_556" = sub i64 %"$gasrem_552", 1
  store i64 %"$consume_556", i64* @_gasrem, align 8
  %"$$fundef_73_envp_557_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_73_envp_557_salloc" = call i8* @_salloc(i8* %"$$fundef_73_envp_557_load", i64 32)
  %"$$fundef_73_envp_557" = bitcast i8* %"$$fundef_73_envp_557_salloc" to %"$$fundef_73_env_118"*
  %"$$fundef_73_env_voidp_559" = bitcast %"$$fundef_73_env_118"* %"$$fundef_73_envp_557" to i8*
  %"$$fundef_73_cloval_560" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_73_env_118"*, { i8*, i8* }*)* @"$fundef_73" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_73_env_voidp_559", 1
  %"$$fundef_73_env_c0_561" = getelementptr inbounds %"$$fundef_73_env_118", %"$$fundef_73_env_118"* %"$$fundef_73_envp_557", i32 0, i32 0
  %"$c0_562" = load { i8*, i8* }*, { i8*, i8* }** %c0, align 8
  store { i8*, i8* }* %"$c0_562", { i8*, i8* }** %"$$fundef_73_env_c0_561", align 8
  %"$$fundef_73_env_cadd_563" = getelementptr inbounds %"$$fundef_73_env_118", %"$$fundef_73_env_118"* %"$$fundef_73_envp_557", i32 0, i32 1
  %"$cadd_564" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_564", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_73_env_cadd_563", align 8
  %"$$fundef_73_env_m_565" = getelementptr inbounds %"$$fundef_73_env_118", %"$$fundef_73_env_118"* %"$$fundef_73_envp_557", i32 0, i32 2
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_73_env_m_565", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_73_cloval_560", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_72", align 8
  %"$$retval_72_566" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_72", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_72_566"
}

define internal { i8*, i8* }* @"$fundef_69"(%"$$fundef_69_env_120"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_69_env_m_471" = getelementptr inbounds %"$$fundef_69_env_120", %"$$fundef_69_env_120"* %0, i32 0, i32 0
  %"$m_envload_472" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_69_env_m_471", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_472", { i8*, i8* }** %m, align 8
  %"$$fundef_69_env_n_473" = getelementptr inbounds %"$$fundef_69_env_120", %"$$fundef_69_env_120"* %0, i32 0, i32 1
  %"$n_envload_474" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_69_env_n_473", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_474", { i8*, i8* }** %n, align 8
  %"$$fundef_69_env_s_475" = getelementptr inbounds %"$$fundef_69_env_120", %"$$fundef_69_env_120"* %0, i32 0, i32 2
  %"$s_envload_476" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_69_env_s_475", align 8
  %s = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_envload_476", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$retval_70" = alloca { i8*, i8* }*, align 8
  %"$gasrem_477" = load i64, i64* @_gasrem, align 8
  %"$gascmp_478" = icmp ugt i64 1, %"$gasrem_477"
  br i1 %"$gascmp_478", label %"$out_of_gas_479", label %"$have_gas_480"

"$out_of_gas_479":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_480"

"$have_gas_480":                                  ; preds = %"$out_of_gas_479", %entry
  %"$consume_481" = sub i64 %"$gasrem_477", 1
  store i64 %"$consume_481", i64* @_gasrem, align 8
  %mX = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_482" = load i64, i64* @_gasrem, align 8
  %"$gascmp_483" = icmp ugt i64 1, %"$gasrem_482"
  br i1 %"$gascmp_483", label %"$out_of_gas_484", label %"$have_gas_485"

"$out_of_gas_484":                                ; preds = %"$have_gas_480"
  call void @_out_of_gas()
  br label %"$have_gas_485"

"$have_gas_485":                                  ; preds = %"$out_of_gas_484", %"$have_gas_480"
  %"$consume_486" = sub i64 %"$gasrem_482", 1
  store i64 %"$consume_486", i64* @_gasrem, align 8
  %"$m_487" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  %"$m_488" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$m_487", i32 1
  %"$m_489" = bitcast { i8*, i8* }* %"$m_488" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$m_490" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$m_489", align 8
  %"$m_fptr_491" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$m_490", 0
  %"$m_envptr_492" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$m_490", 1
  %"$m_call_493" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$m_fptr_491"(i8* %"$m_envptr_492")
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$m_call_493", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %mX, align 8
  %"$gasrem_494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_495" = icmp ugt i64 1, %"$gasrem_494"
  br i1 %"$gascmp_495", label %"$out_of_gas_496", label %"$have_gas_497"

"$out_of_gas_496":                                ; preds = %"$have_gas_485"
  call void @_out_of_gas()
  br label %"$have_gas_497"

"$have_gas_497":                                  ; preds = %"$out_of_gas_496", %"$have_gas_485"
  %"$consume_498" = sub i64 %"$gasrem_494", 1
  store i64 %"$consume_498", i64* @_gasrem, align 8
  %nX = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_500" = icmp ugt i64 1, %"$gasrem_499"
  br i1 %"$gascmp_500", label %"$out_of_gas_501", label %"$have_gas_502"

"$out_of_gas_501":                                ; preds = %"$have_gas_497"
  call void @_out_of_gas()
  br label %"$have_gas_502"

"$have_gas_502":                                  ; preds = %"$out_of_gas_501", %"$have_gas_497"
  %"$consume_503" = sub i64 %"$gasrem_499", 1
  store i64 %"$consume_503", i64* @_gasrem, align 8
  %"$n_504" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  %"$n_505" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$n_504", i32 1
  %"$n_506" = bitcast { i8*, i8* }* %"$n_505" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$n_507" = load { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$n_506", align 8
  %"$n_fptr_508" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_507", 0
  %"$n_envptr_509" = extractvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$n_507", 1
  %"$n_call_510" = call { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_fptr_508"(i8* %"$n_envptr_509")
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$n_call_510", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nX, align 8
  %"$gasrem_511" = load i64, i64* @_gasrem, align 8
  %"$gascmp_512" = icmp ugt i64 1, %"$gasrem_511"
  br i1 %"$gascmp_512", label %"$out_of_gas_513", label %"$have_gas_514"

"$out_of_gas_513":                                ; preds = %"$have_gas_502"
  call void @_out_of_gas()
  br label %"$have_gas_514"

"$have_gas_514":                                  ; preds = %"$out_of_gas_513", %"$have_gas_502"
  %"$consume_515" = sub i64 %"$gasrem_511", 1
  store i64 %"$consume_515", i64* @_gasrem, align 8
  %nXsz = alloca { i8*, i8* }*, align 8
  %"$gasrem_516" = load i64, i64* @_gasrem, align 8
  %"$gascmp_517" = icmp ugt i64 1, %"$gasrem_516"
  br i1 %"$gascmp_517", label %"$out_of_gas_518", label %"$have_gas_519"

"$out_of_gas_518":                                ; preds = %"$have_gas_514"
  call void @_out_of_gas()
  br label %"$have_gas_519"

"$have_gas_519":                                  ; preds = %"$out_of_gas_518", %"$have_gas_514"
  %"$consume_520" = sub i64 %"$gasrem_516", 1
  store i64 %"$consume_520", i64* @_gasrem, align 8
  %"$nX_8" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$nX_521" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %nX, align 8
  %"$nX_fptr_522" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nX_521", 0
  %"$nX_envptr_523" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$nX_521", 1
  %"$s_524" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$nX_call_525" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nX_fptr_522"(i8* %"$nX_envptr_523", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_524")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$nX_call_525", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nX_8", align 8
  %"$nX_9" = alloca { i8*, i8* }*, align 8
  %"$$nX_8_526" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$nX_8", align 8
  %"$$nX_8_fptr_527" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nX_8_526", 0
  %"$$nX_8_envptr_528" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$nX_8_526", 1
  %"$$nX_8_call_529" = call { i8*, i8* }* %"$$nX_8_fptr_527"(i8* %"$$nX_8_envptr_528", { i8*, i8* }* %1)
  store { i8*, i8* }* %"$$nX_8_call_529", { i8*, i8* }** %"$nX_9", align 8
  %"$$nX_9_530" = load { i8*, i8* }*, { i8*, i8* }** %"$nX_9", align 8
  store { i8*, i8* }* %"$$nX_9_530", { i8*, i8* }** %nXsz, align 8
  %"$gasrem_531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_532" = icmp ugt i64 1, %"$gasrem_531"
  br i1 %"$gascmp_532", label %"$out_of_gas_533", label %"$have_gas_534"

"$out_of_gas_533":                                ; preds = %"$have_gas_519"
  call void @_out_of_gas()
  br label %"$have_gas_534"

"$have_gas_534":                                  ; preds = %"$out_of_gas_533", %"$have_gas_519"
  %"$consume_535" = sub i64 %"$gasrem_531", 1
  store i64 %"$consume_535", i64* @_gasrem, align 8
  %"$mX_10" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$mX_536" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %mX, align 8
  %"$mX_fptr_537" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$mX_536", 0
  %"$mX_envptr_538" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$mX_536", 1
  %"$s_539" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$mX_call_540" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$mX_fptr_537"(i8* %"$mX_envptr_538", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_539")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$mX_call_540", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$mX_10", align 8
  %"$mX_11" = alloca { i8*, i8* }*, align 8
  %"$$mX_10_541" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$mX_10", align 8
  %"$$mX_10_fptr_542" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$mX_10_541", 0
  %"$$mX_10_envptr_543" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$mX_10_541", 1
  %"$nXsz_544" = load { i8*, i8* }*, { i8*, i8* }** %nXsz, align 8
  %"$$mX_10_call_545" = call { i8*, i8* }* %"$$mX_10_fptr_542"(i8* %"$$mX_10_envptr_543", { i8*, i8* }* %"$nXsz_544")
  store { i8*, i8* }* %"$$mX_10_call_545", { i8*, i8* }** %"$mX_11", align 8
  %"$$mX_11_546" = load { i8*, i8* }*, { i8*, i8* }** %"$mX_11", align 8
  store { i8*, i8* }* %"$$mX_11_546", { i8*, i8* }** %"$retval_70", align 8
  %"$$retval_70_547" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_70", align 8
  ret { i8*, i8* }* %"$$retval_70_547"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_67"(%"$$fundef_67_env_121"* %0, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1) {
entry:
  %"$$fundef_67_env_m_452" = getelementptr inbounds %"$$fundef_67_env_121", %"$$fundef_67_env_121"* %0, i32 0, i32 0
  %"$m_envload_453" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_67_env_m_452", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_453", { i8*, i8* }** %m, align 8
  %"$$fundef_67_env_n_454" = getelementptr inbounds %"$$fundef_67_env_121", %"$$fundef_67_env_121"* %0, i32 0, i32 1
  %"$n_envload_455" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_67_env_n_454", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_455", { i8*, i8* }** %n, align 8
  %"$retval_68" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_456" = load i64, i64* @_gasrem, align 8
  %"$gascmp_457" = icmp ugt i64 1, %"$gasrem_456"
  br i1 %"$gascmp_457", label %"$out_of_gas_458", label %"$have_gas_459"

"$out_of_gas_458":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_459"

"$have_gas_459":                                  ; preds = %"$out_of_gas_458", %entry
  %"$consume_460" = sub i64 %"$gasrem_456", 1
  store i64 %"$consume_460", i64* @_gasrem, align 8
  %"$$fundef_69_envp_461_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_69_envp_461_salloc" = call i8* @_salloc(i8* %"$$fundef_69_envp_461_load", i64 32)
  %"$$fundef_69_envp_461" = bitcast i8* %"$$fundef_69_envp_461_salloc" to %"$$fundef_69_env_120"*
  %"$$fundef_69_env_voidp_463" = bitcast %"$$fundef_69_env_120"* %"$$fundef_69_envp_461" to i8*
  %"$$fundef_69_cloval_464" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_69_env_120"*, { i8*, i8* }*)* @"$fundef_69" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_69_env_voidp_463", 1
  %"$$fundef_69_env_m_465" = getelementptr inbounds %"$$fundef_69_env_120", %"$$fundef_69_env_120"* %"$$fundef_69_envp_461", i32 0, i32 0
  %"$m_466" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  store { i8*, i8* }* %"$m_466", { i8*, i8* }** %"$$fundef_69_env_m_465", align 8
  %"$$fundef_69_env_n_467" = getelementptr inbounds %"$$fundef_69_env_120", %"$$fundef_69_env_120"* %"$$fundef_69_envp_461", i32 0, i32 1
  %"$n_468" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  store { i8*, i8* }* %"$n_468", { i8*, i8* }** %"$$fundef_69_env_n_467", align 8
  %"$$fundef_69_env_s_469" = getelementptr inbounds %"$$fundef_69_env_120", %"$$fundef_69_env_120"* %"$$fundef_69_envp_461", i32 0, i32 2
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_69_env_s_469", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_69_cloval_464", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_68", align 8
  %"$$retval_68_470" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_68", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_68_470"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } @"$fundef_65"(%"$$fundef_65_env_122"* %0) {
entry:
  %"$$fundef_65_env_m_434" = getelementptr inbounds %"$$fundef_65_env_122", %"$$fundef_65_env_122"* %0, i32 0, i32 0
  %"$m_envload_435" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_65_env_m_434", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_435", { i8*, i8* }** %m, align 8
  %"$$fundef_65_env_n_436" = getelementptr inbounds %"$$fundef_65_env_122", %"$$fundef_65_env_122"* %0, i32 0, i32 1
  %"$n_envload_437" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_65_env_n_436", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_437", { i8*, i8* }** %n, align 8
  %"$retval_66" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_439" = icmp ugt i64 1, %"$gasrem_438"
  br i1 %"$gascmp_439", label %"$out_of_gas_440", label %"$have_gas_441"

"$out_of_gas_440":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_441"

"$have_gas_441":                                  ; preds = %"$out_of_gas_440", %entry
  %"$consume_442" = sub i64 %"$gasrem_438", 1
  store i64 %"$consume_442", i64* @_gasrem, align 8
  %"$$fundef_67_envp_443_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_67_envp_443_salloc" = call i8* @_salloc(i8* %"$$fundef_67_envp_443_load", i64 16)
  %"$$fundef_67_envp_443" = bitcast i8* %"$$fundef_67_envp_443_salloc" to %"$$fundef_67_env_121"*
  %"$$fundef_67_env_voidp_445" = bitcast %"$$fundef_67_env_121"* %"$$fundef_67_envp_443" to i8*
  %"$$fundef_67_cloval_446" = insertvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_67_env_121"*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* @"$fundef_67" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*), i8* undef }, i8* %"$$fundef_67_env_voidp_445", 1
  %"$$fundef_67_env_m_447" = getelementptr inbounds %"$$fundef_67_env_121", %"$$fundef_67_env_121"* %"$$fundef_67_envp_443", i32 0, i32 0
  %"$m_448" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  store { i8*, i8* }* %"$m_448", { i8*, i8* }** %"$$fundef_67_env_m_447", align 8
  %"$$fundef_67_env_n_449" = getelementptr inbounds %"$$fundef_67_env_121", %"$$fundef_67_env_121"* %"$$fundef_67_envp_443", i32 0, i32 1
  %"$n_450" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  store { i8*, i8* }* %"$n_450", { i8*, i8* }** %"$$fundef_67_env_n_449", align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$fundef_67_cloval_446", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_66", align 8
  %"$$retval_66_451" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_66", align 8
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$retval_66_451"
}

define internal %Uint32 @"$fundef_63"(%"$$fundef_63_env_123"* %0, %Uint32 %1) {
entry:
  %"$$fundef_63_env_m_357" = getelementptr inbounds %"$$fundef_63_env_123", %"$$fundef_63_env_123"* %0, i32 0, i32 0
  %"$m_envload_358" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_63_env_m_357", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_358", { i8*, i8* }** %m, align 8
  %"$$fundef_63_env_n_359" = getelementptr inbounds %"$$fundef_63_env_123", %"$$fundef_63_env_123"* %0, i32 0, i32 1
  %"$n_envload_360" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_63_env_n_359", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_360", { i8*, i8* }** %n, align 8
  %"$$fundef_63_env_s_361" = getelementptr inbounds %"$$fundef_63_env_123", %"$$fundef_63_env_123"* %0, i32 0, i32 2
  %"$s_envload_362" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_63_env_s_361", align 8
  %s = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_envload_362", { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$retval_64" = alloca %Uint32, align 8
  %"$gasrem_363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_364" = icmp ugt i64 1, %"$gasrem_363"
  br i1 %"$gascmp_364", label %"$out_of_gas_365", label %"$have_gas_366"

"$out_of_gas_365":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_366"

"$have_gas_366":                                  ; preds = %"$out_of_gas_365", %entry
  %"$consume_367" = sub i64 %"$gasrem_363", 1
  store i64 %"$consume_367", i64* @_gasrem, align 8
  %mX = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_369" = icmp ugt i64 1, %"$gasrem_368"
  br i1 %"$gascmp_369", label %"$out_of_gas_370", label %"$have_gas_371"

"$out_of_gas_370":                                ; preds = %"$have_gas_366"
  call void @_out_of_gas()
  br label %"$have_gas_371"

"$have_gas_371":                                  ; preds = %"$out_of_gas_370", %"$have_gas_366"
  %"$consume_372" = sub i64 %"$gasrem_368", 1
  store i64 %"$consume_372", i64* @_gasrem, align 8
  %"$m_373" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  %"$m_374" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$m_373", i32 0
  %"$m_375" = bitcast { i8*, i8* }* %"$m_374" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$m_376" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$m_375", align 8
  %"$m_fptr_377" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$m_376", 0
  %"$m_envptr_378" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$m_376", 1
  %"$m_call_379" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_fptr_377"(i8* %"$m_envptr_378")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$m_call_379", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %mX, align 8
  %"$gasrem_380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_381" = icmp ugt i64 1, %"$gasrem_380"
  br i1 %"$gascmp_381", label %"$out_of_gas_382", label %"$have_gas_383"

"$out_of_gas_382":                                ; preds = %"$have_gas_371"
  call void @_out_of_gas()
  br label %"$have_gas_383"

"$have_gas_383":                                  ; preds = %"$out_of_gas_382", %"$have_gas_371"
  %"$consume_384" = sub i64 %"$gasrem_380", 1
  store i64 %"$consume_384", i64* @_gasrem, align 8
  %nX = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_386" = icmp ugt i64 1, %"$gasrem_385"
  br i1 %"$gascmp_386", label %"$out_of_gas_387", label %"$have_gas_388"

"$out_of_gas_387":                                ; preds = %"$have_gas_383"
  call void @_out_of_gas()
  br label %"$have_gas_388"

"$have_gas_388":                                  ; preds = %"$out_of_gas_387", %"$have_gas_383"
  %"$consume_389" = sub i64 %"$gasrem_385", 1
  store i64 %"$consume_389", i64* @_gasrem, align 8
  %"$n_390" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  %"$n_391" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$n_390", i32 0
  %"$n_392" = bitcast { i8*, i8* }* %"$n_391" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  %"$n_393" = load { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$n_392", align 8
  %"$n_fptr_394" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$n_393", 0
  %"$n_envptr_395" = extractvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$n_393", 1
  %"$n_call_396" = call { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_fptr_394"(i8* %"$n_envptr_395")
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$n_call_396", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %nX, align 8
  %"$gasrem_397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_398" = icmp ugt i64 1, %"$gasrem_397"
  br i1 %"$gascmp_398", label %"$out_of_gas_399", label %"$have_gas_400"

"$out_of_gas_399":                                ; preds = %"$have_gas_388"
  call void @_out_of_gas()
  br label %"$have_gas_400"

"$have_gas_400":                                  ; preds = %"$out_of_gas_399", %"$have_gas_388"
  %"$consume_401" = sub i64 %"$gasrem_397", 1
  store i64 %"$consume_401", i64* @_gasrem, align 8
  %nXsz = alloca %Uint32, align 8
  %"$gasrem_402" = load i64, i64* @_gasrem, align 8
  %"$gascmp_403" = icmp ugt i64 1, %"$gasrem_402"
  br i1 %"$gascmp_403", label %"$out_of_gas_404", label %"$have_gas_405"

"$out_of_gas_404":                                ; preds = %"$have_gas_400"
  call void @_out_of_gas()
  br label %"$have_gas_405"

"$have_gas_405":                                  ; preds = %"$out_of_gas_404", %"$have_gas_400"
  %"$consume_406" = sub i64 %"$gasrem_402", 1
  store i64 %"$consume_406", i64* @_gasrem, align 8
  %"$nX_8" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$nX_407" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %nX, align 8
  %"$nX_fptr_408" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$nX_407", 0
  %"$nX_envptr_409" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$nX_407", 1
  %"$s_410" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$nX_call_411" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_fptr_408"(i8* %"$nX_envptr_409", { %Uint32 (i8*, %Uint32)*, i8* } %"$s_410")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$nX_call_411", { %Uint32 (i8*, %Uint32)*, i8* }* %"$nX_8", align 8
  %"$nX_9" = alloca %Uint32, align 8
  %"$$nX_8_412" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$nX_8", align 8
  %"$$nX_8_fptr_413" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$nX_8_412", 0
  %"$$nX_8_envptr_414" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$nX_8_412", 1
  %"$$nX_8_call_415" = call %Uint32 %"$$nX_8_fptr_413"(i8* %"$$nX_8_envptr_414", %Uint32 %1)
  store %Uint32 %"$$nX_8_call_415", %Uint32* %"$nX_9", align 4
  %"$$nX_9_416" = load %Uint32, %Uint32* %"$nX_9", align 4
  store %Uint32 %"$$nX_9_416", %Uint32* %nXsz, align 4
  %"$gasrem_417" = load i64, i64* @_gasrem, align 8
  %"$gascmp_418" = icmp ugt i64 1, %"$gasrem_417"
  br i1 %"$gascmp_418", label %"$out_of_gas_419", label %"$have_gas_420"

"$out_of_gas_419":                                ; preds = %"$have_gas_405"
  call void @_out_of_gas()
  br label %"$have_gas_420"

"$have_gas_420":                                  ; preds = %"$out_of_gas_419", %"$have_gas_405"
  %"$consume_421" = sub i64 %"$gasrem_417", 1
  store i64 %"$consume_421", i64* @_gasrem, align 8
  %"$mX_10" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$mX_422" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %mX, align 8
  %"$mX_fptr_423" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$mX_422", 0
  %"$mX_envptr_424" = extractvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$mX_422", 1
  %"$s_425" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$mX_call_426" = call { %Uint32 (i8*, %Uint32)*, i8* } %"$mX_fptr_423"(i8* %"$mX_envptr_424", { %Uint32 (i8*, %Uint32)*, i8* } %"$s_425")
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$mX_call_426", { %Uint32 (i8*, %Uint32)*, i8* }* %"$mX_10", align 8
  %"$mX_11" = alloca %Uint32, align 8
  %"$$mX_10_427" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$mX_10", align 8
  %"$$mX_10_fptr_428" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$mX_10_427", 0
  %"$$mX_10_envptr_429" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$$mX_10_427", 1
  %"$nXsz_430" = load %Uint32, %Uint32* %nXsz, align 4
  %"$$mX_10_call_431" = call %Uint32 %"$$mX_10_fptr_428"(i8* %"$$mX_10_envptr_429", %Uint32 %"$nXsz_430")
  store %Uint32 %"$$mX_10_call_431", %Uint32* %"$mX_11", align 4
  %"$$mX_11_432" = load %Uint32, %Uint32* %"$mX_11", align 4
  store %Uint32 %"$$mX_11_432", %Uint32* %"$retval_64", align 4
  %"$$retval_64_433" = load %Uint32, %Uint32* %"$retval_64", align 4
  ret %Uint32 %"$$retval_64_433"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_61"(%"$$fundef_61_env_124"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$$fundef_61_env_m_338" = getelementptr inbounds %"$$fundef_61_env_124", %"$$fundef_61_env_124"* %0, i32 0, i32 0
  %"$m_envload_339" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_61_env_m_338", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_339", { i8*, i8* }** %m, align 8
  %"$$fundef_61_env_n_340" = getelementptr inbounds %"$$fundef_61_env_124", %"$$fundef_61_env_124"* %0, i32 0, i32 1
  %"$n_envload_341" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_61_env_n_340", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_341", { i8*, i8* }** %n, align 8
  %"$retval_62" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_342" = load i64, i64* @_gasrem, align 8
  %"$gascmp_343" = icmp ugt i64 1, %"$gasrem_342"
  br i1 %"$gascmp_343", label %"$out_of_gas_344", label %"$have_gas_345"

"$out_of_gas_344":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_345"

"$have_gas_345":                                  ; preds = %"$out_of_gas_344", %entry
  %"$consume_346" = sub i64 %"$gasrem_342", 1
  store i64 %"$consume_346", i64* @_gasrem, align 8
  %"$$fundef_63_envp_347_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_63_envp_347_salloc" = call i8* @_salloc(i8* %"$$fundef_63_envp_347_load", i64 32)
  %"$$fundef_63_envp_347" = bitcast i8* %"$$fundef_63_envp_347_salloc" to %"$$fundef_63_env_123"*
  %"$$fundef_63_env_voidp_349" = bitcast %"$$fundef_63_env_123"* %"$$fundef_63_envp_347" to i8*
  %"$$fundef_63_cloval_350" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_63_env_123"*, %Uint32)* @"$fundef_63" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_63_env_voidp_349", 1
  %"$$fundef_63_env_m_351" = getelementptr inbounds %"$$fundef_63_env_123", %"$$fundef_63_env_123"* %"$$fundef_63_envp_347", i32 0, i32 0
  %"$m_352" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  store { i8*, i8* }* %"$m_352", { i8*, i8* }** %"$$fundef_63_env_m_351", align 8
  %"$$fundef_63_env_n_353" = getelementptr inbounds %"$$fundef_63_env_123", %"$$fundef_63_env_123"* %"$$fundef_63_envp_347", i32 0, i32 1
  %"$n_354" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  store { i8*, i8* }* %"$n_354", { i8*, i8* }** %"$$fundef_63_env_n_353", align 8
  %"$$fundef_63_env_s_355" = getelementptr inbounds %"$$fundef_63_env_123", %"$$fundef_63_env_123"* %"$$fundef_63_envp_347", i32 0, i32 2
  store { %Uint32 (i8*, %Uint32)*, i8* } %1, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_63_env_s_355", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_63_cloval_350", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_62", align 8
  %"$$retval_62_356" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_62", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_62_356"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_59"(%"$$fundef_59_env_125"* %0) {
entry:
  %"$$fundef_59_env_m_320" = getelementptr inbounds %"$$fundef_59_env_125", %"$$fundef_59_env_125"* %0, i32 0, i32 0
  %"$m_envload_321" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_59_env_m_320", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_321", { i8*, i8* }** %m, align 8
  %"$$fundef_59_env_n_322" = getelementptr inbounds %"$$fundef_59_env_125", %"$$fundef_59_env_125"* %0, i32 0, i32 1
  %"$n_envload_323" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_59_env_n_322", align 8
  %n = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$n_envload_323", { i8*, i8* }** %n, align 8
  %"$retval_60" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_324" = load i64, i64* @_gasrem, align 8
  %"$gascmp_325" = icmp ugt i64 1, %"$gasrem_324"
  br i1 %"$gascmp_325", label %"$out_of_gas_326", label %"$have_gas_327"

"$out_of_gas_326":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_327"

"$have_gas_327":                                  ; preds = %"$out_of_gas_326", %entry
  %"$consume_328" = sub i64 %"$gasrem_324", 1
  store i64 %"$consume_328", i64* @_gasrem, align 8
  %"$$fundef_61_envp_329_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_61_envp_329_salloc" = call i8* @_salloc(i8* %"$$fundef_61_envp_329_load", i64 16)
  %"$$fundef_61_envp_329" = bitcast i8* %"$$fundef_61_envp_329_salloc" to %"$$fundef_61_env_124"*
  %"$$fundef_61_env_voidp_331" = bitcast %"$$fundef_61_env_124"* %"$$fundef_61_envp_329" to i8*
  %"$$fundef_61_cloval_332" = insertvalue { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_61_env_124"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_61" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* undef }, i8* %"$$fundef_61_env_voidp_331", 1
  %"$$fundef_61_env_m_333" = getelementptr inbounds %"$$fundef_61_env_124", %"$$fundef_61_env_124"* %"$$fundef_61_envp_329", i32 0, i32 0
  %"$m_334" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  store { i8*, i8* }* %"$m_334", { i8*, i8* }** %"$$fundef_61_env_m_333", align 8
  %"$$fundef_61_env_n_335" = getelementptr inbounds %"$$fundef_61_env_124", %"$$fundef_61_env_124"* %"$$fundef_61_envp_329", i32 0, i32 1
  %"$n_336" = load { i8*, i8* }*, { i8*, i8* }** %n, align 8
  store { i8*, i8* }* %"$n_336", { i8*, i8* }** %"$$fundef_61_env_n_335", align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$fundef_61_cloval_332", { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_60", align 8
  %"$$retval_60_337" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_60", align 8
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_60_337"
}

define internal { i8*, i8* }* @"$fundef_57"(%"$$fundef_57_env_126"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_57_env_m_297" = getelementptr inbounds %"$$fundef_57_env_126", %"$$fundef_57_env_126"* %0, i32 0, i32 0
  %"$m_envload_298" = load { i8*, i8* }*, { i8*, i8* }** %"$$fundef_57_env_m_297", align 8
  %m = alloca { i8*, i8* }*, align 8
  store { i8*, i8* }* %"$m_envload_298", { i8*, i8* }** %m, align 8
  %"$retval_58" = alloca { i8*, i8* }*, align 8
  %"$gasrem_299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_300" = icmp ugt i64 1, %"$gasrem_299"
  br i1 %"$gascmp_300", label %"$out_of_gas_301", label %"$have_gas_302"

"$out_of_gas_301":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_302"

"$have_gas_302":                                  ; preds = %"$out_of_gas_301", %entry
  %"$consume_303" = sub i64 %"$gasrem_299", 1
  store i64 %"$consume_303", i64* @_gasrem, align 8
  %"$$fundef_59_envp_304_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_59_envp_304_salloc" = call i8* @_salloc(i8* %"$$fundef_59_envp_304_load", i64 16)
  %"$$fundef_59_envp_304" = bitcast i8* %"$$fundef_59_envp_304_salloc" to %"$$fundef_59_env_125"*
  %"$$fundef_59_env_voidp_306" = bitcast %"$$fundef_59_env_125"* %"$$fundef_59_envp_304" to i8*
  %"$$fundef_59_cloval_307" = insertvalue { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_59_env_125"*)* @"$fundef_59" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_59_env_voidp_306", 1
  %"$$fundef_59_env_m_308" = getelementptr inbounds %"$$fundef_59_env_125", %"$$fundef_59_env_125"* %"$$fundef_59_envp_304", i32 0, i32 0
  %"$m_309" = load { i8*, i8* }*, { i8*, i8* }** %m, align 8
  store { i8*, i8* }* %"$m_309", { i8*, i8* }** %"$$fundef_59_env_m_308", align 8
  %"$$fundef_59_env_n_310" = getelementptr inbounds %"$$fundef_59_env_125", %"$$fundef_59_env_125"* %"$$fundef_59_envp_304", i32 0, i32 1
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_59_env_n_310", align 8
  %"$$fundef_65_env_voidp_312" = bitcast %"$$fundef_59_env_125"* %"$$fundef_59_envp_304" to i8*
  %"$$fundef_65_cloval_313" = insertvalue { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (%"$$fundef_65_env_122"*)* @"$fundef_65" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*), i8* undef }, i8* %"$$fundef_65_env_voidp_312", 1
  %"$dyndisp_table_314_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_314_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_314_salloc_load", i64 32)
  %"$dyndisp_table_314_salloc" = bitcast i8* %"$dyndisp_table_314_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_314" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_314_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_315" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_314", i32 0
  %"$dyndisp_pcast_316" = bitcast { i8*, i8* }* %"$dyndisp_gep_315" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_59_cloval_307", { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_316", align 8
  %"$dyndisp_gep_317" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_314", i32 1
  %"$dyndisp_pcast_318" = bitcast { i8*, i8* }* %"$dyndisp_gep_317" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } %"$$fundef_65_cloval_313", { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_318", align 8
  store { i8*, i8* }* %"$dyndisp_table_314", { i8*, i8* }** %"$retval_58", align 8
  %"$$retval_58_319" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_58", align 8
  ret { i8*, i8* }* %"$$retval_58_319"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_55"(%"$$fundef_55_env_127"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_56" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_286" = load i64, i64* @_gasrem, align 8
  %"$gascmp_287" = icmp ugt i64 1, %"$gasrem_286"
  br i1 %"$gascmp_287", label %"$out_of_gas_288", label %"$have_gas_289"

"$out_of_gas_288":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_289"

"$have_gas_289":                                  ; preds = %"$out_of_gas_288", %entry
  %"$consume_290" = sub i64 %"$gasrem_286", 1
  store i64 %"$consume_290", i64* @_gasrem, align 8
  %"$$fundef_57_envp_291_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_57_envp_291_salloc" = call i8* @_salloc(i8* %"$$fundef_57_envp_291_load", i64 8)
  %"$$fundef_57_envp_291" = bitcast i8* %"$$fundef_57_envp_291_salloc" to %"$$fundef_57_env_126"*
  %"$$fundef_57_env_voidp_293" = bitcast %"$$fundef_57_env_126"* %"$$fundef_57_envp_291" to i8*
  %"$$fundef_57_cloval_294" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_57_env_126"*, { i8*, i8* }*)* @"$fundef_57" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_57_env_voidp_293", 1
  %"$$fundef_57_env_m_295" = getelementptr inbounds %"$$fundef_57_env_126", %"$$fundef_57_env_126"* %"$$fundef_57_envp_291", i32 0, i32 0
  store { i8*, i8* }* %1, { i8*, i8* }** %"$$fundef_57_env_m_295", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_57_cloval_294", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_56", align 8
  %"$$retval_56_296" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_56", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_56_296"
}

define internal { i8*, i8* }* @"$fundef_53"(%"$$fundef_53_env_128"* %0, { i8*, i8* }* %1) {
entry:
  %"$$fundef_53_env_s_257" = getelementptr inbounds %"$$fundef_53_env_128", %"$$fundef_53_env_128"* %0, i32 0, i32 0
  %"$s_envload_258" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_53_env_s_257", align 8
  %s = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_envload_258", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$retval_54" = alloca { i8*, i8* }*, align 8
  %"$gasrem_259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_260" = icmp ugt i64 1, %"$gasrem_259"
  br i1 %"$gascmp_260", label %"$out_of_gas_261", label %"$have_gas_262"

"$out_of_gas_261":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_262"

"$have_gas_262":                                  ; preds = %"$out_of_gas_261", %entry
  %"$consume_263" = sub i64 %"$gasrem_259", 1
  store i64 %"$consume_263", i64* @_gasrem, align 8
  %sz = alloca { i8*, i8* }*, align 8
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 1, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %"$have_gas_262"
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %"$have_gas_262"
  %"$consume_268" = sub i64 %"$gasrem_264", 1
  store i64 %"$consume_268", i64* @_gasrem, align 8
  %"$s_6" = alloca { i8*, i8* }*, align 8
  %"$s_269" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$s_fptr_270" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_269", 0
  %"$s_envptr_271" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_269", 1
  %"$s_call_272" = call { i8*, i8* }* %"$s_fptr_270"(i8* %"$s_envptr_271", { i8*, i8* }* %1)
  store { i8*, i8* }* %"$s_call_272", { i8*, i8* }** %"$s_6", align 8
  %"$$s_6_273" = load { i8*, i8* }*, { i8*, i8* }** %"$s_6", align 8
  store { i8*, i8* }* %"$$s_6_273", { i8*, i8* }** %sz, align 8
  %"$gasrem_274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_275" = icmp ugt i64 1, %"$gasrem_274"
  br i1 %"$gascmp_275", label %"$out_of_gas_276", label %"$have_gas_277"

"$out_of_gas_276":                                ; preds = %"$have_gas_267"
  call void @_out_of_gas()
  br label %"$have_gas_277"

"$have_gas_277":                                  ; preds = %"$out_of_gas_276", %"$have_gas_267"
  %"$consume_278" = sub i64 %"$gasrem_274", 1
  store i64 %"$consume_278", i64* @_gasrem, align 8
  %"$s_7" = alloca { i8*, i8* }*, align 8
  %"$s_279" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %s, align 8
  %"$s_fptr_280" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_279", 0
  %"$s_envptr_281" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$s_279", 1
  %"$sz_282" = load { i8*, i8* }*, { i8*, i8* }** %sz, align 8
  %"$s_call_283" = call { i8*, i8* }* %"$s_fptr_280"(i8* %"$s_envptr_281", { i8*, i8* }* %"$sz_282")
  store { i8*, i8* }* %"$s_call_283", { i8*, i8* }** %"$s_7", align 8
  %"$$s_7_284" = load { i8*, i8* }*, { i8*, i8* }** %"$s_7", align 8
  store { i8*, i8* }* %"$$s_7_284", { i8*, i8* }** %"$retval_54", align 8
  %"$$retval_54_285" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_54", align 8
  ret { i8*, i8* }* %"$$retval_54_285"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_51"(%"$$fundef_51_env_129"* %0, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1) {
entry:
  %"$retval_52" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_247" = icmp ugt i64 1, %"$gasrem_246"
  br i1 %"$gascmp_247", label %"$out_of_gas_248", label %"$have_gas_249"

"$out_of_gas_248":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_249"

"$have_gas_249":                                  ; preds = %"$out_of_gas_248", %entry
  %"$consume_250" = sub i64 %"$gasrem_246", 1
  store i64 %"$consume_250", i64* @_gasrem, align 8
  %"$$fundef_53_envp_251_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_53_envp_251_salloc" = call i8* @_salloc(i8* %"$$fundef_53_envp_251_load", i64 16)
  %"$$fundef_53_envp_251" = bitcast i8* %"$$fundef_53_envp_251_salloc" to %"$$fundef_53_env_128"*
  %"$$fundef_53_env_voidp_253" = bitcast %"$$fundef_53_env_128"* %"$$fundef_53_envp_251" to i8*
  %"$$fundef_53_cloval_254" = insertvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_53_env_128"*, { i8*, i8* }*)* @"$fundef_53" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_53_env_voidp_253", 1
  %"$$fundef_53_env_s_255" = getelementptr inbounds %"$$fundef_53_env_128", %"$$fundef_53_env_128"* %"$$fundef_53_envp_251", i32 0, i32 0
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_53_env_s_255", align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_53_cloval_254", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_52", align 8
  %"$$retval_52_256" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_52", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_52_256"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } @"$fundef_49"(%"$$fundef_49_env_130"* %0) {
entry:
  %"$retval_50" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_238" = icmp ugt i64 1, %"$gasrem_237"
  br i1 %"$gascmp_238", label %"$out_of_gas_239", label %"$have_gas_240"

"$out_of_gas_239":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_240"

"$have_gas_240":                                  ; preds = %"$out_of_gas_239", %entry
  %"$consume_241" = sub i64 %"$gasrem_237", 1
  store i64 %"$consume_241", i64* @_gasrem, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_51_env_129"*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* @"$fundef_51" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*), i8* null }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_50", align 8
  %"$$retval_50_245" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_50", align 8
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$retval_50_245"
}

define internal %Uint32 @"$fundef_47"(%"$$fundef_47_env_131"* %0, %Uint32 %1) {
entry:
  %"$$fundef_47_env_s_208" = getelementptr inbounds %"$$fundef_47_env_131", %"$$fundef_47_env_131"* %0, i32 0, i32 0
  %"$s_envload_209" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_47_env_s_208", align 8
  %s = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$s_envload_209", { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$retval_48" = alloca %Uint32, align 8
  %"$gasrem_210" = load i64, i64* @_gasrem, align 8
  %"$gascmp_211" = icmp ugt i64 1, %"$gasrem_210"
  br i1 %"$gascmp_211", label %"$out_of_gas_212", label %"$have_gas_213"

"$out_of_gas_212":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_213"

"$have_gas_213":                                  ; preds = %"$out_of_gas_212", %entry
  %"$consume_214" = sub i64 %"$gasrem_210", 1
  store i64 %"$consume_214", i64* @_gasrem, align 8
  %sz = alloca %Uint32, align 8
  %"$gasrem_215" = load i64, i64* @_gasrem, align 8
  %"$gascmp_216" = icmp ugt i64 1, %"$gasrem_215"
  br i1 %"$gascmp_216", label %"$out_of_gas_217", label %"$have_gas_218"

"$out_of_gas_217":                                ; preds = %"$have_gas_213"
  call void @_out_of_gas()
  br label %"$have_gas_218"

"$have_gas_218":                                  ; preds = %"$out_of_gas_217", %"$have_gas_213"
  %"$consume_219" = sub i64 %"$gasrem_215", 1
  store i64 %"$consume_219", i64* @_gasrem, align 8
  %"$s_6" = alloca %Uint32, align 8
  %"$s_220" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$s_fptr_221" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_220", 0
  %"$s_envptr_222" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_220", 1
  %"$s_call_223" = call %Uint32 %"$s_fptr_221"(i8* %"$s_envptr_222", %Uint32 %1)
  store %Uint32 %"$s_call_223", %Uint32* %"$s_6", align 4
  %"$$s_6_224" = load %Uint32, %Uint32* %"$s_6", align 4
  store %Uint32 %"$$s_6_224", %Uint32* %sz, align 4
  %"$gasrem_225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_226" = icmp ugt i64 1, %"$gasrem_225"
  br i1 %"$gascmp_226", label %"$out_of_gas_227", label %"$have_gas_228"

"$out_of_gas_227":                                ; preds = %"$have_gas_218"
  call void @_out_of_gas()
  br label %"$have_gas_228"

"$have_gas_228":                                  ; preds = %"$out_of_gas_227", %"$have_gas_218"
  %"$consume_229" = sub i64 %"$gasrem_225", 1
  store i64 %"$consume_229", i64* @_gasrem, align 8
  %"$s_7" = alloca %Uint32, align 8
  %"$s_230" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %s, align 8
  %"$s_fptr_231" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_230", 0
  %"$s_envptr_232" = extractvalue { %Uint32 (i8*, %Uint32)*, i8* } %"$s_230", 1
  %"$sz_233" = load %Uint32, %Uint32* %sz, align 4
  %"$s_call_234" = call %Uint32 %"$s_fptr_231"(i8* %"$s_envptr_232", %Uint32 %"$sz_233")
  store %Uint32 %"$s_call_234", %Uint32* %"$s_7", align 4
  %"$$s_7_235" = load %Uint32, %Uint32* %"$s_7", align 4
  store %Uint32 %"$$s_7_235", %Uint32* %"$retval_48", align 4
  %"$$retval_48_236" = load %Uint32, %Uint32* %"$retval_48", align 4
  ret %Uint32 %"$$retval_48_236"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_45"(%"$$fundef_45_env_132"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) {
entry:
  %"$retval_46" = alloca { %Uint32 (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_197" = load i64, i64* @_gasrem, align 8
  %"$gascmp_198" = icmp ugt i64 1, %"$gasrem_197"
  br i1 %"$gascmp_198", label %"$out_of_gas_199", label %"$have_gas_200"

"$out_of_gas_199":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_200"

"$have_gas_200":                                  ; preds = %"$out_of_gas_199", %entry
  %"$consume_201" = sub i64 %"$gasrem_197", 1
  store i64 %"$consume_201", i64* @_gasrem, align 8
  %"$$fundef_47_envp_202_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_47_envp_202_salloc" = call i8* @_salloc(i8* %"$$fundef_47_envp_202_load", i64 16)
  %"$$fundef_47_envp_202" = bitcast i8* %"$$fundef_47_envp_202_salloc" to %"$$fundef_47_env_131"*
  %"$$fundef_47_env_voidp_204" = bitcast %"$$fundef_47_env_131"* %"$$fundef_47_envp_202" to i8*
  %"$$fundef_47_cloval_205" = insertvalue { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_47_env_131"*, %Uint32)* @"$fundef_47" to %Uint32 (i8*, %Uint32)*), i8* undef }, i8* %"$$fundef_47_env_voidp_204", 1
  %"$$fundef_47_env_s_206" = getelementptr inbounds %"$$fundef_47_env_131", %"$$fundef_47_env_131"* %"$$fundef_47_envp_202", i32 0, i32 0
  store { %Uint32 (i8*, %Uint32)*, i8* } %1, { %Uint32 (i8*, %Uint32)*, i8* }* %"$$fundef_47_env_s_206", align 8
  store { %Uint32 (i8*, %Uint32)*, i8* } %"$$fundef_47_cloval_205", { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_46", align 8
  %"$$retval_46_207" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_46", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_46_207"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_43"(%"$$fundef_43_env_133"* %0) {
entry:
  %"$retval_44" = alloca { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, align 8
  %"$gasrem_188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_189" = icmp ugt i64 1, %"$gasrem_188"
  br i1 %"$gascmp_189", label %"$out_of_gas_190", label %"$have_gas_191"

"$out_of_gas_190":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_191"

"$have_gas_191":                                  ; preds = %"$out_of_gas_190", %entry
  %"$consume_192" = sub i64 %"$gasrem_188", 1
  store i64 %"$consume_192", i64* @_gasrem, align 8
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_45_env_132"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_45" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_44", align 8
  %"$$retval_44_196" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_44", align 8
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_44_196"
}

define internal { i8*, i8* }* @"$fundef_41"(%"$$fundef_41_env_134"* %0, { i8*, i8* }* %1) {
entry:
  %"$retval_42" = alloca { i8*, i8* }*, align 8
  %"$gasrem_182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_183" = icmp ugt i64 1, %"$gasrem_182"
  br i1 %"$gascmp_183", label %"$out_of_gas_184", label %"$have_gas_185"

"$out_of_gas_184":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_185"

"$have_gas_185":                                  ; preds = %"$out_of_gas_184", %entry
  %"$consume_186" = sub i64 %"$gasrem_182", 1
  store i64 %"$consume_186", i64* @_gasrem, align 8
  store { i8*, i8* }* %1, { i8*, i8* }** %"$retval_42", align 8
  %"$$retval_42_187" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_42", align 8
  ret { i8*, i8* }* %"$$retval_42_187"
}

define internal { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } @"$fundef_39"(%"$$fundef_39_env_135"* %0, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %1) {
entry:
  %"$retval_40" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_174" = icmp ugt i64 1, %"$gasrem_173"
  br i1 %"$gascmp_174", label %"$out_of_gas_175", label %"$have_gas_176"

"$out_of_gas_175":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_176"

"$have_gas_176":                                  ; preds = %"$out_of_gas_175", %entry
  %"$consume_177" = sub i64 %"$gasrem_173", 1
  store i64 %"$consume_177", i64* @_gasrem, align 8
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } { { i8*, i8* }* (i8*, { i8*, i8* }*)* bitcast ({ i8*, i8* }* (%"$$fundef_41_env_134"*, { i8*, i8* }*)* @"$fundef_41" to { i8*, i8* }* (i8*, { i8*, i8* }*)*), i8* null }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_40", align 8
  %"$$retval_40_181" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$retval_40", align 8
  ret { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$retval_40_181"
}

define internal { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } @"$fundef_37"(%"$$fundef_37_env_136"* %0) {
entry:
  %"$retval_38" = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, align 8
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 1, %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %entry
  %"$consume_168" = sub i64 %"$gasrem_164", 1
  store i64 %"$consume_168", i64* @_gasrem, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_39_env_135"*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })* @"$fundef_39" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*), i8* null }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_38", align 8
  %"$$retval_38_172" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* }* %"$retval_38", align 8
  ret { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } %"$$retval_38_172"
}

define internal %Uint32 @"$fundef_35"(%"$$fundef_35_env_137"* %0, %Uint32 %1) {
entry:
  %"$retval_36" = alloca %Uint32, align 8
  %"$gasrem_158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_159" = icmp ugt i64 1, %"$gasrem_158"
  br i1 %"$gascmp_159", label %"$out_of_gas_160", label %"$have_gas_161"

"$out_of_gas_160":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_161"

"$have_gas_161":                                  ; preds = %"$out_of_gas_160", %entry
  %"$consume_162" = sub i64 %"$gasrem_158", 1
  store i64 %"$consume_162", i64* @_gasrem, align 8
  store %Uint32 %1, %Uint32* %"$retval_36", align 4
  %"$$retval_36_163" = load %Uint32, %Uint32* %"$retval_36", align 4
  ret %Uint32 %"$$retval_36_163"
}

define internal { %Uint32 (i8*, %Uint32)*, i8* } @"$fundef_33"(%"$$fundef_33_env_138"* %0, { %Uint32 (i8*, %Uint32)*, i8* } %1) {
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
  store { %Uint32 (i8*, %Uint32)*, i8* } { %Uint32 (i8*, %Uint32)* bitcast (%Uint32 (%"$$fundef_35_env_137"*, %Uint32)* @"$fundef_35" to %Uint32 (i8*, %Uint32)*), i8* null }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_34", align 8
  %"$$retval_34_157" = load { %Uint32 (i8*, %Uint32)*, i8* }, { %Uint32 (i8*, %Uint32)*, i8* }* %"$retval_34", align 8
  ret { %Uint32 (i8*, %Uint32)*, i8* } %"$$retval_34_157"
}

define internal { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } @"$fundef_31"(%"$$fundef_31_env_139"* %0) {
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
  store { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })* bitcast ({ %Uint32 (i8*, %Uint32)*, i8* } (%"$$fundef_33_env_138"*, { %Uint32 (i8*, %Uint32)*, i8* })* @"$fundef_33" to { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*), i8* null }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_32", align 8
  %"$$retval_32_148" = load { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }, { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* }* %"$retval_32", align 8
  ret { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } %"$$retval_32_148"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Uint32 @_add_Uint32(%Uint32, %Uint32)

define void @_init_libs() {
entry:
  %"$gasrem_701" = load i64, i64* @_gasrem, align 8
  %"$gascmp_702" = icmp ugt i64 5, %"$gasrem_701"
  br i1 %"$gascmp_702", label %"$out_of_gas_703", label %"$have_gas_704"

"$out_of_gas_703":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_704"

"$have_gas_704":                                  ; preds = %"$out_of_gas_703", %entry
  %"$consume_705" = sub i64 %"$gasrem_701", 5
  store i64 %"$consume_705", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4
  %"$gasrem_706" = load i64, i64* @_gasrem, align 8
  %"$gascmp_707" = icmp ugt i64 8, %"$gasrem_706"
  br i1 %"$gascmp_707", label %"$out_of_gas_708", label %"$have_gas_709"

"$out_of_gas_708":                                ; preds = %"$have_gas_704"
  call void @_out_of_gas()
  br label %"$have_gas_709"

"$have_gas_709":                                  ; preds = %"$out_of_gas_708", %"$have_gas_704"
  %"$consume_710" = sub i64 %"$gasrem_706", 8
  store i64 %"$consume_710", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4
  %"$gasrem_711" = load i64, i64* @_gasrem, align 8
  %"$gascmp_712" = icmp ugt i64 196, %"$gasrem_711"
  br i1 %"$gascmp_712", label %"$out_of_gas_713", label %"$have_gas_714"

"$out_of_gas_713":                                ; preds = %"$have_gas_709"
  call void @_out_of_gas()
  br label %"$have_gas_714"

"$have_gas_714":                                  ; preds = %"$out_of_gas_713", %"$have_gas_709"
  %"$consume_715" = sub i64 %"$gasrem_711", 196
  store i64 %"$consume_715", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4
  %"$gasrem_716" = load i64, i64* @_gasrem, align 8
  %"$gascmp_717" = icmp ugt i64 20, %"$gasrem_716"
  br i1 %"$gascmp_717", label %"$out_of_gas_718", label %"$have_gas_719"

"$out_of_gas_718":                                ; preds = %"$have_gas_714"
  call void @_out_of_gas()
  br label %"$have_gas_719"

"$have_gas_719":                                  ; preds = %"$out_of_gas_718", %"$have_gas_714"
  %"$consume_720" = sub i64 %"$gasrem_716", 20
  store i64 %"$consume_720", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4
  %"$gasrem_721" = load i64, i64* @_gasrem, align 8
  %"$gascmp_722" = icmp ugt i64 12, %"$gasrem_721"
  br i1 %"$gascmp_722", label %"$out_of_gas_723", label %"$have_gas_724"

"$out_of_gas_723":                                ; preds = %"$have_gas_719"
  call void @_out_of_gas()
  br label %"$have_gas_724"

"$have_gas_724":                                  ; preds = %"$out_of_gas_723", %"$have_gas_719"
  %"$consume_725" = sub i64 %"$gasrem_721", 12
  store i64 %"$consume_725", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4
  %"$gasrem_726" = load i64, i64* @_gasrem, align 8
  %"$gascmp_727" = icmp ugt i64 2, %"$gasrem_726"
  br i1 %"$gascmp_727", label %"$out_of_gas_728", label %"$have_gas_729"

"$out_of_gas_728":                                ; preds = %"$have_gas_724"
  call void @_out_of_gas()
  br label %"$have_gas_729"

"$have_gas_729":                                  ; preds = %"$out_of_gas_728", %"$have_gas_724"
  %"$consume_730" = sub i64 %"$gasrem_726", 2
  store i64 %"$consume_730", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4
  ret void
}

define internal %Uint32 @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_30" = alloca %Uint32, align 8
  %"$gasrem_731" = load i64, i64* @_gasrem, align 8
  %"$gascmp_732" = icmp ugt i64 1, %"$gasrem_731"
  br i1 %"$gascmp_732", label %"$out_of_gas_733", label %"$have_gas_734"

"$out_of_gas_733":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_734"

"$have_gas_734":                                  ; preds = %"$out_of_gas_733", %entry
  %"$consume_735" = sub i64 %"$gasrem_731", 1
  store i64 %"$consume_735", i64* @_gasrem, align 8
  %c0 = alloca { i8*, i8* }*, align 8
  %"$gasrem_736" = load i64, i64* @_gasrem, align 8
  %"$gascmp_737" = icmp ugt i64 1, %"$gasrem_736"
  br i1 %"$gascmp_737", label %"$out_of_gas_738", label %"$have_gas_739"

"$out_of_gas_738":                                ; preds = %"$have_gas_734"
  call void @_out_of_gas()
  br label %"$have_gas_739"

"$have_gas_739":                                  ; preds = %"$out_of_gas_738", %"$have_gas_734"
  %"$consume_740" = sub i64 %"$gasrem_736", 1
  store i64 %"$consume_740", i64* @_gasrem, align 8
  %"$dyndisp_table_747_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_747_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_747_salloc_load", i64 32)
  %"$dyndisp_table_747_salloc" = bitcast i8* %"$dyndisp_table_747_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_747" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_747_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_748" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_747", i32 0
  %"$dyndisp_pcast_749" = bitcast { i8*, i8* }* %"$dyndisp_gep_748" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_31_env_139"*)* @"$fundef_31" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_749", align 8
  %"$dyndisp_gep_750" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_747", i32 1
  %"$dyndisp_pcast_751" = bitcast { i8*, i8* }* %"$dyndisp_gep_750" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (%"$$fundef_37_env_136"*)* @"$fundef_37" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_751", align 8
  store { i8*, i8* }* %"$dyndisp_table_747", { i8*, i8* }** %c0, align 8
  %"$gasrem_752" = load i64, i64* @_gasrem, align 8
  %"$gascmp_753" = icmp ugt i64 1, %"$gasrem_752"
  br i1 %"$gascmp_753", label %"$out_of_gas_754", label %"$have_gas_755"

"$out_of_gas_754":                                ; preds = %"$have_gas_739"
  call void @_out_of_gas()
  br label %"$have_gas_755"

"$have_gas_755":                                  ; preds = %"$out_of_gas_754", %"$have_gas_739"
  %"$consume_756" = sub i64 %"$gasrem_752", 1
  store i64 %"$consume_756", i64* @_gasrem, align 8
  %"$gasrem_757" = load i64, i64* @_gasrem, align 8
  %"$gascmp_758" = icmp ugt i64 1, %"$gasrem_757"
  br i1 %"$gascmp_758", label %"$out_of_gas_759", label %"$have_gas_760"

"$out_of_gas_759":                                ; preds = %"$have_gas_755"
  call void @_out_of_gas()
  br label %"$have_gas_760"

"$have_gas_760":                                  ; preds = %"$out_of_gas_759", %"$have_gas_755"
  %"$consume_761" = sub i64 %"$gasrem_757", 1
  store i64 %"$consume_761", i64* @_gasrem, align 8
  %"$gasrem_762" = load i64, i64* @_gasrem, align 8
  %"$gascmp_763" = icmp ugt i64 1, %"$gasrem_762"
  br i1 %"$gascmp_763", label %"$out_of_gas_764", label %"$have_gas_765"

"$out_of_gas_764":                                ; preds = %"$have_gas_760"
  call void @_out_of_gas()
  br label %"$have_gas_765"

"$have_gas_765":                                  ; preds = %"$out_of_gas_764", %"$have_gas_760"
  %"$consume_766" = sub i64 %"$gasrem_762", 1
  store i64 %"$consume_766", i64* @_gasrem, align 8
  %c2 = alloca { i8*, i8* }*, align 8
  %"$gasrem_767" = load i64, i64* @_gasrem, align 8
  %"$gascmp_768" = icmp ugt i64 1, %"$gasrem_767"
  br i1 %"$gascmp_768", label %"$out_of_gas_769", label %"$have_gas_770"

"$out_of_gas_769":                                ; preds = %"$have_gas_765"
  call void @_out_of_gas()
  br label %"$have_gas_770"

"$have_gas_770":                                  ; preds = %"$out_of_gas_769", %"$have_gas_765"
  %"$consume_771" = sub i64 %"$gasrem_767", 1
  store i64 %"$consume_771", i64* @_gasrem, align 8
  %"$dyndisp_table_778_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_778_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_778_salloc_load", i64 32)
  %"$dyndisp_table_778_salloc" = bitcast i8* %"$dyndisp_table_778_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_778" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_778_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_779" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_778", i32 0
  %"$dyndisp_pcast_780" = bitcast { i8*, i8* }* %"$dyndisp_gep_779" to { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* } { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)* bitcast ({ { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (%"$$fundef_43_env_133"*)* @"$fundef_43" to { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*), i8* null }, { { { %Uint32 (i8*, %Uint32)*, i8* } (i8*, { %Uint32 (i8*, %Uint32)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_780", align 8
  %"$dyndisp_gep_781" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_778", i32 1
  %"$dyndisp_pcast_782" = bitcast { i8*, i8* }* %"$dyndisp_gep_781" to { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }*
  store { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* } { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)* bitcast ({ { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (%"$$fundef_49_env_130"*)* @"$fundef_49" to { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*), i8* null }, { { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* })*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_782", align 8
  store { i8*, i8* }* %"$dyndisp_table_778", { i8*, i8* }** %c2, align 8
  %"$gasrem_783" = load i64, i64* @_gasrem, align 8
  %"$gascmp_784" = icmp ugt i64 1, %"$gasrem_783"
  br i1 %"$gascmp_784", label %"$out_of_gas_785", label %"$have_gas_786"

"$out_of_gas_785":                                ; preds = %"$have_gas_770"
  call void @_out_of_gas()
  br label %"$have_gas_786"

"$have_gas_786":                                  ; preds = %"$out_of_gas_785", %"$have_gas_770"
  %"$consume_787" = sub i64 %"$gasrem_783", 1
  store i64 %"$consume_787", i64* @_gasrem, align 8
  %cadd = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_788" = load i64, i64* @_gasrem, align 8
  %"$gascmp_789" = icmp ugt i64 1, %"$gasrem_788"
  br i1 %"$gascmp_789", label %"$out_of_gas_790", label %"$have_gas_791"

"$out_of_gas_790":                                ; preds = %"$have_gas_786"
  call void @_out_of_gas()
  br label %"$have_gas_791"

"$have_gas_791":                                  ; preds = %"$out_of_gas_790", %"$have_gas_786"
  %"$consume_792" = sub i64 %"$gasrem_788", 1
  store i64 %"$consume_792", i64* @_gasrem, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_55_env_127"*, { i8*, i8* }*)* @"$fundef_55" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*), i8* null }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$gasrem_796" = load i64, i64* @_gasrem, align 8
  %"$gascmp_797" = icmp ugt i64 1, %"$gasrem_796"
  br i1 %"$gascmp_797", label %"$out_of_gas_798", label %"$have_gas_799"

"$out_of_gas_798":                                ; preds = %"$have_gas_791"
  call void @_out_of_gas()
  br label %"$have_gas_799"

"$have_gas_799":                                  ; preds = %"$out_of_gas_798", %"$have_gas_791"
  %"$consume_800" = sub i64 %"$gasrem_796", 1
  store i64 %"$consume_800", i64* @_gasrem, align 8
  %cmul = alloca { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_801" = load i64, i64* @_gasrem, align 8
  %"$gascmp_802" = icmp ugt i64 1, %"$gasrem_801"
  br i1 %"$gascmp_802", label %"$out_of_gas_803", label %"$have_gas_804"

"$out_of_gas_803":                                ; preds = %"$have_gas_799"
  call void @_out_of_gas()
  br label %"$have_gas_804"

"$have_gas_804":                                  ; preds = %"$out_of_gas_803", %"$have_gas_799"
  %"$consume_805" = sub i64 %"$gasrem_801", 1
  store i64 %"$consume_805", i64* @_gasrem, align 8
  %"$$fundef_71_envp_806_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_71_envp_806_salloc" = call i8* @_salloc(i8* %"$$fundef_71_envp_806_load", i64 24)
  %"$$fundef_71_envp_806" = bitcast i8* %"$$fundef_71_envp_806_salloc" to %"$$fundef_71_env_119"*
  %"$$fundef_71_env_voidp_808" = bitcast %"$$fundef_71_env_119"* %"$$fundef_71_envp_806" to i8*
  %"$$fundef_71_cloval_809" = insertvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)* bitcast ({ { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (%"$$fundef_71_env_119"*, { i8*, i8* }*)* @"$fundef_71" to { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*), i8* undef }, i8* %"$$fundef_71_env_voidp_808", 1
  %"$$fundef_71_env_c0_810" = getelementptr inbounds %"$$fundef_71_env_119", %"$$fundef_71_env_119"* %"$$fundef_71_envp_806", i32 0, i32 0
  %"$c0_811" = load { i8*, i8* }*, { i8*, i8* }** %c0, align 8
  store { i8*, i8* }* %"$c0_811", { i8*, i8* }** %"$$fundef_71_env_c0_810", align 8
  %"$$fundef_71_env_cadd_812" = getelementptr inbounds %"$$fundef_71_env_119", %"$$fundef_71_env_119"* %"$$fundef_71_envp_806", i32 0, i32 1
  %"$cadd_813" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_813", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %"$$fundef_71_env_cadd_812", align 8
  store { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$$fundef_71_cloval_809", { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul, align 8
  %"$gasrem_814" = load i64, i64* @_gasrem, align 8
  %"$gascmp_815" = icmp ugt i64 1, %"$gasrem_814"
  br i1 %"$gascmp_815", label %"$out_of_gas_816", label %"$have_gas_817"

"$out_of_gas_816":                                ; preds = %"$have_gas_804"
  call void @_out_of_gas()
  br label %"$have_gas_817"

"$have_gas_817":                                  ; preds = %"$out_of_gas_816", %"$have_gas_804"
  %"$consume_818" = sub i64 %"$gasrem_814", 1
  store i64 %"$consume_818", i64* @_gasrem, align 8
  %church_nat_to_uint32 = alloca { %Uint32 (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$gasrem_819" = load i64, i64* @_gasrem, align 8
  %"$gascmp_820" = icmp ugt i64 1, %"$gasrem_819"
  br i1 %"$gascmp_820", label %"$out_of_gas_821", label %"$have_gas_822"

"$out_of_gas_821":                                ; preds = %"$have_gas_817"
  call void @_out_of_gas()
  br label %"$have_gas_822"

"$have_gas_822":                                  ; preds = %"$out_of_gas_821", %"$have_gas_817"
  %"$consume_823" = sub i64 %"$gasrem_819", 1
  store i64 %"$consume_823", i64* @_gasrem, align 8
  store { %Uint32 (i8*, { i8*, i8* }*)*, i8* } { %Uint32 (i8*, { i8*, i8* }*)* bitcast (%Uint32 (%"$$fundef_75_env_117"*, { i8*, i8* }*)* @"$fundef_75" to %Uint32 (i8*, { i8*, i8* }*)*), i8* null }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %church_nat_to_uint32, align 8
  %"$gasrem_827" = load i64, i64* @_gasrem, align 8
  %"$gascmp_828" = icmp ugt i64 1, %"$gasrem_827"
  br i1 %"$gascmp_828", label %"$out_of_gas_829", label %"$have_gas_830"

"$out_of_gas_829":                                ; preds = %"$have_gas_822"
  call void @_out_of_gas()
  br label %"$have_gas_830"

"$have_gas_830":                                  ; preds = %"$out_of_gas_829", %"$have_gas_822"
  %"$consume_831" = sub i64 %"$gasrem_827", 1
  store i64 %"$consume_831", i64* @_gasrem, align 8
  %c4 = alloca { i8*, i8* }*, align 8
  %"$gasrem_832" = load i64, i64* @_gasrem, align 8
  %"$gascmp_833" = icmp ugt i64 1, %"$gasrem_832"
  br i1 %"$gascmp_833", label %"$out_of_gas_834", label %"$have_gas_835"

"$out_of_gas_834":                                ; preds = %"$have_gas_830"
  call void @_out_of_gas()
  br label %"$have_gas_835"

"$have_gas_835":                                  ; preds = %"$out_of_gas_834", %"$have_gas_830"
  %"$consume_836" = sub i64 %"$gasrem_832", 1
  store i64 %"$consume_836", i64* @_gasrem, align 8
  %"$cmul_17" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cmul_837" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul, align 8
  %"$cmul_fptr_838" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_837", 0
  %"$cmul_envptr_839" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_837", 1
  %"$c2_840" = load { i8*, i8* }*, { i8*, i8* }** %c2, align 8
  %"$cmul_call_841" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_838"(i8* %"$cmul_envptr_839", { i8*, i8* }* %"$c2_840")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_841", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_17", align 8
  %"$cmul_18" = alloca { i8*, i8* }*, align 8
  %"$$cmul_17_842" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_17", align 8
  %"$$cmul_17_fptr_843" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_17_842", 0
  %"$$cmul_17_envptr_844" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_17_842", 1
  %"$c2_845" = load { i8*, i8* }*, { i8*, i8* }** %c2, align 8
  %"$$cmul_17_call_846" = call { i8*, i8* }* %"$$cmul_17_fptr_843"(i8* %"$$cmul_17_envptr_844", { i8*, i8* }* %"$c2_845")
  store { i8*, i8* }* %"$$cmul_17_call_846", { i8*, i8* }** %"$cmul_18", align 8
  %"$$cmul_18_847" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_18", align 8
  store { i8*, i8* }* %"$$cmul_18_847", { i8*, i8* }** %c4, align 8
  %"$gasrem_848" = load i64, i64* @_gasrem, align 8
  %"$gascmp_849" = icmp ugt i64 1, %"$gasrem_848"
  br i1 %"$gascmp_849", label %"$out_of_gas_850", label %"$have_gas_851"

"$out_of_gas_850":                                ; preds = %"$have_gas_835"
  call void @_out_of_gas()
  br label %"$have_gas_851"

"$have_gas_851":                                  ; preds = %"$out_of_gas_850", %"$have_gas_835"
  %"$consume_852" = sub i64 %"$gasrem_848", 1
  store i64 %"$consume_852", i64* @_gasrem, align 8
  %c16 = alloca { i8*, i8* }*, align 8
  %"$gasrem_853" = load i64, i64* @_gasrem, align 8
  %"$gascmp_854" = icmp ugt i64 1, %"$gasrem_853"
  br i1 %"$gascmp_854", label %"$out_of_gas_855", label %"$have_gas_856"

"$out_of_gas_855":                                ; preds = %"$have_gas_851"
  call void @_out_of_gas()
  br label %"$have_gas_856"

"$have_gas_856":                                  ; preds = %"$out_of_gas_855", %"$have_gas_851"
  %"$consume_857" = sub i64 %"$gasrem_853", 1
  store i64 %"$consume_857", i64* @_gasrem, align 8
  %"$cmul_19" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cmul_858" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul, align 8
  %"$cmul_fptr_859" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_858", 0
  %"$cmul_envptr_860" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_858", 1
  %"$c4_861" = load { i8*, i8* }*, { i8*, i8* }** %c4, align 8
  %"$cmul_call_862" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_859"(i8* %"$cmul_envptr_860", { i8*, i8* }* %"$c4_861")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_862", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_19", align 8
  %"$cmul_20" = alloca { i8*, i8* }*, align 8
  %"$$cmul_19_863" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_19", align 8
  %"$$cmul_19_fptr_864" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_19_863", 0
  %"$$cmul_19_envptr_865" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_19_863", 1
  %"$c4_866" = load { i8*, i8* }*, { i8*, i8* }** %c4, align 8
  %"$$cmul_19_call_867" = call { i8*, i8* }* %"$$cmul_19_fptr_864"(i8* %"$$cmul_19_envptr_865", { i8*, i8* }* %"$c4_866")
  store { i8*, i8* }* %"$$cmul_19_call_867", { i8*, i8* }** %"$cmul_20", align 8
  %"$$cmul_20_868" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_20", align 8
  store { i8*, i8* }* %"$$cmul_20_868", { i8*, i8* }** %c16, align 8
  %"$gasrem_869" = load i64, i64* @_gasrem, align 8
  %"$gascmp_870" = icmp ugt i64 1, %"$gasrem_869"
  br i1 %"$gascmp_870", label %"$out_of_gas_871", label %"$have_gas_872"

"$out_of_gas_871":                                ; preds = %"$have_gas_856"
  call void @_out_of_gas()
  br label %"$have_gas_872"

"$have_gas_872":                                  ; preds = %"$out_of_gas_871", %"$have_gas_856"
  %"$consume_873" = sub i64 %"$gasrem_869", 1
  store i64 %"$consume_873", i64* @_gasrem, align 8
  %c32 = alloca { i8*, i8* }*, align 8
  %"$gasrem_874" = load i64, i64* @_gasrem, align 8
  %"$gascmp_875" = icmp ugt i64 1, %"$gasrem_874"
  br i1 %"$gascmp_875", label %"$out_of_gas_876", label %"$have_gas_877"

"$out_of_gas_876":                                ; preds = %"$have_gas_872"
  call void @_out_of_gas()
  br label %"$have_gas_877"

"$have_gas_877":                                  ; preds = %"$out_of_gas_876", %"$have_gas_872"
  %"$consume_878" = sub i64 %"$gasrem_874", 1
  store i64 %"$consume_878", i64* @_gasrem, align 8
  %"$cadd_21" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cadd_879" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$cadd_fptr_880" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_879", 0
  %"$cadd_envptr_881" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_879", 1
  %"$c16_882" = load { i8*, i8* }*, { i8*, i8* }** %c16, align 8
  %"$cadd_call_883" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_fptr_880"(i8* %"$cadd_envptr_881", { i8*, i8* }* %"$c16_882")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_call_883", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_21", align 8
  %"$cadd_22" = alloca { i8*, i8* }*, align 8
  %"$$cadd_21_884" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_21", align 8
  %"$$cadd_21_fptr_885" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_21_884", 0
  %"$$cadd_21_envptr_886" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_21_884", 1
  %"$c16_887" = load { i8*, i8* }*, { i8*, i8* }** %c16, align 8
  %"$$cadd_21_call_888" = call { i8*, i8* }* %"$$cadd_21_fptr_885"(i8* %"$$cadd_21_envptr_886", { i8*, i8* }* %"$c16_887")
  store { i8*, i8* }* %"$$cadd_21_call_888", { i8*, i8* }** %"$cadd_22", align 8
  %"$$cadd_22_889" = load { i8*, i8* }*, { i8*, i8* }** %"$cadd_22", align 8
  store { i8*, i8* }* %"$$cadd_22_889", { i8*, i8* }** %c32, align 8
  %"$gasrem_890" = load i64, i64* @_gasrem, align 8
  %"$gascmp_891" = icmp ugt i64 1, %"$gasrem_890"
  br i1 %"$gascmp_891", label %"$out_of_gas_892", label %"$have_gas_893"

"$out_of_gas_892":                                ; preds = %"$have_gas_877"
  call void @_out_of_gas()
  br label %"$have_gas_893"

"$have_gas_893":                                  ; preds = %"$out_of_gas_892", %"$have_gas_877"
  %"$consume_894" = sub i64 %"$gasrem_890", 1
  store i64 %"$consume_894", i64* @_gasrem, align 8
  %c128 = alloca { i8*, i8* }*, align 8
  %"$gasrem_895" = load i64, i64* @_gasrem, align 8
  %"$gascmp_896" = icmp ugt i64 1, %"$gasrem_895"
  br i1 %"$gascmp_896", label %"$out_of_gas_897", label %"$have_gas_898"

"$out_of_gas_897":                                ; preds = %"$have_gas_893"
  call void @_out_of_gas()
  br label %"$have_gas_898"

"$have_gas_898":                                  ; preds = %"$out_of_gas_897", %"$have_gas_893"
  %"$consume_899" = sub i64 %"$gasrem_895", 1
  store i64 %"$consume_899", i64* @_gasrem, align 8
  %"$cmul_23" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cmul_900" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul, align 8
  %"$cmul_fptr_901" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_900", 0
  %"$cmul_envptr_902" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_900", 1
  %"$c4_903" = load { i8*, i8* }*, { i8*, i8* }** %c4, align 8
  %"$cmul_call_904" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_901"(i8* %"$cmul_envptr_902", { i8*, i8* }* %"$c4_903")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_904", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_23", align 8
  %"$cmul_24" = alloca { i8*, i8* }*, align 8
  %"$$cmul_23_905" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_23", align 8
  %"$$cmul_23_fptr_906" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_23_905", 0
  %"$$cmul_23_envptr_907" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_23_905", 1
  %"$c32_908" = load { i8*, i8* }*, { i8*, i8* }** %c32, align 8
  %"$$cmul_23_call_909" = call { i8*, i8* }* %"$$cmul_23_fptr_906"(i8* %"$$cmul_23_envptr_907", { i8*, i8* }* %"$c32_908")
  store { i8*, i8* }* %"$$cmul_23_call_909", { i8*, i8* }** %"$cmul_24", align 8
  %"$$cmul_24_910" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_24", align 8
  store { i8*, i8* }* %"$$cmul_24_910", { i8*, i8* }** %c128, align 8
  %"$gasrem_911" = load i64, i64* @_gasrem, align 8
  %"$gascmp_912" = icmp ugt i64 1, %"$gasrem_911"
  br i1 %"$gascmp_912", label %"$out_of_gas_913", label %"$have_gas_914"

"$out_of_gas_913":                                ; preds = %"$have_gas_898"
  call void @_out_of_gas()
  br label %"$have_gas_914"

"$have_gas_914":                                  ; preds = %"$out_of_gas_913", %"$have_gas_898"
  %"$consume_915" = sub i64 %"$gasrem_911", 1
  store i64 %"$consume_915", i64* @_gasrem, align 8
  %c256 = alloca { i8*, i8* }*, align 8
  %"$gasrem_916" = load i64, i64* @_gasrem, align 8
  %"$gascmp_917" = icmp ugt i64 1, %"$gasrem_916"
  br i1 %"$gascmp_917", label %"$out_of_gas_918", label %"$have_gas_919"

"$out_of_gas_918":                                ; preds = %"$have_gas_914"
  call void @_out_of_gas()
  br label %"$have_gas_919"

"$have_gas_919":                                  ; preds = %"$out_of_gas_918", %"$have_gas_914"
  %"$consume_920" = sub i64 %"$gasrem_916", 1
  store i64 %"$consume_920", i64* @_gasrem, align 8
  %"$cadd_25" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cadd_921" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cadd, align 8
  %"$cadd_fptr_922" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_921", 0
  %"$cadd_envptr_923" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cadd_921", 1
  %"$c128_924" = load { i8*, i8* }*, { i8*, i8* }** %c128, align 8
  %"$cadd_call_925" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_fptr_922"(i8* %"$cadd_envptr_923", { i8*, i8* }* %"$c128_924")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cadd_call_925", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_25", align 8
  %"$cadd_26" = alloca { i8*, i8* }*, align 8
  %"$$cadd_25_926" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cadd_25", align 8
  %"$$cadd_25_fptr_927" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_25_926", 0
  %"$$cadd_25_envptr_928" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cadd_25_926", 1
  %"$c128_929" = load { i8*, i8* }*, { i8*, i8* }** %c128, align 8
  %"$$cadd_25_call_930" = call { i8*, i8* }* %"$$cadd_25_fptr_927"(i8* %"$$cadd_25_envptr_928", { i8*, i8* }* %"$c128_929")
  store { i8*, i8* }* %"$$cadd_25_call_930", { i8*, i8* }** %"$cadd_26", align 8
  %"$$cadd_26_931" = load { i8*, i8* }*, { i8*, i8* }** %"$cadd_26", align 8
  store { i8*, i8* }* %"$$cadd_26_931", { i8*, i8* }** %c256, align 8
  %"$gasrem_932" = load i64, i64* @_gasrem, align 8
  %"$gascmp_933" = icmp ugt i64 1, %"$gasrem_932"
  br i1 %"$gascmp_933", label %"$out_of_gas_934", label %"$have_gas_935"

"$out_of_gas_934":                                ; preds = %"$have_gas_919"
  call void @_out_of_gas()
  br label %"$have_gas_935"

"$have_gas_935":                                  ; preds = %"$out_of_gas_934", %"$have_gas_919"
  %"$consume_936" = sub i64 %"$gasrem_932", 1
  store i64 %"$consume_936", i64* @_gasrem, align 8
  %c65536 = alloca { i8*, i8* }*, align 8
  %"$gasrem_937" = load i64, i64* @_gasrem, align 8
  %"$gascmp_938" = icmp ugt i64 1, %"$gasrem_937"
  br i1 %"$gascmp_938", label %"$out_of_gas_939", label %"$have_gas_940"

"$out_of_gas_939":                                ; preds = %"$have_gas_935"
  call void @_out_of_gas()
  br label %"$have_gas_940"

"$have_gas_940":                                  ; preds = %"$out_of_gas_939", %"$have_gas_935"
  %"$consume_941" = sub i64 %"$gasrem_937", 1
  store i64 %"$consume_941", i64* @_gasrem, align 8
  %"$cmul_27" = alloca { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, align 8
  %"$cmul_942" = load { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }, { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* }* %cmul, align 8
  %"$cmul_fptr_943" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_942", 0
  %"$cmul_envptr_944" = extractvalue { { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } (i8*, { i8*, i8* }*)*, i8* } %"$cmul_942", 1
  %"$c256_945" = load { i8*, i8* }*, { i8*, i8* }** %c256, align 8
  %"$cmul_call_946" = call { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_fptr_943"(i8* %"$cmul_envptr_944", { i8*, i8* }* %"$c256_945")
  store { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$cmul_call_946", { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_27", align 8
  %"$cmul_28" = alloca { i8*, i8* }*, align 8
  %"$$cmul_27_947" = load { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }, { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* }* %"$cmul_27", align 8
  %"$$cmul_27_fptr_948" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_27_947", 0
  %"$$cmul_27_envptr_949" = extractvalue { { i8*, i8* }* (i8*, { i8*, i8* }*)*, i8* } %"$$cmul_27_947", 1
  %"$c256_950" = load { i8*, i8* }*, { i8*, i8* }** %c256, align 8
  %"$$cmul_27_call_951" = call { i8*, i8* }* %"$$cmul_27_fptr_948"(i8* %"$$cmul_27_envptr_949", { i8*, i8* }* %"$c256_950")
  store { i8*, i8* }* %"$$cmul_27_call_951", { i8*, i8* }** %"$cmul_28", align 8
  %"$$cmul_28_952" = load { i8*, i8* }*, { i8*, i8* }** %"$cmul_28", align 8
  store { i8*, i8* }* %"$$cmul_28_952", { i8*, i8* }** %c65536, align 8
  %"$gasrem_953" = load i64, i64* @_gasrem, align 8
  %"$gascmp_954" = icmp ugt i64 1, %"$gasrem_953"
  br i1 %"$gascmp_954", label %"$out_of_gas_955", label %"$have_gas_956"

"$out_of_gas_955":                                ; preds = %"$have_gas_940"
  call void @_out_of_gas()
  br label %"$have_gas_956"

"$have_gas_956":                                  ; preds = %"$out_of_gas_955", %"$have_gas_940"
  %"$consume_957" = sub i64 %"$gasrem_953", 1
  store i64 %"$consume_957", i64* @_gasrem, align 8
  %"$church_nat_to_uint32_29" = alloca %Uint32, align 8
  %"$church_nat_to_uint32_958" = load { %Uint32 (i8*, { i8*, i8* }*)*, i8* }, { %Uint32 (i8*, { i8*, i8* }*)*, i8* }* %church_nat_to_uint32, align 8
  %"$church_nat_to_uint32_fptr_959" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$church_nat_to_uint32_958", 0
  %"$church_nat_to_uint32_envptr_960" = extractvalue { %Uint32 (i8*, { i8*, i8* }*)*, i8* } %"$church_nat_to_uint32_958", 1
  %"$c65536_961" = load { i8*, i8* }*, { i8*, i8* }** %c65536, align 8
  %"$church_nat_to_uint32_call_962" = call %Uint32 %"$church_nat_to_uint32_fptr_959"(i8* %"$church_nat_to_uint32_envptr_960", { i8*, i8* }* %"$c65536_961")
  store %Uint32 %"$church_nat_to_uint32_call_962", %Uint32* %"$church_nat_to_uint32_29", align 4
  %"$$church_nat_to_uint32_29_963" = load %Uint32, %Uint32* %"$church_nat_to_uint32_29", align 4
  store %Uint32 %"$$church_nat_to_uint32_29_963", %Uint32* %"$expr_30", align 4
  %"$$expr_30_964" = load %Uint32, %Uint32* %"$expr_30", align 4
  ret %Uint32 %"$$expr_30_964"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_965" = call %Uint32 @_scilla_expr_fun(i8* null)
  %"$pval_966" = alloca %Uint32, align 8
  %"$memvoidcast_967" = bitcast %Uint32* %"$pval_966" to i8*
  store %Uint32 %"$exprval_965", %Uint32* %"$pval_966", align 4
  %"$execptr_load_968" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_968", %_TyDescrTy_Typ* @"$TyDescr_Uint32_83", i8* %"$memvoidcast_967")
  ret void
}
