; let x = Int32 42 in
; let y = Int32 41 in
; let f = fun (o : Option (Option Int32)) =>
; match o with
; | None => x
; | Some None => y
; | Some (Some z) => z
; end
; in
; let o1 = Some {Int32} x in
; let o2 = Some {(Option Int32)} o1 in
; f o2
; 
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_5" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_35" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_34"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_34" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_36"**, %"$TyDescrTy_ADTTyp_35"* }
%"$TyDescrTy_ADTTyp_Constr_36" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%Int32 = type { i32 }
%"$$fundef_3_env_61" = type { %Int32, %Int32 }
%"TName_Option_Option_(Int32)" = type { i8, %"CName_Some_Option_(Int32)"*, %"CName_None_Option_(Int32)"* }
%"CName_Some_Option_(Int32)" = type <{ i8, %TName_Option_Int32* }>
%TName_Option_Int32 = type { i8, %CName_Some_Int32*, %CName_None_Int32* }
%CName_Some_Int32 = type <{ i8, %Int32 }>
%CName_None_Int32 = type <{ i8 }>
%"CName_None_Option_(Int32)" = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_6" = global %"$TyDescrTy_PrimTyp_5" zeroinitializer
@"$TyDescr_Int32_7" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int32_Prim_6" to i8*) }
@"$TyDescr_Uint32_Prim_8" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 0 }
@"$TyDescr_Uint32_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint32_Prim_8" to i8*) }
@"$TyDescr_Int64_Prim_10" = global %"$TyDescrTy_PrimTyp_5" { i32 0, i32 1 }
@"$TyDescr_Int64_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int64_Prim_10" to i8*) }
@"$TyDescr_Uint64_Prim_12" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 1 }
@"$TyDescr_Uint64_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint64_Prim_12" to i8*) }
@"$TyDescr_Int128_Prim_14" = global %"$TyDescrTy_PrimTyp_5" { i32 0, i32 2 }
@"$TyDescr_Int128_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int128_Prim_14" to i8*) }
@"$TyDescr_Uint128_Prim_16" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 2 }
@"$TyDescr_Uint128_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint128_Prim_16" to i8*) }
@"$TyDescr_Int256_Prim_18" = global %"$TyDescrTy_PrimTyp_5" { i32 0, i32 3 }
@"$TyDescr_Int256_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Int256_Prim_18" to i8*) }
@"$TyDescr_Uint256_Prim_20" = global %"$TyDescrTy_PrimTyp_5" { i32 1, i32 3 }
@"$TyDescr_Uint256_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Uint256_Prim_20" to i8*) }
@"$TyDescr_String_Prim_22" = global %"$TyDescrTy_PrimTyp_5" { i32 2, i32 0 }
@"$TyDescr_String_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_String_Prim_22" to i8*) }
@"$TyDescr_Bnum_Prim_24" = global %"$TyDescrTy_PrimTyp_5" { i32 3, i32 0 }
@"$TyDescr_Bnum_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bnum_Prim_24" to i8*) }
@"$TyDescr_Message_Prim_26" = global %"$TyDescrTy_PrimTyp_5" { i32 4, i32 0 }
@"$TyDescr_Message_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Message_Prim_26" to i8*) }
@"$TyDescr_Event_Prim_28" = global %"$TyDescrTy_PrimTyp_5" { i32 5, i32 0 }
@"$TyDescr_Event_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Event_Prim_28" to i8*) }
@"$TyDescr_Exception_Prim_30" = global %"$TyDescrTy_PrimTyp_5" { i32 6, i32 0 }
@"$TyDescr_Exception_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Exception_Prim_30" to i8*) }
@"$TyDescr_Bystr_Prim_32" = global %"$TyDescrTy_PrimTyp_5" { i32 7, i32 0 }
@"$TyDescr_Bystr_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_5"* @"$TyDescr_Bystr_Prim_32" to i8*) }
@"$TyDescr_ADT_Option_Int32_37" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_34"* @"$TyDescr_Option_Int32_ADTTyp_Specl_49" to i8*) }
@"$TyDescr_ADT_Option_Option_(Int32)_38" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_34"* @"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_58" to i8*) }
@"$TyDescr_Option_ADTTyp_40" = unnamed_addr constant %"$TyDescrTy_ADTTyp_35" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_60", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_34"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_34"*], [2 x %"$TyDescrTy_ADTTyp_Specl_34"*]* @"$TyDescr_Option_ADTTyp_m_specls_59", i32 0, i32 0) }
@"$TyDescr_Option_Some_Int32_Constr_m_args_41" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@"$TyDescr_ADT_Some_42" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Int32_ADTTyp_Constr_43" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_42", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Int32_Constr_m_args_41", i32 0, i32 0) }
@"$TyDescr_Option_None_Int32_Constr_m_args_44" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_45" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Int32_ADTTyp_Constr_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_45", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Int32_Constr_m_args_44", i32 0, i32 0) }
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_47" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_36"*] [%"$TyDescrTy_ADTTyp_Constr_36"* @"$TyDescr_Option_Some_Int32_ADTTyp_Constr_43", %"$TyDescrTy_ADTTyp_Constr_36"* @"$TyDescr_Option_None_Int32_ADTTyp_Constr_46"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_48" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_34" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_48", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_36"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_36"*], [2 x %"$TyDescrTy_ADTTyp_Constr_36"*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_47", i32 0, i32 0), %"$TyDescrTy_ADTTyp_35"* @"$TyDescr_Option_ADTTyp_40" }
@"$TyDescr_Option_Some_Option_(Int32)_Constr_m_args_50" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_37"]
@"$TyDescr_ADT_Some_51" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Option_(Int32)_ADTTyp_Constr_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_51", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Option_(Int32)_Constr_m_args_50", i32 0, i32 0) }
@"$TyDescr_Option_None_Option_(Int32)_Constr_m_args_53" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_54" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Option_(Int32)_ADTTyp_Constr_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_54", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Option_(Int32)_Constr_m_args_53", i32 0, i32 0) }
@"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_m_constrs_56" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_36"*] [%"$TyDescrTy_ADTTyp_Constr_36"* @"$TyDescr_Option_Some_Option_(Int32)_ADTTyp_Constr_52", %"$TyDescrTy_ADTTyp_Constr_36"* @"$TyDescr_Option_None_Option_(Int32)_ADTTyp_Constr_55"]
@"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_m_TArgs_57" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_37"]
@"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_34" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_m_TArgs_57", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_36"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_36"*], [2 x %"$TyDescrTy_ADTTyp_Constr_36"*]* @"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_m_constrs_56", i32 0, i32 0), %"$TyDescrTy_ADTTyp_35"* @"$TyDescr_Option_ADTTyp_40" }
@"$TyDescr_Option_ADTTyp_m_specls_59" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_34"*] [%"$TyDescrTy_ADTTyp_Specl_34"* @"$TyDescr_Option_Int32_ADTTyp_Specl_49", %"$TyDescrTy_ADTTyp_Specl_34"* @"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_58"]
@"$TyDescr_ADT_Option_60" = unnamed_addr constant [6 x i8] c"Option"

define internal %Int32 @"$fundef_3"(%"$$fundef_3_env_61"* %0, %"TName_Option_Option_(Int32)"* %1) !dbg !4 {
entry:
  %"$$fundef_3_env_x_62" = getelementptr inbounds %"$$fundef_3_env_61", %"$$fundef_3_env_61"* %0, i32 0, i32 0
  %"$x_envload_63" = load %Int32, %Int32* %"$$fundef_3_env_x_62", align 4
  %x = alloca %Int32, align 8
  store %Int32 %"$x_envload_63", %Int32* %x, align 4
  %"$$fundef_3_env_y_64" = getelementptr inbounds %"$$fundef_3_env_61", %"$$fundef_3_env_61"* %0, i32 0, i32 1
  %"$y_envload_65" = load %Int32, %Int32* %"$$fundef_3_env_y_64", align 4
  %y = alloca %Int32, align 8
  store %Int32 %"$y_envload_65", %Int32* %y, align 4
  %"$retval_4" = alloca %Int32, align 8
  %"$gasrem_66" = load i64, i64* @_gasrem, align 8
  %"$gascmp_67" = icmp ugt i64 3, %"$gasrem_66"
  br i1 %"$gascmp_67", label %"$out_of_gas_68", label %"$have_gas_69"

"$out_of_gas_68":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_69"

"$have_gas_69":                                   ; preds = %"$out_of_gas_68", %entry
  %"$consume_70" = sub i64 %"$gasrem_66", 3
  store i64 %"$consume_70", i64* @_gasrem, align 8
  %"$o_tag_72" = getelementptr inbounds %"TName_Option_Option_(Int32)", %"TName_Option_Option_(Int32)"* %1, i32 0, i32 0
  %"$o_tag_73" = load i8, i8* %"$o_tag_72", align 1
  switch i8 %"$o_tag_73", label %"$empty_default_74" [
    i8 1, label %"$None_75"
    i8 0, label %"$Some_83"
  ], !dbg !8

"$None_75":                                       ; preds = %"$have_gas_69"
  %"$o_76" = bitcast %"TName_Option_Option_(Int32)"* %1 to %"CName_None_Option_(Int32)"*
  %"$gasrem_77" = load i64, i64* @_gasrem, align 8
  %"$gascmp_78" = icmp ugt i64 1, %"$gasrem_77"
  br i1 %"$gascmp_78", label %"$out_of_gas_79", label %"$have_gas_80"

"$out_of_gas_79":                                 ; preds = %"$None_75"
  call void @_out_of_gas()
  br label %"$have_gas_80"

"$have_gas_80":                                   ; preds = %"$out_of_gas_79", %"$None_75"
  %"$consume_81" = sub i64 %"$gasrem_77", 1
  store i64 %"$consume_81", i64* @_gasrem, align 8
  %"$x_82" = load %Int32, %Int32* %x, align 4
  store %Int32 %"$x_82", %Int32* %"$retval_4", align 4, !dbg !9
  br label %"$matchsucc_71"

"$Some_83":                                       ; preds = %"$have_gas_69"
  %"$o_84" = bitcast %"TName_Option_Option_(Int32)"* %1 to %"CName_Some_Option_(Int32)"*
  %"$$o_0_gep_85" = getelementptr inbounds %"CName_Some_Option_(Int32)", %"CName_Some_Option_(Int32)"* %"$o_84", i32 0, i32 1
  %"$$o_0_load_86" = load %TName_Option_Int32*, %TName_Option_Int32** %"$$o_0_gep_85", align 8
  %"$o_0" = alloca %TName_Option_Int32*, align 8
  store %TName_Option_Int32* %"$$o_0_load_86", %TName_Option_Int32** %"$o_0", align 8
  %"$$o_0_88" = load %TName_Option_Int32*, %TName_Option_Int32** %"$o_0", align 8
  %"$$o_0_tag_89" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$o_0_88", i32 0, i32 0
  %"$$o_0_tag_90" = load i8, i8* %"$$o_0_tag_89", align 1
  switch i8 %"$$o_0_tag_90", label %"$empty_default_91" [
    i8 1, label %"$None_92"
    i8 0, label %"$Some_100"
  ], !dbg !12

"$None_92":                                       ; preds = %"$Some_83"
  %"$$o_0_93" = bitcast %TName_Option_Int32* %"$$o_0_88" to %CName_None_Int32*
  %"$gasrem_94" = load i64, i64* @_gasrem, align 8
  %"$gascmp_95" = icmp ugt i64 1, %"$gasrem_94"
  br i1 %"$gascmp_95", label %"$out_of_gas_96", label %"$have_gas_97"

"$out_of_gas_96":                                 ; preds = %"$None_92"
  call void @_out_of_gas()
  br label %"$have_gas_97"

"$have_gas_97":                                   ; preds = %"$out_of_gas_96", %"$None_92"
  %"$consume_98" = sub i64 %"$gasrem_94", 1
  store i64 %"$consume_98", i64* @_gasrem, align 8
  %"$y_99" = load %Int32, %Int32* %y, align 4
  store %Int32 %"$y_99", %Int32* %"$retval_4", align 4, !dbg !14
  br label %"$matchsucc_87"

"$Some_100":                                      ; preds = %"$Some_83"
  %"$$o_0_101" = bitcast %TName_Option_Int32* %"$$o_0_88" to %CName_Some_Int32*
  %"$z_gep_102" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$o_0_101", i32 0, i32 1
  %"$z_load_103" = load %Int32, %Int32* %"$z_gep_102", align 4
  %z = alloca %Int32, align 8
  store %Int32 %"$z_load_103", %Int32* %z, align 4
  %"$gasrem_104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_105" = icmp ugt i64 1, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %"$Some_100"
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %"$Some_100"
  %"$consume_108" = sub i64 %"$gasrem_104", 1
  store i64 %"$consume_108", i64* @_gasrem, align 8
  %"$z_109" = load %Int32, %Int32* %z, align 4
  store %Int32 %"$z_109", %Int32* %"$retval_4", align 4, !dbg !17
  br label %"$matchsucc_87"

"$empty_default_91":                              ; preds = %"$Some_83"
  br label %"$matchsucc_87"

"$matchsucc_87":                                  ; preds = %"$have_gas_107", %"$have_gas_97", %"$empty_default_91"
  br label %"$matchsucc_71"

"$empty_default_74":                              ; preds = %"$have_gas_69"
  br label %"$matchsucc_71"

"$matchsucc_71":                                  ; preds = %"$matchsucc_87", %"$have_gas_80", %"$empty_default_74"
  %"$$retval_4_110" = load %Int32, %Int32* %"$retval_4", align 4
  ret %Int32 %"$$retval_4_110"
}

declare void @_out_of_gas()

define void @_init_libs() !dbg !19 {
entry:
  ret void
}

define internal %Int32 @_scilla_expr_fun(i8* %0) !dbg !21 {
entry:
  %"$expr_2" = alloca %Int32, align 8
  %"$gasrem_111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_112" = icmp ugt i64 1, %"$gasrem_111"
  br i1 %"$gascmp_112", label %"$out_of_gas_113", label %"$have_gas_114"

"$out_of_gas_113":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_114"

"$have_gas_114":                                  ; preds = %"$out_of_gas_113", %entry
  %"$consume_115" = sub i64 %"$gasrem_111", 1
  store i64 %"$consume_115", i64* @_gasrem, align 8
  %x = alloca %Int32, align 8
  %"$gasrem_116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_117" = icmp ugt i64 1, %"$gasrem_116"
  br i1 %"$gascmp_117", label %"$out_of_gas_118", label %"$have_gas_119"

"$out_of_gas_118":                                ; preds = %"$have_gas_114"
  call void @_out_of_gas()
  br label %"$have_gas_119"

"$have_gas_119":                                  ; preds = %"$out_of_gas_118", %"$have_gas_114"
  %"$consume_120" = sub i64 %"$gasrem_116", 1
  store i64 %"$consume_120", i64* @_gasrem, align 8
  store %Int32 { i32 42 }, %Int32* %x, align 4, !dbg !22
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 1, %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %"$have_gas_119"
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %"$have_gas_119"
  %"$consume_125" = sub i64 %"$gasrem_121", 1
  store i64 %"$consume_125", i64* @_gasrem, align 8
  %y = alloca %Int32, align 8
  %"$gasrem_126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_127" = icmp ugt i64 1, %"$gasrem_126"
  br i1 %"$gascmp_127", label %"$out_of_gas_128", label %"$have_gas_129"

"$out_of_gas_128":                                ; preds = %"$have_gas_124"
  call void @_out_of_gas()
  br label %"$have_gas_129"

"$have_gas_129":                                  ; preds = %"$out_of_gas_128", %"$have_gas_124"
  %"$consume_130" = sub i64 %"$gasrem_126", 1
  store i64 %"$consume_130", i64* @_gasrem, align 8
  store %Int32 { i32 41 }, %Int32* %y, align 4, !dbg !23
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$have_gas_129"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$have_gas_129"
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem, align 8
  %f = alloca { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }, align 8
  %"$gasrem_136" = load i64, i64* @_gasrem, align 8
  %"$gascmp_137" = icmp ugt i64 1, %"$gasrem_136"
  br i1 %"$gascmp_137", label %"$out_of_gas_138", label %"$have_gas_139"

"$out_of_gas_138":                                ; preds = %"$have_gas_134"
  call void @_out_of_gas()
  br label %"$have_gas_139"

"$have_gas_139":                                  ; preds = %"$out_of_gas_138", %"$have_gas_134"
  %"$consume_140" = sub i64 %"$gasrem_136", 1
  store i64 %"$consume_140", i64* @_gasrem, align 8
  %"$$fundef_3_envp_141_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_3_envp_141_salloc" = call i8* @_salloc(i8* %"$$fundef_3_envp_141_load", i64 8)
  %"$$fundef_3_envp_141" = bitcast i8* %"$$fundef_3_envp_141_salloc" to %"$$fundef_3_env_61"*
  %"$$fundef_3_env_voidp_143" = bitcast %"$$fundef_3_env_61"* %"$$fundef_3_envp_141" to i8*
  %"$$fundef_3_cloval_144" = insertvalue { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)* bitcast (%Int32 (%"$$fundef_3_env_61"*, %"TName_Option_Option_(Int32)"*)* @"$fundef_3" to %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*), i8* undef }, i8* %"$$fundef_3_env_voidp_143", 1
  %"$$fundef_3_env_x_145" = getelementptr inbounds %"$$fundef_3_env_61", %"$$fundef_3_env_61"* %"$$fundef_3_envp_141", i32 0, i32 0
  %"$x_146" = load %Int32, %Int32* %x, align 4
  store %Int32 %"$x_146", %Int32* %"$$fundef_3_env_x_145", align 4
  %"$$fundef_3_env_y_147" = getelementptr inbounds %"$$fundef_3_env_61", %"$$fundef_3_env_61"* %"$$fundef_3_envp_141", i32 0, i32 1
  %"$y_148" = load %Int32, %Int32* %y, align 4
  store %Int32 %"$y_148", %Int32* %"$$fundef_3_env_y_147", align 4
  store { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } %"$$fundef_3_cloval_144", { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }* %f, align 8, !dbg !24
  %"$gasrem_149" = load i64, i64* @_gasrem, align 8
  %"$gascmp_150" = icmp ugt i64 1, %"$gasrem_149"
  br i1 %"$gascmp_150", label %"$out_of_gas_151", label %"$have_gas_152"

"$out_of_gas_151":                                ; preds = %"$have_gas_139"
  call void @_out_of_gas()
  br label %"$have_gas_152"

"$have_gas_152":                                  ; preds = %"$out_of_gas_151", %"$have_gas_139"
  %"$consume_153" = sub i64 %"$gasrem_149", 1
  store i64 %"$consume_153", i64* @_gasrem, align 8
  %o1 = alloca %TName_Option_Int32*, align 8
  %"$gasrem_154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_155" = icmp ugt i64 1, %"$gasrem_154"
  br i1 %"$gascmp_155", label %"$out_of_gas_156", label %"$have_gas_157"

"$out_of_gas_156":                                ; preds = %"$have_gas_152"
  call void @_out_of_gas()
  br label %"$have_gas_157"

"$have_gas_157":                                  ; preds = %"$out_of_gas_156", %"$have_gas_152"
  %"$consume_158" = sub i64 %"$gasrem_154", 1
  store i64 %"$consume_158", i64* @_gasrem, align 8
  %"$x_159" = load %Int32, %Int32* %x, align 4
  %"$adtval_160_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_160_salloc" = call i8* @_salloc(i8* %"$adtval_160_load", i64 5)
  %"$adtval_160" = bitcast i8* %"$adtval_160_salloc" to %CName_Some_Int32*
  %"$adtgep_161" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$adtval_160", i32 0, i32 0
  store i8 0, i8* %"$adtgep_161", align 1
  %"$adtgep_162" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$adtval_160", i32 0, i32 1
  store %Int32 %"$x_159", %Int32* %"$adtgep_162", align 4
  %"$adtptr_163" = bitcast %CName_Some_Int32* %"$adtval_160" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$adtptr_163", %TName_Option_Int32** %o1, align 8, !dbg !25
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 1, %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %"$have_gas_157"
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %"$have_gas_157"
  %"$consume_168" = sub i64 %"$gasrem_164", 1
  store i64 %"$consume_168", i64* @_gasrem, align 8
  %o2 = alloca %"TName_Option_Option_(Int32)"*, align 8
  %"$gasrem_169" = load i64, i64* @_gasrem, align 8
  %"$gascmp_170" = icmp ugt i64 1, %"$gasrem_169"
  br i1 %"$gascmp_170", label %"$out_of_gas_171", label %"$have_gas_172"

"$out_of_gas_171":                                ; preds = %"$have_gas_167"
  call void @_out_of_gas()
  br label %"$have_gas_172"

"$have_gas_172":                                  ; preds = %"$out_of_gas_171", %"$have_gas_167"
  %"$consume_173" = sub i64 %"$gasrem_169", 1
  store i64 %"$consume_173", i64* @_gasrem, align 8
  %"$o1_174" = load %TName_Option_Int32*, %TName_Option_Int32** %o1, align 8
  %"$adtval_175_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_175_salloc" = call i8* @_salloc(i8* %"$adtval_175_load", i64 9)
  %"$adtval_175" = bitcast i8* %"$adtval_175_salloc" to %"CName_Some_Option_(Int32)"*
  %"$adtgep_176" = getelementptr inbounds %"CName_Some_Option_(Int32)", %"CName_Some_Option_(Int32)"* %"$adtval_175", i32 0, i32 0
  store i8 0, i8* %"$adtgep_176", align 1
  %"$adtgep_177" = getelementptr inbounds %"CName_Some_Option_(Int32)", %"CName_Some_Option_(Int32)"* %"$adtval_175", i32 0, i32 1
  store %TName_Option_Int32* %"$o1_174", %TName_Option_Int32** %"$adtgep_177", align 8
  %"$adtptr_178" = bitcast %"CName_Some_Option_(Int32)"* %"$adtval_175" to %"TName_Option_Option_(Int32)"*
  store %"TName_Option_Option_(Int32)"* %"$adtptr_178", %"TName_Option_Option_(Int32)"** %o2, align 8, !dbg !26
  %"$gasrem_179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_180" = icmp ugt i64 1, %"$gasrem_179"
  br i1 %"$gascmp_180", label %"$out_of_gas_181", label %"$have_gas_182"

"$out_of_gas_181":                                ; preds = %"$have_gas_172"
  call void @_out_of_gas()
  br label %"$have_gas_182"

"$have_gas_182":                                  ; preds = %"$out_of_gas_181", %"$have_gas_172"
  %"$consume_183" = sub i64 %"$gasrem_179", 1
  store i64 %"$consume_183", i64* @_gasrem, align 8
  %"$f_1" = alloca %Int32, align 8
  %"$f_184" = load { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }, { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }* %f, align 8
  %"$f_fptr_185" = extractvalue { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } %"$f_184", 0
  %"$f_envptr_186" = extractvalue { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } %"$f_184", 1
  %"$o2_187" = load %"TName_Option_Option_(Int32)"*, %"TName_Option_Option_(Int32)"** %o2, align 8
  %"$f_call_188" = call %Int32 %"$f_fptr_185"(i8* %"$f_envptr_186", %"TName_Option_Option_(Int32)"* %"$o2_187"), !dbg !27
  store %Int32 %"$f_call_188", %Int32* %"$f_1", align 4, !dbg !27
  %"$$f_1_189" = load %Int32, %Int32* %"$f_1", align 4
  store %Int32 %"$$f_1_189", %Int32* %"$expr_2", align 4, !dbg !27
  %"$$expr_2_190" = load %Int32, %Int32* %"$expr_2", align 4
  ret %Int32 %"$$expr_2_190"
}

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_191" = call %Int32 @_scilla_expr_fun(i8* null)
  %"$pval_192" = alloca %Int32, align 8
  %"$memvoidcast_193" = bitcast %Int32* %"$pval_192" to i8*
  store %Int32 %"$exprval_191", %Int32* %"$pval_192", align 4
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Int32_7", i8* %"$memvoidcast_193")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "pm2.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_3", linkageName: "$fundef_3", scope: !2, file: !2, line: 4, type: !5, scopeLine: 4, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 4, column: 3, scope: !4)
!9 = !DILocation(line: 5, column: 13, scope: !10)
!10 = distinct !DILexicalBlock(scope: !11, file: !2, line: 5, column: 5)
!11 = distinct !DILexicalBlock(scope: !4, file: !2, line: 4, column: 3)
!12 = !DILocation(line: 4, column: 3, scope: !13)
!13 = distinct !DILexicalBlock(scope: !11, file: !2, line: 6, column: 5)
!14 = !DILocation(line: 6, column: 18, scope: !15)
!15 = distinct !DILexicalBlock(scope: !16, file: !2, line: 6, column: 10)
!16 = distinct !DILexicalBlock(scope: !13, file: !2, line: 4, column: 3)
!17 = !DILocation(line: 7, column: 22, scope: !18)
!18 = distinct !DILexicalBlock(scope: !16, file: !2, line: 7, column: 11)
!19 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !20, file: !20, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!20 = !DIFile(filename: ".", directory: ".")
!21 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !5, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!22 = !DILocation(line: 1, column: 9, scope: !21)
!23 = !DILocation(line: 2, column: 9, scope: !21)
!24 = !DILocation(line: 4, column: 3, scope: !21)
!25 = !DILocation(line: 10, column: 10, scope: !21)
!26 = !DILocation(line: 11, column: 10, scope: !21)
!27 = !DILocation(line: 12, column: 1, scope: !21)
