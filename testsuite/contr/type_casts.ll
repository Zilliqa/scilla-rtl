

; gas_remaining: 4001999
; ModuleID = 'CastContract'
source_filename = "CastContract"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%"$ParamDescr_1652" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1653" = type { %ParamDescrString, i32, %"$ParamDescr_1652"* }
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
@"$TyDescr_AddrFields_182" = unnamed_addr constant %"$TyDescr_AddrTyp_67" { i32 -1, %"$TyDescr_AddrFieldTyp_66"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$test_1_res_197" = unnamed_addr constant [11 x i8] c"test_1_res\00"
@"$test_2_res_209" = unnamed_addr constant [11 x i8] c"test_2_res\00"
@"$test_3_res_221" = unnamed_addr constant [11 x i8] c"test_3_res\00"
@"$test_4_res_233" = unnamed_addr constant [11 x i8] c"test_4_res\00"
@"$test_5_1_res_245" = unnamed_addr constant [13 x i8] c"test_5_1_res\00"
@"$test_5_2_res_257" = unnamed_addr constant [13 x i8] c"test_5_2_res\00"
@"$test_6_1_bal_res_269" = unnamed_addr constant [17 x i8] c"test_6_1_bal_res\00"
@"$test_6_1_f_res_281" = unnamed_addr constant [15 x i8] c"test_6_1_f_res\00"
@"$test_6_1_g_res_293" = unnamed_addr constant [15 x i8] c"test_6_1_g_res\00"
@"$test_6_2_bal_res_305" = unnamed_addr constant [17 x i8] c"test_6_2_bal_res\00"
@"$test_6_2_f_res_317" = unnamed_addr constant [15 x i8] c"test_6_2_f_res\00"
@"$test_6_2_g_res_329" = unnamed_addr constant [15 x i8] c"test_6_2_g_res\00"
@"$test_6_3_bal_res_341" = unnamed_addr constant [17 x i8] c"test_6_3_bal_res\00"
@"$test_6_3_f_res_353" = unnamed_addr constant [15 x i8] c"test_6_3_f_res\00"
@"$test_6_3_g_res_365" = unnamed_addr constant [15 x i8] c"test_6_3_g_res\00"
@"$test_6_4_bal_res_377" = unnamed_addr constant [17 x i8] c"test_6_4_bal_res\00"
@"$test_6_4_f_res_389" = unnamed_addr constant [15 x i8] c"test_6_4_f_res\00"
@"$test_6_4_g_res_401" = unnamed_addr constant [15 x i8] c"test_6_4_g_res\00"
@"$test_6_4_failed_cast_413" = unnamed_addr constant [21 x i8] c"test_6_4_failed_cast\00"
@"$test_7_g_res_425" = unnamed_addr constant [13 x i8] c"test_7_g_res\00"
@"$test_7_h_res_437" = unnamed_addr constant [13 x i8] c"test_7_h_res\00"
@"$test_1_res_462" = unnamed_addr constant [11 x i8] c"test_1_res\00"
@"$test_2_res_496" = unnamed_addr constant [11 x i8] c"test_2_res\00"
@"$test_3_res_530" = unnamed_addr constant [11 x i8] c"test_3_res\00"
@"$_balance_569" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_4_res_610" = unnamed_addr constant [11 x i8] c"test_4_res\00"
@"$_balance_651" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_5_1_res_692" = unnamed_addr constant [13 x i8] c"test_5_1_res\00"
@"$_balance_733" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_5_2_res_774" = unnamed_addr constant [13 x i8] c"test_5_2_res\00"
@"$_balance_815" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_6_1_bal_res_856" = unnamed_addr constant [17 x i8] c"test_6_1_bal_res\00"
@"$f_859" = unnamed_addr constant [2 x i8] c"f\00"
@"$test_6_1_f_res_900" = unnamed_addr constant [15 x i8] c"test_6_1_f_res\00"
@"$g_903" = unnamed_addr constant [2 x i8] c"g\00"
@"$test_6_1_g_res_942" = unnamed_addr constant [15 x i8] c"test_6_1_g_res\00"
@"$_balance_983" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_6_2_bal_res_1024" = unnamed_addr constant [17 x i8] c"test_6_2_bal_res\00"
@"$f_1027" = unnamed_addr constant [2 x i8] c"f\00"
@"$test_6_2_f_res_1068" = unnamed_addr constant [15 x i8] c"test_6_2_f_res\00"
@"$g_1071" = unnamed_addr constant [2 x i8] c"g\00"
@"$test_6_2_g_res_1110" = unnamed_addr constant [15 x i8] c"test_6_2_g_res\00"
@"$_balance_1151" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_6_3_bal_res_1192" = unnamed_addr constant [17 x i8] c"test_6_3_bal_res\00"
@"$f_1195" = unnamed_addr constant [2 x i8] c"f\00"
@"$test_6_3_f_res_1236" = unnamed_addr constant [15 x i8] c"test_6_3_f_res\00"
@"$g_1239" = unnamed_addr constant [2 x i8] c"g\00"
@"$test_6_3_g_res_1278" = unnamed_addr constant [15 x i8] c"test_6_3_g_res\00"
@"$_balance_1319" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_6_4_bal_res_1360" = unnamed_addr constant [17 x i8] c"test_6_4_bal_res\00"
@"$f_1363" = unnamed_addr constant [2 x i8] c"f\00"
@"$test_6_4_f_res_1404" = unnamed_addr constant [15 x i8] c"test_6_4_f_res\00"
@"$g_1407" = unnamed_addr constant [2 x i8] c"g\00"
@"$test_6_4_g_res_1446" = unnamed_addr constant [15 x i8] c"test_6_4_g_res\00"
@"$test_6_4_failed_cast_1473" = unnamed_addr constant [21 x i8] c"test_6_4_failed_cast\00"
@"$f_1512" = unnamed_addr constant [2 x i8] c"f\00"
@"$g_1553" = unnamed_addr constant [2 x i8] c"g\00"
@"$test_7_g_res_1592" = unnamed_addr constant [13 x i8] c"test_7_g_res\00"
@"$h_1595" = unnamed_addr constant [2 x i8] c"h\00"
@"$test_7_h_res_1636" = unnamed_addr constant [13 x i8] c"test_7_h_res\00"
@_tydescr_table = constant [31 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int256_59", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_58", %_TyDescrTy_Typ* @"$TyDescr_Event_46", %_TyDescrTy_Typ* @"$TyDescr_Int64_28", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_62", %_TyDescrTy_Typ* @"$TyDescr_Addr_74", %_TyDescrTy_Typ* @"$TyDescr_Addr_71", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_52", %_TyDescrTy_Typ* @"$TyDescr_Uint256_38", %_TyDescrTy_Typ* @"$TyDescr_Uint32_26", %_TyDescrTy_Typ* @"$TyDescr_Addr_73", %_TyDescrTy_Typ* @"$TyDescr_Addr_70", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", %_TyDescrTy_Typ* @"$TyDescr_Uint64_30", %_TyDescrTy_Typ* @"$TyDescr_Bnum_42", %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", %_TyDescrTy_Typ* @"$TyDescr_Addr_69", %_TyDescrTy_Typ* @"$TyDescr_Exception_48", %_TyDescrTy_Typ* @"$TyDescr_String_40", %_TyDescrTy_Typ* @"$TyDescr_Addr_72", %_TyDescrTy_Typ* @"$TyDescr_Int256_36", %_TyDescrTy_Typ* @"$TyDescr_Int128_32", %_TyDescrTy_Typ* @"$TyDescr_Addr_68", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_end_63", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", %_TyDescrTy_Typ* @"$TyDescr_Bystr_50", %_TyDescrTy_Typ* @"$TyDescr_Message_44", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_field_f_:_ByStr20_end_57", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_56", %_TyDescrTy_Typ* @"$TyDescr_Int32_24"]
@_tydescr_table_length = constant i32 31
@"$pname__scilla_version_1654" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_1655" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_1656" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_1652"] [%"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_1654", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_26" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_1655", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_52" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_1656", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_42" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_1657" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1658" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1659" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1660" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest1_1661" = unnamed_addr constant [4 x %"$ParamDescr_1652"] [%"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1657", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1658", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1659", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1660", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }]
@"$tname_CastTest1_1662" = unnamed_addr constant [9 x i8] c"CastTest1"
@"$tpname__amount_1663" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1664" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1665" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1666" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest2_1667" = unnamed_addr constant [4 x %"$ParamDescr_1652"] [%"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1663", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1664", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1665", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1666", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }]
@"$tname_CastTest2_1668" = unnamed_addr constant [9 x i8] c"CastTest2"
@"$tpname__amount_1669" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1670" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1671" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1672" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest3_1673" = unnamed_addr constant [4 x %"$ParamDescr_1652"] [%"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1669", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1670", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1671", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1672", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }]
@"$tname_CastTest3_1674" = unnamed_addr constant [9 x i8] c"CastTest3"
@"$tpname__amount_1675" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1676" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1677" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1678" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest4_1679" = unnamed_addr constant [4 x %"$ParamDescr_1652"] [%"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1675", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1676", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1677", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1678", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_52" }]
@"$tname_CastTest4_1680" = unnamed_addr constant [9 x i8] c"CastTest4"
@"$tpname__amount_1681" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1682" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1683" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1684" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest5_1_1685" = unnamed_addr constant [4 x %"$ParamDescr_1652"] [%"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1681", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1682", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1683", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1684", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_52" }]
@"$tname_CastTest5_1_1686" = unnamed_addr constant [11 x i8] c"CastTest5_1"
@"$tpname__amount_1687" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1688" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1689" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1690" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest5_2_1691" = unnamed_addr constant [4 x %"$ParamDescr_1652"] [%"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1687", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1688", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1689", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1690", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }]
@"$tname_CastTest5_2_1692" = unnamed_addr constant [11 x i8] c"CastTest5_2"
@"$tpname__amount_1693" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1694" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1695" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1696" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest6_1_1697" = unnamed_addr constant [4 x %"$ParamDescr_1652"] [%"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1693", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1694", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1695", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1696", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_52" }]
@"$tname_CastTest6_1_1698" = unnamed_addr constant [11 x i8] c"CastTest6_1"
@"$tpname__amount_1699" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1700" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1701" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1702" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest6_2_1703" = unnamed_addr constant [4 x %"$ParamDescr_1652"] [%"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1699", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1700", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1701", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1702", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }]
@"$tname_CastTest6_2_1704" = unnamed_addr constant [11 x i8] c"CastTest6_2"
@"$tpname__amount_1705" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1706" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1707" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1708" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest6_3_1709" = unnamed_addr constant [4 x %"$ParamDescr_1652"] [%"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1705", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1706", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1707", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1708", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_71" }]
@"$tname_CastTest6_3_1710" = unnamed_addr constant [11 x i8] c"CastTest6_3"
@"$tpname__amount_1711" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1712" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1713" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1714" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest6_4_1715" = unnamed_addr constant [4 x %"$ParamDescr_1652"] [%"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1711", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1712", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1713", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1714", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_70" }]
@"$tname_CastTest6_4_1716" = unnamed_addr constant [11 x i8] c"CastTest6_4"
@"$tpname__amount_1717" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1718" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1719" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1720" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest7_1721" = unnamed_addr constant [4 x %"$ParamDescr_1652"] [%"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1717", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1718", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1719", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_74" }, %"$ParamDescr_1652" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1720", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_52" }]
@"$tname_CastTest7_1722" = unnamed_addr constant [9 x i8] c"CastTest7"
@_transition_parameters = constant [11 x %"$TransDescr_1653"] [%"$TransDescr_1653" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_CastTest1_1662", i32 0, i32 0), i32 9 }, i32 4, %"$ParamDescr_1652"* getelementptr inbounds ([4 x %"$ParamDescr_1652"], [4 x %"$ParamDescr_1652"]* @"$tparams_CastTest1_1661", i32 0, i32 0) }, %"$TransDescr_1653" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_CastTest2_1668", i32 0, i32 0), i32 9 }, i32 4, %"$ParamDescr_1652"* getelementptr inbounds ([4 x %"$ParamDescr_1652"], [4 x %"$ParamDescr_1652"]* @"$tparams_CastTest2_1667", i32 0, i32 0) }, %"$TransDescr_1653" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_CastTest3_1674", i32 0, i32 0), i32 9 }, i32 4, %"$ParamDescr_1652"* getelementptr inbounds ([4 x %"$ParamDescr_1652"], [4 x %"$ParamDescr_1652"]* @"$tparams_CastTest3_1673", i32 0, i32 0) }, %"$TransDescr_1653" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_CastTest4_1680", i32 0, i32 0), i32 9 }, i32 4, %"$ParamDescr_1652"* getelementptr inbounds ([4 x %"$ParamDescr_1652"], [4 x %"$ParamDescr_1652"]* @"$tparams_CastTest4_1679", i32 0, i32 0) }, %"$TransDescr_1653" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest5_1_1686", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1652"* getelementptr inbounds ([4 x %"$ParamDescr_1652"], [4 x %"$ParamDescr_1652"]* @"$tparams_CastTest5_1_1685", i32 0, i32 0) }, %"$TransDescr_1653" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest5_2_1692", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1652"* getelementptr inbounds ([4 x %"$ParamDescr_1652"], [4 x %"$ParamDescr_1652"]* @"$tparams_CastTest5_2_1691", i32 0, i32 0) }, %"$TransDescr_1653" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest6_1_1698", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1652"* getelementptr inbounds ([4 x %"$ParamDescr_1652"], [4 x %"$ParamDescr_1652"]* @"$tparams_CastTest6_1_1697", i32 0, i32 0) }, %"$TransDescr_1653" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest6_2_1704", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1652"* getelementptr inbounds ([4 x %"$ParamDescr_1652"], [4 x %"$ParamDescr_1652"]* @"$tparams_CastTest6_2_1703", i32 0, i32 0) }, %"$TransDescr_1653" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest6_3_1710", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1652"* getelementptr inbounds ([4 x %"$ParamDescr_1652"], [4 x %"$ParamDescr_1652"]* @"$tparams_CastTest6_3_1709", i32 0, i32 0) }, %"$TransDescr_1653" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest6_4_1716", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1652"* getelementptr inbounds ([4 x %"$ParamDescr_1652"], [4 x %"$ParamDescr_1652"]* @"$tparams_CastTest6_4_1715", i32 0, i32 0) }, %"$TransDescr_1653" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_CastTest7_1722", i32 0, i32 0), i32 9 }, i32 4, %"$ParamDescr_1652"* getelementptr inbounds ([4 x %"$ParamDescr_1652"], [4 x %"$ParamDescr_1652"]* @"$tparams_CastTest7_1721", i32 0, i32 0) }]
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

define void @_init_state() {
entry:
  %"$test_1_res_1" = alloca %TName_Option_ByStr20_with_end*, align 8
  %"$gasrem_188" = load i64, i64* @_gasrem, align 8
  %"$gascmp_189" = icmp ugt i64 1, %"$gasrem_188"
  br i1 %"$gascmp_189", label %"$out_of_gas_190", label %"$have_gas_191"

"$out_of_gas_190":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_191"

"$have_gas_191":                                  ; preds = %"$out_of_gas_190", %entry
  %"$consume_192" = sub i64 %"$gasrem_188", 1
  store i64 %"$consume_192", i64* @_gasrem, align 8
  %"$adtval_193_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_193_salloc" = call i8* @_salloc(i8* %"$adtval_193_load", i64 1)
  %"$adtval_193" = bitcast i8* %"$adtval_193_salloc" to %CName_None_ByStr20_with_end*
  %"$adtgep_194" = getelementptr inbounds %CName_None_ByStr20_with_end, %CName_None_ByStr20_with_end* %"$adtval_193", i32 0, i32 0
  store i8 1, i8* %"$adtgep_194", align 1
  %"$adtptr_195" = bitcast %CName_None_ByStr20_with_end* %"$adtval_193" to %TName_Option_ByStr20_with_end*
  store %TName_Option_ByStr20_with_end* %"$adtptr_195", %TName_Option_ByStr20_with_end** %"$test_1_res_1", align 8
  %"$execptr_load_196" = load i8*, i8** @_execptr, align 8
  %"$$test_1_res_1_198" = load %TName_Option_ByStr20_with_end*, %TName_Option_ByStr20_with_end** %"$test_1_res_1", align 8
  %"$update_value_199" = bitcast %TName_Option_ByStr20_with_end* %"$$test_1_res_1_198" to i8*
  call void @_update_field(i8* %"$execptr_load_196", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_1_res_197", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_end_63", i32 0, i8* null, i8* %"$update_value_199")
  %"$test_2_res_2" = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  %"$gasrem_200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_201" = icmp ugt i64 1, %"$gasrem_200"
  br i1 %"$gascmp_201", label %"$out_of_gas_202", label %"$have_gas_203"

"$out_of_gas_202":                                ; preds = %"$have_gas_191"
  call void @_out_of_gas()
  br label %"$have_gas_203"

"$have_gas_203":                                  ; preds = %"$out_of_gas_202", %"$have_gas_191"
  %"$consume_204" = sub i64 %"$gasrem_200", 1
  store i64 %"$consume_204", i64* @_gasrem, align 8
  %"$adtval_205_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_205_salloc" = call i8* @_salloc(i8* %"$adtval_205_load", i64 1)
  %"$adtval_205" = bitcast i8* %"$adtval_205_salloc" to %CName_None_ByStr20_with_contract_end*
  %"$adtgep_206" = getelementptr inbounds %CName_None_ByStr20_with_contract_end, %CName_None_ByStr20_with_contract_end* %"$adtval_205", i32 0, i32 0
  store i8 1, i8* %"$adtgep_206", align 1
  %"$adtptr_207" = bitcast %CName_None_ByStr20_with_contract_end* %"$adtval_205" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$adtptr_207", %TName_Option_ByStr20_with_contract_end** %"$test_2_res_2", align 8
  %"$execptr_load_208" = load i8*, i8** @_execptr, align 8
  %"$$test_2_res_2_210" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %"$test_2_res_2", align 8
  %"$update_value_211" = bitcast %TName_Option_ByStr20_with_contract_end* %"$$test_2_res_2_210" to i8*
  call void @_update_field(i8* %"$execptr_load_208", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_2_res_209", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_62", i32 0, i8* null, i8* %"$update_value_211")
  %"$test_3_res_3" = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  %"$gasrem_212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_213" = icmp ugt i64 1, %"$gasrem_212"
  br i1 %"$gascmp_213", label %"$out_of_gas_214", label %"$have_gas_215"

"$out_of_gas_214":                                ; preds = %"$have_gas_203"
  call void @_out_of_gas()
  br label %"$have_gas_215"

"$have_gas_215":                                  ; preds = %"$out_of_gas_214", %"$have_gas_203"
  %"$consume_216" = sub i64 %"$gasrem_212", 1
  store i64 %"$consume_216", i64* @_gasrem, align 8
  %"$adtval_217_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_217_salloc" = call i8* @_salloc(i8* %"$adtval_217_load", i64 1)
  %"$adtval_217" = bitcast i8* %"$adtval_217_salloc" to %CName_None_ByStr20_with_contract_end*
  %"$adtgep_218" = getelementptr inbounds %CName_None_ByStr20_with_contract_end, %CName_None_ByStr20_with_contract_end* %"$adtval_217", i32 0, i32 0
  store i8 1, i8* %"$adtgep_218", align 1
  %"$adtptr_219" = bitcast %CName_None_ByStr20_with_contract_end* %"$adtval_217" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$adtptr_219", %TName_Option_ByStr20_with_contract_end** %"$test_3_res_3", align 8
  %"$execptr_load_220" = load i8*, i8** @_execptr, align 8
  %"$$test_3_res_3_222" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %"$test_3_res_3", align 8
  %"$update_value_223" = bitcast %TName_Option_ByStr20_with_contract_end* %"$$test_3_res_3_222" to i8*
  call void @_update_field(i8* %"$execptr_load_220", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_3_res_221", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_62", i32 0, i8* null, i8* %"$update_value_223")
  %"$test_4_res_4" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_225" = icmp ugt i64 1, %"$gasrem_224"
  br i1 %"$gascmp_225", label %"$out_of_gas_226", label %"$have_gas_227"

"$out_of_gas_226":                                ; preds = %"$have_gas_215"
  call void @_out_of_gas()
  br label %"$have_gas_227"

"$have_gas_227":                                  ; preds = %"$out_of_gas_226", %"$have_gas_215"
  %"$consume_228" = sub i64 %"$gasrem_224", 1
  store i64 %"$consume_228", i64* @_gasrem, align 8
  %"$adtval_229_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_229_salloc" = call i8* @_salloc(i8* %"$adtval_229_load", i64 1)
  %"$adtval_229" = bitcast i8* %"$adtval_229_salloc" to %CName_None_Uint128*
  %"$adtgep_230" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_229", i32 0, i32 0
  store i8 1, i8* %"$adtgep_230", align 1
  %"$adtptr_231" = bitcast %CName_None_Uint128* %"$adtval_229" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_231", %TName_Option_Uint128** %"$test_4_res_4", align 8
  %"$execptr_load_232" = load i8*, i8** @_execptr, align 8
  %"$$test_4_res_4_234" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_4_res_4", align 8
  %"$update_value_235" = bitcast %TName_Option_Uint128* %"$$test_4_res_4_234" to i8*
  call void @_update_field(i8* %"$execptr_load_232", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_4_res_233", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_235")
  %"$test_5_1_res_5" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_236" = load i64, i64* @_gasrem, align 8
  %"$gascmp_237" = icmp ugt i64 1, %"$gasrem_236"
  br i1 %"$gascmp_237", label %"$out_of_gas_238", label %"$have_gas_239"

"$out_of_gas_238":                                ; preds = %"$have_gas_227"
  call void @_out_of_gas()
  br label %"$have_gas_239"

"$have_gas_239":                                  ; preds = %"$out_of_gas_238", %"$have_gas_227"
  %"$consume_240" = sub i64 %"$gasrem_236", 1
  store i64 %"$consume_240", i64* @_gasrem, align 8
  %"$adtval_241_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_241_salloc" = call i8* @_salloc(i8* %"$adtval_241_load", i64 1)
  %"$adtval_241" = bitcast i8* %"$adtval_241_salloc" to %CName_None_Uint128*
  %"$adtgep_242" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_241", i32 0, i32 0
  store i8 1, i8* %"$adtgep_242", align 1
  %"$adtptr_243" = bitcast %CName_None_Uint128* %"$adtval_241" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_243", %TName_Option_Uint128** %"$test_5_1_res_5", align 8
  %"$execptr_load_244" = load i8*, i8** @_execptr, align 8
  %"$$test_5_1_res_5_246" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_5_1_res_5", align 8
  %"$update_value_247" = bitcast %TName_Option_Uint128* %"$$test_5_1_res_5_246" to i8*
  call void @_update_field(i8* %"$execptr_load_244", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_5_1_res_245", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_247")
  %"$test_5_2_res_6" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_249" = icmp ugt i64 1, %"$gasrem_248"
  br i1 %"$gascmp_249", label %"$out_of_gas_250", label %"$have_gas_251"

"$out_of_gas_250":                                ; preds = %"$have_gas_239"
  call void @_out_of_gas()
  br label %"$have_gas_251"

"$have_gas_251":                                  ; preds = %"$out_of_gas_250", %"$have_gas_239"
  %"$consume_252" = sub i64 %"$gasrem_248", 1
  store i64 %"$consume_252", i64* @_gasrem, align 8
  %"$adtval_253_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_253_salloc" = call i8* @_salloc(i8* %"$adtval_253_load", i64 1)
  %"$adtval_253" = bitcast i8* %"$adtval_253_salloc" to %CName_None_Uint128*
  %"$adtgep_254" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_253", i32 0, i32 0
  store i8 1, i8* %"$adtgep_254", align 1
  %"$adtptr_255" = bitcast %CName_None_Uint128* %"$adtval_253" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_255", %TName_Option_Uint128** %"$test_5_2_res_6", align 8
  %"$execptr_load_256" = load i8*, i8** @_execptr, align 8
  %"$$test_5_2_res_6_258" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_5_2_res_6", align 8
  %"$update_value_259" = bitcast %TName_Option_Uint128* %"$$test_5_2_res_6_258" to i8*
  call void @_update_field(i8* %"$execptr_load_256", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_5_2_res_257", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_259")
  %"$test_6_1_bal_res_7" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_260" = load i64, i64* @_gasrem, align 8
  %"$gascmp_261" = icmp ugt i64 1, %"$gasrem_260"
  br i1 %"$gascmp_261", label %"$out_of_gas_262", label %"$have_gas_263"

"$out_of_gas_262":                                ; preds = %"$have_gas_251"
  call void @_out_of_gas()
  br label %"$have_gas_263"

"$have_gas_263":                                  ; preds = %"$out_of_gas_262", %"$have_gas_251"
  %"$consume_264" = sub i64 %"$gasrem_260", 1
  store i64 %"$consume_264", i64* @_gasrem, align 8
  %"$adtval_265_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_265_salloc" = call i8* @_salloc(i8* %"$adtval_265_load", i64 1)
  %"$adtval_265" = bitcast i8* %"$adtval_265_salloc" to %CName_None_Uint128*
  %"$adtgep_266" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_265", i32 0, i32 0
  store i8 1, i8* %"$adtgep_266", align 1
  %"$adtptr_267" = bitcast %CName_None_Uint128* %"$adtval_265" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_267", %TName_Option_Uint128** %"$test_6_1_bal_res_7", align 8
  %"$execptr_load_268" = load i8*, i8** @_execptr, align 8
  %"$$test_6_1_bal_res_7_270" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_1_bal_res_7", align 8
  %"$update_value_271" = bitcast %TName_Option_Uint128* %"$$test_6_1_bal_res_7_270" to i8*
  call void @_update_field(i8* %"$execptr_load_268", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_1_bal_res_269", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_271")
  %"$test_6_1_f_res_8" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_273" = icmp ugt i64 1, %"$gasrem_272"
  br i1 %"$gascmp_273", label %"$out_of_gas_274", label %"$have_gas_275"

"$out_of_gas_274":                                ; preds = %"$have_gas_263"
  call void @_out_of_gas()
  br label %"$have_gas_275"

"$have_gas_275":                                  ; preds = %"$out_of_gas_274", %"$have_gas_263"
  %"$consume_276" = sub i64 %"$gasrem_272", 1
  store i64 %"$consume_276", i64* @_gasrem, align 8
  %"$adtval_277_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_277_salloc" = call i8* @_salloc(i8* %"$adtval_277_load", i64 1)
  %"$adtval_277" = bitcast i8* %"$adtval_277_salloc" to %CName_None_Uint128*
  %"$adtgep_278" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_277", i32 0, i32 0
  store i8 1, i8* %"$adtgep_278", align 1
  %"$adtptr_279" = bitcast %CName_None_Uint128* %"$adtval_277" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_279", %TName_Option_Uint128** %"$test_6_1_f_res_8", align 8
  %"$execptr_load_280" = load i8*, i8** @_execptr, align 8
  %"$$test_6_1_f_res_8_282" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_1_f_res_8", align 8
  %"$update_value_283" = bitcast %TName_Option_Uint128* %"$$test_6_1_f_res_8_282" to i8*
  call void @_update_field(i8* %"$execptr_load_280", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_1_f_res_281", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_283")
  %"$test_6_1_g_res_9" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 1, %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %"$have_gas_275"
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %"$have_gas_275"
  %"$consume_288" = sub i64 %"$gasrem_284", 1
  store i64 %"$consume_288", i64* @_gasrem, align 8
  %"$adtval_289_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_289_salloc" = call i8* @_salloc(i8* %"$adtval_289_load", i64 1)
  %"$adtval_289" = bitcast i8* %"$adtval_289_salloc" to %CName_None_Bool*
  %"$adtgep_290" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_289", i32 0, i32 0
  store i8 1, i8* %"$adtgep_290", align 1
  %"$adtptr_291" = bitcast %CName_None_Bool* %"$adtval_289" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_291", %TName_Option_Bool** %"$test_6_1_g_res_9", align 8
  %"$execptr_load_292" = load i8*, i8** @_execptr, align 8
  %"$$test_6_1_g_res_9_294" = load %TName_Option_Bool*, %TName_Option_Bool** %"$test_6_1_g_res_9", align 8
  %"$update_value_295" = bitcast %TName_Option_Bool* %"$$test_6_1_g_res_9_294" to i8*
  call void @_update_field(i8* %"$execptr_load_292", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_1_g_res_293", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i32 0, i8* null, i8* %"$update_value_295")
  %"$test_6_2_bal_res_10" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_297" = icmp ugt i64 1, %"$gasrem_296"
  br i1 %"$gascmp_297", label %"$out_of_gas_298", label %"$have_gas_299"

"$out_of_gas_298":                                ; preds = %"$have_gas_287"
  call void @_out_of_gas()
  br label %"$have_gas_299"

"$have_gas_299":                                  ; preds = %"$out_of_gas_298", %"$have_gas_287"
  %"$consume_300" = sub i64 %"$gasrem_296", 1
  store i64 %"$consume_300", i64* @_gasrem, align 8
  %"$adtval_301_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_301_salloc" = call i8* @_salloc(i8* %"$adtval_301_load", i64 1)
  %"$adtval_301" = bitcast i8* %"$adtval_301_salloc" to %CName_None_Uint128*
  %"$adtgep_302" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_301", i32 0, i32 0
  store i8 1, i8* %"$adtgep_302", align 1
  %"$adtptr_303" = bitcast %CName_None_Uint128* %"$adtval_301" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_303", %TName_Option_Uint128** %"$test_6_2_bal_res_10", align 8
  %"$execptr_load_304" = load i8*, i8** @_execptr, align 8
  %"$$test_6_2_bal_res_10_306" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_2_bal_res_10", align 8
  %"$update_value_307" = bitcast %TName_Option_Uint128* %"$$test_6_2_bal_res_10_306" to i8*
  call void @_update_field(i8* %"$execptr_load_304", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_2_bal_res_305", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_307")
  %"$test_6_2_f_res_11" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_308" = load i64, i64* @_gasrem, align 8
  %"$gascmp_309" = icmp ugt i64 1, %"$gasrem_308"
  br i1 %"$gascmp_309", label %"$out_of_gas_310", label %"$have_gas_311"

"$out_of_gas_310":                                ; preds = %"$have_gas_299"
  call void @_out_of_gas()
  br label %"$have_gas_311"

"$have_gas_311":                                  ; preds = %"$out_of_gas_310", %"$have_gas_299"
  %"$consume_312" = sub i64 %"$gasrem_308", 1
  store i64 %"$consume_312", i64* @_gasrem, align 8
  %"$adtval_313_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_313_salloc" = call i8* @_salloc(i8* %"$adtval_313_load", i64 1)
  %"$adtval_313" = bitcast i8* %"$adtval_313_salloc" to %CName_None_Uint128*
  %"$adtgep_314" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_313", i32 0, i32 0
  store i8 1, i8* %"$adtgep_314", align 1
  %"$adtptr_315" = bitcast %CName_None_Uint128* %"$adtval_313" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_315", %TName_Option_Uint128** %"$test_6_2_f_res_11", align 8
  %"$execptr_load_316" = load i8*, i8** @_execptr, align 8
  %"$$test_6_2_f_res_11_318" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_2_f_res_11", align 8
  %"$update_value_319" = bitcast %TName_Option_Uint128* %"$$test_6_2_f_res_11_318" to i8*
  call void @_update_field(i8* %"$execptr_load_316", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_2_f_res_317", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_319")
  %"$test_6_2_g_res_12" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_320" = load i64, i64* @_gasrem, align 8
  %"$gascmp_321" = icmp ugt i64 1, %"$gasrem_320"
  br i1 %"$gascmp_321", label %"$out_of_gas_322", label %"$have_gas_323"

"$out_of_gas_322":                                ; preds = %"$have_gas_311"
  call void @_out_of_gas()
  br label %"$have_gas_323"

"$have_gas_323":                                  ; preds = %"$out_of_gas_322", %"$have_gas_311"
  %"$consume_324" = sub i64 %"$gasrem_320", 1
  store i64 %"$consume_324", i64* @_gasrem, align 8
  %"$adtval_325_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_325_salloc" = call i8* @_salloc(i8* %"$adtval_325_load", i64 1)
  %"$adtval_325" = bitcast i8* %"$adtval_325_salloc" to %CName_None_Bool*
  %"$adtgep_326" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_325", i32 0, i32 0
  store i8 1, i8* %"$adtgep_326", align 1
  %"$adtptr_327" = bitcast %CName_None_Bool* %"$adtval_325" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_327", %TName_Option_Bool** %"$test_6_2_g_res_12", align 8
  %"$execptr_load_328" = load i8*, i8** @_execptr, align 8
  %"$$test_6_2_g_res_12_330" = load %TName_Option_Bool*, %TName_Option_Bool** %"$test_6_2_g_res_12", align 8
  %"$update_value_331" = bitcast %TName_Option_Bool* %"$$test_6_2_g_res_12_330" to i8*
  call void @_update_field(i8* %"$execptr_load_328", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_2_g_res_329", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i32 0, i8* null, i8* %"$update_value_331")
  %"$test_6_3_bal_res_13" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_332" = load i64, i64* @_gasrem, align 8
  %"$gascmp_333" = icmp ugt i64 1, %"$gasrem_332"
  br i1 %"$gascmp_333", label %"$out_of_gas_334", label %"$have_gas_335"

"$out_of_gas_334":                                ; preds = %"$have_gas_323"
  call void @_out_of_gas()
  br label %"$have_gas_335"

"$have_gas_335":                                  ; preds = %"$out_of_gas_334", %"$have_gas_323"
  %"$consume_336" = sub i64 %"$gasrem_332", 1
  store i64 %"$consume_336", i64* @_gasrem, align 8
  %"$adtval_337_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_337_salloc" = call i8* @_salloc(i8* %"$adtval_337_load", i64 1)
  %"$adtval_337" = bitcast i8* %"$adtval_337_salloc" to %CName_None_Uint128*
  %"$adtgep_338" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_337", i32 0, i32 0
  store i8 1, i8* %"$adtgep_338", align 1
  %"$adtptr_339" = bitcast %CName_None_Uint128* %"$adtval_337" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_339", %TName_Option_Uint128** %"$test_6_3_bal_res_13", align 8
  %"$execptr_load_340" = load i8*, i8** @_execptr, align 8
  %"$$test_6_3_bal_res_13_342" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_3_bal_res_13", align 8
  %"$update_value_343" = bitcast %TName_Option_Uint128* %"$$test_6_3_bal_res_13_342" to i8*
  call void @_update_field(i8* %"$execptr_load_340", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_3_bal_res_341", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_343")
  %"$test_6_3_f_res_14" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_344" = load i64, i64* @_gasrem, align 8
  %"$gascmp_345" = icmp ugt i64 1, %"$gasrem_344"
  br i1 %"$gascmp_345", label %"$out_of_gas_346", label %"$have_gas_347"

"$out_of_gas_346":                                ; preds = %"$have_gas_335"
  call void @_out_of_gas()
  br label %"$have_gas_347"

"$have_gas_347":                                  ; preds = %"$out_of_gas_346", %"$have_gas_335"
  %"$consume_348" = sub i64 %"$gasrem_344", 1
  store i64 %"$consume_348", i64* @_gasrem, align 8
  %"$adtval_349_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_349_salloc" = call i8* @_salloc(i8* %"$adtval_349_load", i64 1)
  %"$adtval_349" = bitcast i8* %"$adtval_349_salloc" to %CName_None_Uint128*
  %"$adtgep_350" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_349", i32 0, i32 0
  store i8 1, i8* %"$adtgep_350", align 1
  %"$adtptr_351" = bitcast %CName_None_Uint128* %"$adtval_349" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_351", %TName_Option_Uint128** %"$test_6_3_f_res_14", align 8
  %"$execptr_load_352" = load i8*, i8** @_execptr, align 8
  %"$$test_6_3_f_res_14_354" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_3_f_res_14", align 8
  %"$update_value_355" = bitcast %TName_Option_Uint128* %"$$test_6_3_f_res_14_354" to i8*
  call void @_update_field(i8* %"$execptr_load_352", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_3_f_res_353", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_355")
  %"$test_6_3_g_res_15" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_356" = load i64, i64* @_gasrem, align 8
  %"$gascmp_357" = icmp ugt i64 1, %"$gasrem_356"
  br i1 %"$gascmp_357", label %"$out_of_gas_358", label %"$have_gas_359"

"$out_of_gas_358":                                ; preds = %"$have_gas_347"
  call void @_out_of_gas()
  br label %"$have_gas_359"

"$have_gas_359":                                  ; preds = %"$out_of_gas_358", %"$have_gas_347"
  %"$consume_360" = sub i64 %"$gasrem_356", 1
  store i64 %"$consume_360", i64* @_gasrem, align 8
  %"$adtval_361_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_361_salloc" = call i8* @_salloc(i8* %"$adtval_361_load", i64 1)
  %"$adtval_361" = bitcast i8* %"$adtval_361_salloc" to %CName_None_Bool*
  %"$adtgep_362" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_361", i32 0, i32 0
  store i8 1, i8* %"$adtgep_362", align 1
  %"$adtptr_363" = bitcast %CName_None_Bool* %"$adtval_361" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_363", %TName_Option_Bool** %"$test_6_3_g_res_15", align 8
  %"$execptr_load_364" = load i8*, i8** @_execptr, align 8
  %"$$test_6_3_g_res_15_366" = load %TName_Option_Bool*, %TName_Option_Bool** %"$test_6_3_g_res_15", align 8
  %"$update_value_367" = bitcast %TName_Option_Bool* %"$$test_6_3_g_res_15_366" to i8*
  call void @_update_field(i8* %"$execptr_load_364", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_3_g_res_365", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i32 0, i8* null, i8* %"$update_value_367")
  %"$test_6_4_bal_res_16" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_369" = icmp ugt i64 1, %"$gasrem_368"
  br i1 %"$gascmp_369", label %"$out_of_gas_370", label %"$have_gas_371"

"$out_of_gas_370":                                ; preds = %"$have_gas_359"
  call void @_out_of_gas()
  br label %"$have_gas_371"

"$have_gas_371":                                  ; preds = %"$out_of_gas_370", %"$have_gas_359"
  %"$consume_372" = sub i64 %"$gasrem_368", 1
  store i64 %"$consume_372", i64* @_gasrem, align 8
  %"$adtval_373_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_373_salloc" = call i8* @_salloc(i8* %"$adtval_373_load", i64 1)
  %"$adtval_373" = bitcast i8* %"$adtval_373_salloc" to %CName_None_Uint128*
  %"$adtgep_374" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_373", i32 0, i32 0
  store i8 1, i8* %"$adtgep_374", align 1
  %"$adtptr_375" = bitcast %CName_None_Uint128* %"$adtval_373" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_375", %TName_Option_Uint128** %"$test_6_4_bal_res_16", align 8
  %"$execptr_load_376" = load i8*, i8** @_execptr, align 8
  %"$$test_6_4_bal_res_16_378" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_4_bal_res_16", align 8
  %"$update_value_379" = bitcast %TName_Option_Uint128* %"$$test_6_4_bal_res_16_378" to i8*
  call void @_update_field(i8* %"$execptr_load_376", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_4_bal_res_377", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_379")
  %"$test_6_4_f_res_17" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_381" = icmp ugt i64 1, %"$gasrem_380"
  br i1 %"$gascmp_381", label %"$out_of_gas_382", label %"$have_gas_383"

"$out_of_gas_382":                                ; preds = %"$have_gas_371"
  call void @_out_of_gas()
  br label %"$have_gas_383"

"$have_gas_383":                                  ; preds = %"$out_of_gas_382", %"$have_gas_371"
  %"$consume_384" = sub i64 %"$gasrem_380", 1
  store i64 %"$consume_384", i64* @_gasrem, align 8
  %"$adtval_385_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_385_salloc" = call i8* @_salloc(i8* %"$adtval_385_load", i64 1)
  %"$adtval_385" = bitcast i8* %"$adtval_385_salloc" to %CName_None_Uint128*
  %"$adtgep_386" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_385", i32 0, i32 0
  store i8 1, i8* %"$adtgep_386", align 1
  %"$adtptr_387" = bitcast %CName_None_Uint128* %"$adtval_385" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_387", %TName_Option_Uint128** %"$test_6_4_f_res_17", align 8
  %"$execptr_load_388" = load i8*, i8** @_execptr, align 8
  %"$$test_6_4_f_res_17_390" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_4_f_res_17", align 8
  %"$update_value_391" = bitcast %TName_Option_Uint128* %"$$test_6_4_f_res_17_390" to i8*
  call void @_update_field(i8* %"$execptr_load_388", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_4_f_res_389", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_391")
  %"$test_6_4_g_res_18" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_393" = icmp ugt i64 1, %"$gasrem_392"
  br i1 %"$gascmp_393", label %"$out_of_gas_394", label %"$have_gas_395"

"$out_of_gas_394":                                ; preds = %"$have_gas_383"
  call void @_out_of_gas()
  br label %"$have_gas_395"

"$have_gas_395":                                  ; preds = %"$out_of_gas_394", %"$have_gas_383"
  %"$consume_396" = sub i64 %"$gasrem_392", 1
  store i64 %"$consume_396", i64* @_gasrem, align 8
  %"$adtval_397_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_397_salloc" = call i8* @_salloc(i8* %"$adtval_397_load", i64 1)
  %"$adtval_397" = bitcast i8* %"$adtval_397_salloc" to %CName_None_Bool*
  %"$adtgep_398" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_397", i32 0, i32 0
  store i8 1, i8* %"$adtgep_398", align 1
  %"$adtptr_399" = bitcast %CName_None_Bool* %"$adtval_397" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_399", %TName_Option_Bool** %"$test_6_4_g_res_18", align 8
  %"$execptr_load_400" = load i8*, i8** @_execptr, align 8
  %"$$test_6_4_g_res_18_402" = load %TName_Option_Bool*, %TName_Option_Bool** %"$test_6_4_g_res_18", align 8
  %"$update_value_403" = bitcast %TName_Option_Bool* %"$$test_6_4_g_res_18_402" to i8*
  call void @_update_field(i8* %"$execptr_load_400", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_4_g_res_401", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i32 0, i8* null, i8* %"$update_value_403")
  %"$test_6_4_failed_cast_19" = alloca %TName_Bool*, align 8
  %"$gasrem_404" = load i64, i64* @_gasrem, align 8
  %"$gascmp_405" = icmp ugt i64 1, %"$gasrem_404"
  br i1 %"$gascmp_405", label %"$out_of_gas_406", label %"$have_gas_407"

"$out_of_gas_406":                                ; preds = %"$have_gas_395"
  call void @_out_of_gas()
  br label %"$have_gas_407"

"$have_gas_407":                                  ; preds = %"$out_of_gas_406", %"$have_gas_395"
  %"$consume_408" = sub i64 %"$gasrem_404", 1
  store i64 %"$consume_408", i64* @_gasrem, align 8
  %"$adtval_409_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_409_salloc" = call i8* @_salloc(i8* %"$adtval_409_load", i64 1)
  %"$adtval_409" = bitcast i8* %"$adtval_409_salloc" to %CName_False*
  %"$adtgep_410" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_409", i32 0, i32 0
  store i8 1, i8* %"$adtgep_410", align 1
  %"$adtptr_411" = bitcast %CName_False* %"$adtval_409" to %TName_Bool*
  store %TName_Bool* %"$adtptr_411", %TName_Bool** %"$test_6_4_failed_cast_19", align 8
  %"$execptr_load_412" = load i8*, i8** @_execptr, align 8
  %"$$test_6_4_failed_cast_19_414" = load %TName_Bool*, %TName_Bool** %"$test_6_4_failed_cast_19", align 8
  %"$update_value_415" = bitcast %TName_Bool* %"$$test_6_4_failed_cast_19_414" to i8*
  call void @_update_field(i8* %"$execptr_load_412", i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$test_6_4_failed_cast_413", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i32 0, i8* null, i8* %"$update_value_415")
  %"$test_7_g_res_20" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_416" = load i64, i64* @_gasrem, align 8
  %"$gascmp_417" = icmp ugt i64 1, %"$gasrem_416"
  br i1 %"$gascmp_417", label %"$out_of_gas_418", label %"$have_gas_419"

"$out_of_gas_418":                                ; preds = %"$have_gas_407"
  call void @_out_of_gas()
  br label %"$have_gas_419"

"$have_gas_419":                                  ; preds = %"$out_of_gas_418", %"$have_gas_407"
  %"$consume_420" = sub i64 %"$gasrem_416", 1
  store i64 %"$consume_420", i64* @_gasrem, align 8
  %"$adtval_421_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_421_salloc" = call i8* @_salloc(i8* %"$adtval_421_load", i64 1)
  %"$adtval_421" = bitcast i8* %"$adtval_421_salloc" to %CName_None_Bool*
  %"$adtgep_422" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_421", i32 0, i32 0
  store i8 1, i8* %"$adtgep_422", align 1
  %"$adtptr_423" = bitcast %CName_None_Bool* %"$adtval_421" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_423", %TName_Option_Bool** %"$test_7_g_res_20", align 8
  %"$execptr_load_424" = load i8*, i8** @_execptr, align 8
  %"$$test_7_g_res_20_426" = load %TName_Option_Bool*, %TName_Option_Bool** %"$test_7_g_res_20", align 8
  %"$update_value_427" = bitcast %TName_Option_Bool* %"$$test_7_g_res_20_426" to i8*
  call void @_update_field(i8* %"$execptr_load_424", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_7_g_res_425", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i32 0, i8* null, i8* %"$update_value_427")
  %"$test_7_h_res_21" = alloca %TName_Option_Int256*, align 8
  %"$gasrem_428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_429" = icmp ugt i64 1, %"$gasrem_428"
  br i1 %"$gascmp_429", label %"$out_of_gas_430", label %"$have_gas_431"

"$out_of_gas_430":                                ; preds = %"$have_gas_419"
  call void @_out_of_gas()
  br label %"$have_gas_431"

"$have_gas_431":                                  ; preds = %"$out_of_gas_430", %"$have_gas_419"
  %"$consume_432" = sub i64 %"$gasrem_428", 1
  store i64 %"$consume_432", i64* @_gasrem, align 8
  %"$adtval_433_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_433_salloc" = call i8* @_salloc(i8* %"$adtval_433_load", i64 1)
  %"$adtval_433" = bitcast i8* %"$adtval_433_salloc" to %CName_None_Int256*
  %"$adtgep_434" = getelementptr inbounds %CName_None_Int256, %CName_None_Int256* %"$adtval_433", i32 0, i32 0
  store i8 1, i8* %"$adtgep_434", align 1
  %"$adtptr_435" = bitcast %CName_None_Int256* %"$adtval_433" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$adtptr_435", %TName_Option_Int256** %"$test_7_h_res_21", align 8
  %"$execptr_load_436" = load i8*, i8** @_execptr, align 8
  %"$$test_7_h_res_21_438" = load %TName_Option_Int256*, %TName_Option_Int256** %"$test_7_h_res_21", align 8
  %"$update_value_439" = bitcast %TName_Option_Int256* %"$$test_7_h_res_21_438" to i8*
  call void @_update_field(i8* %"$execptr_load_436", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_7_h_res_437", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int256_59", i32 0, i8* null, i8* %"$update_value_439")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$CastTest1_440"(%Uint128 %_amount, [20 x i8]* %"$_origin_441", [20 x i8]* %"$_sender_442", [20 x i8]* %"$x_443") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_441", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_442", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_443", align 1
  %"$gasrem_444" = load i64, i64* @_gasrem, align 8
  %"$gascmp_445" = icmp ugt i64 2, %"$gasrem_444"
  br i1 %"$gascmp_445", label %"$out_of_gas_446", label %"$have_gas_447"

"$out_of_gas_446":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_447"

"$have_gas_447":                                  ; preds = %"$out_of_gas_446", %entry
  %"$consume_448" = sub i64 %"$gasrem_444", 2
  store i64 %"$consume_448", i64* @_gasrem, align 8
  %res = alloca %TName_Option_ByStr20_with_end*, align 8
  %"$execptr_load_449" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_450" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_450", align 1
  %"$_dynamic_typecast_call_451" = call i8* @_dynamic_typecast(i8* %"$execptr_load_449", [20 x i8]* %"$_dynamic_typecast_x_450", %_TyDescrTy_Typ* @"$TyDescr_Addr_74")
  %"$_dynamic_typecast_452" = bitcast i8* %"$_dynamic_typecast_call_451" to %TName_Option_ByStr20_with_end*
  store %TName_Option_ByStr20_with_end* %"$_dynamic_typecast_452", %TName_Option_ByStr20_with_end** %res, align 8
  %"$res_453" = load %TName_Option_ByStr20_with_end*, %TName_Option_ByStr20_with_end** %res, align 8
  %"$$res_453_454" = bitcast %TName_Option_ByStr20_with_end* %"$res_453" to i8*
  %"$_literal_cost_call_455" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_end_63", i8* %"$$res_453_454")
  %"$gasrem_456" = load i64, i64* @_gasrem, align 8
  %"$gascmp_457" = icmp ugt i64 %"$_literal_cost_call_455", %"$gasrem_456"
  br i1 %"$gascmp_457", label %"$out_of_gas_458", label %"$have_gas_459"

"$out_of_gas_458":                                ; preds = %"$have_gas_447"
  call void @_out_of_gas()
  br label %"$have_gas_459"

"$have_gas_459":                                  ; preds = %"$out_of_gas_458", %"$have_gas_447"
  %"$consume_460" = sub i64 %"$gasrem_456", %"$_literal_cost_call_455"
  store i64 %"$consume_460", i64* @_gasrem, align 8
  %"$execptr_load_461" = load i8*, i8** @_execptr, align 8
  %"$res_463" = load %TName_Option_ByStr20_with_end*, %TName_Option_ByStr20_with_end** %res, align 8
  %"$update_value_464" = bitcast %TName_Option_ByStr20_with_end* %"$res_463" to i8*
  call void @_update_field(i8* %"$execptr_load_461", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_1_res_462", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_end_63", i32 0, i8* null, i8* %"$update_value_464")
  ret void
}

declare i8* @_dynamic_typecast(i8*, [20 x i8]*, %_TyDescrTy_Typ*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @CastTest1(i8* %0) {
entry:
  %"$_amount_466" = getelementptr i8, i8* %0, i32 0
  %"$_amount_467" = bitcast i8* %"$_amount_466" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_467", align 8
  %"$_origin_468" = getelementptr i8, i8* %0, i32 16
  %"$_origin_469" = bitcast i8* %"$_origin_468" to [20 x i8]*
  %"$_sender_470" = getelementptr i8, i8* %0, i32 36
  %"$_sender_471" = bitcast i8* %"$_sender_470" to [20 x i8]*
  %"$x_472" = getelementptr i8, i8* %0, i32 56
  %"$x_473" = bitcast i8* %"$x_472" to [20 x i8]*
  call void @"$CastTest1_440"(%Uint128 %_amount, [20 x i8]* %"$_origin_469", [20 x i8]* %"$_sender_471", [20 x i8]* %"$x_473")
  ret void
}

define internal void @"$CastTest2_474"(%Uint128 %_amount, [20 x i8]* %"$_origin_475", [20 x i8]* %"$_sender_476", [20 x i8]* %"$x_477") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_475", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_476", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_477", align 1
  %"$gasrem_478" = load i64, i64* @_gasrem, align 8
  %"$gascmp_479" = icmp ugt i64 3, %"$gasrem_478"
  br i1 %"$gascmp_479", label %"$out_of_gas_480", label %"$have_gas_481"

"$out_of_gas_480":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_481"

"$have_gas_481":                                  ; preds = %"$out_of_gas_480", %entry
  %"$consume_482" = sub i64 %"$gasrem_478", 3
  store i64 %"$consume_482", i64* @_gasrem, align 8
  %res = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  %"$execptr_load_483" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_484" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_484", align 1
  %"$_dynamic_typecast_call_485" = call i8* @_dynamic_typecast(i8* %"$execptr_load_483", [20 x i8]* %"$_dynamic_typecast_x_484", %_TyDescrTy_Typ* @"$TyDescr_Addr_73")
  %"$_dynamic_typecast_486" = bitcast i8* %"$_dynamic_typecast_call_485" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$_dynamic_typecast_486", %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$res_487" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$$res_487_488" = bitcast %TName_Option_ByStr20_with_contract_end* %"$res_487" to i8*
  %"$_literal_cost_call_489" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_62", i8* %"$$res_487_488")
  %"$gasrem_490" = load i64, i64* @_gasrem, align 8
  %"$gascmp_491" = icmp ugt i64 %"$_literal_cost_call_489", %"$gasrem_490"
  br i1 %"$gascmp_491", label %"$out_of_gas_492", label %"$have_gas_493"

"$out_of_gas_492":                                ; preds = %"$have_gas_481"
  call void @_out_of_gas()
  br label %"$have_gas_493"

"$have_gas_493":                                  ; preds = %"$out_of_gas_492", %"$have_gas_481"
  %"$consume_494" = sub i64 %"$gasrem_490", %"$_literal_cost_call_489"
  store i64 %"$consume_494", i64* @_gasrem, align 8
  %"$execptr_load_495" = load i8*, i8** @_execptr, align 8
  %"$res_497" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$update_value_498" = bitcast %TName_Option_ByStr20_with_contract_end* %"$res_497" to i8*
  call void @_update_field(i8* %"$execptr_load_495", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_2_res_496", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_62", i32 0, i8* null, i8* %"$update_value_498")
  ret void
}

define void @CastTest2(i8* %0) {
entry:
  %"$_amount_500" = getelementptr i8, i8* %0, i32 0
  %"$_amount_501" = bitcast i8* %"$_amount_500" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_501", align 8
  %"$_origin_502" = getelementptr i8, i8* %0, i32 16
  %"$_origin_503" = bitcast i8* %"$_origin_502" to [20 x i8]*
  %"$_sender_504" = getelementptr i8, i8* %0, i32 36
  %"$_sender_505" = bitcast i8* %"$_sender_504" to [20 x i8]*
  %"$x_506" = getelementptr i8, i8* %0, i32 56
  %"$x_507" = bitcast i8* %"$x_506" to [20 x i8]*
  call void @"$CastTest2_474"(%Uint128 %_amount, [20 x i8]* %"$_origin_503", [20 x i8]* %"$_sender_505", [20 x i8]* %"$x_507")
  ret void
}

define internal void @"$CastTest3_508"(%Uint128 %_amount, [20 x i8]* %"$_origin_509", [20 x i8]* %"$_sender_510", [20 x i8]* %"$x_511") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_509", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_510", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_511", align 1
  %"$gasrem_512" = load i64, i64* @_gasrem, align 8
  %"$gascmp_513" = icmp ugt i64 3, %"$gasrem_512"
  br i1 %"$gascmp_513", label %"$out_of_gas_514", label %"$have_gas_515"

"$out_of_gas_514":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_515"

"$have_gas_515":                                  ; preds = %"$out_of_gas_514", %entry
  %"$consume_516" = sub i64 %"$gasrem_512", 3
  store i64 %"$consume_516", i64* @_gasrem, align 8
  %res = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  %"$execptr_load_517" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_518" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_518", align 1
  %"$_dynamic_typecast_call_519" = call i8* @_dynamic_typecast(i8* %"$execptr_load_517", [20 x i8]* %"$_dynamic_typecast_x_518", %_TyDescrTy_Typ* @"$TyDescr_Addr_73")
  %"$_dynamic_typecast_520" = bitcast i8* %"$_dynamic_typecast_call_519" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$_dynamic_typecast_520", %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$res_521" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$$res_521_522" = bitcast %TName_Option_ByStr20_with_contract_end* %"$res_521" to i8*
  %"$_literal_cost_call_523" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_62", i8* %"$$res_521_522")
  %"$gasrem_524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_525" = icmp ugt i64 %"$_literal_cost_call_523", %"$gasrem_524"
  br i1 %"$gascmp_525", label %"$out_of_gas_526", label %"$have_gas_527"

"$out_of_gas_526":                                ; preds = %"$have_gas_515"
  call void @_out_of_gas()
  br label %"$have_gas_527"

"$have_gas_527":                                  ; preds = %"$out_of_gas_526", %"$have_gas_515"
  %"$consume_528" = sub i64 %"$gasrem_524", %"$_literal_cost_call_523"
  store i64 %"$consume_528", i64* @_gasrem, align 8
  %"$execptr_load_529" = load i8*, i8** @_execptr, align 8
  %"$res_531" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$update_value_532" = bitcast %TName_Option_ByStr20_with_contract_end* %"$res_531" to i8*
  call void @_update_field(i8* %"$execptr_load_529", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_3_res_530", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_62", i32 0, i8* null, i8* %"$update_value_532")
  ret void
}

define void @CastTest3(i8* %0) {
entry:
  %"$_amount_534" = getelementptr i8, i8* %0, i32 0
  %"$_amount_535" = bitcast i8* %"$_amount_534" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_535", align 8
  %"$_origin_536" = getelementptr i8, i8* %0, i32 16
  %"$_origin_537" = bitcast i8* %"$_origin_536" to [20 x i8]*
  %"$_sender_538" = getelementptr i8, i8* %0, i32 36
  %"$_sender_539" = bitcast i8* %"$_sender_538" to [20 x i8]*
  %"$x_540" = getelementptr i8, i8* %0, i32 56
  %"$x_541" = bitcast i8* %"$x_540" to [20 x i8]*
  call void @"$CastTest3_508"(%Uint128 %_amount, [20 x i8]* %"$_origin_537", [20 x i8]* %"$_sender_539", [20 x i8]* %"$x_541")
  ret void
}

define internal void @"$CastTest4_542"(%Uint128 %_amount, [20 x i8]* %"$_origin_543", [20 x i8]* %"$_sender_544", [20 x i8]* %"$x_545") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_543", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_544", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_545", align 1
  %"$gasrem_546" = load i64, i64* @_gasrem, align 8
  %"$gascmp_547" = icmp ugt i64 2, %"$gasrem_546"
  br i1 %"$gascmp_547", label %"$out_of_gas_548", label %"$have_gas_549"

"$out_of_gas_548":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_549"

"$have_gas_549":                                  ; preds = %"$out_of_gas_548", %entry
  %"$consume_550" = sub i64 %"$gasrem_546", 2
  store i64 %"$consume_550", i64* @_gasrem, align 8
  %x_cast = alloca %TName_Option_ByStr20_with_end*, align 8
  %"$execptr_load_551" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_552" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_552", align 1
  %"$_dynamic_typecast_call_553" = call i8* @_dynamic_typecast(i8* %"$execptr_load_551", [20 x i8]* %"$_dynamic_typecast_x_552", %_TyDescrTy_Typ* @"$TyDescr_Addr_74")
  %"$_dynamic_typecast_554" = bitcast i8* %"$_dynamic_typecast_call_553" to %TName_Option_ByStr20_with_end*
  store %TName_Option_ByStr20_with_end* %"$_dynamic_typecast_554", %TName_Option_ByStr20_with_end** %x_cast, align 8
  %"$gasrem_555" = load i64, i64* @_gasrem, align 8
  %"$gascmp_556" = icmp ugt i64 2, %"$gasrem_555"
  br i1 %"$gascmp_556", label %"$out_of_gas_557", label %"$have_gas_558"

"$out_of_gas_557":                                ; preds = %"$have_gas_549"
  call void @_out_of_gas()
  br label %"$have_gas_558"

"$have_gas_558":                                  ; preds = %"$out_of_gas_557", %"$have_gas_549"
  %"$consume_559" = sub i64 %"$gasrem_555", 2
  store i64 %"$consume_559", i64* @_gasrem, align 8
  %"$x_cast_561" = load %TName_Option_ByStr20_with_end*, %TName_Option_ByStr20_with_end** %x_cast, align 8
  %"$x_cast_tag_562" = getelementptr inbounds %TName_Option_ByStr20_with_end, %TName_Option_ByStr20_with_end* %"$x_cast_561", i32 0, i32 0
  %"$x_cast_tag_563" = load i8, i8* %"$x_cast_tag_562", align 1
  switch i8 %"$x_cast_tag_563", label %"$empty_default_564" [
    i8 0, label %"$Some_565"
    i8 1, label %"$None_613"
  ]

"$Some_565":                                      ; preds = %"$have_gas_558"
  %"$x_cast_566" = bitcast %TName_Option_ByStr20_with_end* %"$x_cast_561" to %CName_Some_ByStr20_with_end*
  %"$x_as_address_gep_567" = getelementptr inbounds %CName_Some_ByStr20_with_end, %CName_Some_ByStr20_with_end* %"$x_cast_566", i32 0, i32 1
  %"$x_as_address_load_568" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_567", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_568", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_570" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_571" = alloca [20 x i8], align 1
  %"$x_as_address_572" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_572", [20 x i8]* %"$bal_x_as_address_571", align 1
  %"$bal_call_573" = call i8* @_fetch_remote_field(i8* %"$execptr_load_570", [20 x i8]* %"$bal_x_as_address_571", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_569", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$bal_574" = bitcast i8* %"$bal_call_573" to %Uint128*
  %"$bal_575" = load %Uint128, %Uint128* %"$bal_574", align 8
  store %Uint128 %"$bal_575", %Uint128* %bal, align 8
  %"$_literal_cost_bal_576" = alloca %Uint128, align 8
  %"$bal_577" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_577", %Uint128* %"$_literal_cost_bal_576", align 8
  %"$$_literal_cost_bal_576_578" = bitcast %Uint128* %"$_literal_cost_bal_576" to i8*
  %"$_literal_cost_call_579" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_576_578")
  %"$gasadd_580" = add i64 %"$_literal_cost_call_579", 0
  %"$gasrem_581" = load i64, i64* @_gasrem, align 8
  %"$gascmp_582" = icmp ugt i64 %"$gasadd_580", %"$gasrem_581"
  br i1 %"$gascmp_582", label %"$out_of_gas_583", label %"$have_gas_584"

"$out_of_gas_583":                                ; preds = %"$Some_565"
  call void @_out_of_gas()
  br label %"$have_gas_584"

"$have_gas_584":                                  ; preds = %"$out_of_gas_583", %"$Some_565"
  %"$consume_585" = sub i64 %"$gasrem_581", %"$gasadd_580"
  store i64 %"$consume_585", i64* @_gasrem, align 8
  %"$gasrem_586" = load i64, i64* @_gasrem, align 8
  %"$gascmp_587" = icmp ugt i64 1, %"$gasrem_586"
  br i1 %"$gascmp_587", label %"$out_of_gas_588", label %"$have_gas_589"

"$out_of_gas_588":                                ; preds = %"$have_gas_584"
  call void @_out_of_gas()
  br label %"$have_gas_589"

"$have_gas_589":                                  ; preds = %"$out_of_gas_588", %"$have_gas_584"
  %"$consume_590" = sub i64 %"$gasrem_586", 1
  store i64 %"$consume_590", i64* @_gasrem, align 8
  %res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_591" = load i64, i64* @_gasrem, align 8
  %"$gascmp_592" = icmp ugt i64 1, %"$gasrem_591"
  br i1 %"$gascmp_592", label %"$out_of_gas_593", label %"$have_gas_594"

"$out_of_gas_593":                                ; preds = %"$have_gas_589"
  call void @_out_of_gas()
  br label %"$have_gas_594"

"$have_gas_594":                                  ; preds = %"$out_of_gas_593", %"$have_gas_589"
  %"$consume_595" = sub i64 %"$gasrem_591", 1
  store i64 %"$consume_595", i64* @_gasrem, align 8
  %"$bal_596" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_597_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_597_salloc" = call i8* @_salloc(i8* %"$adtval_597_load", i64 17)
  %"$adtval_597" = bitcast i8* %"$adtval_597_salloc" to %CName_Some_Uint128*
  %"$adtgep_598" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_597", i32 0, i32 0
  store i8 0, i8* %"$adtgep_598", align 1
  %"$adtgep_599" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_597", i32 0, i32 1
  store %Uint128 %"$bal_596", %Uint128* %"$adtgep_599", align 8
  %"$adtptr_600" = bitcast %CName_Some_Uint128* %"$adtval_597" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_600", %TName_Option_Uint128** %res, align 8
  %"$res_601" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$$res_601_602" = bitcast %TName_Option_Uint128* %"$res_601" to i8*
  %"$_literal_cost_call_603" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i8* %"$$res_601_602")
  %"$gasrem_604" = load i64, i64* @_gasrem, align 8
  %"$gascmp_605" = icmp ugt i64 %"$_literal_cost_call_603", %"$gasrem_604"
  br i1 %"$gascmp_605", label %"$out_of_gas_606", label %"$have_gas_607"

"$out_of_gas_606":                                ; preds = %"$have_gas_594"
  call void @_out_of_gas()
  br label %"$have_gas_607"

"$have_gas_607":                                  ; preds = %"$out_of_gas_606", %"$have_gas_594"
  %"$consume_608" = sub i64 %"$gasrem_604", %"$_literal_cost_call_603"
  store i64 %"$consume_608", i64* @_gasrem, align 8
  %"$execptr_load_609" = load i8*, i8** @_execptr, align 8
  %"$res_611" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$update_value_612" = bitcast %TName_Option_Uint128* %"$res_611" to i8*
  call void @_update_field(i8* %"$execptr_load_609", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_4_res_610", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_612")
  br label %"$matchsucc_560"

"$None_613":                                      ; preds = %"$have_gas_558"
  %"$x_cast_614" = bitcast %TName_Option_ByStr20_with_end* %"$x_cast_561" to %CName_None_ByStr20_with_end*
  br label %"$matchsucc_560"

"$empty_default_564":                             ; preds = %"$have_gas_558"
  br label %"$matchsucc_560"

"$matchsucc_560":                                 ; preds = %"$None_613", %"$have_gas_607", %"$empty_default_564"
  ret void
}

declare i8* @_fetch_remote_field(i8*, [20 x i8]*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @CastTest4(i8* %0) {
entry:
  %"$_amount_616" = getelementptr i8, i8* %0, i32 0
  %"$_amount_617" = bitcast i8* %"$_amount_616" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_617", align 8
  %"$_origin_618" = getelementptr i8, i8* %0, i32 16
  %"$_origin_619" = bitcast i8* %"$_origin_618" to [20 x i8]*
  %"$_sender_620" = getelementptr i8, i8* %0, i32 36
  %"$_sender_621" = bitcast i8* %"$_sender_620" to [20 x i8]*
  %"$x_622" = getelementptr i8, i8* %0, i32 56
  %"$x_623" = bitcast i8* %"$x_622" to [20 x i8]*
  call void @"$CastTest4_542"(%Uint128 %_amount, [20 x i8]* %"$_origin_619", [20 x i8]* %"$_sender_621", [20 x i8]* %"$x_623")
  ret void
}

define internal void @"$CastTest5_1_624"(%Uint128 %_amount, [20 x i8]* %"$_origin_625", [20 x i8]* %"$_sender_626", [20 x i8]* %"$x_627") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_625", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_626", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_627", align 1
  %"$gasrem_628" = load i64, i64* @_gasrem, align 8
  %"$gascmp_629" = icmp ugt i64 3, %"$gasrem_628"
  br i1 %"$gascmp_629", label %"$out_of_gas_630", label %"$have_gas_631"

"$out_of_gas_630":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_631"

"$have_gas_631":                                  ; preds = %"$out_of_gas_630", %entry
  %"$consume_632" = sub i64 %"$gasrem_628", 3
  store i64 %"$consume_632", i64* @_gasrem, align 8
  %x_cast = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  %"$execptr_load_633" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_634" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_634", align 1
  %"$_dynamic_typecast_call_635" = call i8* @_dynamic_typecast(i8* %"$execptr_load_633", [20 x i8]* %"$_dynamic_typecast_x_634", %_TyDescrTy_Typ* @"$TyDescr_Addr_73")
  %"$_dynamic_typecast_636" = bitcast i8* %"$_dynamic_typecast_call_635" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$_dynamic_typecast_636", %TName_Option_ByStr20_with_contract_end** %x_cast, align 8
  %"$gasrem_637" = load i64, i64* @_gasrem, align 8
  %"$gascmp_638" = icmp ugt i64 2, %"$gasrem_637"
  br i1 %"$gascmp_638", label %"$out_of_gas_639", label %"$have_gas_640"

"$out_of_gas_639":                                ; preds = %"$have_gas_631"
  call void @_out_of_gas()
  br label %"$have_gas_640"

"$have_gas_640":                                  ; preds = %"$out_of_gas_639", %"$have_gas_631"
  %"$consume_641" = sub i64 %"$gasrem_637", 2
  store i64 %"$consume_641", i64* @_gasrem, align 8
  %"$x_cast_643" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %x_cast, align 8
  %"$x_cast_tag_644" = getelementptr inbounds %TName_Option_ByStr20_with_contract_end, %TName_Option_ByStr20_with_contract_end* %"$x_cast_643", i32 0, i32 0
  %"$x_cast_tag_645" = load i8, i8* %"$x_cast_tag_644", align 1
  switch i8 %"$x_cast_tag_645", label %"$empty_default_646" [
    i8 0, label %"$Some_647"
    i8 1, label %"$None_695"
  ]

"$Some_647":                                      ; preds = %"$have_gas_640"
  %"$x_cast_648" = bitcast %TName_Option_ByStr20_with_contract_end* %"$x_cast_643" to %CName_Some_ByStr20_with_contract_end*
  %"$x_as_address_gep_649" = getelementptr inbounds %CName_Some_ByStr20_with_contract_end, %CName_Some_ByStr20_with_contract_end* %"$x_cast_648", i32 0, i32 1
  %"$x_as_address_load_650" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_649", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_650", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_652" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_653" = alloca [20 x i8], align 1
  %"$x_as_address_654" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_654", [20 x i8]* %"$bal_x_as_address_653", align 1
  %"$bal_call_655" = call i8* @_fetch_remote_field(i8* %"$execptr_load_652", [20 x i8]* %"$bal_x_as_address_653", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_651", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$bal_656" = bitcast i8* %"$bal_call_655" to %Uint128*
  %"$bal_657" = load %Uint128, %Uint128* %"$bal_656", align 8
  store %Uint128 %"$bal_657", %Uint128* %bal, align 8
  %"$_literal_cost_bal_658" = alloca %Uint128, align 8
  %"$bal_659" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_659", %Uint128* %"$_literal_cost_bal_658", align 8
  %"$$_literal_cost_bal_658_660" = bitcast %Uint128* %"$_literal_cost_bal_658" to i8*
  %"$_literal_cost_call_661" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_658_660")
  %"$gasadd_662" = add i64 %"$_literal_cost_call_661", 0
  %"$gasrem_663" = load i64, i64* @_gasrem, align 8
  %"$gascmp_664" = icmp ugt i64 %"$gasadd_662", %"$gasrem_663"
  br i1 %"$gascmp_664", label %"$out_of_gas_665", label %"$have_gas_666"

"$out_of_gas_665":                                ; preds = %"$Some_647"
  call void @_out_of_gas()
  br label %"$have_gas_666"

"$have_gas_666":                                  ; preds = %"$out_of_gas_665", %"$Some_647"
  %"$consume_667" = sub i64 %"$gasrem_663", %"$gasadd_662"
  store i64 %"$consume_667", i64* @_gasrem, align 8
  %"$gasrem_668" = load i64, i64* @_gasrem, align 8
  %"$gascmp_669" = icmp ugt i64 1, %"$gasrem_668"
  br i1 %"$gascmp_669", label %"$out_of_gas_670", label %"$have_gas_671"

"$out_of_gas_670":                                ; preds = %"$have_gas_666"
  call void @_out_of_gas()
  br label %"$have_gas_671"

"$have_gas_671":                                  ; preds = %"$out_of_gas_670", %"$have_gas_666"
  %"$consume_672" = sub i64 %"$gasrem_668", 1
  store i64 %"$consume_672", i64* @_gasrem, align 8
  %res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_673" = load i64, i64* @_gasrem, align 8
  %"$gascmp_674" = icmp ugt i64 1, %"$gasrem_673"
  br i1 %"$gascmp_674", label %"$out_of_gas_675", label %"$have_gas_676"

"$out_of_gas_675":                                ; preds = %"$have_gas_671"
  call void @_out_of_gas()
  br label %"$have_gas_676"

"$have_gas_676":                                  ; preds = %"$out_of_gas_675", %"$have_gas_671"
  %"$consume_677" = sub i64 %"$gasrem_673", 1
  store i64 %"$consume_677", i64* @_gasrem, align 8
  %"$bal_678" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_679_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_679_salloc" = call i8* @_salloc(i8* %"$adtval_679_load", i64 17)
  %"$adtval_679" = bitcast i8* %"$adtval_679_salloc" to %CName_Some_Uint128*
  %"$adtgep_680" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_679", i32 0, i32 0
  store i8 0, i8* %"$adtgep_680", align 1
  %"$adtgep_681" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_679", i32 0, i32 1
  store %Uint128 %"$bal_678", %Uint128* %"$adtgep_681", align 8
  %"$adtptr_682" = bitcast %CName_Some_Uint128* %"$adtval_679" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_682", %TName_Option_Uint128** %res, align 8
  %"$res_683" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$$res_683_684" = bitcast %TName_Option_Uint128* %"$res_683" to i8*
  %"$_literal_cost_call_685" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i8* %"$$res_683_684")
  %"$gasrem_686" = load i64, i64* @_gasrem, align 8
  %"$gascmp_687" = icmp ugt i64 %"$_literal_cost_call_685", %"$gasrem_686"
  br i1 %"$gascmp_687", label %"$out_of_gas_688", label %"$have_gas_689"

"$out_of_gas_688":                                ; preds = %"$have_gas_676"
  call void @_out_of_gas()
  br label %"$have_gas_689"

"$have_gas_689":                                  ; preds = %"$out_of_gas_688", %"$have_gas_676"
  %"$consume_690" = sub i64 %"$gasrem_686", %"$_literal_cost_call_685"
  store i64 %"$consume_690", i64* @_gasrem, align 8
  %"$execptr_load_691" = load i8*, i8** @_execptr, align 8
  %"$res_693" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$update_value_694" = bitcast %TName_Option_Uint128* %"$res_693" to i8*
  call void @_update_field(i8* %"$execptr_load_691", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_5_1_res_692", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_694")
  br label %"$matchsucc_642"

"$None_695":                                      ; preds = %"$have_gas_640"
  %"$x_cast_696" = bitcast %TName_Option_ByStr20_with_contract_end* %"$x_cast_643" to %CName_None_ByStr20_with_contract_end*
  br label %"$matchsucc_642"

"$empty_default_646":                             ; preds = %"$have_gas_640"
  br label %"$matchsucc_642"

"$matchsucc_642":                                 ; preds = %"$None_695", %"$have_gas_689", %"$empty_default_646"
  ret void
}

define void @CastTest5_1(i8* %0) {
entry:
  %"$_amount_698" = getelementptr i8, i8* %0, i32 0
  %"$_amount_699" = bitcast i8* %"$_amount_698" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_699", align 8
  %"$_origin_700" = getelementptr i8, i8* %0, i32 16
  %"$_origin_701" = bitcast i8* %"$_origin_700" to [20 x i8]*
  %"$_sender_702" = getelementptr i8, i8* %0, i32 36
  %"$_sender_703" = bitcast i8* %"$_sender_702" to [20 x i8]*
  %"$x_704" = getelementptr i8, i8* %0, i32 56
  %"$x_705" = bitcast i8* %"$x_704" to [20 x i8]*
  call void @"$CastTest5_1_624"(%Uint128 %_amount, [20 x i8]* %"$_origin_701", [20 x i8]* %"$_sender_703", [20 x i8]* %"$x_705")
  ret void
}

define internal void @"$CastTest5_2_706"(%Uint128 %_amount, [20 x i8]* %"$_origin_707", [20 x i8]* %"$_sender_708", [20 x i8]* %"$x_709") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_707", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_708", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_709", align 1
  %"$gasrem_710" = load i64, i64* @_gasrem, align 8
  %"$gascmp_711" = icmp ugt i64 3, %"$gasrem_710"
  br i1 %"$gascmp_711", label %"$out_of_gas_712", label %"$have_gas_713"

"$out_of_gas_712":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_713"

"$have_gas_713":                                  ; preds = %"$out_of_gas_712", %entry
  %"$consume_714" = sub i64 %"$gasrem_710", 3
  store i64 %"$consume_714", i64* @_gasrem, align 8
  %x_cast = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  %"$execptr_load_715" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_716" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_716", align 1
  %"$_dynamic_typecast_call_717" = call i8* @_dynamic_typecast(i8* %"$execptr_load_715", [20 x i8]* %"$_dynamic_typecast_x_716", %_TyDescrTy_Typ* @"$TyDescr_Addr_73")
  %"$_dynamic_typecast_718" = bitcast i8* %"$_dynamic_typecast_call_717" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$_dynamic_typecast_718", %TName_Option_ByStr20_with_contract_end** %x_cast, align 8
  %"$gasrem_719" = load i64, i64* @_gasrem, align 8
  %"$gascmp_720" = icmp ugt i64 2, %"$gasrem_719"
  br i1 %"$gascmp_720", label %"$out_of_gas_721", label %"$have_gas_722"

"$out_of_gas_721":                                ; preds = %"$have_gas_713"
  call void @_out_of_gas()
  br label %"$have_gas_722"

"$have_gas_722":                                  ; preds = %"$out_of_gas_721", %"$have_gas_713"
  %"$consume_723" = sub i64 %"$gasrem_719", 2
  store i64 %"$consume_723", i64* @_gasrem, align 8
  %"$x_cast_725" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %x_cast, align 8
  %"$x_cast_tag_726" = getelementptr inbounds %TName_Option_ByStr20_with_contract_end, %TName_Option_ByStr20_with_contract_end* %"$x_cast_725", i32 0, i32 0
  %"$x_cast_tag_727" = load i8, i8* %"$x_cast_tag_726", align 1
  switch i8 %"$x_cast_tag_727", label %"$empty_default_728" [
    i8 0, label %"$Some_729"
    i8 1, label %"$None_777"
  ]

"$Some_729":                                      ; preds = %"$have_gas_722"
  %"$x_cast_730" = bitcast %TName_Option_ByStr20_with_contract_end* %"$x_cast_725" to %CName_Some_ByStr20_with_contract_end*
  %"$x_as_address_gep_731" = getelementptr inbounds %CName_Some_ByStr20_with_contract_end, %CName_Some_ByStr20_with_contract_end* %"$x_cast_730", i32 0, i32 1
  %"$x_as_address_load_732" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_731", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_732", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_734" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_735" = alloca [20 x i8], align 1
  %"$x_as_address_736" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_736", [20 x i8]* %"$bal_x_as_address_735", align 1
  %"$bal_call_737" = call i8* @_fetch_remote_field(i8* %"$execptr_load_734", [20 x i8]* %"$bal_x_as_address_735", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_733", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$bal_738" = bitcast i8* %"$bal_call_737" to %Uint128*
  %"$bal_739" = load %Uint128, %Uint128* %"$bal_738", align 8
  store %Uint128 %"$bal_739", %Uint128* %bal, align 8
  %"$_literal_cost_bal_740" = alloca %Uint128, align 8
  %"$bal_741" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_741", %Uint128* %"$_literal_cost_bal_740", align 8
  %"$$_literal_cost_bal_740_742" = bitcast %Uint128* %"$_literal_cost_bal_740" to i8*
  %"$_literal_cost_call_743" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_740_742")
  %"$gasadd_744" = add i64 %"$_literal_cost_call_743", 0
  %"$gasrem_745" = load i64, i64* @_gasrem, align 8
  %"$gascmp_746" = icmp ugt i64 %"$gasadd_744", %"$gasrem_745"
  br i1 %"$gascmp_746", label %"$out_of_gas_747", label %"$have_gas_748"

"$out_of_gas_747":                                ; preds = %"$Some_729"
  call void @_out_of_gas()
  br label %"$have_gas_748"

"$have_gas_748":                                  ; preds = %"$out_of_gas_747", %"$Some_729"
  %"$consume_749" = sub i64 %"$gasrem_745", %"$gasadd_744"
  store i64 %"$consume_749", i64* @_gasrem, align 8
  %"$gasrem_750" = load i64, i64* @_gasrem, align 8
  %"$gascmp_751" = icmp ugt i64 1, %"$gasrem_750"
  br i1 %"$gascmp_751", label %"$out_of_gas_752", label %"$have_gas_753"

"$out_of_gas_752":                                ; preds = %"$have_gas_748"
  call void @_out_of_gas()
  br label %"$have_gas_753"

"$have_gas_753":                                  ; preds = %"$out_of_gas_752", %"$have_gas_748"
  %"$consume_754" = sub i64 %"$gasrem_750", 1
  store i64 %"$consume_754", i64* @_gasrem, align 8
  %res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_755" = load i64, i64* @_gasrem, align 8
  %"$gascmp_756" = icmp ugt i64 1, %"$gasrem_755"
  br i1 %"$gascmp_756", label %"$out_of_gas_757", label %"$have_gas_758"

"$out_of_gas_757":                                ; preds = %"$have_gas_753"
  call void @_out_of_gas()
  br label %"$have_gas_758"

"$have_gas_758":                                  ; preds = %"$out_of_gas_757", %"$have_gas_753"
  %"$consume_759" = sub i64 %"$gasrem_755", 1
  store i64 %"$consume_759", i64* @_gasrem, align 8
  %"$bal_760" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_761_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_761_salloc" = call i8* @_salloc(i8* %"$adtval_761_load", i64 17)
  %"$adtval_761" = bitcast i8* %"$adtval_761_salloc" to %CName_Some_Uint128*
  %"$adtgep_762" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_761", i32 0, i32 0
  store i8 0, i8* %"$adtgep_762", align 1
  %"$adtgep_763" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_761", i32 0, i32 1
  store %Uint128 %"$bal_760", %Uint128* %"$adtgep_763", align 8
  %"$adtptr_764" = bitcast %CName_Some_Uint128* %"$adtval_761" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_764", %TName_Option_Uint128** %res, align 8
  %"$res_765" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$$res_765_766" = bitcast %TName_Option_Uint128* %"$res_765" to i8*
  %"$_literal_cost_call_767" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i8* %"$$res_765_766")
  %"$gasrem_768" = load i64, i64* @_gasrem, align 8
  %"$gascmp_769" = icmp ugt i64 %"$_literal_cost_call_767", %"$gasrem_768"
  br i1 %"$gascmp_769", label %"$out_of_gas_770", label %"$have_gas_771"

"$out_of_gas_770":                                ; preds = %"$have_gas_758"
  call void @_out_of_gas()
  br label %"$have_gas_771"

"$have_gas_771":                                  ; preds = %"$out_of_gas_770", %"$have_gas_758"
  %"$consume_772" = sub i64 %"$gasrem_768", %"$_literal_cost_call_767"
  store i64 %"$consume_772", i64* @_gasrem, align 8
  %"$execptr_load_773" = load i8*, i8** @_execptr, align 8
  %"$res_775" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$update_value_776" = bitcast %TName_Option_Uint128* %"$res_775" to i8*
  call void @_update_field(i8* %"$execptr_load_773", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_5_2_res_774", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_776")
  br label %"$matchsucc_724"

"$None_777":                                      ; preds = %"$have_gas_722"
  %"$x_cast_778" = bitcast %TName_Option_ByStr20_with_contract_end* %"$x_cast_725" to %CName_None_ByStr20_with_contract_end*
  br label %"$matchsucc_724"

"$empty_default_728":                             ; preds = %"$have_gas_722"
  br label %"$matchsucc_724"

"$matchsucc_724":                                 ; preds = %"$None_777", %"$have_gas_771", %"$empty_default_728"
  ret void
}

define void @CastTest5_2(i8* %0) {
entry:
  %"$_amount_780" = getelementptr i8, i8* %0, i32 0
  %"$_amount_781" = bitcast i8* %"$_amount_780" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_781", align 8
  %"$_origin_782" = getelementptr i8, i8* %0, i32 16
  %"$_origin_783" = bitcast i8* %"$_origin_782" to [20 x i8]*
  %"$_sender_784" = getelementptr i8, i8* %0, i32 36
  %"$_sender_785" = bitcast i8* %"$_sender_784" to [20 x i8]*
  %"$x_786" = getelementptr i8, i8* %0, i32 56
  %"$x_787" = bitcast i8* %"$x_786" to [20 x i8]*
  call void @"$CastTest5_2_706"(%Uint128 %_amount, [20 x i8]* %"$_origin_783", [20 x i8]* %"$_sender_785", [20 x i8]* %"$x_787")
  ret void
}

define internal void @"$CastTest6_1_788"(%Uint128 %_amount, [20 x i8]* %"$_origin_789", [20 x i8]* %"$_sender_790", [20 x i8]* %"$x_791") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_789", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_790", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_791", align 1
  %"$gasrem_792" = load i64, i64* @_gasrem, align 8
  %"$gascmp_793" = icmp ugt i64 5, %"$gasrem_792"
  br i1 %"$gascmp_793", label %"$out_of_gas_794", label %"$have_gas_795"

"$out_of_gas_794":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_795"

"$have_gas_795":                                  ; preds = %"$out_of_gas_794", %entry
  %"$consume_796" = sub i64 %"$gasrem_792", 5
  store i64 %"$consume_796", i64* @_gasrem, align 8
  %x_cast = alloca %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, align 8
  %"$execptr_load_797" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_798" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_798", align 1
  %"$_dynamic_typecast_call_799" = call i8* @_dynamic_typecast(i8* %"$execptr_load_797", [20 x i8]* %"$_dynamic_typecast_x_798", %_TyDescrTy_Typ* @"$TyDescr_Addr_72")
  %"$_dynamic_typecast_800" = bitcast i8* %"$_dynamic_typecast_call_799" to %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  store %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$_dynamic_typecast_800", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$gasrem_801" = load i64, i64* @_gasrem, align 8
  %"$gascmp_802" = icmp ugt i64 2, %"$gasrem_801"
  br i1 %"$gascmp_802", label %"$out_of_gas_803", label %"$have_gas_804"

"$out_of_gas_803":                                ; preds = %"$have_gas_795"
  call void @_out_of_gas()
  br label %"$have_gas_804"

"$have_gas_804":                                  ; preds = %"$out_of_gas_803", %"$have_gas_795"
  %"$consume_805" = sub i64 %"$gasrem_801", 2
  store i64 %"$consume_805", i64* @_gasrem, align 8
  %"$x_cast_807" = load %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$x_cast_tag_808" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_807", i32 0, i32 0
  %"$x_cast_tag_809" = load i8, i8* %"$x_cast_tag_808", align 1
  switch i8 %"$x_cast_tag_809", label %"$empty_default_810" [
    i8 0, label %"$Some_811"
    i8 1, label %"$None_945"
  ]

"$Some_811":                                      ; preds = %"$have_gas_804"
  %"$x_cast_812" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_807" to %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  %"$x_as_address_gep_813" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_812", i32 0, i32 1
  %"$x_as_address_load_814" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_813", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_814", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_816" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_817" = alloca [20 x i8], align 1
  %"$x_as_address_818" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_818", [20 x i8]* %"$bal_x_as_address_817", align 1
  %"$bal_call_819" = call i8* @_fetch_remote_field(i8* %"$execptr_load_816", [20 x i8]* %"$bal_x_as_address_817", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_815", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$bal_820" = bitcast i8* %"$bal_call_819" to %Uint128*
  %"$bal_821" = load %Uint128, %Uint128* %"$bal_820", align 8
  store %Uint128 %"$bal_821", %Uint128* %bal, align 8
  %"$_literal_cost_bal_822" = alloca %Uint128, align 8
  %"$bal_823" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_823", %Uint128* %"$_literal_cost_bal_822", align 8
  %"$$_literal_cost_bal_822_824" = bitcast %Uint128* %"$_literal_cost_bal_822" to i8*
  %"$_literal_cost_call_825" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_822_824")
  %"$gasadd_826" = add i64 %"$_literal_cost_call_825", 0
  %"$gasrem_827" = load i64, i64* @_gasrem, align 8
  %"$gascmp_828" = icmp ugt i64 %"$gasadd_826", %"$gasrem_827"
  br i1 %"$gascmp_828", label %"$out_of_gas_829", label %"$have_gas_830"

"$out_of_gas_829":                                ; preds = %"$Some_811"
  call void @_out_of_gas()
  br label %"$have_gas_830"

"$have_gas_830":                                  ; preds = %"$out_of_gas_829", %"$Some_811"
  %"$consume_831" = sub i64 %"$gasrem_827", %"$gasadd_826"
  store i64 %"$consume_831", i64* @_gasrem, align 8
  %"$gasrem_832" = load i64, i64* @_gasrem, align 8
  %"$gascmp_833" = icmp ugt i64 1, %"$gasrem_832"
  br i1 %"$gascmp_833", label %"$out_of_gas_834", label %"$have_gas_835"

"$out_of_gas_834":                                ; preds = %"$have_gas_830"
  call void @_out_of_gas()
  br label %"$have_gas_835"

"$have_gas_835":                                  ; preds = %"$out_of_gas_834", %"$have_gas_830"
  %"$consume_836" = sub i64 %"$gasrem_832", 1
  store i64 %"$consume_836", i64* @_gasrem, align 8
  %bal_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_837" = load i64, i64* @_gasrem, align 8
  %"$gascmp_838" = icmp ugt i64 1, %"$gasrem_837"
  br i1 %"$gascmp_838", label %"$out_of_gas_839", label %"$have_gas_840"

"$out_of_gas_839":                                ; preds = %"$have_gas_835"
  call void @_out_of_gas()
  br label %"$have_gas_840"

"$have_gas_840":                                  ; preds = %"$out_of_gas_839", %"$have_gas_835"
  %"$consume_841" = sub i64 %"$gasrem_837", 1
  store i64 %"$consume_841", i64* @_gasrem, align 8
  %"$bal_842" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_843_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_843_salloc" = call i8* @_salloc(i8* %"$adtval_843_load", i64 17)
  %"$adtval_843" = bitcast i8* %"$adtval_843_salloc" to %CName_Some_Uint128*
  %"$adtgep_844" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_843", i32 0, i32 0
  store i8 0, i8* %"$adtgep_844", align 1
  %"$adtgep_845" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_843", i32 0, i32 1
  store %Uint128 %"$bal_842", %Uint128* %"$adtgep_845", align 8
  %"$adtptr_846" = bitcast %CName_Some_Uint128* %"$adtval_843" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_846", %TName_Option_Uint128** %bal_res, align 8
  %"$bal_res_847" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$$bal_res_847_848" = bitcast %TName_Option_Uint128* %"$bal_res_847" to i8*
  %"$_literal_cost_call_849" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i8* %"$$bal_res_847_848")
  %"$gasrem_850" = load i64, i64* @_gasrem, align 8
  %"$gascmp_851" = icmp ugt i64 %"$_literal_cost_call_849", %"$gasrem_850"
  br i1 %"$gascmp_851", label %"$out_of_gas_852", label %"$have_gas_853"

"$out_of_gas_852":                                ; preds = %"$have_gas_840"
  call void @_out_of_gas()
  br label %"$have_gas_853"

"$have_gas_853":                                  ; preds = %"$out_of_gas_852", %"$have_gas_840"
  %"$consume_854" = sub i64 %"$gasrem_850", %"$_literal_cost_call_849"
  store i64 %"$consume_854", i64* @_gasrem, align 8
  %"$execptr_load_855" = load i8*, i8** @_execptr, align 8
  %"$bal_res_857" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$update_value_858" = bitcast %TName_Option_Uint128* %"$bal_res_857" to i8*
  call void @_update_field(i8* %"$execptr_load_855", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_1_bal_res_856", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_858")
  %f = alloca %Uint128, align 8
  %"$execptr_load_860" = load i8*, i8** @_execptr, align 8
  %"$f_x_as_address_861" = alloca [20 x i8], align 1
  %"$x_as_address_862" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_862", [20 x i8]* %"$f_x_as_address_861", align 1
  %"$f_call_863" = call i8* @_fetch_remote_field(i8* %"$execptr_load_860", [20 x i8]* %"$f_x_as_address_861", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_859", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$f_864" = bitcast i8* %"$f_call_863" to %Uint128*
  %"$f_865" = load %Uint128, %Uint128* %"$f_864", align 8
  store %Uint128 %"$f_865", %Uint128* %f, align 8
  %"$_literal_cost_f_866" = alloca %Uint128, align 8
  %"$f_867" = load %Uint128, %Uint128* %f, align 8
  store %Uint128 %"$f_867", %Uint128* %"$_literal_cost_f_866", align 8
  %"$$_literal_cost_f_866_868" = bitcast %Uint128* %"$_literal_cost_f_866" to i8*
  %"$_literal_cost_call_869" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_f_866_868")
  %"$gasadd_870" = add i64 %"$_literal_cost_call_869", 0
  %"$gasrem_871" = load i64, i64* @_gasrem, align 8
  %"$gascmp_872" = icmp ugt i64 %"$gasadd_870", %"$gasrem_871"
  br i1 %"$gascmp_872", label %"$out_of_gas_873", label %"$have_gas_874"

"$out_of_gas_873":                                ; preds = %"$have_gas_853"
  call void @_out_of_gas()
  br label %"$have_gas_874"

"$have_gas_874":                                  ; preds = %"$out_of_gas_873", %"$have_gas_853"
  %"$consume_875" = sub i64 %"$gasrem_871", %"$gasadd_870"
  store i64 %"$consume_875", i64* @_gasrem, align 8
  %"$gasrem_876" = load i64, i64* @_gasrem, align 8
  %"$gascmp_877" = icmp ugt i64 1, %"$gasrem_876"
  br i1 %"$gascmp_877", label %"$out_of_gas_878", label %"$have_gas_879"

"$out_of_gas_878":                                ; preds = %"$have_gas_874"
  call void @_out_of_gas()
  br label %"$have_gas_879"

"$have_gas_879":                                  ; preds = %"$out_of_gas_878", %"$have_gas_874"
  %"$consume_880" = sub i64 %"$gasrem_876", 1
  store i64 %"$consume_880", i64* @_gasrem, align 8
  %f_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_881" = load i64, i64* @_gasrem, align 8
  %"$gascmp_882" = icmp ugt i64 1, %"$gasrem_881"
  br i1 %"$gascmp_882", label %"$out_of_gas_883", label %"$have_gas_884"

"$out_of_gas_883":                                ; preds = %"$have_gas_879"
  call void @_out_of_gas()
  br label %"$have_gas_884"

"$have_gas_884":                                  ; preds = %"$out_of_gas_883", %"$have_gas_879"
  %"$consume_885" = sub i64 %"$gasrem_881", 1
  store i64 %"$consume_885", i64* @_gasrem, align 8
  %"$f_886" = load %Uint128, %Uint128* %f, align 8
  %"$adtval_887_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_887_salloc" = call i8* @_salloc(i8* %"$adtval_887_load", i64 17)
  %"$adtval_887" = bitcast i8* %"$adtval_887_salloc" to %CName_Some_Uint128*
  %"$adtgep_888" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_887", i32 0, i32 0
  store i8 0, i8* %"$adtgep_888", align 1
  %"$adtgep_889" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_887", i32 0, i32 1
  store %Uint128 %"$f_886", %Uint128* %"$adtgep_889", align 8
  %"$adtptr_890" = bitcast %CName_Some_Uint128* %"$adtval_887" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_890", %TName_Option_Uint128** %f_res, align 8
  %"$f_res_891" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$$f_res_891_892" = bitcast %TName_Option_Uint128* %"$f_res_891" to i8*
  %"$_literal_cost_call_893" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i8* %"$$f_res_891_892")
  %"$gasrem_894" = load i64, i64* @_gasrem, align 8
  %"$gascmp_895" = icmp ugt i64 %"$_literal_cost_call_893", %"$gasrem_894"
  br i1 %"$gascmp_895", label %"$out_of_gas_896", label %"$have_gas_897"

"$out_of_gas_896":                                ; preds = %"$have_gas_884"
  call void @_out_of_gas()
  br label %"$have_gas_897"

"$have_gas_897":                                  ; preds = %"$out_of_gas_896", %"$have_gas_884"
  %"$consume_898" = sub i64 %"$gasrem_894", %"$_literal_cost_call_893"
  store i64 %"$consume_898", i64* @_gasrem, align 8
  %"$execptr_load_899" = load i8*, i8** @_execptr, align 8
  %"$f_res_901" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$update_value_902" = bitcast %TName_Option_Uint128* %"$f_res_901" to i8*
  call void @_update_field(i8* %"$execptr_load_899", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_1_f_res_900", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_902")
  %g = alloca %TName_Bool*, align 8
  %"$execptr_load_904" = load i8*, i8** @_execptr, align 8
  %"$g_x_as_address_905" = alloca [20 x i8], align 1
  %"$x_as_address_906" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_906", [20 x i8]* %"$g_x_as_address_905", align 1
  %"$g_call_907" = call i8* @_fetch_remote_field(i8* %"$execptr_load_904", [20 x i8]* %"$g_x_as_address_905", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_903", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i32 0, i8* null, i32 1)
  %"$g_908" = bitcast i8* %"$g_call_907" to %TName_Bool*
  store %TName_Bool* %"$g_908", %TName_Bool** %g, align 8
  %"$g_909" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$$g_909_910" = bitcast %TName_Bool* %"$g_909" to i8*
  %"$_literal_cost_call_911" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i8* %"$$g_909_910")
  %"$gasadd_912" = add i64 %"$_literal_cost_call_911", 0
  %"$gasrem_913" = load i64, i64* @_gasrem, align 8
  %"$gascmp_914" = icmp ugt i64 %"$gasadd_912", %"$gasrem_913"
  br i1 %"$gascmp_914", label %"$out_of_gas_915", label %"$have_gas_916"

"$out_of_gas_915":                                ; preds = %"$have_gas_897"
  call void @_out_of_gas()
  br label %"$have_gas_916"

"$have_gas_916":                                  ; preds = %"$out_of_gas_915", %"$have_gas_897"
  %"$consume_917" = sub i64 %"$gasrem_913", %"$gasadd_912"
  store i64 %"$consume_917", i64* @_gasrem, align 8
  %"$gasrem_918" = load i64, i64* @_gasrem, align 8
  %"$gascmp_919" = icmp ugt i64 1, %"$gasrem_918"
  br i1 %"$gascmp_919", label %"$out_of_gas_920", label %"$have_gas_921"

"$out_of_gas_920":                                ; preds = %"$have_gas_916"
  call void @_out_of_gas()
  br label %"$have_gas_921"

"$have_gas_921":                                  ; preds = %"$out_of_gas_920", %"$have_gas_916"
  %"$consume_922" = sub i64 %"$gasrem_918", 1
  store i64 %"$consume_922", i64* @_gasrem, align 8
  %g_res = alloca %TName_Option_Bool*, align 8
  %"$gasrem_923" = load i64, i64* @_gasrem, align 8
  %"$gascmp_924" = icmp ugt i64 1, %"$gasrem_923"
  br i1 %"$gascmp_924", label %"$out_of_gas_925", label %"$have_gas_926"

"$out_of_gas_925":                                ; preds = %"$have_gas_921"
  call void @_out_of_gas()
  br label %"$have_gas_926"

"$have_gas_926":                                  ; preds = %"$out_of_gas_925", %"$have_gas_921"
  %"$consume_927" = sub i64 %"$gasrem_923", 1
  store i64 %"$consume_927", i64* @_gasrem, align 8
  %"$g_928" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$adtval_929_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_929_salloc" = call i8* @_salloc(i8* %"$adtval_929_load", i64 9)
  %"$adtval_929" = bitcast i8* %"$adtval_929_salloc" to %CName_Some_Bool*
  %"$adtgep_930" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_929", i32 0, i32 0
  store i8 0, i8* %"$adtgep_930", align 1
  %"$adtgep_931" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_929", i32 0, i32 1
  store %TName_Bool* %"$g_928", %TName_Bool** %"$adtgep_931", align 8
  %"$adtptr_932" = bitcast %CName_Some_Bool* %"$adtval_929" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_932", %TName_Option_Bool** %g_res, align 8
  %"$g_res_933" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$$g_res_933_934" = bitcast %TName_Option_Bool* %"$g_res_933" to i8*
  %"$_literal_cost_call_935" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i8* %"$$g_res_933_934")
  %"$gasrem_936" = load i64, i64* @_gasrem, align 8
  %"$gascmp_937" = icmp ugt i64 %"$_literal_cost_call_935", %"$gasrem_936"
  br i1 %"$gascmp_937", label %"$out_of_gas_938", label %"$have_gas_939"

"$out_of_gas_938":                                ; preds = %"$have_gas_926"
  call void @_out_of_gas()
  br label %"$have_gas_939"

"$have_gas_939":                                  ; preds = %"$out_of_gas_938", %"$have_gas_926"
  %"$consume_940" = sub i64 %"$gasrem_936", %"$_literal_cost_call_935"
  store i64 %"$consume_940", i64* @_gasrem, align 8
  %"$execptr_load_941" = load i8*, i8** @_execptr, align 8
  %"$g_res_943" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$update_value_944" = bitcast %TName_Option_Bool* %"$g_res_943" to i8*
  call void @_update_field(i8* %"$execptr_load_941", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_1_g_res_942", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i32 0, i8* null, i8* %"$update_value_944")
  br label %"$matchsucc_806"

"$None_945":                                      ; preds = %"$have_gas_804"
  %"$x_cast_946" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_807" to %"CName_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  br label %"$matchsucc_806"

"$empty_default_810":                             ; preds = %"$have_gas_804"
  br label %"$matchsucc_806"

"$matchsucc_806":                                 ; preds = %"$None_945", %"$have_gas_939", %"$empty_default_810"
  ret void
}

define void @CastTest6_1(i8* %0) {
entry:
  %"$_amount_948" = getelementptr i8, i8* %0, i32 0
  %"$_amount_949" = bitcast i8* %"$_amount_948" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_949", align 8
  %"$_origin_950" = getelementptr i8, i8* %0, i32 16
  %"$_origin_951" = bitcast i8* %"$_origin_950" to [20 x i8]*
  %"$_sender_952" = getelementptr i8, i8* %0, i32 36
  %"$_sender_953" = bitcast i8* %"$_sender_952" to [20 x i8]*
  %"$x_954" = getelementptr i8, i8* %0, i32 56
  %"$x_955" = bitcast i8* %"$x_954" to [20 x i8]*
  call void @"$CastTest6_1_788"(%Uint128 %_amount, [20 x i8]* %"$_origin_951", [20 x i8]* %"$_sender_953", [20 x i8]* %"$x_955")
  ret void
}

define internal void @"$CastTest6_2_956"(%Uint128 %_amount, [20 x i8]* %"$_origin_957", [20 x i8]* %"$_sender_958", [20 x i8]* %"$x_959") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_957", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_958", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_959", align 1
  %"$gasrem_960" = load i64, i64* @_gasrem, align 8
  %"$gascmp_961" = icmp ugt i64 5, %"$gasrem_960"
  br i1 %"$gascmp_961", label %"$out_of_gas_962", label %"$have_gas_963"

"$out_of_gas_962":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_963"

"$have_gas_963":                                  ; preds = %"$out_of_gas_962", %entry
  %"$consume_964" = sub i64 %"$gasrem_960", 5
  store i64 %"$consume_964", i64* @_gasrem, align 8
  %x_cast = alloca %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, align 8
  %"$execptr_load_965" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_966" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_966", align 1
  %"$_dynamic_typecast_call_967" = call i8* @_dynamic_typecast(i8* %"$execptr_load_965", [20 x i8]* %"$_dynamic_typecast_x_966", %_TyDescrTy_Typ* @"$TyDescr_Addr_72")
  %"$_dynamic_typecast_968" = bitcast i8* %"$_dynamic_typecast_call_967" to %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  store %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$_dynamic_typecast_968", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$gasrem_969" = load i64, i64* @_gasrem, align 8
  %"$gascmp_970" = icmp ugt i64 2, %"$gasrem_969"
  br i1 %"$gascmp_970", label %"$out_of_gas_971", label %"$have_gas_972"

"$out_of_gas_971":                                ; preds = %"$have_gas_963"
  call void @_out_of_gas()
  br label %"$have_gas_972"

"$have_gas_972":                                  ; preds = %"$out_of_gas_971", %"$have_gas_963"
  %"$consume_973" = sub i64 %"$gasrem_969", 2
  store i64 %"$consume_973", i64* @_gasrem, align 8
  %"$x_cast_975" = load %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$x_cast_tag_976" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_975", i32 0, i32 0
  %"$x_cast_tag_977" = load i8, i8* %"$x_cast_tag_976", align 1
  switch i8 %"$x_cast_tag_977", label %"$empty_default_978" [
    i8 0, label %"$Some_979"
    i8 1, label %"$None_1113"
  ]

"$Some_979":                                      ; preds = %"$have_gas_972"
  %"$x_cast_980" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_975" to %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  %"$x_as_address_gep_981" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_980", i32 0, i32 1
  %"$x_as_address_load_982" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_981", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_982", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_984" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_985" = alloca [20 x i8], align 1
  %"$x_as_address_986" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_986", [20 x i8]* %"$bal_x_as_address_985", align 1
  %"$bal_call_987" = call i8* @_fetch_remote_field(i8* %"$execptr_load_984", [20 x i8]* %"$bal_x_as_address_985", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_983", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$bal_988" = bitcast i8* %"$bal_call_987" to %Uint128*
  %"$bal_989" = load %Uint128, %Uint128* %"$bal_988", align 8
  store %Uint128 %"$bal_989", %Uint128* %bal, align 8
  %"$_literal_cost_bal_990" = alloca %Uint128, align 8
  %"$bal_991" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_991", %Uint128* %"$_literal_cost_bal_990", align 8
  %"$$_literal_cost_bal_990_992" = bitcast %Uint128* %"$_literal_cost_bal_990" to i8*
  %"$_literal_cost_call_993" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_990_992")
  %"$gasadd_994" = add i64 %"$_literal_cost_call_993", 0
  %"$gasrem_995" = load i64, i64* @_gasrem, align 8
  %"$gascmp_996" = icmp ugt i64 %"$gasadd_994", %"$gasrem_995"
  br i1 %"$gascmp_996", label %"$out_of_gas_997", label %"$have_gas_998"

"$out_of_gas_997":                                ; preds = %"$Some_979"
  call void @_out_of_gas()
  br label %"$have_gas_998"

"$have_gas_998":                                  ; preds = %"$out_of_gas_997", %"$Some_979"
  %"$consume_999" = sub i64 %"$gasrem_995", %"$gasadd_994"
  store i64 %"$consume_999", i64* @_gasrem, align 8
  %"$gasrem_1000" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1001" = icmp ugt i64 1, %"$gasrem_1000"
  br i1 %"$gascmp_1001", label %"$out_of_gas_1002", label %"$have_gas_1003"

"$out_of_gas_1002":                               ; preds = %"$have_gas_998"
  call void @_out_of_gas()
  br label %"$have_gas_1003"

"$have_gas_1003":                                 ; preds = %"$out_of_gas_1002", %"$have_gas_998"
  %"$consume_1004" = sub i64 %"$gasrem_1000", 1
  store i64 %"$consume_1004", i64* @_gasrem, align 8
  %bal_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1005" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1006" = icmp ugt i64 1, %"$gasrem_1005"
  br i1 %"$gascmp_1006", label %"$out_of_gas_1007", label %"$have_gas_1008"

"$out_of_gas_1007":                               ; preds = %"$have_gas_1003"
  call void @_out_of_gas()
  br label %"$have_gas_1008"

"$have_gas_1008":                                 ; preds = %"$out_of_gas_1007", %"$have_gas_1003"
  %"$consume_1009" = sub i64 %"$gasrem_1005", 1
  store i64 %"$consume_1009", i64* @_gasrem, align 8
  %"$bal_1010" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_1011_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1011_salloc" = call i8* @_salloc(i8* %"$adtval_1011_load", i64 17)
  %"$adtval_1011" = bitcast i8* %"$adtval_1011_salloc" to %CName_Some_Uint128*
  %"$adtgep_1012" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1011", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1012", align 1
  %"$adtgep_1013" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1011", i32 0, i32 1
  store %Uint128 %"$bal_1010", %Uint128* %"$adtgep_1013", align 8
  %"$adtptr_1014" = bitcast %CName_Some_Uint128* %"$adtval_1011" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1014", %TName_Option_Uint128** %bal_res, align 8
  %"$bal_res_1015" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$$bal_res_1015_1016" = bitcast %TName_Option_Uint128* %"$bal_res_1015" to i8*
  %"$_literal_cost_call_1017" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i8* %"$$bal_res_1015_1016")
  %"$gasrem_1018" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1019" = icmp ugt i64 %"$_literal_cost_call_1017", %"$gasrem_1018"
  br i1 %"$gascmp_1019", label %"$out_of_gas_1020", label %"$have_gas_1021"

"$out_of_gas_1020":                               ; preds = %"$have_gas_1008"
  call void @_out_of_gas()
  br label %"$have_gas_1021"

"$have_gas_1021":                                 ; preds = %"$out_of_gas_1020", %"$have_gas_1008"
  %"$consume_1022" = sub i64 %"$gasrem_1018", %"$_literal_cost_call_1017"
  store i64 %"$consume_1022", i64* @_gasrem, align 8
  %"$execptr_load_1023" = load i8*, i8** @_execptr, align 8
  %"$bal_res_1025" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$update_value_1026" = bitcast %TName_Option_Uint128* %"$bal_res_1025" to i8*
  call void @_update_field(i8* %"$execptr_load_1023", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_2_bal_res_1024", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_1026")
  %f = alloca %Uint128, align 8
  %"$execptr_load_1028" = load i8*, i8** @_execptr, align 8
  %"$f_x_as_address_1029" = alloca [20 x i8], align 1
  %"$x_as_address_1030" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1030", [20 x i8]* %"$f_x_as_address_1029", align 1
  %"$f_call_1031" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1028", [20 x i8]* %"$f_x_as_address_1029", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_1027", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$f_1032" = bitcast i8* %"$f_call_1031" to %Uint128*
  %"$f_1033" = load %Uint128, %Uint128* %"$f_1032", align 8
  store %Uint128 %"$f_1033", %Uint128* %f, align 8
  %"$_literal_cost_f_1034" = alloca %Uint128, align 8
  %"$f_1035" = load %Uint128, %Uint128* %f, align 8
  store %Uint128 %"$f_1035", %Uint128* %"$_literal_cost_f_1034", align 8
  %"$$_literal_cost_f_1034_1036" = bitcast %Uint128* %"$_literal_cost_f_1034" to i8*
  %"$_literal_cost_call_1037" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_f_1034_1036")
  %"$gasadd_1038" = add i64 %"$_literal_cost_call_1037", 0
  %"$gasrem_1039" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1040" = icmp ugt i64 %"$gasadd_1038", %"$gasrem_1039"
  br i1 %"$gascmp_1040", label %"$out_of_gas_1041", label %"$have_gas_1042"

"$out_of_gas_1041":                               ; preds = %"$have_gas_1021"
  call void @_out_of_gas()
  br label %"$have_gas_1042"

"$have_gas_1042":                                 ; preds = %"$out_of_gas_1041", %"$have_gas_1021"
  %"$consume_1043" = sub i64 %"$gasrem_1039", %"$gasadd_1038"
  store i64 %"$consume_1043", i64* @_gasrem, align 8
  %"$gasrem_1044" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1045" = icmp ugt i64 1, %"$gasrem_1044"
  br i1 %"$gascmp_1045", label %"$out_of_gas_1046", label %"$have_gas_1047"

"$out_of_gas_1046":                               ; preds = %"$have_gas_1042"
  call void @_out_of_gas()
  br label %"$have_gas_1047"

"$have_gas_1047":                                 ; preds = %"$out_of_gas_1046", %"$have_gas_1042"
  %"$consume_1048" = sub i64 %"$gasrem_1044", 1
  store i64 %"$consume_1048", i64* @_gasrem, align 8
  %f_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1049" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1050" = icmp ugt i64 1, %"$gasrem_1049"
  br i1 %"$gascmp_1050", label %"$out_of_gas_1051", label %"$have_gas_1052"

"$out_of_gas_1051":                               ; preds = %"$have_gas_1047"
  call void @_out_of_gas()
  br label %"$have_gas_1052"

"$have_gas_1052":                                 ; preds = %"$out_of_gas_1051", %"$have_gas_1047"
  %"$consume_1053" = sub i64 %"$gasrem_1049", 1
  store i64 %"$consume_1053", i64* @_gasrem, align 8
  %"$f_1054" = load %Uint128, %Uint128* %f, align 8
  %"$adtval_1055_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1055_salloc" = call i8* @_salloc(i8* %"$adtval_1055_load", i64 17)
  %"$adtval_1055" = bitcast i8* %"$adtval_1055_salloc" to %CName_Some_Uint128*
  %"$adtgep_1056" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1055", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1056", align 1
  %"$adtgep_1057" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1055", i32 0, i32 1
  store %Uint128 %"$f_1054", %Uint128* %"$adtgep_1057", align 8
  %"$adtptr_1058" = bitcast %CName_Some_Uint128* %"$adtval_1055" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1058", %TName_Option_Uint128** %f_res, align 8
  %"$f_res_1059" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$$f_res_1059_1060" = bitcast %TName_Option_Uint128* %"$f_res_1059" to i8*
  %"$_literal_cost_call_1061" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i8* %"$$f_res_1059_1060")
  %"$gasrem_1062" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1063" = icmp ugt i64 %"$_literal_cost_call_1061", %"$gasrem_1062"
  br i1 %"$gascmp_1063", label %"$out_of_gas_1064", label %"$have_gas_1065"

"$out_of_gas_1064":                               ; preds = %"$have_gas_1052"
  call void @_out_of_gas()
  br label %"$have_gas_1065"

"$have_gas_1065":                                 ; preds = %"$out_of_gas_1064", %"$have_gas_1052"
  %"$consume_1066" = sub i64 %"$gasrem_1062", %"$_literal_cost_call_1061"
  store i64 %"$consume_1066", i64* @_gasrem, align 8
  %"$execptr_load_1067" = load i8*, i8** @_execptr, align 8
  %"$f_res_1069" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$update_value_1070" = bitcast %TName_Option_Uint128* %"$f_res_1069" to i8*
  call void @_update_field(i8* %"$execptr_load_1067", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_2_f_res_1068", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_1070")
  %g = alloca %TName_Bool*, align 8
  %"$execptr_load_1072" = load i8*, i8** @_execptr, align 8
  %"$g_x_as_address_1073" = alloca [20 x i8], align 1
  %"$x_as_address_1074" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1074", [20 x i8]* %"$g_x_as_address_1073", align 1
  %"$g_call_1075" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1072", [20 x i8]* %"$g_x_as_address_1073", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_1071", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i32 0, i8* null, i32 1)
  %"$g_1076" = bitcast i8* %"$g_call_1075" to %TName_Bool*
  store %TName_Bool* %"$g_1076", %TName_Bool** %g, align 8
  %"$g_1077" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$$g_1077_1078" = bitcast %TName_Bool* %"$g_1077" to i8*
  %"$_literal_cost_call_1079" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i8* %"$$g_1077_1078")
  %"$gasadd_1080" = add i64 %"$_literal_cost_call_1079", 0
  %"$gasrem_1081" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1082" = icmp ugt i64 %"$gasadd_1080", %"$gasrem_1081"
  br i1 %"$gascmp_1082", label %"$out_of_gas_1083", label %"$have_gas_1084"

"$out_of_gas_1083":                               ; preds = %"$have_gas_1065"
  call void @_out_of_gas()
  br label %"$have_gas_1084"

"$have_gas_1084":                                 ; preds = %"$out_of_gas_1083", %"$have_gas_1065"
  %"$consume_1085" = sub i64 %"$gasrem_1081", %"$gasadd_1080"
  store i64 %"$consume_1085", i64* @_gasrem, align 8
  %"$gasrem_1086" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1087" = icmp ugt i64 1, %"$gasrem_1086"
  br i1 %"$gascmp_1087", label %"$out_of_gas_1088", label %"$have_gas_1089"

"$out_of_gas_1088":                               ; preds = %"$have_gas_1084"
  call void @_out_of_gas()
  br label %"$have_gas_1089"

"$have_gas_1089":                                 ; preds = %"$out_of_gas_1088", %"$have_gas_1084"
  %"$consume_1090" = sub i64 %"$gasrem_1086", 1
  store i64 %"$consume_1090", i64* @_gasrem, align 8
  %g_res = alloca %TName_Option_Bool*, align 8
  %"$gasrem_1091" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1092" = icmp ugt i64 1, %"$gasrem_1091"
  br i1 %"$gascmp_1092", label %"$out_of_gas_1093", label %"$have_gas_1094"

"$out_of_gas_1093":                               ; preds = %"$have_gas_1089"
  call void @_out_of_gas()
  br label %"$have_gas_1094"

"$have_gas_1094":                                 ; preds = %"$out_of_gas_1093", %"$have_gas_1089"
  %"$consume_1095" = sub i64 %"$gasrem_1091", 1
  store i64 %"$consume_1095", i64* @_gasrem, align 8
  %"$g_1096" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$adtval_1097_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1097_salloc" = call i8* @_salloc(i8* %"$adtval_1097_load", i64 9)
  %"$adtval_1097" = bitcast i8* %"$adtval_1097_salloc" to %CName_Some_Bool*
  %"$adtgep_1098" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1097", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1098", align 1
  %"$adtgep_1099" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1097", i32 0, i32 1
  store %TName_Bool* %"$g_1096", %TName_Bool** %"$adtgep_1099", align 8
  %"$adtptr_1100" = bitcast %CName_Some_Bool* %"$adtval_1097" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_1100", %TName_Option_Bool** %g_res, align 8
  %"$g_res_1101" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$$g_res_1101_1102" = bitcast %TName_Option_Bool* %"$g_res_1101" to i8*
  %"$_literal_cost_call_1103" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i8* %"$$g_res_1101_1102")
  %"$gasrem_1104" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1105" = icmp ugt i64 %"$_literal_cost_call_1103", %"$gasrem_1104"
  br i1 %"$gascmp_1105", label %"$out_of_gas_1106", label %"$have_gas_1107"

"$out_of_gas_1106":                               ; preds = %"$have_gas_1094"
  call void @_out_of_gas()
  br label %"$have_gas_1107"

"$have_gas_1107":                                 ; preds = %"$out_of_gas_1106", %"$have_gas_1094"
  %"$consume_1108" = sub i64 %"$gasrem_1104", %"$_literal_cost_call_1103"
  store i64 %"$consume_1108", i64* @_gasrem, align 8
  %"$execptr_load_1109" = load i8*, i8** @_execptr, align 8
  %"$g_res_1111" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$update_value_1112" = bitcast %TName_Option_Bool* %"$g_res_1111" to i8*
  call void @_update_field(i8* %"$execptr_load_1109", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_2_g_res_1110", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i32 0, i8* null, i8* %"$update_value_1112")
  br label %"$matchsucc_974"

"$None_1113":                                     ; preds = %"$have_gas_972"
  %"$x_cast_1114" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_975" to %"CName_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  br label %"$matchsucc_974"

"$empty_default_978":                             ; preds = %"$have_gas_972"
  br label %"$matchsucc_974"

"$matchsucc_974":                                 ; preds = %"$None_1113", %"$have_gas_1107", %"$empty_default_978"
  ret void
}

define void @CastTest6_2(i8* %0) {
entry:
  %"$_amount_1116" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1117" = bitcast i8* %"$_amount_1116" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1117", align 8
  %"$_origin_1118" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1119" = bitcast i8* %"$_origin_1118" to [20 x i8]*
  %"$_sender_1120" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1121" = bitcast i8* %"$_sender_1120" to [20 x i8]*
  %"$x_1122" = getelementptr i8, i8* %0, i32 56
  %"$x_1123" = bitcast i8* %"$x_1122" to [20 x i8]*
  call void @"$CastTest6_2_956"(%Uint128 %_amount, [20 x i8]* %"$_origin_1119", [20 x i8]* %"$_sender_1121", [20 x i8]* %"$x_1123")
  ret void
}

define internal void @"$CastTest6_3_1124"(%Uint128 %_amount, [20 x i8]* %"$_origin_1125", [20 x i8]* %"$_sender_1126", [20 x i8]* %"$x_1127") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1125", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1126", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_1127", align 1
  %"$gasrem_1128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1129" = icmp ugt i64 5, %"$gasrem_1128"
  br i1 %"$gascmp_1129", label %"$out_of_gas_1130", label %"$have_gas_1131"

"$out_of_gas_1130":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1131"

"$have_gas_1131":                                 ; preds = %"$out_of_gas_1130", %entry
  %"$consume_1132" = sub i64 %"$gasrem_1128", 5
  store i64 %"$consume_1132", i64* @_gasrem, align 8
  %x_cast = alloca %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, align 8
  %"$execptr_load_1133" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_1134" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_1134", align 1
  %"$_dynamic_typecast_call_1135" = call i8* @_dynamic_typecast(i8* %"$execptr_load_1133", [20 x i8]* %"$_dynamic_typecast_x_1134", %_TyDescrTy_Typ* @"$TyDescr_Addr_72")
  %"$_dynamic_typecast_1136" = bitcast i8* %"$_dynamic_typecast_call_1135" to %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  store %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$_dynamic_typecast_1136", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$gasrem_1137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1138" = icmp ugt i64 2, %"$gasrem_1137"
  br i1 %"$gascmp_1138", label %"$out_of_gas_1139", label %"$have_gas_1140"

"$out_of_gas_1139":                               ; preds = %"$have_gas_1131"
  call void @_out_of_gas()
  br label %"$have_gas_1140"

"$have_gas_1140":                                 ; preds = %"$out_of_gas_1139", %"$have_gas_1131"
  %"$consume_1141" = sub i64 %"$gasrem_1137", 2
  store i64 %"$consume_1141", i64* @_gasrem, align 8
  %"$x_cast_1143" = load %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$x_cast_tag_1144" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1143", i32 0, i32 0
  %"$x_cast_tag_1145" = load i8, i8* %"$x_cast_tag_1144", align 1
  switch i8 %"$x_cast_tag_1145", label %"$empty_default_1146" [
    i8 0, label %"$Some_1147"
    i8 1, label %"$None_1281"
  ]

"$Some_1147":                                     ; preds = %"$have_gas_1140"
  %"$x_cast_1148" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1143" to %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  %"$x_as_address_gep_1149" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1148", i32 0, i32 1
  %"$x_as_address_load_1150" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_1149", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_1150", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_1152" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_1153" = alloca [20 x i8], align 1
  %"$x_as_address_1154" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1154", [20 x i8]* %"$bal_x_as_address_1153", align 1
  %"$bal_call_1155" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1152", [20 x i8]* %"$bal_x_as_address_1153", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_1151", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$bal_1156" = bitcast i8* %"$bal_call_1155" to %Uint128*
  %"$bal_1157" = load %Uint128, %Uint128* %"$bal_1156", align 8
  store %Uint128 %"$bal_1157", %Uint128* %bal, align 8
  %"$_literal_cost_bal_1158" = alloca %Uint128, align 8
  %"$bal_1159" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_1159", %Uint128* %"$_literal_cost_bal_1158", align 8
  %"$$_literal_cost_bal_1158_1160" = bitcast %Uint128* %"$_literal_cost_bal_1158" to i8*
  %"$_literal_cost_call_1161" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_1158_1160")
  %"$gasadd_1162" = add i64 %"$_literal_cost_call_1161", 0
  %"$gasrem_1163" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1164" = icmp ugt i64 %"$gasadd_1162", %"$gasrem_1163"
  br i1 %"$gascmp_1164", label %"$out_of_gas_1165", label %"$have_gas_1166"

"$out_of_gas_1165":                               ; preds = %"$Some_1147"
  call void @_out_of_gas()
  br label %"$have_gas_1166"

"$have_gas_1166":                                 ; preds = %"$out_of_gas_1165", %"$Some_1147"
  %"$consume_1167" = sub i64 %"$gasrem_1163", %"$gasadd_1162"
  store i64 %"$consume_1167", i64* @_gasrem, align 8
  %"$gasrem_1168" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1169" = icmp ugt i64 1, %"$gasrem_1168"
  br i1 %"$gascmp_1169", label %"$out_of_gas_1170", label %"$have_gas_1171"

"$out_of_gas_1170":                               ; preds = %"$have_gas_1166"
  call void @_out_of_gas()
  br label %"$have_gas_1171"

"$have_gas_1171":                                 ; preds = %"$out_of_gas_1170", %"$have_gas_1166"
  %"$consume_1172" = sub i64 %"$gasrem_1168", 1
  store i64 %"$consume_1172", i64* @_gasrem, align 8
  %bal_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1173" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1174" = icmp ugt i64 1, %"$gasrem_1173"
  br i1 %"$gascmp_1174", label %"$out_of_gas_1175", label %"$have_gas_1176"

"$out_of_gas_1175":                               ; preds = %"$have_gas_1171"
  call void @_out_of_gas()
  br label %"$have_gas_1176"

"$have_gas_1176":                                 ; preds = %"$out_of_gas_1175", %"$have_gas_1171"
  %"$consume_1177" = sub i64 %"$gasrem_1173", 1
  store i64 %"$consume_1177", i64* @_gasrem, align 8
  %"$bal_1178" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_1179_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1179_salloc" = call i8* @_salloc(i8* %"$adtval_1179_load", i64 17)
  %"$adtval_1179" = bitcast i8* %"$adtval_1179_salloc" to %CName_Some_Uint128*
  %"$adtgep_1180" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1179", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1180", align 1
  %"$adtgep_1181" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1179", i32 0, i32 1
  store %Uint128 %"$bal_1178", %Uint128* %"$adtgep_1181", align 8
  %"$adtptr_1182" = bitcast %CName_Some_Uint128* %"$adtval_1179" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1182", %TName_Option_Uint128** %bal_res, align 8
  %"$bal_res_1183" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$$bal_res_1183_1184" = bitcast %TName_Option_Uint128* %"$bal_res_1183" to i8*
  %"$_literal_cost_call_1185" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i8* %"$$bal_res_1183_1184")
  %"$gasrem_1186" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1187" = icmp ugt i64 %"$_literal_cost_call_1185", %"$gasrem_1186"
  br i1 %"$gascmp_1187", label %"$out_of_gas_1188", label %"$have_gas_1189"

"$out_of_gas_1188":                               ; preds = %"$have_gas_1176"
  call void @_out_of_gas()
  br label %"$have_gas_1189"

"$have_gas_1189":                                 ; preds = %"$out_of_gas_1188", %"$have_gas_1176"
  %"$consume_1190" = sub i64 %"$gasrem_1186", %"$_literal_cost_call_1185"
  store i64 %"$consume_1190", i64* @_gasrem, align 8
  %"$execptr_load_1191" = load i8*, i8** @_execptr, align 8
  %"$bal_res_1193" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$update_value_1194" = bitcast %TName_Option_Uint128* %"$bal_res_1193" to i8*
  call void @_update_field(i8* %"$execptr_load_1191", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_3_bal_res_1192", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_1194")
  %f = alloca %Uint128, align 8
  %"$execptr_load_1196" = load i8*, i8** @_execptr, align 8
  %"$f_x_as_address_1197" = alloca [20 x i8], align 1
  %"$x_as_address_1198" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1198", [20 x i8]* %"$f_x_as_address_1197", align 1
  %"$f_call_1199" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1196", [20 x i8]* %"$f_x_as_address_1197", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_1195", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$f_1200" = bitcast i8* %"$f_call_1199" to %Uint128*
  %"$f_1201" = load %Uint128, %Uint128* %"$f_1200", align 8
  store %Uint128 %"$f_1201", %Uint128* %f, align 8
  %"$_literal_cost_f_1202" = alloca %Uint128, align 8
  %"$f_1203" = load %Uint128, %Uint128* %f, align 8
  store %Uint128 %"$f_1203", %Uint128* %"$_literal_cost_f_1202", align 8
  %"$$_literal_cost_f_1202_1204" = bitcast %Uint128* %"$_literal_cost_f_1202" to i8*
  %"$_literal_cost_call_1205" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_f_1202_1204")
  %"$gasadd_1206" = add i64 %"$_literal_cost_call_1205", 0
  %"$gasrem_1207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1208" = icmp ugt i64 %"$gasadd_1206", %"$gasrem_1207"
  br i1 %"$gascmp_1208", label %"$out_of_gas_1209", label %"$have_gas_1210"

"$out_of_gas_1209":                               ; preds = %"$have_gas_1189"
  call void @_out_of_gas()
  br label %"$have_gas_1210"

"$have_gas_1210":                                 ; preds = %"$out_of_gas_1209", %"$have_gas_1189"
  %"$consume_1211" = sub i64 %"$gasrem_1207", %"$gasadd_1206"
  store i64 %"$consume_1211", i64* @_gasrem, align 8
  %"$gasrem_1212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1213" = icmp ugt i64 1, %"$gasrem_1212"
  br i1 %"$gascmp_1213", label %"$out_of_gas_1214", label %"$have_gas_1215"

"$out_of_gas_1214":                               ; preds = %"$have_gas_1210"
  call void @_out_of_gas()
  br label %"$have_gas_1215"

"$have_gas_1215":                                 ; preds = %"$out_of_gas_1214", %"$have_gas_1210"
  %"$consume_1216" = sub i64 %"$gasrem_1212", 1
  store i64 %"$consume_1216", i64* @_gasrem, align 8
  %f_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1217" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1218" = icmp ugt i64 1, %"$gasrem_1217"
  br i1 %"$gascmp_1218", label %"$out_of_gas_1219", label %"$have_gas_1220"

"$out_of_gas_1219":                               ; preds = %"$have_gas_1215"
  call void @_out_of_gas()
  br label %"$have_gas_1220"

"$have_gas_1220":                                 ; preds = %"$out_of_gas_1219", %"$have_gas_1215"
  %"$consume_1221" = sub i64 %"$gasrem_1217", 1
  store i64 %"$consume_1221", i64* @_gasrem, align 8
  %"$f_1222" = load %Uint128, %Uint128* %f, align 8
  %"$adtval_1223_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1223_salloc" = call i8* @_salloc(i8* %"$adtval_1223_load", i64 17)
  %"$adtval_1223" = bitcast i8* %"$adtval_1223_salloc" to %CName_Some_Uint128*
  %"$adtgep_1224" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1223", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1224", align 1
  %"$adtgep_1225" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1223", i32 0, i32 1
  store %Uint128 %"$f_1222", %Uint128* %"$adtgep_1225", align 8
  %"$adtptr_1226" = bitcast %CName_Some_Uint128* %"$adtval_1223" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1226", %TName_Option_Uint128** %f_res, align 8
  %"$f_res_1227" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$$f_res_1227_1228" = bitcast %TName_Option_Uint128* %"$f_res_1227" to i8*
  %"$_literal_cost_call_1229" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i8* %"$$f_res_1227_1228")
  %"$gasrem_1230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1231" = icmp ugt i64 %"$_literal_cost_call_1229", %"$gasrem_1230"
  br i1 %"$gascmp_1231", label %"$out_of_gas_1232", label %"$have_gas_1233"

"$out_of_gas_1232":                               ; preds = %"$have_gas_1220"
  call void @_out_of_gas()
  br label %"$have_gas_1233"

"$have_gas_1233":                                 ; preds = %"$out_of_gas_1232", %"$have_gas_1220"
  %"$consume_1234" = sub i64 %"$gasrem_1230", %"$_literal_cost_call_1229"
  store i64 %"$consume_1234", i64* @_gasrem, align 8
  %"$execptr_load_1235" = load i8*, i8** @_execptr, align 8
  %"$f_res_1237" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$update_value_1238" = bitcast %TName_Option_Uint128* %"$f_res_1237" to i8*
  call void @_update_field(i8* %"$execptr_load_1235", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_3_f_res_1236", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_1238")
  %g = alloca %TName_Bool*, align 8
  %"$execptr_load_1240" = load i8*, i8** @_execptr, align 8
  %"$g_x_as_address_1241" = alloca [20 x i8], align 1
  %"$x_as_address_1242" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1242", [20 x i8]* %"$g_x_as_address_1241", align 1
  %"$g_call_1243" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1240", [20 x i8]* %"$g_x_as_address_1241", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_1239", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i32 0, i8* null, i32 1)
  %"$g_1244" = bitcast i8* %"$g_call_1243" to %TName_Bool*
  store %TName_Bool* %"$g_1244", %TName_Bool** %g, align 8
  %"$g_1245" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$$g_1245_1246" = bitcast %TName_Bool* %"$g_1245" to i8*
  %"$_literal_cost_call_1247" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i8* %"$$g_1245_1246")
  %"$gasadd_1248" = add i64 %"$_literal_cost_call_1247", 0
  %"$gasrem_1249" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1250" = icmp ugt i64 %"$gasadd_1248", %"$gasrem_1249"
  br i1 %"$gascmp_1250", label %"$out_of_gas_1251", label %"$have_gas_1252"

"$out_of_gas_1251":                               ; preds = %"$have_gas_1233"
  call void @_out_of_gas()
  br label %"$have_gas_1252"

"$have_gas_1252":                                 ; preds = %"$out_of_gas_1251", %"$have_gas_1233"
  %"$consume_1253" = sub i64 %"$gasrem_1249", %"$gasadd_1248"
  store i64 %"$consume_1253", i64* @_gasrem, align 8
  %"$gasrem_1254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1255" = icmp ugt i64 1, %"$gasrem_1254"
  br i1 %"$gascmp_1255", label %"$out_of_gas_1256", label %"$have_gas_1257"

"$out_of_gas_1256":                               ; preds = %"$have_gas_1252"
  call void @_out_of_gas()
  br label %"$have_gas_1257"

"$have_gas_1257":                                 ; preds = %"$out_of_gas_1256", %"$have_gas_1252"
  %"$consume_1258" = sub i64 %"$gasrem_1254", 1
  store i64 %"$consume_1258", i64* @_gasrem, align 8
  %g_res = alloca %TName_Option_Bool*, align 8
  %"$gasrem_1259" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1260" = icmp ugt i64 1, %"$gasrem_1259"
  br i1 %"$gascmp_1260", label %"$out_of_gas_1261", label %"$have_gas_1262"

"$out_of_gas_1261":                               ; preds = %"$have_gas_1257"
  call void @_out_of_gas()
  br label %"$have_gas_1262"

"$have_gas_1262":                                 ; preds = %"$out_of_gas_1261", %"$have_gas_1257"
  %"$consume_1263" = sub i64 %"$gasrem_1259", 1
  store i64 %"$consume_1263", i64* @_gasrem, align 8
  %"$g_1264" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$adtval_1265_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1265_salloc" = call i8* @_salloc(i8* %"$adtval_1265_load", i64 9)
  %"$adtval_1265" = bitcast i8* %"$adtval_1265_salloc" to %CName_Some_Bool*
  %"$adtgep_1266" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1265", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1266", align 1
  %"$adtgep_1267" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1265", i32 0, i32 1
  store %TName_Bool* %"$g_1264", %TName_Bool** %"$adtgep_1267", align 8
  %"$adtptr_1268" = bitcast %CName_Some_Bool* %"$adtval_1265" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_1268", %TName_Option_Bool** %g_res, align 8
  %"$g_res_1269" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$$g_res_1269_1270" = bitcast %TName_Option_Bool* %"$g_res_1269" to i8*
  %"$_literal_cost_call_1271" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i8* %"$$g_res_1269_1270")
  %"$gasrem_1272" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1273" = icmp ugt i64 %"$_literal_cost_call_1271", %"$gasrem_1272"
  br i1 %"$gascmp_1273", label %"$out_of_gas_1274", label %"$have_gas_1275"

"$out_of_gas_1274":                               ; preds = %"$have_gas_1262"
  call void @_out_of_gas()
  br label %"$have_gas_1275"

"$have_gas_1275":                                 ; preds = %"$out_of_gas_1274", %"$have_gas_1262"
  %"$consume_1276" = sub i64 %"$gasrem_1272", %"$_literal_cost_call_1271"
  store i64 %"$consume_1276", i64* @_gasrem, align 8
  %"$execptr_load_1277" = load i8*, i8** @_execptr, align 8
  %"$g_res_1279" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$update_value_1280" = bitcast %TName_Option_Bool* %"$g_res_1279" to i8*
  call void @_update_field(i8* %"$execptr_load_1277", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_3_g_res_1278", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i32 0, i8* null, i8* %"$update_value_1280")
  br label %"$matchsucc_1142"

"$None_1281":                                     ; preds = %"$have_gas_1140"
  %"$x_cast_1282" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1143" to %"CName_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  br label %"$matchsucc_1142"

"$empty_default_1146":                            ; preds = %"$have_gas_1140"
  br label %"$matchsucc_1142"

"$matchsucc_1142":                                ; preds = %"$None_1281", %"$have_gas_1275", %"$empty_default_1146"
  ret void
}

define void @CastTest6_3(i8* %0) {
entry:
  %"$_amount_1284" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1285" = bitcast i8* %"$_amount_1284" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1285", align 8
  %"$_origin_1286" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1287" = bitcast i8* %"$_origin_1286" to [20 x i8]*
  %"$_sender_1288" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1289" = bitcast i8* %"$_sender_1288" to [20 x i8]*
  %"$x_1290" = getelementptr i8, i8* %0, i32 56
  %"$x_1291" = bitcast i8* %"$x_1290" to [20 x i8]*
  call void @"$CastTest6_3_1124"(%Uint128 %_amount, [20 x i8]* %"$_origin_1287", [20 x i8]* %"$_sender_1289", [20 x i8]* %"$x_1291")
  ret void
}

define internal void @"$CastTest6_4_1292"(%Uint128 %_amount, [20 x i8]* %"$_origin_1293", [20 x i8]* %"$_sender_1294", [20 x i8]* %"$x_1295") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1293", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1294", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_1295", align 1
  %"$gasrem_1296" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1297" = icmp ugt i64 5, %"$gasrem_1296"
  br i1 %"$gascmp_1297", label %"$out_of_gas_1298", label %"$have_gas_1299"

"$out_of_gas_1298":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1299"

"$have_gas_1299":                                 ; preds = %"$out_of_gas_1298", %entry
  %"$consume_1300" = sub i64 %"$gasrem_1296", 5
  store i64 %"$consume_1300", i64* @_gasrem, align 8
  %x_cast = alloca %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, align 8
  %"$execptr_load_1301" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_1302" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_1302", align 1
  %"$_dynamic_typecast_call_1303" = call i8* @_dynamic_typecast(i8* %"$execptr_load_1301", [20 x i8]* %"$_dynamic_typecast_x_1302", %_TyDescrTy_Typ* @"$TyDescr_Addr_72")
  %"$_dynamic_typecast_1304" = bitcast i8* %"$_dynamic_typecast_call_1303" to %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  store %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$_dynamic_typecast_1304", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$gasrem_1305" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1306" = icmp ugt i64 2, %"$gasrem_1305"
  br i1 %"$gascmp_1306", label %"$out_of_gas_1307", label %"$have_gas_1308"

"$out_of_gas_1307":                               ; preds = %"$have_gas_1299"
  call void @_out_of_gas()
  br label %"$have_gas_1308"

"$have_gas_1308":                                 ; preds = %"$out_of_gas_1307", %"$have_gas_1299"
  %"$consume_1309" = sub i64 %"$gasrem_1305", 2
  store i64 %"$consume_1309", i64* @_gasrem, align 8
  %"$x_cast_1311" = load %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$x_cast_tag_1312" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1311", i32 0, i32 0
  %"$x_cast_tag_1313" = load i8, i8* %"$x_cast_tag_1312", align 1
  switch i8 %"$x_cast_tag_1313", label %"$empty_default_1314" [
    i8 0, label %"$Some_1315"
    i8 1, label %"$None_1449"
  ]

"$Some_1315":                                     ; preds = %"$have_gas_1308"
  %"$x_cast_1316" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1311" to %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  %"$x_as_address_gep_1317" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1316", i32 0, i32 1
  %"$x_as_address_load_1318" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_1317", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_1318", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_1320" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_1321" = alloca [20 x i8], align 1
  %"$x_as_address_1322" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1322", [20 x i8]* %"$bal_x_as_address_1321", align 1
  %"$bal_call_1323" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1320", [20 x i8]* %"$bal_x_as_address_1321", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_1319", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$bal_1324" = bitcast i8* %"$bal_call_1323" to %Uint128*
  %"$bal_1325" = load %Uint128, %Uint128* %"$bal_1324", align 8
  store %Uint128 %"$bal_1325", %Uint128* %bal, align 8
  %"$_literal_cost_bal_1326" = alloca %Uint128, align 8
  %"$bal_1327" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_1327", %Uint128* %"$_literal_cost_bal_1326", align 8
  %"$$_literal_cost_bal_1326_1328" = bitcast %Uint128* %"$_literal_cost_bal_1326" to i8*
  %"$_literal_cost_call_1329" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_1326_1328")
  %"$gasadd_1330" = add i64 %"$_literal_cost_call_1329", 0
  %"$gasrem_1331" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1332" = icmp ugt i64 %"$gasadd_1330", %"$gasrem_1331"
  br i1 %"$gascmp_1332", label %"$out_of_gas_1333", label %"$have_gas_1334"

"$out_of_gas_1333":                               ; preds = %"$Some_1315"
  call void @_out_of_gas()
  br label %"$have_gas_1334"

"$have_gas_1334":                                 ; preds = %"$out_of_gas_1333", %"$Some_1315"
  %"$consume_1335" = sub i64 %"$gasrem_1331", %"$gasadd_1330"
  store i64 %"$consume_1335", i64* @_gasrem, align 8
  %"$gasrem_1336" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1337" = icmp ugt i64 1, %"$gasrem_1336"
  br i1 %"$gascmp_1337", label %"$out_of_gas_1338", label %"$have_gas_1339"

"$out_of_gas_1338":                               ; preds = %"$have_gas_1334"
  call void @_out_of_gas()
  br label %"$have_gas_1339"

"$have_gas_1339":                                 ; preds = %"$out_of_gas_1338", %"$have_gas_1334"
  %"$consume_1340" = sub i64 %"$gasrem_1336", 1
  store i64 %"$consume_1340", i64* @_gasrem, align 8
  %bal_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1341" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1342" = icmp ugt i64 1, %"$gasrem_1341"
  br i1 %"$gascmp_1342", label %"$out_of_gas_1343", label %"$have_gas_1344"

"$out_of_gas_1343":                               ; preds = %"$have_gas_1339"
  call void @_out_of_gas()
  br label %"$have_gas_1344"

"$have_gas_1344":                                 ; preds = %"$out_of_gas_1343", %"$have_gas_1339"
  %"$consume_1345" = sub i64 %"$gasrem_1341", 1
  store i64 %"$consume_1345", i64* @_gasrem, align 8
  %"$bal_1346" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_1347_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1347_salloc" = call i8* @_salloc(i8* %"$adtval_1347_load", i64 17)
  %"$adtval_1347" = bitcast i8* %"$adtval_1347_salloc" to %CName_Some_Uint128*
  %"$adtgep_1348" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1347", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1348", align 1
  %"$adtgep_1349" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1347", i32 0, i32 1
  store %Uint128 %"$bal_1346", %Uint128* %"$adtgep_1349", align 8
  %"$adtptr_1350" = bitcast %CName_Some_Uint128* %"$adtval_1347" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1350", %TName_Option_Uint128** %bal_res, align 8
  %"$bal_res_1351" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$$bal_res_1351_1352" = bitcast %TName_Option_Uint128* %"$bal_res_1351" to i8*
  %"$_literal_cost_call_1353" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i8* %"$$bal_res_1351_1352")
  %"$gasrem_1354" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1355" = icmp ugt i64 %"$_literal_cost_call_1353", %"$gasrem_1354"
  br i1 %"$gascmp_1355", label %"$out_of_gas_1356", label %"$have_gas_1357"

"$out_of_gas_1356":                               ; preds = %"$have_gas_1344"
  call void @_out_of_gas()
  br label %"$have_gas_1357"

"$have_gas_1357":                                 ; preds = %"$out_of_gas_1356", %"$have_gas_1344"
  %"$consume_1358" = sub i64 %"$gasrem_1354", %"$_literal_cost_call_1353"
  store i64 %"$consume_1358", i64* @_gasrem, align 8
  %"$execptr_load_1359" = load i8*, i8** @_execptr, align 8
  %"$bal_res_1361" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$update_value_1362" = bitcast %TName_Option_Uint128* %"$bal_res_1361" to i8*
  call void @_update_field(i8* %"$execptr_load_1359", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_4_bal_res_1360", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_1362")
  %f = alloca %Uint128, align 8
  %"$execptr_load_1364" = load i8*, i8** @_execptr, align 8
  %"$f_x_as_address_1365" = alloca [20 x i8], align 1
  %"$x_as_address_1366" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1366", [20 x i8]* %"$f_x_as_address_1365", align 1
  %"$f_call_1367" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1364", [20 x i8]* %"$f_x_as_address_1365", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_1363", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$f_1368" = bitcast i8* %"$f_call_1367" to %Uint128*
  %"$f_1369" = load %Uint128, %Uint128* %"$f_1368", align 8
  store %Uint128 %"$f_1369", %Uint128* %f, align 8
  %"$_literal_cost_f_1370" = alloca %Uint128, align 8
  %"$f_1371" = load %Uint128, %Uint128* %f, align 8
  store %Uint128 %"$f_1371", %Uint128* %"$_literal_cost_f_1370", align 8
  %"$$_literal_cost_f_1370_1372" = bitcast %Uint128* %"$_literal_cost_f_1370" to i8*
  %"$_literal_cost_call_1373" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_f_1370_1372")
  %"$gasadd_1374" = add i64 %"$_literal_cost_call_1373", 0
  %"$gasrem_1375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1376" = icmp ugt i64 %"$gasadd_1374", %"$gasrem_1375"
  br i1 %"$gascmp_1376", label %"$out_of_gas_1377", label %"$have_gas_1378"

"$out_of_gas_1377":                               ; preds = %"$have_gas_1357"
  call void @_out_of_gas()
  br label %"$have_gas_1378"

"$have_gas_1378":                                 ; preds = %"$out_of_gas_1377", %"$have_gas_1357"
  %"$consume_1379" = sub i64 %"$gasrem_1375", %"$gasadd_1374"
  store i64 %"$consume_1379", i64* @_gasrem, align 8
  %"$gasrem_1380" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1381" = icmp ugt i64 1, %"$gasrem_1380"
  br i1 %"$gascmp_1381", label %"$out_of_gas_1382", label %"$have_gas_1383"

"$out_of_gas_1382":                               ; preds = %"$have_gas_1378"
  call void @_out_of_gas()
  br label %"$have_gas_1383"

"$have_gas_1383":                                 ; preds = %"$out_of_gas_1382", %"$have_gas_1378"
  %"$consume_1384" = sub i64 %"$gasrem_1380", 1
  store i64 %"$consume_1384", i64* @_gasrem, align 8
  %f_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1385" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1386" = icmp ugt i64 1, %"$gasrem_1385"
  br i1 %"$gascmp_1386", label %"$out_of_gas_1387", label %"$have_gas_1388"

"$out_of_gas_1387":                               ; preds = %"$have_gas_1383"
  call void @_out_of_gas()
  br label %"$have_gas_1388"

"$have_gas_1388":                                 ; preds = %"$out_of_gas_1387", %"$have_gas_1383"
  %"$consume_1389" = sub i64 %"$gasrem_1385", 1
  store i64 %"$consume_1389", i64* @_gasrem, align 8
  %"$f_1390" = load %Uint128, %Uint128* %f, align 8
  %"$adtval_1391_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1391_salloc" = call i8* @_salloc(i8* %"$adtval_1391_load", i64 17)
  %"$adtval_1391" = bitcast i8* %"$adtval_1391_salloc" to %CName_Some_Uint128*
  %"$adtgep_1392" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1391", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1392", align 1
  %"$adtgep_1393" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1391", i32 0, i32 1
  store %Uint128 %"$f_1390", %Uint128* %"$adtgep_1393", align 8
  %"$adtptr_1394" = bitcast %CName_Some_Uint128* %"$adtval_1391" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1394", %TName_Option_Uint128** %f_res, align 8
  %"$f_res_1395" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$$f_res_1395_1396" = bitcast %TName_Option_Uint128* %"$f_res_1395" to i8*
  %"$_literal_cost_call_1397" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i8* %"$$f_res_1395_1396")
  %"$gasrem_1398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1399" = icmp ugt i64 %"$_literal_cost_call_1397", %"$gasrem_1398"
  br i1 %"$gascmp_1399", label %"$out_of_gas_1400", label %"$have_gas_1401"

"$out_of_gas_1400":                               ; preds = %"$have_gas_1388"
  call void @_out_of_gas()
  br label %"$have_gas_1401"

"$have_gas_1401":                                 ; preds = %"$out_of_gas_1400", %"$have_gas_1388"
  %"$consume_1402" = sub i64 %"$gasrem_1398", %"$_literal_cost_call_1397"
  store i64 %"$consume_1402", i64* @_gasrem, align 8
  %"$execptr_load_1403" = load i8*, i8** @_execptr, align 8
  %"$f_res_1405" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$update_value_1406" = bitcast %TName_Option_Uint128* %"$f_res_1405" to i8*
  call void @_update_field(i8* %"$execptr_load_1403", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_4_f_res_1404", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_61", i32 0, i8* null, i8* %"$update_value_1406")
  %g = alloca %TName_Bool*, align 8
  %"$execptr_load_1408" = load i8*, i8** @_execptr, align 8
  %"$g_x_as_address_1409" = alloca [20 x i8], align 1
  %"$x_as_address_1410" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1410", [20 x i8]* %"$g_x_as_address_1409", align 1
  %"$g_call_1411" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1408", [20 x i8]* %"$g_x_as_address_1409", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_1407", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i32 0, i8* null, i32 1)
  %"$g_1412" = bitcast i8* %"$g_call_1411" to %TName_Bool*
  store %TName_Bool* %"$g_1412", %TName_Bool** %g, align 8
  %"$g_1413" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$$g_1413_1414" = bitcast %TName_Bool* %"$g_1413" to i8*
  %"$_literal_cost_call_1415" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i8* %"$$g_1413_1414")
  %"$gasadd_1416" = add i64 %"$_literal_cost_call_1415", 0
  %"$gasrem_1417" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1418" = icmp ugt i64 %"$gasadd_1416", %"$gasrem_1417"
  br i1 %"$gascmp_1418", label %"$out_of_gas_1419", label %"$have_gas_1420"

"$out_of_gas_1419":                               ; preds = %"$have_gas_1401"
  call void @_out_of_gas()
  br label %"$have_gas_1420"

"$have_gas_1420":                                 ; preds = %"$out_of_gas_1419", %"$have_gas_1401"
  %"$consume_1421" = sub i64 %"$gasrem_1417", %"$gasadd_1416"
  store i64 %"$consume_1421", i64* @_gasrem, align 8
  %"$gasrem_1422" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1423" = icmp ugt i64 1, %"$gasrem_1422"
  br i1 %"$gascmp_1423", label %"$out_of_gas_1424", label %"$have_gas_1425"

"$out_of_gas_1424":                               ; preds = %"$have_gas_1420"
  call void @_out_of_gas()
  br label %"$have_gas_1425"

"$have_gas_1425":                                 ; preds = %"$out_of_gas_1424", %"$have_gas_1420"
  %"$consume_1426" = sub i64 %"$gasrem_1422", 1
  store i64 %"$consume_1426", i64* @_gasrem, align 8
  %g_res = alloca %TName_Option_Bool*, align 8
  %"$gasrem_1427" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1428" = icmp ugt i64 1, %"$gasrem_1427"
  br i1 %"$gascmp_1428", label %"$out_of_gas_1429", label %"$have_gas_1430"

"$out_of_gas_1429":                               ; preds = %"$have_gas_1425"
  call void @_out_of_gas()
  br label %"$have_gas_1430"

"$have_gas_1430":                                 ; preds = %"$out_of_gas_1429", %"$have_gas_1425"
  %"$consume_1431" = sub i64 %"$gasrem_1427", 1
  store i64 %"$consume_1431", i64* @_gasrem, align 8
  %"$g_1432" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$adtval_1433_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1433_salloc" = call i8* @_salloc(i8* %"$adtval_1433_load", i64 9)
  %"$adtval_1433" = bitcast i8* %"$adtval_1433_salloc" to %CName_Some_Bool*
  %"$adtgep_1434" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1433", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1434", align 1
  %"$adtgep_1435" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1433", i32 0, i32 1
  store %TName_Bool* %"$g_1432", %TName_Bool** %"$adtgep_1435", align 8
  %"$adtptr_1436" = bitcast %CName_Some_Bool* %"$adtval_1433" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_1436", %TName_Option_Bool** %g_res, align 8
  %"$g_res_1437" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$$g_res_1437_1438" = bitcast %TName_Option_Bool* %"$g_res_1437" to i8*
  %"$_literal_cost_call_1439" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i8* %"$$g_res_1437_1438")
  %"$gasrem_1440" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1441" = icmp ugt i64 %"$_literal_cost_call_1439", %"$gasrem_1440"
  br i1 %"$gascmp_1441", label %"$out_of_gas_1442", label %"$have_gas_1443"

"$out_of_gas_1442":                               ; preds = %"$have_gas_1430"
  call void @_out_of_gas()
  br label %"$have_gas_1443"

"$have_gas_1443":                                 ; preds = %"$out_of_gas_1442", %"$have_gas_1430"
  %"$consume_1444" = sub i64 %"$gasrem_1440", %"$_literal_cost_call_1439"
  store i64 %"$consume_1444", i64* @_gasrem, align 8
  %"$execptr_load_1445" = load i8*, i8** @_execptr, align 8
  %"$g_res_1447" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$update_value_1448" = bitcast %TName_Option_Bool* %"$g_res_1447" to i8*
  call void @_update_field(i8* %"$execptr_load_1445", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_4_g_res_1446", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i32 0, i8* null, i8* %"$update_value_1448")
  br label %"$matchsucc_1310"

"$None_1449":                                     ; preds = %"$have_gas_1308"
  %"$x_cast_1450" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1311" to %"CName_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  %"$gasrem_1451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1452" = icmp ugt i64 1, %"$gasrem_1451"
  br i1 %"$gascmp_1452", label %"$out_of_gas_1453", label %"$have_gas_1454"

"$out_of_gas_1453":                               ; preds = %"$None_1449"
  call void @_out_of_gas()
  br label %"$have_gas_1454"

"$have_gas_1454":                                 ; preds = %"$out_of_gas_1453", %"$None_1449"
  %"$consume_1455" = sub i64 %"$gasrem_1451", 1
  store i64 %"$consume_1455", i64* @_gasrem, align 8
  %res = alloca %TName_Bool*, align 8
  %"$gasrem_1456" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1457" = icmp ugt i64 1, %"$gasrem_1456"
  br i1 %"$gascmp_1457", label %"$out_of_gas_1458", label %"$have_gas_1459"

"$out_of_gas_1458":                               ; preds = %"$have_gas_1454"
  call void @_out_of_gas()
  br label %"$have_gas_1459"

"$have_gas_1459":                                 ; preds = %"$out_of_gas_1458", %"$have_gas_1454"
  %"$consume_1460" = sub i64 %"$gasrem_1456", 1
  store i64 %"$consume_1460", i64* @_gasrem, align 8
  %"$adtval_1461_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1461_salloc" = call i8* @_salloc(i8* %"$adtval_1461_load", i64 1)
  %"$adtval_1461" = bitcast i8* %"$adtval_1461_salloc" to %CName_True*
  %"$adtgep_1462" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_1461", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1462", align 1
  %"$adtptr_1463" = bitcast %CName_True* %"$adtval_1461" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1463", %TName_Bool** %res, align 8
  %"$res_1464" = load %TName_Bool*, %TName_Bool** %res, align 8
  %"$$res_1464_1465" = bitcast %TName_Bool* %"$res_1464" to i8*
  %"$_literal_cost_call_1466" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i8* %"$$res_1464_1465")
  %"$gasrem_1467" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1468" = icmp ugt i64 %"$_literal_cost_call_1466", %"$gasrem_1467"
  br i1 %"$gascmp_1468", label %"$out_of_gas_1469", label %"$have_gas_1470"

"$out_of_gas_1469":                               ; preds = %"$have_gas_1459"
  call void @_out_of_gas()
  br label %"$have_gas_1470"

"$have_gas_1470":                                 ; preds = %"$out_of_gas_1469", %"$have_gas_1459"
  %"$consume_1471" = sub i64 %"$gasrem_1467", %"$_literal_cost_call_1466"
  store i64 %"$consume_1471", i64* @_gasrem, align 8
  %"$execptr_load_1472" = load i8*, i8** @_execptr, align 8
  %"$res_1474" = load %TName_Bool*, %TName_Bool** %res, align 8
  %"$update_value_1475" = bitcast %TName_Bool* %"$res_1474" to i8*
  call void @_update_field(i8* %"$execptr_load_1472", i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$test_6_4_failed_cast_1473", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i32 0, i8* null, i8* %"$update_value_1475")
  br label %"$matchsucc_1310"

"$empty_default_1314":                            ; preds = %"$have_gas_1308"
  br label %"$matchsucc_1310"

"$matchsucc_1310":                                ; preds = %"$have_gas_1470", %"$have_gas_1443", %"$empty_default_1314"
  ret void
}

define void @CastTest6_4(i8* %0) {
entry:
  %"$_amount_1477" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1478" = bitcast i8* %"$_amount_1477" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1478", align 8
  %"$_origin_1479" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1480" = bitcast i8* %"$_origin_1479" to [20 x i8]*
  %"$_sender_1481" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1482" = bitcast i8* %"$_sender_1481" to [20 x i8]*
  %"$x_1483" = getelementptr i8, i8* %0, i32 56
  %"$x_1484" = bitcast i8* %"$x_1483" to [20 x i8]*
  call void @"$CastTest6_4_1292"(%Uint128 %_amount, [20 x i8]* %"$_origin_1480", [20 x i8]* %"$_sender_1482", [20 x i8]* %"$x_1484")
  ret void
}

define internal void @"$CastTest7_1485"(%Uint128 %_amount, [20 x i8]* %"$_origin_1486", [20 x i8]* %"$_sender_1487", [20 x i8]* %"$x_1488") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1486", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1487", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_1488", align 1
  %"$gasrem_1489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1490" = icmp ugt i64 4, %"$gasrem_1489"
  br i1 %"$gascmp_1490", label %"$out_of_gas_1491", label %"$have_gas_1492"

"$out_of_gas_1491":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1492"

"$have_gas_1492":                                 ; preds = %"$out_of_gas_1491", %entry
  %"$consume_1493" = sub i64 %"$gasrem_1489", 4
  store i64 %"$consume_1493", i64* @_gasrem, align 8
  %x_cast = alloca %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"*, align 8
  %"$execptr_load_1494" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_1495" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_1495", align 1
  %"$_dynamic_typecast_call_1496" = call i8* @_dynamic_typecast(i8* %"$execptr_load_1494", [20 x i8]* %"$_dynamic_typecast_x_1495", %_TyDescrTy_Typ* @"$TyDescr_Addr_69")
  %"$_dynamic_typecast_1497" = bitcast i8* %"$_dynamic_typecast_call_1496" to %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"*
  store %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"* %"$_dynamic_typecast_1497", %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"** %x_cast, align 8
  %"$gasrem_1498" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1499" = icmp ugt i64 2, %"$gasrem_1498"
  br i1 %"$gascmp_1499", label %"$out_of_gas_1500", label %"$have_gas_1501"

"$out_of_gas_1500":                               ; preds = %"$have_gas_1492"
  call void @_out_of_gas()
  br label %"$have_gas_1501"

"$have_gas_1501":                                 ; preds = %"$out_of_gas_1500", %"$have_gas_1492"
  %"$consume_1502" = sub i64 %"$gasrem_1498", 2
  store i64 %"$consume_1502", i64* @_gasrem, align 8
  %"$x_cast_1504" = load %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"*, %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"** %x_cast, align 8
  %"$x_cast_tag_1505" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end", %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"* %"$x_cast_1504", i32 0, i32 0
  %"$x_cast_tag_1506" = load i8, i8* %"$x_cast_tag_1505", align 1
  switch i8 %"$x_cast_tag_1506", label %"$empty_default_1507" [
    i8 0, label %"$Some_1508"
    i8 1, label %"$None_1641"
  ]

"$Some_1508":                                     ; preds = %"$have_gas_1501"
  %"$x_cast_1509" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"* %"$x_cast_1504" to %"CName_Some_ByStr20_with_contract_field_f_:_ByStr20_end"*
  %"$x_as_address_gep_1510" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_f_:_ByStr20_end", %"CName_Some_ByStr20_with_contract_field_f_:_ByStr20_end"* %"$x_cast_1509", i32 0, i32 1
  %"$x_as_address_load_1511" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_1510", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_1511", [20 x i8]* %x_as_address, align 1
  %f = alloca [20 x i8], align 1
  %"$execptr_load_1513" = load i8*, i8** @_execptr, align 8
  %"$f_x_as_address_1514" = alloca [20 x i8], align 1
  %"$x_as_address_1515" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1515", [20 x i8]* %"$f_x_as_address_1514", align 1
  %"$f_call_1516" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1513", [20 x i8]* %"$f_x_as_address_1514", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_1512", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_52", i32 0, i8* null, i32 1)
  %"$f_1517" = bitcast i8* %"$f_call_1516" to [20 x i8]*
  %"$f_1518" = load [20 x i8], [20 x i8]* %"$f_1517", align 1
  store [20 x i8] %"$f_1518", [20 x i8]* %f, align 1
  %"$_literal_cost_f_1519" = alloca [20 x i8], align 1
  %"$f_1520" = load [20 x i8], [20 x i8]* %f, align 1
  store [20 x i8] %"$f_1520", [20 x i8]* %"$_literal_cost_f_1519", align 1
  %"$$_literal_cost_f_1519_1521" = bitcast [20 x i8]* %"$_literal_cost_f_1519" to i8*
  %"$_literal_cost_call_1522" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_52", i8* %"$$_literal_cost_f_1519_1521")
  %"$gasadd_1523" = add i64 %"$_literal_cost_call_1522", 0
  %"$gasrem_1524" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1525" = icmp ugt i64 %"$gasadd_1523", %"$gasrem_1524"
  br i1 %"$gascmp_1525", label %"$out_of_gas_1526", label %"$have_gas_1527"

"$out_of_gas_1526":                               ; preds = %"$Some_1508"
  call void @_out_of_gas()
  br label %"$have_gas_1527"

"$have_gas_1527":                                 ; preds = %"$out_of_gas_1526", %"$Some_1508"
  %"$consume_1528" = sub i64 %"$gasrem_1524", %"$gasadd_1523"
  store i64 %"$consume_1528", i64* @_gasrem, align 8
  %"$gasrem_1529" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1530" = icmp ugt i64 5, %"$gasrem_1529"
  br i1 %"$gascmp_1530", label %"$out_of_gas_1531", label %"$have_gas_1532"

"$out_of_gas_1531":                               ; preds = %"$have_gas_1527"
  call void @_out_of_gas()
  br label %"$have_gas_1532"

"$have_gas_1532":                                 ; preds = %"$out_of_gas_1531", %"$have_gas_1527"
  %"$consume_1533" = sub i64 %"$gasrem_1529", 5
  store i64 %"$consume_1533", i64* @_gasrem, align 8
  %f_cast = alloca %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*, align 8
  %"$execptr_load_1534" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_f_1535" = alloca [20 x i8], align 1
  %"$f_1536" = load [20 x i8], [20 x i8]* %f, align 1
  store [20 x i8] %"$f_1536", [20 x i8]* %"$_dynamic_typecast_f_1535", align 1
  %"$_dynamic_typecast_call_1537" = call i8* @_dynamic_typecast(i8* %"$execptr_load_1534", [20 x i8]* %"$_dynamic_typecast_f_1535", %_TyDescrTy_Typ* @"$TyDescr_Addr_68")
  %"$_dynamic_typecast_1538" = bitcast i8* %"$_dynamic_typecast_call_1537" to %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*
  store %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* %"$_dynamic_typecast_1538", %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"** %f_cast, align 8
  %"$gasrem_1539" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1540" = icmp ugt i64 2, %"$gasrem_1539"
  br i1 %"$gascmp_1540", label %"$out_of_gas_1541", label %"$have_gas_1542"

"$out_of_gas_1541":                               ; preds = %"$have_gas_1532"
  call void @_out_of_gas()
  br label %"$have_gas_1542"

"$have_gas_1542":                                 ; preds = %"$out_of_gas_1541", %"$have_gas_1532"
  %"$consume_1543" = sub i64 %"$gasrem_1539", 2
  store i64 %"$consume_1543", i64* @_gasrem, align 8
  %"$f_cast_1545" = load %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*, %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"** %f_cast, align 8
  %"$f_cast_tag_1546" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end", %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* %"$f_cast_1545", i32 0, i32 0
  %"$f_cast_tag_1547" = load i8, i8* %"$f_cast_tag_1546", align 1
  switch i8 %"$f_cast_tag_1547", label %"$empty_default_1548" [
    i8 0, label %"$Some_1549"
    i8 1, label %"$None_1639"
  ]

"$Some_1549":                                     ; preds = %"$have_gas_1542"
  %"$f_cast_1550" = bitcast %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* %"$f_cast_1545" to %"CName_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*
  %"$f_as_address_gep_1551" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end", %"CName_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* %"$f_cast_1550", i32 0, i32 1
  %"$f_as_address_load_1552" = load [20 x i8], [20 x i8]* %"$f_as_address_gep_1551", align 1
  %f_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$f_as_address_load_1552", [20 x i8]* %f_as_address, align 1
  %g = alloca %TName_Bool*, align 8
  %"$execptr_load_1554" = load i8*, i8** @_execptr, align 8
  %"$g_f_as_address_1555" = alloca [20 x i8], align 1
  %"$f_as_address_1556" = load [20 x i8], [20 x i8]* %f_as_address, align 1
  store [20 x i8] %"$f_as_address_1556", [20 x i8]* %"$g_f_as_address_1555", align 1
  %"$g_call_1557" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1554", [20 x i8]* %"$g_f_as_address_1555", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_1553", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i32 0, i8* null, i32 1)
  %"$g_1558" = bitcast i8* %"$g_call_1557" to %TName_Bool*
  store %TName_Bool* %"$g_1558", %TName_Bool** %g, align 8
  %"$g_1559" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$$g_1559_1560" = bitcast %TName_Bool* %"$g_1559" to i8*
  %"$_literal_cost_call_1561" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_64", i8* %"$$g_1559_1560")
  %"$gasadd_1562" = add i64 %"$_literal_cost_call_1561", 0
  %"$gasrem_1563" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1564" = icmp ugt i64 %"$gasadd_1562", %"$gasrem_1563"
  br i1 %"$gascmp_1564", label %"$out_of_gas_1565", label %"$have_gas_1566"

"$out_of_gas_1565":                               ; preds = %"$Some_1549"
  call void @_out_of_gas()
  br label %"$have_gas_1566"

"$have_gas_1566":                                 ; preds = %"$out_of_gas_1565", %"$Some_1549"
  %"$consume_1567" = sub i64 %"$gasrem_1563", %"$gasadd_1562"
  store i64 %"$consume_1567", i64* @_gasrem, align 8
  %"$gasrem_1568" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1569" = icmp ugt i64 1, %"$gasrem_1568"
  br i1 %"$gascmp_1569", label %"$out_of_gas_1570", label %"$have_gas_1571"

"$out_of_gas_1570":                               ; preds = %"$have_gas_1566"
  call void @_out_of_gas()
  br label %"$have_gas_1571"

"$have_gas_1571":                                 ; preds = %"$out_of_gas_1570", %"$have_gas_1566"
  %"$consume_1572" = sub i64 %"$gasrem_1568", 1
  store i64 %"$consume_1572", i64* @_gasrem, align 8
  %g_res = alloca %TName_Option_Bool*, align 8
  %"$gasrem_1573" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1574" = icmp ugt i64 1, %"$gasrem_1573"
  br i1 %"$gascmp_1574", label %"$out_of_gas_1575", label %"$have_gas_1576"

"$out_of_gas_1575":                               ; preds = %"$have_gas_1571"
  call void @_out_of_gas()
  br label %"$have_gas_1576"

"$have_gas_1576":                                 ; preds = %"$out_of_gas_1575", %"$have_gas_1571"
  %"$consume_1577" = sub i64 %"$gasrem_1573", 1
  store i64 %"$consume_1577", i64* @_gasrem, align 8
  %"$g_1578" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$adtval_1579_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1579_salloc" = call i8* @_salloc(i8* %"$adtval_1579_load", i64 9)
  %"$adtval_1579" = bitcast i8* %"$adtval_1579_salloc" to %CName_Some_Bool*
  %"$adtgep_1580" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1579", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1580", align 1
  %"$adtgep_1581" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1579", i32 0, i32 1
  store %TName_Bool* %"$g_1578", %TName_Bool** %"$adtgep_1581", align 8
  %"$adtptr_1582" = bitcast %CName_Some_Bool* %"$adtval_1579" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_1582", %TName_Option_Bool** %g_res, align 8
  %"$g_res_1583" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$$g_res_1583_1584" = bitcast %TName_Option_Bool* %"$g_res_1583" to i8*
  %"$_literal_cost_call_1585" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i8* %"$$g_res_1583_1584")
  %"$gasrem_1586" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1587" = icmp ugt i64 %"$_literal_cost_call_1585", %"$gasrem_1586"
  br i1 %"$gascmp_1587", label %"$out_of_gas_1588", label %"$have_gas_1589"

"$out_of_gas_1588":                               ; preds = %"$have_gas_1576"
  call void @_out_of_gas()
  br label %"$have_gas_1589"

"$have_gas_1589":                                 ; preds = %"$out_of_gas_1588", %"$have_gas_1576"
  %"$consume_1590" = sub i64 %"$gasrem_1586", %"$_literal_cost_call_1585"
  store i64 %"$consume_1590", i64* @_gasrem, align 8
  %"$execptr_load_1591" = load i8*, i8** @_execptr, align 8
  %"$g_res_1593" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$update_value_1594" = bitcast %TName_Option_Bool* %"$g_res_1593" to i8*
  call void @_update_field(i8* %"$execptr_load_1591", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_7_g_res_1592", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_60", i32 0, i8* null, i8* %"$update_value_1594")
  %h = alloca %Int256, align 8
  %"$execptr_load_1596" = load i8*, i8** @_execptr, align 8
  %"$h_f_as_address_1597" = alloca [20 x i8], align 1
  %"$f_as_address_1598" = load [20 x i8], [20 x i8]* %f_as_address, align 1
  store [20 x i8] %"$f_as_address_1598", [20 x i8]* %"$h_f_as_address_1597", align 1
  %"$h_call_1599" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1596", [20 x i8]* %"$h_f_as_address_1597", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$h_1595", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int256_36", i32 0, i8* null, i32 1)
  %"$h_1600" = bitcast i8* %"$h_call_1599" to %Int256*
  %"$h_1601" = load %Int256, %Int256* %"$h_1600", align 8
  store %Int256 %"$h_1601", %Int256* %h, align 8
  %"$_literal_cost_h_1602" = alloca %Int256, align 8
  %"$h_1603" = load %Int256, %Int256* %h, align 8
  store %Int256 %"$h_1603", %Int256* %"$_literal_cost_h_1602", align 8
  %"$$_literal_cost_h_1602_1604" = bitcast %Int256* %"$_literal_cost_h_1602" to i8*
  %"$_literal_cost_call_1605" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int256_36", i8* %"$$_literal_cost_h_1602_1604")
  %"$gasadd_1606" = add i64 %"$_literal_cost_call_1605", 0
  %"$gasrem_1607" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1608" = icmp ugt i64 %"$gasadd_1606", %"$gasrem_1607"
  br i1 %"$gascmp_1608", label %"$out_of_gas_1609", label %"$have_gas_1610"

"$out_of_gas_1609":                               ; preds = %"$have_gas_1589"
  call void @_out_of_gas()
  br label %"$have_gas_1610"

"$have_gas_1610":                                 ; preds = %"$out_of_gas_1609", %"$have_gas_1589"
  %"$consume_1611" = sub i64 %"$gasrem_1607", %"$gasadd_1606"
  store i64 %"$consume_1611", i64* @_gasrem, align 8
  %"$gasrem_1612" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1613" = icmp ugt i64 1, %"$gasrem_1612"
  br i1 %"$gascmp_1613", label %"$out_of_gas_1614", label %"$have_gas_1615"

"$out_of_gas_1614":                               ; preds = %"$have_gas_1610"
  call void @_out_of_gas()
  br label %"$have_gas_1615"

"$have_gas_1615":                                 ; preds = %"$out_of_gas_1614", %"$have_gas_1610"
  %"$consume_1616" = sub i64 %"$gasrem_1612", 1
  store i64 %"$consume_1616", i64* @_gasrem, align 8
  %h_res = alloca %TName_Option_Int256*, align 8
  %"$gasrem_1617" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1618" = icmp ugt i64 1, %"$gasrem_1617"
  br i1 %"$gascmp_1618", label %"$out_of_gas_1619", label %"$have_gas_1620"

"$out_of_gas_1619":                               ; preds = %"$have_gas_1615"
  call void @_out_of_gas()
  br label %"$have_gas_1620"

"$have_gas_1620":                                 ; preds = %"$out_of_gas_1619", %"$have_gas_1615"
  %"$consume_1621" = sub i64 %"$gasrem_1617", 1
  store i64 %"$consume_1621", i64* @_gasrem, align 8
  %"$h_1622" = load %Int256, %Int256* %h, align 8
  %"$adtval_1623_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1623_salloc" = call i8* @_salloc(i8* %"$adtval_1623_load", i64 33)
  %"$adtval_1623" = bitcast i8* %"$adtval_1623_salloc" to %CName_Some_Int256*
  %"$adtgep_1624" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$adtval_1623", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1624", align 1
  %"$adtgep_1625" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$adtval_1623", i32 0, i32 1
  store %Int256 %"$h_1622", %Int256* %"$adtgep_1625", align 8
  %"$adtptr_1626" = bitcast %CName_Some_Int256* %"$adtval_1623" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$adtptr_1626", %TName_Option_Int256** %h_res, align 8
  %"$h_res_1627" = load %TName_Option_Int256*, %TName_Option_Int256** %h_res, align 8
  %"$$h_res_1627_1628" = bitcast %TName_Option_Int256* %"$h_res_1627" to i8*
  %"$_literal_cost_call_1629" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int256_59", i8* %"$$h_res_1627_1628")
  %"$gasrem_1630" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1631" = icmp ugt i64 %"$_literal_cost_call_1629", %"$gasrem_1630"
  br i1 %"$gascmp_1631", label %"$out_of_gas_1632", label %"$have_gas_1633"

"$out_of_gas_1632":                               ; preds = %"$have_gas_1620"
  call void @_out_of_gas()
  br label %"$have_gas_1633"

"$have_gas_1633":                                 ; preds = %"$out_of_gas_1632", %"$have_gas_1620"
  %"$consume_1634" = sub i64 %"$gasrem_1630", %"$_literal_cost_call_1629"
  store i64 %"$consume_1634", i64* @_gasrem, align 8
  %"$execptr_load_1635" = load i8*, i8** @_execptr, align 8
  %"$h_res_1637" = load %TName_Option_Int256*, %TName_Option_Int256** %h_res, align 8
  %"$update_value_1638" = bitcast %TName_Option_Int256* %"$h_res_1637" to i8*
  call void @_update_field(i8* %"$execptr_load_1635", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_7_h_res_1636", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int256_59", i32 0, i8* null, i8* %"$update_value_1638")
  br label %"$matchsucc_1544"

"$None_1639":                                     ; preds = %"$have_gas_1542"
  %"$f_cast_1640" = bitcast %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* %"$f_cast_1545" to %"CName_None_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*
  br label %"$matchsucc_1544"

"$empty_default_1548":                            ; preds = %"$have_gas_1542"
  br label %"$matchsucc_1544"

"$matchsucc_1544":                                ; preds = %"$None_1639", %"$have_gas_1633", %"$empty_default_1548"
  br label %"$matchsucc_1503"

"$None_1641":                                     ; preds = %"$have_gas_1501"
  %"$x_cast_1642" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"* %"$x_cast_1504" to %"CName_None_ByStr20_with_contract_field_f_:_ByStr20_end"*
  br label %"$matchsucc_1503"

"$empty_default_1507":                            ; preds = %"$have_gas_1501"
  br label %"$matchsucc_1503"

"$matchsucc_1503":                                ; preds = %"$None_1641", %"$matchsucc_1544", %"$empty_default_1507"
  ret void
}

define void @CastTest7(i8* %0) {
entry:
  %"$_amount_1644" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1645" = bitcast i8* %"$_amount_1644" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1645", align 8
  %"$_origin_1646" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1647" = bitcast i8* %"$_origin_1646" to [20 x i8]*
  %"$_sender_1648" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1649" = bitcast i8* %"$_sender_1648" to [20 x i8]*
  %"$x_1650" = getelementptr i8, i8* %0, i32 56
  %"$x_1651" = bitcast i8* %"$x_1650" to [20 x i8]*
  call void @"$CastTest7_1485"(%Uint128 %_amount, [20 x i8]* %"$_origin_1647", [20 x i8]* %"$_sender_1649", [20 x i8]* %"$x_1651")
  ret void
}
