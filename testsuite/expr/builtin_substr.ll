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
@"$TyDescr_ADT_Pair_String_ByStr_35" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Pair_String_ByStr_ADTTyp_Specl_43" to i8*) }
@"$TyDescr_Pair_ADTTyp_37" = unnamed_addr constant %"$TyDescrTy_ADTTyp_33" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_45", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_32"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_32"*], [1 x %"$TyDescrTy_ADTTyp_Specl_32"*]* @"$TyDescr_Pair_ADTTyp_m_specls_44", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_String_ByStr_Constr_m_args_38" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29"]
@"$TyDescr_ADT_Pair_39" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_String_ByStr_ADTTyp_Constr_40" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_34" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_39", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_String_ByStr_Constr_m_args_38", i32 0, i32 0) }
@"$TyDescr_Pair_String_ByStr_ADTTyp_Specl_m_constrs_41" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_34"*] [%"$TyDescrTy_ADTTyp_Constr_34"* @"$TyDescr_Pair_Pair_String_ByStr_ADTTyp_Constr_40"]
@"$TyDescr_Pair_String_ByStr_ADTTyp_Specl_m_TArgs_42" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr_29"]
@"$TyDescr_Pair_String_ByStr_ADTTyp_Specl_43" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_32" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_String_ByStr_ADTTyp_Specl_m_TArgs_42", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_34"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_34"*], [1 x %"$TyDescrTy_ADTTyp_Constr_34"*]* @"$TyDescr_Pair_String_ByStr_ADTTyp_Specl_m_constrs_41", i32 0, i32 0), %"$TyDescrTy_ADTTyp_33"* @"$TyDescr_Pair_ADTTyp_37" }
@"$TyDescr_Pair_ADTTyp_m_specls_44" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_32"*] [%"$TyDescrTy_ADTTyp_Specl_32"* @"$TyDescr_Pair_String_ByStr_ADTTyp_Specl_43"]
@"$TyDescr_ADT_Pair_45" = unnamed_addr constant [4 x i8] c"Pair"
@"$stringlit_56" = unnamed_addr constant [11 x i8] c"hello world"

define void @_init_libs() !dbg !4 {
entry:
  ret void
}

define internal %TName_Pair_String_ByStr* @_scilla_expr_fun(i8* %0) !dbg !9 {
entry:
  %"$expr_0" = alloca %TName_Pair_String_ByStr*, align 8
  %"$gasrem_46" = load i64, i64* @_gasrem, align 8
  %"$gascmp_47" = icmp ugt i64 1, %"$gasrem_46"
  br i1 %"$gascmp_47", label %"$out_of_gas_48", label %"$have_gas_49"

"$out_of_gas_48":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_49"

"$have_gas_49":                                   ; preds = %"$out_of_gas_48", %entry
  %"$consume_50" = sub i64 %"$gasrem_46", 1
  store i64 %"$consume_50", i64* @_gasrem, align 8
  %x = alloca %String, align 8
  %"$gasrem_51" = load i64, i64* @_gasrem, align 8
  %"$gascmp_52" = icmp ugt i64 1, %"$gasrem_51"
  br i1 %"$gascmp_52", label %"$out_of_gas_53", label %"$have_gas_54"

"$out_of_gas_53":                                 ; preds = %"$have_gas_49"
  call void @_out_of_gas()
  br label %"$have_gas_54"

"$have_gas_54":                                   ; preds = %"$out_of_gas_53", %"$have_gas_49"
  %"$consume_55" = sub i64 %"$gasrem_51", 1
  store i64 %"$consume_55", i64* @_gasrem, align 8
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_56", i32 0, i32 0), i32 11 }, %String* %x, align 8, !dbg !10
  %"$gasrem_57" = load i64, i64* @_gasrem, align 8
  %"$gascmp_58" = icmp ugt i64 1, %"$gasrem_57"
  br i1 %"$gascmp_58", label %"$out_of_gas_59", label %"$have_gas_60"

"$out_of_gas_59":                                 ; preds = %"$have_gas_54"
  call void @_out_of_gas()
  br label %"$have_gas_60"

"$have_gas_60":                                   ; preds = %"$out_of_gas_59", %"$have_gas_54"
  %"$consume_61" = sub i64 %"$gasrem_57", 1
  store i64 %"$consume_61", i64* @_gasrem, align 8
  %y = alloca [6 x i8], align 1
  %"$gasrem_62" = load i64, i64* @_gasrem, align 8
  %"$gascmp_63" = icmp ugt i64 1, %"$gasrem_62"
  br i1 %"$gascmp_63", label %"$out_of_gas_64", label %"$have_gas_65"

"$out_of_gas_64":                                 ; preds = %"$have_gas_60"
  call void @_out_of_gas()
  br label %"$have_gas_65"

"$have_gas_65":                                   ; preds = %"$out_of_gas_64", %"$have_gas_60"
  %"$consume_66" = sub i64 %"$gasrem_62", 1
  store i64 %"$consume_66", i64* @_gasrem, align 8
  store [6 x i8] c"\00\11\223DU", [6 x i8]* %y, align 1, !dbg !11
  %"$gasrem_67" = load i64, i64* @_gasrem, align 8
  %"$gascmp_68" = icmp ugt i64 1, %"$gasrem_67"
  br i1 %"$gascmp_68", label %"$out_of_gas_69", label %"$have_gas_70"

"$out_of_gas_69":                                 ; preds = %"$have_gas_65"
  call void @_out_of_gas()
  br label %"$have_gas_70"

"$have_gas_70":                                   ; preds = %"$out_of_gas_69", %"$have_gas_65"
  %"$consume_71" = sub i64 %"$gasrem_67", 1
  store i64 %"$consume_71", i64* @_gasrem, align 8
  %ybs = alloca %Bystr, align 8
  %"$execptr_load_72" = load i8*, i8** @_execptr, align 8
  %"$to_bystr_y_73" = alloca [6 x i8], align 1
  %"$y_74" = load [6 x i8], [6 x i8]* %y, align 1
  store [6 x i8] %"$y_74", [6 x i8]* %"$to_bystr_y_73", align 1
  %"$$to_bystr_y_73_75" = bitcast [6 x i8]* %"$to_bystr_y_73" to i8*
  %"$to_bystr_call_76" = call %Bystr @_to_bystr(i8* %"$execptr_load_72", i32 6, i8* %"$$to_bystr_y_73_75")
  store %Bystr %"$to_bystr_call_76", %Bystr* %ybs, align 8, !dbg !12
  %"$gasrem_77" = load i64, i64* @_gasrem, align 8
  %"$gascmp_78" = icmp ugt i64 1, %"$gasrem_77"
  br i1 %"$gascmp_78", label %"$out_of_gas_79", label %"$have_gas_80"

"$out_of_gas_79":                                 ; preds = %"$have_gas_70"
  call void @_out_of_gas()
  br label %"$have_gas_80"

"$have_gas_80":                                   ; preds = %"$out_of_gas_79", %"$have_gas_70"
  %"$consume_81" = sub i64 %"$gasrem_77", 1
  store i64 %"$consume_81", i64* @_gasrem, align 8
  %pos = alloca %Uint32, align 8
  %"$gasrem_82" = load i64, i64* @_gasrem, align 8
  %"$gascmp_83" = icmp ugt i64 1, %"$gasrem_82"
  br i1 %"$gascmp_83", label %"$out_of_gas_84", label %"$have_gas_85"

"$out_of_gas_84":                                 ; preds = %"$have_gas_80"
  call void @_out_of_gas()
  br label %"$have_gas_85"

"$have_gas_85":                                   ; preds = %"$out_of_gas_84", %"$have_gas_80"
  %"$consume_86" = sub i64 %"$gasrem_82", 1
  store i64 %"$consume_86", i64* @_gasrem, align 8
  store %Uint32 zeroinitializer, %Uint32* %pos, align 4, !dbg !13
  %"$gasrem_87" = load i64, i64* @_gasrem, align 8
  %"$gascmp_88" = icmp ugt i64 1, %"$gasrem_87"
  br i1 %"$gascmp_88", label %"$out_of_gas_89", label %"$have_gas_90"

"$out_of_gas_89":                                 ; preds = %"$have_gas_85"
  call void @_out_of_gas()
  br label %"$have_gas_90"

"$have_gas_90":                                   ; preds = %"$out_of_gas_89", %"$have_gas_85"
  %"$consume_91" = sub i64 %"$gasrem_87", 1
  store i64 %"$consume_91", i64* @_gasrem, align 8
  %len = alloca %Uint32, align 8
  %"$gasrem_92" = load i64, i64* @_gasrem, align 8
  %"$gascmp_93" = icmp ugt i64 1, %"$gasrem_92"
  br i1 %"$gascmp_93", label %"$out_of_gas_94", label %"$have_gas_95"

"$out_of_gas_94":                                 ; preds = %"$have_gas_90"
  call void @_out_of_gas()
  br label %"$have_gas_95"

"$have_gas_95":                                   ; preds = %"$out_of_gas_94", %"$have_gas_90"
  %"$consume_96" = sub i64 %"$gasrem_92", 1
  store i64 %"$consume_96", i64* @_gasrem, align 8
  store %Uint32 { i32 5 }, %Uint32* %len, align 4, !dbg !14
  %"$gasrem_97" = load i64, i64* @_gasrem, align 8
  %"$gascmp_98" = icmp ugt i64 1, %"$gasrem_97"
  br i1 %"$gascmp_98", label %"$out_of_gas_99", label %"$have_gas_100"

"$out_of_gas_99":                                 ; preds = %"$have_gas_95"
  call void @_out_of_gas()
  br label %"$have_gas_100"

"$have_gas_100":                                  ; preds = %"$out_of_gas_99", %"$have_gas_95"
  %"$consume_101" = sub i64 %"$gasrem_97", 1
  store i64 %"$consume_101", i64* @_gasrem, align 8
  %x_sub = alloca %String, align 8
  %"$execptr_load_102" = load i8*, i8** @_execptr, align 8
  %"$x_103" = load %String, %String* %x, align 8
  %"$pos_104" = load %Uint32, %Uint32* %pos, align 4
  %"$len_105" = load %Uint32, %Uint32* %len, align 4
  %"$substr_call_106" = call %String @_substr_String(i8* %"$execptr_load_102", %String %"$x_103", %Uint32 %"$pos_104", %Uint32 %"$len_105")
  store %String %"$substr_call_106", %String* %x_sub, align 8, !dbg !15
  %"$gasrem_107" = load i64, i64* @_gasrem, align 8
  %"$gascmp_108" = icmp ugt i64 1, %"$gasrem_107"
  br i1 %"$gascmp_108", label %"$out_of_gas_109", label %"$have_gas_110"

"$out_of_gas_109":                                ; preds = %"$have_gas_100"
  call void @_out_of_gas()
  br label %"$have_gas_110"

"$have_gas_110":                                  ; preds = %"$out_of_gas_109", %"$have_gas_100"
  %"$consume_111" = sub i64 %"$gasrem_107", 1
  store i64 %"$consume_111", i64* @_gasrem, align 8
  %ybs_sub = alloca %Bystr, align 8
  %"$execptr_load_112" = load i8*, i8** @_execptr, align 8
  %"$ybs_113" = load %Bystr, %Bystr* %ybs, align 8
  %"$pos_114" = load %Uint32, %Uint32* %pos, align 4
  %"$len_115" = load %Uint32, %Uint32* %len, align 4
  %"$substr_call_116" = call %Bystr @_substr_ByStr(i8* %"$execptr_load_112", %Bystr %"$ybs_113", %Uint32 %"$pos_114", %Uint32 %"$len_115")
  store %Bystr %"$substr_call_116", %Bystr* %ybs_sub, align 8, !dbg !16
  %"$gasrem_117" = load i64, i64* @_gasrem, align 8
  %"$gascmp_118" = icmp ugt i64 1, %"$gasrem_117"
  br i1 %"$gascmp_118", label %"$out_of_gas_119", label %"$have_gas_120"

"$out_of_gas_119":                                ; preds = %"$have_gas_110"
  call void @_out_of_gas()
  br label %"$have_gas_120"

"$have_gas_120":                                  ; preds = %"$out_of_gas_119", %"$have_gas_110"
  %"$consume_121" = sub i64 %"$gasrem_117", 1
  store i64 %"$consume_121", i64* @_gasrem, align 8
  %"$x_sub_122" = load %String, %String* %x_sub, align 8
  %"$ybs_sub_123" = load %Bystr, %Bystr* %ybs_sub, align 8
  %"$adtval_124_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_124_salloc" = call i8* @_salloc(i8* %"$adtval_124_load", i64 33)
  %"$adtval_124" = bitcast i8* %"$adtval_124_salloc" to %CName_Pair_String_ByStr*
  %"$adtgep_125" = getelementptr inbounds %CName_Pair_String_ByStr, %CName_Pair_String_ByStr* %"$adtval_124", i32 0, i32 0
  store i8 0, i8* %"$adtgep_125", align 1
  %"$adtgep_126" = getelementptr inbounds %CName_Pair_String_ByStr, %CName_Pair_String_ByStr* %"$adtval_124", i32 0, i32 1
  store %String %"$x_sub_122", %String* %"$adtgep_126", align 8
  %"$adtgep_127" = getelementptr inbounds %CName_Pair_String_ByStr, %CName_Pair_String_ByStr* %"$adtval_124", i32 0, i32 2
  store %Bystr %"$ybs_sub_123", %Bystr* %"$adtgep_127", align 8
  %"$adtptr_128" = bitcast %CName_Pair_String_ByStr* %"$adtval_124" to %TName_Pair_String_ByStr*
  store %TName_Pair_String_ByStr* %"$adtptr_128", %TName_Pair_String_ByStr** %"$expr_0", align 8, !dbg !17
  %"$$expr_0_129" = load %TName_Pair_String_ByStr*, %TName_Pair_String_ByStr** %"$expr_0", align 8
  ret %TName_Pair_String_ByStr* %"$$expr_0_129"
}

declare void @_out_of_gas()

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare %String @_substr_String(i8*, %String, %Uint32, %Uint32)

declare %Bystr @_substr_ByStr(i8*, %Bystr, %Uint32, %Uint32)

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_130" = call %TName_Pair_String_ByStr* @_scilla_expr_fun(i8* null)
  %"$memvoidcast_131" = bitcast %TName_Pair_String_ByStr* %"$exprval_130" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr_35", i8* %"$memvoidcast_131")
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "builtin_substr.scilexp", directory: "codegen/expr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !5, file: !5, type: !6, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DIFile(filename: ".", directory: ".")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!9 = distinct !DISubprogram(name: "_scilla_expr_fun", linkageName: "_scilla_expr_fun", scope: !2, file: !2, line: 1, type: !6, scopeLine: 1, spFlags: DISPFlagDefinition, unit: !1, retainedNodes: !3)
!10 = !DILocation(line: 1, column: 21, scope: !9)
!11 = !DILocation(line: 2, column: 9, scope: !9)
!12 = !DILocation(line: 3, column: 11, scope: !9)
!13 = !DILocation(line: 5, column: 11, scope: !9)
!14 = !DILocation(line: 6, column: 11, scope: !9)
!15 = !DILocation(line: 7, column: 13, scope: !9)
!16 = !DILocation(line: 8, column: 15, scope: !9)
!17 = !DILocation(line: 10, column: 1, scope: !9)
