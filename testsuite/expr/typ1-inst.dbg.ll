; let tf =
; tfun 'A =>
; tfun 'B =>
; fun (a : 'A) =>
; fun (b : 'B) =>
; b
; in
; 
; let t = @tf Uint32 Int32 in
; let one = Uint32 1 in
; let two = Int32 2 in
; t one two
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_17" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%Int32 = type { i32 }
%"$ParamDescr_206" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_207" = type { %ParamDescrString, i32, %"$ParamDescr_206"* }
%"$$fundef_15_env_54" = type {}
%"$$fundef_13_env_55" = type {}
%Uint32 = type { i32 }
%"$$fundef_11_env_56" = type {}
%"$$fundef_9_env_57" = type {}

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_18" = global %"$TyDescrTy_PrimTyp_17" zeroinitializer
@"$TyDescr_Int32_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Int32_Prim_18" to i8*) }
@"$TyDescr_Uint32_Prim_20" = global %"$TyDescrTy_PrimTyp_17" { i32 1, i32 0 }
@"$TyDescr_Uint32_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Uint32_Prim_20" to i8*) }
@"$TyDescr_Int64_Prim_22" = global %"$TyDescrTy_PrimTyp_17" { i32 0, i32 1 }
@"$TyDescr_Int64_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Int64_Prim_22" to i8*) }
@"$TyDescr_Uint64_Prim_24" = global %"$TyDescrTy_PrimTyp_17" { i32 1, i32 1 }
@"$TyDescr_Uint64_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Uint64_Prim_24" to i8*) }
@"$TyDescr_Int128_Prim_26" = global %"$TyDescrTy_PrimTyp_17" { i32 0, i32 2 }
@"$TyDescr_Int128_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Int128_Prim_26" to i8*) }
@"$TyDescr_Uint128_Prim_28" = global %"$TyDescrTy_PrimTyp_17" { i32 1, i32 2 }
@"$TyDescr_Uint128_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Uint128_Prim_28" to i8*) }
@"$TyDescr_Int256_Prim_30" = global %"$TyDescrTy_PrimTyp_17" { i32 0, i32 3 }
@"$TyDescr_Int256_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Int256_Prim_30" to i8*) }
@"$TyDescr_Uint256_Prim_32" = global %"$TyDescrTy_PrimTyp_17" { i32 1, i32 3 }
@"$TyDescr_Uint256_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Uint256_Prim_32" to i8*) }
@"$TyDescr_String_Prim_34" = global %"$TyDescrTy_PrimTyp_17" { i32 2, i32 0 }
@"$TyDescr_String_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_String_Prim_34" to i8*) }
@"$TyDescr_Bnum_Prim_36" = global %"$TyDescrTy_PrimTyp_17" { i32 3, i32 0 }
@"$TyDescr_Bnum_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Bnum_Prim_36" to i8*) }
@"$TyDescr_Message_Prim_38" = global %"$TyDescrTy_PrimTyp_17" { i32 4, i32 0 }
@"$TyDescr_Message_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Message_Prim_38" to i8*) }
@"$TyDescr_Event_Prim_40" = global %"$TyDescrTy_PrimTyp_17" { i32 5, i32 0 }
@"$TyDescr_Event_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Event_Prim_40" to i8*) }
@"$TyDescr_Exception_Prim_42" = global %"$TyDescrTy_PrimTyp_17" { i32 6, i32 0 }
@"$TyDescr_Exception_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Exception_Prim_42" to i8*) }
@"$TyDescr_ReplicateContr_Prim_44" = global %"$TyDescrTy_PrimTyp_17" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_ReplicateContr_Prim_44" to i8*) }
@"$TyDescr_Bystr_Prim_46" = global %"$TyDescrTy_PrimTyp_17" { i32 7, i32 0 }
@"$TyDescr_Bystr_47" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_17"* @"$TyDescr_Bystr_Prim_46" to i8*) }
@"$_gas_charge_accrec_lib_5" = global %Int32 zeroinitializer
@"$_gas_charge_accBoolUtils_0" = global %Int32 zeroinitializer
@"$_gas_charge_accIntUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accListUtils_2" = global %Int32 zeroinitializer
@"$_gas_charge_accNatUtils_3" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_4" = global %Int32 zeroinitializer
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_41", %_TyDescrTy_Typ* @"$TyDescr_Int64_23", %_TyDescrTy_Typ* @"$TyDescr_Uint256_33", %_TyDescrTy_Typ* @"$TyDescr_Uint32_21", %_TyDescrTy_Typ* @"$TyDescr_Uint64_25", %_TyDescrTy_Typ* @"$TyDescr_Bnum_37", %_TyDescrTy_Typ* @"$TyDescr_Uint128_29", %_TyDescrTy_Typ* @"$TyDescr_Exception_43", %_TyDescrTy_Typ* @"$TyDescr_String_35", %_TyDescrTy_Typ* @"$TyDescr_Int256_31", %_TyDescrTy_Typ* @"$TyDescr_Int128_27", %_TyDescrTy_Typ* @"$TyDescr_Bystr_47", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_45", %_TyDescrTy_Typ* @"$TyDescr_Message_39", %_TyDescrTy_Typ* @"$TyDescr_Int32_19"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_206"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_207"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %Int32 @"$fundef_15"(%"$$fundef_15_env_54"* %0, %Int32 %1) !dbg !3 {
entry:
  %"$b_95" = alloca %Int32, align 8
  store %Int32 %1, %Int32* %"$b_95", align 4
  call void @llvm.dbg.declare(metadata %Int32* %"$b_95", metadata !8, metadata !DIExpression()), !dbg !10
  %"$retval_16" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$retval_16", metadata !11, metadata !DIExpression()), !dbg !12
  %"$gasrem_89" = load i64, i64* @_gasrem, align 8
  %"$gascmp_90" = icmp ugt i64 1, %"$gasrem_89"
  br i1 %"$gascmp_90", label %"$out_of_gas_91", label %"$have_gas_92"

"$out_of_gas_91":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_92"

"$have_gas_92":                                   ; preds = %"$out_of_gas_91", %entry
  %"$consume_93" = sub i64 %"$gasrem_89", 1
  store i64 %"$consume_93", i64* @_gasrem, align 8
  store %Int32 %1, %Int32* %"$retval_16", align 4, !dbg !12
  %"$$retval_16_94" = load %Int32, %Int32* %"$retval_16", align 4
  ret %Int32 %"$$retval_16_94"
}

define internal { %Int32 (i8*, %Int32)*, i8* } @"$fundef_13"(%"$$fundef_13_env_55"* %0, %Uint32 %1) !dbg !13 {
entry:
  %"$a_88" = alloca %Uint32, align 8
  store %Uint32 %1, %Uint32* %"$a_88", align 4
  call void @llvm.dbg.declare(metadata %Uint32* %"$a_88", metadata !14, metadata !DIExpression()), !dbg !16
  %"$retval_14" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$gasrem_79" = load i64, i64* @_gasrem, align 8
  %"$gascmp_80" = icmp ugt i64 1, %"$gasrem_79"
  br i1 %"$gascmp_80", label %"$out_of_gas_81", label %"$have_gas_82"

"$out_of_gas_81":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_82"

"$have_gas_82":                                   ; preds = %"$out_of_gas_81", %entry
  %"$consume_83" = sub i64 %"$gasrem_79", 1
  store i64 %"$consume_83", i64* @_gasrem, align 8
  store { %Int32 (i8*, %Int32)*, i8* } { %Int32 (i8*, %Int32)* bitcast (%Int32 (%"$$fundef_15_env_54"*, %Int32)* @"$fundef_15" to %Int32 (i8*, %Int32)*), i8* null }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_14", align 8, !dbg !17
  %"$$retval_14_87" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$retval_14", align 8
  ret { %Int32 (i8*, %Int32)*, i8* } %"$$retval_14_87"
}

define internal { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } @"$fundef_11"(%"$$fundef_11_env_56"* %0) !dbg !18 {
entry:
  %"$retval_12" = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_70" = load i64, i64* @_gasrem, align 8
  %"$gascmp_71" = icmp ugt i64 1, %"$gasrem_70"
  br i1 %"$gascmp_71", label %"$out_of_gas_72", label %"$have_gas_73"

"$out_of_gas_72":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_73"

"$have_gas_73":                                   ; preds = %"$out_of_gas_72", %entry
  %"$consume_74" = sub i64 %"$gasrem_70", 1
  store i64 %"$consume_74", i64* @_gasrem, align 8
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)* bitcast ({ %Int32 (i8*, %Int32)*, i8* } (%"$$fundef_13_env_55"*, %Uint32)* @"$fundef_13" to { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*), i8* null }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_12", align 8, !dbg !19
  %"$$retval_12_78" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %"$retval_12", align 8
  ret { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$$retval_12_78"
}

define internal { i8*, i8* }* @"$fundef_9"(%"$$fundef_9_env_57"* %0) !dbg !20 {
entry:
  %"$retval_10" = alloca { i8*, i8* }*, align 8
  %"$gasrem_58" = load i64, i64* @_gasrem, align 8
  %"$gascmp_59" = icmp ugt i64 1, %"$gasrem_58"
  br i1 %"$gascmp_59", label %"$out_of_gas_60", label %"$have_gas_61"

"$out_of_gas_60":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_61"

"$have_gas_61":                                   ; preds = %"$out_of_gas_60", %entry
  %"$consume_62" = sub i64 %"$gasrem_58", 1
  store i64 %"$consume_62", i64* @_gasrem, align 8
  %"$dyndisp_table_66_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_66_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_66_salloc_load", i64 32)
  %"$dyndisp_table_66_salloc" = bitcast i8* %"$dyndisp_table_66_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_66" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_66_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_67" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_66", i32 1
  %"$dyndisp_pcast_68" = bitcast { i8*, i8* }* %"$dyndisp_gep_67" to { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  store { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)* bitcast ({ { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (%"$$fundef_11_env_56"*)* @"$fundef_11" to { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*), i8* null }, { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$dyndisp_pcast_68", align 8
  store { i8*, i8* }* %"$dyndisp_table_66", { i8*, i8* }** %"$retval_10", align 8, !dbg !21
  %"$$retval_10_69" = load { i8*, i8* }*, { i8*, i8* }** %"$retval_10", align 8
  ret { i8*, i8* }* %"$$retval_10_69"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

define void @_init_libs() !dbg !22 {
entry:
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 5, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %entry
  %"$consume_100" = sub i64 %"$gasrem_96", 5
  store i64 %"$consume_100", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_accrec_lib_5", align 4, !dbg !24
  %"$gasrem_101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_102" = icmp ugt i64 8, %"$gasrem_101"
  br i1 %"$gascmp_102", label %"$out_of_gas_103", label %"$have_gas_104"

"$out_of_gas_103":                                ; preds = %"$have_gas_99"
  call void @_out_of_gas()
  br label %"$have_gas_104"

"$have_gas_104":                                  ; preds = %"$out_of_gas_103", %"$have_gas_99"
  %"$consume_105" = sub i64 %"$gasrem_101", 8
  store i64 %"$consume_105", i64* @_gasrem, align 8
  store %Int32 { i32 8 }, %Int32* @"$_gas_charge_accBoolUtils_0", align 4, !dbg !24
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 196, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %"$have_gas_104"
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %"$have_gas_104"
  %"$consume_110" = sub i64 %"$gasrem_106", 196
  store i64 %"$consume_110", i64* @_gasrem, align 8
  store %Int32 { i32 196 }, %Int32* @"$_gas_charge_accIntUtils_1", align 4, !dbg !24
  %"$gasrem_111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_112" = icmp ugt i64 20, %"$gasrem_111"
  br i1 %"$gascmp_112", label %"$out_of_gas_113", label %"$have_gas_114"

"$out_of_gas_113":                                ; preds = %"$have_gas_109"
  call void @_out_of_gas()
  br label %"$have_gas_114"

"$have_gas_114":                                  ; preds = %"$out_of_gas_113", %"$have_gas_109"
  %"$consume_115" = sub i64 %"$gasrem_111", 20
  store i64 %"$consume_115", i64* @_gasrem, align 8
  store %Int32 { i32 20 }, %Int32* @"$_gas_charge_accListUtils_2", align 4, !dbg !24
  %"$gasrem_116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_117" = icmp ugt i64 12, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %"$have_gas_114"
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %"$have_gas_114"
  %"$consume_120" = sub i64 %"$gasrem_116", 12
  store i64 %"$consume_120", i64* @_gasrem, align 8
  store %Int32 { i32 12 }, %Int32* @"$_gas_charge_accNatUtils_3", align 4, !dbg !24
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 2, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %"$have_gas_119"
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %"$have_gas_119"
  %"$consume_125" = sub i64 %"$gasrem_121", 2
  store i64 %"$consume_125", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_4", align 4, !dbg !24
  ret void
}

define internal %Int32 @_scilla_expr_fun(i8* %0) !dbg !25 {
entry:
  %"$expr_8" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$expr_8", metadata !26, metadata !DIExpression()), !dbg !27
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 1, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %entry
  %"$consume_130" = sub i64 %"$gasrem_126", 1
  store i64 %"$consume_130", i64* @_gasrem, align 8
  %tf = alloca { i8*, i8* }*, align 8
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$have_gas_129"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$have_gas_129"
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem, align 8
  %"$dyndisp_table_139_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$dyndisp_table_139_salloc_salloc" = call i8* @_salloc(i8* %"$dyndisp_table_139_salloc_load", i64 32)
  %"$dyndisp_table_139_salloc" = bitcast i8* %"$dyndisp_table_139_salloc_salloc" to [2 x { i8*, i8* }]*
  %"$dyndisp_table_139" = bitcast [2 x { i8*, i8* }]* %"$dyndisp_table_139_salloc" to { i8*, i8* }*
  %"$dyndisp_gep_140" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$dyndisp_table_139", i32 0
  %"$dyndisp_pcast_141" = bitcast { i8*, i8* }* %"$dyndisp_gep_140" to { { i8*, i8* }* (i8*)*, i8* }*
  store { { i8*, i8* }* (i8*)*, i8* } { { i8*, i8* }* (i8*)* bitcast ({ i8*, i8* }* (%"$$fundef_9_env_57"*)* @"$fundef_9" to { i8*, i8* }* (i8*)*), i8* null }, { { i8*, i8* }* (i8*)*, i8* }* %"$dyndisp_pcast_141", align 8
  store { i8*, i8* }* %"$dyndisp_table_139", { i8*, i8* }** %tf, align 8, !dbg !27
  %"$gasrem_142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_143" = icmp ugt i64 1, %"$gasrem_142"
  br i1 %"$gascmp_143", label %"$out_of_gas_144", label %"$have_gas_145"

"$out_of_gas_144":                                ; preds = %"$have_gas_134"
  call void @_out_of_gas()
  br label %"$have_gas_145"

"$have_gas_145":                                  ; preds = %"$out_of_gas_144", %"$have_gas_134"
  %"$consume_146" = sub i64 %"$gasrem_142", 1
  store i64 %"$consume_146", i64* @_gasrem, align 8
  %t = alloca { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, align 8
  %"$gasrem_147" = load i64, i64* @_gasrem, align 8
  %"$gascmp_148" = icmp ugt i64 1, %"$gasrem_147"
  br i1 %"$gascmp_148", label %"$out_of_gas_149", label %"$have_gas_150"

"$out_of_gas_149":                                ; preds = %"$have_gas_145"
  call void @_out_of_gas()
  br label %"$have_gas_150"

"$have_gas_150":                                  ; preds = %"$out_of_gas_149", %"$have_gas_145"
  %"$consume_151" = sub i64 %"$gasrem_147", 1
  store i64 %"$consume_151", i64* @_gasrem, align 8
  %"$tf_152" = load { i8*, i8* }*, { i8*, i8* }** %tf, align 8
  %"$tf_153" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_152", i32 0
  %"$tf_154" = bitcast { i8*, i8* }* %"$tf_153" to { { i8*, i8* }* (i8*)*, i8* }*
  %"$tf_155" = load { { i8*, i8* }* (i8*)*, i8* }, { { i8*, i8* }* (i8*)*, i8* }* %"$tf_154", align 8
  %"$tf_fptr_156" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_155", 0
  %"$tf_envptr_157" = extractvalue { { i8*, i8* }* (i8*)*, i8* } %"$tf_155", 1
  %"$tf_call_158" = call { i8*, i8* }* %"$tf_fptr_156"(i8* %"$tf_envptr_157"), !dbg !28
  %"$tf_159" = getelementptr { i8*, i8* }, { i8*, i8* }* %"$tf_call_158", i32 1
  %"$tf_160" = bitcast { i8*, i8* }* %"$tf_159" to { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }*
  %"$tf_161" = load { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }, { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* }* %"$tf_160", align 8
  %"$tf_fptr_162" = extractvalue { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_161", 0
  %"$tf_envptr_163" = extractvalue { { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } (i8*)*, i8* } %"$tf_161", 1
  %"$tf_call_164" = call { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_fptr_162"(i8* %"$tf_envptr_163"), !dbg !28
  store { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$tf_call_164", { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %t, align 8, !dbg !29
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 1, %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %"$have_gas_150"
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %"$have_gas_150"
  %"$consume_169" = sub i64 %"$gasrem_165", 1
  store i64 %"$consume_169", i64* @_gasrem, align 8
  %one = alloca %Uint32, align 8
  call void @llvm.dbg.declare(metadata %Uint32* %one, metadata !30, metadata !DIExpression()), !dbg !31
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 1, %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %"$have_gas_168"
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %"$have_gas_168"
  %"$consume_174" = sub i64 %"$gasrem_170", 1
  store i64 %"$consume_174", i64* @_gasrem, align 8
  store %Uint32 { i32 1 }, %Uint32* %one, align 4, !dbg !32
  %"$gasrem_175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_176" = icmp ugt i64 1, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %"$have_gas_173"
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %"$have_gas_173"
  %"$consume_179" = sub i64 %"$gasrem_175", 1
  store i64 %"$consume_179", i64* @_gasrem, align 8
  %two = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %two, metadata !33, metadata !DIExpression()), !dbg !34
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 1, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %"$have_gas_178"
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %"$have_gas_178"
  %"$consume_184" = sub i64 %"$gasrem_180", 1
  store i64 %"$consume_184", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* %two, align 4, !dbg !35
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 1, %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %"$have_gas_183"
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %"$have_gas_183"
  %"$consume_189" = sub i64 %"$gasrem_185", 1
  store i64 %"$consume_189", i64* @_gasrem, align 8
  %"$t_6" = alloca { %Int32 (i8*, %Int32)*, i8* }, align 8
  %"$t_190" = load { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }, { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* }* %t, align 8
  %"$t_fptr_191" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$t_190", 0
  %"$t_envptr_192" = extractvalue { { %Int32 (i8*, %Int32)*, i8* } (i8*, %Uint32)*, i8* } %"$t_190", 1
  %"$one_193" = load %Uint32, %Uint32* %one, align 4
  %"$t_call_194" = call { %Int32 (i8*, %Int32)*, i8* } %"$t_fptr_191"(i8* %"$t_envptr_192", %Uint32 %"$one_193"), !dbg !36
  store { %Int32 (i8*, %Int32)*, i8* } %"$t_call_194", { %Int32 (i8*, %Int32)*, i8* }* %"$t_6", align 8, !dbg !36
  %"$t_7" = alloca %Int32, align 8
  call void @llvm.dbg.declare(metadata %Int32* %"$t_7", metadata !37, metadata !DIExpression()), !dbg !36
  %"$$t_6_195" = load { %Int32 (i8*, %Int32)*, i8* }, { %Int32 (i8*, %Int32)*, i8* }* %"$t_6", align 8
  %"$$t_6_fptr_196" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$t_6_195", 0
  %"$$t_6_envptr_197" = extractvalue { %Int32 (i8*, %Int32)*, i8* } %"$$t_6_195", 1
  %"$two_198" = load %Int32, %Int32* %two, align 4
  %"$$t_6_call_199" = call %Int32 %"$$t_6_fptr_196"(i8* %"$$t_6_envptr_197", %Int32 %"$two_198"), !dbg !36
  store %Int32 %"$$t_6_call_199", %Int32* %"$t_7", align 4, !dbg !36
  %"$$t_7_200" = load %Int32, %Int32* %"$t_7", align 4
  store %Int32 %"$$t_7_200", %Int32* %"$expr_8", align 4, !dbg !36
  %"$$expr_8_201" = load %Int32, %Int32* %"$expr_8", align 4
  ret %Int32 %"$$expr_8_201"
}

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_202" = call %Int32 @_scilla_expr_fun(i8* null)
  %"$pval_203" = alloca %Int32, align 8
  %"$memvoidcast_204" = bitcast %Int32* %"$pval_203" to i8*
  store %Int32 %"$exprval_202", %Int32* %"$pval_203", align 4
  %"$execptr_load_205" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_205", %_TyDescrTy_Typ* @"$TyDescr_Int32_19", i8* %"$memvoidcast_204")
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "typ1-inst.scilexp", directory: "codegen/expr")
!3 = distinct !DISubprogram(name: "$fundef_15", linkageName: "$fundef_15", scope: !2, file: !2, line: 6, type: !4, scopeLine: 6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!7 = !{}
!8 = !DILocalVariable(name: "b", scope: !3, file: !2, line: 5, type: !9)
!9 = !DIBasicType(name: "Int32", size: 4)
!10 = !DILocation(line: 5, column: 8, scope: !3)
!11 = !DILocalVariable(name: "$retval_16", scope: !3, file: !2, line: 6, type: !9)
!12 = !DILocation(line: 6, column: 5, scope: !3)
!13 = distinct !DISubprogram(name: "$fundef_13", linkageName: "$fundef_13", scope: !2, file: !2, line: 5, type: !4, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!14 = !DILocalVariable(name: "a", scope: !13, file: !2, line: 4, type: !15)
!15 = !DIBasicType(name: "Uint32", size: 4)
!16 = !DILocation(line: 4, column: 8, scope: !13)
!17 = !DILocation(line: 6, column: 5, scope: !13)
!18 = distinct !DISubprogram(name: "$fundef_11", linkageName: "$fundef_11", scope: !2, file: !2, line: 5, type: !4, scopeLine: 5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!19 = !DILocation(line: 5, column: 3, scope: !18)
!20 = distinct !DISubprogram(name: "$fundef_9", linkageName: "$fundef_9", scope: !2, file: !2, line: 3, type: !4, scopeLine: 3, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!21 = !DILocation(line: 3, column: 3, scope: !20)
!22 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !23, file: !23, type: !4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !7)
!23 = !DIFile(filename: ".", directory: ".")
!24 = !DILocation(line: 0, scope: !22)
!25 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 2, type: !4, scopeLine: 2, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !7)
!26 = !DILocalVariable(name: "$expr_8", scope: !25, file: !2, line: 2, type: !9)
!27 = !DILocation(line: 2, column: 3, scope: !25)
!28 = !DILocation(line: 9, column: 10, scope: !25)
!29 = !DILocation(line: 9, column: 9, scope: !25)
!30 = !DILocalVariable(name: "one", scope: !25, file: !2, line: 10, type: !15)
!31 = !DILocation(line: 10, column: 5, scope: !25)
!32 = !DILocation(line: 10, column: 11, scope: !25)
!33 = !DILocalVariable(name: "two", scope: !25, file: !2, line: 11, type: !9)
!34 = !DILocation(line: 11, column: 5, scope: !25)
!35 = !DILocation(line: 11, column: 11, scope: !25)
!36 = !DILocation(line: 12, column: 1, scope: !25)
!37 = !DILocalVariable(name: "$t_7", scope: !25, file: !2, line: 12, type: !9)
