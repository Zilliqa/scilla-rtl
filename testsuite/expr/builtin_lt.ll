; let bn1 = BNum 100 in
; let bn2 = BNum 200 in
; let res1 = builtin blt bn1 bn2 in
; let res2n = builtin blt bn2 bn1 in
; let res2 = negb res2n in
; 
; let n1 = Int32 -100 in
; let n2 = Int32 200 in
; let res3 = builtin lt n1 n2 in
; let res4n = builtin lt n2 n1 in
; let res4 = negb res4n in
; 
; let n1 = Uint256 100 in
; let n2 = Uint256 200 in
; let res5 = builtin lt n1 n2 in
; let res6n = builtin lt n2 n1 in
; let res6 = negb res6n in
; 
; let res7 = andb res1 res2 in
; let res8 = andb res3 res4 in
; let res9 = andb res5 res6 in
; let res10 = andb res7 res8 in
; andb res9 res10
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_22" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_52" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_51"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_51" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_53"**, %"$TyDescrTy_ADTTyp_52"* }
%"$TyDescrTy_ADTTyp_Constr_53" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%"$ParamDescr_476" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_477" = type { %ParamDescrString, i32, %"$ParamDescr_476"* }
%"$$fundef_15_env_70" = type {}
%"$$fundef_19_env_71" = type { %TName_Bool* }
%"$$fundef_17_env_72" = type {}
%BNumString = type { i8*, i32 }
%Int32 = type { i32 }
%Uint256 = type { i256 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_23" = global %"$TyDescrTy_PrimTyp_22" zeroinitializer
@"$TyDescr_Int32_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_22"* @"$TyDescr_Int32_Prim_23" to i8*) }
@"$TyDescr_Uint32_Prim_25" = global %"$TyDescrTy_PrimTyp_22" { i32 1, i32 0 }
@"$TyDescr_Uint32_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_22"* @"$TyDescr_Uint32_Prim_25" to i8*) }
@"$TyDescr_Int64_Prim_27" = global %"$TyDescrTy_PrimTyp_22" { i32 0, i32 1 }
@"$TyDescr_Int64_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_22"* @"$TyDescr_Int64_Prim_27" to i8*) }
@"$TyDescr_Uint64_Prim_29" = global %"$TyDescrTy_PrimTyp_22" { i32 1, i32 1 }
@"$TyDescr_Uint64_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_22"* @"$TyDescr_Uint64_Prim_29" to i8*) }
@"$TyDescr_Int128_Prim_31" = global %"$TyDescrTy_PrimTyp_22" { i32 0, i32 2 }
@"$TyDescr_Int128_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_22"* @"$TyDescr_Int128_Prim_31" to i8*) }
@"$TyDescr_Uint128_Prim_33" = global %"$TyDescrTy_PrimTyp_22" { i32 1, i32 2 }
@"$TyDescr_Uint128_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_22"* @"$TyDescr_Uint128_Prim_33" to i8*) }
@"$TyDescr_Int256_Prim_35" = global %"$TyDescrTy_PrimTyp_22" { i32 0, i32 3 }
@"$TyDescr_Int256_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_22"* @"$TyDescr_Int256_Prim_35" to i8*) }
@"$TyDescr_Uint256_Prim_37" = global %"$TyDescrTy_PrimTyp_22" { i32 1, i32 3 }
@"$TyDescr_Uint256_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_22"* @"$TyDescr_Uint256_Prim_37" to i8*) }
@"$TyDescr_String_Prim_39" = global %"$TyDescrTy_PrimTyp_22" { i32 2, i32 0 }
@"$TyDescr_String_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_22"* @"$TyDescr_String_Prim_39" to i8*) }
@"$TyDescr_Bnum_Prim_41" = global %"$TyDescrTy_PrimTyp_22" { i32 3, i32 0 }
@"$TyDescr_Bnum_42" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_22"* @"$TyDescr_Bnum_Prim_41" to i8*) }
@"$TyDescr_Message_Prim_43" = global %"$TyDescrTy_PrimTyp_22" { i32 4, i32 0 }
@"$TyDescr_Message_44" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_22"* @"$TyDescr_Message_Prim_43" to i8*) }
@"$TyDescr_Event_Prim_45" = global %"$TyDescrTy_PrimTyp_22" { i32 5, i32 0 }
@"$TyDescr_Event_46" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_22"* @"$TyDescr_Event_Prim_45" to i8*) }
@"$TyDescr_Exception_Prim_47" = global %"$TyDescrTy_PrimTyp_22" { i32 6, i32 0 }
@"$TyDescr_Exception_48" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_22"* @"$TyDescr_Exception_Prim_47" to i8*) }
@"$TyDescr_Bystr_Prim_49" = global %"$TyDescrTy_PrimTyp_22" { i32 7, i32 0 }
@"$TyDescr_Bystr_50" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_22"* @"$TyDescr_Bystr_Prim_49" to i8*) }
@"$TyDescr_ADT_Bool_54" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_51"* @"$TyDescr_Bool_ADTTyp_Specl_67" to i8*) }
@"$TyDescr_Bool_ADTTyp_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_52" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_69", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_51"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_51"*], [1 x %"$TyDescrTy_ADTTyp_Specl_51"*]* @"$TyDescr_Bool_ADTTyp_m_specls_68", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_59" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_60" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_61" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_53" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_60", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_59", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_62" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_63" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_53" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_63", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_62", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_65" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_53"*] [%"$TyDescrTy_ADTTyp_Constr_53"* @"$TyDescr_Bool_True_ADTTyp_Constr_61", %"$TyDescrTy_ADTTyp_Constr_53"* @"$TyDescr_Bool_False_ADTTyp_Constr_64"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_66" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_67" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_51" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_66", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_53"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_53"*], [2 x %"$TyDescrTy_ADTTyp_Constr_53"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_65", i32 0, i32 0), %"$TyDescrTy_ADTTyp_52"* @"$TyDescr_Bool_ADTTyp_58" }
@"$TyDescr_Bool_ADTTyp_m_specls_68" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_51"*] [%"$TyDescrTy_ADTTyp_Specl_51"* @"$TyDescr_Bool_ADTTyp_Specl_67"]
@"$TyDescr_ADT_Bool_69" = unnamed_addr constant [4 x i8] c"Bool"
@BoolUtils.andb = global { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } zeroinitializer
@BoolUtils.negb = global { %TName_Bool* (i8*, %TName_Bool*)*, i8* } zeroinitializer
@"$BNumLit_170" = unnamed_addr constant [3 x i8] c"100"
@"$BNumLit_184" = unnamed_addr constant [3 x i8] c"200"
@_tydescr_table = constant [15 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_46", %_TyDescrTy_Typ* @"$TyDescr_Int64_28", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_54", %_TyDescrTy_Typ* @"$TyDescr_Uint256_38", %_TyDescrTy_Typ* @"$TyDescr_Uint32_26", %_TyDescrTy_Typ* @"$TyDescr_Uint64_30", %_TyDescrTy_Typ* @"$TyDescr_Bnum_42", %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", %_TyDescrTy_Typ* @"$TyDescr_Exception_48", %_TyDescrTy_Typ* @"$TyDescr_String_40", %_TyDescrTy_Typ* @"$TyDescr_Int256_36", %_TyDescrTy_Typ* @"$TyDescr_Int128_32", %_TyDescrTy_Typ* @"$TyDescr_Bystr_50", %_TyDescrTy_Typ* @"$TyDescr_Message_44", %_TyDescrTy_Typ* @"$TyDescr_Int32_24"]
@_tydescr_table_length = constant i32 15
@_contract_parameters = constant [0 x %"$ParamDescr_476"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_477"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_15"(%"$$fundef_15_env_70"* %0, %TName_Bool* %1) {
entry:
  %"$retval_16" = alloca %TName_Bool*, align 8
  %"$gasrem_114" = load i64, i64* @_gasrem, align 8
  %"$gascmp_115" = icmp ugt i64 2, %"$gasrem_114"
  br i1 %"$gascmp_115", label %"$out_of_gas_116", label %"$have_gas_117"

"$out_of_gas_116":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_117"

"$have_gas_117":                                  ; preds = %"$out_of_gas_116", %entry
  %"$consume_118" = sub i64 %"$gasrem_114", 2
  store i64 %"$consume_118", i64* @_gasrem, align 8
  %"$b_tag_120" = getelementptr inbounds %TName_Bool, %TName_Bool* %1, i32 0, i32 0
  %"$b_tag_121" = load i8, i8* %"$b_tag_120", align 1
  switch i8 %"$b_tag_121", label %"$empty_default_122" [
    i8 0, label %"$True_123"
    i8 1, label %"$False_133"
  ]

"$True_123":                                      ; preds = %"$have_gas_117"
  %"$b_124" = bitcast %TName_Bool* %1 to %CName_True*
  %"$gasrem_125" = load i64, i64* @_gasrem, align 8
  %"$gascmp_126" = icmp ugt i64 1, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$True_123"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$True_123"
  %"$consume_129" = sub i64 %"$gasrem_125", 1
  store i64 %"$consume_129", i64* @_gasrem, align 8
  %"$adtval_130_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_130_salloc" = call i8* @_salloc(i8* %"$adtval_130_load", i64 1)
  %"$adtval_130" = bitcast i8* %"$adtval_130_salloc" to %CName_False*
  %"$adtgep_131" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_130", i32 0, i32 0
  store i8 1, i8* %"$adtgep_131", align 1
  %"$adtptr_132" = bitcast %CName_False* %"$adtval_130" to %TName_Bool*
  store %TName_Bool* %"$adtptr_132", %TName_Bool** %"$retval_16", align 8
  br label %"$matchsucc_119"

"$False_133":                                     ; preds = %"$have_gas_117"
  %"$b_134" = bitcast %TName_Bool* %1 to %CName_False*
  %"$gasrem_135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_136" = icmp ugt i64 1, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %"$False_133"
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %"$False_133"
  %"$consume_139" = sub i64 %"$gasrem_135", 1
  store i64 %"$consume_139", i64* @_gasrem, align 8
  %"$adtval_140_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_140_salloc" = call i8* @_salloc(i8* %"$adtval_140_load", i64 1)
  %"$adtval_140" = bitcast i8* %"$adtval_140_salloc" to %CName_True*
  %"$adtgep_141" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_140", i32 0, i32 0
  store i8 0, i8* %"$adtgep_141", align 1
  %"$adtptr_142" = bitcast %CName_True* %"$adtval_140" to %TName_Bool*
  store %TName_Bool* %"$adtptr_142", %TName_Bool** %"$retval_16", align 8
  br label %"$matchsucc_119"

"$empty_default_122":                             ; preds = %"$have_gas_117"
  br label %"$matchsucc_119"

"$matchsucc_119":                                 ; preds = %"$have_gas_138", %"$have_gas_128", %"$empty_default_122"
  %"$$retval_16_143" = load %TName_Bool*, %TName_Bool** %"$retval_16", align 8
  ret %TName_Bool* %"$$retval_16_143"
}

define internal %TName_Bool* @"$fundef_19"(%"$$fundef_19_env_71"* %0, %TName_Bool* %1) {
entry:
  %"$$fundef_19_env_b_84" = getelementptr inbounds %"$$fundef_19_env_71", %"$$fundef_19_env_71"* %0, i32 0, i32 0
  %"$b_envload_85" = load %TName_Bool*, %TName_Bool** %"$$fundef_19_env_b_84", align 8
  %b = alloca %TName_Bool*, align 8
  store %TName_Bool* %"$b_envload_85", %TName_Bool** %b, align 8
  %"$retval_20" = alloca %TName_Bool*, align 8
  %"$gasrem_86" = load i64, i64* @_gasrem, align 8
  %"$gascmp_87" = icmp ugt i64 2, %"$gasrem_86"
  br i1 %"$gascmp_87", label %"$out_of_gas_88", label %"$have_gas_89"

"$out_of_gas_88":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_89"

"$have_gas_89":                                   ; preds = %"$out_of_gas_88", %entry
  %"$consume_90" = sub i64 %"$gasrem_86", 2
  store i64 %"$consume_90", i64* @_gasrem, align 8
  %"$b_92" = load %TName_Bool*, %TName_Bool** %b, align 8
  %"$b_tag_93" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$b_92", i32 0, i32 0
  %"$b_tag_94" = load i8, i8* %"$b_tag_93", align 1
  switch i8 %"$b_tag_94", label %"$empty_default_95" [
    i8 1, label %"$False_96"
    i8 0, label %"$True_106"
  ]

"$False_96":                                      ; preds = %"$have_gas_89"
  %"$b_97" = bitcast %TName_Bool* %"$b_92" to %CName_False*
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 1, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %"$False_96"
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %"$False_96"
  %"$consume_102" = sub i64 %"$gasrem_98", 1
  store i64 %"$consume_102", i64* @_gasrem, align 8
  %"$adtval_103_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_103_salloc" = call i8* @_salloc(i8* %"$adtval_103_load", i64 1)
  %"$adtval_103" = bitcast i8* %"$adtval_103_salloc" to %CName_False*
  %"$adtgep_104" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_103", i32 0, i32 0
  store i8 1, i8* %"$adtgep_104", align 1
  %"$adtptr_105" = bitcast %CName_False* %"$adtval_103" to %TName_Bool*
  store %TName_Bool* %"$adtptr_105", %TName_Bool** %"$retval_20", align 8
  br label %"$matchsucc_91"

"$True_106":                                      ; preds = %"$have_gas_89"
  %"$b_107" = bitcast %TName_Bool* %"$b_92" to %CName_True*
  %"$gasrem_108" = load i64, i64* @_gasrem, align 8
  %"$gascmp_109" = icmp ugt i64 1, %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %"$True_106"
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %"$True_106"
  %"$consume_112" = sub i64 %"$gasrem_108", 1
  store i64 %"$consume_112", i64* @_gasrem, align 8
  store %TName_Bool* %1, %TName_Bool** %"$retval_20", align 8
  br label %"$matchsucc_91"

"$empty_default_95":                              ; preds = %"$have_gas_89"
  br label %"$matchsucc_91"

"$matchsucc_91":                                  ; preds = %"$have_gas_111", %"$have_gas_101", %"$empty_default_95"
  %"$$retval_20_113" = load %TName_Bool*, %TName_Bool** %"$retval_20", align 8
  ret %TName_Bool* %"$$retval_20_113"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_17"(%"$$fundef_17_env_72"* %0, %TName_Bool* %1) {
entry:
  %"$retval_18" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$gasrem_73" = load i64, i64* @_gasrem, align 8
  %"$gascmp_74" = icmp ugt i64 1, %"$gasrem_73"
  br i1 %"$gascmp_74", label %"$out_of_gas_75", label %"$have_gas_76"

"$out_of_gas_75":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_76"

"$have_gas_76":                                   ; preds = %"$out_of_gas_75", %entry
  %"$consume_77" = sub i64 %"$gasrem_73", 1
  store i64 %"$consume_77", i64* @_gasrem, align 8
  %"$$fundef_19_envp_78_load" = load i8*, i8** @_execptr, align 8
  %"$$fundef_19_envp_78_salloc" = call i8* @_salloc(i8* %"$$fundef_19_envp_78_load", i64 8)
  %"$$fundef_19_envp_78" = bitcast i8* %"$$fundef_19_envp_78_salloc" to %"$$fundef_19_env_71"*
  %"$$fundef_19_env_voidp_80" = bitcast %"$$fundef_19_env_71"* %"$$fundef_19_envp_78" to i8*
  %"$$fundef_19_cloval_81" = insertvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_19_env_71"*, %TName_Bool*)* @"$fundef_19" to %TName_Bool* (i8*, %TName_Bool*)*), i8* undef }, i8* %"$$fundef_19_env_voidp_80", 1
  %"$$fundef_19_env_b_82" = getelementptr inbounds %"$$fundef_19_env_71", %"$$fundef_19_env_71"* %"$$fundef_19_envp_78", i32 0, i32 0
  store %TName_Bool* %1, %TName_Bool** %"$$fundef_19_env_b_82", align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_19_cloval_81", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_18", align 8
  %"$$retval_18_83" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_18", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_18_83"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
entry:
  %"$gasrem_144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_145" = icmp ugt i64 1, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %entry
  %"$consume_148" = sub i64 %"$gasrem_144", 1
  store i64 %"$consume_148", i64* @_gasrem, align 8
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_17_env_72"*, %TName_Bool*)* @"$fundef_17" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$gasrem_152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_153" = icmp ugt i64 1, %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %"$have_gas_147"
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %"$have_gas_147"
  %"$consume_156" = sub i64 %"$gasrem_152", 1
  store i64 %"$consume_156", i64* @_gasrem, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_15_env_70"*, %TName_Bool*)* @"$fundef_15" to %TName_Bool* (i8*, %TName_Bool*)*), i8* null }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_21" = alloca %TName_Bool*, align 8
  %"$gasrem_160" = load i64, i64* @_gasrem, align 8
  %"$gascmp_161" = icmp ugt i64 1, %"$gasrem_160"
  br i1 %"$gascmp_161", label %"$out_of_gas_162", label %"$have_gas_163"

"$out_of_gas_162":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_163"

"$have_gas_163":                                  ; preds = %"$out_of_gas_162", %entry
  %"$consume_164" = sub i64 %"$gasrem_160", 1
  store i64 %"$consume_164", i64* @_gasrem, align 8
  %bn1 = alloca i8*, align 8
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 1, %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %"$have_gas_163"
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %"$have_gas_163"
  %"$consume_169" = sub i64 %"$gasrem_165", 1
  store i64 %"$consume_169", i64* @_gasrem, align 8
  %"$execptr_load_171" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_172" = call i8* @_new_bnum(i8* %"$execptr_load_171", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_170", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_172", i8** %bn1, align 8
  %"$gasrem_174" = load i64, i64* @_gasrem, align 8
  %"$gascmp_175" = icmp ugt i64 1, %"$gasrem_174"
  br i1 %"$gascmp_175", label %"$out_of_gas_176", label %"$have_gas_177"

"$out_of_gas_176":                                ; preds = %"$have_gas_168"
  call void @_out_of_gas()
  br label %"$have_gas_177"

"$have_gas_177":                                  ; preds = %"$out_of_gas_176", %"$have_gas_168"
  %"$consume_178" = sub i64 %"$gasrem_174", 1
  store i64 %"$consume_178", i64* @_gasrem, align 8
  %bn2 = alloca i8*, align 8
  %"$gasrem_179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_180" = icmp ugt i64 1, %"$gasrem_179"
  br i1 %"$gascmp_180", label %"$out_of_gas_181", label %"$have_gas_182"

"$out_of_gas_181":                                ; preds = %"$have_gas_177"
  call void @_out_of_gas()
  br label %"$have_gas_182"

"$have_gas_182":                                  ; preds = %"$out_of_gas_181", %"$have_gas_177"
  %"$consume_183" = sub i64 %"$gasrem_179", 1
  store i64 %"$consume_183", i64* @_gasrem, align 8
  %"$execptr_load_185" = load i8*, i8** @_execptr, align 8
  %"$_new_bnum_call_186" = call i8* @_new_bnum(i8* %"$execptr_load_185", %BNumString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$BNumLit_184", i32 0, i32 0), i32 3 })
  store i8* %"$_new_bnum_call_186", i8** %bn2, align 8
  %"$gasrem_188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_189" = icmp ugt i64 1, %"$gasrem_188"
  br i1 %"$gascmp_189", label %"$out_of_gas_190", label %"$have_gas_191"

"$out_of_gas_190":                                ; preds = %"$have_gas_182"
  call void @_out_of_gas()
  br label %"$have_gas_191"

"$have_gas_191":                                  ; preds = %"$out_of_gas_190", %"$have_gas_182"
  %"$consume_192" = sub i64 %"$gasrem_188", 1
  store i64 %"$consume_192", i64* @_gasrem, align 8
  %res1 = alloca %TName_Bool*, align 8
  %"$gasrem_193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_194" = icmp ugt i64 32, %"$gasrem_193"
  br i1 %"$gascmp_194", label %"$out_of_gas_195", label %"$have_gas_196"

"$out_of_gas_195":                                ; preds = %"$have_gas_191"
  call void @_out_of_gas()
  br label %"$have_gas_196"

"$have_gas_196":                                  ; preds = %"$out_of_gas_195", %"$have_gas_191"
  %"$consume_197" = sub i64 %"$gasrem_193", 32
  store i64 %"$consume_197", i64* @_gasrem, align 8
  %"$execptr_load_198" = load i8*, i8** @_execptr, align 8
  %"$bn1_199" = load i8*, i8** %bn1, align 8
  %"$bn2_200" = load i8*, i8** %bn2, align 8
  %"$blt_call_201" = call %TName_Bool* @_lt_BNum(i8* %"$execptr_load_198", i8* %"$bn1_199", i8* %"$bn2_200")
  store %TName_Bool* %"$blt_call_201", %TName_Bool** %res1, align 8
  %"$gasrem_203" = load i64, i64* @_gasrem, align 8
  %"$gascmp_204" = icmp ugt i64 1, %"$gasrem_203"
  br i1 %"$gascmp_204", label %"$out_of_gas_205", label %"$have_gas_206"

"$out_of_gas_205":                                ; preds = %"$have_gas_196"
  call void @_out_of_gas()
  br label %"$have_gas_206"

"$have_gas_206":                                  ; preds = %"$out_of_gas_205", %"$have_gas_196"
  %"$consume_207" = sub i64 %"$gasrem_203", 1
  store i64 %"$consume_207", i64* @_gasrem, align 8
  %res2n = alloca %TName_Bool*, align 8
  %"$gasrem_208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_209" = icmp ugt i64 32, %"$gasrem_208"
  br i1 %"$gascmp_209", label %"$out_of_gas_210", label %"$have_gas_211"

"$out_of_gas_210":                                ; preds = %"$have_gas_206"
  call void @_out_of_gas()
  br label %"$have_gas_211"

"$have_gas_211":                                  ; preds = %"$out_of_gas_210", %"$have_gas_206"
  %"$consume_212" = sub i64 %"$gasrem_208", 32
  store i64 %"$consume_212", i64* @_gasrem, align 8
  %"$execptr_load_213" = load i8*, i8** @_execptr, align 8
  %"$bn2_214" = load i8*, i8** %bn2, align 8
  %"$bn1_215" = load i8*, i8** %bn1, align 8
  %"$blt_call_216" = call %TName_Bool* @_lt_BNum(i8* %"$execptr_load_213", i8* %"$bn2_214", i8* %"$bn1_215")
  store %TName_Bool* %"$blt_call_216", %TName_Bool** %res2n, align 8
  %"$gasrem_218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_219" = icmp ugt i64 1, %"$gasrem_218"
  br i1 %"$gascmp_219", label %"$out_of_gas_220", label %"$have_gas_221"

"$out_of_gas_220":                                ; preds = %"$have_gas_211"
  call void @_out_of_gas()
  br label %"$have_gas_221"

"$have_gas_221":                                  ; preds = %"$out_of_gas_220", %"$have_gas_211"
  %"$consume_222" = sub i64 %"$gasrem_218", 1
  store i64 %"$consume_222", i64* @_gasrem, align 8
  %res2 = alloca %TName_Bool*, align 8
  %"$gasrem_223" = load i64, i64* @_gasrem, align 8
  %"$gascmp_224" = icmp ugt i64 1, %"$gasrem_223"
  br i1 %"$gascmp_224", label %"$out_of_gas_225", label %"$have_gas_226"

"$out_of_gas_225":                                ; preds = %"$have_gas_221"
  call void @_out_of_gas()
  br label %"$have_gas_226"

"$have_gas_226":                                  ; preds = %"$out_of_gas_225", %"$have_gas_221"
  %"$consume_227" = sub i64 %"$gasrem_223", 1
  store i64 %"$consume_227", i64* @_gasrem, align 8
  %"$BoolUtils.negb_2" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_228" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_229" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_228", 0
  %"$BoolUtils.negb_envptr_230" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_228", 1
  %"$res2n_231" = load %TName_Bool*, %TName_Bool** %res2n, align 8
  %"$BoolUtils.negb_call_232" = call %TName_Bool* %"$BoolUtils.negb_fptr_229"(i8* %"$BoolUtils.negb_envptr_230", %TName_Bool* %"$res2n_231")
  store %TName_Bool* %"$BoolUtils.negb_call_232", %TName_Bool** %"$BoolUtils.negb_2", align 8
  %"$$BoolUtils.negb_2_233" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_2", align 8
  store %TName_Bool* %"$$BoolUtils.negb_2_233", %TName_Bool** %res2, align 8
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 1, %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %"$have_gas_226"
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %"$have_gas_226"
  %"$consume_238" = sub i64 %"$gasrem_234", 1
  store i64 %"$consume_238", i64* @_gasrem, align 8
  %n1 = alloca %Int32, align 8
  %"$gasrem_239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_240" = icmp ugt i64 1, %"$gasrem_239"
  br i1 %"$gascmp_240", label %"$out_of_gas_241", label %"$have_gas_242"

"$out_of_gas_241":                                ; preds = %"$have_gas_237"
  call void @_out_of_gas()
  br label %"$have_gas_242"

"$have_gas_242":                                  ; preds = %"$out_of_gas_241", %"$have_gas_237"
  %"$consume_243" = sub i64 %"$gasrem_239", 1
  store i64 %"$consume_243", i64* @_gasrem, align 8
  store %Int32 { i32 -100 }, %Int32* %n1, align 4
  %"$gasrem_244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_245" = icmp ugt i64 1, %"$gasrem_244"
  br i1 %"$gascmp_245", label %"$out_of_gas_246", label %"$have_gas_247"

"$out_of_gas_246":                                ; preds = %"$have_gas_242"
  call void @_out_of_gas()
  br label %"$have_gas_247"

"$have_gas_247":                                  ; preds = %"$out_of_gas_246", %"$have_gas_242"
  %"$consume_248" = sub i64 %"$gasrem_244", 1
  store i64 %"$consume_248", i64* @_gasrem, align 8
  %n2 = alloca %Int32, align 8
  %"$gasrem_249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_250" = icmp ugt i64 1, %"$gasrem_249"
  br i1 %"$gascmp_250", label %"$out_of_gas_251", label %"$have_gas_252"

"$out_of_gas_251":                                ; preds = %"$have_gas_247"
  call void @_out_of_gas()
  br label %"$have_gas_252"

"$have_gas_252":                                  ; preds = %"$out_of_gas_251", %"$have_gas_247"
  %"$consume_253" = sub i64 %"$gasrem_249", 1
  store i64 %"$consume_253", i64* @_gasrem, align 8
  store %Int32 { i32 200 }, %Int32* %n2, align 4
  %"$gasrem_254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_255" = icmp ugt i64 1, %"$gasrem_254"
  br i1 %"$gascmp_255", label %"$out_of_gas_256", label %"$have_gas_257"

"$out_of_gas_256":                                ; preds = %"$have_gas_252"
  call void @_out_of_gas()
  br label %"$have_gas_257"

"$have_gas_257":                                  ; preds = %"$out_of_gas_256", %"$have_gas_252"
  %"$consume_258" = sub i64 %"$gasrem_254", 1
  store i64 %"$consume_258", i64* @_gasrem, align 8
  %res3 = alloca %TName_Bool*, align 8
  %"$gasrem_259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_260" = icmp ugt i64 4, %"$gasrem_259"
  br i1 %"$gascmp_260", label %"$out_of_gas_261", label %"$have_gas_262"

"$out_of_gas_261":                                ; preds = %"$have_gas_257"
  call void @_out_of_gas()
  br label %"$have_gas_262"

"$have_gas_262":                                  ; preds = %"$out_of_gas_261", %"$have_gas_257"
  %"$consume_263" = sub i64 %"$gasrem_259", 4
  store i64 %"$consume_263", i64* @_gasrem, align 8
  %"$execptr_load_264" = load i8*, i8** @_execptr, align 8
  %"$n1_265" = load %Int32, %Int32* %n1, align 4
  %"$n2_266" = load %Int32, %Int32* %n2, align 4
  %"$lt_call_267" = call %TName_Bool* @_lt_Int32(i8* %"$execptr_load_264", %Int32 %"$n1_265", %Int32 %"$n2_266")
  store %TName_Bool* %"$lt_call_267", %TName_Bool** %res3, align 8
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 1, %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %"$have_gas_262"
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %"$have_gas_262"
  %"$consume_273" = sub i64 %"$gasrem_269", 1
  store i64 %"$consume_273", i64* @_gasrem, align 8
  %res4n = alloca %TName_Bool*, align 8
  %"$gasrem_274" = load i64, i64* @_gasrem, align 8
  %"$gascmp_275" = icmp ugt i64 4, %"$gasrem_274"
  br i1 %"$gascmp_275", label %"$out_of_gas_276", label %"$have_gas_277"

"$out_of_gas_276":                                ; preds = %"$have_gas_272"
  call void @_out_of_gas()
  br label %"$have_gas_277"

"$have_gas_277":                                  ; preds = %"$out_of_gas_276", %"$have_gas_272"
  %"$consume_278" = sub i64 %"$gasrem_274", 4
  store i64 %"$consume_278", i64* @_gasrem, align 8
  %"$execptr_load_279" = load i8*, i8** @_execptr, align 8
  %"$n2_280" = load %Int32, %Int32* %n2, align 4
  %"$n1_281" = load %Int32, %Int32* %n1, align 4
  %"$lt_call_282" = call %TName_Bool* @_lt_Int32(i8* %"$execptr_load_279", %Int32 %"$n2_280", %Int32 %"$n1_281")
  store %TName_Bool* %"$lt_call_282", %TName_Bool** %res4n, align 8
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 1, %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %"$have_gas_277"
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %"$have_gas_277"
  %"$consume_288" = sub i64 %"$gasrem_284", 1
  store i64 %"$consume_288", i64* @_gasrem, align 8
  %res4 = alloca %TName_Bool*, align 8
  %"$gasrem_289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_290" = icmp ugt i64 1, %"$gasrem_289"
  br i1 %"$gascmp_290", label %"$out_of_gas_291", label %"$have_gas_292"

"$out_of_gas_291":                                ; preds = %"$have_gas_287"
  call void @_out_of_gas()
  br label %"$have_gas_292"

"$have_gas_292":                                  ; preds = %"$out_of_gas_291", %"$have_gas_287"
  %"$consume_293" = sub i64 %"$gasrem_289", 1
  store i64 %"$consume_293", i64* @_gasrem, align 8
  %"$BoolUtils.negb_3" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_294" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_295" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_294", 0
  %"$BoolUtils.negb_envptr_296" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_294", 1
  %"$res4n_297" = load %TName_Bool*, %TName_Bool** %res4n, align 8
  %"$BoolUtils.negb_call_298" = call %TName_Bool* %"$BoolUtils.negb_fptr_295"(i8* %"$BoolUtils.negb_envptr_296", %TName_Bool* %"$res4n_297")
  store %TName_Bool* %"$BoolUtils.negb_call_298", %TName_Bool** %"$BoolUtils.negb_3", align 8
  %"$$BoolUtils.negb_3_299" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_3", align 8
  store %TName_Bool* %"$$BoolUtils.negb_3_299", %TName_Bool** %res4, align 8
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %"$have_gas_292"
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %"$have_gas_292"
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem, align 8
  %"$n1_0" = alloca %Uint256, align 8
  %"$gasrem_305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_306" = icmp ugt i64 1, %"$gasrem_305"
  br i1 %"$gascmp_306", label %"$out_of_gas_307", label %"$have_gas_308"

"$out_of_gas_307":                                ; preds = %"$have_gas_303"
  call void @_out_of_gas()
  br label %"$have_gas_308"

"$have_gas_308":                                  ; preds = %"$out_of_gas_307", %"$have_gas_303"
  %"$consume_309" = sub i64 %"$gasrem_305", 1
  store i64 %"$consume_309", i64* @_gasrem, align 8
  store %Uint256 { i256 100 }, %Uint256* %"$n1_0", align 8
  %"$gasrem_310" = load i64, i64* @_gasrem, align 8
  %"$gascmp_311" = icmp ugt i64 1, %"$gasrem_310"
  br i1 %"$gascmp_311", label %"$out_of_gas_312", label %"$have_gas_313"

"$out_of_gas_312":                                ; preds = %"$have_gas_308"
  call void @_out_of_gas()
  br label %"$have_gas_313"

"$have_gas_313":                                  ; preds = %"$out_of_gas_312", %"$have_gas_308"
  %"$consume_314" = sub i64 %"$gasrem_310", 1
  store i64 %"$consume_314", i64* @_gasrem, align 8
  %"$n2_1" = alloca %Uint256, align 8
  %"$gasrem_315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_316" = icmp ugt i64 1, %"$gasrem_315"
  br i1 %"$gascmp_316", label %"$out_of_gas_317", label %"$have_gas_318"

"$out_of_gas_317":                                ; preds = %"$have_gas_313"
  call void @_out_of_gas()
  br label %"$have_gas_318"

"$have_gas_318":                                  ; preds = %"$out_of_gas_317", %"$have_gas_313"
  %"$consume_319" = sub i64 %"$gasrem_315", 1
  store i64 %"$consume_319", i64* @_gasrem, align 8
  store %Uint256 { i256 200 }, %Uint256* %"$n2_1", align 8
  %"$gasrem_320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_321" = icmp ugt i64 1, %"$gasrem_320"
  br i1 %"$gascmp_321", label %"$out_of_gas_322", label %"$have_gas_323"

"$out_of_gas_322":                                ; preds = %"$have_gas_318"
  call void @_out_of_gas()
  br label %"$have_gas_323"

"$have_gas_323":                                  ; preds = %"$out_of_gas_322", %"$have_gas_318"
  %"$consume_324" = sub i64 %"$gasrem_320", 1
  store i64 %"$consume_324", i64* @_gasrem, align 8
  %res5 = alloca %TName_Bool*, align 8
  %"$gasrem_326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_327" = icmp ugt i64 16, %"$gasrem_326"
  br i1 %"$gascmp_327", label %"$out_of_gas_328", label %"$have_gas_329"

"$out_of_gas_328":                                ; preds = %"$have_gas_323"
  call void @_out_of_gas()
  br label %"$have_gas_329"

"$have_gas_329":                                  ; preds = %"$out_of_gas_328", %"$have_gas_323"
  %"$consume_330" = sub i64 %"$gasrem_326", 16
  store i64 %"$consume_330", i64* @_gasrem, align 8
  %"$execptr_load_331" = load i8*, i8** @_execptr, align 8
  %"$lt_$n1_0_332" = alloca %Uint256, align 8
  %"$$n1_0_333" = load %Uint256, %Uint256* %"$n1_0", align 8
  store %Uint256 %"$$n1_0_333", %Uint256* %"$lt_$n1_0_332", align 8
  %"$lt_$n2_1_334" = alloca %Uint256, align 8
  %"$$n2_1_335" = load %Uint256, %Uint256* %"$n2_1", align 8
  store %Uint256 %"$$n2_1_335", %Uint256* %"$lt_$n2_1_334", align 8
  %"$lt_call_336" = call %TName_Bool* @_lt_Uint256(i8* %"$execptr_load_331", %Uint256* %"$lt_$n1_0_332", %Uint256* %"$lt_$n2_1_334")
  store %TName_Bool* %"$lt_call_336", %TName_Bool** %res5, align 8
  %"$gasrem_338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_339" = icmp ugt i64 1, %"$gasrem_338"
  br i1 %"$gascmp_339", label %"$out_of_gas_340", label %"$have_gas_341"

"$out_of_gas_340":                                ; preds = %"$have_gas_329"
  call void @_out_of_gas()
  br label %"$have_gas_341"

"$have_gas_341":                                  ; preds = %"$out_of_gas_340", %"$have_gas_329"
  %"$consume_342" = sub i64 %"$gasrem_338", 1
  store i64 %"$consume_342", i64* @_gasrem, align 8
  %res6n = alloca %TName_Bool*, align 8
  %"$gasrem_344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_345" = icmp ugt i64 16, %"$gasrem_344"
  br i1 %"$gascmp_345", label %"$out_of_gas_346", label %"$have_gas_347"

"$out_of_gas_346":                                ; preds = %"$have_gas_341"
  call void @_out_of_gas()
  br label %"$have_gas_347"

"$have_gas_347":                                  ; preds = %"$out_of_gas_346", %"$have_gas_341"
  %"$consume_348" = sub i64 %"$gasrem_344", 16
  store i64 %"$consume_348", i64* @_gasrem, align 8
  %"$execptr_load_349" = load i8*, i8** @_execptr, align 8
  %"$lt_$n2_1_350" = alloca %Uint256, align 8
  %"$$n2_1_351" = load %Uint256, %Uint256* %"$n2_1", align 8
  store %Uint256 %"$$n2_1_351", %Uint256* %"$lt_$n2_1_350", align 8
  %"$lt_$n1_0_352" = alloca %Uint256, align 8
  %"$$n1_0_353" = load %Uint256, %Uint256* %"$n1_0", align 8
  store %Uint256 %"$$n1_0_353", %Uint256* %"$lt_$n1_0_352", align 8
  %"$lt_call_354" = call %TName_Bool* @_lt_Uint256(i8* %"$execptr_load_349", %Uint256* %"$lt_$n2_1_350", %Uint256* %"$lt_$n1_0_352")
  store %TName_Bool* %"$lt_call_354", %TName_Bool** %res6n, align 8
  %"$gasrem_356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_357" = icmp ugt i64 1, %"$gasrem_356"
  br i1 %"$gascmp_357", label %"$out_of_gas_358", label %"$have_gas_359"

"$out_of_gas_358":                                ; preds = %"$have_gas_347"
  call void @_out_of_gas()
  br label %"$have_gas_359"

"$have_gas_359":                                  ; preds = %"$out_of_gas_358", %"$have_gas_347"
  %"$consume_360" = sub i64 %"$gasrem_356", 1
  store i64 %"$consume_360", i64* @_gasrem, align 8
  %res6 = alloca %TName_Bool*, align 8
  %"$gasrem_361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_362" = icmp ugt i64 1, %"$gasrem_361"
  br i1 %"$gascmp_362", label %"$out_of_gas_363", label %"$have_gas_364"

"$out_of_gas_363":                                ; preds = %"$have_gas_359"
  call void @_out_of_gas()
  br label %"$have_gas_364"

"$have_gas_364":                                  ; preds = %"$out_of_gas_363", %"$have_gas_359"
  %"$consume_365" = sub i64 %"$gasrem_361", 1
  store i64 %"$consume_365", i64* @_gasrem, align 8
  %"$BoolUtils.negb_4" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_366" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_367" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_366", 0
  %"$BoolUtils.negb_envptr_368" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_366", 1
  %"$res6n_369" = load %TName_Bool*, %TName_Bool** %res6n, align 8
  %"$BoolUtils.negb_call_370" = call %TName_Bool* %"$BoolUtils.negb_fptr_367"(i8* %"$BoolUtils.negb_envptr_368", %TName_Bool* %"$res6n_369")
  store %TName_Bool* %"$BoolUtils.negb_call_370", %TName_Bool** %"$BoolUtils.negb_4", align 8
  %"$$BoolUtils.negb_4_371" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_4", align 8
  store %TName_Bool* %"$$BoolUtils.negb_4_371", %TName_Bool** %res6, align 8
  %"$gasrem_372" = load i64, i64* @_gasrem, align 8
  %"$gascmp_373" = icmp ugt i64 1, %"$gasrem_372"
  br i1 %"$gascmp_373", label %"$out_of_gas_374", label %"$have_gas_375"

"$out_of_gas_374":                                ; preds = %"$have_gas_364"
  call void @_out_of_gas()
  br label %"$have_gas_375"

"$have_gas_375":                                  ; preds = %"$out_of_gas_374", %"$have_gas_364"
  %"$consume_376" = sub i64 %"$gasrem_372", 1
  store i64 %"$consume_376", i64* @_gasrem, align 8
  %res7 = alloca %TName_Bool*, align 8
  %"$gasrem_377" = load i64, i64* @_gasrem, align 8
  %"$gascmp_378" = icmp ugt i64 1, %"$gasrem_377"
  br i1 %"$gascmp_378", label %"$out_of_gas_379", label %"$have_gas_380"

"$out_of_gas_379":                                ; preds = %"$have_gas_375"
  call void @_out_of_gas()
  br label %"$have_gas_380"

"$have_gas_380":                                  ; preds = %"$out_of_gas_379", %"$have_gas_375"
  %"$consume_381" = sub i64 %"$gasrem_377", 1
  store i64 %"$consume_381", i64* @_gasrem, align 8
  %"$BoolUtils.andb_5" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_382" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_383" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_382", 0
  %"$BoolUtils.andb_envptr_384" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_382", 1
  %"$res1_385" = load %TName_Bool*, %TName_Bool** %res1, align 8
  %"$BoolUtils.andb_call_386" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_383"(i8* %"$BoolUtils.andb_envptr_384", %TName_Bool* %"$res1_385")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_386", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_5", align 8
  %"$BoolUtils.andb_6" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_5_387" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_5", align 8
  %"$$BoolUtils.andb_5_fptr_388" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_5_387", 0
  %"$$BoolUtils.andb_5_envptr_389" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_5_387", 1
  %"$res2_390" = load %TName_Bool*, %TName_Bool** %res2, align 8
  %"$$BoolUtils.andb_5_call_391" = call %TName_Bool* %"$$BoolUtils.andb_5_fptr_388"(i8* %"$$BoolUtils.andb_5_envptr_389", %TName_Bool* %"$res2_390")
  store %TName_Bool* %"$$BoolUtils.andb_5_call_391", %TName_Bool** %"$BoolUtils.andb_6", align 8
  %"$$BoolUtils.andb_6_392" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_6", align 8
  store %TName_Bool* %"$$BoolUtils.andb_6_392", %TName_Bool** %res7, align 8
  %"$gasrem_393" = load i64, i64* @_gasrem, align 8
  %"$gascmp_394" = icmp ugt i64 1, %"$gasrem_393"
  br i1 %"$gascmp_394", label %"$out_of_gas_395", label %"$have_gas_396"

"$out_of_gas_395":                                ; preds = %"$have_gas_380"
  call void @_out_of_gas()
  br label %"$have_gas_396"

"$have_gas_396":                                  ; preds = %"$out_of_gas_395", %"$have_gas_380"
  %"$consume_397" = sub i64 %"$gasrem_393", 1
  store i64 %"$consume_397", i64* @_gasrem, align 8
  %res8 = alloca %TName_Bool*, align 8
  %"$gasrem_398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_399" = icmp ugt i64 1, %"$gasrem_398"
  br i1 %"$gascmp_399", label %"$out_of_gas_400", label %"$have_gas_401"

"$out_of_gas_400":                                ; preds = %"$have_gas_396"
  call void @_out_of_gas()
  br label %"$have_gas_401"

"$have_gas_401":                                  ; preds = %"$out_of_gas_400", %"$have_gas_396"
  %"$consume_402" = sub i64 %"$gasrem_398", 1
  store i64 %"$consume_402", i64* @_gasrem, align 8
  %"$BoolUtils.andb_7" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_403" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_404" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_403", 0
  %"$BoolUtils.andb_envptr_405" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_403", 1
  %"$res3_406" = load %TName_Bool*, %TName_Bool** %res3, align 8
  %"$BoolUtils.andb_call_407" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_404"(i8* %"$BoolUtils.andb_envptr_405", %TName_Bool* %"$res3_406")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_407", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_7", align 8
  %"$BoolUtils.andb_8" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_7_408" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_7", align 8
  %"$$BoolUtils.andb_7_fptr_409" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_7_408", 0
  %"$$BoolUtils.andb_7_envptr_410" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_7_408", 1
  %"$res4_411" = load %TName_Bool*, %TName_Bool** %res4, align 8
  %"$$BoolUtils.andb_7_call_412" = call %TName_Bool* %"$$BoolUtils.andb_7_fptr_409"(i8* %"$$BoolUtils.andb_7_envptr_410", %TName_Bool* %"$res4_411")
  store %TName_Bool* %"$$BoolUtils.andb_7_call_412", %TName_Bool** %"$BoolUtils.andb_8", align 8
  %"$$BoolUtils.andb_8_413" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_8", align 8
  store %TName_Bool* %"$$BoolUtils.andb_8_413", %TName_Bool** %res8, align 8
  %"$gasrem_414" = load i64, i64* @_gasrem, align 8
  %"$gascmp_415" = icmp ugt i64 1, %"$gasrem_414"
  br i1 %"$gascmp_415", label %"$out_of_gas_416", label %"$have_gas_417"

"$out_of_gas_416":                                ; preds = %"$have_gas_401"
  call void @_out_of_gas()
  br label %"$have_gas_417"

"$have_gas_417":                                  ; preds = %"$out_of_gas_416", %"$have_gas_401"
  %"$consume_418" = sub i64 %"$gasrem_414", 1
  store i64 %"$consume_418", i64* @_gasrem, align 8
  %res9 = alloca %TName_Bool*, align 8
  %"$gasrem_419" = load i64, i64* @_gasrem, align 8
  %"$gascmp_420" = icmp ugt i64 1, %"$gasrem_419"
  br i1 %"$gascmp_420", label %"$out_of_gas_421", label %"$have_gas_422"

"$out_of_gas_421":                                ; preds = %"$have_gas_417"
  call void @_out_of_gas()
  br label %"$have_gas_422"

"$have_gas_422":                                  ; preds = %"$out_of_gas_421", %"$have_gas_417"
  %"$consume_423" = sub i64 %"$gasrem_419", 1
  store i64 %"$consume_423", i64* @_gasrem, align 8
  %"$BoolUtils.andb_9" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_424" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_425" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_424", 0
  %"$BoolUtils.andb_envptr_426" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_424", 1
  %"$res5_427" = load %TName_Bool*, %TName_Bool** %res5, align 8
  %"$BoolUtils.andb_call_428" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_425"(i8* %"$BoolUtils.andb_envptr_426", %TName_Bool* %"$res5_427")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_428", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_9", align 8
  %"$BoolUtils.andb_10" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_9_429" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_9", align 8
  %"$$BoolUtils.andb_9_fptr_430" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_9_429", 0
  %"$$BoolUtils.andb_9_envptr_431" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_9_429", 1
  %"$res6_432" = load %TName_Bool*, %TName_Bool** %res6, align 8
  %"$$BoolUtils.andb_9_call_433" = call %TName_Bool* %"$$BoolUtils.andb_9_fptr_430"(i8* %"$$BoolUtils.andb_9_envptr_431", %TName_Bool* %"$res6_432")
  store %TName_Bool* %"$$BoolUtils.andb_9_call_433", %TName_Bool** %"$BoolUtils.andb_10", align 8
  %"$$BoolUtils.andb_10_434" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_10", align 8
  store %TName_Bool* %"$$BoolUtils.andb_10_434", %TName_Bool** %res9, align 8
  %"$gasrem_435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_436" = icmp ugt i64 1, %"$gasrem_435"
  br i1 %"$gascmp_436", label %"$out_of_gas_437", label %"$have_gas_438"

"$out_of_gas_437":                                ; preds = %"$have_gas_422"
  call void @_out_of_gas()
  br label %"$have_gas_438"

"$have_gas_438":                                  ; preds = %"$out_of_gas_437", %"$have_gas_422"
  %"$consume_439" = sub i64 %"$gasrem_435", 1
  store i64 %"$consume_439", i64* @_gasrem, align 8
  %res10 = alloca %TName_Bool*, align 8
  %"$gasrem_440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_441" = icmp ugt i64 1, %"$gasrem_440"
  br i1 %"$gascmp_441", label %"$out_of_gas_442", label %"$have_gas_443"

"$out_of_gas_442":                                ; preds = %"$have_gas_438"
  call void @_out_of_gas()
  br label %"$have_gas_443"

"$have_gas_443":                                  ; preds = %"$out_of_gas_442", %"$have_gas_438"
  %"$consume_444" = sub i64 %"$gasrem_440", 1
  store i64 %"$consume_444", i64* @_gasrem, align 8
  %"$BoolUtils.andb_11" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_445" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_446" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_445", 0
  %"$BoolUtils.andb_envptr_447" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_445", 1
  %"$res7_448" = load %TName_Bool*, %TName_Bool** %res7, align 8
  %"$BoolUtils.andb_call_449" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_446"(i8* %"$BoolUtils.andb_envptr_447", %TName_Bool* %"$res7_448")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_449", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_11", align 8
  %"$BoolUtils.andb_12" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_11_450" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_11", align 8
  %"$$BoolUtils.andb_11_fptr_451" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_11_450", 0
  %"$$BoolUtils.andb_11_envptr_452" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_11_450", 1
  %"$res8_453" = load %TName_Bool*, %TName_Bool** %res8, align 8
  %"$$BoolUtils.andb_11_call_454" = call %TName_Bool* %"$$BoolUtils.andb_11_fptr_451"(i8* %"$$BoolUtils.andb_11_envptr_452", %TName_Bool* %"$res8_453")
  store %TName_Bool* %"$$BoolUtils.andb_11_call_454", %TName_Bool** %"$BoolUtils.andb_12", align 8
  %"$$BoolUtils.andb_12_455" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_12", align 8
  store %TName_Bool* %"$$BoolUtils.andb_12_455", %TName_Bool** %res10, align 8
  %"$gasrem_456" = load i64, i64* @_gasrem, align 8
  %"$gascmp_457" = icmp ugt i64 1, %"$gasrem_456"
  br i1 %"$gascmp_457", label %"$out_of_gas_458", label %"$have_gas_459"

"$out_of_gas_458":                                ; preds = %"$have_gas_443"
  call void @_out_of_gas()
  br label %"$have_gas_459"

"$have_gas_459":                                  ; preds = %"$out_of_gas_458", %"$have_gas_443"
  %"$consume_460" = sub i64 %"$gasrem_456", 1
  store i64 %"$consume_460", i64* @_gasrem, align 8
  %"$BoolUtils.andb_13" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_461" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_462" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_461", 0
  %"$BoolUtils.andb_envptr_463" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_461", 1
  %"$res9_464" = load %TName_Bool*, %TName_Bool** %res9, align 8
  %"$BoolUtils.andb_call_465" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_462"(i8* %"$BoolUtils.andb_envptr_463", %TName_Bool* %"$res9_464")
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_465", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13", align 8
  %"$BoolUtils.andb_14" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_13_466" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13", align 8
  %"$$BoolUtils.andb_13_fptr_467" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_466", 0
  %"$$BoolUtils.andb_13_envptr_468" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_466", 1
  %"$res10_469" = load %TName_Bool*, %TName_Bool** %res10, align 8
  %"$$BoolUtils.andb_13_call_470" = call %TName_Bool* %"$$BoolUtils.andb_13_fptr_467"(i8* %"$$BoolUtils.andb_13_envptr_468", %TName_Bool* %"$res10_469")
  store %TName_Bool* %"$$BoolUtils.andb_13_call_470", %TName_Bool** %"$BoolUtils.andb_14", align 8
  %"$$BoolUtils.andb_14_471" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_14", align 8
  store %TName_Bool* %"$$BoolUtils.andb_14_471", %TName_Bool** %"$expr_21", align 8
  %"$$expr_21_472" = load %TName_Bool*, %TName_Bool** %"$expr_21", align 8
  ret %TName_Bool* %"$$expr_21_472"
}

declare i8* @_new_bnum(i8*, %BNumString)

declare %TName_Bool* @_lt_BNum(i8*, i8*, i8*)

declare %TName_Bool* @_lt_Int32(i8*, %Int32, %Int32)

declare %TName_Bool* @_lt_Uint256(i8*, %Uint256*, %Uint256*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_473" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_474" = bitcast %TName_Bool* %"$exprval_473" to i8*
  %"$execptr_load_475" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_475", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_54", i8* %"$memvoidcast_474")
  ret void
}
