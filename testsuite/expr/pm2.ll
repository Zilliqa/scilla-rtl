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
target triple = "x86_64-pc-linux-gnu"

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

define internal %Int32 @"$fundef_3"(%"$$fundef_3_env_61"* %0, %"TName_Option_Option_(Int32)"* %1) {
entry:
  %"$$fundef_3_env_x_62" = getelementptr inbounds %"$$fundef_3_env_61", %"$$fundef_3_env_61"* %0, i32 0, i32 0
  %"$x_envload_63" = load %Int32, %Int32* %"$$fundef_3_env_x_62"
  %x = alloca %Int32
  store %Int32 %"$x_envload_63", %Int32* %x
  %"$$fundef_3_env_y_64" = getelementptr inbounds %"$$fundef_3_env_61", %"$$fundef_3_env_61"* %0, i32 0, i32 1
  %"$y_envload_65" = load %Int32, %Int32* %"$$fundef_3_env_y_64"
  %y = alloca %Int32
  store %Int32 %"$y_envload_65", %Int32* %y
  %"$retval_4" = alloca %Int32
  %"$gasrem_66" = load i64, i64* @_gasrem
  %"$gascmp_67" = icmp ugt i64 3, %"$gasrem_66"
  br i1 %"$gascmp_67", label %"$out_of_gas_68", label %"$have_gas_69"

"$out_of_gas_68":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_69"

"$have_gas_69":                                   ; preds = %"$out_of_gas_68", %entry
  %"$consume_70" = sub i64 %"$gasrem_66", 3
  store i64 %"$consume_70", i64* @_gasrem
  %"$o_tag_72" = getelementptr inbounds %"TName_Option_Option_(Int32)", %"TName_Option_Option_(Int32)"* %1, i32 0, i32 0
  %"$o_tag_73" = load i8, i8* %"$o_tag_72"
  switch i8 %"$o_tag_73", label %"$empty_default_74" [
    i8 1, label %"$None_75"
    i8 0, label %"$Some_83"
  ]

"$None_75":                                       ; preds = %"$have_gas_69"
  %"$o_76" = bitcast %"TName_Option_Option_(Int32)"* %1 to %"CName_None_Option_(Int32)"*
  %"$gasrem_77" = load i64, i64* @_gasrem
  %"$gascmp_78" = icmp ugt i64 1, %"$gasrem_77"
  br i1 %"$gascmp_78", label %"$out_of_gas_79", label %"$have_gas_80"

"$out_of_gas_79":                                 ; preds = %"$None_75"
  call void @_out_of_gas()
  br label %"$have_gas_80"

"$have_gas_80":                                   ; preds = %"$out_of_gas_79", %"$None_75"
  %"$consume_81" = sub i64 %"$gasrem_77", 1
  store i64 %"$consume_81", i64* @_gasrem
  %"$x_82" = load %Int32, %Int32* %x
  store %Int32 %"$x_82", %Int32* %"$retval_4"
  br label %"$matchsucc_71"

"$Some_83":                                       ; preds = %"$have_gas_69"
  %"$o_84" = bitcast %"TName_Option_Option_(Int32)"* %1 to %"CName_Some_Option_(Int32)"*
  %"$$o_0_gep_85" = getelementptr inbounds %"CName_Some_Option_(Int32)", %"CName_Some_Option_(Int32)"* %"$o_84", i32 0, i32 1
  %"$$o_0_load_86" = load %TName_Option_Int32*, %TName_Option_Int32** %"$$o_0_gep_85"
  %"$o_0" = alloca %TName_Option_Int32*
  store %TName_Option_Int32* %"$$o_0_load_86", %TName_Option_Int32** %"$o_0"
  %"$$o_0_88" = load %TName_Option_Int32*, %TName_Option_Int32** %"$o_0"
  %"$$o_0_tag_89" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$o_0_88", i32 0, i32 0
  %"$$o_0_tag_90" = load i8, i8* %"$$o_0_tag_89"
  switch i8 %"$$o_0_tag_90", label %"$empty_default_91" [
    i8 1, label %"$None_92"
    i8 0, label %"$Some_100"
  ]

"$None_92":                                       ; preds = %"$Some_83"
  %"$$o_0_93" = bitcast %TName_Option_Int32* %"$$o_0_88" to %CName_None_Int32*
  %"$gasrem_94" = load i64, i64* @_gasrem
  %"$gascmp_95" = icmp ugt i64 1, %"$gasrem_94"
  br i1 %"$gascmp_95", label %"$out_of_gas_96", label %"$have_gas_97"

"$out_of_gas_96":                                 ; preds = %"$None_92"
  call void @_out_of_gas()
  br label %"$have_gas_97"

"$have_gas_97":                                   ; preds = %"$out_of_gas_96", %"$None_92"
  %"$consume_98" = sub i64 %"$gasrem_94", 1
  store i64 %"$consume_98", i64* @_gasrem
  %"$y_99" = load %Int32, %Int32* %y
  store %Int32 %"$y_99", %Int32* %"$retval_4"
  br label %"$matchsucc_87"

"$Some_100":                                      ; preds = %"$Some_83"
  %"$$o_0_101" = bitcast %TName_Option_Int32* %"$$o_0_88" to %CName_Some_Int32*
  %"$z_gep_102" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$o_0_101", i32 0, i32 1
  %"$z_load_103" = load %Int32, %Int32* %"$z_gep_102"
  %z = alloca %Int32
  store %Int32 %"$z_load_103", %Int32* %z
  %"$gasrem_104" = load i64, i64* @_gasrem
  %"$gascmp_105" = icmp ugt i64 1, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %"$Some_100"
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %"$Some_100"
  %"$consume_108" = sub i64 %"$gasrem_104", 1
  store i64 %"$consume_108", i64* @_gasrem
  %"$z_109" = load %Int32, %Int32* %z
  store %Int32 %"$z_109", %Int32* %"$retval_4"
  br label %"$matchsucc_87"

"$empty_default_91":                              ; preds = %"$Some_83"
  br label %"$matchsucc_87"

"$matchsucc_87":                                  ; preds = %"$have_gas_107", %"$have_gas_97", %"$empty_default_91"
  br label %"$matchsucc_71"

"$empty_default_74":                              ; preds = %"$have_gas_69"
  br label %"$matchsucc_71"

"$matchsucc_71":                                  ; preds = %"$matchsucc_87", %"$have_gas_80", %"$empty_default_74"
  %"$$retval_4_110" = load %Int32, %Int32* %"$retval_4"
  ret %Int32 %"$$retval_4_110"
}

declare void @_out_of_gas()

define void @_init_libs() {
entry:
  ret void
}

define internal %Int32 @"$scilla_expr_111"(i8* %0) {
entry:
  %"$expr_2" = alloca %Int32
  %"$gasrem_112" = load i64, i64* @_gasrem
  %"$gascmp_113" = icmp ugt i64 1, %"$gasrem_112"
  br i1 %"$gascmp_113", label %"$out_of_gas_114", label %"$have_gas_115"

"$out_of_gas_114":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_115"

"$have_gas_115":                                  ; preds = %"$out_of_gas_114", %entry
  %"$consume_116" = sub i64 %"$gasrem_112", 1
  store i64 %"$consume_116", i64* @_gasrem
  %x = alloca %Int32
  %"$gasrem_117" = load i64, i64* @_gasrem
  %"$gascmp_118" = icmp ugt i64 1, %"$gasrem_117"
  br i1 %"$gascmp_118", label %"$out_of_gas_119", label %"$have_gas_120"

"$out_of_gas_119":                                ; preds = %"$have_gas_115"
  call void @_out_of_gas()
  br label %"$have_gas_120"

"$have_gas_120":                                  ; preds = %"$out_of_gas_119", %"$have_gas_115"
  %"$consume_121" = sub i64 %"$gasrem_117", 1
  store i64 %"$consume_121", i64* @_gasrem
  store %Int32 { i32 42 }, %Int32* %x
  %"$gasrem_122" = load i64, i64* @_gasrem
  %"$gascmp_123" = icmp ugt i64 1, %"$gasrem_122"
  br i1 %"$gascmp_123", label %"$out_of_gas_124", label %"$have_gas_125"

"$out_of_gas_124":                                ; preds = %"$have_gas_120"
  call void @_out_of_gas()
  br label %"$have_gas_125"

"$have_gas_125":                                  ; preds = %"$out_of_gas_124", %"$have_gas_120"
  %"$consume_126" = sub i64 %"$gasrem_122", 1
  store i64 %"$consume_126", i64* @_gasrem
  %y = alloca %Int32
  %"$gasrem_127" = load i64, i64* @_gasrem
  %"$gascmp_128" = icmp ugt i64 1, %"$gasrem_127"
  br i1 %"$gascmp_128", label %"$out_of_gas_129", label %"$have_gas_130"

"$out_of_gas_129":                                ; preds = %"$have_gas_125"
  call void @_out_of_gas()
  br label %"$have_gas_130"

"$have_gas_130":                                  ; preds = %"$out_of_gas_129", %"$have_gas_125"
  %"$consume_131" = sub i64 %"$gasrem_127", 1
  store i64 %"$consume_131", i64* @_gasrem
  store %Int32 { i32 41 }, %Int32* %y
  %"$gasrem_132" = load i64, i64* @_gasrem
  %"$gascmp_133" = icmp ugt i64 1, %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %"$have_gas_130"
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %"$have_gas_130"
  %"$consume_136" = sub i64 %"$gasrem_132", 1
  store i64 %"$consume_136", i64* @_gasrem
  %f = alloca { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }
  %"$gasrem_137" = load i64, i64* @_gasrem
  %"$gascmp_138" = icmp ugt i64 1, %"$gasrem_137"
  br i1 %"$gascmp_138", label %"$out_of_gas_139", label %"$have_gas_140"

"$out_of_gas_139":                                ; preds = %"$have_gas_135"
  call void @_out_of_gas()
  br label %"$have_gas_140"

"$have_gas_140":                                  ; preds = %"$out_of_gas_139", %"$have_gas_135"
  %"$consume_141" = sub i64 %"$gasrem_137", 1
  store i64 %"$consume_141", i64* @_gasrem
  %"$$fundef_3_envp_142_load" = load i8*, i8** @_execptr
  %"$$fundef_3_envp_142_salloc" = call i8* @_salloc(i8* %"$$fundef_3_envp_142_load", i64 8)
  %"$$fundef_3_envp_142" = bitcast i8* %"$$fundef_3_envp_142_salloc" to %"$$fundef_3_env_61"*
  %"$$fundef_3_env_voidp_144" = bitcast %"$$fundef_3_env_61"* %"$$fundef_3_envp_142" to i8*
  %"$$fundef_3_cloval_145" = insertvalue { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)* bitcast (%Int32 (%"$$fundef_3_env_61"*, %"TName_Option_Option_(Int32)"*)* @"$fundef_3" to %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*), i8* undef }, i8* %"$$fundef_3_env_voidp_144", 1
  %"$$fundef_3_env_x_146" = getelementptr inbounds %"$$fundef_3_env_61", %"$$fundef_3_env_61"* %"$$fundef_3_envp_142", i32 0, i32 0
  %"$x_147" = load %Int32, %Int32* %x
  store %Int32 %"$x_147", %Int32* %"$$fundef_3_env_x_146"
  %"$$fundef_3_env_y_148" = getelementptr inbounds %"$$fundef_3_env_61", %"$$fundef_3_env_61"* %"$$fundef_3_envp_142", i32 0, i32 1
  %"$y_149" = load %Int32, %Int32* %y
  store %Int32 %"$y_149", %Int32* %"$$fundef_3_env_y_148"
  store { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } %"$$fundef_3_cloval_145", { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }* %f
  %"$gasrem_150" = load i64, i64* @_gasrem
  %"$gascmp_151" = icmp ugt i64 1, %"$gasrem_150"
  br i1 %"$gascmp_151", label %"$out_of_gas_152", label %"$have_gas_153"

"$out_of_gas_152":                                ; preds = %"$have_gas_140"
  call void @_out_of_gas()
  br label %"$have_gas_153"

"$have_gas_153":                                  ; preds = %"$out_of_gas_152", %"$have_gas_140"
  %"$consume_154" = sub i64 %"$gasrem_150", 1
  store i64 %"$consume_154", i64* @_gasrem
  %o1 = alloca %TName_Option_Int32*
  %"$gasrem_155" = load i64, i64* @_gasrem
  %"$gascmp_156" = icmp ugt i64 1, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$have_gas_153"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$have_gas_153"
  %"$consume_159" = sub i64 %"$gasrem_155", 1
  store i64 %"$consume_159", i64* @_gasrem
  %"$x_160" = load %Int32, %Int32* %x
  %"$adtval_161_load" = load i8*, i8** @_execptr
  %"$adtval_161_salloc" = call i8* @_salloc(i8* %"$adtval_161_load", i64 5)
  %"$adtval_161" = bitcast i8* %"$adtval_161_salloc" to %CName_Some_Int32*
  %"$adtgep_162" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$adtval_161", i32 0, i32 0
  store i8 0, i8* %"$adtgep_162"
  %"$adtgep_163" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$adtval_161", i32 0, i32 1
  store %Int32 %"$x_160", %Int32* %"$adtgep_163"
  %"$adtptr_164" = bitcast %CName_Some_Int32* %"$adtval_161" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$adtptr_164", %TName_Option_Int32** %o1
  %"$gasrem_165" = load i64, i64* @_gasrem
  %"$gascmp_166" = icmp ugt i64 1, %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %"$have_gas_158"
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %"$have_gas_158"
  %"$consume_169" = sub i64 %"$gasrem_165", 1
  store i64 %"$consume_169", i64* @_gasrem
  %o2 = alloca %"TName_Option_Option_(Int32)"*
  %"$gasrem_170" = load i64, i64* @_gasrem
  %"$gascmp_171" = icmp ugt i64 1, %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %"$have_gas_168"
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %"$have_gas_168"
  %"$consume_174" = sub i64 %"$gasrem_170", 1
  store i64 %"$consume_174", i64* @_gasrem
  %"$o1_175" = load %TName_Option_Int32*, %TName_Option_Int32** %o1
  %"$adtval_176_load" = load i8*, i8** @_execptr
  %"$adtval_176_salloc" = call i8* @_salloc(i8* %"$adtval_176_load", i64 9)
  %"$adtval_176" = bitcast i8* %"$adtval_176_salloc" to %"CName_Some_Option_(Int32)"*
  %"$adtgep_177" = getelementptr inbounds %"CName_Some_Option_(Int32)", %"CName_Some_Option_(Int32)"* %"$adtval_176", i32 0, i32 0
  store i8 0, i8* %"$adtgep_177"
  %"$adtgep_178" = getelementptr inbounds %"CName_Some_Option_(Int32)", %"CName_Some_Option_(Int32)"* %"$adtval_176", i32 0, i32 1
  store %TName_Option_Int32* %"$o1_175", %TName_Option_Int32** %"$adtgep_178"
  %"$adtptr_179" = bitcast %"CName_Some_Option_(Int32)"* %"$adtval_176" to %"TName_Option_Option_(Int32)"*
  store %"TName_Option_Option_(Int32)"* %"$adtptr_179", %"TName_Option_Option_(Int32)"** %o2
  %"$gasrem_180" = load i64, i64* @_gasrem
  %"$gascmp_181" = icmp ugt i64 1, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %"$have_gas_173"
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %"$have_gas_173"
  %"$consume_184" = sub i64 %"$gasrem_180", 1
  store i64 %"$consume_184", i64* @_gasrem
  %"$f_1" = alloca %Int32
  %"$f_185" = load { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }, { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }* %f
  %"$f_fptr_186" = extractvalue { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } %"$f_185", 0
  %"$f_envptr_187" = extractvalue { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } %"$f_185", 1
  %"$o2_188" = load %"TName_Option_Option_(Int32)"*, %"TName_Option_Option_(Int32)"** %o2
  %"$f_call_189" = call %Int32 %"$f_fptr_186"(i8* %"$f_envptr_187", %"TName_Option_Option_(Int32)"* %"$o2_188")
  store %Int32 %"$f_call_189", %Int32* %"$f_1"
  %"$$f_1_190" = load %Int32, %Int32* %"$f_1"
  store %Int32 %"$$f_1_190", %Int32* %"$expr_2"
  %"$$expr_2_191" = load %Int32, %Int32* %"$expr_2"
  ret %Int32 %"$$expr_2_191"
}

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_192" = call %Int32 @"$scilla_expr_111"(i8* null)
  %"$pval_193" = alloca %Int32
  %"$memvoidcast_194" = bitcast %Int32* %"$pval_193" to i8*
  store %Int32 %"$exprval_192", %Int32* %"$pval_193"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Int32_7", i8* %"$memvoidcast_194")
  ret void
}
