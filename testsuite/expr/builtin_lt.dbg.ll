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
%"$ParamDescr_444" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_445" = type { %ParamDescrString, i32, %"$ParamDescr_444"* }
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
@_contract_parameters = constant [0 x %"$ParamDescr_444"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_445"] zeroinitializer
@_transition_parameters_length = constant i32 0

define internal %TName_Bool* @"$fundef_15"(%"$$fundef_15_env_70"* %0, %TName_Bool* %1) !dbg !4 {
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
  ], !dbg !9

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
  store %TName_Bool* %"$adtptr_132", %TName_Bool** %"$retval_16", align 8, !dbg !10
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
  store %TName_Bool* %"$adtptr_142", %TName_Bool** %"$retval_16", align 8, !dbg !13
  br label %"$matchsucc_119"

"$empty_default_122":                             ; preds = %"$have_gas_117"
  br label %"$matchsucc_119"

"$matchsucc_119":                                 ; preds = %"$have_gas_138", %"$have_gas_128", %"$empty_default_122"
  %"$$retval_16_143" = load %TName_Bool*, %TName_Bool** %"$retval_16", align 8
  ret %TName_Bool* %"$$retval_16_143"
}

define internal %TName_Bool* @"$fundef_19"(%"$$fundef_19_env_71"* %0, %TName_Bool* %1) !dbg !15 {
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
  ], !dbg !16

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
  store %TName_Bool* %"$adtptr_105", %TName_Bool** %"$retval_20", align 8, !dbg !17
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
  store %TName_Bool* %1, %TName_Bool** %"$retval_20", align 8, !dbg !20
  br label %"$matchsucc_91"

"$empty_default_95":                              ; preds = %"$have_gas_89"
  br label %"$matchsucc_91"

"$matchsucc_91":                                  ; preds = %"$have_gas_111", %"$have_gas_101", %"$empty_default_95"
  %"$$retval_20_113" = load %TName_Bool*, %TName_Bool** %"$retval_20", align 8
  ret %TName_Bool* %"$$retval_20_113"
}

define internal { %TName_Bool* (i8*, %TName_Bool*)*, i8* } @"$fundef_17"(%"$$fundef_17_env_72"* %0, %TName_Bool* %1) !dbg !22 {
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
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$fundef_19_cloval_81", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_18", align 8, !dbg !23
  %"$$retval_18_83" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$retval_18", align 8
  ret { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$retval_18_83"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !24 {
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
  store { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)* bitcast ({ %TName_Bool* (i8*, %TName_Bool*)*, i8* } (%"$$fundef_17_env_72"*, %TName_Bool*)* @"$fundef_17" to { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*), i8* null }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8, !dbg !26
  %"$gasrem_152" = load i64, i64* @_gasrem, align 8
  %"$gascmp_153" = icmp ugt i64 1, %"$gasrem_152"
  br i1 %"$gascmp_153", label %"$out_of_gas_154", label %"$have_gas_155"

"$out_of_gas_154":                                ; preds = %"$have_gas_147"
  call void @_out_of_gas()
  br label %"$have_gas_155"

"$have_gas_155":                                  ; preds = %"$out_of_gas_154", %"$have_gas_147"
  %"$consume_156" = sub i64 %"$gasrem_152", 1
  store i64 %"$consume_156", i64* @_gasrem, align 8
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } { %TName_Bool* (i8*, %TName_Bool*)* bitcast (%TName_Bool* (%"$$fundef_15_env_70"*, %TName_Bool*)* @"$fundef_15" to %TName_Bool* (i8*, %TName_Bool*)*), i8* null }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8, !dbg !27
  ret void
}

define internal %TName_Bool* @_scilla_expr_fun(i8* %0) !dbg !28 {
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
  store i8* %"$_new_bnum_call_172", i8** %bn1, align 8, !dbg !29
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
  store i8* %"$_new_bnum_call_186", i8** %bn2, align 8, !dbg !30
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
  %"$execptr_load_193" = load i8*, i8** @_execptr, align 8
  %"$bn1_194" = load i8*, i8** %bn1, align 8
  %"$bn2_195" = load i8*, i8** %bn2, align 8
  %"$blt_call_196" = call %TName_Bool* @_lt_BNum(i8* %"$execptr_load_193", i8* %"$bn1_194", i8* %"$bn2_195"), !dbg !31
  store %TName_Bool* %"$blt_call_196", %TName_Bool** %res1, align 8, !dbg !31
  %"$gasrem_198" = load i64, i64* @_gasrem, align 8
  %"$gascmp_199" = icmp ugt i64 1, %"$gasrem_198"
  br i1 %"$gascmp_199", label %"$out_of_gas_200", label %"$have_gas_201"

"$out_of_gas_200":                                ; preds = %"$have_gas_191"
  call void @_out_of_gas()
  br label %"$have_gas_201"

"$have_gas_201":                                  ; preds = %"$out_of_gas_200", %"$have_gas_191"
  %"$consume_202" = sub i64 %"$gasrem_198", 1
  store i64 %"$consume_202", i64* @_gasrem, align 8
  %res2n = alloca %TName_Bool*, align 8
  %"$execptr_load_203" = load i8*, i8** @_execptr, align 8
  %"$bn2_204" = load i8*, i8** %bn2, align 8
  %"$bn1_205" = load i8*, i8** %bn1, align 8
  %"$blt_call_206" = call %TName_Bool* @_lt_BNum(i8* %"$execptr_load_203", i8* %"$bn2_204", i8* %"$bn1_205"), !dbg !32
  store %TName_Bool* %"$blt_call_206", %TName_Bool** %res2n, align 8, !dbg !32
  %"$gasrem_208" = load i64, i64* @_gasrem, align 8
  %"$gascmp_209" = icmp ugt i64 1, %"$gasrem_208"
  br i1 %"$gascmp_209", label %"$out_of_gas_210", label %"$have_gas_211"

"$out_of_gas_210":                                ; preds = %"$have_gas_201"
  call void @_out_of_gas()
  br label %"$have_gas_211"

"$have_gas_211":                                  ; preds = %"$out_of_gas_210", %"$have_gas_201"
  %"$consume_212" = sub i64 %"$gasrem_208", 1
  store i64 %"$consume_212", i64* @_gasrem, align 8
  %res2 = alloca %TName_Bool*, align 8
  %"$gasrem_213" = load i64, i64* @_gasrem, align 8
  %"$gascmp_214" = icmp ugt i64 1, %"$gasrem_213"
  br i1 %"$gascmp_214", label %"$out_of_gas_215", label %"$have_gas_216"

"$out_of_gas_215":                                ; preds = %"$have_gas_211"
  call void @_out_of_gas()
  br label %"$have_gas_216"

"$have_gas_216":                                  ; preds = %"$out_of_gas_215", %"$have_gas_211"
  %"$consume_217" = sub i64 %"$gasrem_213", 1
  store i64 %"$consume_217", i64* @_gasrem, align 8
  %"$BoolUtils.negb_2" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_218" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_219" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_218", 0
  %"$BoolUtils.negb_envptr_220" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_218", 1
  %"$res2n_221" = load %TName_Bool*, %TName_Bool** %res2n, align 8
  %"$BoolUtils.negb_call_222" = call %TName_Bool* %"$BoolUtils.negb_fptr_219"(i8* %"$BoolUtils.negb_envptr_220", %TName_Bool* %"$res2n_221"), !dbg !33
  store %TName_Bool* %"$BoolUtils.negb_call_222", %TName_Bool** %"$BoolUtils.negb_2", align 8, !dbg !33
  %"$$BoolUtils.negb_2_223" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_2", align 8
  store %TName_Bool* %"$$BoolUtils.negb_2_223", %TName_Bool** %res2, align 8, !dbg !33
  %"$gasrem_224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_225" = icmp ugt i64 1, %"$gasrem_224"
  br i1 %"$gascmp_225", label %"$out_of_gas_226", label %"$have_gas_227"

"$out_of_gas_226":                                ; preds = %"$have_gas_216"
  call void @_out_of_gas()
  br label %"$have_gas_227"

"$have_gas_227":                                  ; preds = %"$out_of_gas_226", %"$have_gas_216"
  %"$consume_228" = sub i64 %"$gasrem_224", 1
  store i64 %"$consume_228", i64* @_gasrem, align 8
  %n1 = alloca %Int32, align 8
  %"$gasrem_229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_230" = icmp ugt i64 1, %"$gasrem_229"
  br i1 %"$gascmp_230", label %"$out_of_gas_231", label %"$have_gas_232"

"$out_of_gas_231":                                ; preds = %"$have_gas_227"
  call void @_out_of_gas()
  br label %"$have_gas_232"

"$have_gas_232":                                  ; preds = %"$out_of_gas_231", %"$have_gas_227"
  %"$consume_233" = sub i64 %"$gasrem_229", 1
  store i64 %"$consume_233", i64* @_gasrem, align 8
  store %Int32 { i32 -100 }, %Int32* %n1, align 4, !dbg !34
  %"$gasrem_234" = load i64, i64* @_gasrem, align 8
  %"$gascmp_235" = icmp ugt i64 1, %"$gasrem_234"
  br i1 %"$gascmp_235", label %"$out_of_gas_236", label %"$have_gas_237"

"$out_of_gas_236":                                ; preds = %"$have_gas_232"
  call void @_out_of_gas()
  br label %"$have_gas_237"

"$have_gas_237":                                  ; preds = %"$out_of_gas_236", %"$have_gas_232"
  %"$consume_238" = sub i64 %"$gasrem_234", 1
  store i64 %"$consume_238", i64* @_gasrem, align 8
  %n2 = alloca %Int32, align 8
  %"$gasrem_239" = load i64, i64* @_gasrem, align 8
  %"$gascmp_240" = icmp ugt i64 1, %"$gasrem_239"
  br i1 %"$gascmp_240", label %"$out_of_gas_241", label %"$have_gas_242"

"$out_of_gas_241":                                ; preds = %"$have_gas_237"
  call void @_out_of_gas()
  br label %"$have_gas_242"

"$have_gas_242":                                  ; preds = %"$out_of_gas_241", %"$have_gas_237"
  %"$consume_243" = sub i64 %"$gasrem_239", 1
  store i64 %"$consume_243", i64* @_gasrem, align 8
  store %Int32 { i32 200 }, %Int32* %n2, align 4, !dbg !35
  %"$gasrem_244" = load i64, i64* @_gasrem, align 8
  %"$gascmp_245" = icmp ugt i64 1, %"$gasrem_244"
  br i1 %"$gascmp_245", label %"$out_of_gas_246", label %"$have_gas_247"

"$out_of_gas_246":                                ; preds = %"$have_gas_242"
  call void @_out_of_gas()
  br label %"$have_gas_247"

"$have_gas_247":                                  ; preds = %"$out_of_gas_246", %"$have_gas_242"
  %"$consume_248" = sub i64 %"$gasrem_244", 1
  store i64 %"$consume_248", i64* @_gasrem, align 8
  %res3 = alloca %TName_Bool*, align 8
  %"$execptr_load_249" = load i8*, i8** @_execptr, align 8
  %"$n1_250" = load %Int32, %Int32* %n1, align 4
  %"$n2_251" = load %Int32, %Int32* %n2, align 4
  %"$lt_call_252" = call %TName_Bool* @_lt_Int32(i8* %"$execptr_load_249", %Int32 %"$n1_250", %Int32 %"$n2_251"), !dbg !36
  store %TName_Bool* %"$lt_call_252", %TName_Bool** %res3, align 8, !dbg !36
  %"$gasrem_254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_255" = icmp ugt i64 1, %"$gasrem_254"
  br i1 %"$gascmp_255", label %"$out_of_gas_256", label %"$have_gas_257"

"$out_of_gas_256":                                ; preds = %"$have_gas_247"
  call void @_out_of_gas()
  br label %"$have_gas_257"

"$have_gas_257":                                  ; preds = %"$out_of_gas_256", %"$have_gas_247"
  %"$consume_258" = sub i64 %"$gasrem_254", 1
  store i64 %"$consume_258", i64* @_gasrem, align 8
  %res4n = alloca %TName_Bool*, align 8
  %"$execptr_load_259" = load i8*, i8** @_execptr, align 8
  %"$n2_260" = load %Int32, %Int32* %n2, align 4
  %"$n1_261" = load %Int32, %Int32* %n1, align 4
  %"$lt_call_262" = call %TName_Bool* @_lt_Int32(i8* %"$execptr_load_259", %Int32 %"$n2_260", %Int32 %"$n1_261"), !dbg !37
  store %TName_Bool* %"$lt_call_262", %TName_Bool** %res4n, align 8, !dbg !37
  %"$gasrem_264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_265" = icmp ugt i64 1, %"$gasrem_264"
  br i1 %"$gascmp_265", label %"$out_of_gas_266", label %"$have_gas_267"

"$out_of_gas_266":                                ; preds = %"$have_gas_257"
  call void @_out_of_gas()
  br label %"$have_gas_267"

"$have_gas_267":                                  ; preds = %"$out_of_gas_266", %"$have_gas_257"
  %"$consume_268" = sub i64 %"$gasrem_264", 1
  store i64 %"$consume_268", i64* @_gasrem, align 8
  %res4 = alloca %TName_Bool*, align 8
  %"$gasrem_269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_270" = icmp ugt i64 1, %"$gasrem_269"
  br i1 %"$gascmp_270", label %"$out_of_gas_271", label %"$have_gas_272"

"$out_of_gas_271":                                ; preds = %"$have_gas_267"
  call void @_out_of_gas()
  br label %"$have_gas_272"

"$have_gas_272":                                  ; preds = %"$out_of_gas_271", %"$have_gas_267"
  %"$consume_273" = sub i64 %"$gasrem_269", 1
  store i64 %"$consume_273", i64* @_gasrem, align 8
  %"$BoolUtils.negb_3" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_274" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_275" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_274", 0
  %"$BoolUtils.negb_envptr_276" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_274", 1
  %"$res4n_277" = load %TName_Bool*, %TName_Bool** %res4n, align 8
  %"$BoolUtils.negb_call_278" = call %TName_Bool* %"$BoolUtils.negb_fptr_275"(i8* %"$BoolUtils.negb_envptr_276", %TName_Bool* %"$res4n_277"), !dbg !38
  store %TName_Bool* %"$BoolUtils.negb_call_278", %TName_Bool** %"$BoolUtils.negb_3", align 8, !dbg !38
  %"$$BoolUtils.negb_3_279" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_3", align 8
  store %TName_Bool* %"$$BoolUtils.negb_3_279", %TName_Bool** %res4, align 8, !dbg !38
  %"$gasrem_280" = load i64, i64* @_gasrem, align 8
  %"$gascmp_281" = icmp ugt i64 1, %"$gasrem_280"
  br i1 %"$gascmp_281", label %"$out_of_gas_282", label %"$have_gas_283"

"$out_of_gas_282":                                ; preds = %"$have_gas_272"
  call void @_out_of_gas()
  br label %"$have_gas_283"

"$have_gas_283":                                  ; preds = %"$out_of_gas_282", %"$have_gas_272"
  %"$consume_284" = sub i64 %"$gasrem_280", 1
  store i64 %"$consume_284", i64* @_gasrem, align 8
  %"$n1_0" = alloca %Uint256, align 8
  %"$gasrem_285" = load i64, i64* @_gasrem, align 8
  %"$gascmp_286" = icmp ugt i64 1, %"$gasrem_285"
  br i1 %"$gascmp_286", label %"$out_of_gas_287", label %"$have_gas_288"

"$out_of_gas_287":                                ; preds = %"$have_gas_283"
  call void @_out_of_gas()
  br label %"$have_gas_288"

"$have_gas_288":                                  ; preds = %"$out_of_gas_287", %"$have_gas_283"
  %"$consume_289" = sub i64 %"$gasrem_285", 1
  store i64 %"$consume_289", i64* @_gasrem, align 8
  store %Uint256 { i256 100 }, %Uint256* %"$n1_0", align 8, !dbg !39
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 1, %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %"$have_gas_288"
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %"$have_gas_288"
  %"$consume_294" = sub i64 %"$gasrem_290", 1
  store i64 %"$consume_294", i64* @_gasrem, align 8
  %"$n2_1" = alloca %Uint256, align 8
  %"$gasrem_295" = load i64, i64* @_gasrem, align 8
  %"$gascmp_296" = icmp ugt i64 1, %"$gasrem_295"
  br i1 %"$gascmp_296", label %"$out_of_gas_297", label %"$have_gas_298"

"$out_of_gas_297":                                ; preds = %"$have_gas_293"
  call void @_out_of_gas()
  br label %"$have_gas_298"

"$have_gas_298":                                  ; preds = %"$out_of_gas_297", %"$have_gas_293"
  %"$consume_299" = sub i64 %"$gasrem_295", 1
  store i64 %"$consume_299", i64* @_gasrem, align 8
  store %Uint256 { i256 200 }, %Uint256* %"$n2_1", align 8, !dbg !40
  %"$gasrem_300" = load i64, i64* @_gasrem, align 8
  %"$gascmp_301" = icmp ugt i64 1, %"$gasrem_300"
  br i1 %"$gascmp_301", label %"$out_of_gas_302", label %"$have_gas_303"

"$out_of_gas_302":                                ; preds = %"$have_gas_298"
  call void @_out_of_gas()
  br label %"$have_gas_303"

"$have_gas_303":                                  ; preds = %"$out_of_gas_302", %"$have_gas_298"
  %"$consume_304" = sub i64 %"$gasrem_300", 1
  store i64 %"$consume_304", i64* @_gasrem, align 8
  %res5 = alloca %TName_Bool*, align 8
  %"$execptr_load_305" = load i8*, i8** @_execptr, align 8
  %"$lt_$n1_0_306" = alloca %Uint256, align 8
  %"$$n1_0_307" = load %Uint256, %Uint256* %"$n1_0", align 8
  store %Uint256 %"$$n1_0_307", %Uint256* %"$lt_$n1_0_306", align 8
  %"$lt_$n2_1_308" = alloca %Uint256, align 8
  %"$$n2_1_309" = load %Uint256, %Uint256* %"$n2_1", align 8
  store %Uint256 %"$$n2_1_309", %Uint256* %"$lt_$n2_1_308", align 8
  %"$lt_call_310" = call %TName_Bool* @_lt_Uint256(i8* %"$execptr_load_305", %Uint256* %"$lt_$n1_0_306", %Uint256* %"$lt_$n2_1_308"), !dbg !41
  store %TName_Bool* %"$lt_call_310", %TName_Bool** %res5, align 8, !dbg !41
  %"$gasrem_312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_313" = icmp ugt i64 1, %"$gasrem_312"
  br i1 %"$gascmp_313", label %"$out_of_gas_314", label %"$have_gas_315"

"$out_of_gas_314":                                ; preds = %"$have_gas_303"
  call void @_out_of_gas()
  br label %"$have_gas_315"

"$have_gas_315":                                  ; preds = %"$out_of_gas_314", %"$have_gas_303"
  %"$consume_316" = sub i64 %"$gasrem_312", 1
  store i64 %"$consume_316", i64* @_gasrem, align 8
  %res6n = alloca %TName_Bool*, align 8
  %"$execptr_load_317" = load i8*, i8** @_execptr, align 8
  %"$lt_$n2_1_318" = alloca %Uint256, align 8
  %"$$n2_1_319" = load %Uint256, %Uint256* %"$n2_1", align 8
  store %Uint256 %"$$n2_1_319", %Uint256* %"$lt_$n2_1_318", align 8
  %"$lt_$n1_0_320" = alloca %Uint256, align 8
  %"$$n1_0_321" = load %Uint256, %Uint256* %"$n1_0", align 8
  store %Uint256 %"$$n1_0_321", %Uint256* %"$lt_$n1_0_320", align 8
  %"$lt_call_322" = call %TName_Bool* @_lt_Uint256(i8* %"$execptr_load_317", %Uint256* %"$lt_$n2_1_318", %Uint256* %"$lt_$n1_0_320"), !dbg !42
  store %TName_Bool* %"$lt_call_322", %TName_Bool** %res6n, align 8, !dbg !42
  %"$gasrem_324" = load i64, i64* @_gasrem, align 8
  %"$gascmp_325" = icmp ugt i64 1, %"$gasrem_324"
  br i1 %"$gascmp_325", label %"$out_of_gas_326", label %"$have_gas_327"

"$out_of_gas_326":                                ; preds = %"$have_gas_315"
  call void @_out_of_gas()
  br label %"$have_gas_327"

"$have_gas_327":                                  ; preds = %"$out_of_gas_326", %"$have_gas_315"
  %"$consume_328" = sub i64 %"$gasrem_324", 1
  store i64 %"$consume_328", i64* @_gasrem, align 8
  %res6 = alloca %TName_Bool*, align 8
  %"$gasrem_329" = load i64, i64* @_gasrem, align 8
  %"$gascmp_330" = icmp ugt i64 1, %"$gasrem_329"
  br i1 %"$gascmp_330", label %"$out_of_gas_331", label %"$have_gas_332"

"$out_of_gas_331":                                ; preds = %"$have_gas_327"
  call void @_out_of_gas()
  br label %"$have_gas_332"

"$have_gas_332":                                  ; preds = %"$out_of_gas_331", %"$have_gas_327"
  %"$consume_333" = sub i64 %"$gasrem_329", 1
  store i64 %"$consume_333", i64* @_gasrem, align 8
  %"$BoolUtils.negb_4" = alloca %TName_Bool*, align 8
  %"$BoolUtils.negb_334" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* @BoolUtils.negb, align 8
  %"$BoolUtils.negb_fptr_335" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_334", 0
  %"$BoolUtils.negb_envptr_336" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.negb_334", 1
  %"$res6n_337" = load %TName_Bool*, %TName_Bool** %res6n, align 8
  %"$BoolUtils.negb_call_338" = call %TName_Bool* %"$BoolUtils.negb_fptr_335"(i8* %"$BoolUtils.negb_envptr_336", %TName_Bool* %"$res6n_337"), !dbg !43
  store %TName_Bool* %"$BoolUtils.negb_call_338", %TName_Bool** %"$BoolUtils.negb_4", align 8, !dbg !43
  %"$$BoolUtils.negb_4_339" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.negb_4", align 8
  store %TName_Bool* %"$$BoolUtils.negb_4_339", %TName_Bool** %res6, align 8, !dbg !43
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 1, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %"$have_gas_332"
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %"$have_gas_332"
  %"$consume_344" = sub i64 %"$gasrem_340", 1
  store i64 %"$consume_344", i64* @_gasrem, align 8
  %res7 = alloca %TName_Bool*, align 8
  %"$gasrem_345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_346" = icmp ugt i64 1, %"$gasrem_345"
  br i1 %"$gascmp_346", label %"$out_of_gas_347", label %"$have_gas_348"

"$out_of_gas_347":                                ; preds = %"$have_gas_343"
  call void @_out_of_gas()
  br label %"$have_gas_348"

"$have_gas_348":                                  ; preds = %"$out_of_gas_347", %"$have_gas_343"
  %"$consume_349" = sub i64 %"$gasrem_345", 1
  store i64 %"$consume_349", i64* @_gasrem, align 8
  %"$BoolUtils.andb_5" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_350" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_351" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_350", 0
  %"$BoolUtils.andb_envptr_352" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_350", 1
  %"$res1_353" = load %TName_Bool*, %TName_Bool** %res1, align 8
  %"$BoolUtils.andb_call_354" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_351"(i8* %"$BoolUtils.andb_envptr_352", %TName_Bool* %"$res1_353"), !dbg !44
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_354", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_5", align 8, !dbg !44
  %"$BoolUtils.andb_6" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_5_355" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_5", align 8
  %"$$BoolUtils.andb_5_fptr_356" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_5_355", 0
  %"$$BoolUtils.andb_5_envptr_357" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_5_355", 1
  %"$res2_358" = load %TName_Bool*, %TName_Bool** %res2, align 8
  %"$$BoolUtils.andb_5_call_359" = call %TName_Bool* %"$$BoolUtils.andb_5_fptr_356"(i8* %"$$BoolUtils.andb_5_envptr_357", %TName_Bool* %"$res2_358"), !dbg !44
  store %TName_Bool* %"$$BoolUtils.andb_5_call_359", %TName_Bool** %"$BoolUtils.andb_6", align 8, !dbg !44
  %"$$BoolUtils.andb_6_360" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_6", align 8
  store %TName_Bool* %"$$BoolUtils.andb_6_360", %TName_Bool** %res7, align 8, !dbg !44
  %"$gasrem_361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_362" = icmp ugt i64 1, %"$gasrem_361"
  br i1 %"$gascmp_362", label %"$out_of_gas_363", label %"$have_gas_364"

"$out_of_gas_363":                                ; preds = %"$have_gas_348"
  call void @_out_of_gas()
  br label %"$have_gas_364"

"$have_gas_364":                                  ; preds = %"$out_of_gas_363", %"$have_gas_348"
  %"$consume_365" = sub i64 %"$gasrem_361", 1
  store i64 %"$consume_365", i64* @_gasrem, align 8
  %res8 = alloca %TName_Bool*, align 8
  %"$gasrem_366" = load i64, i64* @_gasrem, align 8
  %"$gascmp_367" = icmp ugt i64 1, %"$gasrem_366"
  br i1 %"$gascmp_367", label %"$out_of_gas_368", label %"$have_gas_369"

"$out_of_gas_368":                                ; preds = %"$have_gas_364"
  call void @_out_of_gas()
  br label %"$have_gas_369"

"$have_gas_369":                                  ; preds = %"$out_of_gas_368", %"$have_gas_364"
  %"$consume_370" = sub i64 %"$gasrem_366", 1
  store i64 %"$consume_370", i64* @_gasrem, align 8
  %"$BoolUtils.andb_7" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_371" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_372" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_371", 0
  %"$BoolUtils.andb_envptr_373" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_371", 1
  %"$res3_374" = load %TName_Bool*, %TName_Bool** %res3, align 8
  %"$BoolUtils.andb_call_375" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_372"(i8* %"$BoolUtils.andb_envptr_373", %TName_Bool* %"$res3_374"), !dbg !45
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_375", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_7", align 8, !dbg !45
  %"$BoolUtils.andb_8" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_7_376" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_7", align 8
  %"$$BoolUtils.andb_7_fptr_377" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_7_376", 0
  %"$$BoolUtils.andb_7_envptr_378" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_7_376", 1
  %"$res4_379" = load %TName_Bool*, %TName_Bool** %res4, align 8
  %"$$BoolUtils.andb_7_call_380" = call %TName_Bool* %"$$BoolUtils.andb_7_fptr_377"(i8* %"$$BoolUtils.andb_7_envptr_378", %TName_Bool* %"$res4_379"), !dbg !45
  store %TName_Bool* %"$$BoolUtils.andb_7_call_380", %TName_Bool** %"$BoolUtils.andb_8", align 8, !dbg !45
  %"$$BoolUtils.andb_8_381" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_8", align 8
  store %TName_Bool* %"$$BoolUtils.andb_8_381", %TName_Bool** %res8, align 8, !dbg !45
  %"$gasrem_382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_383" = icmp ugt i64 1, %"$gasrem_382"
  br i1 %"$gascmp_383", label %"$out_of_gas_384", label %"$have_gas_385"

"$out_of_gas_384":                                ; preds = %"$have_gas_369"
  call void @_out_of_gas()
  br label %"$have_gas_385"

"$have_gas_385":                                  ; preds = %"$out_of_gas_384", %"$have_gas_369"
  %"$consume_386" = sub i64 %"$gasrem_382", 1
  store i64 %"$consume_386", i64* @_gasrem, align 8
  %res9 = alloca %TName_Bool*, align 8
  %"$gasrem_387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_388" = icmp ugt i64 1, %"$gasrem_387"
  br i1 %"$gascmp_388", label %"$out_of_gas_389", label %"$have_gas_390"

"$out_of_gas_389":                                ; preds = %"$have_gas_385"
  call void @_out_of_gas()
  br label %"$have_gas_390"

"$have_gas_390":                                  ; preds = %"$out_of_gas_389", %"$have_gas_385"
  %"$consume_391" = sub i64 %"$gasrem_387", 1
  store i64 %"$consume_391", i64* @_gasrem, align 8
  %"$BoolUtils.andb_9" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_392" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_393" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_392", 0
  %"$BoolUtils.andb_envptr_394" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_392", 1
  %"$res5_395" = load %TName_Bool*, %TName_Bool** %res5, align 8
  %"$BoolUtils.andb_call_396" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_393"(i8* %"$BoolUtils.andb_envptr_394", %TName_Bool* %"$res5_395"), !dbg !46
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_396", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_9", align 8, !dbg !46
  %"$BoolUtils.andb_10" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_9_397" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_9", align 8
  %"$$BoolUtils.andb_9_fptr_398" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_9_397", 0
  %"$$BoolUtils.andb_9_envptr_399" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_9_397", 1
  %"$res6_400" = load %TName_Bool*, %TName_Bool** %res6, align 8
  %"$$BoolUtils.andb_9_call_401" = call %TName_Bool* %"$$BoolUtils.andb_9_fptr_398"(i8* %"$$BoolUtils.andb_9_envptr_399", %TName_Bool* %"$res6_400"), !dbg !46
  store %TName_Bool* %"$$BoolUtils.andb_9_call_401", %TName_Bool** %"$BoolUtils.andb_10", align 8, !dbg !46
  %"$$BoolUtils.andb_10_402" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_10", align 8
  store %TName_Bool* %"$$BoolUtils.andb_10_402", %TName_Bool** %res9, align 8, !dbg !46
  %"$gasrem_403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_404" = icmp ugt i64 1, %"$gasrem_403"
  br i1 %"$gascmp_404", label %"$out_of_gas_405", label %"$have_gas_406"

"$out_of_gas_405":                                ; preds = %"$have_gas_390"
  call void @_out_of_gas()
  br label %"$have_gas_406"

"$have_gas_406":                                  ; preds = %"$out_of_gas_405", %"$have_gas_390"
  %"$consume_407" = sub i64 %"$gasrem_403", 1
  store i64 %"$consume_407", i64* @_gasrem, align 8
  %res10 = alloca %TName_Bool*, align 8
  %"$gasrem_408" = load i64, i64* @_gasrem, align 8
  %"$gascmp_409" = icmp ugt i64 1, %"$gasrem_408"
  br i1 %"$gascmp_409", label %"$out_of_gas_410", label %"$have_gas_411"

"$out_of_gas_410":                                ; preds = %"$have_gas_406"
  call void @_out_of_gas()
  br label %"$have_gas_411"

"$have_gas_411":                                  ; preds = %"$out_of_gas_410", %"$have_gas_406"
  %"$consume_412" = sub i64 %"$gasrem_408", 1
  store i64 %"$consume_412", i64* @_gasrem, align 8
  %"$BoolUtils.andb_11" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_413" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_414" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_413", 0
  %"$BoolUtils.andb_envptr_415" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_413", 1
  %"$res7_416" = load %TName_Bool*, %TName_Bool** %res7, align 8
  %"$BoolUtils.andb_call_417" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_414"(i8* %"$BoolUtils.andb_envptr_415", %TName_Bool* %"$res7_416"), !dbg !47
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_417", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_11", align 8, !dbg !47
  %"$BoolUtils.andb_12" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_11_418" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_11", align 8
  %"$$BoolUtils.andb_11_fptr_419" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_11_418", 0
  %"$$BoolUtils.andb_11_envptr_420" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_11_418", 1
  %"$res8_421" = load %TName_Bool*, %TName_Bool** %res8, align 8
  %"$$BoolUtils.andb_11_call_422" = call %TName_Bool* %"$$BoolUtils.andb_11_fptr_419"(i8* %"$$BoolUtils.andb_11_envptr_420", %TName_Bool* %"$res8_421"), !dbg !47
  store %TName_Bool* %"$$BoolUtils.andb_11_call_422", %TName_Bool** %"$BoolUtils.andb_12", align 8, !dbg !47
  %"$$BoolUtils.andb_12_423" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_12", align 8
  store %TName_Bool* %"$$BoolUtils.andb_12_423", %TName_Bool** %res10, align 8, !dbg !47
  %"$gasrem_424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_425" = icmp ugt i64 1, %"$gasrem_424"
  br i1 %"$gascmp_425", label %"$out_of_gas_426", label %"$have_gas_427"

"$out_of_gas_426":                                ; preds = %"$have_gas_411"
  call void @_out_of_gas()
  br label %"$have_gas_427"

"$have_gas_427":                                  ; preds = %"$out_of_gas_426", %"$have_gas_411"
  %"$consume_428" = sub i64 %"$gasrem_424", 1
  store i64 %"$consume_428", i64* @_gasrem, align 8
  %"$BoolUtils.andb_13" = alloca { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, align 8
  %"$BoolUtils.andb_429" = load { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }, { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* }* @BoolUtils.andb, align 8
  %"$BoolUtils.andb_fptr_430" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_429", 0
  %"$BoolUtils.andb_envptr_431" = extractvalue { { %TName_Bool* (i8*, %TName_Bool*)*, i8* } (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_429", 1
  %"$res9_432" = load %TName_Bool*, %TName_Bool** %res9, align 8
  %"$BoolUtils.andb_call_433" = call { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_fptr_430"(i8* %"$BoolUtils.andb_envptr_431", %TName_Bool* %"$res9_432"), !dbg !48
  store { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$BoolUtils.andb_call_433", { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13", align 8, !dbg !48
  %"$BoolUtils.andb_14" = alloca %TName_Bool*, align 8
  %"$$BoolUtils.andb_13_434" = load { %TName_Bool* (i8*, %TName_Bool*)*, i8* }, { %TName_Bool* (i8*, %TName_Bool*)*, i8* }* %"$BoolUtils.andb_13", align 8
  %"$$BoolUtils.andb_13_fptr_435" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_434", 0
  %"$$BoolUtils.andb_13_envptr_436" = extractvalue { %TName_Bool* (i8*, %TName_Bool*)*, i8* } %"$$BoolUtils.andb_13_434", 1
  %"$res10_437" = load %TName_Bool*, %TName_Bool** %res10, align 8
  %"$$BoolUtils.andb_13_call_438" = call %TName_Bool* %"$$BoolUtils.andb_13_fptr_435"(i8* %"$$BoolUtils.andb_13_envptr_436", %TName_Bool* %"$res10_437"), !dbg !48
  store %TName_Bool* %"$$BoolUtils.andb_13_call_438", %TName_Bool** %"$BoolUtils.andb_14", align 8, !dbg !48
  %"$$BoolUtils.andb_14_439" = load %TName_Bool*, %TName_Bool** %"$BoolUtils.andb_14", align 8
  store %TName_Bool* %"$$BoolUtils.andb_14_439", %TName_Bool** %"$expr_21", align 8, !dbg !48
  %"$$expr_21_440" = load %TName_Bool*, %TName_Bool** %"$expr_21", align 8
  ret %TName_Bool* %"$$expr_21_440"
}

declare i8* @_new_bnum(i8*, %BNumString)

declare %TName_Bool* @_lt_BNum(i8*, i8*, i8*)

declare %TName_Bool* @_lt_Int32(i8*, %Int32, %Int32)

declare %TName_Bool* @_lt_Uint256(i8*, %Uint256*, %Uint256*)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_441" = call %TName_Bool* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_442" = bitcast %TName_Bool* %"$exprval_441" to i8*
  %"$execptr_load_443" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_443", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_54", i8* %"$memvoidcast_442")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_lt.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_15", linkageName: "$fundef_15", scope: !5, file: !5, line: 22, type: !6, scopeLine: 22, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: "BoolUtils.scillib", directory: "../src/stdlib")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = !DILocation(line: 22, column: 5, scope: !4)
!10 = !DILocation(line: 23, column: 15, scope: !11)
!11 = distinct !DILexicalBlock(scope: !12, file: !5, line: 23, column: 7)
!12 = distinct !DILexicalBlock(scope: !4, file: !5, line: 22, column: 5)
!13 = !DILocation(line: 24, column: 16, scope: !14)
!14 = distinct !DILexicalBlock(scope: !12, file: !5, line: 24, column: 7)
!15 = distinct !DISubprogram(name: "$fundef_19", linkageName: "$fundef_19", scope: !5, file: !5, line: 8, type: !6, scopeLine: 8, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!16 = !DILocation(line: 8, column: 5, scope: !15)
!17 = !DILocation(line: 9, column: 16, scope: !18)
!18 = distinct !DILexicalBlock(scope: !19, file: !5, line: 9, column: 7)
!19 = distinct !DILexicalBlock(scope: !15, file: !5, line: 8, column: 5)
!20 = !DILocation(line: 10, column: 16, scope: !21)
!21 = distinct !DILexicalBlock(scope: !19, file: !5, line: 10, column: 7)
!22 = distinct !DISubprogram(name: "$fundef_17", linkageName: "$fundef_17", scope: !5, file: !5, line: 7, type: !6, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!23 = !DILocation(line: 8, column: 5, scope: !22)
!24 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !25, file: !25, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!25 = !DIFile(filename: ".", directory: ".")
!26 = !DILocation(line: 7, column: 3, scope: !24)
!27 = !DILocation(line: 22, column: 5, scope: !24)
!28 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!29 = !DILocation(line: 1, column: 11, scope: !28)
!30 = !DILocation(line: 2, column: 11, scope: !28)
!31 = !DILocation(line: 3, column: 12, scope: !28)
!32 = !DILocation(line: 4, column: 13, scope: !28)
!33 = !DILocation(line: 5, column: 12, scope: !28)
!34 = !DILocation(line: 7, column: 10, scope: !28)
!35 = !DILocation(line: 8, column: 10, scope: !28)
!36 = !DILocation(line: 9, column: 12, scope: !28)
!37 = !DILocation(line: 10, column: 13, scope: !28)
!38 = !DILocation(line: 11, column: 12, scope: !28)
!39 = !DILocation(line: 13, column: 10, scope: !28)
!40 = !DILocation(line: 14, column: 10, scope: !28)
!41 = !DILocation(line: 15, column: 12, scope: !28)
!42 = !DILocation(line: 16, column: 13, scope: !28)
!43 = !DILocation(line: 17, column: 12, scope: !28)
!44 = !DILocation(line: 19, column: 12, scope: !28)
!45 = !DILocation(line: 20, column: 12, scope: !28)
!46 = !DILocation(line: 21, column: 12, scope: !28)
!47 = !DILocation(line: 22, column: 13, scope: !28)
!48 = !DILocation(line: 23, column: 1, scope: !28)
