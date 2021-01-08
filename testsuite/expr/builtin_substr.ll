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
target triple = "x86_64-pc-linux-gnu"

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
@"$stringlit_57" = unnamed_addr constant [11 x i8] c"hello world"

define void @_init_libs() {
entry:
  ret void
}

define internal %TName_Pair_String_ByStr* @"$scilla_expr_46"(i8* %0) {
entry:
  %"$expr_0" = alloca %TName_Pair_String_ByStr*
  %"$gasrem_47" = load i64, i64* @_gasrem
  %"$gascmp_48" = icmp ugt i64 1, %"$gasrem_47"
  br i1 %"$gascmp_48", label %"$out_of_gas_49", label %"$have_gas_50"

"$out_of_gas_49":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_50"

"$have_gas_50":                                   ; preds = %"$out_of_gas_49", %entry
  %"$consume_51" = sub i64 %"$gasrem_47", 1
  store i64 %"$consume_51", i64* @_gasrem
  %x = alloca %String
  %"$gasrem_52" = load i64, i64* @_gasrem
  %"$gascmp_53" = icmp ugt i64 1, %"$gasrem_52"
  br i1 %"$gascmp_53", label %"$out_of_gas_54", label %"$have_gas_55"

"$out_of_gas_54":                                 ; preds = %"$have_gas_50"
  call void @_out_of_gas()
  br label %"$have_gas_55"

"$have_gas_55":                                   ; preds = %"$out_of_gas_54", %"$have_gas_50"
  %"$consume_56" = sub i64 %"$gasrem_52", 1
  store i64 %"$consume_56", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$stringlit_57", i32 0, i32 0), i32 11 }, %String* %x
  %"$gasrem_58" = load i64, i64* @_gasrem
  %"$gascmp_59" = icmp ugt i64 1, %"$gasrem_58"
  br i1 %"$gascmp_59", label %"$out_of_gas_60", label %"$have_gas_61"

"$out_of_gas_60":                                 ; preds = %"$have_gas_55"
  call void @_out_of_gas()
  br label %"$have_gas_61"

"$have_gas_61":                                   ; preds = %"$out_of_gas_60", %"$have_gas_55"
  %"$consume_62" = sub i64 %"$gasrem_58", 1
  store i64 %"$consume_62", i64* @_gasrem
  %y = alloca [6 x i8]
  %"$gasrem_63" = load i64, i64* @_gasrem
  %"$gascmp_64" = icmp ugt i64 1, %"$gasrem_63"
  br i1 %"$gascmp_64", label %"$out_of_gas_65", label %"$have_gas_66"

"$out_of_gas_65":                                 ; preds = %"$have_gas_61"
  call void @_out_of_gas()
  br label %"$have_gas_66"

"$have_gas_66":                                   ; preds = %"$out_of_gas_65", %"$have_gas_61"
  %"$consume_67" = sub i64 %"$gasrem_63", 1
  store i64 %"$consume_67", i64* @_gasrem
  store [6 x i8] c"\00\11\223DU", [6 x i8]* %y
  %"$gasrem_68" = load i64, i64* @_gasrem
  %"$gascmp_69" = icmp ugt i64 1, %"$gasrem_68"
  br i1 %"$gascmp_69", label %"$out_of_gas_70", label %"$have_gas_71"

"$out_of_gas_70":                                 ; preds = %"$have_gas_66"
  call void @_out_of_gas()
  br label %"$have_gas_71"

"$have_gas_71":                                   ; preds = %"$out_of_gas_70", %"$have_gas_66"
  %"$consume_72" = sub i64 %"$gasrem_68", 1
  store i64 %"$consume_72", i64* @_gasrem
  %ybs = alloca %Bystr
  %"$execptr_load_73" = load i8*, i8** @_execptr
  %"$to_bystr_y_74" = alloca [6 x i8]
  %"$y_75" = load [6 x i8], [6 x i8]* %y
  store [6 x i8] %"$y_75", [6 x i8]* %"$to_bystr_y_74"
  %"$$to_bystr_y_74_76" = bitcast [6 x i8]* %"$to_bystr_y_74" to i8*
  %"$to_bystr_call_77" = call %Bystr @_to_bystr(i8* %"$execptr_load_73", i32 6, i8* %"$$to_bystr_y_74_76")
  store %Bystr %"$to_bystr_call_77", %Bystr* %ybs
  %"$gasrem_78" = load i64, i64* @_gasrem
  %"$gascmp_79" = icmp ugt i64 1, %"$gasrem_78"
  br i1 %"$gascmp_79", label %"$out_of_gas_80", label %"$have_gas_81"

"$out_of_gas_80":                                 ; preds = %"$have_gas_71"
  call void @_out_of_gas()
  br label %"$have_gas_81"

"$have_gas_81":                                   ; preds = %"$out_of_gas_80", %"$have_gas_71"
  %"$consume_82" = sub i64 %"$gasrem_78", 1
  store i64 %"$consume_82", i64* @_gasrem
  %pos = alloca %Uint32
  %"$gasrem_83" = load i64, i64* @_gasrem
  %"$gascmp_84" = icmp ugt i64 1, %"$gasrem_83"
  br i1 %"$gascmp_84", label %"$out_of_gas_85", label %"$have_gas_86"

"$out_of_gas_85":                                 ; preds = %"$have_gas_81"
  call void @_out_of_gas()
  br label %"$have_gas_86"

"$have_gas_86":                                   ; preds = %"$out_of_gas_85", %"$have_gas_81"
  %"$consume_87" = sub i64 %"$gasrem_83", 1
  store i64 %"$consume_87", i64* @_gasrem
  store %Uint32 zeroinitializer, %Uint32* %pos
  %"$gasrem_88" = load i64, i64* @_gasrem
  %"$gascmp_89" = icmp ugt i64 1, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %"$have_gas_86"
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %"$have_gas_86"
  %"$consume_92" = sub i64 %"$gasrem_88", 1
  store i64 %"$consume_92", i64* @_gasrem
  %len = alloca %Uint32
  %"$gasrem_93" = load i64, i64* @_gasrem
  %"$gascmp_94" = icmp ugt i64 1, %"$gasrem_93"
  br i1 %"$gascmp_94", label %"$out_of_gas_95", label %"$have_gas_96"

"$out_of_gas_95":                                 ; preds = %"$have_gas_91"
  call void @_out_of_gas()
  br label %"$have_gas_96"

"$have_gas_96":                                   ; preds = %"$out_of_gas_95", %"$have_gas_91"
  %"$consume_97" = sub i64 %"$gasrem_93", 1
  store i64 %"$consume_97", i64* @_gasrem
  store %Uint32 { i32 5 }, %Uint32* %len
  %"$gasrem_98" = load i64, i64* @_gasrem
  %"$gascmp_99" = icmp ugt i64 1, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %"$have_gas_96"
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %"$have_gas_96"
  %"$consume_102" = sub i64 %"$gasrem_98", 1
  store i64 %"$consume_102", i64* @_gasrem
  %x_sub = alloca %String
  %"$execptr_load_103" = load i8*, i8** @_execptr
  %"$x_104" = load %String, %String* %x
  %"$pos_105" = load %Uint32, %Uint32* %pos
  %"$len_106" = load %Uint32, %Uint32* %len
  %"$substr_call_107" = call %String @_substr_String(i8* %"$execptr_load_103", %String %"$x_104", %Uint32 %"$pos_105", %Uint32 %"$len_106")
  store %String %"$substr_call_107", %String* %x_sub
  %"$gasrem_108" = load i64, i64* @_gasrem
  %"$gascmp_109" = icmp ugt i64 1, %"$gasrem_108"
  br i1 %"$gascmp_109", label %"$out_of_gas_110", label %"$have_gas_111"

"$out_of_gas_110":                                ; preds = %"$have_gas_101"
  call void @_out_of_gas()
  br label %"$have_gas_111"

"$have_gas_111":                                  ; preds = %"$out_of_gas_110", %"$have_gas_101"
  %"$consume_112" = sub i64 %"$gasrem_108", 1
  store i64 %"$consume_112", i64* @_gasrem
  %ybs_sub = alloca %Bystr
  %"$execptr_load_113" = load i8*, i8** @_execptr
  %"$ybs_114" = load %Bystr, %Bystr* %ybs
  %"$pos_115" = load %Uint32, %Uint32* %pos
  %"$len_116" = load %Uint32, %Uint32* %len
  %"$substr_call_117" = call %Bystr @_substr_ByStr(i8* %"$execptr_load_113", %Bystr %"$ybs_114", %Uint32 %"$pos_115", %Uint32 %"$len_116")
  store %Bystr %"$substr_call_117", %Bystr* %ybs_sub
  %"$gasrem_118" = load i64, i64* @_gasrem
  %"$gascmp_119" = icmp ugt i64 1, %"$gasrem_118"
  br i1 %"$gascmp_119", label %"$out_of_gas_120", label %"$have_gas_121"

"$out_of_gas_120":                                ; preds = %"$have_gas_111"
  call void @_out_of_gas()
  br label %"$have_gas_121"

"$have_gas_121":                                  ; preds = %"$out_of_gas_120", %"$have_gas_111"
  %"$consume_122" = sub i64 %"$gasrem_118", 1
  store i64 %"$consume_122", i64* @_gasrem
  %"$x_sub_123" = load %String, %String* %x_sub
  %"$ybs_sub_124" = load %Bystr, %Bystr* %ybs_sub
  %"$adtval_125_load" = load i8*, i8** @_execptr
  %"$adtval_125_salloc" = call i8* @_salloc(i8* %"$adtval_125_load", i64 33)
  %"$adtval_125" = bitcast i8* %"$adtval_125_salloc" to %CName_Pair_String_ByStr*
  %"$adtgep_126" = getelementptr inbounds %CName_Pair_String_ByStr, %CName_Pair_String_ByStr* %"$adtval_125", i32 0, i32 0
  store i8 0, i8* %"$adtgep_126"
  %"$adtgep_127" = getelementptr inbounds %CName_Pair_String_ByStr, %CName_Pair_String_ByStr* %"$adtval_125", i32 0, i32 1
  store %String %"$x_sub_123", %String* %"$adtgep_127"
  %"$adtgep_128" = getelementptr inbounds %CName_Pair_String_ByStr, %CName_Pair_String_ByStr* %"$adtval_125", i32 0, i32 2
  store %Bystr %"$ybs_sub_124", %Bystr* %"$adtgep_128"
  %"$adtptr_129" = bitcast %CName_Pair_String_ByStr* %"$adtval_125" to %TName_Pair_String_ByStr*
  store %TName_Pair_String_ByStr* %"$adtptr_129", %TName_Pair_String_ByStr** %"$expr_0"
  %"$$expr_0_130" = load %TName_Pair_String_ByStr*, %TName_Pair_String_ByStr** %"$expr_0"
  ret %TName_Pair_String_ByStr* %"$$expr_0_130"
}

declare void @_out_of_gas()

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare %String @_substr_String(i8*, %String, %Uint32, %Uint32)

declare %Bystr @_substr_ByStr(i8*, %Bystr, %Uint32, %Uint32)

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_131" = call %TName_Pair_String_ByStr* @"$scilla_expr_46"(i8* null)
  %"$memvoidcast_132" = bitcast %TName_Pair_String_ByStr* %"$exprval_131" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr_35", i8* %"$memvoidcast_132")
  ret void
}
