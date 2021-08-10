; gas_remaining: 100000
; ModuleID = 'SimpleUnuccury3'
source_filename = "SimpleUnuccury3"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin19.6.0"

%"$TyDescrTy_PrimTyp_21" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescr_AddrTyp_57" = type { i32, %"$TyDescr_AddrFieldTyp_56"* }
%"$TyDescr_AddrFieldTyp_56" = type { %TyDescrString, %_TyDescrTy_Typ* }
%TyDescrString = type { i8*, i32 }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_396" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_397" = type { %ParamDescrString, i32, %"$ParamDescr_396"* }
%"$$fundef_19_env_60" = type {}
%"$$fundef_8_env_61" = type {}
%"$$fundef_12_env_62" = type { %Int32 }
%"$$fundef_10_env_63" = type {}
%"$$fundef_16_env_64" = type { %Int32 }
%"$$fundef_14_env_65" = type {}
%Uint128 = type { i128 }
%TName_uncurry3.T = type { i8, %CName_uncurry3.C1*, %CName_uncurry3.C2* }
%CName_uncurry3.C1 = type <{ i8, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } }>
%CName_uncurry3.C2 = type <{ i8, %TName_Bool* }>
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_22" = global %"$TyDescrTy_PrimTyp_21" zeroinitializer
@"$TyDescr_Int32_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Int32_Prim_22" to i8*) }
@"$TyDescr_Uint32_Prim_24" = global %"$TyDescrTy_PrimTyp_21" { i32 1, i32 0 }
@"$TyDescr_Uint32_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Uint32_Prim_24" to i8*) }
@"$TyDescr_Int64_Prim_26" = global %"$TyDescrTy_PrimTyp_21" { i32 0, i32 1 }
@"$TyDescr_Int64_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Int64_Prim_26" to i8*) }
@"$TyDescr_Uint64_Prim_28" = global %"$TyDescrTy_PrimTyp_21" { i32 1, i32 1 }
@"$TyDescr_Uint64_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Uint64_Prim_28" to i8*) }
@"$TyDescr_Int128_Prim_30" = global %"$TyDescrTy_PrimTyp_21" { i32 0, i32 2 }
@"$TyDescr_Int128_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Int128_Prim_30" to i8*) }
@"$TyDescr_Uint128_Prim_32" = global %"$TyDescrTy_PrimTyp_21" { i32 1, i32 2 }
@"$TyDescr_Uint128_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Uint128_Prim_32" to i8*) }
@"$TyDescr_Int256_Prim_34" = global %"$TyDescrTy_PrimTyp_21" { i32 0, i32 3 }
@"$TyDescr_Int256_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Int256_Prim_34" to i8*) }
@"$TyDescr_Uint256_Prim_36" = global %"$TyDescrTy_PrimTyp_21" { i32 1, i32 3 }
@"$TyDescr_Uint256_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Uint256_Prim_36" to i8*) }
@"$TyDescr_String_Prim_38" = global %"$TyDescrTy_PrimTyp_21" { i32 2, i32 0 }
@"$TyDescr_String_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_String_Prim_38" to i8*) }
@"$TyDescr_Bnum_Prim_40" = global %"$TyDescrTy_PrimTyp_21" { i32 3, i32 0 }
@"$TyDescr_Bnum_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Bnum_Prim_40" to i8*) }
@"$TyDescr_Message_Prim_42" = global %"$TyDescrTy_PrimTyp_21" { i32 4, i32 0 }
@"$TyDescr_Message_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Message_Prim_42" to i8*) }
@"$TyDescr_Event_Prim_44" = global %"$TyDescrTy_PrimTyp_21" { i32 5, i32 0 }
@"$TyDescr_Event_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Event_Prim_44" to i8*) }
@"$TyDescr_Exception_Prim_46" = global %"$TyDescrTy_PrimTyp_21" { i32 6, i32 0 }
@"$TyDescr_Exception_47" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Exception_Prim_46" to i8*) }
@"$TyDescr_Bystr_Prim_48" = global %"$TyDescrTy_PrimTyp_21" { i32 7, i32 0 }
@"$TyDescr_Bystr_49" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Bystr_Prim_48" to i8*) }
@"$TyDescr_Bystr20_Prim_50" = global %"$TyDescrTy_PrimTyp_21" { i32 8, i32 20 }
@"$TyDescr_Bystr20_51" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Bystr20_Prim_50" to i8*) }
@"$TyDescr_Addr_58" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_57"* @"$TyDescr_AddrFields_59" to i8*) }
@"$TyDescr_AddrFields_59" = unnamed_addr constant %"$TyDescr_AddrTyp_57" { i32 -1, %"$TyDescr_AddrFieldTyp_56"* null }
@uncurry3.uncur_lib_func1 = global { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } zeroinitializer
@uncurry3.uncur_lib_func2 = global { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } zeroinitializer
@uncurry3.uncur_lib_func3 = global { %Int32 (i8*, %Int32, %Int32)*, i8* } zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$res_181" = unnamed_addr constant [4 x i8] c"res\00"
@"$res_266" = unnamed_addr constant [4 x i8] c"res\00"
@"$res_339" = unnamed_addr constant [4 x i8] c"res\00"
@"$res_381" = unnamed_addr constant [4 x i8] c"res\00"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_45", %_TyDescrTy_Typ* @"$TyDescr_Int64_27", %_TyDescrTy_Typ* @"$TyDescr_Addr_58", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_51", %_TyDescrTy_Typ* @"$TyDescr_Uint256_37", %_TyDescrTy_Typ* @"$TyDescr_Uint32_25", %_TyDescrTy_Typ* @"$TyDescr_Uint64_29", %_TyDescrTy_Typ* @"$TyDescr_Bnum_41", %_TyDescrTy_Typ* @"$TyDescr_Uint128_33", %_TyDescrTy_Typ* @"$TyDescr_Exception_47", %_TyDescrTy_Typ* @"$TyDescr_String_39", %_TyDescrTy_Typ* @"$TyDescr_Int256_35", %_TyDescrTy_Typ* @"$TyDescr_Int128_31", %_TyDescrTy_Typ* @"$TyDescr_Bystr_49", %_TyDescrTy_Typ* @"$TyDescr_Message_43", %_TyDescrTy_Typ* @"$TyDescr_Int32_23"]
@_tydescr_table_length = constant i32 16
@"$pname__scilla_version_398" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_399" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_400" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_396"] [%"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_398", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_25" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_399", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_51" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_400", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_41" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_401" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_402" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_403" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x1_404" = unnamed_addr constant [2 x i8] c"x1"
@"$tpname_x2_405" = unnamed_addr constant [2 x i8] c"x2"
@"$tparams_dummy1_406" = unnamed_addr constant [5 x %"$ParamDescr_396"] [%"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_401", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_33" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_402", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_58" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_403", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_58" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tpname_x1_404", i32 0, i32 0), i32 2 }, %_TyDescrTy_Typ* @"$TyDescr_Int32_23" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tpname_x2_405", i32 0, i32 0), i32 2 }, %_TyDescrTy_Typ* @"$TyDescr_Int32_23" }]
@"$tname_dummy1_407" = unnamed_addr constant [6 x i8] c"dummy1"
@"$tpname__amount_408" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_409" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_410" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x1_411" = unnamed_addr constant [2 x i8] c"x1"
@"$tpname_x2_412" = unnamed_addr constant [2 x i8] c"x2"
@"$tparams_dummy2_413" = unnamed_addr constant [5 x %"$ParamDescr_396"] [%"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_408", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_33" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_409", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_58" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_410", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_58" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tpname_x1_411", i32 0, i32 0), i32 2 }, %_TyDescrTy_Typ* @"$TyDescr_Int32_23" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tpname_x2_412", i32 0, i32 0), i32 2 }, %_TyDescrTy_Typ* @"$TyDescr_Int32_23" }]
@"$tname_dummy2_414" = unnamed_addr constant [6 x i8] c"dummy2"
@"$tpname__amount_415" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_416" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_417" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x1_418" = unnamed_addr constant [2 x i8] c"x1"
@"$tpname_x2_419" = unnamed_addr constant [2 x i8] c"x2"
@"$tparams_dummy3_420" = unnamed_addr constant [5 x %"$ParamDescr_396"] [%"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_415", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_33" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_416", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_58" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_417", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_58" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tpname_x1_418", i32 0, i32 0), i32 2 }, %_TyDescrTy_Typ* @"$TyDescr_Int32_23" }, %"$ParamDescr_396" { %ParamDescrString { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$tpname_x2_419", i32 0, i32 0), i32 2 }, %_TyDescrTy_Typ* @"$TyDescr_Int32_23" }]
@"$tname_dummy3_421" = unnamed_addr constant [6 x i8] c"dummy3"
@_transition_parameters = constant [3 x %"$TransDescr_397"] [%"$TransDescr_397" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_dummy1_407", i32 0, i32 0), i32 6 }, i32 5, %"$ParamDescr_396"* getelementptr inbounds ([5 x %"$ParamDescr_396"], [5 x %"$ParamDescr_396"]* @"$tparams_dummy1_406", i32 0, i32 0) }, %"$TransDescr_397" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_dummy2_414", i32 0, i32 0), i32 6 }, i32 5, %"$ParamDescr_396"* getelementptr inbounds ([5 x %"$ParamDescr_396"], [5 x %"$ParamDescr_396"]* @"$tparams_dummy2_413", i32 0, i32 0) }, %"$TransDescr_397" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_dummy3_421", i32 0, i32 0), i32 6 }, i32 5, %"$ParamDescr_396"* getelementptr inbounds ([5 x %"$ParamDescr_396"], [5 x %"$ParamDescr_396"]* @"$tparams_dummy3_420", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 3

define internal %Int32 @"$fundef_19"(%"$$fundef_19_env_60"* %0, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %1) !dbg !4 {
entry:
  %"$retval_20" = alloca %Int32, align 8
  %"$gasrem_115" = load i64, i64* @_gasrem, align 8
  %"$gascmp_116" = icmp ugt i64 1, %"$gasrem_115"
  br i1 %"$gascmp_116", label %"$out_of_gas_117", label %"$have_gas_118"

"$out_of_gas_117":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_118"

"$have_gas_118":                                  ; preds = %"$out_of_gas_117", %entry
  %"$consume_119" = sub i64 %"$gasrem_115", 1
  store i64 %"$consume_119", i64* @_gasrem, align 8
  %n1 = alloca %Int32, align 8
  %"$gasrem_120" = load i64, i64* @_gasrem, align 8
  %"$gascmp_121" = icmp ugt i64 1, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %"$have_gas_118"
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %"$have_gas_118"
  %"$consume_124" = sub i64 %"$gasrem_120", 1
  store i64 %"$consume_124", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %n1, align 4, !dbg !8
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 1, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$have_gas_123"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$have_gas_123"
  %"$consume_129" = sub i64 %"$gasrem_125", 1
  store i64 %"$consume_129", i64* @_gasrem, align 8
  %n2 = alloca %Int32, align 8
  %"$gasrem_130" = load i64, i64* @_gasrem, align 8
  %"$gascmp_131" = icmp ugt i64 1, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %"$have_gas_128"
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %"$have_gas_128"
  %"$consume_134" = sub i64 %"$gasrem_130", 1
  store i64 %"$consume_134", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* %n2, align 4, !dbg !9
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 1, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %"$have_gas_133"
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %"$have_gas_133"
  %"$consume_139" = sub i64 %"$gasrem_135", 1
  store i64 %"$consume_139", i64* @_gasrem, align 8
  %"$f__5" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$f__fptr_140" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %1, 0
  %"$f__envptr_141" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %1, 1
  %"$n1_142" = load %Int32, %Int32* %n1, align 4
  %"$f__call_143" = call { %Int32 (i8*, %Int32)*, i8* } %"$f__fptr_140"(i8* %"$f__envptr_141", %Int32 %"$n1_142"), !dbg !10
  store { %Int32 (i8*, %Int32)*, i8* } %"$f__call_143", { %Int32 (i8*, %Int32)*, i8* }* %"$f__5", align 8, !dbg !10
  %"$f__6" = alloca %Int32, align 8
  %"$$f__5_144" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$f__5", align 8
  %"$$f__5_fptr_145" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$f__5_144", 0
  %"$$f__5_envptr_146" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$f__5_144", 1
  %"$n2_147" = load %Int32, %Int32* %n2, align 4
  %"$$f__5_call_148" = call %Int32 %"$$f__5_fptr_145"(i8* %"$$f__5_envptr_146", %Int32 %"$n2_147"), !dbg !10
  store %Int32 %"$$f__5_call_148", %Int32* %"$f__6", align 4, !dbg !10
  %"$$f__6_149" = load %Int32, %Int32* %"$f__6", align 4
  store %Int32 %"$$f__6_149", %Int32* %"$retval_20", align 4, !dbg !10
  %"$$retval_20_150" = load %Int32, %Int32* %"$retval_20", align 4
  ret %Int32 %"$$retval_20_150"
}

define internal %Int32 @"$fundef_8"(%"$$fundef_8_env_61"* %0, %Int32 %1, %Int32 %2) !dbg !11 {
entry:
  %"$retval_9" = alloca %Int32, align 8
  %"$gasrem_108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_109" = icmp ugt i64 4, %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %entry
  %"$consume_112" = sub i64 %"$gasrem_108", 4
  store i64 %"$consume_112", i64* @_gasrem, align 8
  %"$add_call_113" = call %Int32 @_add_Int32(%Int32 %1, %Int32 %2), !dbg !12
  store %Int32 %"$add_call_113", %Int32* %"$retval_9", align 4, !dbg !12
  %"$$retval_9_114" = load %Int32, %Int32* %"$retval_9", align 4
  ret %Int32 %"$$retval_9_114"
}

define internal %Int32 @"$fundef_12"(%"$$fundef_12_env_62"* %0, %Int32 %1) !dbg !13 {
entry:
  %"$$fundef_12_env_a_98" = getelementptr inbounds %"$$fundef_12_env_62", %"$$fundef_12_env_62"* %0, i32 0, i32 0
  %"$a_envload_99" = load %Int32, %Int32* %"$$fundef_12_env_a_98", align 4
  %a = alloca %Int32, align 8
  store %Int32 %"$a_envload_99", %Int32* %a, align 4
  %"$retval_13" = alloca %Int32, align 8
  %"$gasrem_100" = load i64, i64* @_gasrem, align 8
  %"$gascmp_101" = icmp ugt i64 4, %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %entry
  %"$consume_104" = sub i64 %"$gasrem_100", 4
  store i64 %"$consume_104", i64* @_gasrem, align 8
  %"$a_105" = load %Int32, %Int32* %a, align 4
  %"$add_call_106" = call %Int32 @_add_Int32(%Int32 %"$a_105", %Int32 %1), !dbg !14
  store %Int32 %"$add_call_106", %Int32* %"$retval_13", align 4, !dbg !14
  %"$$retval_13_107" = load %Int32, %Int32* %"$retval_13", align 4
  ret %Int32 %"$$retval_13_107"
}

define internal { %Int32 (i8*, %Int32)*, i8* } @"$fundef_10"(%"$$fundef_10_env_63"* %0, %Int32 %1) !dbg !15 {
entry:
  %"$retval_11" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_87" = load i64, i64* @_gasrem, align 8
  %"$gascmp_88" = icmp ugt i64 1, %"$gasrem_87"
  br i1 %"$gascmp_88", label %"$out_of_gas_89", label %"$have_gas_90"

"$out_of_gas_89":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_90"

"$have_gas_90":                                   ; preds = %"$out_of_gas_89", %entry
  %"$consume_91" = sub i64 %"$gasrem_87", 1
  store i64 %"$consume_91", i64* @_gasrem, align 8
  %"$$fundef_12_envp_92_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_12_envp_92_salloc" = call i8* @_salloc(i8* %"$$fundef_12_envp_92_load", i64 4)
  %"$$fundef_12_envp_92" = bitcast i8* %"$$fundef_12_envp_92_salloc" to %"$$fundef_12_env_62"*
  %"$$fundef_12_env_voidp_94" = bitcast %"$$fundef_12_env_62"* %"$$fundef_12_envp_92" to i8*
  %"$$fundef_12_cloval_95" = insertvalue { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_12_env_62"*, %Int32)* @"$fundef_12" to %Int32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_12_env_voidp_94", 1
  %"$$fundef_12_env_a_96" = getelementptr inbounds %"$$fundef_12_env_62", %"$$fundef_12_env_62"* %"$$fundef_12_envp_92", i32 0, i32 0
  store %Int32 %1, %Int32* %"$$fundef_12_env_a_96", align 4
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_12_cloval_95", { %Int32 (i8*, %Int32)*, i8* }* %"$retval_11", align 8, !dbg !16
  %"$$retval_11_97" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_11", align 8
  ret { %Int32 (i8*, %Int32)*, i8* } %"$$retval_11_97"
}

define internal %Int32 @"$fundef_16"(%"$$fundef_16_env_64"* %0, %Int32 %1) !dbg !17 {
entry:
  %"$$fundef_16_env_a_77" = getelementptr inbounds %"$$fundef_16_env_64", %"$$fundef_16_env_64"* %0, i32 0, i32 0
  %"$a_envload_78" = load %Int32, %Int32* %"$$fundef_16_env_a_77", align 4
  %a = alloca %Int32, align 8
  store %Int32 %"$a_envload_78", %Int32* %a, align 4
  %"$retval_17" = alloca %Int32, align 8
  %"$gasrem_79" = load i64, i64* @_gasrem, align 8
  %"$gascmp_80" = icmp ugt i64 4, %"$gasrem_79"
  br i1 %"$gascmp_80", label %"$out_of_gas_81", label %"$have_gas_82"

"$out_of_gas_81":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_82"

"$have_gas_82":                                   ; preds = %"$out_of_gas_81", %entry
  %"$consume_83" = sub i64 %"$gasrem_79", 4
  store i64 %"$consume_83", i64* @_gasrem, align 8
  %"$a_84" = load %Int32, %Int32* %a, align 4
  %"$add_call_85" = call %Int32 @_add_Int32(%Int32 %"$a_84", %Int32 %1), !dbg !18
  store %Int32 %"$add_call_85", %Int32* %"$retval_17", align 4, !dbg !18
  %"$$retval_17_86" = load %Int32, %Int32* %"$retval_17", align 4
  ret %Int32 %"$$retval_17_86"
}

define internal { %Int32 (i8*, %Int32)*, i8* } @"$fundef_14"(%"$$fundef_14_env_65"* %0, %Int32 %1) !dbg !19 {
entry:
  %"$retval_15" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_66" = load i64, i64* @_gasrem, align 8
  %"$gascmp_67" = icmp ugt i64 1, %"$gasrem_66"
  br i1 %"$gascmp_67", label %"$out_of_gas_68", label %"$have_gas_69"

"$out_of_gas_68":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_69"

"$have_gas_69":                                   ; preds = %"$out_of_gas_68", %entry
  %"$consume_70" = sub i64 %"$gasrem_66", 1
  store i64 %"$consume_70", i64* @_gasrem, align 8
  %"$$fundef_16_envp_71_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_16_envp_71_salloc" = call i8* @_salloc(i8* %"$$fundef_16_envp_71_load", i64 4)
  %"$$fundef_16_envp_71" = bitcast i8* %"$$fundef_16_envp_71_salloc" to %"$$fundef_16_env_64"*
  %"$$fundef_16_env_voidp_73" = bitcast %"$$fundef_16_env_64"* %"$$fundef_16_envp_71" to i8*
  %"$$fundef_16_cloval_74" = insertvalue { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_16_env_64"*, %Int32)* @"$fundef_16" to %Int32 (i8*, %Int32)*), i8* undef }, i8* %"$$fundef_16_env_voidp_73", 1
  %"$$fundef_16_env_a_75" = getelementptr inbounds %"$$fundef_16_env_64", %"$$fundef_16_env_64"* %"$$fundef_16_envp_71", i32 0, i32 0
  store %Int32 %1, %Int32* %"$$fundef_16_env_a_75", align 4
  store { %Int32 (i8*, %Int32)*, i8* } %"$$fundef_16_cloval_74", { %Int32 (i8*, %Int32)*, i8* }* %"$retval_15", align 8, !dbg !20
  %"$$retval_15_76" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_15", align 8
  ret { %Int32 (i8*, %Int32)*, i8* } %"$$retval_15_76"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare %Int32 @_add_Int32(%Int32, %Int32)

define void @_init_libs() !dbg !21 {
entry:
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 1, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %entry
  %"$consume_155" = sub i64 %"$gasrem_151", 1
  store i64 %"$consume_155", i64* @_gasrem, align 8
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)* bitcast ({ %Int32 (i8*, %Int32)*, i8* } (%"$$fundef_14_env_65"*, %Int32)* @"$fundef_14" to { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*), i8* null }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* @uncurry3.uncur_lib_func1, align 8, !dbg !23
  %"$gasrem_159" = load i64, i64* @_gasrem, align 8
  %"$gascmp_160" = icmp ugt i64 1, %"$gasrem_159"
  br i1 %"$gascmp_160", label %"$out_of_gas_161", label %"$have_gas_162"

"$out_of_gas_161":                                ; preds = %"$have_gas_154"
  call void @_out_of_gas()
  br label %"$have_gas_162"

"$have_gas_162":                                  ; preds = %"$out_of_gas_161", %"$have_gas_154"
  %"$consume_163" = sub i64 %"$gasrem_159", 1
  store i64 %"$consume_163", i64* @_gasrem, align 8
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)* bitcast ({ %Int32 (i8*, %Int32)*, i8* } (%"$$fundef_10_env_63"*, %Int32)* @"$fundef_10" to { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*), i8* null }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* @uncurry3.uncur_lib_func2, align 8, !dbg !24
  %"$gasrem_167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_168" = icmp ugt i64 2, %"$gasrem_167"
  br i1 %"$gascmp_168", label %"$out_of_gas_169", label %"$have_gas_170"

"$out_of_gas_169":                                ; preds = %"$have_gas_162"
  call void @_out_of_gas()
  br label %"$have_gas_170"

"$have_gas_170":                                  ; preds = %"$out_of_gas_169", %"$have_gas_162"
  %"$consume_171" = sub i64 %"$gasrem_167", 2
  store i64 %"$consume_171", i64* @_gasrem, align 8
  store { %Int32 (i8*, %Int32, %Int32)*, i8* } { %Int32 (i8*, %Int32, %Int32)* bitcast (%Int32 (%"$$fundef_8_env_61"*, %Int32, %Int32)* @"$fundef_8" to %Int32 (i8*, %Int32, %Int32)*), i8* null }, { %Int32 (i8*, %Int32, %Int32)*, i8* }* @uncurry3.uncur_lib_func3, align 8, !dbg !25
  ret void
}

define void @_init_state() !dbg !26 {
entry:
  %"$res_18" = alloca %Int32, align 8
  %"$gasrem_175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_176" = icmp ugt i64 1, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %entry
  %"$consume_179" = sub i64 %"$gasrem_175", 1
  store i64 %"$consume_179", i64* @_gasrem, align 8
  store %Int32 zeroinitializer, %Int32* %"$res_18", align 4, !dbg !27
  %"$execptr_load_180" = load i8*, i8** @_execptr, align 8
  %"$$res_18_182" = load %Int32, %Int32* %"$res_18", align 4
  %"$update_value_183" = alloca %Int32, align 8
  store %Int32 %"$$res_18_182", %Int32* %"$update_value_183", align 4
  %"$update_value_184" = bitcast %Int32* %"$update_value_183" to i8*
  call void @_update_field(i8* %"$execptr_load_180", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$res_181", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_23", i32 0, i8* null, i8* %"$update_value_184"), !dbg !27
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$dummy1_185"(%Uint128 %_amount, [20 x i8]* %"$_origin_186", [20 x i8]* %"$_sender_187", %Int32 %x1, %Int32 %x2) !dbg !28 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_186", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_187", align 1
  %"$gasrem_188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_189" = icmp ugt i64 1, %"$gasrem_188"
  br i1 %"$gascmp_189", label %"$out_of_gas_190", label %"$have_gas_191"

"$out_of_gas_190":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_191"

"$have_gas_191":                                  ; preds = %"$out_of_gas_190", %entry
  %"$consume_192" = sub i64 %"$gasrem_188", 1
  store i64 %"$consume_192", i64* @_gasrem, align 8
  %total_app = alloca %Int32, align 8
  %"$gasrem_193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_194" = icmp ugt i64 1, %"$gasrem_193"
  br i1 %"$gascmp_194", label %"$out_of_gas_195", label %"$have_gas_196"

"$out_of_gas_195":                                ; preds = %"$have_gas_191"
  call void @_out_of_gas()
  br label %"$have_gas_196"

"$have_gas_196":                                  ; preds = %"$out_of_gas_195", %"$have_gas_191"
  %"$consume_197" = sub i64 %"$gasrem_193", 1
  store i64 %"$consume_197", i64* @_gasrem, align 8
  %"$uncurry3.uncur_lib_func1_1" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$uncurry3.uncur_lib_func1_198" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* @uncurry3.uncur_lib_func1, align 8
  %"$uncurry3.uncur_lib_func1_fptr_199" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$uncurry3.uncur_lib_func1_198", 0
  %"$uncurry3.uncur_lib_func1_envptr_200" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$uncurry3.uncur_lib_func1_198", 1
  %"$uncurry3.uncur_lib_func1_call_201" = call { %Int32 (i8*, %Int32)*, i8* } %"$uncurry3.uncur_lib_func1_fptr_199"(i8* %"$uncurry3.uncur_lib_func1_envptr_200", %Int32 %x1), !dbg !29
  store { %Int32 (i8*, %Int32)*, i8* } %"$uncurry3.uncur_lib_func1_call_201", { %Int32 (i8*, %Int32)*, i8* }* %"$uncurry3.uncur_lib_func1_1", align 8, !dbg !29
  %"$uncurry3.uncur_lib_func1_2" = alloca %Int32, align 8
  %"$$uncurry3.uncur_lib_func1_1_202" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$uncurry3.uncur_lib_func1_1", align 8
  %"$$uncurry3.uncur_lib_func1_1_fptr_203" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$uncurry3.uncur_lib_func1_1_202", 0
  %"$$uncurry3.uncur_lib_func1_1_envptr_204" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$uncurry3.uncur_lib_func1_1_202", 1
  %"$$uncurry3.uncur_lib_func1_1_call_205" = call %Int32 %"$$uncurry3.uncur_lib_func1_1_fptr_203"(i8* %"$$uncurry3.uncur_lib_func1_1_envptr_204", %Int32 %x2), !dbg !29
  store %Int32 %"$$uncurry3.uncur_lib_func1_1_call_205", %Int32* %"$uncurry3.uncur_lib_func1_2", align 4, !dbg !29
  %"$$uncurry3.uncur_lib_func1_2_206" = load %Int32, %Int32* %"$uncurry3.uncur_lib_func1_2", align 4
  store %Int32 %"$$uncurry3.uncur_lib_func1_2_206", %Int32* %total_app, align 4, !dbg !29
  %"$gasrem_207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_208" = icmp ugt i64 1, %"$gasrem_207"
  br i1 %"$gascmp_208", label %"$out_of_gas_209", label %"$have_gas_210"

"$out_of_gas_209":                                ; preds = %"$have_gas_196"
  call void @_out_of_gas()
  br label %"$have_gas_210"

"$have_gas_210":                                  ; preds = %"$out_of_gas_209", %"$have_gas_196"
  %"$consume_211" = sub i64 %"$gasrem_207", 1
  store i64 %"$consume_211", i64* @_gasrem, align 8
  %x = alloca %TName_uncurry3.T*, align 8
  %"$gasrem_212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_213" = icmp ugt i64 1, %"$gasrem_212"
  br i1 %"$gascmp_213", label %"$out_of_gas_214", label %"$have_gas_215"

"$out_of_gas_214":                                ; preds = %"$have_gas_210"
  call void @_out_of_gas()
  br label %"$have_gas_215"

"$have_gas_215":                                  ; preds = %"$out_of_gas_214", %"$have_gas_210"
  %"$consume_216" = sub i64 %"$gasrem_212", 1
  store i64 %"$consume_216", i64* @_gasrem, align 8
  %"$uncurry3.uncur_lib_func1_217" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* @uncurry3.uncur_lib_func1, align 8
  %"$adtval_218_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_218_salloc" = call i8* @_salloc(i8* %"$adtval_218_load", i64 17)
  %"$adtval_218" = bitcast i8* %"$adtval_218_salloc" to %CName_uncurry3.C1*
  %"$adtgep_219" = getelementptr inbounds %CName_uncurry3.C1, %CName_uncurry3.C1* %"$adtval_218", i32 0, i32 0
  store i8 0, i8* %"$adtgep_219", align 1
  %"$adtgep_220" = getelementptr inbounds %CName_uncurry3.C1, %CName_uncurry3.C1* %"$adtval_218", i32 0, i32 1
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$uncurry3.uncur_lib_func1_217", { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* %"$adtgep_220", align 8
  %"$adtptr_221" = bitcast %CName_uncurry3.C1* %"$adtval_218" to %TName_uncurry3.T*
  store %TName_uncurry3.T* %"$adtptr_221", %TName_uncurry3.T** %x, align 8, !dbg !30
  %"$gasrem_222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_223" = icmp ugt i64 2, %"$gasrem_222"
  br i1 %"$gascmp_223", label %"$out_of_gas_224", label %"$have_gas_225"

"$out_of_gas_224":                                ; preds = %"$have_gas_215"
  call void @_out_of_gas()
  br label %"$have_gas_225"

"$have_gas_225":                                  ; preds = %"$out_of_gas_224", %"$have_gas_215"
  %"$consume_226" = sub i64 %"$gasrem_222", 2
  store i64 %"$consume_226", i64* @_gasrem, align 8
  %"$x_228" = load %TName_uncurry3.T*, %TName_uncurry3.T** %x, align 8
  %"$x_tag_229" = getelementptr inbounds %TName_uncurry3.T, %TName_uncurry3.T* %"$x_228", i32 0, i32 0
  %"$x_tag_230" = load i8, i8* %"$x_tag_229", align 1
  switch i8 %"$x_tag_230", label %"$default_231" [
    i8 0, label %"$uncurry3.C1_232"
  ], !dbg !31

"$uncurry3.C1_232":                               ; preds = %"$have_gas_225"
  %"$x_233" = bitcast %TName_uncurry3.T* %"$x_228" to %CName_uncurry3.C1*
  %"$v_gep_234" = getelementptr inbounds %CName_uncurry3.C1, %CName_uncurry3.C1* %"$x_233", i32 0, i32 1
  %"$v_load_235" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* %"$v_gep_234", align 8
  %v = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }, align 8
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$v_load_235", { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* %v, align 8
  %"$gasrem_236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_237" = icmp ugt i64 1, %"$gasrem_236"
  br i1 %"$gascmp_237", label %"$out_of_gas_238", label %"$have_gas_239"

"$out_of_gas_238":                                ; preds = %"$uncurry3.C1_232"
  call void @_out_of_gas()
  br label %"$have_gas_239"

"$have_gas_239":                                  ; preds = %"$out_of_gas_238", %"$uncurry3.C1_232"
  %"$consume_240" = sub i64 %"$gasrem_236", 1
  store i64 %"$consume_240", i64* @_gasrem, align 8
  %x_ = alloca %Int32, align 8
  %"$gasrem_241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_242" = icmp ugt i64 1, %"$gasrem_241"
  br i1 %"$gascmp_242", label %"$out_of_gas_243", label %"$have_gas_244"

"$out_of_gas_243":                                ; preds = %"$have_gas_239"
  call void @_out_of_gas()
  br label %"$have_gas_244"

"$have_gas_244":                                  ; preds = %"$out_of_gas_243", %"$have_gas_239"
  %"$consume_245" = sub i64 %"$gasrem_241", 1
  store i64 %"$consume_245", i64* @_gasrem, align 8
  %"$v_3" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$v_246" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* %v, align 8
  %"$v_fptr_247" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$v_246", 0
  %"$v_envptr_248" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$v_246", 1
  %"$total_app_249" = load %Int32, %Int32* %total_app, align 4
  %"$v_call_250" = call { %Int32 (i8*, %Int32)*, i8* } %"$v_fptr_247"(i8* %"$v_envptr_248", %Int32 %"$total_app_249"), !dbg !32
  store { %Int32 (i8*, %Int32)*, i8* } %"$v_call_250", { %Int32 (i8*, %Int32)*, i8* }* %"$v_3", align 8, !dbg !32
  %"$v_4" = alloca %Int32, align 8
  %"$$v_3_251" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$v_3", align 8
  %"$$v_3_fptr_252" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$v_3_251", 0
  %"$$v_3_envptr_253" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$v_3_251", 1
  %"$$v_3_call_254" = call %Int32 %"$$v_3_fptr_252"(i8* %"$$v_3_envptr_253", %Int32 %x1), !dbg !32
  store %Int32 %"$$v_3_call_254", %Int32* %"$v_4", align 4, !dbg !32
  %"$$v_4_255" = load %Int32, %Int32* %"$v_4", align 4
  store %Int32 %"$$v_4_255", %Int32* %x_, align 4, !dbg !32
  %"$_literal_cost_x__256" = alloca %Int32, align 8
  %"$x__257" = load %Int32, %Int32* %x_, align 4
  store %Int32 %"$x__257", %Int32* %"$_literal_cost_x__256", align 4
  %"$$_literal_cost_x__256_258" = bitcast %Int32* %"$_literal_cost_x__256" to i8*
  %"$_literal_cost_call_259" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_23", i8* %"$$_literal_cost_x__256_258")
  %"$gasrem_260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_261" = icmp ugt i64 %"$_literal_cost_call_259", %"$gasrem_260"
  br i1 %"$gascmp_261", label %"$out_of_gas_262", label %"$have_gas_263"

"$out_of_gas_262":                                ; preds = %"$have_gas_244"
  call void @_out_of_gas()
  br label %"$have_gas_263"

"$have_gas_263":                                  ; preds = %"$out_of_gas_262", %"$have_gas_244"
  %"$consume_264" = sub i64 %"$gasrem_260", %"$_literal_cost_call_259"
  store i64 %"$consume_264", i64* @_gasrem, align 8
  %"$execptr_load_265" = load i8*, i8** @_execptr, align 8
  %"$x__267" = load %Int32, %Int32* %x_, align 4
  %"$update_value_268" = alloca %Int32, align 8
  store %Int32 %"$x__267", %Int32* %"$update_value_268", align 4
  %"$update_value_269" = bitcast %Int32* %"$update_value_268" to i8*
  call void @_update_field(i8* %"$execptr_load_265", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$res_266", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_23", i32 0, i8* null, i8* %"$update_value_269"), !dbg !35
  br label %"$matchsucc_227"

"$default_231":                                   ; preds = %"$have_gas_225"
  br label %"$joinp_0"

"$joinp_0":                                       ; preds = %"$default_231"
  br label %"$matchsucc_227"

"$matchsucc_227":                                 ; preds = %"$have_gas_263", %"$joinp_0"
  ret void
}

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @dummy1(i8* %0) !dbg !36 {
entry:
  %"$_amount_271" = getelementptr i8, i8* %0, i32 0
  %"$_amount_272" = bitcast i8* %"$_amount_271" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_272", align 8
  %"$_origin_273" = getelementptr i8, i8* %0, i32 16
  %"$_origin_274" = bitcast i8* %"$_origin_273" to [20 x i8]*
  %"$_sender_275" = getelementptr i8, i8* %0, i32 36
  %"$_sender_276" = bitcast i8* %"$_sender_275" to [20 x i8]*
  %"$x1_277" = getelementptr i8, i8* %0, i32 56
  %"$x1_278" = bitcast i8* %"$x1_277" to %Int32*
  %x1 = load %Int32, %Int32* %"$x1_278", align 4
  %"$x2_279" = getelementptr i8, i8* %0, i32 60
  %"$x2_280" = bitcast i8* %"$x2_279" to %Int32*
  %x2 = load %Int32, %Int32* %"$x2_280", align 4
  call void @"$dummy1_185"(%Uint128 %_amount, [20 x i8]* %"$_origin_274", [20 x i8]* %"$_sender_276", %Int32 %x1, %Int32 %x2), !dbg !37
  ret void
}

define internal void @"$dummy2_281"(%Uint128 %_amount, [20 x i8]* %"$_origin_282", [20 x i8]* %"$_sender_283", %Int32 %x1, %Int32 %x2) !dbg !38 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_282", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_283", align 1
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 1, %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %entry
  %"$consume_288" = sub i64 %"$gasrem_284", 1
  store i64 %"$consume_288", i64* @_gasrem, align 8
  %"$gasrem_289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_290" = icmp ugt i64 1, %"$gasrem_289"
  br i1 %"$gascmp_290", label %"$out_of_gas_291", label %"$have_gas_292"

"$out_of_gas_291":                                ; preds = %"$have_gas_287"
  call void @_out_of_gas()
  br label %"$have_gas_292"

"$have_gas_292":                                  ; preds = %"$out_of_gas_291", %"$have_gas_287"
  %"$consume_293" = sub i64 %"$gasrem_289", 1
  store i64 %"$consume_293", i64* @_gasrem, align 8
  %big_func = alloca { %Int32 (i8*, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* })*, i8* }, align 8
  %"$gasrem_294" = load i64, i64* @_gasrem, align 8
  %"$gascmp_295" = icmp ugt i64 1, %"$gasrem_294"
  br i1 %"$gascmp_295", label %"$out_of_gas_296", label %"$have_gas_297"

"$out_of_gas_296":                                ; preds = %"$have_gas_292"
  call void @_out_of_gas()
  br label %"$have_gas_297"

"$have_gas_297":                                  ; preds = %"$out_of_gas_296", %"$have_gas_292"
  %"$consume_298" = sub i64 %"$gasrem_294", 1
  store i64 %"$consume_298", i64* @_gasrem, align 8
  %f = alloca { %Int32 (i8*, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* })*, i8* }, align 8
  %"$gasrem_299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_300" = icmp ugt i64 1, %"$gasrem_299"
  br i1 %"$gascmp_300", label %"$out_of_gas_301", label %"$have_gas_302"

"$out_of_gas_301":                                ; preds = %"$have_gas_297"
  call void @_out_of_gas()
  br label %"$have_gas_302"

"$have_gas_302":                                  ; preds = %"$out_of_gas_301", %"$have_gas_297"
  %"$consume_303" = sub i64 %"$gasrem_299", 1
  store i64 %"$consume_303", i64* @_gasrem, align 8
  store { %Int32 (i8*, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* })*, i8* } { %Int32 (i8*, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* })* bitcast (%Int32 (%"$$fundef_19_env_60"*, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* })* @"$fundef_19" to %Int32 (i8*, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* })*), i8* null }, { %Int32 (i8*, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* })*, i8* }* %f, align 8, !dbg !39
  %"$gasrem_307" = load i64, i64* @_gasrem, align 8
  %"$gascmp_308" = icmp ugt i64 1, %"$gasrem_307"
  br i1 %"$gascmp_308", label %"$out_of_gas_309", label %"$have_gas_310"

"$out_of_gas_309":                                ; preds = %"$have_gas_302"
  call void @_out_of_gas()
  br label %"$have_gas_310"

"$have_gas_310":                                  ; preds = %"$out_of_gas_309", %"$have_gas_302"
  %"$consume_311" = sub i64 %"$gasrem_307", 1
  store i64 %"$consume_311", i64* @_gasrem, align 8
  %"$f_312" = load { %Int32 (i8*, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* })*, i8* }, { %Int32 (i8*, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* })*, i8* }* %f, align 8
  store { %Int32 (i8*, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* })*, i8* } %"$f_312", { %Int32 (i8*, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* })*, i8* }* %big_func, align 8, !dbg !40
  %"$gasrem_313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_314" = icmp ugt i64 1, %"$gasrem_313"
  br i1 %"$gascmp_314", label %"$out_of_gas_315", label %"$have_gas_316"

"$out_of_gas_315":                                ; preds = %"$have_gas_310"
  call void @_out_of_gas()
  br label %"$have_gas_316"

"$have_gas_316":                                  ; preds = %"$out_of_gas_315", %"$have_gas_310"
  %"$consume_317" = sub i64 %"$gasrem_313", 1
  store i64 %"$consume_317", i64* @_gasrem, align 8
  %x = alloca %Int32, align 8
  %"$gasrem_318" = load i64, i64* @_gasrem, align 8
  %"$gascmp_319" = icmp ugt i64 1, %"$gasrem_318"
  br i1 %"$gascmp_319", label %"$out_of_gas_320", label %"$have_gas_321"

"$out_of_gas_320":                                ; preds = %"$have_gas_316"
  call void @_out_of_gas()
  br label %"$have_gas_321"

"$have_gas_321":                                  ; preds = %"$out_of_gas_320", %"$have_gas_316"
  %"$consume_322" = sub i64 %"$gasrem_318", 1
  store i64 %"$consume_322", i64* @_gasrem, align 8
  %"$big_func_7" = alloca %Int32, align 8
  %"$big_func_323" = load { %Int32 (i8*, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* })*, i8* }, { %Int32 (i8*, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* })*, i8* }* %big_func, align 8
  %"$big_func_fptr_324" = extractvalue { %Int32 (i8*, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* })*, i8* } %"$big_func_323", 0
  %"$big_func_envptr_325" = extractvalue { %Int32 (i8*, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* })*, i8* } %"$big_func_323", 1
  %"$uncurry3.uncur_lib_func2_326" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* }* @uncurry3.uncur_lib_func2, align 8
  %"$big_func_call_327" = call %Int32 %"$big_func_fptr_324"(i8* %"$big_func_envptr_325", { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Int32)*, i8* } %"$uncurry3.uncur_lib_func2_326"), !dbg !41
  store %Int32 %"$big_func_call_327", %Int32* %"$big_func_7", align 4, !dbg !41
  %"$$big_func_7_328" = load %Int32, %Int32* %"$big_func_7", align 4
  store %Int32 %"$$big_func_7_328", %Int32* %x, align 4, !dbg !41
  %"$_literal_cost_x_329" = alloca %Int32, align 8
  %"$x_330" = load %Int32, %Int32* %x, align 4
  store %Int32 %"$x_330", %Int32* %"$_literal_cost_x_329", align 4
  %"$$_literal_cost_x_329_331" = bitcast %Int32* %"$_literal_cost_x_329" to i8*
  %"$_literal_cost_call_332" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_23", i8* %"$$_literal_cost_x_329_331")
  %"$gasrem_333" = load i64, i64* @_gasrem, align 8
  %"$gascmp_334" = icmp ugt i64 %"$_literal_cost_call_332", %"$gasrem_333"
  br i1 %"$gascmp_334", label %"$out_of_gas_335", label %"$have_gas_336"

"$out_of_gas_335":                                ; preds = %"$have_gas_321"
  call void @_out_of_gas()
  br label %"$have_gas_336"

"$have_gas_336":                                  ; preds = %"$out_of_gas_335", %"$have_gas_321"
  %"$consume_337" = sub i64 %"$gasrem_333", %"$_literal_cost_call_332"
  store i64 %"$consume_337", i64* @_gasrem, align 8
  %"$execptr_load_338" = load i8*, i8** @_execptr, align 8
  %"$x_340" = load %Int32, %Int32* %x, align 4
  %"$update_value_341" = alloca %Int32, align 8
  store %Int32 %"$x_340", %Int32* %"$update_value_341", align 4
  %"$update_value_342" = bitcast %Int32* %"$update_value_341" to i8*
  call void @_update_field(i8* %"$execptr_load_338", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$res_339", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_23", i32 0, i8* null, i8* %"$update_value_342"), !dbg !42
  ret void
}

define void @dummy2(i8* %0) !dbg !43 {
entry:
  %"$_amount_344" = getelementptr i8, i8* %0, i32 0
  %"$_amount_345" = bitcast i8* %"$_amount_344" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_345", align 8
  %"$_origin_346" = getelementptr i8, i8* %0, i32 16
  %"$_origin_347" = bitcast i8* %"$_origin_346" to [20 x i8]*
  %"$_sender_348" = getelementptr i8, i8* %0, i32 36
  %"$_sender_349" = bitcast i8* %"$_sender_348" to [20 x i8]*
  %"$x1_350" = getelementptr i8, i8* %0, i32 56
  %"$x1_351" = bitcast i8* %"$x1_350" to %Int32*
  %x1 = load %Int32, %Int32* %"$x1_351", align 4
  %"$x2_352" = getelementptr i8, i8* %0, i32 60
  %"$x2_353" = bitcast i8* %"$x2_352" to %Int32*
  %x2 = load %Int32, %Int32* %"$x2_353", align 4
  call void @"$dummy2_281"(%Uint128 %_amount, [20 x i8]* %"$_origin_347", [20 x i8]* %"$_sender_349", %Int32 %x1, %Int32 %x2), !dbg !44
  ret void
}

define internal void @"$dummy3_354"(%Uint128 %_amount, [20 x i8]* %"$_origin_355", [20 x i8]* %"$_sender_356", %Int32 %x1, %Int32 %x2) !dbg !45 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_355", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_356", align 1
  %"$gasrem_357" = load i64, i64* @_gasrem, align 8
  %"$gascmp_358" = icmp ugt i64 1, %"$gasrem_357"
  br i1 %"$gascmp_358", label %"$out_of_gas_359", label %"$have_gas_360"

"$out_of_gas_359":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_360"

"$have_gas_360":                                  ; preds = %"$out_of_gas_359", %entry
  %"$consume_361" = sub i64 %"$gasrem_357", 1
  store i64 %"$consume_361", i64* @_gasrem, align 8
  %total_app = alloca %Int32, align 8
  %"$gasrem_362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_363" = icmp ugt i64 1, %"$gasrem_362"
  br i1 %"$gascmp_363", label %"$out_of_gas_364", label %"$have_gas_365"

"$out_of_gas_364":                                ; preds = %"$have_gas_360"
  call void @_out_of_gas()
  br label %"$have_gas_365"

"$have_gas_365":                                  ; preds = %"$out_of_gas_364", %"$have_gas_360"
  %"$consume_366" = sub i64 %"$gasrem_362", 1
  store i64 %"$consume_366", i64* @_gasrem, align 8
  %"$uncurry3.uncur_lib_func3_367" = load { %Int32 (i8*, %Int32, %Int32)*, i8* }, { %Int32 (i8*, %Int32, %Int32)*, i8* }* @uncurry3.uncur_lib_func3, align 8
  %"$uncurry3.uncur_lib_func3_fptr_368" = extractvalue { %Int32 (i8*, %Int32, %Int32)*, i8* } %"$uncurry3.uncur_lib_func3_367", 0
  %"$uncurry3.uncur_lib_func3_envptr_369" = extractvalue { %Int32 (i8*, %Int32, %Int32)*, i8* } %"$uncurry3.uncur_lib_func3_367", 1
  %"$uncurry3.uncur_lib_func3_call_370" = call %Int32 %"$uncurry3.uncur_lib_func3_fptr_368"(i8* %"$uncurry3.uncur_lib_func3_envptr_369", %Int32 %x1, %Int32 %x2), !dbg !46
  store %Int32 %"$uncurry3.uncur_lib_func3_call_370", %Int32* %total_app, align 4, !dbg !46
  %"$_literal_cost_total_app_371" = alloca %Int32, align 8
  %"$total_app_372" = load %Int32, %Int32* %total_app, align 4
  store %Int32 %"$total_app_372", %Int32* %"$_literal_cost_total_app_371", align 4
  %"$$_literal_cost_total_app_371_373" = bitcast %Int32* %"$_literal_cost_total_app_371" to i8*
  %"$_literal_cost_call_374" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_23", i8* %"$$_literal_cost_total_app_371_373")
  %"$gasrem_375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_376" = icmp ugt i64 %"$_literal_cost_call_374", %"$gasrem_375"
  br i1 %"$gascmp_376", label %"$out_of_gas_377", label %"$have_gas_378"

"$out_of_gas_377":                                ; preds = %"$have_gas_365"
  call void @_out_of_gas()
  br label %"$have_gas_378"

"$have_gas_378":                                  ; preds = %"$out_of_gas_377", %"$have_gas_365"
  %"$consume_379" = sub i64 %"$gasrem_375", %"$_literal_cost_call_374"
  store i64 %"$consume_379", i64* @_gasrem, align 8
  %"$execptr_load_380" = load i8*, i8** @_execptr, align 8
  %"$total_app_382" = load %Int32, %Int32* %total_app, align 4
  %"$update_value_383" = alloca %Int32, align 8
  store %Int32 %"$total_app_382", %Int32* %"$update_value_383", align 4
  %"$update_value_384" = bitcast %Int32* %"$update_value_383" to i8*
  call void @_update_field(i8* %"$execptr_load_380", i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$res_381", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_23", i32 0, i8* null, i8* %"$update_value_384"), !dbg !47
  ret void
}

define void @dummy3(i8* %0) !dbg !48 {
entry:
  %"$_amount_386" = getelementptr i8, i8* %0, i32 0
  %"$_amount_387" = bitcast i8* %"$_amount_386" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_387", align 8
  %"$_origin_388" = getelementptr i8, i8* %0, i32 16
  %"$_origin_389" = bitcast i8* %"$_origin_388" to [20 x i8]*
  %"$_sender_390" = getelementptr i8, i8* %0, i32 36
  %"$_sender_391" = bitcast i8* %"$_sender_390" to [20 x i8]*
  %"$x1_392" = getelementptr i8, i8* %0, i32 56
  %"$x1_393" = bitcast i8* %"$x1_392" to %Int32*
  %x1 = load %Int32, %Int32* %"$x1_393", align 4
  %"$x2_394" = getelementptr i8, i8* %0, i32 60
  %"$x2_395" = bitcast i8* %"$x2_394" to %Int32*
  %x2 = load %Int32, %Int32* %"$x2_395", align 4
  call void @"$dummy3_354"(%Uint128 %_amount, [20 x i8]* %"$_origin_389", [20 x i8]* %"$_sender_391", %Int32 %x1, %Int32 %x2), !dbg !49
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "uncurry3.scilla", directory: "tests/codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_19", linkageName: "$fundef_19", scope: !2, file: !2, line: 53, type: !5, scopeLine: 53, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 53, column: 26, scope: !4)
!9 = !DILocation(line: 54, column: 26, scope: !4)
!10 = !DILocation(line: 55, column: 17, scope: !4)
!11 = distinct !DISubprogram(name: "$fundef_8", linkageName: "$fundef_8", scope: !2, file: !2, line: 18, type: !5, scopeLine: 18, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!12 = !DILocation(line: 19, column: 13, scope: !11)
!13 = distinct !DISubprogram(name: "$fundef_12", linkageName: "$fundef_12", scope: !2, file: !2, line: 13, type: !5, scopeLine: 13, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!14 = !DILocation(line: 13, column: 13, scope: !13)
!15 = distinct !DISubprogram(name: "$fundef_10", linkageName: "$fundef_10", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 13, column: 13, scope: !15)
!17 = distinct !DISubprogram(name: "$fundef_16", linkageName: "$fundef_16", scope: !2, file: !2, line: 8, type: !5, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!18 = !DILocation(line: 8, column: 13, scope: !17)
!19 = distinct !DISubprogram(name: "$fundef_14", linkageName: "$fundef_14", scope: !2, file: !2, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!20 = !DILocation(line: 8, column: 13, scope: !19)
!21 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !22, file: !22, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!22 = !DIFile(filename: ".", directory: ".")
!23 = !DILocation(line: 7, column: 9, scope: !21)
!24 = !DILocation(line: 12, column: 9, scope: !21)
!25 = !DILocation(line: 18, column: 9, scope: !21)
!26 = distinct !DISubprogram(name: "_init_state", linkageName: "_init_state", scope: !22, file: !22, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!27 = !DILocation(line: 27, column: 21, scope: !26)
!28 = distinct !DISubprogram(name: "dummy1", linkageName: "dummy1", scope: !2, file: !2, line: 29, type: !5, scopeLine: 29, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!29 = !DILocation(line: 32, column: 17, scope: !28)
!30 = !DILocation(line: 35, column: 9, scope: !28)
!31 = !DILocation(line: 37, column: 5, scope: !28)
!32 = !DILocation(line: 39, column: 14, scope: !33)
!33 = distinct !DILexicalBlock(scope: !34, file: !2, line: 38, column: 7)
!34 = distinct !DILexicalBlock(scope: !28, file: !2, line: 37, column: 5)
!35 = !DILocation(line: 40, column: 9, scope: !33)
!36 = distinct !DISubprogram(name: "dummy1", linkageName: "dummy1", scope: !2, file: !2, line: 29, type: !5, scopeLine: 29, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!37 = !DILocation(line: 29, column: 12, scope: !36)
!38 = distinct !DISubprogram(name: "dummy2", linkageName: "dummy2", scope: !2, file: !2, line: 45, type: !5, scopeLine: 45, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!39 = !DILocation(line: 53, column: 17, scope: !38)
!40 = !DILocation(line: 57, column: 9, scope: !38)
!41 = !DILocation(line: 60, column: 9, scope: !38)
!42 = !DILocation(line: 61, column: 5, scope: !38)
!43 = distinct !DISubprogram(name: "dummy2", linkageName: "dummy2", scope: !2, file: !2, line: 45, type: !5, scopeLine: 45, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!44 = !DILocation(line: 45, column: 12, scope: !43)
!45 = distinct !DISubprogram(name: "dummy3", linkageName: "dummy3", scope: !2, file: !2, line: 64, type: !5, scopeLine: 64, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!46 = !DILocation(line: 66, column: 17, scope: !45)
!47 = !DILocation(line: 67, column: 5, scope: !45)
!48 = distinct !DISubprogram(name: "dummy3", linkageName: "dummy3", scope: !2, file: !2, line: 64, type: !5, scopeLine: 64, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!49 = !DILocation(line: 64, column: 12, scope: !48)