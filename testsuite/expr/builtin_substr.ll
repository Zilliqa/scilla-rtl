; let x = "hello world" in
; let y = 0x001122334455 in
; let ybs = builtin to_bystr y in
; 
; let pos = Uint32 0 in
; let len = Uint32 5 in
; let x_sub = builtin substr x pos len in
; let ybs_sub = builtin substr ybs pos len in
; 
; Pair {String ByStr} x_sub ybs_sub
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_33" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_32"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_32" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_34"**, %"$TyDescrTy_ADTTyp_33"* }
%"$TyDescrTy_ADTTyp_Constr_34" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$ParamDescr_174" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_175" = type { %ParamDescrString, i32, %"$ParamDescr_174"* }
%TName_Pair_String_ByStr = type { i8, %CName_Pair_String_ByStr* }
%CName_Pair_String_ByStr = type <{ i8, %String, %Bystr }>
%String = type { i8*, i32 }
%Bystr = type { i8*, i32 }
%Uint32 = type { i32 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_2" = global %"$TyDescrTy_PrimTyp_1" zeroinitializer
@"$TyDescr_Int32_3" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int32_Prim_2" to i8*) }
@"$TyDescr_Uint32_Prim_4" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 0 }
@"$TyDescr_Uint32_5" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint32_Prim_4" to i8*) }
@"$TyDescr_Int64_Prim_6" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 1 }
@"$TyDescr_Int64_7" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int64_Prim_6" to i8*) }
@"$TyDescr_Uint64_Prim_8" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 1 }
@"$TyDescr_Uint64_9" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint64_Prim_8" to i8*) }
@"$TyDescr_Int128_Prim_10" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 2 }
@"$TyDescr_Int128_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int128_Prim_10" to i8*) }
@"$TyDescr_Uint128_Prim_12" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 2 }
@"$TyDescr_Uint128_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint128_Prim_12" to i8*) }
@"$TyDescr_Int256_Prim_14" = global %"$TyDescrTy_PrimTyp_1" { i32 0, i32 3 }
@"$TyDescr_Int256_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Int256_Prim_14" to i8*) }
@"$TyDescr_Uint256_Prim_16" = global %"$TyDescrTy_PrimTyp_1" { i32 1, i32 3 }
@"$TyDescr_Uint256_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Uint256_Prim_16" to i8*) }
@"$TyDescr_String_Prim_18" = global %"$TyDescrTy_PrimTyp_1" { i32 2, i32 0 }
@"$TyDescr_String_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_String_Prim_18" to i8*) }
@"$TyDescr_Bnum_Prim_20" = global %"$TyDescrTy_PrimTyp_1" { i32 3, i32 0 }
@"$TyDescr_Bnum_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bnum_Prim_20" to i8*) }
@"$TyDescr_Message_Prim_22" = global %"$TyDescrTy_PrimTyp_1" { i32 4, i32 0 }
@"$TyDescr_Message_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Message_Prim_22" to i8*) }
@"$TyDescr_Event_Prim_24" = global %"$TyDescrTy_PrimTyp_1" { i32 5, i32 0 }
@"$TyDescr_Event_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Event_Prim_24" to i8*) }
@"$TyDescr_Exception_Prim_26" = global %"$TyDescrTy_PrimTyp_1" { i32 6, i32 0 }
@"$TyDescr_Exception_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Exception_Prim_26" to i8*) }
@"$TyDescr_Bystr_Prim_28" = global %"$TyDescrTy_PrimTyp_1" { i32 7, i32 0 }
@"$TyDescr_Bystr_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr_Prim_28" to i8*) }
@"$TyDescr_Bystr6_Prim_30" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 6 }
@"$TyDescr_Bystr6_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr6_Prim_30" to i8*) }
@"$TyDescr_ADT_Pair_String_ByStr_35" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Pair_String_ByStr_ADTTyp_Specl_45" to i8*) }
@"$TyDescr_Pair_ADTTyp_39" = unnamed_addr constant %"$TyDescrTy_ADTTyp_33" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_47", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_32"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_32"*], [1 x %"$TyDescrTy_ADTTyp_Specl_32"*]* @"$TyDescr_Pair_ADTTyp_m_specls_46", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_String_ByStr_Constr_m_args_40" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29"]
@"$TyDescr_ADT_Pair_41" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_String_ByStr_ADTTyp_Constr_42" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_34" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_41", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_String_ByStr_Constr_m_args_40", i32 0, i32 0) }
@"$TyDescr_Pair_String_ByStr_ADTTyp_Specl_m_constrs_43" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_34"*] [%"$TyDescrTy_ADTTyp_Constr_34"* @"$TyDescr_Pair_Pair_String_ByStr_ADTTyp_Constr_42"]
@"$TyDescr_Pair_String_ByStr_ADTTyp_Specl_m_TArgs_44" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29"]
@"$TyDescr_Pair_String_ByStr_ADTTyp_Specl_45" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_32" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_String_ByStr_ADTTyp_Specl_m_TArgs_44", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_34"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_34"*], [1 x %"$TyDescrTy_ADTTyp_Constr_34"*]* @"$TyDescr_Pair_String_ByStr_ADTTyp_Specl_m_constrs_43", i32 0, i32 0), %"$TyDescrTy_ADTTyp_33"* @"$TyDescr_Pair_ADTTyp_39" }
@"$TyDescr_Pair_ADTTyp_m_specls_46" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_32"*] [%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Pair_String_ByStr_ADTTyp_Specl_45"]
@"$TyDescr_ADT_Pair_47" = unnamed_addr constant [4 x i8] c"Pair"
@"$stringlit_58" = unnamed_addr constant [11 x i8] c"hello world"
@_tydescr_table = constant [16 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_25", %_TyDescrTy_Typ* @"$TyDescr_Int64_7", %_TyDescrTy_Typ* @"$TyDescr_Uint256_17", %_TyDescrTy_Typ* @"$TyDescr_Uint32_5", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr_35", %_TyDescrTy_Typ* @"$TyDescr_Uint64_9", %_TyDescrTy_Typ* @"$TyDescr_Bnum_21", %_TyDescrTy_Typ* @"$TyDescr_Uint128_13", %_TyDescrTy_Typ* @"$TyDescr_Exception_27", %_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Int256_15", %_TyDescrTy_Typ* @"$TyDescr_Int128_11", %_TyDescrTy_Typ* @"$TyDescr_Bystr6_31", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29", %_TyDescrTy_Typ* @"$TyDescr_Message_23", %_TyDescrTy_Typ* @"$TyDescr_Int32_3"]
@_tydescr_table_length = constant i32 16
@_contract_parameters = constant [0 x %"$ParamDescr_174"] zeroinitializer
@_contract_parameters_length = constant i32 0
@_transition_parameters = constant [0 x %"$TransDescr_175"] zeroinitializer
@_transition_parameters_length = constant i32 0

define void @_init_libs() {
entry:
  ret void
}

define internal %TName_Pair_String_ByStr* @_scilla_expr_fun(i8* %0) {
entry:
  %"$expr_0" = alloca %TName_Pair_String_ByStr*, align 8
  %"$gasrem_48" = load i64, i64* @_gasrem, align 8
  %"$gascmp_49" = icmp ugt i64 1, %"$gasrem_48"
  br i1 %"$gascmp_49", label %"$out_of_gas_50", label %"$have_gas_51"

"$out_of_gas_50":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_51"

"$have_gas_51":                                   ; preds = %"$out_of_gas_50", %entry
  %"$consume_52" = sub i64 %"$gasrem_48", 1
  store i64 %"$consume_52", i64* @_gasrem, align 8
  %x = alloca %String, align 8
  %"$gasrem_53" = load i64, i64* @_gasrem, align 8
  %"$gascmp_54" = icmp ugt i64 1, %"$gasrem_53"
  br i1 %"$gascmp_54", label %"$out_of_gas_55", label %"$have_gas_56"

"$out_of_gas_55":                                 ; preds = %"$have_gas_51"
  call void @_out_of_gas()
  br label %"$have_gas_56"

"$have_gas_56":                                   ; preds = %"$out_of_gas_55", %"$have_gas_51"
  %"$consume_57" = sub i64 %"$gasrem_53", 1
  store i64 %"$consume_57", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_58", i32 0, i32 0), i32 11 }, %String* %x, align 8
  %"$gasrem_59" = load i64, i64* @_gasrem, align 8
  %"$gascmp_60" = icmp ugt i64 1, %"$gasrem_59"
  br i1 %"$gascmp_60", label %"$out_of_gas_61", label %"$have_gas_62"

"$out_of_gas_61":                                 ; preds = %"$have_gas_56"
  call void @_out_of_gas()
  br label %"$have_gas_62"

"$have_gas_62":                                   ; preds = %"$out_of_gas_61", %"$have_gas_56"
  %"$consume_63" = sub i64 %"$gasrem_59", 1
  store i64 %"$consume_63", i64* @_gasrem, align 8
  %y = alloca [6 x i8], align 1
  %"$gasrem_64" = load i64, i64* @_gasrem, align 8
  %"$gascmp_65" = icmp ugt i64 1, %"$gasrem_64"
  br i1 %"$gascmp_65", label %"$out_of_gas_66", label %"$have_gas_67"

"$out_of_gas_66":                                 ; preds = %"$have_gas_62"
  call void @_out_of_gas()
  br label %"$have_gas_67"

"$have_gas_67":                                   ; preds = %"$out_of_gas_66", %"$have_gas_62"
  %"$consume_68" = sub i64 %"$gasrem_64", 1
  store i64 %"$consume_68", i64* @_gasrem, align 8
  store [6 x i8] c"\00\11\223DU", [6 x i8]* %y, align 1
  %"$gasrem_69" = load i64, i64* @_gasrem, align 8
  %"$gascmp_70" = icmp ugt i64 1, %"$gasrem_69"
  br i1 %"$gascmp_70", label %"$out_of_gas_71", label %"$have_gas_72"

"$out_of_gas_71":                                 ; preds = %"$have_gas_67"
  call void @_out_of_gas()
  br label %"$have_gas_72"

"$have_gas_72":                                   ; preds = %"$out_of_gas_71", %"$have_gas_67"
  %"$consume_73" = sub i64 %"$gasrem_69", 1
  store i64 %"$consume_73", i64* @_gasrem, align 8
  %ybs = alloca %Bystr, align 8
  %"$gasrem_74" = load i64, i64* @_gasrem, align 8
  %"$gascmp_75" = icmp ugt i64 6, %"$gasrem_74"
  br i1 %"$gascmp_75", label %"$out_of_gas_76", label %"$have_gas_77"

"$out_of_gas_76":                                 ; preds = %"$have_gas_72"
  call void @_out_of_gas()
  br label %"$have_gas_77"

"$have_gas_77":                                   ; preds = %"$out_of_gas_76", %"$have_gas_72"
  %"$consume_78" = sub i64 %"$gasrem_74", 6
  store i64 %"$consume_78", i64* @_gasrem, align 8
  %"$execptr_load_79" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_y_80" = alloca [6 x i8], align 1
  %"$y_81" = load [6 x i8], [6 x i8]* %y, align 1
  store [6 x i8] %"$y_81", [6 x i8]* %"$to_bystr_y_80", align 1
  %"$$to_bystr_y_80_82" = bitcast [6 x i8]* %"$to_bystr_y_80" to i8*
  %"$to_bystr_call_83" = call %Bystr @_to_bystr(i8* %"$execptr_load_79", i32 6, i8* %"$$to_bystr_y_80_82")
  store %Bystr %"$to_bystr_call_83", %Bystr* %ybs, align 8
  %"$gasrem_84" = load i64, i64* @_gasrem, align 8
  %"$gascmp_85" = icmp ugt i64 1, %"$gasrem_84"
  br i1 %"$gascmp_85", label %"$out_of_gas_86", label %"$have_gas_87"

"$out_of_gas_86":                                 ; preds = %"$have_gas_77"
  call void @_out_of_gas()
  br label %"$have_gas_87"

"$have_gas_87":                                   ; preds = %"$out_of_gas_86", %"$have_gas_77"
  %"$consume_88" = sub i64 %"$gasrem_84", 1
  store i64 %"$consume_88", i64* @_gasrem, align 8
  %pos = alloca %Uint32, align 8
  %"$gasrem_89" = load i64, i64* @_gasrem, align 8
  %"$gascmp_90" = icmp ugt i64 1, %"$gasrem_89"
  br i1 %"$gascmp_90", label %"$out_of_gas_91", label %"$have_gas_92"

"$out_of_gas_91":                                 ; preds = %"$have_gas_87"
  call void @_out_of_gas()
  br label %"$have_gas_92"

"$have_gas_92":                                   ; preds = %"$out_of_gas_91", %"$have_gas_87"
  %"$consume_93" = sub i64 %"$gasrem_89", 1
  store i64 %"$consume_93", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %pos, align 4
  %"$gasrem_94" = load i64, i64* @_gasrem, align 8
  %"$gascmp_95" = icmp ugt i64 1, %"$gasrem_94"
  br i1 %"$gascmp_95", label %"$out_of_gas_96", label %"$have_gas_97"

"$out_of_gas_96":                                 ; preds = %"$have_gas_92"
  call void @_out_of_gas()
  br label %"$have_gas_97"

"$have_gas_97":                                   ; preds = %"$out_of_gas_96", %"$have_gas_92"
  %"$consume_98" = sub i64 %"$gasrem_94", 1
  store i64 %"$consume_98", i64* @_gasrem, align 8
  %len = alloca %Uint32, align 8
  %"$gasrem_99" = load i64, i64* @_gasrem, align 8
  %"$gascmp_100" = icmp ugt i64 1, %"$gasrem_99"
  br i1 %"$gascmp_100", label %"$out_of_gas_101", label %"$have_gas_102"

"$out_of_gas_101":                                ; preds = %"$have_gas_97"
  call void @_out_of_gas()
  br label %"$have_gas_102"

"$have_gas_102":                                  ; preds = %"$out_of_gas_101", %"$have_gas_97"
  %"$consume_103" = sub i64 %"$gasrem_99", 1
  store i64 %"$consume_103", i64* @_gasrem, align 8
  store %Uint32 { i32 5 }, %Uint32* %len, align 4
  %"$gasrem_104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_105" = icmp ugt i64 1, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %"$have_gas_102"
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %"$have_gas_102"
  %"$consume_108" = sub i64 %"$gasrem_104", 1
  store i64 %"$consume_108", i64* @_gasrem, align 8
  %x_sub = alloca %String, align 8
  %"$_literal_cost_x_109" = alloca %String, align 8
  %"$x_110" = load %String, %String* %x, align 8
  store %String %"$x_110", %String* %"$_literal_cost_x_109", align 8
  %"$$_literal_cost_x_109_111" = bitcast %String* %"$_literal_cost_x_109" to i8*
  %"$_literal_cost_call_112" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_String_19", i8* %"$$_literal_cost_x_109_111")
  %"$pos_113" = load %Uint32, %Uint32* %pos, align 4
  %"$valueof_114" = extractvalue %Uint32 %"$pos_113", 0
  %"$valueof_115" = zext i32 %"$valueof_114" to i64
  %"$len_116" = load %Uint32, %Uint32* %len, align 4
  %"$valueof_117" = extractvalue %Uint32 %"$len_116", 0
  %"$valueof_118" = zext i32 %"$valueof_117" to i64
  %"$gasadd_119" = add i64 %"$valueof_115", %"$valueof_118"
  %"$gasmin_120" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_112", i64 %"$gasadd_119")
  %"$gasrem_121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_122" = icmp ugt i64 %"$gasmin_120", %"$gasrem_121"
  br i1 %"$gascmp_122", label %"$out_of_gas_123", label %"$have_gas_124"

"$out_of_gas_123":                                ; preds = %"$have_gas_107"
  call void @_out_of_gas()
  br label %"$have_gas_124"

"$have_gas_124":                                  ; preds = %"$out_of_gas_123", %"$have_gas_107"
  %"$consume_125" = sub i64 %"$gasrem_121", %"$gasmin_120"
  store i64 %"$consume_125", i64* @_gasrem, align 8
  %"$execptr_load_126" = load i8*, i8** @_execptr, align 8
  %"$x_127" = load %String, %String* %x, align 8
  %"$pos_128" = load %Uint32, %Uint32* %pos, align 4
  %"$len_129" = load %Uint32, %Uint32* %len, align 4
  %"$substr_call_130" = call %String @_substr_String(i8* %"$execptr_load_126", %String %"$x_127", %Uint32 %"$pos_128", %Uint32 %"$len_129")
  store %String %"$substr_call_130", %String* %x_sub, align 8
  %"$gasrem_131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_132" = icmp ugt i64 1, %"$gasrem_131"
  br i1 %"$gascmp_132", label %"$out_of_gas_133", label %"$have_gas_134"

"$out_of_gas_133":                                ; preds = %"$have_gas_124"
  call void @_out_of_gas()
  br label %"$have_gas_134"

"$have_gas_134":                                  ; preds = %"$out_of_gas_133", %"$have_gas_124"
  %"$consume_135" = sub i64 %"$gasrem_131", 1
  store i64 %"$consume_135", i64* @_gasrem, align 8
  %ybs_sub = alloca %Bystr, align 8
  %"$_literal_cost_ybs_136" = alloca %Bystr, align 8
  %"$ybs_137" = load %Bystr, %Bystr* %ybs, align 8
  store %Bystr %"$ybs_137", %Bystr* %"$_literal_cost_ybs_136", align 8
  %"$$_literal_cost_ybs_136_138" = bitcast %Bystr* %"$_literal_cost_ybs_136" to i8*
  %"$_literal_cost_call_139" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_29", i8* %"$$_literal_cost_ybs_136_138")
  %"$pos_140" = load %Uint32, %Uint32* %pos, align 4
  %"$valueof_141" = extractvalue %Uint32 %"$pos_140", 0
  %"$valueof_142" = zext i32 %"$valueof_141" to i64
  %"$len_143" = load %Uint32, %Uint32* %len, align 4
  %"$valueof_144" = extractvalue %Uint32 %"$len_143", 0
  %"$valueof_145" = zext i32 %"$valueof_144" to i64
  %"$gasadd_146" = add i64 %"$valueof_142", %"$valueof_145"
  %"$gasmin_147" = call i64 @llvm.umin.i64(i64 %"$_literal_cost_call_139", i64 %"$gasadd_146")
  %"$gasrem_148" = load i64, i64* @_gasrem, align 8
  %"$gascmp_149" = icmp ugt i64 %"$gasmin_147", %"$gasrem_148"
  br i1 %"$gascmp_149", label %"$out_of_gas_150", label %"$have_gas_151"

"$out_of_gas_150":                                ; preds = %"$have_gas_134"
  call void @_out_of_gas()
  br label %"$have_gas_151"

"$have_gas_151":                                  ; preds = %"$out_of_gas_150", %"$have_gas_134"
  %"$consume_152" = sub i64 %"$gasrem_148", %"$gasmin_147"
  store i64 %"$consume_152", i64* @_gasrem, align 8
  %"$execptr_load_153" = load i8*, i8** @_execptr, align 8
  %"$ybs_154" = load %Bystr, %Bystr* %ybs, align 8
  %"$pos_155" = load %Uint32, %Uint32* %pos, align 4
  %"$len_156" = load %Uint32, %Uint32* %len, align 4
  %"$substr_call_157" = call %Bystr @_substr_ByStr(i8* %"$execptr_load_153", %Bystr %"$ybs_154", %Uint32 %"$pos_155", %Uint32 %"$len_156")
  store %Bystr %"$substr_call_157", %Bystr* %ybs_sub, align 8
  %"$gasrem_158" = load i64, i64* @_gasrem, align 8
  %"$gascmp_159" = icmp ugt i64 1, %"$gasrem_158"
  br i1 %"$gascmp_159", label %"$out_of_gas_160", label %"$have_gas_161"

"$out_of_gas_160":                                ; preds = %"$have_gas_151"
  call void @_out_of_gas()
  br label %"$have_gas_161"

"$have_gas_161":                                  ; preds = %"$out_of_gas_160", %"$have_gas_151"
  %"$consume_162" = sub i64 %"$gasrem_158", 1
  store i64 %"$consume_162", i64* @_gasrem, align 8
  %"$x_sub_163" = load %String, %String* %x_sub, align 8
  %"$ybs_sub_164" = load %Bystr, %Bystr* %ybs_sub, align 8
  %"$adtval_165_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_165_salloc" = call i8* @_salloc(i8* %"$adtval_165_load", i64 33)
  %"$adtval_165" = bitcast i8* %"$adtval_165_salloc" to %CName_Pair_String_ByStr*
  %"$adtgep_166" = getelementptr inbounds %CName_Pair_String_ByStr, %CName_Pair_String_ByStr* %"$adtval_165", i32 0, i32 0
  store i8 0, i8* %"$adtgep_166", align 1
  %"$adtgep_167" = getelementptr inbounds %CName_Pair_String_ByStr, %CName_Pair_String_ByStr* %"$adtval_165", i32 0, i32 1
  store %String %"$x_sub_163", %String* %"$adtgep_167", align 8
  %"$adtgep_168" = getelementptr inbounds %CName_Pair_String_ByStr, %CName_Pair_String_ByStr* %"$adtval_165", i32 0, i32 2
  store %Bystr %"$ybs_sub_164", %Bystr* %"$adtgep_168", align 8
  %"$adtptr_169" = bitcast %CName_Pair_String_ByStr* %"$adtval_165" to %TName_Pair_String_ByStr*
  store %TName_Pair_String_ByStr* %"$adtptr_169", %TName_Pair_String_ByStr** %"$expr_0", align 8
  %"$$expr_0_170" = load %TName_Pair_String_ByStr*, %TName_Pair_String_ByStr** %"$expr_0", align 8
  ret %TName_Pair_String_ByStr* %"$$expr_0_170"
}

declare void @_out_of_gas()

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #0

declare %String @_substr_String(i8*, %String, %Uint32, %Uint32)

declare %Bystr @_substr_ByStr(i8*, %Bystr, %Uint32, %Uint32)

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(i8*, %_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_171" = call %TName_Pair_String_ByStr* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_172" = bitcast %TName_Pair_String_ByStr* %"$exprval_171" to i8*
  %"$execptr_load_173" = load i8*, i8** @_execptr, align 8
  call void @_print_scilla_val(i8* %"$execptr_load_173", %_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr_35", i8* %"$memvoidcast_172")
  ret void
}

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }
