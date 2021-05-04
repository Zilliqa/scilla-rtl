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
%"$$fundef_3_env_63" = type { %Int32, %Int32 }
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
@"$TyDescr_ADT_Option_Int32_37" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_34"* @"$TyDescr_Option_Int32_ADTTyp_Specl_51" to i8*) }
@"$TyDescr_ADT_Option_Option_(Int32)_38" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_34"* @"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_60" to i8*) }
@"$TyDescr_Option_ADTTyp_42" = unnamed_addr constant %"$TyDescrTy_ADTTyp_35" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_62", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 2, %"$TyDescrTy_ADTTyp_Specl_34"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Specl_34"*], [2 x %"$TyDescrTy_ADTTyp_Specl_34"*]* @"$TyDescr_Option_ADTTyp_m_specls_61", i32 0, i32 0) }
@"$TyDescr_Option_Some_Int32_Constr_m_args_43" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@"$TyDescr_ADT_Some_44" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Int32_ADTTyp_Constr_45" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_44", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Int32_Constr_m_args_43", i32 0, i32 0) }
@"$TyDescr_Option_None_Int32_Constr_m_args_46" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_47" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Int32_ADTTyp_Constr_48" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_47", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Int32_Constr_m_args_46", i32 0, i32 0) }
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_49" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_36"*] [%"$TyDescrTy_ADTTyp_Constr_36"* @"$TyDescr_Option_Some_Int32_ADTTyp_Constr_45", %"$TyDescrTy_ADTTyp_Constr_36"* @"$TyDescr_Option_None_Int32_ADTTyp_Constr_48"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_50" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_7"]
@"$TyDescr_Option_Int32_ADTTyp_Specl_51" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_34" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_TArgs_50", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_36"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_36"*], [2 x %"$TyDescrTy_ADTTyp_Constr_36"*]* @"$TyDescr_Option_Int32_ADTTyp_Specl_m_constrs_49", i32 0, i32 0), %"$TyDescrTy_ADTTyp_35"* @"$TyDescr_Option_ADTTyp_42" }
@"$TyDescr_Option_Some_Option_(Int32)_Constr_m_args_52" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_37"]
@"$TyDescr_ADT_Some_53" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Option_(Int32)_ADTTyp_Constr_54" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_53", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Option_(Int32)_Constr_m_args_52", i32 0, i32 0) }
@"$TyDescr_Option_None_Option_(Int32)_Constr_m_args_55" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_56" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Option_(Int32)_ADTTyp_Constr_57" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_36" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_56", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Option_(Int32)_Constr_m_args_55", i32 0, i32 0) }
@"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_m_constrs_58" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_36"*] [%"$TyDescrTy_ADTTyp_Constr_36"* @"$TyDescr_Option_Some_Option_(Int32)_ADTTyp_Constr_54", %"$TyDescrTy_ADTTyp_Constr_36"* @"$TyDescr_Option_None_Option_(Int32)_ADTTyp_Constr_57"]
@"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_m_TArgs_59" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int32_37"]
@"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_60" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_34" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_m_TArgs_59", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_36"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_36"*], [2 x %"$TyDescrTy_ADTTyp_Constr_36"*]* @"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_m_constrs_58", i32 0, i32 0), %"$TyDescrTy_ADTTyp_35"* @"$TyDescr_Option_ADTTyp_42" }
@"$TyDescr_Option_ADTTyp_m_specls_61" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Specl_34"*] [%"$TyDescrTy_ADTTyp_Specl_34"* @"$TyDescr_Option_Int32_ADTTyp_Specl_51", %"$TyDescrTy_ADTTyp_Specl_34"* @"$TyDescr_Option_Option_(Int32)_ADTTyp_Specl_60"]
@"$TyDescr_ADT_Option_62" = unnamed_addr constant [6 x i8] c"Option"

define internal %Int32 @"$fundef_3"(%"$$fundef_3_env_63"* %0, %"TName_Option_Option_(Int32)"* %1) {
entry:
  %"$$fundef_3_env_x_64" = getelementptr inbounds %"$$fundef_3_env_63", %"$$fundef_3_env_63"* %0, i32 0, i32 0
  %"$x_envload_65" = load %Int32, %Int32* %"$$fundef_3_env_x_64", align 4
  %x = alloca %Int32, align 8
  store %Int32 %"$x_envload_65", %Int32* %x, align 4
  %"$$fundef_3_env_y_66" = getelementptr inbounds %"$$fundef_3_env_63", %"$$fundef_3_env_63"* %0, i32 0, i32 1
  %"$y_envload_67" = load %Int32, %Int32* %"$$fundef_3_env_y_66", align 4
  %y = alloca %Int32, align 8
  store %Int32 %"$y_envload_67", %Int32* %y, align 4
  %"$retval_4" = alloca %Int32, align 8
  %"$gasrem_68" = load i64, i64* @_gasrem, align 8
  %"$gascmp_69" = icmp ugt i64 3, %"$gasrem_68"
  br i1 %"$gascmp_69", label %"$out_of_gas_70", label %"$have_gas_71"

"$out_of_gas_70":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_71"

"$have_gas_71":                                   ; preds = %"$out_of_gas_70", %entry
  %"$consume_72" = sub i64 %"$gasrem_68", 3
  store i64 %"$consume_72", i64* @_gasrem, align 8
  %"$o_tag_74" = getelementptr inbounds %"TName_Option_Option_(Int32)", %"TName_Option_Option_(Int32)"* %1, i32 0, i32 0
  %"$o_tag_75" = load i8, i8* %"$o_tag_74", align 1
  switch i8 %"$o_tag_75", label %"$empty_default_76" [
    i8 1, label %"$None_77"
    i8 0, label %"$Some_85"
  ]

"$None_77":                                       ; preds = %"$have_gas_71"
  %"$o_78" = bitcast %"TName_Option_Option_(Int32)"* %1 to %"CName_None_Option_(Int32)"*
  %"$gasrem_79" = load i64, i64* @_gasrem, align 8
  %"$gascmp_80" = icmp ugt i64 1, %"$gasrem_79"
  br i1 %"$gascmp_80", label %"$out_of_gas_81", label %"$have_gas_82"

"$out_of_gas_81":                                 ; preds = %"$None_77"
  call void @_out_of_gas()
  br label %"$have_gas_82"

"$have_gas_82":                                   ; preds = %"$out_of_gas_81", %"$None_77"
  %"$consume_83" = sub i64 %"$gasrem_79", 1
  store i64 %"$consume_83", i64* @_gasrem, align 8
  %"$x_84" = load %Int32, %Int32* %x, align 4
  store %Int32 %"$x_84", %Int32* %"$retval_4", align 4
  br label %"$matchsucc_73"

"$Some_85":                                       ; preds = %"$have_gas_71"
  %"$o_86" = bitcast %"TName_Option_Option_(Int32)"* %1 to %"CName_Some_Option_(Int32)"*
  %"$$o_0_gep_87" = getelementptr inbounds %"CName_Some_Option_(Int32)", %"CName_Some_Option_(Int32)"* %"$o_86", i32 0, i32 1
  %"$$o_0_load_88" = load %TName_Option_Int32*, %TName_Option_Int32** %"$$o_0_gep_87", align 8
  %"$o_0" = alloca %TName_Option_Int32*, align 8
  store %TName_Option_Int32* %"$$o_0_load_88", %TName_Option_Int32** %"$o_0", align 8
  %"$$o_0_90" = load %TName_Option_Int32*, %TName_Option_Int32** %"$o_0", align 8
  %"$$o_0_tag_91" = getelementptr inbounds %TName_Option_Int32, %TName_Option_Int32* %"$$o_0_90", i32 0, i32 0
  %"$$o_0_tag_92" = load i8, i8* %"$$o_0_tag_91", align 1
  switch i8 %"$$o_0_tag_92", label %"$empty_default_93" [
    i8 1, label %"$None_94"
    i8 0, label %"$Some_102"
  ]

"$None_94":                                       ; preds = %"$Some_85"
  %"$$o_0_95" = bitcast %TName_Option_Int32* %"$$o_0_90" to %CName_None_Int32*
  %"$gasrem_96" = load i64, i64* @_gasrem, align 8
  %"$gascmp_97" = icmp ugt i64 1, %"$gasrem_96"
  br i1 %"$gascmp_97", label %"$out_of_gas_98", label %"$have_gas_99"

"$out_of_gas_98":                                 ; preds = %"$None_94"
  call void @_out_of_gas()
  br label %"$have_gas_99"

"$have_gas_99":                                   ; preds = %"$out_of_gas_98", %"$None_94"
  %"$consume_100" = sub i64 %"$gasrem_96", 1
  store i64 %"$consume_100", i64* @_gasrem, align 8
  %"$y_101" = load %Int32, %Int32* %y, align 4
  store %Int32 %"$y_101", %Int32* %"$retval_4", align 4
  br label %"$matchsucc_89"

"$Some_102":                                      ; preds = %"$Some_85"
  %"$$o_0_103" = bitcast %TName_Option_Int32* %"$$o_0_90" to %CName_Some_Int32*
  %"$z_gep_104" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$$o_0_103", i32 0, i32 1
  %"$z_load_105" = load %Int32, %Int32* %"$z_gep_104", align 4
  %z = alloca %Int32, align 8
  store %Int32 %"$z_load_105", %Int32* %z, align 4
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 1, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %"$Some_102"
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %"$Some_102"
  %"$consume_110" = sub i64 %"$gasrem_106", 1
  store i64 %"$consume_110", i64* @_gasrem, align 8
  %"$z_111" = load %Int32, %Int32* %z, align 4
  store %Int32 %"$z_111", %Int32* %"$retval_4", align 4
  br label %"$matchsucc_89"

"$empty_default_93":                              ; preds = %"$Some_85"
  br label %"$matchsucc_89"

"$matchsucc_89":                                  ; preds = %"$have_gas_109", %"$have_gas_99", %"$empty_default_93"
  br label %"$matchsucc_73"

"$empty_default_76":                              ; preds = %"$have_gas_71"
  br label %"$matchsucc_73"

"$matchsucc_73":                                  ; preds = %"$matchsucc_89", %"$have_gas_82", %"$empty_default_76"
  %"$$retval_4_112" = load %Int32, %Int32* %"$retval_4", align 4
  ret %Int32 %"$$retval_4_112"
}

declare void @_out_of_gas()

define void @_init_libs() {
entry:
  ret void
}

define internal %Int32 @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_2" = alloca %Int32, align 8
  %"$gasrem_113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_114" = icmp ugt i64 1, %"$gasrem_113"
  br i1 %"$gascmp_114", label %"$out_of_gas_115", label %"$have_gas_116"

"$out_of_gas_115":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_116"

"$have_gas_116":                                  ; preds = %"$out_of_gas_115", %entry
  %"$consume_117" = sub i64 %"$gasrem_113", 1
  store i64 %"$consume_117", i64* @_gasrem, align 8
  %x = alloca %Int32, align 8
  %"$gasrem_118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_119" = icmp ugt i64 1, %"$gasrem_118"
  br i1 %"$gascmp_119", label %"$out_of_gas_120", label %"$have_gas_121"

"$out_of_gas_120":                                ; preds = %"$have_gas_116"
  call void @_out_of_gas()
  br label %"$have_gas_121"

"$have_gas_121":                                  ; preds = %"$out_of_gas_120", %"$have_gas_116"
  %"$consume_122" = sub i64 %"$gasrem_118", 1
  store i64 %"$consume_122", i64* @_gasrem, align 8
  store %Int32 { i32 42 }, %Int32* %x, align 4
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 1, %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %"$have_gas_121"
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %"$have_gas_121"
  %"$consume_127" = sub i64 %"$gasrem_123", 1
  store i64 %"$consume_127", i64* @_gasrem, align 8
  %y = alloca %Int32, align 8
  %"$gasrem_128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_129" = icmp ugt i64 1, %"$gasrem_128"
  br i1 %"$gascmp_129", label %"$out_of_gas_130", label %"$have_gas_131"

"$out_of_gas_130":                                ; preds = %"$have_gas_126"
  call void @_out_of_gas()
  br label %"$have_gas_131"

"$have_gas_131":                                  ; preds = %"$out_of_gas_130", %"$have_gas_126"
  %"$consume_132" = sub i64 %"$gasrem_128", 1
  store i64 %"$consume_132", i64* @_gasrem, align 8
  store %Int32 { i32 41 }, %Int32* %y, align 4
  %"$gasrem_133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_134" = icmp ugt i64 1, %"$gasrem_133"
  br i1 %"$gascmp_134", label %"$out_of_gas_135", label %"$have_gas_136"

"$out_of_gas_135":                                ; preds = %"$have_gas_131"
  call void @_out_of_gas()
  br label %"$have_gas_136"

"$have_gas_136":                                  ; preds = %"$out_of_gas_135", %"$have_gas_131"
  %"$consume_137" = sub i64 %"$gasrem_133", 1
  store i64 %"$consume_137", i64* @_gasrem, align 8
  %f = alloca { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }, align 8
  %"$gasrem_138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_139" = icmp ugt i64 1, %"$gasrem_138"
  br i1 %"$gascmp_139", label %"$out_of_gas_140", label %"$have_gas_141"

"$out_of_gas_140":                                ; preds = %"$have_gas_136"
  call void @_out_of_gas()
  br label %"$have_gas_141"

"$have_gas_141":                                  ; preds = %"$out_of_gas_140", %"$have_gas_136"
  %"$consume_142" = sub i64 %"$gasrem_138", 1
  store i64 %"$consume_142", i64* @_gasrem, align 8
  %"$$fundef_3_envp_143_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_3_envp_143_salloc" = call i8* @_salloc(i8* %"$$fundef_3_envp_143_load", i64 8)
  %"$$fundef_3_envp_143" = bitcast i8* %"$$fundef_3_envp_143_salloc" to %"$$fundef_3_env_63"*
  %"$$fundef_3_env_voidp_145" = bitcast %"$$fundef_3_env_63"* %"$$fundef_3_envp_143" to i8*
  %"$$fundef_3_cloval_146" = insertvalue { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)* bitcast (%Int32 (%"$$fundef_3_env_63"*, %"TName_Option_Option_(Int32)"*)* @"$fundef_3" to %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*), i8* undef }, i8* %"$$fundef_3_env_voidp_145", 1
  %"$$fundef_3_env_x_147" = getelementptr inbounds %"$$fundef_3_env_63", %"$$fundef_3_env_63"* %"$$fundef_3_envp_143", i32 0, i32 0
  %"$x_148" = load %Int32, %Int32* %x, align 4
  store %Int32 %"$x_148", %Int32* %"$$fundef_3_env_x_147", align 4
  %"$$fundef_3_env_y_149" = getelementptr inbounds %"$$fundef_3_env_63", %"$$fundef_3_env_63"* %"$$fundef_3_envp_143", i32 0, i32 1
  %"$y_150" = load %Int32, %Int32* %y, align 4
  store %Int32 %"$y_150", %Int32* %"$$fundef_3_env_y_149", align 4
  store { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } %"$$fundef_3_cloval_146", { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }* %f, align 8
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 1, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %"$have_gas_141"
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %"$have_gas_141"
  %"$consume_155" = sub i64 %"$gasrem_151", 1
  store i64 %"$consume_155", i64* @_gasrem, align 8
  %o1 = alloca %TName_Option_Int32*, align 8
  %"$gasrem_156" = load i64, i64* @_gasrem, align 8
  %"$gascmp_157" = icmp ugt i64 1, %"$gasrem_156"
  br i1 %"$gascmp_157", label %"$out_of_gas_158", label %"$have_gas_159"

"$out_of_gas_158":                                ; preds = %"$have_gas_154"
  call void @_out_of_gas()
  br label %"$have_gas_159"

"$have_gas_159":                                  ; preds = %"$out_of_gas_158", %"$have_gas_154"
  %"$consume_160" = sub i64 %"$gasrem_156", 1
  store i64 %"$consume_160", i64* @_gasrem, align 8
  %"$x_161" = load %Int32, %Int32* %x, align 4
  %"$adtval_162_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_162_salloc" = call i8* @_salloc(i8* %"$adtval_162_load", i64 5)
  %"$adtval_162" = bitcast i8* %"$adtval_162_salloc" to %CName_Some_Int32*
  %"$adtgep_163" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$adtval_162", i32 0, i32 0
  store i8 0, i8* %"$adtgep_163", align 1
  %"$adtgep_164" = getelementptr inbounds %CName_Some_Int32, %CName_Some_Int32* %"$adtval_162", i32 0, i32 1
  store %Int32 %"$x_161", %Int32* %"$adtgep_164", align 4
  %"$adtptr_165" = bitcast %CName_Some_Int32* %"$adtval_162" to %TName_Option_Int32*
  store %TName_Option_Int32* %"$adtptr_165", %TName_Option_Int32** %o1, align 8
  %"$gasrem_166" = load i64, i64* @_gasrem, align 8
  %"$gascmp_167" = icmp ugt i64 1, %"$gasrem_166"
  br i1 %"$gascmp_167", label %"$out_of_gas_168", label %"$have_gas_169"

"$out_of_gas_168":                                ; preds = %"$have_gas_159"
  call void @_out_of_gas()
  br label %"$have_gas_169"

"$have_gas_169":                                  ; preds = %"$out_of_gas_168", %"$have_gas_159"
  %"$consume_170" = sub i64 %"$gasrem_166", 1
  store i64 %"$consume_170", i64* @_gasrem, align 8
  %o2 = alloca %"TName_Option_Option_(Int32)"*, align 8
  %"$gasrem_171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_172" = icmp ugt i64 1, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %"$have_gas_169"
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %"$have_gas_169"
  %"$consume_175" = sub i64 %"$gasrem_171", 1
  store i64 %"$consume_175", i64* @_gasrem, align 8
  %"$o1_176" = load %TName_Option_Int32*, %TName_Option_Int32** %o1, align 8
  %"$adtval_177_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_177_salloc" = call i8* @_salloc(i8* %"$adtval_177_load", i64 9)
  %"$adtval_177" = bitcast i8* %"$adtval_177_salloc" to %"CName_Some_Option_(Int32)"*
  %"$adtgep_178" = getelementptr inbounds %"CName_Some_Option_(Int32)", %"CName_Some_Option_(Int32)"* %"$adtval_177", i32 0, i32 0
  store i8 0, i8* %"$adtgep_178", align 1
  %"$adtgep_179" = getelementptr inbounds %"CName_Some_Option_(Int32)", %"CName_Some_Option_(Int32)"* %"$adtval_177", i32 0, i32 1
  store %TName_Option_Int32* %"$o1_176", %TName_Option_Int32** %"$adtgep_179", align 8
  %"$adtptr_180" = bitcast %"CName_Some_Option_(Int32)"* %"$adtval_177" to %"TName_Option_Option_(Int32)"*
  store %"TName_Option_Option_(Int32)"* %"$adtptr_180", %"TName_Option_Option_(Int32)"** %o2, align 8
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 1, %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %"$have_gas_174"
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %"$have_gas_174"
  %"$consume_185" = sub i64 %"$gasrem_181", 1
  store i64 %"$consume_185", i64* @_gasrem, align 8
  %"$f_1" = alloca %Int32, align 8
  %"$f_186" = load { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }, { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* }* %f, align 8
  %"$f_fptr_187" = extractvalue { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } %"$f_186", 0
  %"$f_envptr_188" = extractvalue { %Int32 (i8*, %"TName_Option_Option_(Int32)"*)*, i8* } %"$f_186", 1
  %"$o2_189" = load %"TName_Option_Option_(Int32)"*, %"TName_Option_Option_(Int32)"** %o2, align 8
  %"$f_call_190" = call %Int32 %"$f_fptr_187"(i8* %"$f_envptr_188", %"TName_Option_Option_(Int32)"* %"$o2_189")
  store %Int32 %"$f_call_190", %Int32* %"$f_1", align 4
  %"$$f_1_191" = load %Int32, %Int32* %"$f_1", align 4
  store %Int32 %"$$f_1_191", %Int32* %"$expr_2", align 4
  %"$$expr_2_192" = load %Int32, %Int32* %"$expr_2", align 4
  ret %Int32 %"$$expr_2_192"
}

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_193" = call %Int32 @_scilla_expr_fun(i8* null)
  %"$pval_194" = alloca %Int32, align 8
  %"$memvoidcast_195" = bitcast %Int32* %"$pval_194" to i8*
  store %Int32 %"$exprval_193", %Int32* %"$pval_194", align 4
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_Int32_7", i8* %"$memvoidcast_195")
  ret void
}
