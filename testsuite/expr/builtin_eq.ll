; let i32a = Int32 0 in
; let i32b = Int32 1 in
; let i32aa = Int32 0 in
; let b1 = builtin eq i32a i32aa in
; let b2 = builtin eq i32a i32b in
; 
; let i128a = Uint128 11 in
; let i128b = Uint128 12 in
; let i128aa = Uint128 11 in
; let b3 = builtin eq i128a i128b in
; let b4 = builtin eq i128a i128a in
; let b5 = andb b1 b2 in
; let b6 = orb b3 b4 in
; let b7 = andb b5 b6 in
; 
; let ui256a = Uint128 11 in
; let ui256b = Uint128 12 in
; let ui256aa = Uint128 11 in
; let b8 = builtin eq ui256a ui256b in
; let b9 = builtin eq ui256a ui256a in
; let b10 = andb b7 b8 in
; let b11 = orb b10 b9 in
; 
; let s1 = "Hello" in
; let s2 = "World" in
; let s11 = "Hello" in
; let b12 = builtin eq s1 s2 in
; let b13 = builtin eq s1 s11 in
; let b14 = andb b9 b12 in
; let b15 = orb b13 b14 in
; 
; let bs1 = 0x00ff in
; let bs2 = 0xff00 in
; let bs11 = 0x00ff in
; let b16 = builtin eq bs1 bs2 in
; let b17 = builtin eq bs1 bs11 in
; let b18 = orb b16 b17 in
; let b19 = andb b18 b15 in
; 
; let bs3 = 0x0f0f0f in
; let bs4 = 0x0f0f0e in
; let b20 = builtin eq bs3 bs4 in
; let b21 = negb b20 in
; let b22 = andb b19 b21 in
; 
; let bs11 = builtin to_bystr bs1 in
; let bs22 = builtin to_bystr bs2 in
; let b23 = builtin eq bs11 bs22 in
; let b24 = negb b23 in
; let b25 = andb b22 b24 in
; 
; let bn1 = BNum 100 in
; let bn2 = BNum 299 in
; let bn3 = BNum 100 in
; let b26 = builtin eq bn1 bn2 in
; let b27 = negb b26 in
; let b28 = builtin eq bn1 bn3 in
; let b29 = andb b27 b28 in
; 
; andb b25 b29
; 
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_31" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_65" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_64"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_64" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_66"**, %"$TyDescrTy_ADTTyp_65"* }
%"$TyDescrTy_ADTTyp_Constr_66" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_864" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_865" = type { %ParamDescrString, i32, %"$ParamDescr_864"* }
%"$$fundef_20_env_83" = type {}
%"$$fundef_24_env_84" = type { %TName_Bool* }
%"$$fundef_22_env_85" = type {}
%"$$fundef_28_env_86" = type { %TName_Bool* }
%"$$fundef_26_env_87" = type {}
%Uint128 = type { i128 }
%String = type { i8*, i32 }
%Bystr = type { i8*, i32 }
%BNumString = type { i8*, i32 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_32" = global %"$TyDescrTy_PrimTyp_31" zeroinitializer
@"$TyDescr_Int32_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Int32_Prim_32" to i8*) }
@"$TyDescr_Uint32_Prim_34" = global %"$TyDescrTy_PrimTyp_31" { i32 1, i32 0 }
@"$TyDescr_Uint32_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Uint32_Prim_34" to i8*) }
@"$TyDescr_Int64_Prim_36" = global %"$TyDescrTy_PrimTyp_31" { i32 0, i32 1 }
@"$TyDescr_Int64_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Int64_Prim_36" to i8*) }
@"$TyDescr_Uint64_Prim_38" = global %"$TyDescrTy_PrimTyp_31" { i32 1, i32 1 }
@"$TyDescr_Uint64_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Uint64_Prim_38" to i8*) }
@"$TyDescr_Int128_Prim_40" = global %"$TyDescrTy_PrimTyp_31" { i32 0, i32 2 }
@"$TyDescr_Int128_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Int128_Prim_40" to i8*) }
@"$TyDescr_Uint128_Prim_42" = global %"$TyDescrTy_PrimTyp_31" { i32 1, i32 2 }
@"$TyDescr_Uint128_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Uint128_Prim_42" to i8*) }
@"$TyDescr_Int256_Prim_44" = global %"$TyDescrTy_PrimTyp_31" { i32 0, i32 3 }
@"$TyDescr_Int256_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Int256_Prim_44" to i8*) }
@"$TyDescr_Uint256_Prim_46" = global %"$TyDescrTy_PrimTyp_31" { i32 1, i32 3 }
@"$TyDescr_Uint256_47" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Uint256_Prim_46" to i8*) }
@"$TyDescr_String_Prim_48" = global %"$TyDescrTy_PrimTyp_31" { i32 2, i32 0 }
@"$TyDescr_String_49" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_String_Prim_48" to i8*) }
@"$TyDescr_Bnum_Prim_50" = global %"$TyDescrTy_PrimTyp_31" { i32 3, i32 0 }
@"$TyDescr_Bnum_51" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Bnum_Prim_50" to i8*) }
@"$TyDescr_Message_Prim_52" = global %"$TyDescrTy_PrimTyp_31" { i32 4, i32 0 }
@"$TyDescr_Message_53" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Message_Prim_52" to i8*) }
@"$TyDescr_Event_Prim_54" = global %"$TyDescrTy_PrimTyp_31" { i32 5, i32 0 }
@"$TyDescr_Event_55" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Event_Prim_54" to i8*) }
@"$TyDescr_Exception_Prim_56" = global %"$TyDescrTy_PrimTyp_31" { i32 6, i32 0 }
@"$TyDescr_Exception_57" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Exception_Prim_56" to i8*) }
@"$TyDescr_Bystr_Prim_58" = global %"$TyDescrTy_PrimTyp_31" { i32 7, i32 0 }
@"$TyDescr_Bystr_59" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Bystr_Prim_58" to i8*) }
@"$TyDescr_Bystr3_Prim_60" = global %"$TyDescrTy_PrimTyp_31" { i32 8, i32 3 }
@"$TyDescr_Bystr3_61" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Bystr3_Prim_60" to i8*) }
@"$TyDescr_Bystr2_Prim_62" = global %"$TyDescrTy_PrimTyp_31" { i32 8, i32 2 }
@"$TyDescr_Bystr2_63" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_31"* @"$TyDescr_Bystr2_Prim_62" to i8*) }
@"$TyDescr_ADT_Bool_67" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Bool_ADTTyp_Specl_80" to i8*) }
@"$TyDescr_Bool_ADTTyp_71" = unnamed_addr constant %"$TyDescrTy_ADTTyp_65" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_82", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_64"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_64"*], [1 x %"$TyDescrTy_ADTTyp_Specl_64"*]* @"$TyDescr_Bool_ADTTyp_m_specls_81", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_72" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_73" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_74" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_73", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_72", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_75" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_76" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_77" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_66" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_76", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_75", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_78" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_66"*] [%"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_Bool_True_ADTTyp_Constr_74", %"$TyDescrTy_ADTTyp_Constr_66"* @"$TyDescr_Bool_False_ADTTyp_Constr_77"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_79" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_80" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_64" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_79", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_66"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_66"*], [2 x %"$TyDescrTy_ADTTyp_Constr_66"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_78", i32 0, i32 0), %"$TyDescrTy_ADTTyp_65"* @"$TyDescr_Bool_ADTTyp_71" }
@"$TyDescr_Bool_ADTTyp_m_specls_81" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_64"*] [%"$TyDescrTy_ADTTyp_Specl_64"* @"$TyDescr_Bool_ADTTyp_Specl_80"]
@"$TyDescr_ADT_Bool_82" = unnamed_addr constant [4 x i8] c"Bool"
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@BoolUtils.orb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@BoolUtils.negb = global { %TName_Bool* (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$stringlit_350" = unnamed_addr constant [5 x i8] c"Hello"
@"$stringlit_361" = unnamed_addr constant [5 x i8] c"World"
@"$stringlit_372" = unnamed_addr constant [5 x i8] c"Hello"
@"$BNumLit_745" = unnamed_addr constant [3 x i8] c"100"
@"$BNumLit_759" = unnamed_addr constant [3 x i8] c"299"
@"$BNumLit_773" = unnamed_addr constant [3 x i8] c"100"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_55", %_TyDescrTy_Typ* @"$TyDescr_Int64_37", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_67", %_TyDescrTy_Typ* @"$TyDescr_Bystr3_61", %_TyDescrTy_Typ* @"$TyDescr_Uint256_47", %_TyDescrTy_Typ* @"$TyDescr_Uint32_35", %_TyDescrTy_Typ* @"$TyDescr_Uint64_39", %_TyDescrTy_Typ* @"$TyDescr_Bnum_51", %_TyDescrTy_Typ* @"$TyDescr_Uint128_43", %_TyDescrTy_Typ* @"$TyDescr_Exception_57", %_TyDescrTy_Typ* @"$TyDescr_String_49", %_TyDescrTy_Typ* @"$TyDescr_Int256_45", %_TyDescrTy_Typ* @"$TyDescr_Int128_41", %_TyDescrTy_Typ* @"$TyDescr_Bystr_59", %_TyDescrTy_Typ* @"$TyDescr_Message_53", %_TyDescrTy_Typ* @"$TyDescr_Bystr2_63", %_TyDescrTy_Typ* @"$TyDescr_Int32_33"]
@_tydescr_table_length = constant i32 17
@_contract_parameters = constant [0 x %"$ParamDescr_864"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_865"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_20"(%"$$fundef_20_env_83"* %0, %TName_Bool* %1) {
entry:
  %"$retval_21" = alloca %TName_Bool*, align 8
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 2, %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %entry
  %"$consume_174" = sub i64 %"$gasrem_170", 2
  store i64 %"$consume_174", i64* @_gasrem, align 8
  %"$b_tag_176" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b_tag_177" = load i8, i8* %"$b_tag_176", align 1
  switch i8 %"$b_tag_177", label %"$empty_default_178" [
    i8 0, label %"$True_179"
    i8 1, label %"$False_189"
  ]

"$True_179":                                      ; preds = %"$have_gas_173"
  %"$b_180" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_181" = load i64, i64* @_gasrem, align 8
  %"$gascmp_182" = icmp ugt i64 1, %"$gasrem_181"
  br i1 %"$gascmp_182", label %"$out_of_gas_183", label %"$have_gas_184"

"$out_of_gas_183":                                ; preds = %"$True_179"
  call void @_out_of_gas()
  br label %"$have_gas_184"

"$have_gas_184":                                  ; preds = %"$out_of_gas_183", %"$True_179"
  %"$consume_185" = sub i64 %"$gasrem_181", 1
  store i64 %"$consume_185", i64* @_gasrem, align 8
  %"$adtval_186_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_186_salloc" = call i8* @_salloc(i8* %"$adtval_186_load", i64 1)
  %"$adtval_186" = bitcast i8* %"$adtval_186_salloc" to %CName_False*
  %"$adtgep_187" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_186", i32 0, i32 0
  store i8 1, i8* %"$adtgep_187", align 1
  %"$adtptr_188" = bitcast %CName_False* %"$adtval_186" to %TName_Bool*
  store %TName_Bool* %"$adtptr_188", %TName_Bool** %"$retval_21", align 8
  br label %"$matchsucc_175"

"$False_189":                                     ; preds = %"$have_gas_173"
  %"$b_190" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_192" = icmp ugt i64 1, %"$gasrem_191"
  br i1 %"$gascmp_192", label %"$out_of_gas_193", label %"$have_gas_194"

"$out_of_gas_193":                                ; preds = %"$False_189"
  call void @_out_of_gas()
  br label %"$have_gas_194"

"$have_gas_194":                                  ; preds = %"$out_of_gas_193", %"$False_189"
  %"$consume_195" = sub i64 %"$gasrem_191", 1
  store i64 %"$consume_195", i64* @_gasrem, align 8
  %"$adtval_196_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_196_salloc" = call i8* @_salloc(i8* %"$adtval_196_load", i64 1)
  %"$adtval_196" = bitcast i8* %"$adtval_196_salloc" to %CName_True*
  %"$adtgep_197" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_196", i32 0, i32 0
  store i8 0, i8* %"$adtgep_197", align 1
  %"$adtptr_198" = bitcast %CName_True* %"$adtval_196" to %TName_Bool*
  store %TName_Bool* %"$adtptr_198", %TName_Bool** %"$retval_21", align 8
  br label %"$matchsucc_175"

"$empty_default_178":                             ; preds = %"$have_gas_173"
  br label %"$matchsucc_175"

"$matchsucc_175":                                 ; preds = %"$have_gas_194", %"$have_gas_184", %"$empty_default_178"
  %"$$retval_21_199" = load %TName_Bool*, %TName_Bool** %"$retval_21", align 8
  ret %TName_Bool* %"$$retval_21_199"
}

define internal %TName_Bool* @"$fundef_24"(%"$$fundef_24_env_84"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_24_env_b_140" = getelementptr inbounds %"$$fundef_24_env_84", %"$$fundef_24_env_84"* %0, i32 0, i32 0
  %"$b_envload_141" = load %TName_Bool*, %TName_Bool** %"$$fundef_24_env_b_140", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_141", %TName_Bool** %b, align 8
  %"$retval_25" = alloca %TName_Bool*, align 8
  %"$gasrem_142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_143" = icmp ugt i64 2, %"$gasrem_142"
  br i1 %"$gascmp_143", label %"$out_of_gas_144", label %"$have_gas_145"

"$out_of_gas_144":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_145"

"$have_gas_145":                                  ; preds = %"$out_of_gas_144", %entry
  %"$consume_146" = sub i64 %"$gasrem_142", 2
  store i64 %"$consume_146", i64* @_gasrem, align 8
  %"$b_148" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_149" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_148", i32 0, i32 0
  %"$b_tag_150" = load i8, i8* %"$b_tag_149", align 1
  switch i8 %"$b_tag_150", label %"$empty_default_151" [
    i8 0, label %"$True_152"
    i8 1, label %"$False_162"
  ]

"$True_152":                                      ; preds = %"$have_gas_145"
  %"$b_153" = bitcast %TName_Bool* %"$b_148" to %CName_True*
  %"$gasrem_154" = load i64, i64* @_gasrem, align 8
  %"$gascmp_155" = icmp ugt i64 1, %"$gasrem_154"
  br i1 %"$gascmp_155", label %"$out_of_gas_156", label %"$have_gas_157"

"$out_of_gas_156":                                ; preds = %"$True_152"
  call void @_out_of_gas()
  br label %"$have_gas_157"

"$have_gas_157":                                  ; preds = %"$out_of_gas_156", %"$True_152"
  %"$consume_158" = sub i64 %"$gasrem_154", 1
  store i64 %"$consume_158", i64* @_gasrem, align 8
  %"$adtval_159_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_159_salloc" = call i8* @_salloc(i8* %"$adtval_159_load", i64 1)
  %"$adtval_159" = bitcast i8* %"$adtval_159_salloc" to %CName_True*
  %"$adtgep_160" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_159", i32 0, i32 0
  store i8 0, i8* %"$adtgep_160", align 1
  %"$adtptr_161" = bitcast %CName_True* %"$adtval_159" to %TName_Bool*
  store %TName_Bool* %"$adtptr_161", %TName_Bool** %"$retval_25", align 8
  br label %"$matchsucc_147"

"$False_162":                                     ; preds = %"$have_gas_145"
  %"$b_163" = bitcast %TName_Bool* %"$b_148" to %CName_False*
  %"$gasrem_164" = load i64, i64* @_gasrem, align 8
  %"$gascmp_165" = icmp ugt i64 1, %"$gasrem_164"
  br i1 %"$gascmp_165", label %"$out_of_gas_166", label %"$have_gas_167"

"$out_of_gas_166":                                ; preds = %"$False_162"
  call void @_out_of_gas()
  br label %"$have_gas_167"

"$have_gas_167":                                  ; preds = %"$out_of_gas_166", %"$False_162"
  %"$consume_168" = sub i64 %"$gasrem_164", 1
  store i64 %"$consume_168", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_25", align 8
  br label %"$matchsucc_147"

"$empty_default_151":                             ; preds = %"$have_gas_145"
  br label %"$matchsucc_147"

"$matchsucc_147":                                 ; preds = %"$have_gas_167", %"$have_gas_157", %"$empty_default_151"
  %"$$retval_25_169" = load %TName_Bool*, %TName_Bool** %"$retval_25", align 8
  ret %TName_Bool* %"$$retval_25_169"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_22"(%"$$fundef_22_env_85"* %0, %TName_Bool* %1) {
entry:
  %"$retval_23" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_129" = load i64, i64* @_gasrem, align 8
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %entry
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem, align 8
  %"$$fundef_24_envp_134_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_24_envp_134_salloc" = call i8* @_salloc(i8* %"$$fundef_24_envp_134_load", i64 8)
  %"$$fundef_24_envp_134" = bitcast i8* %"$$fundef_24_envp_134_salloc" to %"$$fundef_24_env_84"*
  %"$$fundef_24_env_voidp_136" = bitcast %"$$fundef_24_env_84"* %"$$fundef_24_envp_134" to i8*
  %"$$fundef_24_cloval_137" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_24_env_84"*, %TName_Bool*)* @"$fundef_24" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_24_env_voidp_136", 1
  %"$$fundef_24_env_b_138" = getelementptr inbounds %"$$fundef_24_env_84", %"$$fundef_24_env_84"* %"$$fundef_24_envp_134", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_24_env_b_138", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_24_cloval_137", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_23", align 8
  %"$$retval_23_139" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_23", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_23_139"
}

define internal %TName_Bool* @"$fundef_28"(%"$$fundef_28_env_86"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_28_env_b_99" = getelementptr inbounds %"$$fundef_28_env_86", %"$$fundef_28_env_86"* %0, i32 0, i32 0
  %"$b_envload_100" = load %TName_Bool*, %TName_Bool** %"$$fundef_28_env_b_99", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_100", %TName_Bool** %b, align 8
  %"$retval_29" = alloca %TName_Bool*, align 8
  %"$gasrem_101" = load i64, i64* @_gasrem, align 8
  %"$gascmp_102" = icmp ugt i64 2, %"$gasrem_101"
  br i1 %"$gascmp_102", label %"$out_of_gas_103", label %"$have_gas_104"

"$out_of_gas_103":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_104"

"$have_gas_104":                                  ; preds = %"$out_of_gas_103", %entry
  %"$consume_105" = sub i64 %"$gasrem_101", 2
  store i64 %"$consume_105", i64* @_gasrem, align 8
  %"$b_107" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_108" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_107", i32 0, i32 0
  %"$b_tag_109" = load i8, i8* %"$b_tag_108", align 1
  switch i8 %"$b_tag_109", label %"$empty_default_110" [
    i8 1, label %"$False_111"
    i8 0, label %"$True_121"
  ]

"$False_111":                                     ; preds = %"$have_gas_104"
  %"$b_112" = bitcast %TName_Bool* %"$b_107" to %CName_False*
  %"$gasrem_113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_114" = icmp ugt i64 1, %"$gasrem_113"
  br i1 %"$gascmp_114", label %"$out_of_gas_115", label %"$have_gas_116"

"$out_of_gas_115":                                ; preds = %"$False_111"
  call void @_out_of_gas()
  br label %"$have_gas_116"

"$have_gas_116":                                  ; preds = %"$out_of_gas_115", %"$False_111"
  %"$consume_117" = sub i64 %"$gasrem_113", 1
  store i64 %"$consume_117", i64* @_gasrem, align 8
  %"$adtval_118_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_118_salloc" = call i8* @_salloc(i8* %"$adtval_118_load", i64 1)
  %"$adtval_118" = bitcast i8* %"$adtval_118_salloc" to %CName_False*
  %"$adtgep_119" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_118", i32 0, i32 0
  store i8 1, i8* %"$adtgep_119", align 1
  %"$adtptr_120" = bitcast %CName_False* %"$adtval_118" to %TName_Bool*
  store %TName_Bool* %"$adtptr_120", %TName_Bool** %"$retval_29", align 8
  br label %"$matchsucc_106"

"$True_121":                                      ; preds = %"$have_gas_104"
  %"$b_122" = bitcast %TName_Bool* %"$b_107" to %CName_True*
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 1, %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %"$True_121"
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %"$True_121"
  %"$consume_127" = sub i64 %"$gasrem_123", 1
  store i64 %"$consume_127", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_29", align 8
  br label %"$matchsucc_106"

"$empty_default_110":                             ; preds = %"$have_gas_104"
  br label %"$matchsucc_106"

"$matchsucc_106":                                 ; preds = %"$have_gas_126", %"$have_gas_116", %"$empty_default_110"
  %"$$retval_29_128" = load %TName_Bool*, %TName_Bool** %"$retval_29", align 8
  ret %TName_Bool* %"$$retval_29_128"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_26"(%"$$fundef_26_env_87"* %0, %TName_Bool* %1) {
entry:
  %"$retval_27" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_88" = load i64, i64* @_gasrem, align 8
  %"$gascmp_89" = icmp ugt i64 1, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %entry
  %"$consume_92" = sub i64 %"$gasrem_88", 1
  store i64 %"$consume_92", i64* @_gasrem, align 8
  %"$$fundef_28_envp_93_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_28_envp_93_salloc" = call i8* @_salloc(i8* %"$$fundef_28_envp_93_load", i64 8)
  %"$$fundef_28_envp_93" = bitcast i8* %"$$fundef_28_envp_93_salloc" to %"$$fundef_28_env_86"*
  %"$$fundef_28_env_voidp_95" = bitcast %"$$fundef_28_env_86"* %"$$fundef_28_envp_93" to i8*
  %"$$fundef_28_cloval_96" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_28_env_86"*, %TName_Bool*)* @"$fundef_28" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_28_env_voidp_95", 1
  %"$$fundef_28_env_b_97" = getelementptr inbounds %"$$fundef_28_env_86", %"$$fundef_28_env_86"* %"$$fundef_28_envp_93", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_28_env_b_97", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_28_cloval_96", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_27", align 8
  %"$$retval_27_98" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_27", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_27_98"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_201" = icmp ugt i64 1, %"$gasrem_200"
  br i1 %"$gascmp_201", label %"$out_of_gas_202", label %"$have_gas_203"

"$out_of_gas_202":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_203"

"$have_gas_203":                                  ; preds = %"$out_of_gas_202", %entry
  %"$consume_204" = sub i64 %"$gasrem_200", 1
  store i64 %"$consume_204", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_26_env_87"*, %TName_Bool*)* @"$fundef_26" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$gasrem_208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_209" = icmp ugt i64 1, %"$gasrem_208"
  br i1 %"$gascmp_209", label %"$out_of_gas_210", label %"$have_gas_211"

"$out_of_gas_210":                                ; preds = %"$have_gas_203"
  call void @_out_of_gas()
  br label %"$have_gas_211"

"$have_gas_211":                                  ; preds = %"$out_of_gas_210", %"$have_gas_203"
  %"$consume_212" = sub i64 %"$gasrem_208", 1
  store i64 %"$consume_212", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_22_env_85"*, %TName_Bool*)* @"$fundef_22" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$gasrem_216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_217" = icmp ugt i64 1, %"$gasrem_216"
  br i1 %"$gascmp_217", label %"$out_of_gas_218", label %"$have_gas_219"

"$out_of_gas_218":                                ; preds = %"$have_gas_211"
  call void @_out_of_gas()
  br label %"$have_gas_219"

"$have_gas_219":                                  ; preds = %"$out_of_gas_218", %"$have_gas_211"
  %"$consume_220" = sub i64 %"$gasrem_216", 1
  store i64 %"$consume_220", i64* @_gasrem, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_20_env_83"*, %TName_Bool*)* @"$fundef_20" to %TName_Bool* (i8*, %TName_Bool*)*), i8* null }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_30" = alloca %TName_Bool*, align 8
  %"$gasrem_224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_225" = icmp ugt i64 1, %"$gasrem_224"
  br i1 %"$gascmp_225", label %"$out_of_gas_226", label %"$have_gas_227"

"$out_of_gas_226":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_227"

"$have_gas_227":                                  ; preds = %"$out_of_gas_226", %entry
  %"$consume_228" = sub i64 %"$gasrem_224", 1
  store i64 %"$consume_228", i64* @_gasrem, align 8
  %"$gasrem_229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_230" = icmp ugt i64 1, %"$gasrem_229"
  br i1 %"$gascmp_230", label %"$out_of_gas_231", label %"$have_gas_232"

"$out_of_gas_231":                                ; preds = %"$have_gas_227"
  call void @_out_of_gas()
  br label %"$have_gas_232"

"$have_gas_232":                                  ; preds = %"$out_of_gas_231", %"$have_gas_227"
  %"$consume_233" = sub i64 %"$gasrem_229", 1
  store i64 %"$consume_233", i64* @_gasrem, align 8
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 1, %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %"$have_gas_232"
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %"$have_gas_232"
  %"$consume_238" = sub i64 %"$gasrem_234", 1
  store i64 %"$consume_238", i64* @_gasrem, align 8
  %"$gasrem_239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_240" = icmp ugt i64 1, %"$gasrem_239"
  br i1 %"$gascmp_240", label %"$out_of_gas_241", label %"$have_gas_242"

"$out_of_gas_241":                                ; preds = %"$have_gas_237"
  call void @_out_of_gas()
  br label %"$have_gas_242"

"$have_gas_242":                                  ; preds = %"$out_of_gas_241", %"$have_gas_237"
  %"$consume_243" = sub i64 %"$gasrem_239", 1
  store i64 %"$consume_243", i64* @_gasrem, align 8
  %"$gasrem_244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_245" = icmp ugt i64 1, %"$gasrem_244"
  br i1 %"$gascmp_245", label %"$out_of_gas_246", label %"$have_gas_247"

"$out_of_gas_246":                                ; preds = %"$have_gas_242"
  call void @_out_of_gas()
  br label %"$have_gas_247"

"$have_gas_247":                                  ; preds = %"$out_of_gas_246", %"$have_gas_242"
  %"$consume_248" = sub i64 %"$gasrem_244", 1
  store i64 %"$consume_248", i64* @_gasrem, align 8
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 1, %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %"$have_gas_247"
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %"$have_gas_247"
  %"$consume_253" = sub i64 %"$gasrem_249", 1
  store i64 %"$consume_253", i64* @_gasrem, align 8
  %"$gasrem_254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_255" = icmp ugt i64 1, %"$gasrem_254"
  br i1 %"$gascmp_255", label %"$out_of_gas_256", label %"$have_gas_257"

"$out_of_gas_256":                                ; preds = %"$have_gas_252"
  call void @_out_of_gas()
  br label %"$have_gas_257"

"$have_gas_257":                                  ; preds = %"$out_of_gas_256", %"$have_gas_252"
  %"$consume_258" = sub i64 %"$gasrem_254", 1
  store i64 %"$consume_258", i64* @_gasrem, align 8
  %"$gasrem_259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_260" = icmp ugt i64 1, %"$gasrem_259"
  br i1 %"$gascmp_260", label %"$out_of_gas_261", label %"$have_gas_262"

"$out_of_gas_261":                                ; preds = %"$have_gas_257"
  call void @_out_of_gas()
  br label %"$have_gas_262"

"$have_gas_262":                                  ; preds = %"$out_of_gas_261", %"$have_gas_257"
  %"$consume_263" = sub i64 %"$gasrem_259", 1
  store i64 %"$consume_263", i64* @_gasrem, align 8
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 1, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %"$have_gas_262"
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %"$have_gas_262"
  %"$consume_268" = sub i64 %"$gasrem_264", 1
  store i64 %"$consume_268", i64* @_gasrem, align 8
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 1, %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %"$have_gas_267"
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %"$have_gas_267"
  %"$consume_273" = sub i64 %"$gasrem_269", 1
  store i64 %"$consume_273", i64* @_gasrem, align 8
  %"$gasrem_274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_275" = icmp ugt i64 1, %"$gasrem_274"
  br i1 %"$gascmp_275", label %"$out_of_gas_276", label %"$have_gas_277"

"$out_of_gas_276":                                ; preds = %"$have_gas_272"
  call void @_out_of_gas()
  br label %"$have_gas_277"

"$have_gas_277":                                  ; preds = %"$out_of_gas_276", %"$have_gas_272"
  %"$consume_278" = sub i64 %"$gasrem_274", 1
  store i64 %"$consume_278", i64* @_gasrem, align 8
  %"$gasrem_279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_280" = icmp ugt i64 1, %"$gasrem_279"
  br i1 %"$gascmp_280", label %"$out_of_gas_281", label %"$have_gas_282"

"$out_of_gas_281":                                ; preds = %"$have_gas_277"
  call void @_out_of_gas()
  br label %"$have_gas_282"

"$have_gas_282":                                  ; preds = %"$out_of_gas_281", %"$have_gas_277"
  %"$consume_283" = sub i64 %"$gasrem_279", 1
  store i64 %"$consume_283", i64* @_gasrem, align 8
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 1, %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %"$have_gas_282"
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %"$have_gas_282"
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
  %ui256a = alloca %Uint128, align 8
  %"$gasrem_294" = load i64, i64* @_gasrem, align 8
  %"$gascmp_295" = icmp ugt i64 1, %"$gasrem_294"
  br i1 %"$gascmp_295", label %"$out_of_gas_296", label %"$have_gas_297"

"$out_of_gas_296":                                ; preds = %"$have_gas_292"
  call void @_out_of_gas()
  br label %"$have_gas_297"

"$have_gas_297":                                  ; preds = %"$out_of_gas_296", %"$have_gas_292"
  %"$consume_298" = sub i64 %"$gasrem_294", 1
  store i64 %"$consume_298", i64* @_gasrem, align 8
  store %Uint128 { i128 11 }, %Uint128* %ui256a, align 8
  %"$gasrem_299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_300" = icmp ugt i64 1, %"$gasrem_299"
  br i1 %"$gascmp_300", label %"$out_of_gas_301", label %"$have_gas_302"

"$out_of_gas_301":                                ; preds = %"$have_gas_297"
  call void @_out_of_gas()
  br label %"$have_gas_302"

"$have_gas_302":                                  ; preds = %"$out_of_gas_301", %"$have_gas_297"
  %"$consume_303" = sub i64 %"$gasrem_299", 1
  store i64 %"$consume_303", i64* @_gasrem, align 8
  %"$gasrem_304" = load i64, i64* @_gasrem, align 8
  %"$gascmp_305" = icmp ugt i64 1, %"$gasrem_304"
  br i1 %"$gascmp_305", label %"$out_of_gas_306", label %"$have_gas_307"

"$out_of_gas_306":                                ; preds = %"$have_gas_302"
  call void @_out_of_gas()
  br label %"$have_gas_307"

"$have_gas_307":                                  ; preds = %"$out_of_gas_306", %"$have_gas_302"
  %"$consume_308" = sub i64 %"$gasrem_304", 1
  store i64 %"$consume_308", i64* @_gasrem, align 8
  %"$gasrem_309" = load i64, i64* @_gasrem, align 8
  %"$gascmp_310" = icmp ugt i64 1, %"$gasrem_309"
  br i1 %"$gascmp_310", label %"$out_of_gas_311", label %"$have_gas_312"

"$out_of_gas_311":                                ; preds = %"$have_gas_307"
  call void @_out_of_gas()
  br label %"$have_gas_312"

"$have_gas_312":                                  ; preds = %"$out_of_gas_311", %"$have_gas_307"
  %"$consume_313" = sub i64 %"$gasrem_309", 1
  store i64 %"$consume_313", i64* @_gasrem, align 8
  %"$gasrem_314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_315" = icmp ugt i64 1, %"$gasrem_314"
  br i1 %"$gascmp_315", label %"$out_of_gas_316", label %"$have_gas_317"

"$out_of_gas_316":                                ; preds = %"$have_gas_312"
  call void @_out_of_gas()
  br label %"$have_gas_317"

"$have_gas_317":                                  ; preds = %"$out_of_gas_316", %"$have_gas_312"
  %"$consume_318" = sub i64 %"$gasrem_314", 1
  store i64 %"$consume_318", i64* @_gasrem, align 8
  %b9 = alloca %TName_Bool*, align 8
  %"$gasrem_320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_321" = icmp ugt i64 8, %"$gasrem_320"
  br i1 %"$gascmp_321", label %"$out_of_gas_322", label %"$have_gas_323"

"$out_of_gas_322":                                ; preds = %"$have_gas_317"
  call void @_out_of_gas()
  br label %"$have_gas_323"

"$have_gas_323":                                  ; preds = %"$out_of_gas_322", %"$have_gas_317"
  %"$consume_324" = sub i64 %"$gasrem_320", 8
  store i64 %"$consume_324", i64* @_gasrem, align 8
  %"$execptr_load_325" = load i8*, i8** @_execptr, align 8
  %"$ui256a_326" = load %Uint128, %Uint128* %ui256a, align 8
  %"$ui256a_327" = load %Uint128, %Uint128* %ui256a, align 8
  %"$eq_call_328" = call %TName_Bool* @_eq_Uint128(i8* %"$execptr_load_325", %Uint128 %"$ui256a_326", %Uint128 %"$ui256a_327")
  store %TName_Bool* %"$eq_call_328", %TName_Bool** %b9, align 8
  %"$gasrem_330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_331" = icmp ugt i64 1, %"$gasrem_330"
  br i1 %"$gascmp_331", label %"$out_of_gas_332", label %"$have_gas_333"

"$out_of_gas_332":                                ; preds = %"$have_gas_323"
  call void @_out_of_gas()
  br label %"$have_gas_333"

"$have_gas_333":                                  ; preds = %"$out_of_gas_332", %"$have_gas_323"
  %"$consume_334" = sub i64 %"$gasrem_330", 1
  store i64 %"$consume_334", i64* @_gasrem, align 8
  %"$gasrem_335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_336" = icmp ugt i64 1, %"$gasrem_335"
  br i1 %"$gascmp_336", label %"$out_of_gas_337", label %"$have_gas_338"

"$out_of_gas_337":                                ; preds = %"$have_gas_333"
  call void @_out_of_gas()
  br label %"$have_gas_338"

"$have_gas_338":                                  ; preds = %"$out_of_gas_337", %"$have_gas_333"
  %"$consume_339" = sub i64 %"$gasrem_335", 1
  store i64 %"$consume_339", i64* @_gasrem, align 8
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 1, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %"$have_gas_338"
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %"$have_gas_338"
  %"$consume_344" = sub i64 %"$gasrem_340", 1
  store i64 %"$consume_344", i64* @_gasrem, align 8
  %s1 = alloca %String, align 8
  %"$gasrem_345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_346" = icmp ugt i64 1, %"$gasrem_345"
  br i1 %"$gascmp_346", label %"$out_of_gas_347", label %"$have_gas_348"

"$out_of_gas_347":                                ; preds = %"$have_gas_343"
  call void @_out_of_gas()
  br label %"$have_gas_348"

"$have_gas_348":                                  ; preds = %"$out_of_gas_347", %"$have_gas_343"
  %"$consume_349" = sub i64 %"$gasrem_345", 1
  store i64 %"$consume_349", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_350", i32 0, i32 0), i32 5 }, %String* %s1, align 8
  %"$gasrem_351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_352" = icmp ugt i64 1, %"$gasrem_351"
  br i1 %"$gascmp_352", label %"$out_of_gas_353", label %"$have_gas_354"

"$out_of_gas_353":                                ; preds = %"$have_gas_348"
  call void @_out_of_gas()
  br label %"$have_gas_354"

"$have_gas_354":                                  ; preds = %"$out_of_gas_353", %"$have_gas_348"
  %"$consume_355" = sub i64 %"$gasrem_351", 1
  store i64 %"$consume_355", i64* @_gasrem, align 8
  %s2 = alloca %String, align 8
  %"$gasrem_356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_357" = icmp ugt i64 1, %"$gasrem_356"
  br i1 %"$gascmp_357", label %"$out_of_gas_358", label %"$have_gas_359"

"$out_of_gas_358":                                ; preds = %"$have_gas_354"
  call void @_out_of_gas()
  br label %"$have_gas_359"

"$have_gas_359":                                  ; preds = %"$out_of_gas_358", %"$have_gas_354"
  %"$consume_360" = sub i64 %"$gasrem_356", 1
  store i64 %"$consume_360", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_361", i32 0, i32 0), i32 5 }, %String* %s2, align 8
  %"$gasrem_362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_363" = icmp ugt i64 1, %"$gasrem_362"
  br i1 %"$gascmp_363", label %"$out_of_gas_364", label %"$have_gas_365"

"$out_of_gas_364":                                ; preds = %"$have_gas_359"
  call void @_out_of_gas()
  br label %"$have_gas_365"

"$have_gas_365":                                  ; preds = %"$out_of_gas_364", %"$have_gas_359"
  %"$consume_366" = sub i64 %"$gasrem_362", 1
  store i64 %"$consume_366", i64* @_gasrem, align 8
  %s11 = alloca %String, align 8
  %"$gasrem_367" = load i64, i64* @_gasrem, align 8
  %"$gascmp_368" = icmp ugt i64 1, %"$gasrem_367"
  br i1 %"$gascmp_368", label %"$out_of_gas_369", label %"$have_gas_370"

"$out_of_gas_369":                                ; preds = %"$have_gas_365"
  call void @_out_of_gas()
  br label %"$have_gas_370"

"$have_gas_370":                                  ; preds = %"$out_of_gas_369", %"$have_gas_365"
  %"$consume_371" = sub i64 %"$gasrem_367", 1
  store i64 %"$consume_371", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_372", i32 0, i32 0), i32 5 }, %String* %s11, align 8
  %"$gasrem_373" = load i64, i64* @_gasrem, align 8
  %"$gascmp_374" = icmp ugt i64 1, %"$gasrem_373"
  br i1 %"$gascmp_374", label %"$out_of_gas_375", label %"$have_gas_376"

"$out_of_gas_375":                                ; preds = %"$have_gas_370"
  call void @_out_of_gas()
  br label %"$have_gas_376"

"$have_gas_376":                                  ; preds = %"$out_of_gas_375", %"$have_gas_370"
  %"$consume_377" = sub i64 %"$gasrem_373", 1
  store i64 %"$consume_377", i64* @_gasrem, align 8
  %b12 = alloca %TName_Bool*, align 8
  %"$_literal_cost_s1_378" = alloca %String, align 8
  %"$s1_379" = load %String, %String* %s1, align 8
  store %String %"$s1_379", %String* %"$_literal_cost_s1_378", align 8
  %"$$_literal_cost_s1_378_380" = bitcast %String* %"$_literal_cost_s1_378" to i8*
  %"$_literal_cost_call_381" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_49", i8* %"$$_literal_cost_s1_378_380")
  %"$_literal_cost_s2_382" = alloca %String, align 8
  %"$s2_383" = load %String, %String* %s2, align 8
  store %String %"$s2_383", %String* %"$_literal_cost_s2_382", align 8
  %"$$_literal_cost_s2_382_384" = bitcast %String* %"$_literal_cost_s2_382" to i8*
  %"$_literal_cost_call_385" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_49", i8* %"$$_literal_cost_s2_382_384")
  %"$gasmin_386" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_381", i64 %"$_literal_cost_call_385")
  %"$gasrem_387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_388" = icmp ugt i64 %"$gasmin_386", %"$gasrem_387"
  br i1 %"$gascmp_388", label %"$out_of_gas_389", label %"$have_gas_390"

"$out_of_gas_389":                                ; preds = %"$have_gas_376"
  call void @_out_of_gas()
  br label %"$have_gas_390"

"$have_gas_390":                                  ; preds = %"$out_of_gas_389", %"$have_gas_376"
  %"$consume_391" = sub i64 %"$gasrem_387", %"$gasmin_386"
  store i64 %"$consume_391", i64* @_gasrem, align 8
  %"$execptr_load_392" = load i8*, i8** @_execptr, align 8
  %"$s1_393" = load %String, %String* %s1, align 8
  %"$s2_394" = load %String, %String* %s2, align 8
  %"$eq_call_395" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_392", %String %"$s1_393", %String %"$s2_394")
  store %TName_Bool* %"$eq_call_395", %TName_Bool** %b12, align 8
  %"$gasrem_397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_398" = icmp ugt i64 1, %"$gasrem_397"
  br i1 %"$gascmp_398", label %"$out_of_gas_399", label %"$have_gas_400"

"$out_of_gas_399":                                ; preds = %"$have_gas_390"
  call void @_out_of_gas()
  br label %"$have_gas_400"

"$have_gas_400":                                  ; preds = %"$out_of_gas_399", %"$have_gas_390"
  %"$consume_401" = sub i64 %"$gasrem_397", 1
  store i64 %"$consume_401", i64* @_gasrem, align 8
  %b13 = alloca %TName_Bool*, align 8
  %"$_literal_cost_s1_402" = alloca %String, align 8
  %"$s1_403" = load %String, %String* %s1, align 8
  store %String %"$s1_403", %String* %"$_literal_cost_s1_402", align 8
  %"$$_literal_cost_s1_402_404" = bitcast %String* %"$_literal_cost_s1_402" to i8*
  %"$_literal_cost_call_405" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_49", i8* %"$$_literal_cost_s1_402_404")
  %"$_literal_cost_s11_406" = alloca %String, align 8
  %"$s11_407" = load %String, %String* %s11, align 8
  store %String %"$s11_407", %String* %"$_literal_cost_s11_406", align 8
  %"$$_literal_cost_s11_406_408" = bitcast %String* %"$_literal_cost_s11_406" to i8*
  %"$_literal_cost_call_409" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_49", i8* %"$$_literal_cost_s11_406_408")
  %"$gasmin_410" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_405", i64 %"$_literal_cost_call_409")
  %"$gasrem_411" = load i64, i64* @_gasrem, align 8
  %"$gascmp_412" = icmp ugt i64 %"$gasmin_410", %"$gasrem_411"
  br i1 %"$gascmp_412", label %"$out_of_gas_413", label %"$have_gas_414"

"$out_of_gas_413":                                ; preds = %"$have_gas_400"
  call void @_out_of_gas()
  br label %"$have_gas_414"

"$have_gas_414":                                  ; preds = %"$out_of_gas_413", %"$have_gas_400"
  %"$consume_415" = sub i64 %"$gasrem_411", %"$gasmin_410"
  store i64 %"$consume_415", i64* @_gasrem, align 8
  %"$execptr_load_416" = load i8*, i8** @_execptr, align 8
  %"$s1_417" = load %String, %String* %s1, align 8
  %"$s11_418" = load %String, %String* %s11, align 8
  %"$eq_call_419" = call %TName_Bool* @_eq_String(i8* %"$execptr_load_416", %String %"$s1_417", %String %"$s11_418")
  store %TName_Bool* %"$eq_call_419", %TName_Bool** %b13, align 8
  %"$gasrem_421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_422" = icmp ugt i64 1, %"$gasrem_421"
  br i1 %"$gascmp_422", label %"$out_of_gas_423", label %"$have_gas_424"

"$out_of_gas_423":                                ; preds = %"$have_gas_414"
  call void @_out_of_gas()
  br label %"$have_gas_424"

"$have_gas_424":                                  ; preds = %"$out_of_gas_423", %"$have_gas_414"
  %"$consume_425" = sub i64 %"$gasrem_421", 1
  store i64 %"$consume_425", i64* @_gasrem, align 8
  %b14 = alloca %TName_Bool*, align 8
  %"$gasrem_426" = load i64, i64* @_gasrem, align 8
  %"$gascmp_427" = icmp ugt i64 1, %"$gasrem_426"
  br i1 %"$gascmp_427", label %"$out_of_gas_428", label %"$have_gas_429"

"$out_of_gas_428":                                ; preds = %"$have_gas_424"
  call void @_out_of_gas()
  br label %"$have_gas_429"

"$have_gas_429":                                  ; preds = %"$out_of_gas_428", %"$have_gas_424"
  %"$consume_430" = sub i64 %"$gasrem_426", 1
  store i64 %"$consume_430", i64* @_gasrem, align 8
  %"$BoolUtils.andb_1" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_431" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_432" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_431", 0
  %"$BoolUtils.andb_envptr_433" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_431", 1
  %"$b9_434" = load %TName_Bool*, %TName_Bool** %b9, align 8
  %"$BoolUtils.andb_call_435" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_432"(i8* %"$BoolUtils.andb_envptr_433", %TName_Bool* %"$b9_434")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_435", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_1", align 8
  %"$BoolUtils.andb_2" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_1_436" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_1", align 8
  %"$$BoolUtils.andb_1_fptr_437" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_1_436", 0
  %"$$BoolUtils.andb_1_envptr_438" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_1_436", 1
  %"$b12_439" = load %TName_Bool*, %TName_Bool** %b12, align 8
  %"$$BoolUtils.andb_1_call_440" = call %TName_Bool* %"$$BoolUtils.andb_1_fptr_437"(i8* %"$$BoolUtils.andb_1_envptr_438", %TName_Bool* %"$b12_439")
  store %TName_Bool* %"$$BoolUtils.andb_1_call_440", %TName_Bool** %"$BoolUtils.andb_2", align 8
  %"$$BoolUtils.andb_2_441" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_2", align 8
  store %TName_Bool* %"$$BoolUtils.andb_2_441", %TName_Bool** %b14, align 8
  %"$gasrem_442" = load i64, i64* @_gasrem, align 8
  %"$gascmp_443" = icmp ugt i64 1, %"$gasrem_442"
  br i1 %"$gascmp_443", label %"$out_of_gas_444", label %"$have_gas_445"

"$out_of_gas_444":                                ; preds = %"$have_gas_429"
  call void @_out_of_gas()
  br label %"$have_gas_445"

"$have_gas_445":                                  ; preds = %"$out_of_gas_444", %"$have_gas_429"
  %"$consume_446" = sub i64 %"$gasrem_442", 1
  store i64 %"$consume_446", i64* @_gasrem, align 8
  %b15 = alloca %TName_Bool*, align 8
  %"$gasrem_447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_448" = icmp ugt i64 1, %"$gasrem_447"
  br i1 %"$gascmp_448", label %"$out_of_gas_449", label %"$have_gas_450"

"$out_of_gas_449":                                ; preds = %"$have_gas_445"
  call void @_out_of_gas()
  br label %"$have_gas_450"

"$have_gas_450":                                  ; preds = %"$out_of_gas_449", %"$have_gas_445"
  %"$consume_451" = sub i64 %"$gasrem_447", 1
  store i64 %"$consume_451", i64* @_gasrem, align 8
  %"$BoolUtils.orb_3" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_452" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_453" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_452", 0
  %"$BoolUtils.orb_envptr_454" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_452", 1
  %"$b13_455" = load %TName_Bool*, %TName_Bool** %b13, align 8
  %"$BoolUtils.orb_call_456" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_453"(i8* %"$BoolUtils.orb_envptr_454", %TName_Bool* %"$b13_455")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_456", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_3", align 8
  %"$BoolUtils.orb_4" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_3_457" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_3", align 8
  %"$$BoolUtils.orb_3_fptr_458" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_3_457", 0
  %"$$BoolUtils.orb_3_envptr_459" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_3_457", 1
  %"$b14_460" = load %TName_Bool*, %TName_Bool** %b14, align 8
  %"$$BoolUtils.orb_3_call_461" = call %TName_Bool* %"$$BoolUtils.orb_3_fptr_458"(i8* %"$$BoolUtils.orb_3_envptr_459", %TName_Bool* %"$b14_460")
  store %TName_Bool* %"$$BoolUtils.orb_3_call_461", %TName_Bool** %"$BoolUtils.orb_4", align 8
  %"$$BoolUtils.orb_4_462" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_4", align 8
  store %TName_Bool* %"$$BoolUtils.orb_4_462", %TName_Bool** %b15, align 8
  %"$gasrem_463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_464" = icmp ugt i64 1, %"$gasrem_463"
  br i1 %"$gascmp_464", label %"$out_of_gas_465", label %"$have_gas_466"

"$out_of_gas_465":                                ; preds = %"$have_gas_450"
  call void @_out_of_gas()
  br label %"$have_gas_466"

"$have_gas_466":                                  ; preds = %"$out_of_gas_465", %"$have_gas_450"
  %"$consume_467" = sub i64 %"$gasrem_463", 1
  store i64 %"$consume_467", i64* @_gasrem, align 8
  %bs1 = alloca [2 x i8], align 1
  %"$gasrem_468" = load i64, i64* @_gasrem, align 8
  %"$gascmp_469" = icmp ugt i64 1, %"$gasrem_468"
  br i1 %"$gascmp_469", label %"$out_of_gas_470", label %"$have_gas_471"

"$out_of_gas_470":                                ; preds = %"$have_gas_466"
  call void @_out_of_gas()
  br label %"$have_gas_471"

"$have_gas_471":                                  ; preds = %"$out_of_gas_470", %"$have_gas_466"
  %"$consume_472" = sub i64 %"$gasrem_468", 1
  store i64 %"$consume_472", i64* @_gasrem, align 8
  store [2 x i8] c"\00\FF", [2 x i8]* %bs1, align 1
  %"$gasrem_473" = load i64, i64* @_gasrem, align 8
  %"$gascmp_474" = icmp ugt i64 1, %"$gasrem_473"
  br i1 %"$gascmp_474", label %"$out_of_gas_475", label %"$have_gas_476"

"$out_of_gas_475":                                ; preds = %"$have_gas_471"
  call void @_out_of_gas()
  br label %"$have_gas_476"

"$have_gas_476":                                  ; preds = %"$out_of_gas_475", %"$have_gas_471"
  %"$consume_477" = sub i64 %"$gasrem_473", 1
  store i64 %"$consume_477", i64* @_gasrem, align 8
  %bs2 = alloca [2 x i8], align 1
  %"$gasrem_478" = load i64, i64* @_gasrem, align 8
  %"$gascmp_479" = icmp ugt i64 1, %"$gasrem_478"
  br i1 %"$gascmp_479", label %"$out_of_gas_480", label %"$have_gas_481"

"$out_of_gas_480":                                ; preds = %"$have_gas_476"
  call void @_out_of_gas()
  br label %"$have_gas_481"

"$have_gas_481":                                  ; preds = %"$out_of_gas_480", %"$have_gas_476"
  %"$consume_482" = sub i64 %"$gasrem_478", 1
  store i64 %"$consume_482", i64* @_gasrem, align 8
  store [2 x i8] c"\FF\00", [2 x i8]* %bs2, align 1
  %"$gasrem_483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_484" = icmp ugt i64 1, %"$gasrem_483"
  br i1 %"$gascmp_484", label %"$out_of_gas_485", label %"$have_gas_486"

"$out_of_gas_485":                                ; preds = %"$have_gas_481"
  call void @_out_of_gas()
  br label %"$have_gas_486"

"$have_gas_486":                                  ; preds = %"$out_of_gas_485", %"$have_gas_481"
  %"$consume_487" = sub i64 %"$gasrem_483", 1
  store i64 %"$consume_487", i64* @_gasrem, align 8
  %bs11 = alloca [2 x i8], align 1
  %"$gasrem_488" = load i64, i64* @_gasrem, align 8
  %"$gascmp_489" = icmp ugt i64 1, %"$gasrem_488"
  br i1 %"$gascmp_489", label %"$out_of_gas_490", label %"$have_gas_491"

"$out_of_gas_490":                                ; preds = %"$have_gas_486"
  call void @_out_of_gas()
  br label %"$have_gas_491"

"$have_gas_491":                                  ; preds = %"$out_of_gas_490", %"$have_gas_486"
  %"$consume_492" = sub i64 %"$gasrem_488", 1
  store i64 %"$consume_492", i64* @_gasrem, align 8
  store [2 x i8] c"\00\FF", [2 x i8]* %bs11, align 1
  %"$gasrem_493" = load i64, i64* @_gasrem, align 8
  %"$gascmp_494" = icmp ugt i64 1, %"$gasrem_493"
  br i1 %"$gascmp_494", label %"$out_of_gas_495", label %"$have_gas_496"

"$out_of_gas_495":                                ; preds = %"$have_gas_491"
  call void @_out_of_gas()
  br label %"$have_gas_496"

"$have_gas_496":                                  ; preds = %"$out_of_gas_495", %"$have_gas_491"
  %"$consume_497" = sub i64 %"$gasrem_493", 1
  store i64 %"$consume_497", i64* @_gasrem, align 8
  %b16 = alloca %TName_Bool*, align 8
  %"$gasrem_498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_499" = icmp ugt i64 2, %"$gasrem_498"
  br i1 %"$gascmp_499", label %"$out_of_gas_500", label %"$have_gas_501"

"$out_of_gas_500":                                ; preds = %"$have_gas_496"
  call void @_out_of_gas()
  br label %"$have_gas_501"

"$have_gas_501":                                  ; preds = %"$out_of_gas_500", %"$have_gas_496"
  %"$consume_502" = sub i64 %"$gasrem_498", 2
  store i64 %"$consume_502", i64* @_gasrem, align 8
  %"$execptr_load_503" = load i8*, i8** @_execptr, align 8
  %"$eq_bs1_504" = alloca [2 x i8], align 1
  %"$bs1_505" = load [2 x i8], [2 x i8]* %bs1, align 1
  store [2 x i8] %"$bs1_505", [2 x i8]* %"$eq_bs1_504", align 1
  %"$$eq_bs1_504_506" = bitcast [2 x i8]* %"$eq_bs1_504" to i8*
  %"$eq_bs2_507" = alloca [2 x i8], align 1
  %"$bs2_508" = load [2 x i8], [2 x i8]* %bs2, align 1
  store [2 x i8] %"$bs2_508", [2 x i8]* %"$eq_bs2_507", align 1
  %"$$eq_bs2_507_509" = bitcast [2 x i8]* %"$eq_bs2_507" to i8*
  %"$eq_call_510" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_503", i32 2, i8* %"$$eq_bs1_504_506", i8* %"$$eq_bs2_507_509")
  store %TName_Bool* %"$eq_call_510", %TName_Bool** %b16, align 8
  %"$gasrem_512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_513" = icmp ugt i64 1, %"$gasrem_512"
  br i1 %"$gascmp_513", label %"$out_of_gas_514", label %"$have_gas_515"

"$out_of_gas_514":                                ; preds = %"$have_gas_501"
  call void @_out_of_gas()
  br label %"$have_gas_515"

"$have_gas_515":                                  ; preds = %"$out_of_gas_514", %"$have_gas_501"
  %"$consume_516" = sub i64 %"$gasrem_512", 1
  store i64 %"$consume_516", i64* @_gasrem, align 8
  %b17 = alloca %TName_Bool*, align 8
  %"$gasrem_517" = load i64, i64* @_gasrem, align 8
  %"$gascmp_518" = icmp ugt i64 2, %"$gasrem_517"
  br i1 %"$gascmp_518", label %"$out_of_gas_519", label %"$have_gas_520"

"$out_of_gas_519":                                ; preds = %"$have_gas_515"
  call void @_out_of_gas()
  br label %"$have_gas_520"

"$have_gas_520":                                  ; preds = %"$out_of_gas_519", %"$have_gas_515"
  %"$consume_521" = sub i64 %"$gasrem_517", 2
  store i64 %"$consume_521", i64* @_gasrem, align 8
  %"$execptr_load_522" = load i8*, i8** @_execptr, align 8
  %"$eq_bs1_523" = alloca [2 x i8], align 1
  %"$bs1_524" = load [2 x i8], [2 x i8]* %bs1, align 1
  store [2 x i8] %"$bs1_524", [2 x i8]* %"$eq_bs1_523", align 1
  %"$$eq_bs1_523_525" = bitcast [2 x i8]* %"$eq_bs1_523" to i8*
  %"$eq_bs11_526" = alloca [2 x i8], align 1
  %"$bs11_527" = load [2 x i8], [2 x i8]* %bs11, align 1
  store [2 x i8] %"$bs11_527", [2 x i8]* %"$eq_bs11_526", align 1
  %"$$eq_bs11_526_528" = bitcast [2 x i8]* %"$eq_bs11_526" to i8*
  %"$eq_call_529" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_522", i32 2, i8* %"$$eq_bs1_523_525", i8* %"$$eq_bs11_526_528")
  store %TName_Bool* %"$eq_call_529", %TName_Bool** %b17, align 8
  %"$gasrem_531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_532" = icmp ugt i64 1, %"$gasrem_531"
  br i1 %"$gascmp_532", label %"$out_of_gas_533", label %"$have_gas_534"

"$out_of_gas_533":                                ; preds = %"$have_gas_520"
  call void @_out_of_gas()
  br label %"$have_gas_534"

"$have_gas_534":                                  ; preds = %"$out_of_gas_533", %"$have_gas_520"
  %"$consume_535" = sub i64 %"$gasrem_531", 1
  store i64 %"$consume_535", i64* @_gasrem, align 8
  %b18 = alloca %TName_Bool*, align 8
  %"$gasrem_536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_537" = icmp ugt i64 1, %"$gasrem_536"
  br i1 %"$gascmp_537", label %"$out_of_gas_538", label %"$have_gas_539"

"$out_of_gas_538":                                ; preds = %"$have_gas_534"
  call void @_out_of_gas()
  br label %"$have_gas_539"

"$have_gas_539":                                  ; preds = %"$out_of_gas_538", %"$have_gas_534"
  %"$consume_540" = sub i64 %"$gasrem_536", 1
  store i64 %"$consume_540", i64* @_gasrem, align 8
  %"$BoolUtils.orb_5" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.orb_541" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.orb, align 8
  %"$BoolUtils.orb_fptr_542" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_541", 0
  %"$BoolUtils.orb_envptr_543" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_541", 1
  %"$b16_544" = load %TName_Bool*, %TName_Bool** %b16, align 8
  %"$BoolUtils.orb_call_545" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_fptr_542"(i8* %"$BoolUtils.orb_envptr_543", %TName_Bool* %"$b16_544")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.orb_call_545", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_5", align 8
  %"$BoolUtils.orb_6" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.orb_5_546" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.orb_5", align 8
  %"$$BoolUtils.orb_5_fptr_547" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_5_546", 0
  %"$$BoolUtils.orb_5_envptr_548" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.orb_5_546", 1
  %"$b17_549" = load %TName_Bool*, %TName_Bool** %b17, align 8
  %"$$BoolUtils.orb_5_call_550" = call %TName_Bool* %"$$BoolUtils.orb_5_fptr_547"(i8* %"$$BoolUtils.orb_5_envptr_548", %TName_Bool* %"$b17_549")
  store %TName_Bool* %"$$BoolUtils.orb_5_call_550", %TName_Bool** %"$BoolUtils.orb_6", align 8
  %"$$BoolUtils.orb_6_551" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.orb_6", align 8
  store %TName_Bool* %"$$BoolUtils.orb_6_551", %TName_Bool** %b18, align 8
  %"$gasrem_552" = load i64, i64* @_gasrem, align 8
  %"$gascmp_553" = icmp ugt i64 1, %"$gasrem_552"
  br i1 %"$gascmp_553", label %"$out_of_gas_554", label %"$have_gas_555"

"$out_of_gas_554":                                ; preds = %"$have_gas_539"
  call void @_out_of_gas()
  br label %"$have_gas_555"

"$have_gas_555":                                  ; preds = %"$out_of_gas_554", %"$have_gas_539"
  %"$consume_556" = sub i64 %"$gasrem_552", 1
  store i64 %"$consume_556", i64* @_gasrem, align 8
  %b19 = alloca %TName_Bool*, align 8
  %"$gasrem_557" = load i64, i64* @_gasrem, align 8
  %"$gascmp_558" = icmp ugt i64 1, %"$gasrem_557"
  br i1 %"$gascmp_558", label %"$out_of_gas_559", label %"$have_gas_560"

"$out_of_gas_559":                                ; preds = %"$have_gas_555"
  call void @_out_of_gas()
  br label %"$have_gas_560"

"$have_gas_560":                                  ; preds = %"$out_of_gas_559", %"$have_gas_555"
  %"$consume_561" = sub i64 %"$gasrem_557", 1
  store i64 %"$consume_561", i64* @_gasrem, align 8
  %"$BoolUtils.andb_7" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_562" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_563" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_562", 0
  %"$BoolUtils.andb_envptr_564" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_562", 1
  %"$b18_565" = load %TName_Bool*, %TName_Bool** %b18, align 8
  %"$BoolUtils.andb_call_566" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_563"(i8* %"$BoolUtils.andb_envptr_564", %TName_Bool* %"$b18_565")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_566", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_7", align 8
  %"$BoolUtils.andb_8" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_7_567" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_7", align 8
  %"$$BoolUtils.andb_7_fptr_568" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_7_567", 0
  %"$$BoolUtils.andb_7_envptr_569" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_7_567", 1
  %"$b15_570" = load %TName_Bool*, %TName_Bool** %b15, align 8
  %"$$BoolUtils.andb_7_call_571" = call %TName_Bool* %"$$BoolUtils.andb_7_fptr_568"(i8* %"$$BoolUtils.andb_7_envptr_569", %TName_Bool* %"$b15_570")
  store %TName_Bool* %"$$BoolUtils.andb_7_call_571", %TName_Bool** %"$BoolUtils.andb_8", align 8
  %"$$BoolUtils.andb_8_572" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_8", align 8
  store %TName_Bool* %"$$BoolUtils.andb_8_572", %TName_Bool** %b19, align 8
  %"$gasrem_573" = load i64, i64* @_gasrem, align 8
  %"$gascmp_574" = icmp ugt i64 1, %"$gasrem_573"
  br i1 %"$gascmp_574", label %"$out_of_gas_575", label %"$have_gas_576"

"$out_of_gas_575":                                ; preds = %"$have_gas_560"
  call void @_out_of_gas()
  br label %"$have_gas_576"

"$have_gas_576":                                  ; preds = %"$out_of_gas_575", %"$have_gas_560"
  %"$consume_577" = sub i64 %"$gasrem_573", 1
  store i64 %"$consume_577", i64* @_gasrem, align 8
  %bs3 = alloca [3 x i8], align 1
  %"$gasrem_578" = load i64, i64* @_gasrem, align 8
  %"$gascmp_579" = icmp ugt i64 1, %"$gasrem_578"
  br i1 %"$gascmp_579", label %"$out_of_gas_580", label %"$have_gas_581"

"$out_of_gas_580":                                ; preds = %"$have_gas_576"
  call void @_out_of_gas()
  br label %"$have_gas_581"

"$have_gas_581":                                  ; preds = %"$out_of_gas_580", %"$have_gas_576"
  %"$consume_582" = sub i64 %"$gasrem_578", 1
  store i64 %"$consume_582", i64* @_gasrem, align 8
  store [3 x i8] c"\0F\0F\0F", [3 x i8]* %bs3, align 1
  %"$gasrem_583" = load i64, i64* @_gasrem, align 8
  %"$gascmp_584" = icmp ugt i64 1, %"$gasrem_583"
  br i1 %"$gascmp_584", label %"$out_of_gas_585", label %"$have_gas_586"

"$out_of_gas_585":                                ; preds = %"$have_gas_581"
  call void @_out_of_gas()
  br label %"$have_gas_586"

"$have_gas_586":                                  ; preds = %"$out_of_gas_585", %"$have_gas_581"
  %"$consume_587" = sub i64 %"$gasrem_583", 1
  store i64 %"$consume_587", i64* @_gasrem, align 8
  %bs4 = alloca [3 x i8], align 1
  %"$gasrem_588" = load i64, i64* @_gasrem, align 8
  %"$gascmp_589" = icmp ugt i64 1, %"$gasrem_588"
  br i1 %"$gascmp_589", label %"$out_of_gas_590", label %"$have_gas_591"

"$out_of_gas_590":                                ; preds = %"$have_gas_586"
  call void @_out_of_gas()
  br label %"$have_gas_591"

"$have_gas_591":                                  ; preds = %"$out_of_gas_590", %"$have_gas_586"
  %"$consume_592" = sub i64 %"$gasrem_588", 1
  store i64 %"$consume_592", i64* @_gasrem, align 8
  store [3 x i8] c"\0F\0F\0E", [3 x i8]* %bs4, align 1
  %"$gasrem_593" = load i64, i64* @_gasrem, align 8
  %"$gascmp_594" = icmp ugt i64 1, %"$gasrem_593"
  br i1 %"$gascmp_594", label %"$out_of_gas_595", label %"$have_gas_596"

"$out_of_gas_595":                                ; preds = %"$have_gas_591"
  call void @_out_of_gas()
  br label %"$have_gas_596"

"$have_gas_596":                                  ; preds = %"$out_of_gas_595", %"$have_gas_591"
  %"$consume_597" = sub i64 %"$gasrem_593", 1
  store i64 %"$consume_597", i64* @_gasrem, align 8
  %b20 = alloca %TName_Bool*, align 8
  %"$gasrem_598" = load i64, i64* @_gasrem, align 8
  %"$gascmp_599" = icmp ugt i64 3, %"$gasrem_598"
  br i1 %"$gascmp_599", label %"$out_of_gas_600", label %"$have_gas_601"

"$out_of_gas_600":                                ; preds = %"$have_gas_596"
  call void @_out_of_gas()
  br label %"$have_gas_601"

"$have_gas_601":                                  ; preds = %"$out_of_gas_600", %"$have_gas_596"
  %"$consume_602" = sub i64 %"$gasrem_598", 3
  store i64 %"$consume_602", i64* @_gasrem, align 8
  %"$execptr_load_603" = load i8*, i8** @_execptr, align 8
  %"$eq_bs3_604" = alloca [3 x i8], align 1
  %"$bs3_605" = load [3 x i8], [3 x i8]* %bs3, align 1
  store [3 x i8] %"$bs3_605", [3 x i8]* %"$eq_bs3_604", align 1
  %"$$eq_bs3_604_606" = bitcast [3 x i8]* %"$eq_bs3_604" to i8*
  %"$eq_bs4_607" = alloca [3 x i8], align 1
  %"$bs4_608" = load [3 x i8], [3 x i8]* %bs4, align 1
  store [3 x i8] %"$bs4_608", [3 x i8]* %"$eq_bs4_607", align 1
  %"$$eq_bs4_607_609" = bitcast [3 x i8]* %"$eq_bs4_607" to i8*
  %"$eq_call_610" = call %TName_Bool* @_eq_ByStrX(i8* %"$execptr_load_603", i32 3, i8* %"$$eq_bs3_604_606", i8* %"$$eq_bs4_607_609")
  store %TName_Bool* %"$eq_call_610", %TName_Bool** %b20, align 8
  %"$gasrem_612" = load i64, i64* @_gasrem, align 8
  %"$gascmp_613" = icmp ugt i64 1, %"$gasrem_612"
  br i1 %"$gascmp_613", label %"$out_of_gas_614", label %"$have_gas_615"

"$out_of_gas_614":                                ; preds = %"$have_gas_601"
  call void @_out_of_gas()
  br label %"$have_gas_615"

"$have_gas_615":                                  ; preds = %"$out_of_gas_614", %"$have_gas_601"
  %"$consume_616" = sub i64 %"$gasrem_612", 1
  store i64 %"$consume_616", i64* @_gasrem, align 8
  %b21 = alloca %TName_Bool*, align 8
  %"$gasrem_617" = load i64, i64* @_gasrem, align 8
  %"$gascmp_618" = icmp ugt i64 1, %"$gasrem_617"
  br i1 %"$gascmp_618", label %"$out_of_gas_619", label %"$have_gas_620"

"$out_of_gas_619":                                ; preds = %"$have_gas_615"
  call void @_out_of_gas()
  br label %"$have_gas_620"

"$have_gas_620":                                  ; preds = %"$out_of_gas_619", %"$have_gas_615"
  %"$consume_621" = sub i64 %"$gasrem_617", 1
  store i64 %"$consume_621", i64* @_gasrem, align 8
  %"$BoolUtils.negb_9" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_622" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_623" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_622", 0
  %"$BoolUtils.negb_envptr_624" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_622", 1
  %"$b20_625" = load %TName_Bool*, %TName_Bool** %b20, align 8
  %"$BoolUtils.negb_call_626" = call %TName_Bool* %"$BoolUtils.negb_fptr_623"(i8* %"$BoolUtils.negb_envptr_624", %TName_Bool* %"$b20_625")
  store %TName_Bool* %"$BoolUtils.negb_call_626", %TName_Bool** %"$BoolUtils.negb_9", align 8
  %"$$BoolUtils.negb_9_627" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_9", align 8
  store %TName_Bool* %"$$BoolUtils.negb_9_627", %TName_Bool** %b21, align 8
  %"$gasrem_628" = load i64, i64* @_gasrem, align 8
  %"$gascmp_629" = icmp ugt i64 1, %"$gasrem_628"
  br i1 %"$gascmp_629", label %"$out_of_gas_630", label %"$have_gas_631"

"$out_of_gas_630":                                ; preds = %"$have_gas_620"
  call void @_out_of_gas()
  br label %"$have_gas_631"

"$have_gas_631":                                  ; preds = %"$out_of_gas_630", %"$have_gas_620"
  %"$consume_632" = sub i64 %"$gasrem_628", 1
  store i64 %"$consume_632", i64* @_gasrem, align 8
  %b22 = alloca %TName_Bool*, align 8
  %"$gasrem_633" = load i64, i64* @_gasrem, align 8
  %"$gascmp_634" = icmp ugt i64 1, %"$gasrem_633"
  br i1 %"$gascmp_634", label %"$out_of_gas_635", label %"$have_gas_636"

"$out_of_gas_635":                                ; preds = %"$have_gas_631"
  call void @_out_of_gas()
  br label %"$have_gas_636"

"$have_gas_636":                                  ; preds = %"$out_of_gas_635", %"$have_gas_631"
  %"$consume_637" = sub i64 %"$gasrem_633", 1
  store i64 %"$consume_637", i64* @_gasrem, align 8
  %"$BoolUtils.andb_10" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_638" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_639" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_638", 0
  %"$BoolUtils.andb_envptr_640" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_638", 1
  %"$b19_641" = load %TName_Bool*, %TName_Bool** %b19, align 8
  %"$BoolUtils.andb_call_642" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_639"(i8* %"$BoolUtils.andb_envptr_640", %TName_Bool* %"$b19_641")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_642", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_10", align 8
  %"$BoolUtils.andb_11" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_10_643" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_10", align 8
  %"$$BoolUtils.andb_10_fptr_644" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_10_643", 0
  %"$$BoolUtils.andb_10_envptr_645" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_10_643", 1
  %"$b21_646" = load %TName_Bool*, %TName_Bool** %b21, align 8
  %"$$BoolUtils.andb_10_call_647" = call %TName_Bool* %"$$BoolUtils.andb_10_fptr_644"(i8* %"$$BoolUtils.andb_10_envptr_645", %TName_Bool* %"$b21_646")
  store %TName_Bool* %"$$BoolUtils.andb_10_call_647", %TName_Bool** %"$BoolUtils.andb_11", align 8
  %"$$BoolUtils.andb_11_648" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_11", align 8
  store %TName_Bool* %"$$BoolUtils.andb_11_648", %TName_Bool** %b22, align 8
  %"$gasrem_649" = load i64, i64* @_gasrem, align 8
  %"$gascmp_650" = icmp ugt i64 1, %"$gasrem_649"
  br i1 %"$gascmp_650", label %"$out_of_gas_651", label %"$have_gas_652"

"$out_of_gas_651":                                ; preds = %"$have_gas_636"
  call void @_out_of_gas()
  br label %"$have_gas_652"

"$have_gas_652":                                  ; preds = %"$out_of_gas_651", %"$have_gas_636"
  %"$consume_653" = sub i64 %"$gasrem_649", 1
  store i64 %"$consume_653", i64* @_gasrem, align 8
  %"$bs11_0" = alloca %Bystr, align 8
  %"$gasrem_654" = load i64, i64* @_gasrem, align 8
  %"$gascmp_655" = icmp ugt i64 2, %"$gasrem_654"
  br i1 %"$gascmp_655", label %"$out_of_gas_656", label %"$have_gas_657"

"$out_of_gas_656":                                ; preds = %"$have_gas_652"
  call void @_out_of_gas()
  br label %"$have_gas_657"

"$have_gas_657":                                  ; preds = %"$out_of_gas_656", %"$have_gas_652"
  %"$consume_658" = sub i64 %"$gasrem_654", 2
  store i64 %"$consume_658", i64* @_gasrem, align 8
  %"$execptr_load_659" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_bs1_660" = alloca [2 x i8], align 1
  %"$bs1_661" = load [2 x i8], [2 x i8]* %bs1, align 1
  store [2 x i8] %"$bs1_661", [2 x i8]* %"$to_bystr_bs1_660", align 1
  %"$$to_bystr_bs1_660_662" = bitcast [2 x i8]* %"$to_bystr_bs1_660" to i8*
  %"$to_bystr_call_663" = call %Bystr @_to_bystr(i8* %"$execptr_load_659", i32 2, i8* %"$$to_bystr_bs1_660_662")
  store %Bystr %"$to_bystr_call_663", %Bystr* %"$bs11_0", align 8
  %"$gasrem_664" = load i64, i64* @_gasrem, align 8
  %"$gascmp_665" = icmp ugt i64 1, %"$gasrem_664"
  br i1 %"$gascmp_665", label %"$out_of_gas_666", label %"$have_gas_667"

"$out_of_gas_666":                                ; preds = %"$have_gas_657"
  call void @_out_of_gas()
  br label %"$have_gas_667"

"$have_gas_667":                                  ; preds = %"$out_of_gas_666", %"$have_gas_657"
  %"$consume_668" = sub i64 %"$gasrem_664", 1
  store i64 %"$consume_668", i64* @_gasrem, align 8
  %bs22 = alloca %Bystr, align 8
  %"$gasrem_669" = load i64, i64* @_gasrem, align 8
  %"$gascmp_670" = icmp ugt i64 2, %"$gasrem_669"
  br i1 %"$gascmp_670", label %"$out_of_gas_671", label %"$have_gas_672"

"$out_of_gas_671":                                ; preds = %"$have_gas_667"
  call void @_out_of_gas()
  br label %"$have_gas_672"

"$have_gas_672":                                  ; preds = %"$out_of_gas_671", %"$have_gas_667"
  %"$consume_673" = sub i64 %"$gasrem_669", 2
  store i64 %"$consume_673", i64* @_gasrem, align 8
  %"$execptr_load_674" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_bs2_675" = alloca [2 x i8], align 1
  %"$bs2_676" = load [2 x i8], [2 x i8]* %bs2, align 1
  store [2 x i8] %"$bs2_676", [2 x i8]* %"$to_bystr_bs2_675", align 1
  %"$$to_bystr_bs2_675_677" = bitcast [2 x i8]* %"$to_bystr_bs2_675" to i8*
  %"$to_bystr_call_678" = call %Bystr @_to_bystr(i8* %"$execptr_load_674", i32 2, i8* %"$$to_bystr_bs2_675_677")
  store %Bystr %"$to_bystr_call_678", %Bystr* %bs22, align 8
  %"$gasrem_679" = load i64, i64* @_gasrem, align 8
  %"$gascmp_680" = icmp ugt i64 1, %"$gasrem_679"
  br i1 %"$gascmp_680", label %"$out_of_gas_681", label %"$have_gas_682"

"$out_of_gas_681":                                ; preds = %"$have_gas_672"
  call void @_out_of_gas()
  br label %"$have_gas_682"

"$have_gas_682":                                  ; preds = %"$out_of_gas_681", %"$have_gas_672"
  %"$consume_683" = sub i64 %"$gasrem_679", 1
  store i64 %"$consume_683", i64* @_gasrem, align 8
  %b23 = alloca %TName_Bool*, align 8
  %"$_literal_cost_$bs11_0_684" = alloca %Bystr, align 8
  %"$$bs11_0_685" = load %Bystr, %Bystr* %"$bs11_0", align 8
  store %Bystr %"$$bs11_0_685", %Bystr* %"$_literal_cost_$bs11_0_684", align 8
  %"$$_literal_cost_$bs11_0_684_686" = bitcast %Bystr* %"$_literal_cost_$bs11_0_684" to i8*
  %"$_literal_cost_call_687" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_59", i8* %"$$_literal_cost_$bs11_0_684_686")
  %"$gasrem_688" = load i64, i64* @_gasrem, align 8
  %"$gascmp_689" = icmp ugt i64 %"$_literal_cost_call_687", %"$gasrem_688"
  br i1 %"$gascmp_689", label %"$out_of_gas_690", label %"$have_gas_691"

"$out_of_gas_690":                                ; preds = %"$have_gas_682"
  call void @_out_of_gas()
  br label %"$have_gas_691"

"$have_gas_691":                                  ; preds = %"$out_of_gas_690", %"$have_gas_682"
  %"$consume_692" = sub i64 %"$gasrem_688", %"$_literal_cost_call_687"
  store i64 %"$consume_692", i64* @_gasrem, align 8
  %"$execptr_load_693" = load i8*, i8** @_execptr, align 8
  %"$$bs11_0_694" = load %Bystr, %Bystr* %"$bs11_0", align 8
  %"$bs22_695" = load %Bystr, %Bystr* %bs22, align 8
  %"$eq_call_696" = call %TName_Bool* @_eq_ByStr(i8* %"$execptr_load_693", %Bystr %"$$bs11_0_694", %Bystr %"$bs22_695")
  store %TName_Bool* %"$eq_call_696", %TName_Bool** %b23, align 8
  %"$gasrem_698" = load i64, i64* @_gasrem, align 8
  %"$gascmp_699" = icmp ugt i64 1, %"$gasrem_698"
  br i1 %"$gascmp_699", label %"$out_of_gas_700", label %"$have_gas_701"

"$out_of_gas_700":                                ; preds = %"$have_gas_691"
  call void @_out_of_gas()
  br label %"$have_gas_701"

"$have_gas_701":                                  ; preds = %"$out_of_gas_700", %"$have_gas_691"
  %"$consume_702" = sub i64 %"$gasrem_698", 1
  store i64 %"$consume_702", i64* @_gasrem, align 8
  %b24 = alloca %TName_Bool*, align 8
  %"$gasrem_703" = load i64, i64* @_gasrem, align 8
  %"$gascmp_704" = icmp ugt i64 1, %"$gasrem_703"
  br i1 %"$gascmp_704", label %"$out_of_gas_705", label %"$have_gas_706"

"$out_of_gas_705":                                ; preds = %"$have_gas_701"
  call void @_out_of_gas()
  br label %"$have_gas_706"

"$have_gas_706":                                  ; preds = %"$out_of_gas_705", %"$have_gas_701"
  %"$consume_707" = sub i64 %"$gasrem_703", 1
  store i64 %"$consume_707", i64* @_gasrem, align 8
  %"$BoolUtils.negb_12" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_708" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_709" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_708", 0
  %"$BoolUtils.negb_envptr_710" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_708", 1
  %"$b23_711" = load %TName_Bool*, %TName_Bool** %b23, align 8
  %"$BoolUtils.negb_call_712" = call %TName_Bool* %"$BoolUtils.negb_fptr_709"(i8* %"$BoolUtils.negb_envptr_710", %TName_Bool* %"$b23_711")
  store %TName_Bool* %"$BoolUtils.negb_call_712", %TName_Bool** %"$BoolUtils.negb_12", align 8
  %"$$BoolUtils.negb_12_713" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_12", align 8
  store %TName_Bool* %"$$BoolUtils.negb_12_713", %TName_Bool** %b24, align 8
  %"$gasrem_714" = load i64, i64* @_gasrem, align 8
  %"$gascmp_715" = icmp ugt i64 1, %"$gasrem_714"
  br i1 %"$gascmp_715", label %"$out_of_gas_716", label %"$have_gas_717"

"$out_of_gas_716":                                ; preds = %"$have_gas_706"
  call void @_out_of_gas()
  br label %"$have_gas_717"

"$have_gas_717":                                  ; preds = %"$out_of_gas_716", %"$have_gas_706"
  %"$consume_718" = sub i64 %"$gasrem_714", 1
  store i64 %"$consume_718", i64* @_gasrem, align 8
  %b25 = alloca %TName_Bool*, align 8
  %"$gasrem_719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_720" = icmp ugt i64 1, %"$gasrem_719"
  br i1 %"$gascmp_720", label %"$out_of_gas_721", label %"$have_gas_722"

"$out_of_gas_721":                                ; preds = %"$have_gas_717"
  call void @_out_of_gas()
  br label %"$have_gas_722"

"$have_gas_722":                                  ; preds = %"$out_of_gas_721", %"$have_gas_717"
  %"$consume_723" = sub i64 %"$gasrem_719", 1
  store i64 %"$consume_723", i64* @_gasrem, align 8
  %"$BoolUtils.andb_13" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_724" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_725" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_724", 0
  %"$BoolUtils.andb_envptr_726" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_724", 1
  %"$b22_727" = load %TName_Bool*, %TName_Bool** %b22, align 8
  %"$BoolUtils.andb_call_728" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_725"(i8* %"$BoolUtils.andb_envptr_726", %TName_Bool* %"$b22_727")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_728", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13", align 8
  %"$BoolUtils.andb_14" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_13_729" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13", align 8
  %"$$BoolUtils.andb_13_fptr_730" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_729", 0
  %"$$BoolUtils.andb_13_envptr_731" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_729", 1
  %"$b24_732" = load %TName_Bool*, %TName_Bool** %b24, align 8
  %"$$BoolUtils.andb_13_call_733" = call %TName_Bool* %"$$BoolUtils.andb_13_fptr_730"(i8* %"$$BoolUtils.andb_13_envptr_731", %TName_Bool* %"$b24_732")
  store %TName_Bool* %"$$BoolUtils.andb_13_call_733", %TName_Bool** %"$BoolUtils.andb_14", align 8
  %"$$BoolUtils.andb_14_734" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_14", align 8
  store %TName_Bool* %"$$BoolUtils.andb_14_734", %TName_Bool** %b25, align 8
  %"$gasrem_735" = load i64, i64* @_gasrem, align 8
  %"$gascmp_736" = icmp ugt i64 1, %"$gasrem_735"
  br i1 %"$gascmp_736", label %"$out_of_gas_737", label %"$have_gas_738"

"$out_of_gas_737":                                ; preds = %"$have_gas_722"
  call void @_out_of_gas()
  br label %"$have_gas_738"

"$have_gas_738":                                  ; preds = %"$out_of_gas_737", %"$have_gas_722"
  %"$consume_739" = sub i64 %"$gasrem_735", 1
  store i64 %"$consume_739", i64* @_gasrem, align 8
  %bn1 = alloca i8*, align 8
  %"$gasrem_740" = load i64, i64* @_gasrem, align 8
  %"$gascmp_741" = icmp ugt i64 1, %"$gasrem_740"
  br i1 %"$gascmp_741", label %"$out_of_gas_742", label %"$have_gas_743"

"$out_of_gas_742":                                ; preds = %"$have_gas_738"
  call void @_out_of_gas()
  br label %"$have_gas_743"

"$have_gas_743":                                  ; preds = %"$out_of_gas_742", %"$have_gas_738"
  %"$consume_744" = sub i64 %"$gasrem_740", 1
  store i64 %"$consume_744", i64* @_gasrem, align 8
  %"$execptr_load_746" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_747" = call i8* @_new_bnum(i8* %"$execptr_load_746", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_745", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_747", i8** %bn1, align 8
  %"$gasrem_749" = load i64, i64* @_gasrem, align 8
  %"$gascmp_750" = icmp ugt i64 1, %"$gasrem_749"
  br i1 %"$gascmp_750", label %"$out_of_gas_751", label %"$have_gas_752"

"$out_of_gas_751":                                ; preds = %"$have_gas_743"
  call void @_out_of_gas()
  br label %"$have_gas_752"

"$have_gas_752":                                  ; preds = %"$out_of_gas_751", %"$have_gas_743"
  %"$consume_753" = sub i64 %"$gasrem_749", 1
  store i64 %"$consume_753", i64* @_gasrem, align 8
  %bn2 = alloca i8*, align 8
  %"$gasrem_754" = load i64, i64* @_gasrem, align 8
  %"$gascmp_755" = icmp ugt i64 1, %"$gasrem_754"
  br i1 %"$gascmp_755", label %"$out_of_gas_756", label %"$have_gas_757"

"$out_of_gas_756":                                ; preds = %"$have_gas_752"
  call void @_out_of_gas()
  br label %"$have_gas_757"

"$have_gas_757":                                  ; preds = %"$out_of_gas_756", %"$have_gas_752"
  %"$consume_758" = sub i64 %"$gasrem_754", 1
  store i64 %"$consume_758", i64* @_gasrem, align 8
  %"$execptr_load_760" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_761" = call i8* @_new_bnum(i8* %"$execptr_load_760", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_759", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_761", i8** %bn2, align 8
  %"$gasrem_763" = load i64, i64* @_gasrem, align 8
  %"$gascmp_764" = icmp ugt i64 1, %"$gasrem_763"
  br i1 %"$gascmp_764", label %"$out_of_gas_765", label %"$have_gas_766"

"$out_of_gas_765":                                ; preds = %"$have_gas_757"
  call void @_out_of_gas()
  br label %"$have_gas_766"

"$have_gas_766":                                  ; preds = %"$out_of_gas_765", %"$have_gas_757"
  %"$consume_767" = sub i64 %"$gasrem_763", 1
  store i64 %"$consume_767", i64* @_gasrem, align 8
  %bn3 = alloca i8*, align 8
  %"$gasrem_768" = load i64, i64* @_gasrem, align 8
  %"$gascmp_769" = icmp ugt i64 1, %"$gasrem_768"
  br i1 %"$gascmp_769", label %"$out_of_gas_770", label %"$have_gas_771"

"$out_of_gas_770":                                ; preds = %"$have_gas_766"
  call void @_out_of_gas()
  br label %"$have_gas_771"

"$have_gas_771":                                  ; preds = %"$out_of_gas_770", %"$have_gas_766"
  %"$consume_772" = sub i64 %"$gasrem_768", 1
  store i64 %"$consume_772", i64* @_gasrem, align 8
  %"$execptr_load_774" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_775" = call i8* @_new_bnum(i8* %"$execptr_load_774", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_773", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_775", i8** %bn3, align 8
  %"$gasrem_777" = load i64, i64* @_gasrem, align 8
  %"$gascmp_778" = icmp ugt i64 1, %"$gasrem_777"
  br i1 %"$gascmp_778", label %"$out_of_gas_779", label %"$have_gas_780"

"$out_of_gas_779":                                ; preds = %"$have_gas_771"
  call void @_out_of_gas()
  br label %"$have_gas_780"

"$have_gas_780":                                  ; preds = %"$out_of_gas_779", %"$have_gas_771"
  %"$consume_781" = sub i64 %"$gasrem_777", 1
  store i64 %"$consume_781", i64* @_gasrem, align 8
  %b26 = alloca %TName_Bool*, align 8
  %"$gasrem_782" = load i64, i64* @_gasrem, align 8
  %"$gascmp_783" = icmp ugt i64 32, %"$gasrem_782"
  br i1 %"$gascmp_783", label %"$out_of_gas_784", label %"$have_gas_785"

"$out_of_gas_784":                                ; preds = %"$have_gas_780"
  call void @_out_of_gas()
  br label %"$have_gas_785"

"$have_gas_785":                                  ; preds = %"$out_of_gas_784", %"$have_gas_780"
  %"$consume_786" = sub i64 %"$gasrem_782", 32
  store i64 %"$consume_786", i64* @_gasrem, align 8
  %"$execptr_load_787" = load i8*, i8** @_execptr, align 8
  %"$bn1_788" = load i8*, i8** %bn1, align 8
  %"$bn2_789" = load i8*, i8** %bn2, align 8
  %"$eq_call_790" = call %TName_Bool* @_eq_BNum(i8* %"$execptr_load_787", i8* %"$bn1_788", i8* %"$bn2_789")
  store %TName_Bool* %"$eq_call_790", %TName_Bool** %b26, align 8
  %"$gasrem_792" = load i64, i64* @_gasrem, align 8
  %"$gascmp_793" = icmp ugt i64 1, %"$gasrem_792"
  br i1 %"$gascmp_793", label %"$out_of_gas_794", label %"$have_gas_795"

"$out_of_gas_794":                                ; preds = %"$have_gas_785"
  call void @_out_of_gas()
  br label %"$have_gas_795"

"$have_gas_795":                                  ; preds = %"$out_of_gas_794", %"$have_gas_785"
  %"$consume_796" = sub i64 %"$gasrem_792", 1
  store i64 %"$consume_796", i64* @_gasrem, align 8
  %b27 = alloca %TName_Bool*, align 8
  %"$gasrem_797" = load i64, i64* @_gasrem, align 8
  %"$gascmp_798" = icmp ugt i64 1, %"$gasrem_797"
  br i1 %"$gascmp_798", label %"$out_of_gas_799", label %"$have_gas_800"

"$out_of_gas_799":                                ; preds = %"$have_gas_795"
  call void @_out_of_gas()
  br label %"$have_gas_800"

"$have_gas_800":                                  ; preds = %"$out_of_gas_799", %"$have_gas_795"
  %"$consume_801" = sub i64 %"$gasrem_797", 1
  store i64 %"$consume_801", i64* @_gasrem, align 8
  %"$BoolUtils.negb_15" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_802" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_803" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_802", 0
  %"$BoolUtils.negb_envptr_804" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_802", 1
  %"$b26_805" = load %TName_Bool*, %TName_Bool** %b26, align 8
  %"$BoolUtils.negb_call_806" = call %TName_Bool* %"$BoolUtils.negb_fptr_803"(i8* %"$BoolUtils.negb_envptr_804", %TName_Bool* %"$b26_805")
  store %TName_Bool* %"$BoolUtils.negb_call_806", %TName_Bool** %"$BoolUtils.negb_15", align 8
  %"$$BoolUtils.negb_15_807" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_15", align 8
  store %TName_Bool* %"$$BoolUtils.negb_15_807", %TName_Bool** %b27, align 8
  %"$gasrem_808" = load i64, i64* @_gasrem, align 8
  %"$gascmp_809" = icmp ugt i64 1, %"$gasrem_808"
  br i1 %"$gascmp_809", label %"$out_of_gas_810", label %"$have_gas_811"

"$out_of_gas_810":                                ; preds = %"$have_gas_800"
  call void @_out_of_gas()
  br label %"$have_gas_811"

"$have_gas_811":                                  ; preds = %"$out_of_gas_810", %"$have_gas_800"
  %"$consume_812" = sub i64 %"$gasrem_808", 1
  store i64 %"$consume_812", i64* @_gasrem, align 8
  %b28 = alloca %TName_Bool*, align 8
  %"$gasrem_813" = load i64, i64* @_gasrem, align 8
  %"$gascmp_814" = icmp ugt i64 32, %"$gasrem_813"
  br i1 %"$gascmp_814", label %"$out_of_gas_815", label %"$have_gas_816"

"$out_of_gas_815":                                ; preds = %"$have_gas_811"
  call void @_out_of_gas()
  br label %"$have_gas_816"

"$have_gas_816":                                  ; preds = %"$out_of_gas_815", %"$have_gas_811"
  %"$consume_817" = sub i64 %"$gasrem_813", 32
  store i64 %"$consume_817", i64* @_gasrem, align 8
  %"$execptr_load_818" = load i8*, i8** @_execptr, align 8
  %"$bn1_819" = load i8*, i8** %bn1, align 8
  %"$bn3_820" = load i8*, i8** %bn3, align 8
  %"$eq_call_821" = call %TName_Bool* @_eq_BNum(i8* %"$execptr_load_818", i8* %"$bn1_819", i8* %"$bn3_820")
  store %TName_Bool* %"$eq_call_821", %TName_Bool** %b28, align 8
  %"$gasrem_823" = load i64, i64* @_gasrem, align 8
  %"$gascmp_824" = icmp ugt i64 1, %"$gasrem_823"
  br i1 %"$gascmp_824", label %"$out_of_gas_825", label %"$have_gas_826"

"$out_of_gas_825":                                ; preds = %"$have_gas_816"
  call void @_out_of_gas()
  br label %"$have_gas_826"

"$have_gas_826":                                  ; preds = %"$out_of_gas_825", %"$have_gas_816"
  %"$consume_827" = sub i64 %"$gasrem_823", 1
  store i64 %"$consume_827", i64* @_gasrem, align 8
  %b29 = alloca %TName_Bool*, align 8
  %"$gasrem_828" = load i64, i64* @_gasrem, align 8
  %"$gascmp_829" = icmp ugt i64 1, %"$gasrem_828"
  br i1 %"$gascmp_829", label %"$out_of_gas_830", label %"$have_gas_831"

"$out_of_gas_830":                                ; preds = %"$have_gas_826"
  call void @_out_of_gas()
  br label %"$have_gas_831"

"$have_gas_831":                                  ; preds = %"$out_of_gas_830", %"$have_gas_826"
  %"$consume_832" = sub i64 %"$gasrem_828", 1
  store i64 %"$consume_832", i64* @_gasrem, align 8
  %"$BoolUtils.andb_16" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_833" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_834" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_833", 0
  %"$BoolUtils.andb_envptr_835" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_833", 1
  %"$b27_836" = load %TName_Bool*, %TName_Bool** %b27, align 8
  %"$BoolUtils.andb_call_837" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_834"(i8* %"$BoolUtils.andb_envptr_835", %TName_Bool* %"$b27_836")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_837", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_16", align 8
  %"$BoolUtils.andb_17" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_16_838" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_16", align 8
  %"$$BoolUtils.andb_16_fptr_839" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_16_838", 0
  %"$$BoolUtils.andb_16_envptr_840" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_16_838", 1
  %"$b28_841" = load %TName_Bool*, %TName_Bool** %b28, align 8
  %"$$BoolUtils.andb_16_call_842" = call %TName_Bool* %"$$BoolUtils.andb_16_fptr_839"(i8* %"$$BoolUtils.andb_16_envptr_840", %TName_Bool* %"$b28_841")
  store %TName_Bool* %"$$BoolUtils.andb_16_call_842", %TName_Bool** %"$BoolUtils.andb_17", align 8
  %"$$BoolUtils.andb_17_843" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_17", align 8
  store %TName_Bool* %"$$BoolUtils.andb_17_843", %TName_Bool** %b29, align 8
  %"$gasrem_844" = load i64, i64* @_gasrem, align 8
  %"$gascmp_845" = icmp ugt i64 1, %"$gasrem_844"
  br i1 %"$gascmp_845", label %"$out_of_gas_846", label %"$have_gas_847"

"$out_of_gas_846":                                ; preds = %"$have_gas_831"
  call void @_out_of_gas()
  br label %"$have_gas_847"

"$have_gas_847":                                  ; preds = %"$out_of_gas_846", %"$have_gas_831"
  %"$consume_848" = sub i64 %"$gasrem_844", 1
  store i64 %"$consume_848", i64* @_gasrem, align 8
  %"$BoolUtils.andb_18" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_849" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_850" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_849", 0
  %"$BoolUtils.andb_envptr_851" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_849", 1
  %"$b25_852" = load %TName_Bool*, %TName_Bool** %b25, align 8
  %"$BoolUtils.andb_call_853" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_850"(i8* %"$BoolUtils.andb_envptr_851", %TName_Bool* %"$b25_852")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_853", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_18", align 8
  %"$BoolUtils.andb_19" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_18_854" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_18", align 8
  %"$$BoolUtils.andb_18_fptr_855" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_18_854", 0
  %"$$BoolUtils.andb_18_envptr_856" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_18_854", 1
  %"$b29_857" = load %TName_Bool*, %TName_Bool** %b29, align 8
  %"$$BoolUtils.andb_18_call_858" = call %TName_Bool* %"$$BoolUtils.andb_18_fptr_855"(i8* %"$$BoolUtils.andb_18_envptr_856", %TName_Bool* %"$b29_857")
  store %TName_Bool* %"$$BoolUtils.andb_18_call_858", %TName_Bool** %"$BoolUtils.andb_19", align 8
  %"$$BoolUtils.andb_19_859" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_19", align 8
  store %TName_Bool* %"$$BoolUtils.andb_19_859", %TName_Bool** %"$expr_30", align 8
  %"$$expr_30_860" = load %TName_Bool*, %TName_Bool** %"$expr_30", align 8
  ret %TName_Bool* %"$$expr_30_860"
}

declare %TName_Bool* @_eq_Uint128(i8*, %Uint128, %Uint128)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #0

declare %TName_Bool* @_eq_String(i8*, %String, %String)

declare %TName_Bool* @_eq_ByStrX(i8*, i32, i8*, i8*)

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare %TName_Bool* @_eq_ByStr(i8*, %Bystr, %Bystr)

declare i8* @_new_bnum(i8*, %BNumString)

declare %TName_Bool* @_eq_BNum(i8*, i8*, i8*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_861" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_862" = bitcast %TName_Bool* %"$exprval_861" to i8*
  %"$execptr_load_863" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_863", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_67", i8* %"$memvoidcast_862")
  ret void
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
