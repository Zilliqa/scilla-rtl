

; gas_remaining: 4001999
; ModuleID = 'CastContract'
source_filename = "CastContract"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_22" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_54" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_53"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_53" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_55"**, %"$TyDescrTy_ADTTyp_54"* }
%"$TyDescrTy_ADTTyp_Constr_55" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrFieldTyp_66" = type { %TyDescrString, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_67" = type { i32, %"$TyDescr_AddrFieldTyp_66"* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_1657" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1658" = type { %ParamDescrString, i32, %"$ParamDescr_1657"* }
%TName_Option_ByStr20_with_end = type { i8, %CName_Some_ByStr20_with_end*, %CName_None_ByStr20_with_end* }
%CName_Some_ByStr20_with_end = type <{ i8, [20 x i8] }>
%CName_None_ByStr20_with_end = type <{ i8 }>
%TName_Option_ByStr20_with_contract_end = type { i8, %CName_Some_ByStr20_with_contract_end*, %CName_None_ByStr20_with_contract_end* }
%CName_Some_ByStr20_with_contract_end = type <{ i8, [20 x i8] }>
%CName_None_ByStr20_with_contract_end = type <{ i8 }>
%TName_Option_Uint128 = type { i8, %CName_Some_Uint128*, %CName_None_Uint128* }
%CName_Some_Uint128 = type <{ i8, %Uint128 }>
%Uint128 = type { i128 }
%CName_None_Uint128 = type <{ i8 }>
%TName_Option_Bool = type { i8, %CName_Some_Bool*, %CName_None_Bool* }
%CName_Some_Bool = type <{ i8, %TName_Bool* }>
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%CName_None_Bool = type <{ i8 }>
%TName_Option_Int256 = type { i8, %CName_Some_Int256*, %CName_None_Int256* }
%CName_Some_Int256 = type <{ i8, %Int256 }>
%Int256 = type { i256 }
%CName_None_Int256 = type <{ i8 }>
%"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end" = type { i8, %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, %"CName_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* }
%"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end" = type <{ i8, [20 x i8] }>
%"CName_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end" = type <{ i8 }>
%"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end" = type { i8, %"CName_Some_ByStr20_with_contract_field_f_:_ByStr20_end"*, %"CName_None_ByStr20_with_contract_field_f_:_ByStr20_end"* }
%"CName_Some_ByStr20_with_contract_field_f_:_ByStr20_end" = type <{ i8, [20 x i8] }>
%"CName_None_ByStr20_with_contract_field_f_:_ByStr20_end" = type <{ i8 }>
%"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end" = type { i8, %"CName_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*, %"CName_None_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* }
%"CName_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end" = type <{ i8, [20 x i8] }>
%"CName_None_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end" = type <{ i8 }>

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
@"$TyDescr_Bystr20_Prim_51" = global %"$TyDescrTy_PrimTyp_22" { i32 8, i32 20 }
@"$TyDescr_Bystr20_52" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_22"* @"$TyDescr_Bystr20_Prim_51" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_56" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_53"* @"$TyDescr_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Specl_84" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_with_contract_field_f_:_ByStr20_end_57" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_53"* @"$TyDescr_Option_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Specl_93" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_58" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_53"* @"$TyDescr_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Specl_102" to i8*) }
@"$TyDescr_ADT_Option_Int256_59" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_53"* @"$TyDescr_Option_Int256_ADTTyp_Specl_111" to i8*) }
@"$TyDescr_ADT_Option_Bool_60" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_53"* @"$TyDescr_Option_Bool_ADTTyp_Specl_120" to i8*) }
@"$TyDescr_ADT_Option_Uint128_61" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_53"* @"$TyDescr_Option_Uint128_ADTTyp_Specl_129" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_with_contract_end_62" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_53"* @"$TyDescr_Option_ByStr20_with_contract_end_ADTTyp_Specl_138" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_with_end_63" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_53"* @"$TyDescr_Option_ByStr20_with_end_ADTTyp_Specl_147" to i8*) }
@"$TyDescr_ADT_Bool_64" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_53"* @"$TyDescr_Bool_ADTTyp_Specl_159" to i8*) }
@"$TyDescr_Addr_68" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_67"* @"$TyDescr_AddrFields_165" to i8*) }
@"$TyDescr_Addr_69" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_67"* @"$TyDescr_AddrFields_168" to i8*) }
@"$TyDescr_Addr_70" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_67"* @"$TyDescr_AddrFields_172" to i8*) }
@"$TyDescr_Addr_71" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_67"* @"$TyDescr_AddrFields_175" to i8*) }
@"$TyDescr_Addr_72" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_67"* @"$TyDescr_AddrFields_179" to i8*) }
@"$TyDescr_Addr_73" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_67"* @"$TyDescr_AddrFields_181" to i8*) }
@"$TyDescr_Addr_74" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_67"* @"$TyDescr_AddrFields_182" to i8*) }
@"$TyDescr_Option_ADTTyp_75" = unnamed_addr constant %"$TyDescrTy_ADTTyp_54" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_149", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 8, %"$TyDescrTy_ADTTyp_Specl_53"** getelementptr inbounds ([8 x %"$TyDescrTy_ADTTyp_Specl_53"*], [8 x %"$TyDescrTy_ADTTyp_Specl_53"*]* @"$TyDescr_Option_ADTTyp_m_specls_148", i32 0, i32 0) }
@"$TyDescr_Option_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_Constr_m_args_76" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_68"]
@"$TyDescr_ADT_Some_77" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Constr_78" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_55" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_77", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_Constr_m_args_76", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_Constr_m_args_79" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_80" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Constr_81" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_55" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_80", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_Constr_m_args_79", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Specl_m_constrs_82" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_55"*] [%"$TyDescrTy_ADTTyp_Constr_55"* @"$TyDescr_Option_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Constr_78", %"$TyDescrTy_ADTTyp_Constr_55"* @"$TyDescr_Option_None_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Constr_81"]
@"$TyDescr_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Specl_m_TArgs_83" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_68"]
@"$TyDescr_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Specl_84" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_53" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Specl_m_TArgs_83", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_55"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_55"*], [2 x %"$TyDescrTy_ADTTyp_Constr_55"*]* @"$TyDescr_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Specl_m_constrs_82", i32 0, i32 0), %"$TyDescrTy_ADTTyp_54"* @"$TyDescr_Option_ADTTyp_75" }
@"$TyDescr_Option_Some_ByStr20_with_contract_field_f_:_ByStr20_end_Constr_m_args_85" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_69"]
@"$TyDescr_ADT_Some_86" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Constr_87" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_55" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_86", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_with_contract_field_f_:_ByStr20_end_Constr_m_args_85", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_with_contract_field_f_:_ByStr20_end_Constr_m_args_88" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_89" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Constr_90" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_55" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_89", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_with_contract_field_f_:_ByStr20_end_Constr_m_args_88", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Specl_m_constrs_91" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_55"*] [%"$TyDescrTy_ADTTyp_Constr_55"* @"$TyDescr_Option_Some_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Constr_87", %"$TyDescrTy_ADTTyp_Constr_55"* @"$TyDescr_Option_None_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Constr_90"]
@"$TyDescr_Option_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Specl_m_TArgs_92" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_69"]
@"$TyDescr_Option_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Specl_93" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_53" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Specl_m_TArgs_92", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_55"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_55"*], [2 x %"$TyDescrTy_ADTTyp_Constr_55"*]* @"$TyDescr_Option_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Specl_m_constrs_91", i32 0, i32 0), %"$TyDescrTy_ADTTyp_54"* @"$TyDescr_Option_ADTTyp_75" }
@"$TyDescr_Option_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_Constr_m_args_94" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_72"]
@"$TyDescr_ADT_Some_95" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Constr_96" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_55" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_95", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_Constr_m_args_94", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_Constr_m_args_97" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_98" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Constr_99" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_55" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_98", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_Constr_m_args_97", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Specl_m_constrs_100" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_55"*] [%"$TyDescrTy_ADTTyp_Constr_55"* @"$TyDescr_Option_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Constr_96", %"$TyDescrTy_ADTTyp_Constr_55"* @"$TyDescr_Option_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Constr_99"]
@"$TyDescr_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Specl_m_TArgs_101" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_72"]
@"$TyDescr_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Specl_102" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_53" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Specl_m_TArgs_101", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_55"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_55"*], [2 x %"$TyDescrTy_ADTTyp_Constr_55"*]* @"$TyDescr_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Specl_m_constrs_100", i32 0, i32 0), %"$TyDescrTy_ADTTyp_54"* @"$TyDescr_Option_ADTTyp_75" }
@"$TyDescr_Option_Some_Int256_Constr_m_args_103" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int256_36"]
@"$TyDescr_ADT_Some_104" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Int256_ADTTyp_Constr_105" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_55" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_104", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Int256_Constr_m_args_103", i32 0, i32 0) }
@"$TyDescr_Option_None_Int256_Constr_m_args_106" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_107" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Int256_ADTTyp_Constr_108" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_55" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_107", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Int256_Constr_m_args_106", i32 0, i32 0) }
@"$TyDescr_Option_Int256_ADTTyp_Specl_m_constrs_109" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_55"*] [%"$TyDescrTy_ADTTyp_Constr_55"* @"$TyDescr_Option_Some_Int256_ADTTyp_Constr_105", %"$TyDescrTy_ADTTyp_Constr_55"* @"$TyDescr_Option_None_Int256_ADTTyp_Constr_108"]
@"$TyDescr_Option_Int256_ADTTyp_Specl_m_TArgs_110" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int256_36"]
@"$TyDescr_Option_Int256_ADTTyp_Specl_111" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_53" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Int256_ADTTyp_Specl_m_TArgs_110", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_55"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_55"*], [2 x %"$TyDescrTy_ADTTyp_Constr_55"*]* @"$TyDescr_Option_Int256_ADTTyp_Specl_m_constrs_109", i32 0, i32 0), %"$TyDescrTy_ADTTyp_54"* @"$TyDescr_Option_ADTTyp_75" }
@"$TyDescr_Option_Some_Bool_Constr_m_args_112" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64"]
@"$TyDescr_ADT_Some_113" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Bool_ADTTyp_Constr_114" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_55" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_113", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Bool_Constr_m_args_112", i32 0, i32 0) }
@"$TyDescr_Option_None_Bool_Constr_m_args_115" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_116" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Bool_ADTTyp_Constr_117" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_55" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_116", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Bool_Constr_m_args_115", i32 0, i32 0) }
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_118" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_55"*] [%"$TyDescrTy_ADTTyp_Constr_55"* @"$TyDescr_Option_Some_Bool_ADTTyp_Constr_114", %"$TyDescrTy_ADTTyp_Constr_55"* @"$TyDescr_Option_None_Bool_ADTTyp_Constr_117"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_119" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_120" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_53" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_119", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_55"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_55"*], [2 x %"$TyDescrTy_ADTTyp_Constr_55"*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_118", i32 0, i32 0), %"$TyDescrTy_ADTTyp_54"* @"$TyDescr_Option_ADTTyp_75" }
@"$TyDescr_Option_Some_Uint128_Constr_m_args_121" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_34"]
@"$TyDescr_ADT_Some_122" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Uint128_ADTTyp_Constr_123" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_55" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_122", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Uint128_Constr_m_args_121", i32 0, i32 0) }
@"$TyDescr_Option_None_Uint128_Constr_m_args_124" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_125" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Uint128_ADTTyp_Constr_126" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_55" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_125", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Uint128_Constr_m_args_124", i32 0, i32 0) }
@"$TyDescr_Option_Uint128_ADTTyp_Specl_m_constrs_127" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_55"*] [%"$TyDescrTy_ADTTyp_Constr_55"* @"$TyDescr_Option_Some_Uint128_ADTTyp_Constr_123", %"$TyDescrTy_ADTTyp_Constr_55"* @"$TyDescr_Option_None_Uint128_ADTTyp_Constr_126"]
@"$TyDescr_Option_Uint128_ADTTyp_Specl_m_TArgs_128" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_34"]
@"$TyDescr_Option_Uint128_ADTTyp_Specl_129" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_53" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Uint128_ADTTyp_Specl_m_TArgs_128", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_55"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_55"*], [2 x %"$TyDescrTy_ADTTyp_Constr_55"*]* @"$TyDescr_Option_Uint128_ADTTyp_Specl_m_constrs_127", i32 0, i32 0), %"$TyDescrTy_ADTTyp_54"* @"$TyDescr_Option_ADTTyp_75" }
@"$TyDescr_Option_Some_ByStr20_with_contract_end_Constr_m_args_130" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_73"]
@"$TyDescr_ADT_Some_131" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_with_contract_end_ADTTyp_Constr_132" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_55" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_131", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_with_contract_end_Constr_m_args_130", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_with_contract_end_Constr_m_args_133" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_134" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_with_contract_end_ADTTyp_Constr_135" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_55" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_134", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_with_contract_end_Constr_m_args_133", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_with_contract_end_ADTTyp_Specl_m_constrs_136" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_55"*] [%"$TyDescrTy_ADTTyp_Constr_55"* @"$TyDescr_Option_Some_ByStr20_with_contract_end_ADTTyp_Constr_132", %"$TyDescrTy_ADTTyp_Constr_55"* @"$TyDescr_Option_None_ByStr20_with_contract_end_ADTTyp_Constr_135"]
@"$TyDescr_Option_ByStr20_with_contract_end_ADTTyp_Specl_m_TArgs_137" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_73"]
@"$TyDescr_Option_ByStr20_with_contract_end_ADTTyp_Specl_138" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_53" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_with_contract_end_ADTTyp_Specl_m_TArgs_137", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_55"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_55"*], [2 x %"$TyDescrTy_ADTTyp_Constr_55"*]* @"$TyDescr_Option_ByStr20_with_contract_end_ADTTyp_Specl_m_constrs_136", i32 0, i32 0), %"$TyDescrTy_ADTTyp_54"* @"$TyDescr_Option_ADTTyp_75" }
@"$TyDescr_Option_Some_ByStr20_with_end_Constr_m_args_139" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_74"]
@"$TyDescr_ADT_Some_140" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_with_end_ADTTyp_Constr_141" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_55" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_140", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_with_end_Constr_m_args_139", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_with_end_Constr_m_args_142" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_143" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_with_end_ADTTyp_Constr_144" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_55" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_143", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_with_end_Constr_m_args_142", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_with_end_ADTTyp_Specl_m_constrs_145" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_55"*] [%"$TyDescrTy_ADTTyp_Constr_55"* @"$TyDescr_Option_Some_ByStr20_with_end_ADTTyp_Constr_141", %"$TyDescrTy_ADTTyp_Constr_55"* @"$TyDescr_Option_None_ByStr20_with_end_ADTTyp_Constr_144"]
@"$TyDescr_Option_ByStr20_with_end_ADTTyp_Specl_m_TArgs_146" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_74"]
@"$TyDescr_Option_ByStr20_with_end_ADTTyp_Specl_147" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_53" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_with_end_ADTTyp_Specl_m_TArgs_146", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_55"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_55"*], [2 x %"$TyDescrTy_ADTTyp_Constr_55"*]* @"$TyDescr_Option_ByStr20_with_end_ADTTyp_Specl_m_constrs_145", i32 0, i32 0), %"$TyDescrTy_ADTTyp_54"* @"$TyDescr_Option_ADTTyp_75" }
@"$TyDescr_Option_ADTTyp_m_specls_148" = unnamed_addr constant [8 x %"$TyDescrTy_ADTTyp_Specl_53"*] [%"$TyDescrTy_ADTTyp_Specl_53"* @"$TyDescr_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Specl_84", %"$TyDescrTy_ADTTyp_Specl_53"* @"$TyDescr_Option_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Specl_93", %"$TyDescrTy_ADTTyp_Specl_53"* @"$TyDescr_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Specl_102", %"$TyDescrTy_ADTTyp_Specl_53"* @"$TyDescr_Option_Int256_ADTTyp_Specl_111", %"$TyDescrTy_ADTTyp_Specl_53"* @"$TyDescr_Option_Bool_ADTTyp_Specl_120", %"$TyDescrTy_ADTTyp_Specl_53"* @"$TyDescr_Option_Uint128_ADTTyp_Specl_129", %"$TyDescrTy_ADTTyp_Specl_53"* @"$TyDescr_Option_ByStr20_with_contract_end_ADTTyp_Specl_138", %"$TyDescrTy_ADTTyp_Specl_53"* @"$TyDescr_Option_ByStr20_with_end_ADTTyp_Specl_147"]
@"$TyDescr_ADT_Option_149" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Bool_ADTTyp_150" = unnamed_addr constant %"$TyDescrTy_ADTTyp_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_161", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_53"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_53"*], [1 x %"$TyDescrTy_ADTTyp_Specl_53"*]* @"$TyDescr_Bool_ADTTyp_m_specls_160", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_151" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_152" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_153" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_55" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_152", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_151", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_154" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_155" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_156" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_55" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_155", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_154", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_157" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_55"*] [%"$TyDescrTy_ADTTyp_Constr_55"* @"$TyDescr_Bool_True_ADTTyp_Constr_153", %"$TyDescrTy_ADTTyp_Constr_55"* @"$TyDescr_Bool_False_ADTTyp_Constr_156"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_158" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_159" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_53" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_158", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_55"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_55"*], [2 x %"$TyDescrTy_ADTTyp_Constr_55"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_157", i32 0, i32 0), %"$TyDescrTy_ADTTyp_54"* @"$TyDescr_Bool_ADTTyp_150" }
@"$TyDescr_Bool_ADTTyp_m_specls_160" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_53"*] [%"$TyDescrTy_ADTTyp_Specl_53"* @"$TyDescr_Bool_ADTTyp_Specl_159"]
@"$TyDescr_ADT_Bool_161" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_AddrField_162" = unnamed_addr constant [1 x i8] c"g"
@"$TyDescr_AddrField_163" = unnamed_addr constant [1 x i8] c"h"
@"$TyDescr_AddrFields_164" = unnamed_addr constant [2 x %"$TyDescr_AddrFieldTyp_66"] [%"$TyDescr_AddrFieldTyp_66" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_162", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64" }, %"$TyDescr_AddrFieldTyp_66" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_163", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Int256_36" }]
@"$TyDescr_AddrFields_165" = unnamed_addr constant %"$TyDescr_AddrTyp_67" { i32 2, %"$TyDescr_AddrFieldTyp_66"* getelementptr inbounds ([2 x %"$TyDescr_AddrFieldTyp_66"], [2 x %"$TyDescr_AddrFieldTyp_66"]* @"$TyDescr_AddrFields_164", i32 0, i32 0) }
@"$TyDescr_AddrField_166" = unnamed_addr constant [1 x i8] c"f"
@"$TyDescr_AddrFields_167" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_66"] [%"$TyDescr_AddrFieldTyp_66" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_166", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_52" }]
@"$TyDescr_AddrFields_168" = unnamed_addr constant %"$TyDescr_AddrTyp_67" { i32 1, %"$TyDescr_AddrFieldTyp_66"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_66"], [1 x %"$TyDescr_AddrFieldTyp_66"]* @"$TyDescr_AddrFields_167", i32 0, i32 0) }
@"$TyDescr_AddrField_169" = unnamed_addr constant [1 x i8] c"f"
@"$TyDescr_AddrField_170" = unnamed_addr constant [1 x i8] c"g"
@"$TyDescr_AddrFields_171" = unnamed_addr constant [2 x %"$TyDescr_AddrFieldTyp_66"] [%"$TyDescr_AddrFieldTyp_66" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_169", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Uint256_38" }, %"$TyDescr_AddrFieldTyp_66" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_170", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64" }]
@"$TyDescr_AddrFields_172" = unnamed_addr constant %"$TyDescr_AddrTyp_67" { i32 2, %"$TyDescr_AddrFieldTyp_66"* getelementptr inbounds ([2 x %"$TyDescr_AddrFieldTyp_66"], [2 x %"$TyDescr_AddrFieldTyp_66"]* @"$TyDescr_AddrFields_171", i32 0, i32 0) }
@"$TyDescr_AddrField_173" = unnamed_addr constant [1 x i8] c"g"
@"$TyDescr_AddrFields_174" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_66"] [%"$TyDescr_AddrFieldTyp_66" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_173", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64" }]
@"$TyDescr_AddrFields_175" = unnamed_addr constant %"$TyDescr_AddrTyp_67" { i32 1, %"$TyDescr_AddrFieldTyp_66"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_66"], [1 x %"$TyDescr_AddrFieldTyp_66"]* @"$TyDescr_AddrFields_174", i32 0, i32 0) }
@"$TyDescr_AddrField_176" = unnamed_addr constant [1 x i8] c"f"
@"$TyDescr_AddrField_177" = unnamed_addr constant [1 x i8] c"g"
@"$TyDescr_AddrFields_178" = unnamed_addr constant [2 x %"$TyDescr_AddrFieldTyp_66"] [%"$TyDescr_AddrFieldTyp_66" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_176", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$TyDescr_AddrFieldTyp_66" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_177", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64" }]
@"$TyDescr_AddrFields_179" = unnamed_addr constant %"$TyDescr_AddrTyp_67" { i32 2, %"$TyDescr_AddrFieldTyp_66"* getelementptr inbounds ([2 x %"$TyDescr_AddrFieldTyp_66"], [2 x %"$TyDescr_AddrFieldTyp_66"]* @"$TyDescr_AddrFields_178", i32 0, i32 0) }
@"$TyDescr_AddrFields_180" = unnamed_addr constant [0 x %"$TyDescr_AddrFieldTyp_66"] zeroinitializer
@"$TyDescr_AddrFields_181" = unnamed_addr constant %"$TyDescr_AddrTyp_67" { i32 0, %"$TyDescr_AddrFieldTyp_66"* getelementptr inbounds ([0 x %"$TyDescr_AddrFieldTyp_66"], [0 x %"$TyDescr_AddrFieldTyp_66"]* @"$TyDescr_AddrFields_180", i32 0, i32 0) }
@"$TyDescr_AddrFields_182" = unnamed_addr constant %"$TyDescr_AddrTyp_67" { i32 -3, %"$TyDescr_AddrFieldTyp_66"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$test_1_res_202" = unnamed_addr constant [11 x i8] c"test_1_res\00"
@"$test_2_res_214" = unnamed_addr constant [11 x i8] c"test_2_res\00"
@"$test_3_res_226" = unnamed_addr constant [11 x i8] c"test_3_res\00"
@"$test_4_res_238" = unnamed_addr constant [11 x i8] c"test_4_res\00"
@"$test_5_1_res_250" = unnamed_addr constant [13 x i8] c"test_5_1_res\00"
@"$test_5_2_res_262" = unnamed_addr constant [13 x i8] c"test_5_2_res\00"
@"$test_6_1_bal_res_274" = unnamed_addr constant [17 x i8] c"test_6_1_bal_res\00"
@"$test_6_1_f_res_286" = unnamed_addr constant [15 x i8] c"test_6_1_f_res\00"
@"$test_6_1_g_res_298" = unnamed_addr constant [15 x i8] c"test_6_1_g_res\00"
@"$test_6_2_bal_res_310" = unnamed_addr constant [17 x i8] c"test_6_2_bal_res\00"
@"$test_6_2_f_res_322" = unnamed_addr constant [15 x i8] c"test_6_2_f_res\00"
@"$test_6_2_g_res_334" = unnamed_addr constant [15 x i8] c"test_6_2_g_res\00"
@"$test_6_3_bal_res_346" = unnamed_addr constant [17 x i8] c"test_6_3_bal_res\00"
@"$test_6_3_f_res_358" = unnamed_addr constant [15 x i8] c"test_6_3_f_res\00"
@"$test_6_3_g_res_370" = unnamed_addr constant [15 x i8] c"test_6_3_g_res\00"
@"$test_6_4_bal_res_382" = unnamed_addr constant [17 x i8] c"test_6_4_bal_res\00"
@"$test_6_4_f_res_394" = unnamed_addr constant [15 x i8] c"test_6_4_f_res\00"
@"$test_6_4_g_res_406" = unnamed_addr constant [15 x i8] c"test_6_4_g_res\00"
@"$test_6_4_failed_cast_418" = unnamed_addr constant [21 x i8] c"test_6_4_failed_cast\00"
@"$test_7_g_res_430" = unnamed_addr constant [13 x i8] c"test_7_g_res\00"
@"$test_7_h_res_442" = unnamed_addr constant [13 x i8] c"test_7_h_res\00"
@"$test_1_res_467" = unnamed_addr constant [11 x i8] c"test_1_res\00"
@"$test_2_res_501" = unnamed_addr constant [11 x i8] c"test_2_res\00"
@"$test_3_res_535" = unnamed_addr constant [11 x i8] c"test_3_res\00"
@"$_balance_574" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_4_res_615" = unnamed_addr constant [11 x i8] c"test_4_res\00"
@"$_balance_656" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_5_1_res_697" = unnamed_addr constant [13 x i8] c"test_5_1_res\00"
@"$_balance_738" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_5_2_res_779" = unnamed_addr constant [13 x i8] c"test_5_2_res\00"
@"$_balance_820" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_6_1_bal_res_861" = unnamed_addr constant [17 x i8] c"test_6_1_bal_res\00"
@"$f_864" = unnamed_addr constant [2 x i8] c"f\00"
@"$test_6_1_f_res_905" = unnamed_addr constant [15 x i8] c"test_6_1_f_res\00"
@"$g_908" = unnamed_addr constant [2 x i8] c"g\00"
@"$test_6_1_g_res_947" = unnamed_addr constant [15 x i8] c"test_6_1_g_res\00"
@"$_balance_988" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_6_2_bal_res_1029" = unnamed_addr constant [17 x i8] c"test_6_2_bal_res\00"
@"$f_1032" = unnamed_addr constant [2 x i8] c"f\00"
@"$test_6_2_f_res_1073" = unnamed_addr constant [15 x i8] c"test_6_2_f_res\00"
@"$g_1076" = unnamed_addr constant [2 x i8] c"g\00"
@"$test_6_2_g_res_1115" = unnamed_addr constant [15 x i8] c"test_6_2_g_res\00"
@"$_balance_1156" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_6_3_bal_res_1197" = unnamed_addr constant [17 x i8] c"test_6_3_bal_res\00"
@"$f_1200" = unnamed_addr constant [2 x i8] c"f\00"
@"$test_6_3_f_res_1241" = unnamed_addr constant [15 x i8] c"test_6_3_f_res\00"
@"$g_1244" = unnamed_addr constant [2 x i8] c"g\00"
@"$test_6_3_g_res_1283" = unnamed_addr constant [15 x i8] c"test_6_3_g_res\00"
@"$_balance_1324" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_6_4_bal_res_1365" = unnamed_addr constant [17 x i8] c"test_6_4_bal_res\00"
@"$f_1368" = unnamed_addr constant [2 x i8] c"f\00"
@"$test_6_4_f_res_1409" = unnamed_addr constant [15 x i8] c"test_6_4_f_res\00"
@"$g_1412" = unnamed_addr constant [2 x i8] c"g\00"
@"$test_6_4_g_res_1451" = unnamed_addr constant [15 x i8] c"test_6_4_g_res\00"
@"$test_6_4_failed_cast_1478" = unnamed_addr constant [21 x i8] c"test_6_4_failed_cast\00"
@"$f_1517" = unnamed_addr constant [2 x i8] c"f\00"
@"$g_1558" = unnamed_addr constant [2 x i8] c"g\00"
@"$test_7_g_res_1597" = unnamed_addr constant [13 x i8] c"test_7_g_res\00"
@"$h_1600" = unnamed_addr constant [2 x i8] c"h\00"
@"$test_7_h_res_1641" = unnamed_addr constant [13 x i8] c"test_7_h_res\00"
@_tydescr_table = constant [31 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int256_59", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_58", %_TyDescrTy_Typ* @"$TyDescr_Event_46", %_TyDescrTy_Typ* @"$TyDescr_Int64_28", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_62", %_TyDescrTy_Typ* @"$TyDescr_Addr_74", %_TyDescrTy_Typ* @"$TyDescr_Addr_71", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_52", %_TyDescrTy_Typ* @"$TyDescr_Uint256_38", %_TyDescrTy_Typ* @"$TyDescr_Uint32_26", %_TyDescrTy_Typ* @"$TyDescr_Addr_73", %_TyDescrTy_Typ* @"$TyDescr_Addr_70", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", %_TyDescrTy_Typ* @"$TyDescr_Uint64_30", %_TyDescrTy_Typ* @"$TyDescr_Bnum_42", %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", %_TyDescrTy_Typ* @"$TyDescr_Addr_69", %_TyDescrTy_Typ* @"$TyDescr_Exception_48", %_TyDescrTy_Typ* @"$TyDescr_String_40", %_TyDescrTy_Typ* @"$TyDescr_Addr_72", %_TyDescrTy_Typ* @"$TyDescr_Int256_36", %_TyDescrTy_Typ* @"$TyDescr_Int128_32", %_TyDescrTy_Typ* @"$TyDescr_Addr_68", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_end_63", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", %_TyDescrTy_Typ* @"$TyDescr_Bystr_50", %_TyDescrTy_Typ* @"$TyDescr_Message_44", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_field_f_:_ByStr20_end_57", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_56", %_TyDescrTy_Typ* @"$TyDescr_Int32_24"]
@_tydescr_table_length = constant i32 31
@"$pname__scilla_version_1659" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_1660" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_1661" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_1657"] [%"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_1659", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_26" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_1660", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_52" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_1661", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_42" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_1662" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1663" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1664" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1665" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest1_1666" = unnamed_addr constant [4 x %"$ParamDescr_1657"] [%"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1662", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1663", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1664", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1665", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }]
@"$tname_CastTest1_1667" = unnamed_addr constant [9 x i8] c"CastTest1"
@"$tpname__amount_1668" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1669" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1670" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1671" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest2_1672" = unnamed_addr constant [4 x %"$ParamDescr_1657"] [%"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1668", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1669", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1670", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1671", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }]
@"$tname_CastTest2_1673" = unnamed_addr constant [9 x i8] c"CastTest2"
@"$tpname__amount_1674" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1675" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1676" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1677" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest3_1678" = unnamed_addr constant [4 x %"$ParamDescr_1657"] [%"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1674", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1675", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1676", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1677", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }]
@"$tname_CastTest3_1679" = unnamed_addr constant [9 x i8] c"CastTest3"
@"$tpname__amount_1680" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1681" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1682" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1683" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest4_1684" = unnamed_addr constant [4 x %"$ParamDescr_1657"] [%"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1680", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1681", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1682", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1683", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_52" }]
@"$tname_CastTest4_1685" = unnamed_addr constant [9 x i8] c"CastTest4"
@"$tpname__amount_1686" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1687" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1688" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1689" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest5_1_1690" = unnamed_addr constant [4 x %"$ParamDescr_1657"] [%"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1686", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1687", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1688", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1689", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_52" }]
@"$tname_CastTest5_1_1691" = unnamed_addr constant [11 x i8] c"CastTest5_1"
@"$tpname__amount_1692" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1693" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1694" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1695" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest5_2_1696" = unnamed_addr constant [4 x %"$ParamDescr_1657"] [%"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1692", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1693", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1694", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1695", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }]
@"$tname_CastTest5_2_1697" = unnamed_addr constant [11 x i8] c"CastTest5_2"
@"$tpname__amount_1698" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1699" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1700" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1701" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest6_1_1702" = unnamed_addr constant [4 x %"$ParamDescr_1657"] [%"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1698", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1699", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1700", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1701", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_52" }]
@"$tname_CastTest6_1_1703" = unnamed_addr constant [11 x i8] c"CastTest6_1"
@"$tpname__amount_1704" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1705" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1706" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1707" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest6_2_1708" = unnamed_addr constant [4 x %"$ParamDescr_1657"] [%"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1704", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1705", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1706", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1707", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }]
@"$tname_CastTest6_2_1709" = unnamed_addr constant [11 x i8] c"CastTest6_2"
@"$tpname__amount_1710" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1711" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1712" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1713" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest6_3_1714" = unnamed_addr constant [4 x %"$ParamDescr_1657"] [%"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1710", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1711", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1712", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1713", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_71" }]
@"$tname_CastTest6_3_1715" = unnamed_addr constant [11 x i8] c"CastTest6_3"
@"$tpname__amount_1716" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1717" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1718" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1719" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest6_4_1720" = unnamed_addr constant [4 x %"$ParamDescr_1657"] [%"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1716", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1717", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1718", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1719", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_70" }]
@"$tname_CastTest6_4_1721" = unnamed_addr constant [11 x i8] c"CastTest6_4"
@"$tpname__amount_1722" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1723" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1724" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1725" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest7_1726" = unnamed_addr constant [4 x %"$ParamDescr_1657"] [%"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1722", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1723", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1724", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1657" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1725", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_52" }]
@"$tname_CastTest7_1727" = unnamed_addr constant [9 x i8] c"CastTest7"
@_transition_parameters = constant [11 x %"$TransDescr_1658"] [%"$TransDescr_1658" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_CastTest1_1667", i32 0, i32 0), i32 9 }, i32 4, %"$ParamDescr_1657"* getelementptr inbounds ([4 x %"$ParamDescr_1657"], [4 x %"$ParamDescr_1657"]* @"$tparams_CastTest1_1666", i32 0, i32 0) }, %"$TransDescr_1658" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_CastTest2_1673", i32 0, i32 0), i32 9 }, i32 4, %"$ParamDescr_1657"* getelementptr inbounds ([4 x %"$ParamDescr_1657"], [4 x %"$ParamDescr_1657"]* @"$tparams_CastTest2_1672", i32 0, i32 0) }, %"$TransDescr_1658" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_CastTest3_1679", i32 0, i32 0), i32 9 }, i32 4, %"$ParamDescr_1657"* getelementptr inbounds ([4 x %"$ParamDescr_1657"], [4 x %"$ParamDescr_1657"]* @"$tparams_CastTest3_1678", i32 0, i32 0) }, %"$TransDescr_1658" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_CastTest4_1685", i32 0, i32 0), i32 9 }, i32 4, %"$ParamDescr_1657"* getelementptr inbounds ([4 x %"$ParamDescr_1657"], [4 x %"$ParamDescr_1657"]* @"$tparams_CastTest4_1684", i32 0, i32 0) }, %"$TransDescr_1658" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest5_1_1691", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1657"* getelementptr inbounds ([4 x %"$ParamDescr_1657"], [4 x %"$ParamDescr_1657"]* @"$tparams_CastTest5_1_1690", i32 0, i32 0) }, %"$TransDescr_1658" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest5_2_1697", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1657"* getelementptr inbounds ([4 x %"$ParamDescr_1657"], [4 x %"$ParamDescr_1657"]* @"$tparams_CastTest5_2_1696", i32 0, i32 0) }, %"$TransDescr_1658" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest6_1_1703", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1657"* getelementptr inbounds ([4 x %"$ParamDescr_1657"], [4 x %"$ParamDescr_1657"]* @"$tparams_CastTest6_1_1702", i32 0, i32 0) }, %"$TransDescr_1658" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest6_2_1709", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1657"* getelementptr inbounds ([4 x %"$ParamDescr_1657"], [4 x %"$ParamDescr_1657"]* @"$tparams_CastTest6_2_1708", i32 0, i32 0) }, %"$TransDescr_1658" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest6_3_1715", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1657"* getelementptr inbounds ([4 x %"$ParamDescr_1657"], [4 x %"$ParamDescr_1657"]* @"$tparams_CastTest6_3_1714", i32 0, i32 0) }, %"$TransDescr_1658" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest6_4_1721", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1657"* getelementptr inbounds ([4 x %"$ParamDescr_1657"], [4 x %"$ParamDescr_1657"]* @"$tparams_CastTest6_4_1720", i32 0, i32 0) }, %"$TransDescr_1658" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_CastTest7_1727", i32 0, i32 0), i32 9 }, i32 4, %"$ParamDescr_1657"* getelementptr inbounds ([4 x %"$ParamDescr_1657"], [4 x %"$ParamDescr_1657"]* @"$tparams_CastTest7_1726", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 11

define void @_init_libs() {
entry:
  %"$gasrem_183" = load i64, i64* @_gasrem, align 8
  %"$gascmp_184" = icmp ugt i64 5, %"$gasrem_183"
  br i1 %"$gascmp_184", label %"$out_of_gas_185", label %"$have_gas_186"

"$out_of_gas_185":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_186"

"$have_gas_186":                                  ; preds = %"$out_of_gas_185", %entry
  %"$consume_187" = sub i64 %"$gasrem_183", 5
  store i64 %"$consume_187", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() {
entry:
  %"$gasrem_188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_189" = icmp ugt i64 1, %"$gasrem_188"
  br i1 %"$gascmp_189", label %"$out_of_gas_190", label %"$have_gas_191"

"$out_of_gas_190":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_191"

"$have_gas_191":                                  ; preds = %"$out_of_gas_190", %entry
  %"$consume_192" = sub i64 %"$gasrem_188", 1
  store i64 %"$consume_192", i64* @_gasrem, align 8
  %"$test_1_res_1" = alloca %TName_Option_ByStr20_with_end*, align 8
  %"$gasrem_193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_194" = icmp ugt i64 1, %"$gasrem_193"
  br i1 %"$gascmp_194", label %"$out_of_gas_195", label %"$have_gas_196"

"$out_of_gas_195":                                ; preds = %"$have_gas_191"
  call void @_out_of_gas()
  br label %"$have_gas_196"

"$have_gas_196":                                  ; preds = %"$out_of_gas_195", %"$have_gas_191"
  %"$consume_197" = sub i64 %"$gasrem_193", 1
  store i64 %"$consume_197", i64* @_gasrem, align 8
  %"$adtval_198_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_198_salloc" = call i8* @_salloc(i8* %"$adtval_198_load", i64 1)
  %"$adtval_198" = bitcast i8* %"$adtval_198_salloc" to %CName_None_ByStr20_with_end*
  %"$adtgep_199" = getelementptr inbounds %CName_None_ByStr20_with_end, %CName_None_ByStr20_with_end* %"$adtval_198", i32 0, i32 0
  store i8 1, i8* %"$adtgep_199", align 1
  %"$adtptr_200" = bitcast %CName_None_ByStr20_with_end* %"$adtval_198" to %TName_Option_ByStr20_with_end*
  store %TName_Option_ByStr20_with_end* %"$adtptr_200", %TName_Option_ByStr20_with_end** %"$test_1_res_1", align 8
  %"$execptr_load_201" = load i8*, i8** @_execptr, align 8
  %"$$test_1_res_1_203" = load %TName_Option_ByStr20_with_end*, %TName_Option_ByStr20_with_end** %"$test_1_res_1", align 8
  %"$update_value_204" = bitcast %TName_Option_ByStr20_with_end* %"$$test_1_res_1_203" to i8*
  call void @_update_field(i8* %"$execptr_load_201", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_1_res_202", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_end_63", i32 0, i8* null, i8* %"$update_value_204")
  %"$test_2_res_2" = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  %"$gasrem_205" = load i64, i64* @_gasrem, align 8
  %"$gascmp_206" = icmp ugt i64 1, %"$gasrem_205"
  br i1 %"$gascmp_206", label %"$out_of_gas_207", label %"$have_gas_208"

"$out_of_gas_207":                                ; preds = %"$have_gas_196"
  call void @_out_of_gas()
  br label %"$have_gas_208"

"$have_gas_208":                                  ; preds = %"$out_of_gas_207", %"$have_gas_196"
  %"$consume_209" = sub i64 %"$gasrem_205", 1
  store i64 %"$consume_209", i64* @_gasrem, align 8
  %"$adtval_210_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_210_salloc" = call i8* @_salloc(i8* %"$adtval_210_load", i64 1)
  %"$adtval_210" = bitcast i8* %"$adtval_210_salloc" to %CName_None_ByStr20_with_contract_end*
  %"$adtgep_211" = getelementptr inbounds %CName_None_ByStr20_with_contract_end, %CName_None_ByStr20_with_contract_end* %"$adtval_210", i32 0, i32 0
  store i8 1, i8* %"$adtgep_211", align 1
  %"$adtptr_212" = bitcast %CName_None_ByStr20_with_contract_end* %"$adtval_210" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$adtptr_212", %TName_Option_ByStr20_with_contract_end** %"$test_2_res_2", align 8
  %"$execptr_load_213" = load i8*, i8** @_execptr, align 8
  %"$$test_2_res_2_215" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %"$test_2_res_2", align 8
  %"$update_value_216" = bitcast %TName_Option_ByStr20_with_contract_end* %"$$test_2_res_2_215" to i8*
  call void @_update_field(i8* %"$execptr_load_213", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_2_res_214", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_62", i32 0, i8* null, i8* %"$update_value_216")
  %"$test_3_res_3" = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  %"$gasrem_217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_218" = icmp ugt i64 1, %"$gasrem_217"
  br i1 %"$gascmp_218", label %"$out_of_gas_219", label %"$have_gas_220"

"$out_of_gas_219":                                ; preds = %"$have_gas_208"
  call void @_out_of_gas()
  br label %"$have_gas_220"

"$have_gas_220":                                  ; preds = %"$out_of_gas_219", %"$have_gas_208"
  %"$consume_221" = sub i64 %"$gasrem_217", 1
  store i64 %"$consume_221", i64* @_gasrem, align 8
  %"$adtval_222_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_222_salloc" = call i8* @_salloc(i8* %"$adtval_222_load", i64 1)
  %"$adtval_222" = bitcast i8* %"$adtval_222_salloc" to %CName_None_ByStr20_with_contract_end*
  %"$adtgep_223" = getelementptr inbounds %CName_None_ByStr20_with_contract_end, %CName_None_ByStr20_with_contract_end* %"$adtval_222", i32 0, i32 0
  store i8 1, i8* %"$adtgep_223", align 1
  %"$adtptr_224" = bitcast %CName_None_ByStr20_with_contract_end* %"$adtval_222" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$adtptr_224", %TName_Option_ByStr20_with_contract_end** %"$test_3_res_3", align 8
  %"$execptr_load_225" = load i8*, i8** @_execptr, align 8
  %"$$test_3_res_3_227" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %"$test_3_res_3", align 8
  %"$update_value_228" = bitcast %TName_Option_ByStr20_with_contract_end* %"$$test_3_res_3_227" to i8*
  call void @_update_field(i8* %"$execptr_load_225", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_3_res_226", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_62", i32 0, i8* null, i8* %"$update_value_228")
  %"$test_4_res_4" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_229" = load i64, i64* @_gasrem, align 8
  %"$gascmp_230" = icmp ugt i64 1, %"$gasrem_229"
  br i1 %"$gascmp_230", label %"$out_of_gas_231", label %"$have_gas_232"

"$out_of_gas_231":                                ; preds = %"$have_gas_220"
  call void @_out_of_gas()
  br label %"$have_gas_232"

"$have_gas_232":                                  ; preds = %"$out_of_gas_231", %"$have_gas_220"
  %"$consume_233" = sub i64 %"$gasrem_229", 1
  store i64 %"$consume_233", i64* @_gasrem, align 8
  %"$adtval_234_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_234_salloc" = call i8* @_salloc(i8* %"$adtval_234_load", i64 1)
  %"$adtval_234" = bitcast i8* %"$adtval_234_salloc" to %CName_None_Uint128*
  %"$adtgep_235" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_234", i32 0, i32 0
  store i8 1, i8* %"$adtgep_235", align 1
  %"$adtptr_236" = bitcast %CName_None_Uint128* %"$adtval_234" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_236", %TName_Option_Uint128** %"$test_4_res_4", align 8
  %"$execptr_load_237" = load i8*, i8** @_execptr, align 8
  %"$$test_4_res_4_239" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_4_res_4", align 8
  %"$update_value_240" = bitcast %TName_Option_Uint128* %"$$test_4_res_4_239" to i8*
  call void @_update_field(i8* %"$execptr_load_237", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_4_res_238", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_240")
  %"$test_5_1_res_5" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_241" = load i64, i64* @_gasrem, align 8
  %"$gascmp_242" = icmp ugt i64 1, %"$gasrem_241"
  br i1 %"$gascmp_242", label %"$out_of_gas_243", label %"$have_gas_244"

"$out_of_gas_243":                                ; preds = %"$have_gas_232"
  call void @_out_of_gas()
  br label %"$have_gas_244"

"$have_gas_244":                                  ; preds = %"$out_of_gas_243", %"$have_gas_232"
  %"$consume_245" = sub i64 %"$gasrem_241", 1
  store i64 %"$consume_245", i64* @_gasrem, align 8
  %"$adtval_246_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_246_salloc" = call i8* @_salloc(i8* %"$adtval_246_load", i64 1)
  %"$adtval_246" = bitcast i8* %"$adtval_246_salloc" to %CName_None_Uint128*
  %"$adtgep_247" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_246", i32 0, i32 0
  store i8 1, i8* %"$adtgep_247", align 1
  %"$adtptr_248" = bitcast %CName_None_Uint128* %"$adtval_246" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_248", %TName_Option_Uint128** %"$test_5_1_res_5", align 8
  %"$execptr_load_249" = load i8*, i8** @_execptr, align 8
  %"$$test_5_1_res_5_251" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_5_1_res_5", align 8
  %"$update_value_252" = bitcast %TName_Option_Uint128* %"$$test_5_1_res_5_251" to i8*
  call void @_update_field(i8* %"$execptr_load_249", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_5_1_res_250", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_252")
  %"$test_5_2_res_6" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_254" = icmp ugt i64 1, %"$gasrem_253"
  br i1 %"$gascmp_254", label %"$out_of_gas_255", label %"$have_gas_256"

"$out_of_gas_255":                                ; preds = %"$have_gas_244"
  call void @_out_of_gas()
  br label %"$have_gas_256"

"$have_gas_256":                                  ; preds = %"$out_of_gas_255", %"$have_gas_244"
  %"$consume_257" = sub i64 %"$gasrem_253", 1
  store i64 %"$consume_257", i64* @_gasrem, align 8
  %"$adtval_258_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_258_salloc" = call i8* @_salloc(i8* %"$adtval_258_load", i64 1)
  %"$adtval_258" = bitcast i8* %"$adtval_258_salloc" to %CName_None_Uint128*
  %"$adtgep_259" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_258", i32 0, i32 0
  store i8 1, i8* %"$adtgep_259", align 1
  %"$adtptr_260" = bitcast %CName_None_Uint128* %"$adtval_258" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_260", %TName_Option_Uint128** %"$test_5_2_res_6", align 8
  %"$execptr_load_261" = load i8*, i8** @_execptr, align 8
  %"$$test_5_2_res_6_263" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_5_2_res_6", align 8
  %"$update_value_264" = bitcast %TName_Option_Uint128* %"$$test_5_2_res_6_263" to i8*
  call void @_update_field(i8* %"$execptr_load_261", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_5_2_res_262", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_264")
  %"$test_6_1_bal_res_7" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_266" = icmp ugt i64 1, %"$gasrem_265"
  br i1 %"$gascmp_266", label %"$out_of_gas_267", label %"$have_gas_268"

"$out_of_gas_267":                                ; preds = %"$have_gas_256"
  call void @_out_of_gas()
  br label %"$have_gas_268"

"$have_gas_268":                                  ; preds = %"$out_of_gas_267", %"$have_gas_256"
  %"$consume_269" = sub i64 %"$gasrem_265", 1
  store i64 %"$consume_269", i64* @_gasrem, align 8
  %"$adtval_270_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_270_salloc" = call i8* @_salloc(i8* %"$adtval_270_load", i64 1)
  %"$adtval_270" = bitcast i8* %"$adtval_270_salloc" to %CName_None_Uint128*
  %"$adtgep_271" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_270", i32 0, i32 0
  store i8 1, i8* %"$adtgep_271", align 1
  %"$adtptr_272" = bitcast %CName_None_Uint128* %"$adtval_270" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_272", %TName_Option_Uint128** %"$test_6_1_bal_res_7", align 8
  %"$execptr_load_273" = load i8*, i8** @_execptr, align 8
  %"$$test_6_1_bal_res_7_275" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_1_bal_res_7", align 8
  %"$update_value_276" = bitcast %TName_Option_Uint128* %"$$test_6_1_bal_res_7_275" to i8*
  call void @_update_field(i8* %"$execptr_load_273", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_1_bal_res_274", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_276")
  %"$test_6_1_f_res_8" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_278" = icmp ugt i64 1, %"$gasrem_277"
  br i1 %"$gascmp_278", label %"$out_of_gas_279", label %"$have_gas_280"

"$out_of_gas_279":                                ; preds = %"$have_gas_268"
  call void @_out_of_gas()
  br label %"$have_gas_280"

"$have_gas_280":                                  ; preds = %"$out_of_gas_279", %"$have_gas_268"
  %"$consume_281" = sub i64 %"$gasrem_277", 1
  store i64 %"$consume_281", i64* @_gasrem, align 8
  %"$adtval_282_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_282_salloc" = call i8* @_salloc(i8* %"$adtval_282_load", i64 1)
  %"$adtval_282" = bitcast i8* %"$adtval_282_salloc" to %CName_None_Uint128*
  %"$adtgep_283" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_282", i32 0, i32 0
  store i8 1, i8* %"$adtgep_283", align 1
  %"$adtptr_284" = bitcast %CName_None_Uint128* %"$adtval_282" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_284", %TName_Option_Uint128** %"$test_6_1_f_res_8", align 8
  %"$execptr_load_285" = load i8*, i8** @_execptr, align 8
  %"$$test_6_1_f_res_8_287" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_1_f_res_8", align 8
  %"$update_value_288" = bitcast %TName_Option_Uint128* %"$$test_6_1_f_res_8_287" to i8*
  call void @_update_field(i8* %"$execptr_load_285", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_1_f_res_286", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_288")
  %"$test_6_1_g_res_9" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_290" = icmp ugt i64 1, %"$gasrem_289"
  br i1 %"$gascmp_290", label %"$out_of_gas_291", label %"$have_gas_292"

"$out_of_gas_291":                                ; preds = %"$have_gas_280"
  call void @_out_of_gas()
  br label %"$have_gas_292"

"$have_gas_292":                                  ; preds = %"$out_of_gas_291", %"$have_gas_280"
  %"$consume_293" = sub i64 %"$gasrem_289", 1
  store i64 %"$consume_293", i64* @_gasrem, align 8
  %"$adtval_294_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_294_salloc" = call i8* @_salloc(i8* %"$adtval_294_load", i64 1)
  %"$adtval_294" = bitcast i8* %"$adtval_294_salloc" to %CName_None_Bool*
  %"$adtgep_295" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_294", i32 0, i32 0
  store i8 1, i8* %"$adtgep_295", align 1
  %"$adtptr_296" = bitcast %CName_None_Bool* %"$adtval_294" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_296", %TName_Option_Bool** %"$test_6_1_g_res_9", align 8
  %"$execptr_load_297" = load i8*, i8** @_execptr, align 8
  %"$$test_6_1_g_res_9_299" = load %TName_Option_Bool*, %TName_Option_Bool** %"$test_6_1_g_res_9", align 8
  %"$update_value_300" = bitcast %TName_Option_Bool* %"$$test_6_1_g_res_9_299" to i8*
  call void @_update_field(i8* %"$execptr_load_297", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_1_g_res_298", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i32 0, i8* null, i8* %"$update_value_300")
  %"$test_6_2_bal_res_10" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_302" = icmp ugt i64 1, %"$gasrem_301"
  br i1 %"$gascmp_302", label %"$out_of_gas_303", label %"$have_gas_304"

"$out_of_gas_303":                                ; preds = %"$have_gas_292"
  call void @_out_of_gas()
  br label %"$have_gas_304"

"$have_gas_304":                                  ; preds = %"$out_of_gas_303", %"$have_gas_292"
  %"$consume_305" = sub i64 %"$gasrem_301", 1
  store i64 %"$consume_305", i64* @_gasrem, align 8
  %"$adtval_306_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_306_salloc" = call i8* @_salloc(i8* %"$adtval_306_load", i64 1)
  %"$adtval_306" = bitcast i8* %"$adtval_306_salloc" to %CName_None_Uint128*
  %"$adtgep_307" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_306", i32 0, i32 0
  store i8 1, i8* %"$adtgep_307", align 1
  %"$adtptr_308" = bitcast %CName_None_Uint128* %"$adtval_306" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_308", %TName_Option_Uint128** %"$test_6_2_bal_res_10", align 8
  %"$execptr_load_309" = load i8*, i8** @_execptr, align 8
  %"$$test_6_2_bal_res_10_311" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_2_bal_res_10", align 8
  %"$update_value_312" = bitcast %TName_Option_Uint128* %"$$test_6_2_bal_res_10_311" to i8*
  call void @_update_field(i8* %"$execptr_load_309", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_2_bal_res_310", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_312")
  %"$test_6_2_f_res_11" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_313" = load i64, i64* @_gasrem, align 8
  %"$gascmp_314" = icmp ugt i64 1, %"$gasrem_313"
  br i1 %"$gascmp_314", label %"$out_of_gas_315", label %"$have_gas_316"

"$out_of_gas_315":                                ; preds = %"$have_gas_304"
  call void @_out_of_gas()
  br label %"$have_gas_316"

"$have_gas_316":                                  ; preds = %"$out_of_gas_315", %"$have_gas_304"
  %"$consume_317" = sub i64 %"$gasrem_313", 1
  store i64 %"$consume_317", i64* @_gasrem, align 8
  %"$adtval_318_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_318_salloc" = call i8* @_salloc(i8* %"$adtval_318_load", i64 1)
  %"$adtval_318" = bitcast i8* %"$adtval_318_salloc" to %CName_None_Uint128*
  %"$adtgep_319" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_318", i32 0, i32 0
  store i8 1, i8* %"$adtgep_319", align 1
  %"$adtptr_320" = bitcast %CName_None_Uint128* %"$adtval_318" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_320", %TName_Option_Uint128** %"$test_6_2_f_res_11", align 8
  %"$execptr_load_321" = load i8*, i8** @_execptr, align 8
  %"$$test_6_2_f_res_11_323" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_2_f_res_11", align 8
  %"$update_value_324" = bitcast %TName_Option_Uint128* %"$$test_6_2_f_res_11_323" to i8*
  call void @_update_field(i8* %"$execptr_load_321", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_2_f_res_322", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_324")
  %"$test_6_2_g_res_12" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_326" = icmp ugt i64 1, %"$gasrem_325"
  br i1 %"$gascmp_326", label %"$out_of_gas_327", label %"$have_gas_328"

"$out_of_gas_327":                                ; preds = %"$have_gas_316"
  call void @_out_of_gas()
  br label %"$have_gas_328"

"$have_gas_328":                                  ; preds = %"$out_of_gas_327", %"$have_gas_316"
  %"$consume_329" = sub i64 %"$gasrem_325", 1
  store i64 %"$consume_329", i64* @_gasrem, align 8
  %"$adtval_330_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_330_salloc" = call i8* @_salloc(i8* %"$adtval_330_load", i64 1)
  %"$adtval_330" = bitcast i8* %"$adtval_330_salloc" to %CName_None_Bool*
  %"$adtgep_331" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_330", i32 0, i32 0
  store i8 1, i8* %"$adtgep_331", align 1
  %"$adtptr_332" = bitcast %CName_None_Bool* %"$adtval_330" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_332", %TName_Option_Bool** %"$test_6_2_g_res_12", align 8
  %"$execptr_load_333" = load i8*, i8** @_execptr, align 8
  %"$$test_6_2_g_res_12_335" = load %TName_Option_Bool*, %TName_Option_Bool** %"$test_6_2_g_res_12", align 8
  %"$update_value_336" = bitcast %TName_Option_Bool* %"$$test_6_2_g_res_12_335" to i8*
  call void @_update_field(i8* %"$execptr_load_333", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_2_g_res_334", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i32 0, i8* null, i8* %"$update_value_336")
  %"$test_6_3_bal_res_13" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_337" = load i64, i64* @_gasrem, align 8
  %"$gascmp_338" = icmp ugt i64 1, %"$gasrem_337"
  br i1 %"$gascmp_338", label %"$out_of_gas_339", label %"$have_gas_340"

"$out_of_gas_339":                                ; preds = %"$have_gas_328"
  call void @_out_of_gas()
  br label %"$have_gas_340"

"$have_gas_340":                                  ; preds = %"$out_of_gas_339", %"$have_gas_328"
  %"$consume_341" = sub i64 %"$gasrem_337", 1
  store i64 %"$consume_341", i64* @_gasrem, align 8
  %"$adtval_342_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_342_salloc" = call i8* @_salloc(i8* %"$adtval_342_load", i64 1)
  %"$adtval_342" = bitcast i8* %"$adtval_342_salloc" to %CName_None_Uint128*
  %"$adtgep_343" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_342", i32 0, i32 0
  store i8 1, i8* %"$adtgep_343", align 1
  %"$adtptr_344" = bitcast %CName_None_Uint128* %"$adtval_342" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_344", %TName_Option_Uint128** %"$test_6_3_bal_res_13", align 8
  %"$execptr_load_345" = load i8*, i8** @_execptr, align 8
  %"$$test_6_3_bal_res_13_347" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_3_bal_res_13", align 8
  %"$update_value_348" = bitcast %TName_Option_Uint128* %"$$test_6_3_bal_res_13_347" to i8*
  call void @_update_field(i8* %"$execptr_load_345", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_3_bal_res_346", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_348")
  %"$test_6_3_f_res_14" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_349" = load i64, i64* @_gasrem, align 8
  %"$gascmp_350" = icmp ugt i64 1, %"$gasrem_349"
  br i1 %"$gascmp_350", label %"$out_of_gas_351", label %"$have_gas_352"

"$out_of_gas_351":                                ; preds = %"$have_gas_340"
  call void @_out_of_gas()
  br label %"$have_gas_352"

"$have_gas_352":                                  ; preds = %"$out_of_gas_351", %"$have_gas_340"
  %"$consume_353" = sub i64 %"$gasrem_349", 1
  store i64 %"$consume_353", i64* @_gasrem, align 8
  %"$adtval_354_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_354_salloc" = call i8* @_salloc(i8* %"$adtval_354_load", i64 1)
  %"$adtval_354" = bitcast i8* %"$adtval_354_salloc" to %CName_None_Uint128*
  %"$adtgep_355" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_354", i32 0, i32 0
  store i8 1, i8* %"$adtgep_355", align 1
  %"$adtptr_356" = bitcast %CName_None_Uint128* %"$adtval_354" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_356", %TName_Option_Uint128** %"$test_6_3_f_res_14", align 8
  %"$execptr_load_357" = load i8*, i8** @_execptr, align 8
  %"$$test_6_3_f_res_14_359" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_3_f_res_14", align 8
  %"$update_value_360" = bitcast %TName_Option_Uint128* %"$$test_6_3_f_res_14_359" to i8*
  call void @_update_field(i8* %"$execptr_load_357", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_3_f_res_358", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_360")
  %"$test_6_3_g_res_15" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_362" = icmp ugt i64 1, %"$gasrem_361"
  br i1 %"$gascmp_362", label %"$out_of_gas_363", label %"$have_gas_364"

"$out_of_gas_363":                                ; preds = %"$have_gas_352"
  call void @_out_of_gas()
  br label %"$have_gas_364"

"$have_gas_364":                                  ; preds = %"$out_of_gas_363", %"$have_gas_352"
  %"$consume_365" = sub i64 %"$gasrem_361", 1
  store i64 %"$consume_365", i64* @_gasrem, align 8
  %"$adtval_366_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_366_salloc" = call i8* @_salloc(i8* %"$adtval_366_load", i64 1)
  %"$adtval_366" = bitcast i8* %"$adtval_366_salloc" to %CName_None_Bool*
  %"$adtgep_367" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_366", i32 0, i32 0
  store i8 1, i8* %"$adtgep_367", align 1
  %"$adtptr_368" = bitcast %CName_None_Bool* %"$adtval_366" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_368", %TName_Option_Bool** %"$test_6_3_g_res_15", align 8
  %"$execptr_load_369" = load i8*, i8** @_execptr, align 8
  %"$$test_6_3_g_res_15_371" = load %TName_Option_Bool*, %TName_Option_Bool** %"$test_6_3_g_res_15", align 8
  %"$update_value_372" = bitcast %TName_Option_Bool* %"$$test_6_3_g_res_15_371" to i8*
  call void @_update_field(i8* %"$execptr_load_369", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_3_g_res_370", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i32 0, i8* null, i8* %"$update_value_372")
  %"$test_6_4_bal_res_16" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_373" = load i64, i64* @_gasrem, align 8
  %"$gascmp_374" = icmp ugt i64 1, %"$gasrem_373"
  br i1 %"$gascmp_374", label %"$out_of_gas_375", label %"$have_gas_376"

"$out_of_gas_375":                                ; preds = %"$have_gas_364"
  call void @_out_of_gas()
  br label %"$have_gas_376"

"$have_gas_376":                                  ; preds = %"$out_of_gas_375", %"$have_gas_364"
  %"$consume_377" = sub i64 %"$gasrem_373", 1
  store i64 %"$consume_377", i64* @_gasrem, align 8
  %"$adtval_378_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_378_salloc" = call i8* @_salloc(i8* %"$adtval_378_load", i64 1)
  %"$adtval_378" = bitcast i8* %"$adtval_378_salloc" to %CName_None_Uint128*
  %"$adtgep_379" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_378", i32 0, i32 0
  store i8 1, i8* %"$adtgep_379", align 1
  %"$adtptr_380" = bitcast %CName_None_Uint128* %"$adtval_378" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_380", %TName_Option_Uint128** %"$test_6_4_bal_res_16", align 8
  %"$execptr_load_381" = load i8*, i8** @_execptr, align 8
  %"$$test_6_4_bal_res_16_383" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_4_bal_res_16", align 8
  %"$update_value_384" = bitcast %TName_Option_Uint128* %"$$test_6_4_bal_res_16_383" to i8*
  call void @_update_field(i8* %"$execptr_load_381", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_4_bal_res_382", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_384")
  %"$test_6_4_f_res_17" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_386" = icmp ugt i64 1, %"$gasrem_385"
  br i1 %"$gascmp_386", label %"$out_of_gas_387", label %"$have_gas_388"

"$out_of_gas_387":                                ; preds = %"$have_gas_376"
  call void @_out_of_gas()
  br label %"$have_gas_388"

"$have_gas_388":                                  ; preds = %"$out_of_gas_387", %"$have_gas_376"
  %"$consume_389" = sub i64 %"$gasrem_385", 1
  store i64 %"$consume_389", i64* @_gasrem, align 8
  %"$adtval_390_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_390_salloc" = call i8* @_salloc(i8* %"$adtval_390_load", i64 1)
  %"$adtval_390" = bitcast i8* %"$adtval_390_salloc" to %CName_None_Uint128*
  %"$adtgep_391" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_390", i32 0, i32 0
  store i8 1, i8* %"$adtgep_391", align 1
  %"$adtptr_392" = bitcast %CName_None_Uint128* %"$adtval_390" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_392", %TName_Option_Uint128** %"$test_6_4_f_res_17", align 8
  %"$execptr_load_393" = load i8*, i8** @_execptr, align 8
  %"$$test_6_4_f_res_17_395" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_4_f_res_17", align 8
  %"$update_value_396" = bitcast %TName_Option_Uint128* %"$$test_6_4_f_res_17_395" to i8*
  call void @_update_field(i8* %"$execptr_load_393", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_4_f_res_394", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_396")
  %"$test_6_4_g_res_18" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_398" = icmp ugt i64 1, %"$gasrem_397"
  br i1 %"$gascmp_398", label %"$out_of_gas_399", label %"$have_gas_400"

"$out_of_gas_399":                                ; preds = %"$have_gas_388"
  call void @_out_of_gas()
  br label %"$have_gas_400"

"$have_gas_400":                                  ; preds = %"$out_of_gas_399", %"$have_gas_388"
  %"$consume_401" = sub i64 %"$gasrem_397", 1
  store i64 %"$consume_401", i64* @_gasrem, align 8
  %"$adtval_402_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_402_salloc" = call i8* @_salloc(i8* %"$adtval_402_load", i64 1)
  %"$adtval_402" = bitcast i8* %"$adtval_402_salloc" to %CName_None_Bool*
  %"$adtgep_403" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_402", i32 0, i32 0
  store i8 1, i8* %"$adtgep_403", align 1
  %"$adtptr_404" = bitcast %CName_None_Bool* %"$adtval_402" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_404", %TName_Option_Bool** %"$test_6_4_g_res_18", align 8
  %"$execptr_load_405" = load i8*, i8** @_execptr, align 8
  %"$$test_6_4_g_res_18_407" = load %TName_Option_Bool*, %TName_Option_Bool** %"$test_6_4_g_res_18", align 8
  %"$update_value_408" = bitcast %TName_Option_Bool* %"$$test_6_4_g_res_18_407" to i8*
  call void @_update_field(i8* %"$execptr_load_405", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_4_g_res_406", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i32 0, i8* null, i8* %"$update_value_408")
  %"$test_6_4_failed_cast_19" = alloca %TName_Bool*, align 8
  %"$gasrem_409" = load i64, i64* @_gasrem, align 8
  %"$gascmp_410" = icmp ugt i64 1, %"$gasrem_409"
  br i1 %"$gascmp_410", label %"$out_of_gas_411", label %"$have_gas_412"

"$out_of_gas_411":                                ; preds = %"$have_gas_400"
  call void @_out_of_gas()
  br label %"$have_gas_412"

"$have_gas_412":                                  ; preds = %"$out_of_gas_411", %"$have_gas_400"
  %"$consume_413" = sub i64 %"$gasrem_409", 1
  store i64 %"$consume_413", i64* @_gasrem, align 8
  %"$adtval_414_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_414_salloc" = call i8* @_salloc(i8* %"$adtval_414_load", i64 1)
  %"$adtval_414" = bitcast i8* %"$adtval_414_salloc" to %CName_False*
  %"$adtgep_415" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_414", i32 0, i32 0
  store i8 1, i8* %"$adtgep_415", align 1
  %"$adtptr_416" = bitcast %CName_False* %"$adtval_414" to %TName_Bool*
  store %TName_Bool* %"$adtptr_416", %TName_Bool** %"$test_6_4_failed_cast_19", align 8
  %"$execptr_load_417" = load i8*, i8** @_execptr, align 8
  %"$$test_6_4_failed_cast_19_419" = load %TName_Bool*, %TName_Bool** %"$test_6_4_failed_cast_19", align 8
  %"$update_value_420" = bitcast %TName_Bool* %"$$test_6_4_failed_cast_19_419" to i8*
  call void @_update_field(i8* %"$execptr_load_417", i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$test_6_4_failed_cast_418", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i32 0, i8* null, i8* %"$update_value_420")
  %"$test_7_g_res_20" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_422" = icmp ugt i64 1, %"$gasrem_421"
  br i1 %"$gascmp_422", label %"$out_of_gas_423", label %"$have_gas_424"

"$out_of_gas_423":                                ; preds = %"$have_gas_412"
  call void @_out_of_gas()
  br label %"$have_gas_424"

"$have_gas_424":                                  ; preds = %"$out_of_gas_423", %"$have_gas_412"
  %"$consume_425" = sub i64 %"$gasrem_421", 1
  store i64 %"$consume_425", i64* @_gasrem, align 8
  %"$adtval_426_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_426_salloc" = call i8* @_salloc(i8* %"$adtval_426_load", i64 1)
  %"$adtval_426" = bitcast i8* %"$adtval_426_salloc" to %CName_None_Bool*
  %"$adtgep_427" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_426", i32 0, i32 0
  store i8 1, i8* %"$adtgep_427", align 1
  %"$adtptr_428" = bitcast %CName_None_Bool* %"$adtval_426" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_428", %TName_Option_Bool** %"$test_7_g_res_20", align 8
  %"$execptr_load_429" = load i8*, i8** @_execptr, align 8
  %"$$test_7_g_res_20_431" = load %TName_Option_Bool*, %TName_Option_Bool** %"$test_7_g_res_20", align 8
  %"$update_value_432" = bitcast %TName_Option_Bool* %"$$test_7_g_res_20_431" to i8*
  call void @_update_field(i8* %"$execptr_load_429", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_7_g_res_430", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i32 0, i8* null, i8* %"$update_value_432")
  %"$test_7_h_res_21" = alloca %TName_Option_Int256*, align 8
  %"$gasrem_433" = load i64, i64* @_gasrem, align 8
  %"$gascmp_434" = icmp ugt i64 1, %"$gasrem_433"
  br i1 %"$gascmp_434", label %"$out_of_gas_435", label %"$have_gas_436"

"$out_of_gas_435":                                ; preds = %"$have_gas_424"
  call void @_out_of_gas()
  br label %"$have_gas_436"

"$have_gas_436":                                  ; preds = %"$out_of_gas_435", %"$have_gas_424"
  %"$consume_437" = sub i64 %"$gasrem_433", 1
  store i64 %"$consume_437", i64* @_gasrem, align 8
  %"$adtval_438_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_438_salloc" = call i8* @_salloc(i8* %"$adtval_438_load", i64 1)
  %"$adtval_438" = bitcast i8* %"$adtval_438_salloc" to %CName_None_Int256*
  %"$adtgep_439" = getelementptr inbounds %CName_None_Int256, %CName_None_Int256* %"$adtval_438", i32 0, i32 0
  store i8 1, i8* %"$adtgep_439", align 1
  %"$adtptr_440" = bitcast %CName_None_Int256* %"$adtval_438" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$adtptr_440", %TName_Option_Int256** %"$test_7_h_res_21", align 8
  %"$execptr_load_441" = load i8*, i8** @_execptr, align 8
  %"$$test_7_h_res_21_443" = load %TName_Option_Int256*, %TName_Option_Int256** %"$test_7_h_res_21", align 8
  %"$update_value_444" = bitcast %TName_Option_Int256* %"$$test_7_h_res_21_443" to i8*
  call void @_update_field(i8* %"$execptr_load_441", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_7_h_res_442", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int256_59", i32 0, i8* null, i8* %"$update_value_444")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$CastTest1_445"(%Uint128 %_amount, [20 x i8]* %"$_origin_446", [20 x i8]* %"$_sender_447", [20 x i8]* %"$x_448") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_446", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_447", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_448", align 1
  %"$gasrem_449" = load i64, i64* @_gasrem, align 8
  %"$gascmp_450" = icmp ugt i64 2, %"$gasrem_449"
  br i1 %"$gascmp_450", label %"$out_of_gas_451", label %"$have_gas_452"

"$out_of_gas_451":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_452"

"$have_gas_452":                                  ; preds = %"$out_of_gas_451", %entry
  %"$consume_453" = sub i64 %"$gasrem_449", 2
  store i64 %"$consume_453", i64* @_gasrem, align 8
  %res = alloca %TName_Option_ByStr20_with_end*, align 8
  %"$execptr_load_454" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_455" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_455", align 1
  %"$_dynamic_typecast_call_456" = call i8* @_dynamic_typecast(i8* %"$execptr_load_454", [20 x i8]* %"$_dynamic_typecast_x_455", %_TyDescrTy_Typ* @"$TyDescr_Addr_74")
  %"$_dynamic_typecast_457" = bitcast i8* %"$_dynamic_typecast_call_456" to %TName_Option_ByStr20_with_end*
  store %TName_Option_ByStr20_with_end* %"$_dynamic_typecast_457", %TName_Option_ByStr20_with_end** %res, align 8
  %"$res_458" = load %TName_Option_ByStr20_with_end*, %TName_Option_ByStr20_with_end** %res, align 8
  %"$$res_458_459" = bitcast %TName_Option_ByStr20_with_end* %"$res_458" to i8*
  %"$_literal_cost_call_460" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_end_63", i8* %"$$res_458_459")
  %"$gasrem_461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_462" = icmp ugt i64 %"$_literal_cost_call_460", %"$gasrem_461"
  br i1 %"$gascmp_462", label %"$out_of_gas_463", label %"$have_gas_464"

"$out_of_gas_463":                                ; preds = %"$have_gas_452"
  call void @_out_of_gas()
  br label %"$have_gas_464"

"$have_gas_464":                                  ; preds = %"$out_of_gas_463", %"$have_gas_452"
  %"$consume_465" = sub i64 %"$gasrem_461", %"$_literal_cost_call_460"
  store i64 %"$consume_465", i64* @_gasrem, align 8
  %"$execptr_load_466" = load i8*, i8** @_execptr, align 8
  %"$res_468" = load %TName_Option_ByStr20_with_end*, %TName_Option_ByStr20_with_end** %res, align 8
  %"$update_value_469" = bitcast %TName_Option_ByStr20_with_end* %"$res_468" to i8*
  call void @_update_field(i8* %"$execptr_load_466", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_1_res_467", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_end_63", i32 0, i8* null, i8* %"$update_value_469")
  ret void
}

declare i8* @_dynamic_typecast(i8*, [20 x i8]*, %_TyDescrTy_Typ*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @CastTest1(i8* %0) {
entry:
  %"$_amount_471" = getelementptr i8, i8* %0, i32 0
  %"$_amount_472" = bitcast i8* %"$_amount_471" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_472", align 8
  %"$_origin_473" = getelementptr i8, i8* %0, i32 16
  %"$_origin_474" = bitcast i8* %"$_origin_473" to [20 x i8]*
  %"$_sender_475" = getelementptr i8, i8* %0, i32 36
  %"$_sender_476" = bitcast i8* %"$_sender_475" to [20 x i8]*
  %"$x_477" = getelementptr i8, i8* %0, i32 56
  %"$x_478" = bitcast i8* %"$x_477" to [20 x i8]*
  call void @"$CastTest1_445"(%Uint128 %_amount, [20 x i8]* %"$_origin_474", [20 x i8]* %"$_sender_476", [20 x i8]* %"$x_478")
  ret void
}

define internal void @"$CastTest2_479"(%Uint128 %_amount, [20 x i8]* %"$_origin_480", [20 x i8]* %"$_sender_481", [20 x i8]* %"$x_482") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_480", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_481", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_482", align 1
  %"$gasrem_483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_484" = icmp ugt i64 3, %"$gasrem_483"
  br i1 %"$gascmp_484", label %"$out_of_gas_485", label %"$have_gas_486"

"$out_of_gas_485":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_486"

"$have_gas_486":                                  ; preds = %"$out_of_gas_485", %entry
  %"$consume_487" = sub i64 %"$gasrem_483", 3
  store i64 %"$consume_487", i64* @_gasrem, align 8
  %res = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  %"$execptr_load_488" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_489" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_489", align 1
  %"$_dynamic_typecast_call_490" = call i8* @_dynamic_typecast(i8* %"$execptr_load_488", [20 x i8]* %"$_dynamic_typecast_x_489", %_TyDescrTy_Typ* @"$TyDescr_Addr_73")
  %"$_dynamic_typecast_491" = bitcast i8* %"$_dynamic_typecast_call_490" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$_dynamic_typecast_491", %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$res_492" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$$res_492_493" = bitcast %TName_Option_ByStr20_with_contract_end* %"$res_492" to i8*
  %"$_literal_cost_call_494" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_62", i8* %"$$res_492_493")
  %"$gasrem_495" = load i64, i64* @_gasrem, align 8
  %"$gascmp_496" = icmp ugt i64 %"$_literal_cost_call_494", %"$gasrem_495"
  br i1 %"$gascmp_496", label %"$out_of_gas_497", label %"$have_gas_498"

"$out_of_gas_497":                                ; preds = %"$have_gas_486"
  call void @_out_of_gas()
  br label %"$have_gas_498"

"$have_gas_498":                                  ; preds = %"$out_of_gas_497", %"$have_gas_486"
  %"$consume_499" = sub i64 %"$gasrem_495", %"$_literal_cost_call_494"
  store i64 %"$consume_499", i64* @_gasrem, align 8
  %"$execptr_load_500" = load i8*, i8** @_execptr, align 8
  %"$res_502" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$update_value_503" = bitcast %TName_Option_ByStr20_with_contract_end* %"$res_502" to i8*
  call void @_update_field(i8* %"$execptr_load_500", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_2_res_501", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_62", i32 0, i8* null, i8* %"$update_value_503")
  ret void
}

define void @CastTest2(i8* %0) {
entry:
  %"$_amount_505" = getelementptr i8, i8* %0, i32 0
  %"$_amount_506" = bitcast i8* %"$_amount_505" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_506", align 8
  %"$_origin_507" = getelementptr i8, i8* %0, i32 16
  %"$_origin_508" = bitcast i8* %"$_origin_507" to [20 x i8]*
  %"$_sender_509" = getelementptr i8, i8* %0, i32 36
  %"$_sender_510" = bitcast i8* %"$_sender_509" to [20 x i8]*
  %"$x_511" = getelementptr i8, i8* %0, i32 56
  %"$x_512" = bitcast i8* %"$x_511" to [20 x i8]*
  call void @"$CastTest2_479"(%Uint128 %_amount, [20 x i8]* %"$_origin_508", [20 x i8]* %"$_sender_510", [20 x i8]* %"$x_512")
  ret void
}

define internal void @"$CastTest3_513"(%Uint128 %_amount, [20 x i8]* %"$_origin_514", [20 x i8]* %"$_sender_515", [20 x i8]* %"$x_516") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_514", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_515", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_516", align 1
  %"$gasrem_517" = load i64, i64* @_gasrem, align 8
  %"$gascmp_518" = icmp ugt i64 3, %"$gasrem_517"
  br i1 %"$gascmp_518", label %"$out_of_gas_519", label %"$have_gas_520"

"$out_of_gas_519":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_520"

"$have_gas_520":                                  ; preds = %"$out_of_gas_519", %entry
  %"$consume_521" = sub i64 %"$gasrem_517", 3
  store i64 %"$consume_521", i64* @_gasrem, align 8
  %res = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  %"$execptr_load_522" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_523" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_523", align 1
  %"$_dynamic_typecast_call_524" = call i8* @_dynamic_typecast(i8* %"$execptr_load_522", [20 x i8]* %"$_dynamic_typecast_x_523", %_TyDescrTy_Typ* @"$TyDescr_Addr_73")
  %"$_dynamic_typecast_525" = bitcast i8* %"$_dynamic_typecast_call_524" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$_dynamic_typecast_525", %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$res_526" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$$res_526_527" = bitcast %TName_Option_ByStr20_with_contract_end* %"$res_526" to i8*
  %"$_literal_cost_call_528" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_62", i8* %"$$res_526_527")
  %"$gasrem_529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_530" = icmp ugt i64 %"$_literal_cost_call_528", %"$gasrem_529"
  br i1 %"$gascmp_530", label %"$out_of_gas_531", label %"$have_gas_532"

"$out_of_gas_531":                                ; preds = %"$have_gas_520"
  call void @_out_of_gas()
  br label %"$have_gas_532"

"$have_gas_532":                                  ; preds = %"$out_of_gas_531", %"$have_gas_520"
  %"$consume_533" = sub i64 %"$gasrem_529", %"$_literal_cost_call_528"
  store i64 %"$consume_533", i64* @_gasrem, align 8
  %"$execptr_load_534" = load i8*, i8** @_execptr, align 8
  %"$res_536" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$update_value_537" = bitcast %TName_Option_ByStr20_with_contract_end* %"$res_536" to i8*
  call void @_update_field(i8* %"$execptr_load_534", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_3_res_535", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_62", i32 0, i8* null, i8* %"$update_value_537")
  ret void
}

define void @CastTest3(i8* %0) {
entry:
  %"$_amount_539" = getelementptr i8, i8* %0, i32 0
  %"$_amount_540" = bitcast i8* %"$_amount_539" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_540", align 8
  %"$_origin_541" = getelementptr i8, i8* %0, i32 16
  %"$_origin_542" = bitcast i8* %"$_origin_541" to [20 x i8]*
  %"$_sender_543" = getelementptr i8, i8* %0, i32 36
  %"$_sender_544" = bitcast i8* %"$_sender_543" to [20 x i8]*
  %"$x_545" = getelementptr i8, i8* %0, i32 56
  %"$x_546" = bitcast i8* %"$x_545" to [20 x i8]*
  call void @"$CastTest3_513"(%Uint128 %_amount, [20 x i8]* %"$_origin_542", [20 x i8]* %"$_sender_544", [20 x i8]* %"$x_546")
  ret void
}

define internal void @"$CastTest4_547"(%Uint128 %_amount, [20 x i8]* %"$_origin_548", [20 x i8]* %"$_sender_549", [20 x i8]* %"$x_550") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_548", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_549", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_550", align 1
  %"$gasrem_551" = load i64, i64* @_gasrem, align 8
  %"$gascmp_552" = icmp ugt i64 2, %"$gasrem_551"
  br i1 %"$gascmp_552", label %"$out_of_gas_553", label %"$have_gas_554"

"$out_of_gas_553":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_554"

"$have_gas_554":                                  ; preds = %"$out_of_gas_553", %entry
  %"$consume_555" = sub i64 %"$gasrem_551", 2
  store i64 %"$consume_555", i64* @_gasrem, align 8
  %x_cast = alloca %TName_Option_ByStr20_with_end*, align 8
  %"$execptr_load_556" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_557" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_557", align 1
  %"$_dynamic_typecast_call_558" = call i8* @_dynamic_typecast(i8* %"$execptr_load_556", [20 x i8]* %"$_dynamic_typecast_x_557", %_TyDescrTy_Typ* @"$TyDescr_Addr_74")
  %"$_dynamic_typecast_559" = bitcast i8* %"$_dynamic_typecast_call_558" to %TName_Option_ByStr20_with_end*
  store %TName_Option_ByStr20_with_end* %"$_dynamic_typecast_559", %TName_Option_ByStr20_with_end** %x_cast, align 8
  %"$gasrem_560" = load i64, i64* @_gasrem, align 8
  %"$gascmp_561" = icmp ugt i64 2, %"$gasrem_560"
  br i1 %"$gascmp_561", label %"$out_of_gas_562", label %"$have_gas_563"

"$out_of_gas_562":                                ; preds = %"$have_gas_554"
  call void @_out_of_gas()
  br label %"$have_gas_563"

"$have_gas_563":                                  ; preds = %"$out_of_gas_562", %"$have_gas_554"
  %"$consume_564" = sub i64 %"$gasrem_560", 2
  store i64 %"$consume_564", i64* @_gasrem, align 8
  %"$x_cast_566" = load %TName_Option_ByStr20_with_end*, %TName_Option_ByStr20_with_end** %x_cast, align 8
  %"$x_cast_tag_567" = getelementptr inbounds %TName_Option_ByStr20_with_end, %TName_Option_ByStr20_with_end* %"$x_cast_566", i32 0, i32 0
  %"$x_cast_tag_568" = load i8, i8* %"$x_cast_tag_567", align 1
  switch i8 %"$x_cast_tag_568", label %"$empty_default_569" [
    i8 0, label %"$Some_570"
    i8 1, label %"$None_618"
  ]

"$Some_570":                                      ; preds = %"$have_gas_563"
  %"$x_cast_571" = bitcast %TName_Option_ByStr20_with_end* %"$x_cast_566" to %CName_Some_ByStr20_with_end*
  %"$x_as_address_gep_572" = getelementptr inbounds %CName_Some_ByStr20_with_end, %CName_Some_ByStr20_with_end* %"$x_cast_571", i32 0, i32 1
  %"$x_as_address_load_573" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_572", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_573", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_575" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_576" = alloca [20 x i8], align 1
  %"$x_as_address_577" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_577", [20 x i8]* %"$bal_x_as_address_576", align 1
  %"$bal_call_578" = call i8* @_fetch_remote_field(i8* %"$execptr_load_575", [20 x i8]* %"$bal_x_as_address_576", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_574", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$bal_579" = bitcast i8* %"$bal_call_578" to %Uint128*
  %"$bal_580" = load %Uint128, %Uint128* %"$bal_579", align 8
  store %Uint128 %"$bal_580", %Uint128* %bal, align 8
  %"$_literal_cost_bal_581" = alloca %Uint128, align 8
  %"$bal_582" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_582", %Uint128* %"$_literal_cost_bal_581", align 8
  %"$$_literal_cost_bal_581_583" = bitcast %Uint128* %"$_literal_cost_bal_581" to i8*
  %"$_literal_cost_call_584" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_581_583")
  %"$gasadd_585" = add i64 %"$_literal_cost_call_584", 0
  %"$gasrem_586" = load i64, i64* @_gasrem, align 8
  %"$gascmp_587" = icmp ugt i64 %"$gasadd_585", %"$gasrem_586"
  br i1 %"$gascmp_587", label %"$out_of_gas_588", label %"$have_gas_589"

"$out_of_gas_588":                                ; preds = %"$Some_570"
  call void @_out_of_gas()
  br label %"$have_gas_589"

"$have_gas_589":                                  ; preds = %"$out_of_gas_588", %"$Some_570"
  %"$consume_590" = sub i64 %"$gasrem_586", %"$gasadd_585"
  store i64 %"$consume_590", i64* @_gasrem, align 8
  %"$gasrem_591" = load i64, i64* @_gasrem, align 8
  %"$gascmp_592" = icmp ugt i64 1, %"$gasrem_591"
  br i1 %"$gascmp_592", label %"$out_of_gas_593", label %"$have_gas_594"

"$out_of_gas_593":                                ; preds = %"$have_gas_589"
  call void @_out_of_gas()
  br label %"$have_gas_594"

"$have_gas_594":                                  ; preds = %"$out_of_gas_593", %"$have_gas_589"
  %"$consume_595" = sub i64 %"$gasrem_591", 1
  store i64 %"$consume_595", i64* @_gasrem, align 8
  %res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_596" = load i64, i64* @_gasrem, align 8
  %"$gascmp_597" = icmp ugt i64 1, %"$gasrem_596"
  br i1 %"$gascmp_597", label %"$out_of_gas_598", label %"$have_gas_599"

"$out_of_gas_598":                                ; preds = %"$have_gas_594"
  call void @_out_of_gas()
  br label %"$have_gas_599"

"$have_gas_599":                                  ; preds = %"$out_of_gas_598", %"$have_gas_594"
  %"$consume_600" = sub i64 %"$gasrem_596", 1
  store i64 %"$consume_600", i64* @_gasrem, align 8
  %"$bal_601" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_602_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_602_salloc" = call i8* @_salloc(i8* %"$adtval_602_load", i64 17)
  %"$adtval_602" = bitcast i8* %"$adtval_602_salloc" to %CName_Some_Uint128*
  %"$adtgep_603" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_602", i32 0, i32 0
  store i8 0, i8* %"$adtgep_603", align 1
  %"$adtgep_604" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_602", i32 0, i32 1
  store %Uint128 %"$bal_601", %Uint128* %"$adtgep_604", align 8
  %"$adtptr_605" = bitcast %CName_Some_Uint128* %"$adtval_602" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_605", %TName_Option_Uint128** %res, align 8
  %"$res_606" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$$res_606_607" = bitcast %TName_Option_Uint128* %"$res_606" to i8*
  %"$_literal_cost_call_608" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i8* %"$$res_606_607")
  %"$gasrem_609" = load i64, i64* @_gasrem, align 8
  %"$gascmp_610" = icmp ugt i64 %"$_literal_cost_call_608", %"$gasrem_609"
  br i1 %"$gascmp_610", label %"$out_of_gas_611", label %"$have_gas_612"

"$out_of_gas_611":                                ; preds = %"$have_gas_599"
  call void @_out_of_gas()
  br label %"$have_gas_612"

"$have_gas_612":                                  ; preds = %"$out_of_gas_611", %"$have_gas_599"
  %"$consume_613" = sub i64 %"$gasrem_609", %"$_literal_cost_call_608"
  store i64 %"$consume_613", i64* @_gasrem, align 8
  %"$execptr_load_614" = load i8*, i8** @_execptr, align 8
  %"$res_616" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$update_value_617" = bitcast %TName_Option_Uint128* %"$res_616" to i8*
  call void @_update_field(i8* %"$execptr_load_614", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_4_res_615", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_617")
  br label %"$matchsucc_565"

"$None_618":                                      ; preds = %"$have_gas_563"
  %"$x_cast_619" = bitcast %TName_Option_ByStr20_with_end* %"$x_cast_566" to %CName_None_ByStr20_with_end*
  br label %"$matchsucc_565"

"$empty_default_569":                             ; preds = %"$have_gas_563"
  br label %"$matchsucc_565"

"$matchsucc_565":                                 ; preds = %"$None_618", %"$have_gas_612", %"$empty_default_569"
  ret void
}

declare i8* @_fetch_remote_field(i8*, [20 x i8]*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @CastTest4(i8* %0) {
entry:
  %"$_amount_621" = getelementptr i8, i8* %0, i32 0
  %"$_amount_622" = bitcast i8* %"$_amount_621" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_622", align 8
  %"$_origin_623" = getelementptr i8, i8* %0, i32 16
  %"$_origin_624" = bitcast i8* %"$_origin_623" to [20 x i8]*
  %"$_sender_625" = getelementptr i8, i8* %0, i32 36
  %"$_sender_626" = bitcast i8* %"$_sender_625" to [20 x i8]*
  %"$x_627" = getelementptr i8, i8* %0, i32 56
  %"$x_628" = bitcast i8* %"$x_627" to [20 x i8]*
  call void @"$CastTest4_547"(%Uint128 %_amount, [20 x i8]* %"$_origin_624", [20 x i8]* %"$_sender_626", [20 x i8]* %"$x_628")
  ret void
}

define internal void @"$CastTest5_1_629"(%Uint128 %_amount, [20 x i8]* %"$_origin_630", [20 x i8]* %"$_sender_631", [20 x i8]* %"$x_632") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_630", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_631", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_632", align 1
  %"$gasrem_633" = load i64, i64* @_gasrem, align 8
  %"$gascmp_634" = icmp ugt i64 3, %"$gasrem_633"
  br i1 %"$gascmp_634", label %"$out_of_gas_635", label %"$have_gas_636"

"$out_of_gas_635":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_636"

"$have_gas_636":                                  ; preds = %"$out_of_gas_635", %entry
  %"$consume_637" = sub i64 %"$gasrem_633", 3
  store i64 %"$consume_637", i64* @_gasrem, align 8
  %x_cast = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  %"$execptr_load_638" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_639" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_639", align 1
  %"$_dynamic_typecast_call_640" = call i8* @_dynamic_typecast(i8* %"$execptr_load_638", [20 x i8]* %"$_dynamic_typecast_x_639", %_TyDescrTy_Typ* @"$TyDescr_Addr_73")
  %"$_dynamic_typecast_641" = bitcast i8* %"$_dynamic_typecast_call_640" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$_dynamic_typecast_641", %TName_Option_ByStr20_with_contract_end** %x_cast, align 8
  %"$gasrem_642" = load i64, i64* @_gasrem, align 8
  %"$gascmp_643" = icmp ugt i64 2, %"$gasrem_642"
  br i1 %"$gascmp_643", label %"$out_of_gas_644", label %"$have_gas_645"

"$out_of_gas_644":                                ; preds = %"$have_gas_636"
  call void @_out_of_gas()
  br label %"$have_gas_645"

"$have_gas_645":                                  ; preds = %"$out_of_gas_644", %"$have_gas_636"
  %"$consume_646" = sub i64 %"$gasrem_642", 2
  store i64 %"$consume_646", i64* @_gasrem, align 8
  %"$x_cast_648" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %x_cast, align 8
  %"$x_cast_tag_649" = getelementptr inbounds %TName_Option_ByStr20_with_contract_end, %TName_Option_ByStr20_with_contract_end* %"$x_cast_648", i32 0, i32 0
  %"$x_cast_tag_650" = load i8, i8* %"$x_cast_tag_649", align 1
  switch i8 %"$x_cast_tag_650", label %"$empty_default_651" [
    i8 0, label %"$Some_652"
    i8 1, label %"$None_700"
  ]

"$Some_652":                                      ; preds = %"$have_gas_645"
  %"$x_cast_653" = bitcast %TName_Option_ByStr20_with_contract_end* %"$x_cast_648" to %CName_Some_ByStr20_with_contract_end*
  %"$x_as_address_gep_654" = getelementptr inbounds %CName_Some_ByStr20_with_contract_end, %CName_Some_ByStr20_with_contract_end* %"$x_cast_653", i32 0, i32 1
  %"$x_as_address_load_655" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_654", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_655", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_657" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_658" = alloca [20 x i8], align 1
  %"$x_as_address_659" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_659", [20 x i8]* %"$bal_x_as_address_658", align 1
  %"$bal_call_660" = call i8* @_fetch_remote_field(i8* %"$execptr_load_657", [20 x i8]* %"$bal_x_as_address_658", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_656", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$bal_661" = bitcast i8* %"$bal_call_660" to %Uint128*
  %"$bal_662" = load %Uint128, %Uint128* %"$bal_661", align 8
  store %Uint128 %"$bal_662", %Uint128* %bal, align 8
  %"$_literal_cost_bal_663" = alloca %Uint128, align 8
  %"$bal_664" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_664", %Uint128* %"$_literal_cost_bal_663", align 8
  %"$$_literal_cost_bal_663_665" = bitcast %Uint128* %"$_literal_cost_bal_663" to i8*
  %"$_literal_cost_call_666" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_663_665")
  %"$gasadd_667" = add i64 %"$_literal_cost_call_666", 0
  %"$gasrem_668" = load i64, i64* @_gasrem, align 8
  %"$gascmp_669" = icmp ugt i64 %"$gasadd_667", %"$gasrem_668"
  br i1 %"$gascmp_669", label %"$out_of_gas_670", label %"$have_gas_671"

"$out_of_gas_670":                                ; preds = %"$Some_652"
  call void @_out_of_gas()
  br label %"$have_gas_671"

"$have_gas_671":                                  ; preds = %"$out_of_gas_670", %"$Some_652"
  %"$consume_672" = sub i64 %"$gasrem_668", %"$gasadd_667"
  store i64 %"$consume_672", i64* @_gasrem, align 8
  %"$gasrem_673" = load i64, i64* @_gasrem, align 8
  %"$gascmp_674" = icmp ugt i64 1, %"$gasrem_673"
  br i1 %"$gascmp_674", label %"$out_of_gas_675", label %"$have_gas_676"

"$out_of_gas_675":                                ; preds = %"$have_gas_671"
  call void @_out_of_gas()
  br label %"$have_gas_676"

"$have_gas_676":                                  ; preds = %"$out_of_gas_675", %"$have_gas_671"
  %"$consume_677" = sub i64 %"$gasrem_673", 1
  store i64 %"$consume_677", i64* @_gasrem, align 8
  %res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_678" = load i64, i64* @_gasrem, align 8
  %"$gascmp_679" = icmp ugt i64 1, %"$gasrem_678"
  br i1 %"$gascmp_679", label %"$out_of_gas_680", label %"$have_gas_681"

"$out_of_gas_680":                                ; preds = %"$have_gas_676"
  call void @_out_of_gas()
  br label %"$have_gas_681"

"$have_gas_681":                                  ; preds = %"$out_of_gas_680", %"$have_gas_676"
  %"$consume_682" = sub i64 %"$gasrem_678", 1
  store i64 %"$consume_682", i64* @_gasrem, align 8
  %"$bal_683" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_684_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_684_salloc" = call i8* @_salloc(i8* %"$adtval_684_load", i64 17)
  %"$adtval_684" = bitcast i8* %"$adtval_684_salloc" to %CName_Some_Uint128*
  %"$adtgep_685" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_684", i32 0, i32 0
  store i8 0, i8* %"$adtgep_685", align 1
  %"$adtgep_686" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_684", i32 0, i32 1
  store %Uint128 %"$bal_683", %Uint128* %"$adtgep_686", align 8
  %"$adtptr_687" = bitcast %CName_Some_Uint128* %"$adtval_684" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_687", %TName_Option_Uint128** %res, align 8
  %"$res_688" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$$res_688_689" = bitcast %TName_Option_Uint128* %"$res_688" to i8*
  %"$_literal_cost_call_690" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i8* %"$$res_688_689")
  %"$gasrem_691" = load i64, i64* @_gasrem, align 8
  %"$gascmp_692" = icmp ugt i64 %"$_literal_cost_call_690", %"$gasrem_691"
  br i1 %"$gascmp_692", label %"$out_of_gas_693", label %"$have_gas_694"

"$out_of_gas_693":                                ; preds = %"$have_gas_681"
  call void @_out_of_gas()
  br label %"$have_gas_694"

"$have_gas_694":                                  ; preds = %"$out_of_gas_693", %"$have_gas_681"
  %"$consume_695" = sub i64 %"$gasrem_691", %"$_literal_cost_call_690"
  store i64 %"$consume_695", i64* @_gasrem, align 8
  %"$execptr_load_696" = load i8*, i8** @_execptr, align 8
  %"$res_698" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$update_value_699" = bitcast %TName_Option_Uint128* %"$res_698" to i8*
  call void @_update_field(i8* %"$execptr_load_696", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_5_1_res_697", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_699")
  br label %"$matchsucc_647"

"$None_700":                                      ; preds = %"$have_gas_645"
  %"$x_cast_701" = bitcast %TName_Option_ByStr20_with_contract_end* %"$x_cast_648" to %CName_None_ByStr20_with_contract_end*
  br label %"$matchsucc_647"

"$empty_default_651":                             ; preds = %"$have_gas_645"
  br label %"$matchsucc_647"

"$matchsucc_647":                                 ; preds = %"$None_700", %"$have_gas_694", %"$empty_default_651"
  ret void
}

define void @CastTest5_1(i8* %0) {
entry:
  %"$_amount_703" = getelementptr i8, i8* %0, i32 0
  %"$_amount_704" = bitcast i8* %"$_amount_703" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_704", align 8
  %"$_origin_705" = getelementptr i8, i8* %0, i32 16
  %"$_origin_706" = bitcast i8* %"$_origin_705" to [20 x i8]*
  %"$_sender_707" = getelementptr i8, i8* %0, i32 36
  %"$_sender_708" = bitcast i8* %"$_sender_707" to [20 x i8]*
  %"$x_709" = getelementptr i8, i8* %0, i32 56
  %"$x_710" = bitcast i8* %"$x_709" to [20 x i8]*
  call void @"$CastTest5_1_629"(%Uint128 %_amount, [20 x i8]* %"$_origin_706", [20 x i8]* %"$_sender_708", [20 x i8]* %"$x_710")
  ret void
}

define internal void @"$CastTest5_2_711"(%Uint128 %_amount, [20 x i8]* %"$_origin_712", [20 x i8]* %"$_sender_713", [20 x i8]* %"$x_714") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_712", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_713", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_714", align 1
  %"$gasrem_715" = load i64, i64* @_gasrem, align 8
  %"$gascmp_716" = icmp ugt i64 3, %"$gasrem_715"
  br i1 %"$gascmp_716", label %"$out_of_gas_717", label %"$have_gas_718"

"$out_of_gas_717":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_718"

"$have_gas_718":                                  ; preds = %"$out_of_gas_717", %entry
  %"$consume_719" = sub i64 %"$gasrem_715", 3
  store i64 %"$consume_719", i64* @_gasrem, align 8
  %x_cast = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  %"$execptr_load_720" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_721" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_721", align 1
  %"$_dynamic_typecast_call_722" = call i8* @_dynamic_typecast(i8* %"$execptr_load_720", [20 x i8]* %"$_dynamic_typecast_x_721", %_TyDescrTy_Typ* @"$TyDescr_Addr_73")
  %"$_dynamic_typecast_723" = bitcast i8* %"$_dynamic_typecast_call_722" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$_dynamic_typecast_723", %TName_Option_ByStr20_with_contract_end** %x_cast, align 8
  %"$gasrem_724" = load i64, i64* @_gasrem, align 8
  %"$gascmp_725" = icmp ugt i64 2, %"$gasrem_724"
  br i1 %"$gascmp_725", label %"$out_of_gas_726", label %"$have_gas_727"

"$out_of_gas_726":                                ; preds = %"$have_gas_718"
  call void @_out_of_gas()
  br label %"$have_gas_727"

"$have_gas_727":                                  ; preds = %"$out_of_gas_726", %"$have_gas_718"
  %"$consume_728" = sub i64 %"$gasrem_724", 2
  store i64 %"$consume_728", i64* @_gasrem, align 8
  %"$x_cast_730" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %x_cast, align 8
  %"$x_cast_tag_731" = getelementptr inbounds %TName_Option_ByStr20_with_contract_end, %TName_Option_ByStr20_with_contract_end* %"$x_cast_730", i32 0, i32 0
  %"$x_cast_tag_732" = load i8, i8* %"$x_cast_tag_731", align 1
  switch i8 %"$x_cast_tag_732", label %"$empty_default_733" [
    i8 0, label %"$Some_734"
    i8 1, label %"$None_782"
  ]

"$Some_734":                                      ; preds = %"$have_gas_727"
  %"$x_cast_735" = bitcast %TName_Option_ByStr20_with_contract_end* %"$x_cast_730" to %CName_Some_ByStr20_with_contract_end*
  %"$x_as_address_gep_736" = getelementptr inbounds %CName_Some_ByStr20_with_contract_end, %CName_Some_ByStr20_with_contract_end* %"$x_cast_735", i32 0, i32 1
  %"$x_as_address_load_737" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_736", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_737", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_739" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_740" = alloca [20 x i8], align 1
  %"$x_as_address_741" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_741", [20 x i8]* %"$bal_x_as_address_740", align 1
  %"$bal_call_742" = call i8* @_fetch_remote_field(i8* %"$execptr_load_739", [20 x i8]* %"$bal_x_as_address_740", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_738", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$bal_743" = bitcast i8* %"$bal_call_742" to %Uint128*
  %"$bal_744" = load %Uint128, %Uint128* %"$bal_743", align 8
  store %Uint128 %"$bal_744", %Uint128* %bal, align 8
  %"$_literal_cost_bal_745" = alloca %Uint128, align 8
  %"$bal_746" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_746", %Uint128* %"$_literal_cost_bal_745", align 8
  %"$$_literal_cost_bal_745_747" = bitcast %Uint128* %"$_literal_cost_bal_745" to i8*
  %"$_literal_cost_call_748" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_745_747")
  %"$gasadd_749" = add i64 %"$_literal_cost_call_748", 0
  %"$gasrem_750" = load i64, i64* @_gasrem, align 8
  %"$gascmp_751" = icmp ugt i64 %"$gasadd_749", %"$gasrem_750"
  br i1 %"$gascmp_751", label %"$out_of_gas_752", label %"$have_gas_753"

"$out_of_gas_752":                                ; preds = %"$Some_734"
  call void @_out_of_gas()
  br label %"$have_gas_753"

"$have_gas_753":                                  ; preds = %"$out_of_gas_752", %"$Some_734"
  %"$consume_754" = sub i64 %"$gasrem_750", %"$gasadd_749"
  store i64 %"$consume_754", i64* @_gasrem, align 8
  %"$gasrem_755" = load i64, i64* @_gasrem, align 8
  %"$gascmp_756" = icmp ugt i64 1, %"$gasrem_755"
  br i1 %"$gascmp_756", label %"$out_of_gas_757", label %"$have_gas_758"

"$out_of_gas_757":                                ; preds = %"$have_gas_753"
  call void @_out_of_gas()
  br label %"$have_gas_758"

"$have_gas_758":                                  ; preds = %"$out_of_gas_757", %"$have_gas_753"
  %"$consume_759" = sub i64 %"$gasrem_755", 1
  store i64 %"$consume_759", i64* @_gasrem, align 8
  %res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_760" = load i64, i64* @_gasrem, align 8
  %"$gascmp_761" = icmp ugt i64 1, %"$gasrem_760"
  br i1 %"$gascmp_761", label %"$out_of_gas_762", label %"$have_gas_763"

"$out_of_gas_762":                                ; preds = %"$have_gas_758"
  call void @_out_of_gas()
  br label %"$have_gas_763"

"$have_gas_763":                                  ; preds = %"$out_of_gas_762", %"$have_gas_758"
  %"$consume_764" = sub i64 %"$gasrem_760", 1
  store i64 %"$consume_764", i64* @_gasrem, align 8
  %"$bal_765" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_766_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_766_salloc" = call i8* @_salloc(i8* %"$adtval_766_load", i64 17)
  %"$adtval_766" = bitcast i8* %"$adtval_766_salloc" to %CName_Some_Uint128*
  %"$adtgep_767" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_766", i32 0, i32 0
  store i8 0, i8* %"$adtgep_767", align 1
  %"$adtgep_768" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_766", i32 0, i32 1
  store %Uint128 %"$bal_765", %Uint128* %"$adtgep_768", align 8
  %"$adtptr_769" = bitcast %CName_Some_Uint128* %"$adtval_766" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_769", %TName_Option_Uint128** %res, align 8
  %"$res_770" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$$res_770_771" = bitcast %TName_Option_Uint128* %"$res_770" to i8*
  %"$_literal_cost_call_772" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i8* %"$$res_770_771")
  %"$gasrem_773" = load i64, i64* @_gasrem, align 8
  %"$gascmp_774" = icmp ugt i64 %"$_literal_cost_call_772", %"$gasrem_773"
  br i1 %"$gascmp_774", label %"$out_of_gas_775", label %"$have_gas_776"

"$out_of_gas_775":                                ; preds = %"$have_gas_763"
  call void @_out_of_gas()
  br label %"$have_gas_776"

"$have_gas_776":                                  ; preds = %"$out_of_gas_775", %"$have_gas_763"
  %"$consume_777" = sub i64 %"$gasrem_773", %"$_literal_cost_call_772"
  store i64 %"$consume_777", i64* @_gasrem, align 8
  %"$execptr_load_778" = load i8*, i8** @_execptr, align 8
  %"$res_780" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$update_value_781" = bitcast %TName_Option_Uint128* %"$res_780" to i8*
  call void @_update_field(i8* %"$execptr_load_778", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_5_2_res_779", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_781")
  br label %"$matchsucc_729"

"$None_782":                                      ; preds = %"$have_gas_727"
  %"$x_cast_783" = bitcast %TName_Option_ByStr20_with_contract_end* %"$x_cast_730" to %CName_None_ByStr20_with_contract_end*
  br label %"$matchsucc_729"

"$empty_default_733":                             ; preds = %"$have_gas_727"
  br label %"$matchsucc_729"

"$matchsucc_729":                                 ; preds = %"$None_782", %"$have_gas_776", %"$empty_default_733"
  ret void
}

define void @CastTest5_2(i8* %0) {
entry:
  %"$_amount_785" = getelementptr i8, i8* %0, i32 0
  %"$_amount_786" = bitcast i8* %"$_amount_785" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_786", align 8
  %"$_origin_787" = getelementptr i8, i8* %0, i32 16
  %"$_origin_788" = bitcast i8* %"$_origin_787" to [20 x i8]*
  %"$_sender_789" = getelementptr i8, i8* %0, i32 36
  %"$_sender_790" = bitcast i8* %"$_sender_789" to [20 x i8]*
  %"$x_791" = getelementptr i8, i8* %0, i32 56
  %"$x_792" = bitcast i8* %"$x_791" to [20 x i8]*
  call void @"$CastTest5_2_711"(%Uint128 %_amount, [20 x i8]* %"$_origin_788", [20 x i8]* %"$_sender_790", [20 x i8]* %"$x_792")
  ret void
}

define internal void @"$CastTest6_1_793"(%Uint128 %_amount, [20 x i8]* %"$_origin_794", [20 x i8]* %"$_sender_795", [20 x i8]* %"$x_796") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_794", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_795", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_796", align 1
  %"$gasrem_797" = load i64, i64* @_gasrem, align 8
  %"$gascmp_798" = icmp ugt i64 5, %"$gasrem_797"
  br i1 %"$gascmp_798", label %"$out_of_gas_799", label %"$have_gas_800"

"$out_of_gas_799":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_800"

"$have_gas_800":                                  ; preds = %"$out_of_gas_799", %entry
  %"$consume_801" = sub i64 %"$gasrem_797", 5
  store i64 %"$consume_801", i64* @_gasrem, align 8
  %x_cast = alloca %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, align 8
  %"$execptr_load_802" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_803" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_803", align 1
  %"$_dynamic_typecast_call_804" = call i8* @_dynamic_typecast(i8* %"$execptr_load_802", [20 x i8]* %"$_dynamic_typecast_x_803", %_TyDescrTy_Typ* @"$TyDescr_Addr_72")
  %"$_dynamic_typecast_805" = bitcast i8* %"$_dynamic_typecast_call_804" to %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  store %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$_dynamic_typecast_805", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$gasrem_806" = load i64, i64* @_gasrem, align 8
  %"$gascmp_807" = icmp ugt i64 2, %"$gasrem_806"
  br i1 %"$gascmp_807", label %"$out_of_gas_808", label %"$have_gas_809"

"$out_of_gas_808":                                ; preds = %"$have_gas_800"
  call void @_out_of_gas()
  br label %"$have_gas_809"

"$have_gas_809":                                  ; preds = %"$out_of_gas_808", %"$have_gas_800"
  %"$consume_810" = sub i64 %"$gasrem_806", 2
  store i64 %"$consume_810", i64* @_gasrem, align 8
  %"$x_cast_812" = load %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$x_cast_tag_813" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_812", i32 0, i32 0
  %"$x_cast_tag_814" = load i8, i8* %"$x_cast_tag_813", align 1
  switch i8 %"$x_cast_tag_814", label %"$empty_default_815" [
    i8 0, label %"$Some_816"
    i8 1, label %"$None_950"
  ]

"$Some_816":                                      ; preds = %"$have_gas_809"
  %"$x_cast_817" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_812" to %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  %"$x_as_address_gep_818" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_817", i32 0, i32 1
  %"$x_as_address_load_819" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_818", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_819", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_821" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_822" = alloca [20 x i8], align 1
  %"$x_as_address_823" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_823", [20 x i8]* %"$bal_x_as_address_822", align 1
  %"$bal_call_824" = call i8* @_fetch_remote_field(i8* %"$execptr_load_821", [20 x i8]* %"$bal_x_as_address_822", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_820", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$bal_825" = bitcast i8* %"$bal_call_824" to %Uint128*
  %"$bal_826" = load %Uint128, %Uint128* %"$bal_825", align 8
  store %Uint128 %"$bal_826", %Uint128* %bal, align 8
  %"$_literal_cost_bal_827" = alloca %Uint128, align 8
  %"$bal_828" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_828", %Uint128* %"$_literal_cost_bal_827", align 8
  %"$$_literal_cost_bal_827_829" = bitcast %Uint128* %"$_literal_cost_bal_827" to i8*
  %"$_literal_cost_call_830" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_827_829")
  %"$gasadd_831" = add i64 %"$_literal_cost_call_830", 0
  %"$gasrem_832" = load i64, i64* @_gasrem, align 8
  %"$gascmp_833" = icmp ugt i64 %"$gasadd_831", %"$gasrem_832"
  br i1 %"$gascmp_833", label %"$out_of_gas_834", label %"$have_gas_835"

"$out_of_gas_834":                                ; preds = %"$Some_816"
  call void @_out_of_gas()
  br label %"$have_gas_835"

"$have_gas_835":                                  ; preds = %"$out_of_gas_834", %"$Some_816"
  %"$consume_836" = sub i64 %"$gasrem_832", %"$gasadd_831"
  store i64 %"$consume_836", i64* @_gasrem, align 8
  %"$gasrem_837" = load i64, i64* @_gasrem, align 8
  %"$gascmp_838" = icmp ugt i64 1, %"$gasrem_837"
  br i1 %"$gascmp_838", label %"$out_of_gas_839", label %"$have_gas_840"

"$out_of_gas_839":                                ; preds = %"$have_gas_835"
  call void @_out_of_gas()
  br label %"$have_gas_840"

"$have_gas_840":                                  ; preds = %"$out_of_gas_839", %"$have_gas_835"
  %"$consume_841" = sub i64 %"$gasrem_837", 1
  store i64 %"$consume_841", i64* @_gasrem, align 8
  %bal_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_842" = load i64, i64* @_gasrem, align 8
  %"$gascmp_843" = icmp ugt i64 1, %"$gasrem_842"
  br i1 %"$gascmp_843", label %"$out_of_gas_844", label %"$have_gas_845"

"$out_of_gas_844":                                ; preds = %"$have_gas_840"
  call void @_out_of_gas()
  br label %"$have_gas_845"

"$have_gas_845":                                  ; preds = %"$out_of_gas_844", %"$have_gas_840"
  %"$consume_846" = sub i64 %"$gasrem_842", 1
  store i64 %"$consume_846", i64* @_gasrem, align 8
  %"$bal_847" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_848_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_848_salloc" = call i8* @_salloc(i8* %"$adtval_848_load", i64 17)
  %"$adtval_848" = bitcast i8* %"$adtval_848_salloc" to %CName_Some_Uint128*
  %"$adtgep_849" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_848", i32 0, i32 0
  store i8 0, i8* %"$adtgep_849", align 1
  %"$adtgep_850" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_848", i32 0, i32 1
  store %Uint128 %"$bal_847", %Uint128* %"$adtgep_850", align 8
  %"$adtptr_851" = bitcast %CName_Some_Uint128* %"$adtval_848" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_851", %TName_Option_Uint128** %bal_res, align 8
  %"$bal_res_852" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$$bal_res_852_853" = bitcast %TName_Option_Uint128* %"$bal_res_852" to i8*
  %"$_literal_cost_call_854" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i8* %"$$bal_res_852_853")
  %"$gasrem_855" = load i64, i64* @_gasrem, align 8
  %"$gascmp_856" = icmp ugt i64 %"$_literal_cost_call_854", %"$gasrem_855"
  br i1 %"$gascmp_856", label %"$out_of_gas_857", label %"$have_gas_858"

"$out_of_gas_857":                                ; preds = %"$have_gas_845"
  call void @_out_of_gas()
  br label %"$have_gas_858"

"$have_gas_858":                                  ; preds = %"$out_of_gas_857", %"$have_gas_845"
  %"$consume_859" = sub i64 %"$gasrem_855", %"$_literal_cost_call_854"
  store i64 %"$consume_859", i64* @_gasrem, align 8
  %"$execptr_load_860" = load i8*, i8** @_execptr, align 8
  %"$bal_res_862" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$update_value_863" = bitcast %TName_Option_Uint128* %"$bal_res_862" to i8*
  call void @_update_field(i8* %"$execptr_load_860", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_1_bal_res_861", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_863")
  %f = alloca %Uint128, align 8
  %"$execptr_load_865" = load i8*, i8** @_execptr, align 8
  %"$f_x_as_address_866" = alloca [20 x i8], align 1
  %"$x_as_address_867" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_867", [20 x i8]* %"$f_x_as_address_866", align 1
  %"$f_call_868" = call i8* @_fetch_remote_field(i8* %"$execptr_load_865", [20 x i8]* %"$f_x_as_address_866", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_864", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$f_869" = bitcast i8* %"$f_call_868" to %Uint128*
  %"$f_870" = load %Uint128, %Uint128* %"$f_869", align 8
  store %Uint128 %"$f_870", %Uint128* %f, align 8
  %"$_literal_cost_f_871" = alloca %Uint128, align 8
  %"$f_872" = load %Uint128, %Uint128* %f, align 8
  store %Uint128 %"$f_872", %Uint128* %"$_literal_cost_f_871", align 8
  %"$$_literal_cost_f_871_873" = bitcast %Uint128* %"$_literal_cost_f_871" to i8*
  %"$_literal_cost_call_874" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_f_871_873")
  %"$gasadd_875" = add i64 %"$_literal_cost_call_874", 0
  %"$gasrem_876" = load i64, i64* @_gasrem, align 8
  %"$gascmp_877" = icmp ugt i64 %"$gasadd_875", %"$gasrem_876"
  br i1 %"$gascmp_877", label %"$out_of_gas_878", label %"$have_gas_879"

"$out_of_gas_878":                                ; preds = %"$have_gas_858"
  call void @_out_of_gas()
  br label %"$have_gas_879"

"$have_gas_879":                                  ; preds = %"$out_of_gas_878", %"$have_gas_858"
  %"$consume_880" = sub i64 %"$gasrem_876", %"$gasadd_875"
  store i64 %"$consume_880", i64* @_gasrem, align 8
  %"$gasrem_881" = load i64, i64* @_gasrem, align 8
  %"$gascmp_882" = icmp ugt i64 1, %"$gasrem_881"
  br i1 %"$gascmp_882", label %"$out_of_gas_883", label %"$have_gas_884"

"$out_of_gas_883":                                ; preds = %"$have_gas_879"
  call void @_out_of_gas()
  br label %"$have_gas_884"

"$have_gas_884":                                  ; preds = %"$out_of_gas_883", %"$have_gas_879"
  %"$consume_885" = sub i64 %"$gasrem_881", 1
  store i64 %"$consume_885", i64* @_gasrem, align 8
  %f_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_886" = load i64, i64* @_gasrem, align 8
  %"$gascmp_887" = icmp ugt i64 1, %"$gasrem_886"
  br i1 %"$gascmp_887", label %"$out_of_gas_888", label %"$have_gas_889"

"$out_of_gas_888":                                ; preds = %"$have_gas_884"
  call void @_out_of_gas()
  br label %"$have_gas_889"

"$have_gas_889":                                  ; preds = %"$out_of_gas_888", %"$have_gas_884"
  %"$consume_890" = sub i64 %"$gasrem_886", 1
  store i64 %"$consume_890", i64* @_gasrem, align 8
  %"$f_891" = load %Uint128, %Uint128* %f, align 8
  %"$adtval_892_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_892_salloc" = call i8* @_salloc(i8* %"$adtval_892_load", i64 17)
  %"$adtval_892" = bitcast i8* %"$adtval_892_salloc" to %CName_Some_Uint128*
  %"$adtgep_893" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_892", i32 0, i32 0
  store i8 0, i8* %"$adtgep_893", align 1
  %"$adtgep_894" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_892", i32 0, i32 1
  store %Uint128 %"$f_891", %Uint128* %"$adtgep_894", align 8
  %"$adtptr_895" = bitcast %CName_Some_Uint128* %"$adtval_892" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_895", %TName_Option_Uint128** %f_res, align 8
  %"$f_res_896" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$$f_res_896_897" = bitcast %TName_Option_Uint128* %"$f_res_896" to i8*
  %"$_literal_cost_call_898" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i8* %"$$f_res_896_897")
  %"$gasrem_899" = load i64, i64* @_gasrem, align 8
  %"$gascmp_900" = icmp ugt i64 %"$_literal_cost_call_898", %"$gasrem_899"
  br i1 %"$gascmp_900", label %"$out_of_gas_901", label %"$have_gas_902"

"$out_of_gas_901":                                ; preds = %"$have_gas_889"
  call void @_out_of_gas()
  br label %"$have_gas_902"

"$have_gas_902":                                  ; preds = %"$out_of_gas_901", %"$have_gas_889"
  %"$consume_903" = sub i64 %"$gasrem_899", %"$_literal_cost_call_898"
  store i64 %"$consume_903", i64* @_gasrem, align 8
  %"$execptr_load_904" = load i8*, i8** @_execptr, align 8
  %"$f_res_906" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$update_value_907" = bitcast %TName_Option_Uint128* %"$f_res_906" to i8*
  call void @_update_field(i8* %"$execptr_load_904", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_1_f_res_905", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_907")
  %g = alloca %TName_Bool*, align 8
  %"$execptr_load_909" = load i8*, i8** @_execptr, align 8
  %"$g_x_as_address_910" = alloca [20 x i8], align 1
  %"$x_as_address_911" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_911", [20 x i8]* %"$g_x_as_address_910", align 1
  %"$g_call_912" = call i8* @_fetch_remote_field(i8* %"$execptr_load_909", [20 x i8]* %"$g_x_as_address_910", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_908", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i32 0, i8* null, i32 1)
  %"$g_913" = bitcast i8* %"$g_call_912" to %TName_Bool*
  store %TName_Bool* %"$g_913", %TName_Bool** %g, align 8
  %"$g_914" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$$g_914_915" = bitcast %TName_Bool* %"$g_914" to i8*
  %"$_literal_cost_call_916" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i8* %"$$g_914_915")
  %"$gasadd_917" = add i64 %"$_literal_cost_call_916", 0
  %"$gasrem_918" = load i64, i64* @_gasrem, align 8
  %"$gascmp_919" = icmp ugt i64 %"$gasadd_917", %"$gasrem_918"
  br i1 %"$gascmp_919", label %"$out_of_gas_920", label %"$have_gas_921"

"$out_of_gas_920":                                ; preds = %"$have_gas_902"
  call void @_out_of_gas()
  br label %"$have_gas_921"

"$have_gas_921":                                  ; preds = %"$out_of_gas_920", %"$have_gas_902"
  %"$consume_922" = sub i64 %"$gasrem_918", %"$gasadd_917"
  store i64 %"$consume_922", i64* @_gasrem, align 8
  %"$gasrem_923" = load i64, i64* @_gasrem, align 8
  %"$gascmp_924" = icmp ugt i64 1, %"$gasrem_923"
  br i1 %"$gascmp_924", label %"$out_of_gas_925", label %"$have_gas_926"

"$out_of_gas_925":                                ; preds = %"$have_gas_921"
  call void @_out_of_gas()
  br label %"$have_gas_926"

"$have_gas_926":                                  ; preds = %"$out_of_gas_925", %"$have_gas_921"
  %"$consume_927" = sub i64 %"$gasrem_923", 1
  store i64 %"$consume_927", i64* @_gasrem, align 8
  %g_res = alloca %TName_Option_Bool*, align 8
  %"$gasrem_928" = load i64, i64* @_gasrem, align 8
  %"$gascmp_929" = icmp ugt i64 1, %"$gasrem_928"
  br i1 %"$gascmp_929", label %"$out_of_gas_930", label %"$have_gas_931"

"$out_of_gas_930":                                ; preds = %"$have_gas_926"
  call void @_out_of_gas()
  br label %"$have_gas_931"

"$have_gas_931":                                  ; preds = %"$out_of_gas_930", %"$have_gas_926"
  %"$consume_932" = sub i64 %"$gasrem_928", 1
  store i64 %"$consume_932", i64* @_gasrem, align 8
  %"$g_933" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$adtval_934_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_934_salloc" = call i8* @_salloc(i8* %"$adtval_934_load", i64 9)
  %"$adtval_934" = bitcast i8* %"$adtval_934_salloc" to %CName_Some_Bool*
  %"$adtgep_935" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_934", i32 0, i32 0
  store i8 0, i8* %"$adtgep_935", align 1
  %"$adtgep_936" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_934", i32 0, i32 1
  store %TName_Bool* %"$g_933", %TName_Bool** %"$adtgep_936", align 8
  %"$adtptr_937" = bitcast %CName_Some_Bool* %"$adtval_934" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_937", %TName_Option_Bool** %g_res, align 8
  %"$g_res_938" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$$g_res_938_939" = bitcast %TName_Option_Bool* %"$g_res_938" to i8*
  %"$_literal_cost_call_940" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i8* %"$$g_res_938_939")
  %"$gasrem_941" = load i64, i64* @_gasrem, align 8
  %"$gascmp_942" = icmp ugt i64 %"$_literal_cost_call_940", %"$gasrem_941"
  br i1 %"$gascmp_942", label %"$out_of_gas_943", label %"$have_gas_944"

"$out_of_gas_943":                                ; preds = %"$have_gas_931"
  call void @_out_of_gas()
  br label %"$have_gas_944"

"$have_gas_944":                                  ; preds = %"$out_of_gas_943", %"$have_gas_931"
  %"$consume_945" = sub i64 %"$gasrem_941", %"$_literal_cost_call_940"
  store i64 %"$consume_945", i64* @_gasrem, align 8
  %"$execptr_load_946" = load i8*, i8** @_execptr, align 8
  %"$g_res_948" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$update_value_949" = bitcast %TName_Option_Bool* %"$g_res_948" to i8*
  call void @_update_field(i8* %"$execptr_load_946", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_1_g_res_947", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i32 0, i8* null, i8* %"$update_value_949")
  br label %"$matchsucc_811"

"$None_950":                                      ; preds = %"$have_gas_809"
  %"$x_cast_951" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_812" to %"CName_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  br label %"$matchsucc_811"

"$empty_default_815":                             ; preds = %"$have_gas_809"
  br label %"$matchsucc_811"

"$matchsucc_811":                                 ; preds = %"$None_950", %"$have_gas_944", %"$empty_default_815"
  ret void
}

define void @CastTest6_1(i8* %0) {
entry:
  %"$_amount_953" = getelementptr i8, i8* %0, i32 0
  %"$_amount_954" = bitcast i8* %"$_amount_953" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_954", align 8
  %"$_origin_955" = getelementptr i8, i8* %0, i32 16
  %"$_origin_956" = bitcast i8* %"$_origin_955" to [20 x i8]*
  %"$_sender_957" = getelementptr i8, i8* %0, i32 36
  %"$_sender_958" = bitcast i8* %"$_sender_957" to [20 x i8]*
  %"$x_959" = getelementptr i8, i8* %0, i32 56
  %"$x_960" = bitcast i8* %"$x_959" to [20 x i8]*
  call void @"$CastTest6_1_793"(%Uint128 %_amount, [20 x i8]* %"$_origin_956", [20 x i8]* %"$_sender_958", [20 x i8]* %"$x_960")
  ret void
}

define internal void @"$CastTest6_2_961"(%Uint128 %_amount, [20 x i8]* %"$_origin_962", [20 x i8]* %"$_sender_963", [20 x i8]* %"$x_964") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_962", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_963", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_964", align 1
  %"$gasrem_965" = load i64, i64* @_gasrem, align 8
  %"$gascmp_966" = icmp ugt i64 5, %"$gasrem_965"
  br i1 %"$gascmp_966", label %"$out_of_gas_967", label %"$have_gas_968"

"$out_of_gas_967":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_968"

"$have_gas_968":                                  ; preds = %"$out_of_gas_967", %entry
  %"$consume_969" = sub i64 %"$gasrem_965", 5
  store i64 %"$consume_969", i64* @_gasrem, align 8
  %x_cast = alloca %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, align 8
  %"$execptr_load_970" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_971" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_971", align 1
  %"$_dynamic_typecast_call_972" = call i8* @_dynamic_typecast(i8* %"$execptr_load_970", [20 x i8]* %"$_dynamic_typecast_x_971", %_TyDescrTy_Typ* @"$TyDescr_Addr_72")
  %"$_dynamic_typecast_973" = bitcast i8* %"$_dynamic_typecast_call_972" to %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  store %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$_dynamic_typecast_973", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$gasrem_974" = load i64, i64* @_gasrem, align 8
  %"$gascmp_975" = icmp ugt i64 2, %"$gasrem_974"
  br i1 %"$gascmp_975", label %"$out_of_gas_976", label %"$have_gas_977"

"$out_of_gas_976":                                ; preds = %"$have_gas_968"
  call void @_out_of_gas()
  br label %"$have_gas_977"

"$have_gas_977":                                  ; preds = %"$out_of_gas_976", %"$have_gas_968"
  %"$consume_978" = sub i64 %"$gasrem_974", 2
  store i64 %"$consume_978", i64* @_gasrem, align 8
  %"$x_cast_980" = load %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$x_cast_tag_981" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_980", i32 0, i32 0
  %"$x_cast_tag_982" = load i8, i8* %"$x_cast_tag_981", align 1
  switch i8 %"$x_cast_tag_982", label %"$empty_default_983" [
    i8 0, label %"$Some_984"
    i8 1, label %"$None_1118"
  ]

"$Some_984":                                      ; preds = %"$have_gas_977"
  %"$x_cast_985" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_980" to %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  %"$x_as_address_gep_986" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_985", i32 0, i32 1
  %"$x_as_address_load_987" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_986", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_987", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_989" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_990" = alloca [20 x i8], align 1
  %"$x_as_address_991" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_991", [20 x i8]* %"$bal_x_as_address_990", align 1
  %"$bal_call_992" = call i8* @_fetch_remote_field(i8* %"$execptr_load_989", [20 x i8]* %"$bal_x_as_address_990", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_988", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$bal_993" = bitcast i8* %"$bal_call_992" to %Uint128*
  %"$bal_994" = load %Uint128, %Uint128* %"$bal_993", align 8
  store %Uint128 %"$bal_994", %Uint128* %bal, align 8
  %"$_literal_cost_bal_995" = alloca %Uint128, align 8
  %"$bal_996" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_996", %Uint128* %"$_literal_cost_bal_995", align 8
  %"$$_literal_cost_bal_995_997" = bitcast %Uint128* %"$_literal_cost_bal_995" to i8*
  %"$_literal_cost_call_998" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_995_997")
  %"$gasadd_999" = add i64 %"$_literal_cost_call_998", 0
  %"$gasrem_1000" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1001" = icmp ugt i64 %"$gasadd_999", %"$gasrem_1000"
  br i1 %"$gascmp_1001", label %"$out_of_gas_1002", label %"$have_gas_1003"

"$out_of_gas_1002":                               ; preds = %"$Some_984"
  call void @_out_of_gas()
  br label %"$have_gas_1003"

"$have_gas_1003":                                 ; preds = %"$out_of_gas_1002", %"$Some_984"
  %"$consume_1004" = sub i64 %"$gasrem_1000", %"$gasadd_999"
  store i64 %"$consume_1004", i64* @_gasrem, align 8
  %"$gasrem_1005" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1006" = icmp ugt i64 1, %"$gasrem_1005"
  br i1 %"$gascmp_1006", label %"$out_of_gas_1007", label %"$have_gas_1008"

"$out_of_gas_1007":                               ; preds = %"$have_gas_1003"
  call void @_out_of_gas()
  br label %"$have_gas_1008"

"$have_gas_1008":                                 ; preds = %"$out_of_gas_1007", %"$have_gas_1003"
  %"$consume_1009" = sub i64 %"$gasrem_1005", 1
  store i64 %"$consume_1009", i64* @_gasrem, align 8
  %bal_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1010" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1011" = icmp ugt i64 1, %"$gasrem_1010"
  br i1 %"$gascmp_1011", label %"$out_of_gas_1012", label %"$have_gas_1013"

"$out_of_gas_1012":                               ; preds = %"$have_gas_1008"
  call void @_out_of_gas()
  br label %"$have_gas_1013"

"$have_gas_1013":                                 ; preds = %"$out_of_gas_1012", %"$have_gas_1008"
  %"$consume_1014" = sub i64 %"$gasrem_1010", 1
  store i64 %"$consume_1014", i64* @_gasrem, align 8
  %"$bal_1015" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_1016_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1016_salloc" = call i8* @_salloc(i8* %"$adtval_1016_load", i64 17)
  %"$adtval_1016" = bitcast i8* %"$adtval_1016_salloc" to %CName_Some_Uint128*
  %"$adtgep_1017" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1016", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1017", align 1
  %"$adtgep_1018" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1016", i32 0, i32 1
  store %Uint128 %"$bal_1015", %Uint128* %"$adtgep_1018", align 8
  %"$adtptr_1019" = bitcast %CName_Some_Uint128* %"$adtval_1016" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1019", %TName_Option_Uint128** %bal_res, align 8
  %"$bal_res_1020" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$$bal_res_1020_1021" = bitcast %TName_Option_Uint128* %"$bal_res_1020" to i8*
  %"$_literal_cost_call_1022" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i8* %"$$bal_res_1020_1021")
  %"$gasrem_1023" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1024" = icmp ugt i64 %"$_literal_cost_call_1022", %"$gasrem_1023"
  br i1 %"$gascmp_1024", label %"$out_of_gas_1025", label %"$have_gas_1026"

"$out_of_gas_1025":                               ; preds = %"$have_gas_1013"
  call void @_out_of_gas()
  br label %"$have_gas_1026"

"$have_gas_1026":                                 ; preds = %"$out_of_gas_1025", %"$have_gas_1013"
  %"$consume_1027" = sub i64 %"$gasrem_1023", %"$_literal_cost_call_1022"
  store i64 %"$consume_1027", i64* @_gasrem, align 8
  %"$execptr_load_1028" = load i8*, i8** @_execptr, align 8
  %"$bal_res_1030" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$update_value_1031" = bitcast %TName_Option_Uint128* %"$bal_res_1030" to i8*
  call void @_update_field(i8* %"$execptr_load_1028", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_2_bal_res_1029", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_1031")
  %f = alloca %Uint128, align 8
  %"$execptr_load_1033" = load i8*, i8** @_execptr, align 8
  %"$f_x_as_address_1034" = alloca [20 x i8], align 1
  %"$x_as_address_1035" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1035", [20 x i8]* %"$f_x_as_address_1034", align 1
  %"$f_call_1036" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1033", [20 x i8]* %"$f_x_as_address_1034", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_1032", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$f_1037" = bitcast i8* %"$f_call_1036" to %Uint128*
  %"$f_1038" = load %Uint128, %Uint128* %"$f_1037", align 8
  store %Uint128 %"$f_1038", %Uint128* %f, align 8
  %"$_literal_cost_f_1039" = alloca %Uint128, align 8
  %"$f_1040" = load %Uint128, %Uint128* %f, align 8
  store %Uint128 %"$f_1040", %Uint128* %"$_literal_cost_f_1039", align 8
  %"$$_literal_cost_f_1039_1041" = bitcast %Uint128* %"$_literal_cost_f_1039" to i8*
  %"$_literal_cost_call_1042" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_f_1039_1041")
  %"$gasadd_1043" = add i64 %"$_literal_cost_call_1042", 0
  %"$gasrem_1044" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1045" = icmp ugt i64 %"$gasadd_1043", %"$gasrem_1044"
  br i1 %"$gascmp_1045", label %"$out_of_gas_1046", label %"$have_gas_1047"

"$out_of_gas_1046":                               ; preds = %"$have_gas_1026"
  call void @_out_of_gas()
  br label %"$have_gas_1047"

"$have_gas_1047":                                 ; preds = %"$out_of_gas_1046", %"$have_gas_1026"
  %"$consume_1048" = sub i64 %"$gasrem_1044", %"$gasadd_1043"
  store i64 %"$consume_1048", i64* @_gasrem, align 8
  %"$gasrem_1049" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1050" = icmp ugt i64 1, %"$gasrem_1049"
  br i1 %"$gascmp_1050", label %"$out_of_gas_1051", label %"$have_gas_1052"

"$out_of_gas_1051":                               ; preds = %"$have_gas_1047"
  call void @_out_of_gas()
  br label %"$have_gas_1052"

"$have_gas_1052":                                 ; preds = %"$out_of_gas_1051", %"$have_gas_1047"
  %"$consume_1053" = sub i64 %"$gasrem_1049", 1
  store i64 %"$consume_1053", i64* @_gasrem, align 8
  %f_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1054" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1055" = icmp ugt i64 1, %"$gasrem_1054"
  br i1 %"$gascmp_1055", label %"$out_of_gas_1056", label %"$have_gas_1057"

"$out_of_gas_1056":                               ; preds = %"$have_gas_1052"
  call void @_out_of_gas()
  br label %"$have_gas_1057"

"$have_gas_1057":                                 ; preds = %"$out_of_gas_1056", %"$have_gas_1052"
  %"$consume_1058" = sub i64 %"$gasrem_1054", 1
  store i64 %"$consume_1058", i64* @_gasrem, align 8
  %"$f_1059" = load %Uint128, %Uint128* %f, align 8
  %"$adtval_1060_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1060_salloc" = call i8* @_salloc(i8* %"$adtval_1060_load", i64 17)
  %"$adtval_1060" = bitcast i8* %"$adtval_1060_salloc" to %CName_Some_Uint128*
  %"$adtgep_1061" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1060", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1061", align 1
  %"$adtgep_1062" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1060", i32 0, i32 1
  store %Uint128 %"$f_1059", %Uint128* %"$adtgep_1062", align 8
  %"$adtptr_1063" = bitcast %CName_Some_Uint128* %"$adtval_1060" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1063", %TName_Option_Uint128** %f_res, align 8
  %"$f_res_1064" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$$f_res_1064_1065" = bitcast %TName_Option_Uint128* %"$f_res_1064" to i8*
  %"$_literal_cost_call_1066" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i8* %"$$f_res_1064_1065")
  %"$gasrem_1067" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1068" = icmp ugt i64 %"$_literal_cost_call_1066", %"$gasrem_1067"
  br i1 %"$gascmp_1068", label %"$out_of_gas_1069", label %"$have_gas_1070"

"$out_of_gas_1069":                               ; preds = %"$have_gas_1057"
  call void @_out_of_gas()
  br label %"$have_gas_1070"

"$have_gas_1070":                                 ; preds = %"$out_of_gas_1069", %"$have_gas_1057"
  %"$consume_1071" = sub i64 %"$gasrem_1067", %"$_literal_cost_call_1066"
  store i64 %"$consume_1071", i64* @_gasrem, align 8
  %"$execptr_load_1072" = load i8*, i8** @_execptr, align 8
  %"$f_res_1074" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$update_value_1075" = bitcast %TName_Option_Uint128* %"$f_res_1074" to i8*
  call void @_update_field(i8* %"$execptr_load_1072", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_2_f_res_1073", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_1075")
  %g = alloca %TName_Bool*, align 8
  %"$execptr_load_1077" = load i8*, i8** @_execptr, align 8
  %"$g_x_as_address_1078" = alloca [20 x i8], align 1
  %"$x_as_address_1079" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1079", [20 x i8]* %"$g_x_as_address_1078", align 1
  %"$g_call_1080" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1077", [20 x i8]* %"$g_x_as_address_1078", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_1076", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i32 0, i8* null, i32 1)
  %"$g_1081" = bitcast i8* %"$g_call_1080" to %TName_Bool*
  store %TName_Bool* %"$g_1081", %TName_Bool** %g, align 8
  %"$g_1082" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$$g_1082_1083" = bitcast %TName_Bool* %"$g_1082" to i8*
  %"$_literal_cost_call_1084" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i8* %"$$g_1082_1083")
  %"$gasadd_1085" = add i64 %"$_literal_cost_call_1084", 0
  %"$gasrem_1086" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1087" = icmp ugt i64 %"$gasadd_1085", %"$gasrem_1086"
  br i1 %"$gascmp_1087", label %"$out_of_gas_1088", label %"$have_gas_1089"

"$out_of_gas_1088":                               ; preds = %"$have_gas_1070"
  call void @_out_of_gas()
  br label %"$have_gas_1089"

"$have_gas_1089":                                 ; preds = %"$out_of_gas_1088", %"$have_gas_1070"
  %"$consume_1090" = sub i64 %"$gasrem_1086", %"$gasadd_1085"
  store i64 %"$consume_1090", i64* @_gasrem, align 8
  %"$gasrem_1091" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1092" = icmp ugt i64 1, %"$gasrem_1091"
  br i1 %"$gascmp_1092", label %"$out_of_gas_1093", label %"$have_gas_1094"

"$out_of_gas_1093":                               ; preds = %"$have_gas_1089"
  call void @_out_of_gas()
  br label %"$have_gas_1094"

"$have_gas_1094":                                 ; preds = %"$out_of_gas_1093", %"$have_gas_1089"
  %"$consume_1095" = sub i64 %"$gasrem_1091", 1
  store i64 %"$consume_1095", i64* @_gasrem, align 8
  %g_res = alloca %TName_Option_Bool*, align 8
  %"$gasrem_1096" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1097" = icmp ugt i64 1, %"$gasrem_1096"
  br i1 %"$gascmp_1097", label %"$out_of_gas_1098", label %"$have_gas_1099"

"$out_of_gas_1098":                               ; preds = %"$have_gas_1094"
  call void @_out_of_gas()
  br label %"$have_gas_1099"

"$have_gas_1099":                                 ; preds = %"$out_of_gas_1098", %"$have_gas_1094"
  %"$consume_1100" = sub i64 %"$gasrem_1096", 1
  store i64 %"$consume_1100", i64* @_gasrem, align 8
  %"$g_1101" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$adtval_1102_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1102_salloc" = call i8* @_salloc(i8* %"$adtval_1102_load", i64 9)
  %"$adtval_1102" = bitcast i8* %"$adtval_1102_salloc" to %CName_Some_Bool*
  %"$adtgep_1103" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1102", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1103", align 1
  %"$adtgep_1104" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1102", i32 0, i32 1
  store %TName_Bool* %"$g_1101", %TName_Bool** %"$adtgep_1104", align 8
  %"$adtptr_1105" = bitcast %CName_Some_Bool* %"$adtval_1102" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_1105", %TName_Option_Bool** %g_res, align 8
  %"$g_res_1106" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$$g_res_1106_1107" = bitcast %TName_Option_Bool* %"$g_res_1106" to i8*
  %"$_literal_cost_call_1108" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i8* %"$$g_res_1106_1107")
  %"$gasrem_1109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1110" = icmp ugt i64 %"$_literal_cost_call_1108", %"$gasrem_1109"
  br i1 %"$gascmp_1110", label %"$out_of_gas_1111", label %"$have_gas_1112"

"$out_of_gas_1111":                               ; preds = %"$have_gas_1099"
  call void @_out_of_gas()
  br label %"$have_gas_1112"

"$have_gas_1112":                                 ; preds = %"$out_of_gas_1111", %"$have_gas_1099"
  %"$consume_1113" = sub i64 %"$gasrem_1109", %"$_literal_cost_call_1108"
  store i64 %"$consume_1113", i64* @_gasrem, align 8
  %"$execptr_load_1114" = load i8*, i8** @_execptr, align 8
  %"$g_res_1116" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$update_value_1117" = bitcast %TName_Option_Bool* %"$g_res_1116" to i8*
  call void @_update_field(i8* %"$execptr_load_1114", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_2_g_res_1115", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i32 0, i8* null, i8* %"$update_value_1117")
  br label %"$matchsucc_979"

"$None_1118":                                     ; preds = %"$have_gas_977"
  %"$x_cast_1119" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_980" to %"CName_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  br label %"$matchsucc_979"

"$empty_default_983":                             ; preds = %"$have_gas_977"
  br label %"$matchsucc_979"

"$matchsucc_979":                                 ; preds = %"$None_1118", %"$have_gas_1112", %"$empty_default_983"
  ret void
}

define void @CastTest6_2(i8* %0) {
entry:
  %"$_amount_1121" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1122" = bitcast i8* %"$_amount_1121" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1122", align 8
  %"$_origin_1123" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1124" = bitcast i8* %"$_origin_1123" to [20 x i8]*
  %"$_sender_1125" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1126" = bitcast i8* %"$_sender_1125" to [20 x i8]*
  %"$x_1127" = getelementptr i8, i8* %0, i32 56
  %"$x_1128" = bitcast i8* %"$x_1127" to [20 x i8]*
  call void @"$CastTest6_2_961"(%Uint128 %_amount, [20 x i8]* %"$_origin_1124", [20 x i8]* %"$_sender_1126", [20 x i8]* %"$x_1128")
  ret void
}

define internal void @"$CastTest6_3_1129"(%Uint128 %_amount, [20 x i8]* %"$_origin_1130", [20 x i8]* %"$_sender_1131", [20 x i8]* %"$x_1132") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1130", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1131", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_1132", align 1
  %"$gasrem_1133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1134" = icmp ugt i64 5, %"$gasrem_1133"
  br i1 %"$gascmp_1134", label %"$out_of_gas_1135", label %"$have_gas_1136"

"$out_of_gas_1135":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1136"

"$have_gas_1136":                                 ; preds = %"$out_of_gas_1135", %entry
  %"$consume_1137" = sub i64 %"$gasrem_1133", 5
  store i64 %"$consume_1137", i64* @_gasrem, align 8
  %x_cast = alloca %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, align 8
  %"$execptr_load_1138" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_1139" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_1139", align 1
  %"$_dynamic_typecast_call_1140" = call i8* @_dynamic_typecast(i8* %"$execptr_load_1138", [20 x i8]* %"$_dynamic_typecast_x_1139", %_TyDescrTy_Typ* @"$TyDescr_Addr_72")
  %"$_dynamic_typecast_1141" = bitcast i8* %"$_dynamic_typecast_call_1140" to %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  store %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$_dynamic_typecast_1141", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$gasrem_1142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1143" = icmp ugt i64 2, %"$gasrem_1142"
  br i1 %"$gascmp_1143", label %"$out_of_gas_1144", label %"$have_gas_1145"

"$out_of_gas_1144":                               ; preds = %"$have_gas_1136"
  call void @_out_of_gas()
  br label %"$have_gas_1145"

"$have_gas_1145":                                 ; preds = %"$out_of_gas_1144", %"$have_gas_1136"
  %"$consume_1146" = sub i64 %"$gasrem_1142", 2
  store i64 %"$consume_1146", i64* @_gasrem, align 8
  %"$x_cast_1148" = load %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$x_cast_tag_1149" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1148", i32 0, i32 0
  %"$x_cast_tag_1150" = load i8, i8* %"$x_cast_tag_1149", align 1
  switch i8 %"$x_cast_tag_1150", label %"$empty_default_1151" [
    i8 0, label %"$Some_1152"
    i8 1, label %"$None_1286"
  ]

"$Some_1152":                                     ; preds = %"$have_gas_1145"
  %"$x_cast_1153" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1148" to %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  %"$x_as_address_gep_1154" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1153", i32 0, i32 1
  %"$x_as_address_load_1155" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_1154", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_1155", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_1157" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_1158" = alloca [20 x i8], align 1
  %"$x_as_address_1159" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1159", [20 x i8]* %"$bal_x_as_address_1158", align 1
  %"$bal_call_1160" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1157", [20 x i8]* %"$bal_x_as_address_1158", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_1156", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$bal_1161" = bitcast i8* %"$bal_call_1160" to %Uint128*
  %"$bal_1162" = load %Uint128, %Uint128* %"$bal_1161", align 8
  store %Uint128 %"$bal_1162", %Uint128* %bal, align 8
  %"$_literal_cost_bal_1163" = alloca %Uint128, align 8
  %"$bal_1164" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_1164", %Uint128* %"$_literal_cost_bal_1163", align 8
  %"$$_literal_cost_bal_1163_1165" = bitcast %Uint128* %"$_literal_cost_bal_1163" to i8*
  %"$_literal_cost_call_1166" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_1163_1165")
  %"$gasadd_1167" = add i64 %"$_literal_cost_call_1166", 0
  %"$gasrem_1168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1169" = icmp ugt i64 %"$gasadd_1167", %"$gasrem_1168"
  br i1 %"$gascmp_1169", label %"$out_of_gas_1170", label %"$have_gas_1171"

"$out_of_gas_1170":                               ; preds = %"$Some_1152"
  call void @_out_of_gas()
  br label %"$have_gas_1171"

"$have_gas_1171":                                 ; preds = %"$out_of_gas_1170", %"$Some_1152"
  %"$consume_1172" = sub i64 %"$gasrem_1168", %"$gasadd_1167"
  store i64 %"$consume_1172", i64* @_gasrem, align 8
  %"$gasrem_1173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1174" = icmp ugt i64 1, %"$gasrem_1173"
  br i1 %"$gascmp_1174", label %"$out_of_gas_1175", label %"$have_gas_1176"

"$out_of_gas_1175":                               ; preds = %"$have_gas_1171"
  call void @_out_of_gas()
  br label %"$have_gas_1176"

"$have_gas_1176":                                 ; preds = %"$out_of_gas_1175", %"$have_gas_1171"
  %"$consume_1177" = sub i64 %"$gasrem_1173", 1
  store i64 %"$consume_1177", i64* @_gasrem, align 8
  %bal_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1178" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1179" = icmp ugt i64 1, %"$gasrem_1178"
  br i1 %"$gascmp_1179", label %"$out_of_gas_1180", label %"$have_gas_1181"

"$out_of_gas_1180":                               ; preds = %"$have_gas_1176"
  call void @_out_of_gas()
  br label %"$have_gas_1181"

"$have_gas_1181":                                 ; preds = %"$out_of_gas_1180", %"$have_gas_1176"
  %"$consume_1182" = sub i64 %"$gasrem_1178", 1
  store i64 %"$consume_1182", i64* @_gasrem, align 8
  %"$bal_1183" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_1184_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1184_salloc" = call i8* @_salloc(i8* %"$adtval_1184_load", i64 17)
  %"$adtval_1184" = bitcast i8* %"$adtval_1184_salloc" to %CName_Some_Uint128*
  %"$adtgep_1185" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1184", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1185", align 1
  %"$adtgep_1186" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1184", i32 0, i32 1
  store %Uint128 %"$bal_1183", %Uint128* %"$adtgep_1186", align 8
  %"$adtptr_1187" = bitcast %CName_Some_Uint128* %"$adtval_1184" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1187", %TName_Option_Uint128** %bal_res, align 8
  %"$bal_res_1188" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$$bal_res_1188_1189" = bitcast %TName_Option_Uint128* %"$bal_res_1188" to i8*
  %"$_literal_cost_call_1190" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i8* %"$$bal_res_1188_1189")
  %"$gasrem_1191" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1192" = icmp ugt i64 %"$_literal_cost_call_1190", %"$gasrem_1191"
  br i1 %"$gascmp_1192", label %"$out_of_gas_1193", label %"$have_gas_1194"

"$out_of_gas_1193":                               ; preds = %"$have_gas_1181"
  call void @_out_of_gas()
  br label %"$have_gas_1194"

"$have_gas_1194":                                 ; preds = %"$out_of_gas_1193", %"$have_gas_1181"
  %"$consume_1195" = sub i64 %"$gasrem_1191", %"$_literal_cost_call_1190"
  store i64 %"$consume_1195", i64* @_gasrem, align 8
  %"$execptr_load_1196" = load i8*, i8** @_execptr, align 8
  %"$bal_res_1198" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$update_value_1199" = bitcast %TName_Option_Uint128* %"$bal_res_1198" to i8*
  call void @_update_field(i8* %"$execptr_load_1196", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_3_bal_res_1197", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_1199")
  %f = alloca %Uint128, align 8
  %"$execptr_load_1201" = load i8*, i8** @_execptr, align 8
  %"$f_x_as_address_1202" = alloca [20 x i8], align 1
  %"$x_as_address_1203" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1203", [20 x i8]* %"$f_x_as_address_1202", align 1
  %"$f_call_1204" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1201", [20 x i8]* %"$f_x_as_address_1202", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_1200", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$f_1205" = bitcast i8* %"$f_call_1204" to %Uint128*
  %"$f_1206" = load %Uint128, %Uint128* %"$f_1205", align 8
  store %Uint128 %"$f_1206", %Uint128* %f, align 8
  %"$_literal_cost_f_1207" = alloca %Uint128, align 8
  %"$f_1208" = load %Uint128, %Uint128* %f, align 8
  store %Uint128 %"$f_1208", %Uint128* %"$_literal_cost_f_1207", align 8
  %"$$_literal_cost_f_1207_1209" = bitcast %Uint128* %"$_literal_cost_f_1207" to i8*
  %"$_literal_cost_call_1210" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_f_1207_1209")
  %"$gasadd_1211" = add i64 %"$_literal_cost_call_1210", 0
  %"$gasrem_1212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1213" = icmp ugt i64 %"$gasadd_1211", %"$gasrem_1212"
  br i1 %"$gascmp_1213", label %"$out_of_gas_1214", label %"$have_gas_1215"

"$out_of_gas_1214":                               ; preds = %"$have_gas_1194"
  call void @_out_of_gas()
  br label %"$have_gas_1215"

"$have_gas_1215":                                 ; preds = %"$out_of_gas_1214", %"$have_gas_1194"
  %"$consume_1216" = sub i64 %"$gasrem_1212", %"$gasadd_1211"
  store i64 %"$consume_1216", i64* @_gasrem, align 8
  %"$gasrem_1217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1218" = icmp ugt i64 1, %"$gasrem_1217"
  br i1 %"$gascmp_1218", label %"$out_of_gas_1219", label %"$have_gas_1220"

"$out_of_gas_1219":                               ; preds = %"$have_gas_1215"
  call void @_out_of_gas()
  br label %"$have_gas_1220"

"$have_gas_1220":                                 ; preds = %"$out_of_gas_1219", %"$have_gas_1215"
  %"$consume_1221" = sub i64 %"$gasrem_1217", 1
  store i64 %"$consume_1221", i64* @_gasrem, align 8
  %f_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1222" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1223" = icmp ugt i64 1, %"$gasrem_1222"
  br i1 %"$gascmp_1223", label %"$out_of_gas_1224", label %"$have_gas_1225"

"$out_of_gas_1224":                               ; preds = %"$have_gas_1220"
  call void @_out_of_gas()
  br label %"$have_gas_1225"

"$have_gas_1225":                                 ; preds = %"$out_of_gas_1224", %"$have_gas_1220"
  %"$consume_1226" = sub i64 %"$gasrem_1222", 1
  store i64 %"$consume_1226", i64* @_gasrem, align 8
  %"$f_1227" = load %Uint128, %Uint128* %f, align 8
  %"$adtval_1228_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1228_salloc" = call i8* @_salloc(i8* %"$adtval_1228_load", i64 17)
  %"$adtval_1228" = bitcast i8* %"$adtval_1228_salloc" to %CName_Some_Uint128*
  %"$adtgep_1229" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1228", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1229", align 1
  %"$adtgep_1230" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1228", i32 0, i32 1
  store %Uint128 %"$f_1227", %Uint128* %"$adtgep_1230", align 8
  %"$adtptr_1231" = bitcast %CName_Some_Uint128* %"$adtval_1228" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1231", %TName_Option_Uint128** %f_res, align 8
  %"$f_res_1232" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$$f_res_1232_1233" = bitcast %TName_Option_Uint128* %"$f_res_1232" to i8*
  %"$_literal_cost_call_1234" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i8* %"$$f_res_1232_1233")
  %"$gasrem_1235" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1236" = icmp ugt i64 %"$_literal_cost_call_1234", %"$gasrem_1235"
  br i1 %"$gascmp_1236", label %"$out_of_gas_1237", label %"$have_gas_1238"

"$out_of_gas_1237":                               ; preds = %"$have_gas_1225"
  call void @_out_of_gas()
  br label %"$have_gas_1238"

"$have_gas_1238":                                 ; preds = %"$out_of_gas_1237", %"$have_gas_1225"
  %"$consume_1239" = sub i64 %"$gasrem_1235", %"$_literal_cost_call_1234"
  store i64 %"$consume_1239", i64* @_gasrem, align 8
  %"$execptr_load_1240" = load i8*, i8** @_execptr, align 8
  %"$f_res_1242" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$update_value_1243" = bitcast %TName_Option_Uint128* %"$f_res_1242" to i8*
  call void @_update_field(i8* %"$execptr_load_1240", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_3_f_res_1241", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_1243")
  %g = alloca %TName_Bool*, align 8
  %"$execptr_load_1245" = load i8*, i8** @_execptr, align 8
  %"$g_x_as_address_1246" = alloca [20 x i8], align 1
  %"$x_as_address_1247" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1247", [20 x i8]* %"$g_x_as_address_1246", align 1
  %"$g_call_1248" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1245", [20 x i8]* %"$g_x_as_address_1246", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_1244", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i32 0, i8* null, i32 1)
  %"$g_1249" = bitcast i8* %"$g_call_1248" to %TName_Bool*
  store %TName_Bool* %"$g_1249", %TName_Bool** %g, align 8
  %"$g_1250" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$$g_1250_1251" = bitcast %TName_Bool* %"$g_1250" to i8*
  %"$_literal_cost_call_1252" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i8* %"$$g_1250_1251")
  %"$gasadd_1253" = add i64 %"$_literal_cost_call_1252", 0
  %"$gasrem_1254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1255" = icmp ugt i64 %"$gasadd_1253", %"$gasrem_1254"
  br i1 %"$gascmp_1255", label %"$out_of_gas_1256", label %"$have_gas_1257"

"$out_of_gas_1256":                               ; preds = %"$have_gas_1238"
  call void @_out_of_gas()
  br label %"$have_gas_1257"

"$have_gas_1257":                                 ; preds = %"$out_of_gas_1256", %"$have_gas_1238"
  %"$consume_1258" = sub i64 %"$gasrem_1254", %"$gasadd_1253"
  store i64 %"$consume_1258", i64* @_gasrem, align 8
  %"$gasrem_1259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1260" = icmp ugt i64 1, %"$gasrem_1259"
  br i1 %"$gascmp_1260", label %"$out_of_gas_1261", label %"$have_gas_1262"

"$out_of_gas_1261":                               ; preds = %"$have_gas_1257"
  call void @_out_of_gas()
  br label %"$have_gas_1262"

"$have_gas_1262":                                 ; preds = %"$out_of_gas_1261", %"$have_gas_1257"
  %"$consume_1263" = sub i64 %"$gasrem_1259", 1
  store i64 %"$consume_1263", i64* @_gasrem, align 8
  %g_res = alloca %TName_Option_Bool*, align 8
  %"$gasrem_1264" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1265" = icmp ugt i64 1, %"$gasrem_1264"
  br i1 %"$gascmp_1265", label %"$out_of_gas_1266", label %"$have_gas_1267"

"$out_of_gas_1266":                               ; preds = %"$have_gas_1262"
  call void @_out_of_gas()
  br label %"$have_gas_1267"

"$have_gas_1267":                                 ; preds = %"$out_of_gas_1266", %"$have_gas_1262"
  %"$consume_1268" = sub i64 %"$gasrem_1264", 1
  store i64 %"$consume_1268", i64* @_gasrem, align 8
  %"$g_1269" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$adtval_1270_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1270_salloc" = call i8* @_salloc(i8* %"$adtval_1270_load", i64 9)
  %"$adtval_1270" = bitcast i8* %"$adtval_1270_salloc" to %CName_Some_Bool*
  %"$adtgep_1271" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1270", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1271", align 1
  %"$adtgep_1272" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1270", i32 0, i32 1
  store %TName_Bool* %"$g_1269", %TName_Bool** %"$adtgep_1272", align 8
  %"$adtptr_1273" = bitcast %CName_Some_Bool* %"$adtval_1270" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_1273", %TName_Option_Bool** %g_res, align 8
  %"$g_res_1274" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$$g_res_1274_1275" = bitcast %TName_Option_Bool* %"$g_res_1274" to i8*
  %"$_literal_cost_call_1276" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i8* %"$$g_res_1274_1275")
  %"$gasrem_1277" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1278" = icmp ugt i64 %"$_literal_cost_call_1276", %"$gasrem_1277"
  br i1 %"$gascmp_1278", label %"$out_of_gas_1279", label %"$have_gas_1280"

"$out_of_gas_1279":                               ; preds = %"$have_gas_1267"
  call void @_out_of_gas()
  br label %"$have_gas_1280"

"$have_gas_1280":                                 ; preds = %"$out_of_gas_1279", %"$have_gas_1267"
  %"$consume_1281" = sub i64 %"$gasrem_1277", %"$_literal_cost_call_1276"
  store i64 %"$consume_1281", i64* @_gasrem, align 8
  %"$execptr_load_1282" = load i8*, i8** @_execptr, align 8
  %"$g_res_1284" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$update_value_1285" = bitcast %TName_Option_Bool* %"$g_res_1284" to i8*
  call void @_update_field(i8* %"$execptr_load_1282", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_3_g_res_1283", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i32 0, i8* null, i8* %"$update_value_1285")
  br label %"$matchsucc_1147"

"$None_1286":                                     ; preds = %"$have_gas_1145"
  %"$x_cast_1287" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1148" to %"CName_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  br label %"$matchsucc_1147"

"$empty_default_1151":                            ; preds = %"$have_gas_1145"
  br label %"$matchsucc_1147"

"$matchsucc_1147":                                ; preds = %"$None_1286", %"$have_gas_1280", %"$empty_default_1151"
  ret void
}

define void @CastTest6_3(i8* %0) {
entry:
  %"$_amount_1289" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1290" = bitcast i8* %"$_amount_1289" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1290", align 8
  %"$_origin_1291" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1292" = bitcast i8* %"$_origin_1291" to [20 x i8]*
  %"$_sender_1293" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1294" = bitcast i8* %"$_sender_1293" to [20 x i8]*
  %"$x_1295" = getelementptr i8, i8* %0, i32 56
  %"$x_1296" = bitcast i8* %"$x_1295" to [20 x i8]*
  call void @"$CastTest6_3_1129"(%Uint128 %_amount, [20 x i8]* %"$_origin_1292", [20 x i8]* %"$_sender_1294", [20 x i8]* %"$x_1296")
  ret void
}

define internal void @"$CastTest6_4_1297"(%Uint128 %_amount, [20 x i8]* %"$_origin_1298", [20 x i8]* %"$_sender_1299", [20 x i8]* %"$x_1300") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1298", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1299", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_1300", align 1
  %"$gasrem_1301" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1302" = icmp ugt i64 5, %"$gasrem_1301"
  br i1 %"$gascmp_1302", label %"$out_of_gas_1303", label %"$have_gas_1304"

"$out_of_gas_1303":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1304"

"$have_gas_1304":                                 ; preds = %"$out_of_gas_1303", %entry
  %"$consume_1305" = sub i64 %"$gasrem_1301", 5
  store i64 %"$consume_1305", i64* @_gasrem, align 8
  %x_cast = alloca %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, align 8
  %"$execptr_load_1306" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_1307" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_1307", align 1
  %"$_dynamic_typecast_call_1308" = call i8* @_dynamic_typecast(i8* %"$execptr_load_1306", [20 x i8]* %"$_dynamic_typecast_x_1307", %_TyDescrTy_Typ* @"$TyDescr_Addr_72")
  %"$_dynamic_typecast_1309" = bitcast i8* %"$_dynamic_typecast_call_1308" to %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  store %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$_dynamic_typecast_1309", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$gasrem_1310" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1311" = icmp ugt i64 2, %"$gasrem_1310"
  br i1 %"$gascmp_1311", label %"$out_of_gas_1312", label %"$have_gas_1313"

"$out_of_gas_1312":                               ; preds = %"$have_gas_1304"
  call void @_out_of_gas()
  br label %"$have_gas_1313"

"$have_gas_1313":                                 ; preds = %"$out_of_gas_1312", %"$have_gas_1304"
  %"$consume_1314" = sub i64 %"$gasrem_1310", 2
  store i64 %"$consume_1314", i64* @_gasrem, align 8
  %"$x_cast_1316" = load %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$x_cast_tag_1317" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1316", i32 0, i32 0
  %"$x_cast_tag_1318" = load i8, i8* %"$x_cast_tag_1317", align 1
  switch i8 %"$x_cast_tag_1318", label %"$empty_default_1319" [
    i8 0, label %"$Some_1320"
    i8 1, label %"$None_1454"
  ]

"$Some_1320":                                     ; preds = %"$have_gas_1313"
  %"$x_cast_1321" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1316" to %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  %"$x_as_address_gep_1322" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1321", i32 0, i32 1
  %"$x_as_address_load_1323" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_1322", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_1323", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_1325" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_1326" = alloca [20 x i8], align 1
  %"$x_as_address_1327" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1327", [20 x i8]* %"$bal_x_as_address_1326", align 1
  %"$bal_call_1328" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1325", [20 x i8]* %"$bal_x_as_address_1326", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_1324", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$bal_1329" = bitcast i8* %"$bal_call_1328" to %Uint128*
  %"$bal_1330" = load %Uint128, %Uint128* %"$bal_1329", align 8
  store %Uint128 %"$bal_1330", %Uint128* %bal, align 8
  %"$_literal_cost_bal_1331" = alloca %Uint128, align 8
  %"$bal_1332" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_1332", %Uint128* %"$_literal_cost_bal_1331", align 8
  %"$$_literal_cost_bal_1331_1333" = bitcast %Uint128* %"$_literal_cost_bal_1331" to i8*
  %"$_literal_cost_call_1334" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_1331_1333")
  %"$gasadd_1335" = add i64 %"$_literal_cost_call_1334", 0
  %"$gasrem_1336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1337" = icmp ugt i64 %"$gasadd_1335", %"$gasrem_1336"
  br i1 %"$gascmp_1337", label %"$out_of_gas_1338", label %"$have_gas_1339"

"$out_of_gas_1338":                               ; preds = %"$Some_1320"
  call void @_out_of_gas()
  br label %"$have_gas_1339"

"$have_gas_1339":                                 ; preds = %"$out_of_gas_1338", %"$Some_1320"
  %"$consume_1340" = sub i64 %"$gasrem_1336", %"$gasadd_1335"
  store i64 %"$consume_1340", i64* @_gasrem, align 8
  %"$gasrem_1341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1342" = icmp ugt i64 1, %"$gasrem_1341"
  br i1 %"$gascmp_1342", label %"$out_of_gas_1343", label %"$have_gas_1344"

"$out_of_gas_1343":                               ; preds = %"$have_gas_1339"
  call void @_out_of_gas()
  br label %"$have_gas_1344"

"$have_gas_1344":                                 ; preds = %"$out_of_gas_1343", %"$have_gas_1339"
  %"$consume_1345" = sub i64 %"$gasrem_1341", 1
  store i64 %"$consume_1345", i64* @_gasrem, align 8
  %bal_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1346" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1347" = icmp ugt i64 1, %"$gasrem_1346"
  br i1 %"$gascmp_1347", label %"$out_of_gas_1348", label %"$have_gas_1349"

"$out_of_gas_1348":                               ; preds = %"$have_gas_1344"
  call void @_out_of_gas()
  br label %"$have_gas_1349"

"$have_gas_1349":                                 ; preds = %"$out_of_gas_1348", %"$have_gas_1344"
  %"$consume_1350" = sub i64 %"$gasrem_1346", 1
  store i64 %"$consume_1350", i64* @_gasrem, align 8
  %"$bal_1351" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_1352_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1352_salloc" = call i8* @_salloc(i8* %"$adtval_1352_load", i64 17)
  %"$adtval_1352" = bitcast i8* %"$adtval_1352_salloc" to %CName_Some_Uint128*
  %"$adtgep_1353" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1352", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1353", align 1
  %"$adtgep_1354" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1352", i32 0, i32 1
  store %Uint128 %"$bal_1351", %Uint128* %"$adtgep_1354", align 8
  %"$adtptr_1355" = bitcast %CName_Some_Uint128* %"$adtval_1352" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1355", %TName_Option_Uint128** %bal_res, align 8
  %"$bal_res_1356" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$$bal_res_1356_1357" = bitcast %TName_Option_Uint128* %"$bal_res_1356" to i8*
  %"$_literal_cost_call_1358" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i8* %"$$bal_res_1356_1357")
  %"$gasrem_1359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1360" = icmp ugt i64 %"$_literal_cost_call_1358", %"$gasrem_1359"
  br i1 %"$gascmp_1360", label %"$out_of_gas_1361", label %"$have_gas_1362"

"$out_of_gas_1361":                               ; preds = %"$have_gas_1349"
  call void @_out_of_gas()
  br label %"$have_gas_1362"

"$have_gas_1362":                                 ; preds = %"$out_of_gas_1361", %"$have_gas_1349"
  %"$consume_1363" = sub i64 %"$gasrem_1359", %"$_literal_cost_call_1358"
  store i64 %"$consume_1363", i64* @_gasrem, align 8
  %"$execptr_load_1364" = load i8*, i8** @_execptr, align 8
  %"$bal_res_1366" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$update_value_1367" = bitcast %TName_Option_Uint128* %"$bal_res_1366" to i8*
  call void @_update_field(i8* %"$execptr_load_1364", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_4_bal_res_1365", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_1367")
  %f = alloca %Uint128, align 8
  %"$execptr_load_1369" = load i8*, i8** @_execptr, align 8
  %"$f_x_as_address_1370" = alloca [20 x i8], align 1
  %"$x_as_address_1371" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1371", [20 x i8]* %"$f_x_as_address_1370", align 1
  %"$f_call_1372" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1369", [20 x i8]* %"$f_x_as_address_1370", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_1368", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$f_1373" = bitcast i8* %"$f_call_1372" to %Uint128*
  %"$f_1374" = load %Uint128, %Uint128* %"$f_1373", align 8
  store %Uint128 %"$f_1374", %Uint128* %f, align 8
  %"$_literal_cost_f_1375" = alloca %Uint128, align 8
  %"$f_1376" = load %Uint128, %Uint128* %f, align 8
  store %Uint128 %"$f_1376", %Uint128* %"$_literal_cost_f_1375", align 8
  %"$$_literal_cost_f_1375_1377" = bitcast %Uint128* %"$_literal_cost_f_1375" to i8*
  %"$_literal_cost_call_1378" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_f_1375_1377")
  %"$gasadd_1379" = add i64 %"$_literal_cost_call_1378", 0
  %"$gasrem_1380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1381" = icmp ugt i64 %"$gasadd_1379", %"$gasrem_1380"
  br i1 %"$gascmp_1381", label %"$out_of_gas_1382", label %"$have_gas_1383"

"$out_of_gas_1382":                               ; preds = %"$have_gas_1362"
  call void @_out_of_gas()
  br label %"$have_gas_1383"

"$have_gas_1383":                                 ; preds = %"$out_of_gas_1382", %"$have_gas_1362"
  %"$consume_1384" = sub i64 %"$gasrem_1380", %"$gasadd_1379"
  store i64 %"$consume_1384", i64* @_gasrem, align 8
  %"$gasrem_1385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1386" = icmp ugt i64 1, %"$gasrem_1385"
  br i1 %"$gascmp_1386", label %"$out_of_gas_1387", label %"$have_gas_1388"

"$out_of_gas_1387":                               ; preds = %"$have_gas_1383"
  call void @_out_of_gas()
  br label %"$have_gas_1388"

"$have_gas_1388":                                 ; preds = %"$out_of_gas_1387", %"$have_gas_1383"
  %"$consume_1389" = sub i64 %"$gasrem_1385", 1
  store i64 %"$consume_1389", i64* @_gasrem, align 8
  %f_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1390" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1391" = icmp ugt i64 1, %"$gasrem_1390"
  br i1 %"$gascmp_1391", label %"$out_of_gas_1392", label %"$have_gas_1393"

"$out_of_gas_1392":                               ; preds = %"$have_gas_1388"
  call void @_out_of_gas()
  br label %"$have_gas_1393"

"$have_gas_1393":                                 ; preds = %"$out_of_gas_1392", %"$have_gas_1388"
  %"$consume_1394" = sub i64 %"$gasrem_1390", 1
  store i64 %"$consume_1394", i64* @_gasrem, align 8
  %"$f_1395" = load %Uint128, %Uint128* %f, align 8
  %"$adtval_1396_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1396_salloc" = call i8* @_salloc(i8* %"$adtval_1396_load", i64 17)
  %"$adtval_1396" = bitcast i8* %"$adtval_1396_salloc" to %CName_Some_Uint128*
  %"$adtgep_1397" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1396", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1397", align 1
  %"$adtgep_1398" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1396", i32 0, i32 1
  store %Uint128 %"$f_1395", %Uint128* %"$adtgep_1398", align 8
  %"$adtptr_1399" = bitcast %CName_Some_Uint128* %"$adtval_1396" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1399", %TName_Option_Uint128** %f_res, align 8
  %"$f_res_1400" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$$f_res_1400_1401" = bitcast %TName_Option_Uint128* %"$f_res_1400" to i8*
  %"$_literal_cost_call_1402" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i8* %"$$f_res_1400_1401")
  %"$gasrem_1403" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1404" = icmp ugt i64 %"$_literal_cost_call_1402", %"$gasrem_1403"
  br i1 %"$gascmp_1404", label %"$out_of_gas_1405", label %"$have_gas_1406"

"$out_of_gas_1405":                               ; preds = %"$have_gas_1393"
  call void @_out_of_gas()
  br label %"$have_gas_1406"

"$have_gas_1406":                                 ; preds = %"$out_of_gas_1405", %"$have_gas_1393"
  %"$consume_1407" = sub i64 %"$gasrem_1403", %"$_literal_cost_call_1402"
  store i64 %"$consume_1407", i64* @_gasrem, align 8
  %"$execptr_load_1408" = load i8*, i8** @_execptr, align 8
  %"$f_res_1410" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$update_value_1411" = bitcast %TName_Option_Uint128* %"$f_res_1410" to i8*
  call void @_update_field(i8* %"$execptr_load_1408", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_4_f_res_1409", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_1411")
  %g = alloca %TName_Bool*, align 8
  %"$execptr_load_1413" = load i8*, i8** @_execptr, align 8
  %"$g_x_as_address_1414" = alloca [20 x i8], align 1
  %"$x_as_address_1415" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1415", [20 x i8]* %"$g_x_as_address_1414", align 1
  %"$g_call_1416" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1413", [20 x i8]* %"$g_x_as_address_1414", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_1412", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i32 0, i8* null, i32 1)
  %"$g_1417" = bitcast i8* %"$g_call_1416" to %TName_Bool*
  store %TName_Bool* %"$g_1417", %TName_Bool** %g, align 8
  %"$g_1418" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$$g_1418_1419" = bitcast %TName_Bool* %"$g_1418" to i8*
  %"$_literal_cost_call_1420" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i8* %"$$g_1418_1419")
  %"$gasadd_1421" = add i64 %"$_literal_cost_call_1420", 0
  %"$gasrem_1422" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1423" = icmp ugt i64 %"$gasadd_1421", %"$gasrem_1422"
  br i1 %"$gascmp_1423", label %"$out_of_gas_1424", label %"$have_gas_1425"

"$out_of_gas_1424":                               ; preds = %"$have_gas_1406"
  call void @_out_of_gas()
  br label %"$have_gas_1425"

"$have_gas_1425":                                 ; preds = %"$out_of_gas_1424", %"$have_gas_1406"
  %"$consume_1426" = sub i64 %"$gasrem_1422", %"$gasadd_1421"
  store i64 %"$consume_1426", i64* @_gasrem, align 8
  %"$gasrem_1427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1428" = icmp ugt i64 1, %"$gasrem_1427"
  br i1 %"$gascmp_1428", label %"$out_of_gas_1429", label %"$have_gas_1430"

"$out_of_gas_1429":                               ; preds = %"$have_gas_1425"
  call void @_out_of_gas()
  br label %"$have_gas_1430"

"$have_gas_1430":                                 ; preds = %"$out_of_gas_1429", %"$have_gas_1425"
  %"$consume_1431" = sub i64 %"$gasrem_1427", 1
  store i64 %"$consume_1431", i64* @_gasrem, align 8
  %g_res = alloca %TName_Option_Bool*, align 8
  %"$gasrem_1432" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1433" = icmp ugt i64 1, %"$gasrem_1432"
  br i1 %"$gascmp_1433", label %"$out_of_gas_1434", label %"$have_gas_1435"

"$out_of_gas_1434":                               ; preds = %"$have_gas_1430"
  call void @_out_of_gas()
  br label %"$have_gas_1435"

"$have_gas_1435":                                 ; preds = %"$out_of_gas_1434", %"$have_gas_1430"
  %"$consume_1436" = sub i64 %"$gasrem_1432", 1
  store i64 %"$consume_1436", i64* @_gasrem, align 8
  %"$g_1437" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$adtval_1438_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1438_salloc" = call i8* @_salloc(i8* %"$adtval_1438_load", i64 9)
  %"$adtval_1438" = bitcast i8* %"$adtval_1438_salloc" to %CName_Some_Bool*
  %"$adtgep_1439" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1438", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1439", align 1
  %"$adtgep_1440" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1438", i32 0, i32 1
  store %TName_Bool* %"$g_1437", %TName_Bool** %"$adtgep_1440", align 8
  %"$adtptr_1441" = bitcast %CName_Some_Bool* %"$adtval_1438" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_1441", %TName_Option_Bool** %g_res, align 8
  %"$g_res_1442" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$$g_res_1442_1443" = bitcast %TName_Option_Bool* %"$g_res_1442" to i8*
  %"$_literal_cost_call_1444" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i8* %"$$g_res_1442_1443")
  %"$gasrem_1445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1446" = icmp ugt i64 %"$_literal_cost_call_1444", %"$gasrem_1445"
  br i1 %"$gascmp_1446", label %"$out_of_gas_1447", label %"$have_gas_1448"

"$out_of_gas_1447":                               ; preds = %"$have_gas_1435"
  call void @_out_of_gas()
  br label %"$have_gas_1448"

"$have_gas_1448":                                 ; preds = %"$out_of_gas_1447", %"$have_gas_1435"
  %"$consume_1449" = sub i64 %"$gasrem_1445", %"$_literal_cost_call_1444"
  store i64 %"$consume_1449", i64* @_gasrem, align 8
  %"$execptr_load_1450" = load i8*, i8** @_execptr, align 8
  %"$g_res_1452" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$update_value_1453" = bitcast %TName_Option_Bool* %"$g_res_1452" to i8*
  call void @_update_field(i8* %"$execptr_load_1450", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_4_g_res_1451", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i32 0, i8* null, i8* %"$update_value_1453")
  br label %"$matchsucc_1315"

"$None_1454":                                     ; preds = %"$have_gas_1313"
  %"$x_cast_1455" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1316" to %"CName_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  %"$gasrem_1456" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1457" = icmp ugt i64 1, %"$gasrem_1456"
  br i1 %"$gascmp_1457", label %"$out_of_gas_1458", label %"$have_gas_1459"

"$out_of_gas_1458":                               ; preds = %"$None_1454"
  call void @_out_of_gas()
  br label %"$have_gas_1459"

"$have_gas_1459":                                 ; preds = %"$out_of_gas_1458", %"$None_1454"
  %"$consume_1460" = sub i64 %"$gasrem_1456", 1
  store i64 %"$consume_1460", i64* @_gasrem, align 8
  %res = alloca %TName_Bool*, align 8
  %"$gasrem_1461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1462" = icmp ugt i64 1, %"$gasrem_1461"
  br i1 %"$gascmp_1462", label %"$out_of_gas_1463", label %"$have_gas_1464"

"$out_of_gas_1463":                               ; preds = %"$have_gas_1459"
  call void @_out_of_gas()
  br label %"$have_gas_1464"

"$have_gas_1464":                                 ; preds = %"$out_of_gas_1463", %"$have_gas_1459"
  %"$consume_1465" = sub i64 %"$gasrem_1461", 1
  store i64 %"$consume_1465", i64* @_gasrem, align 8
  %"$adtval_1466_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1466_salloc" = call i8* @_salloc(i8* %"$adtval_1466_load", i64 1)
  %"$adtval_1466" = bitcast i8* %"$adtval_1466_salloc" to %CName_True*
  %"$adtgep_1467" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_1466", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1467", align 1
  %"$adtptr_1468" = bitcast %CName_True* %"$adtval_1466" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1468", %TName_Bool** %res, align 8
  %"$res_1469" = load %TName_Bool*, %TName_Bool** %res, align 8
  %"$$res_1469_1470" = bitcast %TName_Bool* %"$res_1469" to i8*
  %"$_literal_cost_call_1471" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i8* %"$$res_1469_1470")
  %"$gasrem_1472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1473" = icmp ugt i64 %"$_literal_cost_call_1471", %"$gasrem_1472"
  br i1 %"$gascmp_1473", label %"$out_of_gas_1474", label %"$have_gas_1475"

"$out_of_gas_1474":                               ; preds = %"$have_gas_1464"
  call void @_out_of_gas()
  br label %"$have_gas_1475"

"$have_gas_1475":                                 ; preds = %"$out_of_gas_1474", %"$have_gas_1464"
  %"$consume_1476" = sub i64 %"$gasrem_1472", %"$_literal_cost_call_1471"
  store i64 %"$consume_1476", i64* @_gasrem, align 8
  %"$execptr_load_1477" = load i8*, i8** @_execptr, align 8
  %"$res_1479" = load %TName_Bool*, %TName_Bool** %res, align 8
  %"$update_value_1480" = bitcast %TName_Bool* %"$res_1479" to i8*
  call void @_update_field(i8* %"$execptr_load_1477", i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$test_6_4_failed_cast_1478", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i32 0, i8* null, i8* %"$update_value_1480")
  br label %"$matchsucc_1315"

"$empty_default_1319":                            ; preds = %"$have_gas_1313"
  br label %"$matchsucc_1315"

"$matchsucc_1315":                                ; preds = %"$have_gas_1475", %"$have_gas_1448", %"$empty_default_1319"
  ret void
}

define void @CastTest6_4(i8* %0) {
entry:
  %"$_amount_1482" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1483" = bitcast i8* %"$_amount_1482" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1483", align 8
  %"$_origin_1484" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1485" = bitcast i8* %"$_origin_1484" to [20 x i8]*
  %"$_sender_1486" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1487" = bitcast i8* %"$_sender_1486" to [20 x i8]*
  %"$x_1488" = getelementptr i8, i8* %0, i32 56
  %"$x_1489" = bitcast i8* %"$x_1488" to [20 x i8]*
  call void @"$CastTest6_4_1297"(%Uint128 %_amount, [20 x i8]* %"$_origin_1485", [20 x i8]* %"$_sender_1487", [20 x i8]* %"$x_1489")
  ret void
}

define internal void @"$CastTest7_1490"(%Uint128 %_amount, [20 x i8]* %"$_origin_1491", [20 x i8]* %"$_sender_1492", [20 x i8]* %"$x_1493") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1491", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1492", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_1493", align 1
  %"$gasrem_1494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1495" = icmp ugt i64 4, %"$gasrem_1494"
  br i1 %"$gascmp_1495", label %"$out_of_gas_1496", label %"$have_gas_1497"

"$out_of_gas_1496":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1497"

"$have_gas_1497":                                 ; preds = %"$out_of_gas_1496", %entry
  %"$consume_1498" = sub i64 %"$gasrem_1494", 4
  store i64 %"$consume_1498", i64* @_gasrem, align 8
  %x_cast = alloca %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"*, align 8
  %"$execptr_load_1499" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_1500" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_1500", align 1
  %"$_dynamic_typecast_call_1501" = call i8* @_dynamic_typecast(i8* %"$execptr_load_1499", [20 x i8]* %"$_dynamic_typecast_x_1500", %_TyDescrTy_Typ* @"$TyDescr_Addr_69")
  %"$_dynamic_typecast_1502" = bitcast i8* %"$_dynamic_typecast_call_1501" to %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"*
  store %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"* %"$_dynamic_typecast_1502", %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"** %x_cast, align 8
  %"$gasrem_1503" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1504" = icmp ugt i64 2, %"$gasrem_1503"
  br i1 %"$gascmp_1504", label %"$out_of_gas_1505", label %"$have_gas_1506"

"$out_of_gas_1505":                               ; preds = %"$have_gas_1497"
  call void @_out_of_gas()
  br label %"$have_gas_1506"

"$have_gas_1506":                                 ; preds = %"$out_of_gas_1505", %"$have_gas_1497"
  %"$consume_1507" = sub i64 %"$gasrem_1503", 2
  store i64 %"$consume_1507", i64* @_gasrem, align 8
  %"$x_cast_1509" = load %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"*, %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"** %x_cast, align 8
  %"$x_cast_tag_1510" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end", %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"* %"$x_cast_1509", i32 0, i32 0
  %"$x_cast_tag_1511" = load i8, i8* %"$x_cast_tag_1510", align 1
  switch i8 %"$x_cast_tag_1511", label %"$empty_default_1512" [
    i8 0, label %"$Some_1513"
    i8 1, label %"$None_1646"
  ]

"$Some_1513":                                     ; preds = %"$have_gas_1506"
  %"$x_cast_1514" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"* %"$x_cast_1509" to %"CName_Some_ByStr20_with_contract_field_f_:_ByStr20_end"*
  %"$x_as_address_gep_1515" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_f_:_ByStr20_end", %"CName_Some_ByStr20_with_contract_field_f_:_ByStr20_end"* %"$x_cast_1514", i32 0, i32 1
  %"$x_as_address_load_1516" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_1515", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_1516", [20 x i8]* %x_as_address, align 1
  %f = alloca [20 x i8], align 1
  %"$execptr_load_1518" = load i8*, i8** @_execptr, align 8
  %"$f_x_as_address_1519" = alloca [20 x i8], align 1
  %"$x_as_address_1520" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1520", [20 x i8]* %"$f_x_as_address_1519", align 1
  %"$f_call_1521" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1518", [20 x i8]* %"$f_x_as_address_1519", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_1517", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_52", i32 0, i8* null, i32 1)
  %"$f_1522" = bitcast i8* %"$f_call_1521" to [20 x i8]*
  %"$f_1523" = load [20 x i8], [20 x i8]* %"$f_1522", align 1
  store [20 x i8] %"$f_1523", [20 x i8]* %f, align 1
  %"$_literal_cost_f_1524" = alloca [20 x i8], align 1
  %"$f_1525" = load [20 x i8], [20 x i8]* %f, align 1
  store [20 x i8] %"$f_1525", [20 x i8]* %"$_literal_cost_f_1524", align 1
  %"$$_literal_cost_f_1524_1526" = bitcast [20 x i8]* %"$_literal_cost_f_1524" to i8*
  %"$_literal_cost_call_1527" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_52", i8* %"$$_literal_cost_f_1524_1526")
  %"$gasadd_1528" = add i64 %"$_literal_cost_call_1527", 0
  %"$gasrem_1529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1530" = icmp ugt i64 %"$gasadd_1528", %"$gasrem_1529"
  br i1 %"$gascmp_1530", label %"$out_of_gas_1531", label %"$have_gas_1532"

"$out_of_gas_1531":                               ; preds = %"$Some_1513"
  call void @_out_of_gas()
  br label %"$have_gas_1532"

"$have_gas_1532":                                 ; preds = %"$out_of_gas_1531", %"$Some_1513"
  %"$consume_1533" = sub i64 %"$gasrem_1529", %"$gasadd_1528"
  store i64 %"$consume_1533", i64* @_gasrem, align 8
  %"$gasrem_1534" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1535" = icmp ugt i64 5, %"$gasrem_1534"
  br i1 %"$gascmp_1535", label %"$out_of_gas_1536", label %"$have_gas_1537"

"$out_of_gas_1536":                               ; preds = %"$have_gas_1532"
  call void @_out_of_gas()
  br label %"$have_gas_1537"

"$have_gas_1537":                                 ; preds = %"$out_of_gas_1536", %"$have_gas_1532"
  %"$consume_1538" = sub i64 %"$gasrem_1534", 5
  store i64 %"$consume_1538", i64* @_gasrem, align 8
  %f_cast = alloca %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*, align 8
  %"$execptr_load_1539" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_f_1540" = alloca [20 x i8], align 1
  %"$f_1541" = load [20 x i8], [20 x i8]* %f, align 1
  store [20 x i8] %"$f_1541", [20 x i8]* %"$_dynamic_typecast_f_1540", align 1
  %"$_dynamic_typecast_call_1542" = call i8* @_dynamic_typecast(i8* %"$execptr_load_1539", [20 x i8]* %"$_dynamic_typecast_f_1540", %_TyDescrTy_Typ* @"$TyDescr_Addr_68")
  %"$_dynamic_typecast_1543" = bitcast i8* %"$_dynamic_typecast_call_1542" to %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*
  store %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* %"$_dynamic_typecast_1543", %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"** %f_cast, align 8
  %"$gasrem_1544" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1545" = icmp ugt i64 2, %"$gasrem_1544"
  br i1 %"$gascmp_1545", label %"$out_of_gas_1546", label %"$have_gas_1547"

"$out_of_gas_1546":                               ; preds = %"$have_gas_1537"
  call void @_out_of_gas()
  br label %"$have_gas_1547"

"$have_gas_1547":                                 ; preds = %"$out_of_gas_1546", %"$have_gas_1537"
  %"$consume_1548" = sub i64 %"$gasrem_1544", 2
  store i64 %"$consume_1548", i64* @_gasrem, align 8
  %"$f_cast_1550" = load %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*, %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"** %f_cast, align 8
  %"$f_cast_tag_1551" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end", %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* %"$f_cast_1550", i32 0, i32 0
  %"$f_cast_tag_1552" = load i8, i8* %"$f_cast_tag_1551", align 1
  switch i8 %"$f_cast_tag_1552", label %"$empty_default_1553" [
    i8 0, label %"$Some_1554"
    i8 1, label %"$None_1644"
  ]

"$Some_1554":                                     ; preds = %"$have_gas_1547"
  %"$f_cast_1555" = bitcast %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* %"$f_cast_1550" to %"CName_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*
  %"$f_as_address_gep_1556" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end", %"CName_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* %"$f_cast_1555", i32 0, i32 1
  %"$f_as_address_load_1557" = load [20 x i8], [20 x i8]* %"$f_as_address_gep_1556", align 1
  %f_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$f_as_address_load_1557", [20 x i8]* %f_as_address, align 1
  %g = alloca %TName_Bool*, align 8
  %"$execptr_load_1559" = load i8*, i8** @_execptr, align 8
  %"$g_f_as_address_1560" = alloca [20 x i8], align 1
  %"$f_as_address_1561" = load [20 x i8], [20 x i8]* %f_as_address, align 1
  store [20 x i8] %"$f_as_address_1561", [20 x i8]* %"$g_f_as_address_1560", align 1
  %"$g_call_1562" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1559", [20 x i8]* %"$g_f_as_address_1560", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_1558", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i32 0, i8* null, i32 1)
  %"$g_1563" = bitcast i8* %"$g_call_1562" to %TName_Bool*
  store %TName_Bool* %"$g_1563", %TName_Bool** %g, align 8
  %"$g_1564" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$$g_1564_1565" = bitcast %TName_Bool* %"$g_1564" to i8*
  %"$_literal_cost_call_1566" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i8* %"$$g_1564_1565")
  %"$gasadd_1567" = add i64 %"$_literal_cost_call_1566", 0
  %"$gasrem_1568" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1569" = icmp ugt i64 %"$gasadd_1567", %"$gasrem_1568"
  br i1 %"$gascmp_1569", label %"$out_of_gas_1570", label %"$have_gas_1571"

"$out_of_gas_1570":                               ; preds = %"$Some_1554"
  call void @_out_of_gas()
  br label %"$have_gas_1571"

"$have_gas_1571":                                 ; preds = %"$out_of_gas_1570", %"$Some_1554"
  %"$consume_1572" = sub i64 %"$gasrem_1568", %"$gasadd_1567"
  store i64 %"$consume_1572", i64* @_gasrem, align 8
  %"$gasrem_1573" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1574" = icmp ugt i64 1, %"$gasrem_1573"
  br i1 %"$gascmp_1574", label %"$out_of_gas_1575", label %"$have_gas_1576"

"$out_of_gas_1575":                               ; preds = %"$have_gas_1571"
  call void @_out_of_gas()
  br label %"$have_gas_1576"

"$have_gas_1576":                                 ; preds = %"$out_of_gas_1575", %"$have_gas_1571"
  %"$consume_1577" = sub i64 %"$gasrem_1573", 1
  store i64 %"$consume_1577", i64* @_gasrem, align 8
  %g_res = alloca %TName_Option_Bool*, align 8
  %"$gasrem_1578" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1579" = icmp ugt i64 1, %"$gasrem_1578"
  br i1 %"$gascmp_1579", label %"$out_of_gas_1580", label %"$have_gas_1581"

"$out_of_gas_1580":                               ; preds = %"$have_gas_1576"
  call void @_out_of_gas()
  br label %"$have_gas_1581"

"$have_gas_1581":                                 ; preds = %"$out_of_gas_1580", %"$have_gas_1576"
  %"$consume_1582" = sub i64 %"$gasrem_1578", 1
  store i64 %"$consume_1582", i64* @_gasrem, align 8
  %"$g_1583" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$adtval_1584_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1584_salloc" = call i8* @_salloc(i8* %"$adtval_1584_load", i64 9)
  %"$adtval_1584" = bitcast i8* %"$adtval_1584_salloc" to %CName_Some_Bool*
  %"$adtgep_1585" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1584", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1585", align 1
  %"$adtgep_1586" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1584", i32 0, i32 1
  store %TName_Bool* %"$g_1583", %TName_Bool** %"$adtgep_1586", align 8
  %"$adtptr_1587" = bitcast %CName_Some_Bool* %"$adtval_1584" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_1587", %TName_Option_Bool** %g_res, align 8
  %"$g_res_1588" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$$g_res_1588_1589" = bitcast %TName_Option_Bool* %"$g_res_1588" to i8*
  %"$_literal_cost_call_1590" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i8* %"$$g_res_1588_1589")
  %"$gasrem_1591" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1592" = icmp ugt i64 %"$_literal_cost_call_1590", %"$gasrem_1591"
  br i1 %"$gascmp_1592", label %"$out_of_gas_1593", label %"$have_gas_1594"

"$out_of_gas_1593":                               ; preds = %"$have_gas_1581"
  call void @_out_of_gas()
  br label %"$have_gas_1594"

"$have_gas_1594":                                 ; preds = %"$out_of_gas_1593", %"$have_gas_1581"
  %"$consume_1595" = sub i64 %"$gasrem_1591", %"$_literal_cost_call_1590"
  store i64 %"$consume_1595", i64* @_gasrem, align 8
  %"$execptr_load_1596" = load i8*, i8** @_execptr, align 8
  %"$g_res_1598" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$update_value_1599" = bitcast %TName_Option_Bool* %"$g_res_1598" to i8*
  call void @_update_field(i8* %"$execptr_load_1596", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_7_g_res_1597", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i32 0, i8* null, i8* %"$update_value_1599")
  %h = alloca %Int256, align 8
  %"$execptr_load_1601" = load i8*, i8** @_execptr, align 8
  %"$h_f_as_address_1602" = alloca [20 x i8], align 1
  %"$f_as_address_1603" = load [20 x i8], [20 x i8]* %f_as_address, align 1
  store [20 x i8] %"$f_as_address_1603", [20 x i8]* %"$h_f_as_address_1602", align 1
  %"$h_call_1604" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1601", [20 x i8]* %"$h_f_as_address_1602", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$h_1600", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int256_36", i32 0, i8* null, i32 1)
  %"$h_1605" = bitcast i8* %"$h_call_1604" to %Int256*
  %"$h_1606" = load %Int256, %Int256* %"$h_1605", align 8
  store %Int256 %"$h_1606", %Int256* %h, align 8
  %"$_literal_cost_h_1607" = alloca %Int256, align 8
  %"$h_1608" = load %Int256, %Int256* %h, align 8
  store %Int256 %"$h_1608", %Int256* %"$_literal_cost_h_1607", align 8
  %"$$_literal_cost_h_1607_1609" = bitcast %Int256* %"$_literal_cost_h_1607" to i8*
  %"$_literal_cost_call_1610" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int256_36", i8* %"$$_literal_cost_h_1607_1609")
  %"$gasadd_1611" = add i64 %"$_literal_cost_call_1610", 0
  %"$gasrem_1612" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1613" = icmp ugt i64 %"$gasadd_1611", %"$gasrem_1612"
  br i1 %"$gascmp_1613", label %"$out_of_gas_1614", label %"$have_gas_1615"

"$out_of_gas_1614":                               ; preds = %"$have_gas_1594"
  call void @_out_of_gas()
  br label %"$have_gas_1615"

"$have_gas_1615":                                 ; preds = %"$out_of_gas_1614", %"$have_gas_1594"
  %"$consume_1616" = sub i64 %"$gasrem_1612", %"$gasadd_1611"
  store i64 %"$consume_1616", i64* @_gasrem, align 8
  %"$gasrem_1617" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1618" = icmp ugt i64 1, %"$gasrem_1617"
  br i1 %"$gascmp_1618", label %"$out_of_gas_1619", label %"$have_gas_1620"

"$out_of_gas_1619":                               ; preds = %"$have_gas_1615"
  call void @_out_of_gas()
  br label %"$have_gas_1620"

"$have_gas_1620":                                 ; preds = %"$out_of_gas_1619", %"$have_gas_1615"
  %"$consume_1621" = sub i64 %"$gasrem_1617", 1
  store i64 %"$consume_1621", i64* @_gasrem, align 8
  %h_res = alloca %TName_Option_Int256*, align 8
  %"$gasrem_1622" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1623" = icmp ugt i64 1, %"$gasrem_1622"
  br i1 %"$gascmp_1623", label %"$out_of_gas_1624", label %"$have_gas_1625"

"$out_of_gas_1624":                               ; preds = %"$have_gas_1620"
  call void @_out_of_gas()
  br label %"$have_gas_1625"

"$have_gas_1625":                                 ; preds = %"$out_of_gas_1624", %"$have_gas_1620"
  %"$consume_1626" = sub i64 %"$gasrem_1622", 1
  store i64 %"$consume_1626", i64* @_gasrem, align 8
  %"$h_1627" = load %Int256, %Int256* %h, align 8
  %"$adtval_1628_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1628_salloc" = call i8* @_salloc(i8* %"$adtval_1628_load", i64 33)
  %"$adtval_1628" = bitcast i8* %"$adtval_1628_salloc" to %CName_Some_Int256*
  %"$adtgep_1629" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$adtval_1628", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1629", align 1
  %"$adtgep_1630" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$adtval_1628", i32 0, i32 1
  store %Int256 %"$h_1627", %Int256* %"$adtgep_1630", align 8
  %"$adtptr_1631" = bitcast %CName_Some_Int256* %"$adtval_1628" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$adtptr_1631", %TName_Option_Int256** %h_res, align 8
  %"$h_res_1632" = load %TName_Option_Int256*, %TName_Option_Int256** %h_res, align 8
  %"$$h_res_1632_1633" = bitcast %TName_Option_Int256* %"$h_res_1632" to i8*
  %"$_literal_cost_call_1634" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int256_59", i8* %"$$h_res_1632_1633")
  %"$gasrem_1635" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1636" = icmp ugt i64 %"$_literal_cost_call_1634", %"$gasrem_1635"
  br i1 %"$gascmp_1636", label %"$out_of_gas_1637", label %"$have_gas_1638"

"$out_of_gas_1637":                               ; preds = %"$have_gas_1625"
  call void @_out_of_gas()
  br label %"$have_gas_1638"

"$have_gas_1638":                                 ; preds = %"$out_of_gas_1637", %"$have_gas_1625"
  %"$consume_1639" = sub i64 %"$gasrem_1635", %"$_literal_cost_call_1634"
  store i64 %"$consume_1639", i64* @_gasrem, align 8
  %"$execptr_load_1640" = load i8*, i8** @_execptr, align 8
  %"$h_res_1642" = load %TName_Option_Int256*, %TName_Option_Int256** %h_res, align 8
  %"$update_value_1643" = bitcast %TName_Option_Int256* %"$h_res_1642" to i8*
  call void @_update_field(i8* %"$execptr_load_1640", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_7_h_res_1641", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int256_59", i32 0, i8* null, i8* %"$update_value_1643")
  br label %"$matchsucc_1549"

"$None_1644":                                     ; preds = %"$have_gas_1547"
  %"$f_cast_1645" = bitcast %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* %"$f_cast_1550" to %"CName_None_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*
  br label %"$matchsucc_1549"

"$empty_default_1553":                            ; preds = %"$have_gas_1547"
  br label %"$matchsucc_1549"

"$matchsucc_1549":                                ; preds = %"$None_1644", %"$have_gas_1638", %"$empty_default_1553"
  br label %"$matchsucc_1508"

"$None_1646":                                     ; preds = %"$have_gas_1506"
  %"$x_cast_1647" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"* %"$x_cast_1509" to %"CName_None_ByStr20_with_contract_field_f_:_ByStr20_end"*
  br label %"$matchsucc_1508"

"$empty_default_1512":                            ; preds = %"$have_gas_1506"
  br label %"$matchsucc_1508"

"$matchsucc_1508":                                ; preds = %"$None_1646", %"$matchsucc_1549", %"$empty_default_1512"
  ret void
}

define void @CastTest7(i8* %0) {
entry:
  %"$_amount_1649" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1650" = bitcast i8* %"$_amount_1649" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1650", align 8
  %"$_origin_1651" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1652" = bitcast i8* %"$_origin_1651" to [20 x i8]*
  %"$_sender_1653" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1654" = bitcast i8* %"$_sender_1653" to [20 x i8]*
  %"$x_1655" = getelementptr i8, i8* %0, i32 56
  %"$x_1656" = bitcast i8* %"$x_1655" to [20 x i8]*
  call void @"$CastTest7_1490"(%Uint128 %_amount, [20 x i8]* %"$_origin_1652", [20 x i8]* %"$_sender_1654", [20 x i8]* %"$x_1656")
  ret void
}
