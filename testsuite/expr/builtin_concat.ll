; let a = "hello" in
; let b = "world" in
; let str = builtin concat a b in
; 
; let x = 0x11ff in
; let y = 0xff11 in
; let z = builtin concat x y in
; let w = 0x001100110011001100110011001100110011 in
; let bystrx = builtin concat w z in
; 
; 
; Pair {String ByStr22} str bystrx
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_1" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_39" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_38"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_38" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_40"**, %"$TyDescrTy_ADTTyp_39"* }
%"$TyDescrTy_ADTTyp_Constr_40" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%TName_Pair_String_ByStr22 = type { i8, %CName_Pair_String_ByStr22* }
%CName_Pair_String_ByStr22 = type <{ i8, %String, [22 x i8] }>
%String = type { i8*, i32 }

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
@"$TyDescr_Bystr18_Prim_30" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 18 }
@"$TyDescr_Bystr18_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr18_Prim_30" to i8*) }
@"$TyDescr_Bystr4_Prim_32" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 4 }
@"$TyDescr_Bystr4_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr4_Prim_32" to i8*) }
@"$TyDescr_Bystr2_Prim_34" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 2 }
@"$TyDescr_Bystr2_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr2_Prim_34" to i8*) }
@"$TyDescr_Bystr22_Prim_36" = global %"$TyDescrTy_PrimTyp_1" { i32 8, i32 22 }
@"$TyDescr_Bystr22_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_1"* @"$TyDescr_Bystr22_Prim_36" to i8*) }
@"$TyDescr_ADT_Pair_String_ByStr22_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_49" to i8*) }
@"$TyDescr_Pair_ADTTyp_43" = unnamed_addr constant %"$TyDescrTy_ADTTyp_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_51", i32 0, i32 0), i32 4 }, i32 2, i32 1, i32 1, %"$TyDescrTy_ADTTyp_Specl_38"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_38"*], [1 x %"$TyDescrTy_ADTTyp_Specl_38"*]* @"$TyDescr_Pair_ADTTyp_m_specls_50", i32 0, i32 0) }
@"$TyDescr_Pair_Pair_String_ByStr22_Constr_m_args_44" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr22_37"]
@"$TyDescr_ADT_Pair_45" = unnamed_addr constant [4 x i8] c"Pair"
@"$TyDescr_Pair_Pair_String_ByStr22_ADTTyp_Constr_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_40" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Pair_45", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_Pair_String_ByStr22_Constr_m_args_44", i32 0, i32 0) }
@"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_m_constrs_47" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Constr_40"*] [%"$TyDescrTy_ADTTyp_Constr_40"* @"$TyDescr_Pair_Pair_String_ByStr22_ADTTyp_Constr_46"]
@"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_m_TArgs_48" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_String_19", %_TyDescrTy_Typ* @"$TyDescr_Bystr22_37"]
@"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_38" { %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_m_TArgs_48", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_40"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Constr_40"*], [1 x %"$TyDescrTy_ADTTyp_Constr_40"*]* @"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_m_constrs_47", i32 0, i32 0), %"$TyDescrTy_ADTTyp_39"* @"$TyDescr_Pair_ADTTyp_43" }
@"$TyDescr_Pair_ADTTyp_m_specls_50" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_38"*] [%"$TyDescrTy_ADTTyp_Specl_38"* @"$TyDescr_Pair_String_ByStr22_ADTTyp_Specl_49"]
@"$TyDescr_ADT_Pair_51" = unnamed_addr constant [4 x i8] c"Pair"
@"$stringlit_63" = unnamed_addr constant [5 x i8] c"hello"
@"$stringlit_74" = unnamed_addr constant [5 x i8] c"world"

define void @_init_libs() {
entry:
  ret void
}

define internal %TName_Pair_String_ByStr22* @"$scilla_expr_52"(i8* %0) {
entry:
  %"$expr_0" = alloca %TName_Pair_String_ByStr22*
  %"$gasrem_53" = load i64, i64* @_gasrem
  %"$gascmp_54" = icmp ugt i64 1, %"$gasrem_53"
  br i1 %"$gascmp_54", label %"$out_of_gas_55", label %"$have_gas_56"

"$out_of_gas_55":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_56"

"$have_gas_56":                                   ; preds = %"$out_of_gas_55", %entry
  %"$consume_57" = sub i64 %"$gasrem_53", 1
  store i64 %"$consume_57", i64* @_gasrem
  %a = alloca %String
  %"$gasrem_58" = load i64, i64* @_gasrem
  %"$gascmp_59" = icmp ugt i64 1, %"$gasrem_58"
  br i1 %"$gascmp_59", label %"$out_of_gas_60", label %"$have_gas_61"

"$out_of_gas_60":                                 ; preds = %"$have_gas_56"
  call void @_out_of_gas()
  br label %"$have_gas_61"

"$have_gas_61":                                   ; preds = %"$out_of_gas_60", %"$have_gas_56"
  %"$consume_62" = sub i64 %"$gasrem_58", 1
  store i64 %"$consume_62", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_63", i32 0, i32 0), i32 5 }, %String* %a
  %"$gasrem_64" = load i64, i64* @_gasrem
  %"$gascmp_65" = icmp ugt i64 1, %"$gasrem_64"
  br i1 %"$gascmp_65", label %"$out_of_gas_66", label %"$have_gas_67"

"$out_of_gas_66":                                 ; preds = %"$have_gas_61"
  call void @_out_of_gas()
  br label %"$have_gas_67"

"$have_gas_67":                                   ; preds = %"$out_of_gas_66", %"$have_gas_61"
  %"$consume_68" = sub i64 %"$gasrem_64", 1
  store i64 %"$consume_68", i64* @_gasrem
  %b = alloca %String
  %"$gasrem_69" = load i64, i64* @_gasrem
  %"$gascmp_70" = icmp ugt i64 1, %"$gasrem_69"
  br i1 %"$gascmp_70", label %"$out_of_gas_71", label %"$have_gas_72"

"$out_of_gas_71":                                 ; preds = %"$have_gas_67"
  call void @_out_of_gas()
  br label %"$have_gas_72"

"$have_gas_72":                                   ; preds = %"$out_of_gas_71", %"$have_gas_67"
  %"$consume_73" = sub i64 %"$gasrem_69", 1
  store i64 %"$consume_73", i64* @_gasrem
  store %String { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$stringlit_74", i32 0, i32 0), i32 5 }, %String* %b
  %"$gasrem_75" = load i64, i64* @_gasrem
  %"$gascmp_76" = icmp ugt i64 1, %"$gasrem_75"
  br i1 %"$gascmp_76", label %"$out_of_gas_77", label %"$have_gas_78"

"$out_of_gas_77":                                 ; preds = %"$have_gas_72"
  call void @_out_of_gas()
  br label %"$have_gas_78"

"$have_gas_78":                                   ; preds = %"$out_of_gas_77", %"$have_gas_72"
  %"$consume_79" = sub i64 %"$gasrem_75", 1
  store i64 %"$consume_79", i64* @_gasrem
  %str = alloca %String
  %"$execptr_load_80" = load i8*, i8** @_execptr
  %"$a_81" = load %String, %String* %a
  %"$b_82" = load %String, %String* %b
  %"$concat_call_83" = call %String @_concat_String(i8* %"$execptr_load_80", %String %"$a_81", %String %"$b_82")
  store %String %"$concat_call_83", %String* %str
  %"$gasrem_84" = load i64, i64* @_gasrem
  %"$gascmp_85" = icmp ugt i64 1, %"$gasrem_84"
  br i1 %"$gascmp_85", label %"$out_of_gas_86", label %"$have_gas_87"

"$out_of_gas_86":                                 ; preds = %"$have_gas_78"
  call void @_out_of_gas()
  br label %"$have_gas_87"

"$have_gas_87":                                   ; preds = %"$out_of_gas_86", %"$have_gas_78"
  %"$consume_88" = sub i64 %"$gasrem_84", 1
  store i64 %"$consume_88", i64* @_gasrem
  %x = alloca [2 x i8]
  %"$gasrem_89" = load i64, i64* @_gasrem
  %"$gascmp_90" = icmp ugt i64 1, %"$gasrem_89"
  br i1 %"$gascmp_90", label %"$out_of_gas_91", label %"$have_gas_92"

"$out_of_gas_91":                                 ; preds = %"$have_gas_87"
  call void @_out_of_gas()
  br label %"$have_gas_92"

"$have_gas_92":                                   ; preds = %"$out_of_gas_91", %"$have_gas_87"
  %"$consume_93" = sub i64 %"$gasrem_89", 1
  store i64 %"$consume_93", i64* @_gasrem
  store [2 x i8] c"\11\FF", [2 x i8]* %x
  %"$gasrem_94" = load i64, i64* @_gasrem
  %"$gascmp_95" = icmp ugt i64 1, %"$gasrem_94"
  br i1 %"$gascmp_95", label %"$out_of_gas_96", label %"$have_gas_97"

"$out_of_gas_96":                                 ; preds = %"$have_gas_92"
  call void @_out_of_gas()
  br label %"$have_gas_97"

"$have_gas_97":                                   ; preds = %"$out_of_gas_96", %"$have_gas_92"
  %"$consume_98" = sub i64 %"$gasrem_94", 1
  store i64 %"$consume_98", i64* @_gasrem
  %y = alloca [2 x i8]
  %"$gasrem_99" = load i64, i64* @_gasrem
  %"$gascmp_100" = icmp ugt i64 1, %"$gasrem_99"
  br i1 %"$gascmp_100", label %"$out_of_gas_101", label %"$have_gas_102"

"$out_of_gas_101":                                ; preds = %"$have_gas_97"
  call void @_out_of_gas()
  br label %"$have_gas_102"

"$have_gas_102":                                  ; preds = %"$out_of_gas_101", %"$have_gas_97"
  %"$consume_103" = sub i64 %"$gasrem_99", 1
  store i64 %"$consume_103", i64* @_gasrem
  store [2 x i8] c"\FF\11", [2 x i8]* %y
  %"$gasrem_104" = load i64, i64* @_gasrem
  %"$gascmp_105" = icmp ugt i64 1, %"$gasrem_104"
  br i1 %"$gascmp_105", label %"$out_of_gas_106", label %"$have_gas_107"

"$out_of_gas_106":                                ; preds = %"$have_gas_102"
  call void @_out_of_gas()
  br label %"$have_gas_107"

"$have_gas_107":                                  ; preds = %"$out_of_gas_106", %"$have_gas_102"
  %"$consume_108" = sub i64 %"$gasrem_104", 1
  store i64 %"$consume_108", i64* @_gasrem
  %z = alloca [4 x i8]
  %"$execptr_load_109" = load i8*, i8** @_execptr
  %"$concat_x_110" = alloca [2 x i8]
  %"$x_111" = load [2 x i8], [2 x i8]* %x
  store [2 x i8] %"$x_111", [2 x i8]* %"$concat_x_110"
  %"$$concat_x_110_112" = bitcast [2 x i8]* %"$concat_x_110" to i8*
  %"$concat_y_113" = alloca [2 x i8]
  %"$y_114" = load [2 x i8], [2 x i8]* %y
  store [2 x i8] %"$y_114", [2 x i8]* %"$concat_y_113"
  %"$$concat_y_113_115" = bitcast [2 x i8]* %"$concat_y_113" to i8*
  %"$concat_call_116" = call i8* @_concat_ByStrX(i8* %"$execptr_load_109", i32 2, i8* %"$$concat_x_110_112", i32 2, i8* %"$$concat_y_113_115")
  %"$concat_117" = bitcast i8* %"$concat_call_116" to [4 x i8]*
  %"$concat_118" = load [4 x i8], [4 x i8]* %"$concat_117"
  store [4 x i8] %"$concat_118", [4 x i8]* %z
  %"$gasrem_119" = load i64, i64* @_gasrem
  %"$gascmp_120" = icmp ugt i64 1, %"$gasrem_119"
  br i1 %"$gascmp_120", label %"$out_of_gas_121", label %"$have_gas_122"

"$out_of_gas_121":                                ; preds = %"$have_gas_107"
  call void @_out_of_gas()
  br label %"$have_gas_122"

"$have_gas_122":                                  ; preds = %"$out_of_gas_121", %"$have_gas_107"
  %"$consume_123" = sub i64 %"$gasrem_119", 1
  store i64 %"$consume_123", i64* @_gasrem
  %w = alloca [18 x i8]
  %"$gasrem_124" = load i64, i64* @_gasrem
  %"$gascmp_125" = icmp ugt i64 1, %"$gasrem_124"
  br i1 %"$gascmp_125", label %"$out_of_gas_126", label %"$have_gas_127"

"$out_of_gas_126":                                ; preds = %"$have_gas_122"
  call void @_out_of_gas()
  br label %"$have_gas_127"

"$have_gas_127":                                  ; preds = %"$out_of_gas_126", %"$have_gas_122"
  %"$consume_128" = sub i64 %"$gasrem_124", 1
  store i64 %"$consume_128", i64* @_gasrem
  store [18 x i8] c"\00\11\00\11\00\11\00\11\00\11\00\11\00\11\00\11\00\11", [18 x i8]* %w
  %"$gasrem_129" = load i64, i64* @_gasrem
  %"$gascmp_130" = icmp ugt i64 1, %"$gasrem_129"
  br i1 %"$gascmp_130", label %"$out_of_gas_131", label %"$have_gas_132"

"$out_of_gas_131":                                ; preds = %"$have_gas_127"
  call void @_out_of_gas()
  br label %"$have_gas_132"

"$have_gas_132":                                  ; preds = %"$out_of_gas_131", %"$have_gas_127"
  %"$consume_133" = sub i64 %"$gasrem_129", 1
  store i64 %"$consume_133", i64* @_gasrem
  %bystrx = alloca [22 x i8]
  %"$execptr_load_134" = load i8*, i8** @_execptr
  %"$concat_w_135" = alloca [18 x i8]
  %"$w_136" = load [18 x i8], [18 x i8]* %w
  store [18 x i8] %"$w_136", [18 x i8]* %"$concat_w_135"
  %"$$concat_w_135_137" = bitcast [18 x i8]* %"$concat_w_135" to i8*
  %"$concat_z_138" = alloca [4 x i8]
  %"$z_139" = load [4 x i8], [4 x i8]* %z
  store [4 x i8] %"$z_139", [4 x i8]* %"$concat_z_138"
  %"$$concat_z_138_140" = bitcast [4 x i8]* %"$concat_z_138" to i8*
  %"$concat_call_141" = call i8* @_concat_ByStrX(i8* %"$execptr_load_134", i32 18, i8* %"$$concat_w_135_137", i32 4, i8* %"$$concat_z_138_140")
  %"$concat_142" = bitcast i8* %"$concat_call_141" to [22 x i8]*
  %"$concat_143" = load [22 x i8], [22 x i8]* %"$concat_142"
  store [22 x i8] %"$concat_143", [22 x i8]* %bystrx
  %"$gasrem_144" = load i64, i64* @_gasrem
  %"$gascmp_145" = icmp ugt i64 1, %"$gasrem_144"
  br i1 %"$gascmp_145", label %"$out_of_gas_146", label %"$have_gas_147"

"$out_of_gas_146":                                ; preds = %"$have_gas_132"
  call void @_out_of_gas()
  br label %"$have_gas_147"

"$have_gas_147":                                  ; preds = %"$out_of_gas_146", %"$have_gas_132"
  %"$consume_148" = sub i64 %"$gasrem_144", 1
  store i64 %"$consume_148", i64* @_gasrem
  %"$str_149" = load %String, %String* %str
  %"$bystrx_150" = load [22 x i8], [22 x i8]* %bystrx
  %"$adtval_151_load" = load i8*, i8** @_execptr
  %"$adtval_151_salloc" = call i8* @_salloc(i8* %"$adtval_151_load", i64 39)
  %"$adtval_151" = bitcast i8* %"$adtval_151_salloc" to %CName_Pair_String_ByStr22*
  %"$adtgep_152" = getelementptr inbounds %CName_Pair_String_ByStr22, %CName_Pair_String_ByStr22* %"$adtval_151", i32 0, i32 0
  store i8 0, i8* %"$adtgep_152"
  %"$adtgep_153" = getelementptr inbounds %CName_Pair_String_ByStr22, %CName_Pair_String_ByStr22* %"$adtval_151", i32 0, i32 1
  store %String %"$str_149", %String* %"$adtgep_153"
  %"$adtgep_154" = getelementptr inbounds %CName_Pair_String_ByStr22, %CName_Pair_String_ByStr22* %"$adtval_151", i32 0, i32 2
  store [22 x i8] %"$bystrx_150", [22 x i8]* %"$adtgep_154"
  %"$adtptr_155" = bitcast %CName_Pair_String_ByStr22* %"$adtval_151" to %TName_Pair_String_ByStr22*
  store %TName_Pair_String_ByStr22* %"$adtptr_155", %TName_Pair_String_ByStr22** %"$expr_0"
  %"$$expr_0_156" = load %TName_Pair_String_ByStr22*, %TName_Pair_String_ByStr22** %"$expr_0"
  ret %TName_Pair_String_ByStr22* %"$$expr_0_156"
}

declare void @_out_of_gas()

declare %String @_concat_String(i8*, %String, %String)

declare i8* @_concat_ByStrX(i8*, i32, i8*, i32, i8*)

declare i8* @_salloc(i8*, i64)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_157" = call %TName_Pair_String_ByStr22* @"$scilla_expr_52"(i8* null)
  %"$memvoidcast_158" = bitcast %TName_Pair_String_ByStr22* %"$exprval_157" to i8*
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_ADT_Pair_String_ByStr22_41", i8* %"$memvoidcast_158")
  ret void
}
