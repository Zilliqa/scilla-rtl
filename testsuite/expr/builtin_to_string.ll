; let uint32_val = Uint32 2011 in
; let uint64_val = Uint32 2012 in
; let uint128_val = Uint32 6018 in
; let uint256_val = Uint32 551 in
; 
; let int32_val = Int32 -2011 in
; let int64_val = Int32 2012 in
; let int128_val = Int32 -6018 in
; let int256_val = Int32 -551 in
; 
; let bystrx_val = 0xff00cc11 in
; let bystr_val = builtin to_bystr bystrx_val in
; 
; let uint32_str = builtin to_string uint32_val in
; let uint64_str = builtin to_string uint64_val in
; let uint128_str = builtin to_string uint128_val in
; let uint256_str = builtin to_string uint256_val in
; 
; let int32_str = builtin to_string int32_val in
; let int64_str = builtin to_string int64_val in
; let int128_str = builtin to_string int128_val in
; let int256_str = builtin to_string int256_val in
; 
; let bystrx_str = builtin to_string bystrx_val in
; let bystr_str = builtin to_string bystr_val in
; 
; let s_acc = builtin concat uint32_str uint64_str in
; let s_acc = builtin concat s_acc uint128_str in
; let s_acc = builtin concat s_acc uint256_str in
; let s_acc = builtin concat s_acc int32_str in
; let s_acc = builtin concat s_acc int64_str in
; let s_acc = builtin concat s_acc int128_str in
; let s_acc = builtin concat s_acc int256_str in
; let s_acc = builtin concat s_acc bystrx_str in
; let s_acc = builtin concat s_acc bystr_str in
; s_acc
; ModuleID = 'scilla_expr'
source_filename = "scilla_expr"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_9" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%String = type { i8*, i32 }
%Uint32 = type { i32 }
%Int32 = type { i32 }
%Bystr = type { i8*, i32 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_10" = global %"$TyDescrTy_PrimTyp_9" zeroinitializer
@"$TyDescr_Int32_11" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Int32_Prim_10" to i8*) }
@"$TyDescr_Uint32_Prim_12" = global %"$TyDescrTy_PrimTyp_9" { i32 1, i32 0 }
@"$TyDescr_Uint32_13" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Uint32_Prim_12" to i8*) }
@"$TyDescr_Int64_Prim_14" = global %"$TyDescrTy_PrimTyp_9" { i32 0, i32 1 }
@"$TyDescr_Int64_15" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Int64_Prim_14" to i8*) }
@"$TyDescr_Uint64_Prim_16" = global %"$TyDescrTy_PrimTyp_9" { i32 1, i32 1 }
@"$TyDescr_Uint64_17" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Uint64_Prim_16" to i8*) }
@"$TyDescr_Int128_Prim_18" = global %"$TyDescrTy_PrimTyp_9" { i32 0, i32 2 }
@"$TyDescr_Int128_19" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Int128_Prim_18" to i8*) }
@"$TyDescr_Uint128_Prim_20" = global %"$TyDescrTy_PrimTyp_9" { i32 1, i32 2 }
@"$TyDescr_Uint128_21" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Uint128_Prim_20" to i8*) }
@"$TyDescr_Int256_Prim_22" = global %"$TyDescrTy_PrimTyp_9" { i32 0, i32 3 }
@"$TyDescr_Int256_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Int256_Prim_22" to i8*) }
@"$TyDescr_Uint256_Prim_24" = global %"$TyDescrTy_PrimTyp_9" { i32 1, i32 3 }
@"$TyDescr_Uint256_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Uint256_Prim_24" to i8*) }
@"$TyDescr_String_Prim_26" = global %"$TyDescrTy_PrimTyp_9" { i32 2, i32 0 }
@"$TyDescr_String_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_String_Prim_26" to i8*) }
@"$TyDescr_Bnum_Prim_28" = global %"$TyDescrTy_PrimTyp_9" { i32 3, i32 0 }
@"$TyDescr_Bnum_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Bnum_Prim_28" to i8*) }
@"$TyDescr_Message_Prim_30" = global %"$TyDescrTy_PrimTyp_9" { i32 4, i32 0 }
@"$TyDescr_Message_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Message_Prim_30" to i8*) }
@"$TyDescr_Event_Prim_32" = global %"$TyDescrTy_PrimTyp_9" { i32 5, i32 0 }
@"$TyDescr_Event_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Event_Prim_32" to i8*) }
@"$TyDescr_Exception_Prim_34" = global %"$TyDescrTy_PrimTyp_9" { i32 6, i32 0 }
@"$TyDescr_Exception_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Exception_Prim_34" to i8*) }
@"$TyDescr_Bystr_Prim_36" = global %"$TyDescrTy_PrimTyp_9" { i32 7, i32 0 }
@"$TyDescr_Bystr_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Bystr_Prim_36" to i8*) }
@"$TyDescr_Bystr4_Prim_38" = global %"$TyDescrTy_PrimTyp_9" { i32 8, i32 4 }
@"$TyDescr_Bystr4_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_9"* @"$TyDescr_Bystr4_Prim_38" to i8*) }

define void @_init_libs() {
entry:
  ret void
}

define internal %String @"$scilla_expr_44"(i8* %0) {
entry:
  %"$expr_8" = alloca %String
  %"$gasrem_45" = load i64, i64* @_gasrem
  %"$gascmp_46" = icmp ugt i64 1, %"$gasrem_45"
  br i1 %"$gascmp_46", label %"$out_of_gas_47", label %"$have_gas_48"

"$out_of_gas_47":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_48"

"$have_gas_48":                                   ; preds = %"$out_of_gas_47", %entry
  %"$consume_49" = sub i64 %"$gasrem_45", 1
  store i64 %"$consume_49", i64* @_gasrem
  %uint32_val = alloca %Uint32
  %"$gasrem_50" = load i64, i64* @_gasrem
  %"$gascmp_51" = icmp ugt i64 1, %"$gasrem_50"
  br i1 %"$gascmp_51", label %"$out_of_gas_52", label %"$have_gas_53"

"$out_of_gas_52":                                 ; preds = %"$have_gas_48"
  call void @_out_of_gas()
  br label %"$have_gas_53"

"$have_gas_53":                                   ; preds = %"$out_of_gas_52", %"$have_gas_48"
  %"$consume_54" = sub i64 %"$gasrem_50", 1
  store i64 %"$consume_54", i64* @_gasrem
  store %Uint32 { i32 2011 }, %Uint32* %uint32_val
  %"$gasrem_55" = load i64, i64* @_gasrem
  %"$gascmp_56" = icmp ugt i64 1, %"$gasrem_55"
  br i1 %"$gascmp_56", label %"$out_of_gas_57", label %"$have_gas_58"

"$out_of_gas_57":                                 ; preds = %"$have_gas_53"
  call void @_out_of_gas()
  br label %"$have_gas_58"

"$have_gas_58":                                   ; preds = %"$out_of_gas_57", %"$have_gas_53"
  %"$consume_59" = sub i64 %"$gasrem_55", 1
  store i64 %"$consume_59", i64* @_gasrem
  %uint64_val = alloca %Uint32
  %"$gasrem_60" = load i64, i64* @_gasrem
  %"$gascmp_61" = icmp ugt i64 1, %"$gasrem_60"
  br i1 %"$gascmp_61", label %"$out_of_gas_62", label %"$have_gas_63"

"$out_of_gas_62":                                 ; preds = %"$have_gas_58"
  call void @_out_of_gas()
  br label %"$have_gas_63"

"$have_gas_63":                                   ; preds = %"$out_of_gas_62", %"$have_gas_58"
  %"$consume_64" = sub i64 %"$gasrem_60", 1
  store i64 %"$consume_64", i64* @_gasrem
  store %Uint32 { i32 2012 }, %Uint32* %uint64_val
  %"$gasrem_65" = load i64, i64* @_gasrem
  %"$gascmp_66" = icmp ugt i64 1, %"$gasrem_65"
  br i1 %"$gascmp_66", label %"$out_of_gas_67", label %"$have_gas_68"

"$out_of_gas_67":                                 ; preds = %"$have_gas_63"
  call void @_out_of_gas()
  br label %"$have_gas_68"

"$have_gas_68":                                   ; preds = %"$out_of_gas_67", %"$have_gas_63"
  %"$consume_69" = sub i64 %"$gasrem_65", 1
  store i64 %"$consume_69", i64* @_gasrem
  %uint128_val = alloca %Uint32
  %"$gasrem_70" = load i64, i64* @_gasrem
  %"$gascmp_71" = icmp ugt i64 1, %"$gasrem_70"
  br i1 %"$gascmp_71", label %"$out_of_gas_72", label %"$have_gas_73"

"$out_of_gas_72":                                 ; preds = %"$have_gas_68"
  call void @_out_of_gas()
  br label %"$have_gas_73"

"$have_gas_73":                                   ; preds = %"$out_of_gas_72", %"$have_gas_68"
  %"$consume_74" = sub i64 %"$gasrem_70", 1
  store i64 %"$consume_74", i64* @_gasrem
  store %Uint32 { i32 6018 }, %Uint32* %uint128_val
  %"$gasrem_75" = load i64, i64* @_gasrem
  %"$gascmp_76" = icmp ugt i64 1, %"$gasrem_75"
  br i1 %"$gascmp_76", label %"$out_of_gas_77", label %"$have_gas_78"

"$out_of_gas_77":                                 ; preds = %"$have_gas_73"
  call void @_out_of_gas()
  br label %"$have_gas_78"

"$have_gas_78":                                   ; preds = %"$out_of_gas_77", %"$have_gas_73"
  %"$consume_79" = sub i64 %"$gasrem_75", 1
  store i64 %"$consume_79", i64* @_gasrem
  %uint256_val = alloca %Uint32
  %"$gasrem_80" = load i64, i64* @_gasrem
  %"$gascmp_81" = icmp ugt i64 1, %"$gasrem_80"
  br i1 %"$gascmp_81", label %"$out_of_gas_82", label %"$have_gas_83"

"$out_of_gas_82":                                 ; preds = %"$have_gas_78"
  call void @_out_of_gas()
  br label %"$have_gas_83"

"$have_gas_83":                                   ; preds = %"$out_of_gas_82", %"$have_gas_78"
  %"$consume_84" = sub i64 %"$gasrem_80", 1
  store i64 %"$consume_84", i64* @_gasrem
  store %Uint32 { i32 551 }, %Uint32* %uint256_val
  %"$gasrem_85" = load i64, i64* @_gasrem
  %"$gascmp_86" = icmp ugt i64 1, %"$gasrem_85"
  br i1 %"$gascmp_86", label %"$out_of_gas_87", label %"$have_gas_88"

"$out_of_gas_87":                                 ; preds = %"$have_gas_83"
  call void @_out_of_gas()
  br label %"$have_gas_88"

"$have_gas_88":                                   ; preds = %"$out_of_gas_87", %"$have_gas_83"
  %"$consume_89" = sub i64 %"$gasrem_85", 1
  store i64 %"$consume_89", i64* @_gasrem
  %int32_val = alloca %Int32
  %"$gasrem_90" = load i64, i64* @_gasrem
  %"$gascmp_91" = icmp ugt i64 1, %"$gasrem_90"
  br i1 %"$gascmp_91", label %"$out_of_gas_92", label %"$have_gas_93"

"$out_of_gas_92":                                 ; preds = %"$have_gas_88"
  call void @_out_of_gas()
  br label %"$have_gas_93"

"$have_gas_93":                                   ; preds = %"$out_of_gas_92", %"$have_gas_88"
  %"$consume_94" = sub i64 %"$gasrem_90", 1
  store i64 %"$consume_94", i64* @_gasrem
  store %Int32 { i32 -2011 }, %Int32* %int32_val
  %"$gasrem_95" = load i64, i64* @_gasrem
  %"$gascmp_96" = icmp ugt i64 1, %"$gasrem_95"
  br i1 %"$gascmp_96", label %"$out_of_gas_97", label %"$have_gas_98"

"$out_of_gas_97":                                 ; preds = %"$have_gas_93"
  call void @_out_of_gas()
  br label %"$have_gas_98"

"$have_gas_98":                                   ; preds = %"$out_of_gas_97", %"$have_gas_93"
  %"$consume_99" = sub i64 %"$gasrem_95", 1
  store i64 %"$consume_99", i64* @_gasrem
  %int64_val = alloca %Int32
  %"$gasrem_100" = load i64, i64* @_gasrem
  %"$gascmp_101" = icmp ugt i64 1, %"$gasrem_100"
  br i1 %"$gascmp_101", label %"$out_of_gas_102", label %"$have_gas_103"

"$out_of_gas_102":                                ; preds = %"$have_gas_98"
  call void @_out_of_gas()
  br label %"$have_gas_103"

"$have_gas_103":                                  ; preds = %"$out_of_gas_102", %"$have_gas_98"
  %"$consume_104" = sub i64 %"$gasrem_100", 1
  store i64 %"$consume_104", i64* @_gasrem
  store %Int32 { i32 2012 }, %Int32* %int64_val
  %"$gasrem_105" = load i64, i64* @_gasrem
  %"$gascmp_106" = icmp ugt i64 1, %"$gasrem_105"
  br i1 %"$gascmp_106", label %"$out_of_gas_107", label %"$have_gas_108"

"$out_of_gas_107":                                ; preds = %"$have_gas_103"
  call void @_out_of_gas()
  br label %"$have_gas_108"

"$have_gas_108":                                  ; preds = %"$out_of_gas_107", %"$have_gas_103"
  %"$consume_109" = sub i64 %"$gasrem_105", 1
  store i64 %"$consume_109", i64* @_gasrem
  %int128_val = alloca %Int32
  %"$gasrem_110" = load i64, i64* @_gasrem
  %"$gascmp_111" = icmp ugt i64 1, %"$gasrem_110"
  br i1 %"$gascmp_111", label %"$out_of_gas_112", label %"$have_gas_113"

"$out_of_gas_112":                                ; preds = %"$have_gas_108"
  call void @_out_of_gas()
  br label %"$have_gas_113"

"$have_gas_113":                                  ; preds = %"$out_of_gas_112", %"$have_gas_108"
  %"$consume_114" = sub i64 %"$gasrem_110", 1
  store i64 %"$consume_114", i64* @_gasrem
  store %Int32 { i32 -6018 }, %Int32* %int128_val
  %"$gasrem_115" = load i64, i64* @_gasrem
  %"$gascmp_116" = icmp ugt i64 1, %"$gasrem_115"
  br i1 %"$gascmp_116", label %"$out_of_gas_117", label %"$have_gas_118"

"$out_of_gas_117":                                ; preds = %"$have_gas_113"
  call void @_out_of_gas()
  br label %"$have_gas_118"

"$have_gas_118":                                  ; preds = %"$out_of_gas_117", %"$have_gas_113"
  %"$consume_119" = sub i64 %"$gasrem_115", 1
  store i64 %"$consume_119", i64* @_gasrem
  %int256_val = alloca %Int32
  %"$gasrem_120" = load i64, i64* @_gasrem
  %"$gascmp_121" = icmp ugt i64 1, %"$gasrem_120"
  br i1 %"$gascmp_121", label %"$out_of_gas_122", label %"$have_gas_123"

"$out_of_gas_122":                                ; preds = %"$have_gas_118"
  call void @_out_of_gas()
  br label %"$have_gas_123"

"$have_gas_123":                                  ; preds = %"$out_of_gas_122", %"$have_gas_118"
  %"$consume_124" = sub i64 %"$gasrem_120", 1
  store i64 %"$consume_124", i64* @_gasrem
  store %Int32 { i32 -551 }, %Int32* %int256_val
  %"$gasrem_125" = load i64, i64* @_gasrem
  %"$gascmp_126" = icmp ugt i64 1, %"$gasrem_125"
  br i1 %"$gascmp_126", label %"$out_of_gas_127", label %"$have_gas_128"

"$out_of_gas_127":                                ; preds = %"$have_gas_123"
  call void @_out_of_gas()
  br label %"$have_gas_128"

"$have_gas_128":                                  ; preds = %"$out_of_gas_127", %"$have_gas_123"
  %"$consume_129" = sub i64 %"$gasrem_125", 1
  store i64 %"$consume_129", i64* @_gasrem
  %bystrx_val = alloca [4 x i8]
  %"$gasrem_130" = load i64, i64* @_gasrem
  %"$gascmp_131" = icmp ugt i64 1, %"$gasrem_130"
  br i1 %"$gascmp_131", label %"$out_of_gas_132", label %"$have_gas_133"

"$out_of_gas_132":                                ; preds = %"$have_gas_128"
  call void @_out_of_gas()
  br label %"$have_gas_133"

"$have_gas_133":                                  ; preds = %"$out_of_gas_132", %"$have_gas_128"
  %"$consume_134" = sub i64 %"$gasrem_130", 1
  store i64 %"$consume_134", i64* @_gasrem
  store [4 x i8] c"\FF\00\CC\11", [4 x i8]* %bystrx_val
  %"$gasrem_135" = load i64, i64* @_gasrem
  %"$gascmp_136" = icmp ugt i64 1, %"$gasrem_135"
  br i1 %"$gascmp_136", label %"$out_of_gas_137", label %"$have_gas_138"

"$out_of_gas_137":                                ; preds = %"$have_gas_133"
  call void @_out_of_gas()
  br label %"$have_gas_138"

"$have_gas_138":                                  ; preds = %"$out_of_gas_137", %"$have_gas_133"
  %"$consume_139" = sub i64 %"$gasrem_135", 1
  store i64 %"$consume_139", i64* @_gasrem
  %bystr_val = alloca %Bystr
  %"$execptr_load_140" = load i8*, i8** @_execptr
  %"$to_bystr_bystrx_val_141" = alloca [4 x i8]
  %"$bystrx_val_142" = load [4 x i8], [4 x i8]* %bystrx_val
  store [4 x i8] %"$bystrx_val_142", [4 x i8]* %"$to_bystr_bystrx_val_141"
  %"$$to_bystr_bystrx_val_141_143" = bitcast [4 x i8]* %"$to_bystr_bystrx_val_141" to i8*
  %"$to_bystr_call_144" = call %Bystr @_to_bystr(i8* %"$execptr_load_140", i32 4, i8* %"$$to_bystr_bystrx_val_141_143")
  store %Bystr %"$to_bystr_call_144", %Bystr* %bystr_val
  %"$gasrem_145" = load i64, i64* @_gasrem
  %"$gascmp_146" = icmp ugt i64 1, %"$gasrem_145"
  br i1 %"$gascmp_146", label %"$out_of_gas_147", label %"$have_gas_148"

"$out_of_gas_147":                                ; preds = %"$have_gas_138"
  call void @_out_of_gas()
  br label %"$have_gas_148"

"$have_gas_148":                                  ; preds = %"$out_of_gas_147", %"$have_gas_138"
  %"$consume_149" = sub i64 %"$gasrem_145", 1
  store i64 %"$consume_149", i64* @_gasrem
  %uint32_str = alloca %String
  %"$execptr_load_150" = load i8*, i8** @_execptr
  %"$to_string_uint32_val_151" = alloca %Uint32
  %"$uint32_val_152" = load %Uint32, %Uint32* %uint32_val
  store %Uint32 %"$uint32_val_152", %Uint32* %"$to_string_uint32_val_151"
  %"$$to_string_uint32_val_151_153" = bitcast %Uint32* %"$to_string_uint32_val_151" to i8*
  %"$to_string_call_154" = call %String @_to_string(i8* %"$execptr_load_150", %_TyDescrTy_Typ* @"$TyDescr_Uint32_13", i8* %"$$to_string_uint32_val_151_153")
  store %String %"$to_string_call_154", %String* %uint32_str
  %"$gasrem_155" = load i64, i64* @_gasrem
  %"$gascmp_156" = icmp ugt i64 1, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$have_gas_148"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$have_gas_148"
  %"$consume_159" = sub i64 %"$gasrem_155", 1
  store i64 %"$consume_159", i64* @_gasrem
  %uint64_str = alloca %String
  %"$execptr_load_160" = load i8*, i8** @_execptr
  %"$to_string_uint64_val_161" = alloca %Uint32
  %"$uint64_val_162" = load %Uint32, %Uint32* %uint64_val
  store %Uint32 %"$uint64_val_162", %Uint32* %"$to_string_uint64_val_161"
  %"$$to_string_uint64_val_161_163" = bitcast %Uint32* %"$to_string_uint64_val_161" to i8*
  %"$to_string_call_164" = call %String @_to_string(i8* %"$execptr_load_160", %_TyDescrTy_Typ* @"$TyDescr_Uint32_13", i8* %"$$to_string_uint64_val_161_163")
  store %String %"$to_string_call_164", %String* %uint64_str
  %"$gasrem_165" = load i64, i64* @_gasrem
  %"$gascmp_166" = icmp ugt i64 1, %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %"$have_gas_158"
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %"$have_gas_158"
  %"$consume_169" = sub i64 %"$gasrem_165", 1
  store i64 %"$consume_169", i64* @_gasrem
  %uint128_str = alloca %String
  %"$execptr_load_170" = load i8*, i8** @_execptr
  %"$to_string_uint128_val_171" = alloca %Uint32
  %"$uint128_val_172" = load %Uint32, %Uint32* %uint128_val
  store %Uint32 %"$uint128_val_172", %Uint32* %"$to_string_uint128_val_171"
  %"$$to_string_uint128_val_171_173" = bitcast %Uint32* %"$to_string_uint128_val_171" to i8*
  %"$to_string_call_174" = call %String @_to_string(i8* %"$execptr_load_170", %_TyDescrTy_Typ* @"$TyDescr_Uint32_13", i8* %"$$to_string_uint128_val_171_173")
  store %String %"$to_string_call_174", %String* %uint128_str
  %"$gasrem_175" = load i64, i64* @_gasrem
  %"$gascmp_176" = icmp ugt i64 1, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %"$have_gas_168"
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %"$have_gas_168"
  %"$consume_179" = sub i64 %"$gasrem_175", 1
  store i64 %"$consume_179", i64* @_gasrem
  %uint256_str = alloca %String
  %"$execptr_load_180" = load i8*, i8** @_execptr
  %"$to_string_uint256_val_181" = alloca %Uint32
  %"$uint256_val_182" = load %Uint32, %Uint32* %uint256_val
  store %Uint32 %"$uint256_val_182", %Uint32* %"$to_string_uint256_val_181"
  %"$$to_string_uint256_val_181_183" = bitcast %Uint32* %"$to_string_uint256_val_181" to i8*
  %"$to_string_call_184" = call %String @_to_string(i8* %"$execptr_load_180", %_TyDescrTy_Typ* @"$TyDescr_Uint32_13", i8* %"$$to_string_uint256_val_181_183")
  store %String %"$to_string_call_184", %String* %uint256_str
  %"$gasrem_185" = load i64, i64* @_gasrem
  %"$gascmp_186" = icmp ugt i64 1, %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %"$have_gas_178"
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %"$have_gas_178"
  %"$consume_189" = sub i64 %"$gasrem_185", 1
  store i64 %"$consume_189", i64* @_gasrem
  %int32_str = alloca %String
  %"$execptr_load_190" = load i8*, i8** @_execptr
  %"$to_string_int32_val_191" = alloca %Int32
  %"$int32_val_192" = load %Int32, %Int32* %int32_val
  store %Int32 %"$int32_val_192", %Int32* %"$to_string_int32_val_191"
  %"$$to_string_int32_val_191_193" = bitcast %Int32* %"$to_string_int32_val_191" to i8*
  %"$to_string_call_194" = call %String @_to_string(i8* %"$execptr_load_190", %_TyDescrTy_Typ* @"$TyDescr_Int32_11", i8* %"$$to_string_int32_val_191_193")
  store %String %"$to_string_call_194", %String* %int32_str
  %"$gasrem_195" = load i64, i64* @_gasrem
  %"$gascmp_196" = icmp ugt i64 1, %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %"$have_gas_188"
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %"$have_gas_188"
  %"$consume_199" = sub i64 %"$gasrem_195", 1
  store i64 %"$consume_199", i64* @_gasrem
  %int64_str = alloca %String
  %"$execptr_load_200" = load i8*, i8** @_execptr
  %"$to_string_int64_val_201" = alloca %Int32
  %"$int64_val_202" = load %Int32, %Int32* %int64_val
  store %Int32 %"$int64_val_202", %Int32* %"$to_string_int64_val_201"
  %"$$to_string_int64_val_201_203" = bitcast %Int32* %"$to_string_int64_val_201" to i8*
  %"$to_string_call_204" = call %String @_to_string(i8* %"$execptr_load_200", %_TyDescrTy_Typ* @"$TyDescr_Int32_11", i8* %"$$to_string_int64_val_201_203")
  store %String %"$to_string_call_204", %String* %int64_str
  %"$gasrem_205" = load i64, i64* @_gasrem
  %"$gascmp_206" = icmp ugt i64 1, %"$gasrem_205"
  br i1 %"$gascmp_206", label %"$out_of_gas_207", label %"$have_gas_208"

"$out_of_gas_207":                                ; preds = %"$have_gas_198"
  call void @_out_of_gas()
  br label %"$have_gas_208"

"$have_gas_208":                                  ; preds = %"$out_of_gas_207", %"$have_gas_198"
  %"$consume_209" = sub i64 %"$gasrem_205", 1
  store i64 %"$consume_209", i64* @_gasrem
  %int128_str = alloca %String
  %"$execptr_load_210" = load i8*, i8** @_execptr
  %"$to_string_int128_val_211" = alloca %Int32
  %"$int128_val_212" = load %Int32, %Int32* %int128_val
  store %Int32 %"$int128_val_212", %Int32* %"$to_string_int128_val_211"
  %"$$to_string_int128_val_211_213" = bitcast %Int32* %"$to_string_int128_val_211" to i8*
  %"$to_string_call_214" = call %String @_to_string(i8* %"$execptr_load_210", %_TyDescrTy_Typ* @"$TyDescr_Int32_11", i8* %"$$to_string_int128_val_211_213")
  store %String %"$to_string_call_214", %String* %int128_str
  %"$gasrem_215" = load i64, i64* @_gasrem
  %"$gascmp_216" = icmp ugt i64 1, %"$gasrem_215"
  br i1 %"$gascmp_216", label %"$out_of_gas_217", label %"$have_gas_218"

"$out_of_gas_217":                                ; preds = %"$have_gas_208"
  call void @_out_of_gas()
  br label %"$have_gas_218"

"$have_gas_218":                                  ; preds = %"$out_of_gas_217", %"$have_gas_208"
  %"$consume_219" = sub i64 %"$gasrem_215", 1
  store i64 %"$consume_219", i64* @_gasrem
  %int256_str = alloca %String
  %"$execptr_load_220" = load i8*, i8** @_execptr
  %"$to_string_int256_val_221" = alloca %Int32
  %"$int256_val_222" = load %Int32, %Int32* %int256_val
  store %Int32 %"$int256_val_222", %Int32* %"$to_string_int256_val_221"
  %"$$to_string_int256_val_221_223" = bitcast %Int32* %"$to_string_int256_val_221" to i8*
  %"$to_string_call_224" = call %String @_to_string(i8* %"$execptr_load_220", %_TyDescrTy_Typ* @"$TyDescr_Int32_11", i8* %"$$to_string_int256_val_221_223")
  store %String %"$to_string_call_224", %String* %int256_str
  %"$gasrem_225" = load i64, i64* @_gasrem
  %"$gascmp_226" = icmp ugt i64 1, %"$gasrem_225"
  br i1 %"$gascmp_226", label %"$out_of_gas_227", label %"$have_gas_228"

"$out_of_gas_227":                                ; preds = %"$have_gas_218"
  call void @_out_of_gas()
  br label %"$have_gas_228"

"$have_gas_228":                                  ; preds = %"$out_of_gas_227", %"$have_gas_218"
  %"$consume_229" = sub i64 %"$gasrem_225", 1
  store i64 %"$consume_229", i64* @_gasrem
  %bystrx_str = alloca %String
  %"$execptr_load_230" = load i8*, i8** @_execptr
  %"$to_string_bystrx_val_231" = alloca [4 x i8]
  %"$bystrx_val_232" = load [4 x i8], [4 x i8]* %bystrx_val
  store [4 x i8] %"$bystrx_val_232", [4 x i8]* %"$to_string_bystrx_val_231"
  %"$$to_string_bystrx_val_231_233" = bitcast [4 x i8]* %"$to_string_bystrx_val_231" to i8*
  %"$to_string_call_234" = call %String @_to_string(i8* %"$execptr_load_230", %_TyDescrTy_Typ* @"$TyDescr_Bystr4_39", i8* %"$$to_string_bystrx_val_231_233")
  store %String %"$to_string_call_234", %String* %bystrx_str
  %"$gasrem_235" = load i64, i64* @_gasrem
  %"$gascmp_236" = icmp ugt i64 1, %"$gasrem_235"
  br i1 %"$gascmp_236", label %"$out_of_gas_237", label %"$have_gas_238"

"$out_of_gas_237":                                ; preds = %"$have_gas_228"
  call void @_out_of_gas()
  br label %"$have_gas_238"

"$have_gas_238":                                  ; preds = %"$out_of_gas_237", %"$have_gas_228"
  %"$consume_239" = sub i64 %"$gasrem_235", 1
  store i64 %"$consume_239", i64* @_gasrem
  %bystr_str = alloca %String
  %"$execptr_load_240" = load i8*, i8** @_execptr
  %"$to_string_bystr_val_241" = alloca %Bystr
  %"$bystr_val_242" = load %Bystr, %Bystr* %bystr_val
  store %Bystr %"$bystr_val_242", %Bystr* %"$to_string_bystr_val_241"
  %"$$to_string_bystr_val_241_243" = bitcast %Bystr* %"$to_string_bystr_val_241" to i8*
  %"$to_string_call_244" = call %String @_to_string(i8* %"$execptr_load_240", %_TyDescrTy_Typ* @"$TyDescr_Bystr_37", i8* %"$$to_string_bystr_val_241_243")
  store %String %"$to_string_call_244", %String* %bystr_str
  %"$gasrem_245" = load i64, i64* @_gasrem
  %"$gascmp_246" = icmp ugt i64 1, %"$gasrem_245"
  br i1 %"$gascmp_246", label %"$out_of_gas_247", label %"$have_gas_248"

"$out_of_gas_247":                                ; preds = %"$have_gas_238"
  call void @_out_of_gas()
  br label %"$have_gas_248"

"$have_gas_248":                                  ; preds = %"$out_of_gas_247", %"$have_gas_238"
  %"$consume_249" = sub i64 %"$gasrem_245", 1
  store i64 %"$consume_249", i64* @_gasrem
  %s_acc = alloca %String
  %"$execptr_load_250" = load i8*, i8** @_execptr
  %"$uint32_str_251" = load %String, %String* %uint32_str
  %"$uint64_str_252" = load %String, %String* %uint64_str
  %"$concat_call_253" = call %String @_concat_String(i8* %"$execptr_load_250", %String %"$uint32_str_251", %String %"$uint64_str_252")
  store %String %"$concat_call_253", %String* %s_acc
  %"$gasrem_254" = load i64, i64* @_gasrem
  %"$gascmp_255" = icmp ugt i64 1, %"$gasrem_254"
  br i1 %"$gascmp_255", label %"$out_of_gas_256", label %"$have_gas_257"

"$out_of_gas_256":                                ; preds = %"$have_gas_248"
  call void @_out_of_gas()
  br label %"$have_gas_257"

"$have_gas_257":                                  ; preds = %"$out_of_gas_256", %"$have_gas_248"
  %"$consume_258" = sub i64 %"$gasrem_254", 1
  store i64 %"$consume_258", i64* @_gasrem
  %"$s_acc_0" = alloca %String
  %"$execptr_load_259" = load i8*, i8** @_execptr
  %"$s_acc_260" = load %String, %String* %s_acc
  %"$uint128_str_261" = load %String, %String* %uint128_str
  %"$concat_call_262" = call %String @_concat_String(i8* %"$execptr_load_259", %String %"$s_acc_260", %String %"$uint128_str_261")
  store %String %"$concat_call_262", %String* %"$s_acc_0"
  %"$gasrem_263" = load i64, i64* @_gasrem
  %"$gascmp_264" = icmp ugt i64 1, %"$gasrem_263"
  br i1 %"$gascmp_264", label %"$out_of_gas_265", label %"$have_gas_266"

"$out_of_gas_265":                                ; preds = %"$have_gas_257"
  call void @_out_of_gas()
  br label %"$have_gas_266"

"$have_gas_266":                                  ; preds = %"$out_of_gas_265", %"$have_gas_257"
  %"$consume_267" = sub i64 %"$gasrem_263", 1
  store i64 %"$consume_267", i64* @_gasrem
  %"$s_acc_1" = alloca %String
  %"$execptr_load_268" = load i8*, i8** @_execptr
  %"$$s_acc_0_269" = load %String, %String* %"$s_acc_0"
  %"$uint256_str_270" = load %String, %String* %uint256_str
  %"$concat_call_271" = call %String @_concat_String(i8* %"$execptr_load_268", %String %"$$s_acc_0_269", %String %"$uint256_str_270")
  store %String %"$concat_call_271", %String* %"$s_acc_1"
  %"$gasrem_272" = load i64, i64* @_gasrem
  %"$gascmp_273" = icmp ugt i64 1, %"$gasrem_272"
  br i1 %"$gascmp_273", label %"$out_of_gas_274", label %"$have_gas_275"

"$out_of_gas_274":                                ; preds = %"$have_gas_266"
  call void @_out_of_gas()
  br label %"$have_gas_275"

"$have_gas_275":                                  ; preds = %"$out_of_gas_274", %"$have_gas_266"
  %"$consume_276" = sub i64 %"$gasrem_272", 1
  store i64 %"$consume_276", i64* @_gasrem
  %"$s_acc_2" = alloca %String
  %"$execptr_load_277" = load i8*, i8** @_execptr
  %"$$s_acc_1_278" = load %String, %String* %"$s_acc_1"
  %"$int32_str_279" = load %String, %String* %int32_str
  %"$concat_call_280" = call %String @_concat_String(i8* %"$execptr_load_277", %String %"$$s_acc_1_278", %String %"$int32_str_279")
  store %String %"$concat_call_280", %String* %"$s_acc_2"
  %"$gasrem_281" = load i64, i64* @_gasrem
  %"$gascmp_282" = icmp ugt i64 1, %"$gasrem_281"
  br i1 %"$gascmp_282", label %"$out_of_gas_283", label %"$have_gas_284"

"$out_of_gas_283":                                ; preds = %"$have_gas_275"
  call void @_out_of_gas()
  br label %"$have_gas_284"

"$have_gas_284":                                  ; preds = %"$out_of_gas_283", %"$have_gas_275"
  %"$consume_285" = sub i64 %"$gasrem_281", 1
  store i64 %"$consume_285", i64* @_gasrem
  %"$s_acc_3" = alloca %String
  %"$execptr_load_286" = load i8*, i8** @_execptr
  %"$$s_acc_2_287" = load %String, %String* %"$s_acc_2"
  %"$int64_str_288" = load %String, %String* %int64_str
  %"$concat_call_289" = call %String @_concat_String(i8* %"$execptr_load_286", %String %"$$s_acc_2_287", %String %"$int64_str_288")
  store %String %"$concat_call_289", %String* %"$s_acc_3"
  %"$gasrem_290" = load i64, i64* @_gasrem
  %"$gascmp_291" = icmp ugt i64 1, %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %"$have_gas_284"
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %"$have_gas_284"
  %"$consume_294" = sub i64 %"$gasrem_290", 1
  store i64 %"$consume_294", i64* @_gasrem
  %"$s_acc_4" = alloca %String
  %"$execptr_load_295" = load i8*, i8** @_execptr
  %"$$s_acc_3_296" = load %String, %String* %"$s_acc_3"
  %"$int128_str_297" = load %String, %String* %int128_str
  %"$concat_call_298" = call %String @_concat_String(i8* %"$execptr_load_295", %String %"$$s_acc_3_296", %String %"$int128_str_297")
  store %String %"$concat_call_298", %String* %"$s_acc_4"
  %"$gasrem_299" = load i64, i64* @_gasrem
  %"$gascmp_300" = icmp ugt i64 1, %"$gasrem_299"
  br i1 %"$gascmp_300", label %"$out_of_gas_301", label %"$have_gas_302"

"$out_of_gas_301":                                ; preds = %"$have_gas_293"
  call void @_out_of_gas()
  br label %"$have_gas_302"

"$have_gas_302":                                  ; preds = %"$out_of_gas_301", %"$have_gas_293"
  %"$consume_303" = sub i64 %"$gasrem_299", 1
  store i64 %"$consume_303", i64* @_gasrem
  %"$s_acc_5" = alloca %String
  %"$execptr_load_304" = load i8*, i8** @_execptr
  %"$$s_acc_4_305" = load %String, %String* %"$s_acc_4"
  %"$int256_str_306" = load %String, %String* %int256_str
  %"$concat_call_307" = call %String @_concat_String(i8* %"$execptr_load_304", %String %"$$s_acc_4_305", %String %"$int256_str_306")
  store %String %"$concat_call_307", %String* %"$s_acc_5"
  %"$gasrem_308" = load i64, i64* @_gasrem
  %"$gascmp_309" = icmp ugt i64 1, %"$gasrem_308"
  br i1 %"$gascmp_309", label %"$out_of_gas_310", label %"$have_gas_311"

"$out_of_gas_310":                                ; preds = %"$have_gas_302"
  call void @_out_of_gas()
  br label %"$have_gas_311"

"$have_gas_311":                                  ; preds = %"$out_of_gas_310", %"$have_gas_302"
  %"$consume_312" = sub i64 %"$gasrem_308", 1
  store i64 %"$consume_312", i64* @_gasrem
  %"$s_acc_6" = alloca %String
  %"$execptr_load_313" = load i8*, i8** @_execptr
  %"$$s_acc_5_314" = load %String, %String* %"$s_acc_5"
  %"$bystrx_str_315" = load %String, %String* %bystrx_str
  %"$concat_call_316" = call %String @_concat_String(i8* %"$execptr_load_313", %String %"$$s_acc_5_314", %String %"$bystrx_str_315")
  store %String %"$concat_call_316", %String* %"$s_acc_6"
  %"$gasrem_317" = load i64, i64* @_gasrem
  %"$gascmp_318" = icmp ugt i64 1, %"$gasrem_317"
  br i1 %"$gascmp_318", label %"$out_of_gas_319", label %"$have_gas_320"

"$out_of_gas_319":                                ; preds = %"$have_gas_311"
  call void @_out_of_gas()
  br label %"$have_gas_320"

"$have_gas_320":                                  ; preds = %"$out_of_gas_319", %"$have_gas_311"
  %"$consume_321" = sub i64 %"$gasrem_317", 1
  store i64 %"$consume_321", i64* @_gasrem
  %"$s_acc_7" = alloca %String
  %"$execptr_load_322" = load i8*, i8** @_execptr
  %"$$s_acc_6_323" = load %String, %String* %"$s_acc_6"
  %"$bystr_str_324" = load %String, %String* %bystr_str
  %"$concat_call_325" = call %String @_concat_String(i8* %"$execptr_load_322", %String %"$$s_acc_6_323", %String %"$bystr_str_324")
  store %String %"$concat_call_325", %String* %"$s_acc_7"
  %"$gasrem_326" = load i64, i64* @_gasrem
  %"$gascmp_327" = icmp ugt i64 1, %"$gasrem_326"
  br i1 %"$gascmp_327", label %"$out_of_gas_328", label %"$have_gas_329"

"$out_of_gas_328":                                ; preds = %"$have_gas_320"
  call void @_out_of_gas()
  br label %"$have_gas_329"

"$have_gas_329":                                  ; preds = %"$out_of_gas_328", %"$have_gas_320"
  %"$consume_330" = sub i64 %"$gasrem_326", 1
  store i64 %"$consume_330", i64* @_gasrem
  %"$$s_acc_7_331" = load %String, %String* %"$s_acc_7"
  store %String %"$$s_acc_7_331", %String* %"$expr_8"
  %"$$expr_8_332" = load %String, %String* %"$expr_8"
  ret %String %"$$expr_8_332"
}

declare void @_out_of_gas()

declare %Bystr @_to_bystr(i8*, i32, i8*)

declare %String @_to_string(i8*, %_TyDescrTy_Typ*, i8*)

declare %String @_concat_String(i8*, %String, %String)

declare void @_print_scilla_val(%_TyDescrTy_Typ*, i8*)

define void @scilla_main() {
entry:
  %"$exprval_333" = call %String @"$scilla_expr_44"(i8* null)
  %"$pval_334" = alloca %String
  %"$memvoidcast_335" = bitcast %String* %"$pval_334" to i8*
  store %String %"$exprval_333", %String* %"$pval_334"
  call void @_print_scilla_val(%_TyDescrTy_Typ* @"$TyDescr_String_27", i8* %"$memvoidcast_335")
  ret void
}
