

; gas_remaining: 4001999
; ModuleID = 'CastContract'
source_filename = "CastContract"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_22" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_56" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_55"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_55" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_57"**, %"$TyDescrTy_ADTTyp_56"* }
%"$TyDescrTy_ADTTyp_Constr_57" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrFieldTyp_68" = type { %TyDescrString, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_69" = type { i32, %"$TyDescr_AddrFieldTyp_68"* }
%Int32 = type { i32 }
%Uint32 = type { i32 }
%"$ParamDescr_1703" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1704" = type { %ParamDescrString, i32, %"$ParamDescr_1703"* }
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
@"$TyDescr_ReplicateContr_Prim_49" = global %"$TyDescrTy_PrimTyp_22" { i32 9, i32 0 }
@"$TyDescr_ReplicateContr_50" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_22"* @"$TyDescr_ReplicateContr_Prim_49" to i8*) }
@"$TyDescr_Bystr_Prim_51" = global %"$TyDescrTy_PrimTyp_22" { i32 7, i32 0 }
@"$TyDescr_Bystr_52" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_22"* @"$TyDescr_Bystr_Prim_51" to i8*) }
@"$TyDescr_Bystr20_Prim_53" = global %"$TyDescrTy_PrimTyp_22" { i32 8, i32 20 }
@"$TyDescr_Bystr20_54" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_22"* @"$TyDescr_Bystr20_Prim_53" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_58" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Specl_86" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_with_contract_field_f_:_ByStr20_end_59" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Option_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Specl_95" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_60" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Specl_104" to i8*) }
@"$TyDescr_ADT_Option_Int256_61" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Option_Int256_ADTTyp_Specl_113" to i8*) }
@"$TyDescr_ADT_Option_Bool_62" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Option_Bool_ADTTyp_Specl_122" to i8*) }
@"$TyDescr_ADT_Option_Uint128_63" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Option_Uint128_ADTTyp_Specl_131" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_with_contract_end_64" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Option_ByStr20_with_contract_end_ADTTyp_Specl_140" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_with_end_65" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Option_ByStr20_with_end_ADTTyp_Specl_149" to i8*) }
@"$TyDescr_ADT_Bool_66" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Bool_ADTTyp_Specl_161" to i8*) }
@"$TyDescr_Addr_70" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_69"* @"$TyDescr_AddrFields_167" to i8*) }
@"$TyDescr_Addr_71" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_69"* @"$TyDescr_AddrFields_170" to i8*) }
@"$TyDescr_Addr_72" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_69"* @"$TyDescr_AddrFields_174" to i8*) }
@"$TyDescr_Addr_73" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_69"* @"$TyDescr_AddrFields_177" to i8*) }
@"$TyDescr_Addr_74" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_69"* @"$TyDescr_AddrFields_181" to i8*) }
@"$TyDescr_Addr_75" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_69"* @"$TyDescr_AddrFields_183" to i8*) }
@"$TyDescr_Addr_76" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_69"* @"$TyDescr_AddrFields_184" to i8*) }
@"$TyDescr_Option_ADTTyp_77" = unnamed_addr constant %"$TyDescrTy_ADTTyp_56" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_151", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 8, %"$TyDescrTy_ADTTyp_Specl_55"** getelementptr inbounds ([8 x %"$TyDescrTy_ADTTyp_Specl_55"*], [8 x %"$TyDescrTy_ADTTyp_Specl_55"*]* @"$TyDescr_Option_ADTTyp_m_specls_150", i32 0, i32 0) }
@"$TyDescr_Option_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_Constr_m_args_78" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_70"]
@"$TyDescr_ADT_Some_79" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Constr_80" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_79", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_Constr_m_args_78", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_Constr_m_args_81" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_82" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Constr_83" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_82", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_Constr_m_args_81", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Specl_m_constrs_84" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_57"*] [%"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Option_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Constr_80", %"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Option_None_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Constr_83"]
@"$TyDescr_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Specl_m_TArgs_85" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_70"]
@"$TyDescr_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Specl_86" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_55" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Specl_m_TArgs_85", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_57"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_57"*], [2 x %"$TyDescrTy_ADTTyp_Constr_57"*]* @"$TyDescr_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Specl_m_constrs_84", i32 0, i32 0), %"$TyDescrTy_ADTTyp_56"* @"$TyDescr_Option_ADTTyp_77" }
@"$TyDescr_Option_Some_ByStr20_with_contract_field_f_:_ByStr20_end_Constr_m_args_87" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_71"]
@"$TyDescr_ADT_Some_88" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Constr_89" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_88", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_with_contract_field_f_:_ByStr20_end_Constr_m_args_87", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_with_contract_field_f_:_ByStr20_end_Constr_m_args_90" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_91" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Constr_92" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_91", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_with_contract_field_f_:_ByStr20_end_Constr_m_args_90", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Specl_m_constrs_93" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_57"*] [%"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Option_Some_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Constr_89", %"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Option_None_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Constr_92"]
@"$TyDescr_Option_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Specl_m_TArgs_94" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_71"]
@"$TyDescr_Option_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Specl_95" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_55" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Specl_m_TArgs_94", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_57"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_57"*], [2 x %"$TyDescrTy_ADTTyp_Constr_57"*]* @"$TyDescr_Option_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Specl_m_constrs_93", i32 0, i32 0), %"$TyDescrTy_ADTTyp_56"* @"$TyDescr_Option_ADTTyp_77" }
@"$TyDescr_Option_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_Constr_m_args_96" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_74"]
@"$TyDescr_ADT_Some_97" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Constr_98" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_97", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_Constr_m_args_96", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_Constr_m_args_99" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_100" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Constr_101" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_100", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_Constr_m_args_99", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Specl_m_constrs_102" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_57"*] [%"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Option_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Constr_98", %"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Option_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Constr_101"]
@"$TyDescr_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Specl_m_TArgs_103" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_74"]
@"$TyDescr_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Specl_104" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_55" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Specl_m_TArgs_103", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_57"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_57"*], [2 x %"$TyDescrTy_ADTTyp_Constr_57"*]* @"$TyDescr_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Specl_m_constrs_102", i32 0, i32 0), %"$TyDescrTy_ADTTyp_56"* @"$TyDescr_Option_ADTTyp_77" }
@"$TyDescr_Option_Some_Int256_Constr_m_args_105" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int256_36"]
@"$TyDescr_ADT_Some_106" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Int256_ADTTyp_Constr_107" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_106", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Int256_Constr_m_args_105", i32 0, i32 0) }
@"$TyDescr_Option_None_Int256_Constr_m_args_108" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_109" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Int256_ADTTyp_Constr_110" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_109", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Int256_Constr_m_args_108", i32 0, i32 0) }
@"$TyDescr_Option_Int256_ADTTyp_Specl_m_constrs_111" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_57"*] [%"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Option_Some_Int256_ADTTyp_Constr_107", %"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Option_None_Int256_ADTTyp_Constr_110"]
@"$TyDescr_Option_Int256_ADTTyp_Specl_m_TArgs_112" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int256_36"]
@"$TyDescr_Option_Int256_ADTTyp_Specl_113" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_55" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Int256_ADTTyp_Specl_m_TArgs_112", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_57"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_57"*], [2 x %"$TyDescrTy_ADTTyp_Constr_57"*]* @"$TyDescr_Option_Int256_ADTTyp_Specl_m_constrs_111", i32 0, i32 0), %"$TyDescrTy_ADTTyp_56"* @"$TyDescr_Option_ADTTyp_77" }
@"$TyDescr_Option_Some_Bool_Constr_m_args_114" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66"]
@"$TyDescr_ADT_Some_115" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Bool_ADTTyp_Constr_116" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_115", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Bool_Constr_m_args_114", i32 0, i32 0) }
@"$TyDescr_Option_None_Bool_Constr_m_args_117" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_118" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Bool_ADTTyp_Constr_119" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_118", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Bool_Constr_m_args_117", i32 0, i32 0) }
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_120" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_57"*] [%"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Option_Some_Bool_ADTTyp_Constr_116", %"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Option_None_Bool_ADTTyp_Constr_119"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_121" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_122" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_55" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_121", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_57"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_57"*], [2 x %"$TyDescrTy_ADTTyp_Constr_57"*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_120", i32 0, i32 0), %"$TyDescrTy_ADTTyp_56"* @"$TyDescr_Option_ADTTyp_77" }
@"$TyDescr_Option_Some_Uint128_Constr_m_args_123" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_34"]
@"$TyDescr_ADT_Some_124" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Uint128_ADTTyp_Constr_125" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_124", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Uint128_Constr_m_args_123", i32 0, i32 0) }
@"$TyDescr_Option_None_Uint128_Constr_m_args_126" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_127" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Uint128_ADTTyp_Constr_128" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_127", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Uint128_Constr_m_args_126", i32 0, i32 0) }
@"$TyDescr_Option_Uint128_ADTTyp_Specl_m_constrs_129" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_57"*] [%"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Option_Some_Uint128_ADTTyp_Constr_125", %"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Option_None_Uint128_ADTTyp_Constr_128"]
@"$TyDescr_Option_Uint128_ADTTyp_Specl_m_TArgs_130" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_34"]
@"$TyDescr_Option_Uint128_ADTTyp_Specl_131" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_55" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Uint128_ADTTyp_Specl_m_TArgs_130", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_57"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_57"*], [2 x %"$TyDescrTy_ADTTyp_Constr_57"*]* @"$TyDescr_Option_Uint128_ADTTyp_Specl_m_constrs_129", i32 0, i32 0), %"$TyDescrTy_ADTTyp_56"* @"$TyDescr_Option_ADTTyp_77" }
@"$TyDescr_Option_Some_ByStr20_with_contract_end_Constr_m_args_132" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_75"]
@"$TyDescr_ADT_Some_133" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_with_contract_end_ADTTyp_Constr_134" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_133", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_with_contract_end_Constr_m_args_132", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_with_contract_end_Constr_m_args_135" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_136" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_with_contract_end_ADTTyp_Constr_137" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_136", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_with_contract_end_Constr_m_args_135", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_with_contract_end_ADTTyp_Specl_m_constrs_138" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_57"*] [%"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Option_Some_ByStr20_with_contract_end_ADTTyp_Constr_134", %"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Option_None_ByStr20_with_contract_end_ADTTyp_Constr_137"]
@"$TyDescr_Option_ByStr20_with_contract_end_ADTTyp_Specl_m_TArgs_139" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_75"]
@"$TyDescr_Option_ByStr20_with_contract_end_ADTTyp_Specl_140" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_55" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_with_contract_end_ADTTyp_Specl_m_TArgs_139", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_57"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_57"*], [2 x %"$TyDescrTy_ADTTyp_Constr_57"*]* @"$TyDescr_Option_ByStr20_with_contract_end_ADTTyp_Specl_m_constrs_138", i32 0, i32 0), %"$TyDescrTy_ADTTyp_56"* @"$TyDescr_Option_ADTTyp_77" }
@"$TyDescr_Option_Some_ByStr20_with_end_Constr_m_args_141" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_76"]
@"$TyDescr_ADT_Some_142" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_with_end_ADTTyp_Constr_143" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_142", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_with_end_Constr_m_args_141", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_with_end_Constr_m_args_144" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_145" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_with_end_ADTTyp_Constr_146" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_145", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_with_end_Constr_m_args_144", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_with_end_ADTTyp_Specl_m_constrs_147" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_57"*] [%"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Option_Some_ByStr20_with_end_ADTTyp_Constr_143", %"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Option_None_ByStr20_with_end_ADTTyp_Constr_146"]
@"$TyDescr_Option_ByStr20_with_end_ADTTyp_Specl_m_TArgs_148" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_76"]
@"$TyDescr_Option_ByStr20_with_end_ADTTyp_Specl_149" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_55" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_with_end_ADTTyp_Specl_m_TArgs_148", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_57"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_57"*], [2 x %"$TyDescrTy_ADTTyp_Constr_57"*]* @"$TyDescr_Option_ByStr20_with_end_ADTTyp_Specl_m_constrs_147", i32 0, i32 0), %"$TyDescrTy_ADTTyp_56"* @"$TyDescr_Option_ADTTyp_77" }
@"$TyDescr_Option_ADTTyp_m_specls_150" = unnamed_addr constant [8 x %"$TyDescrTy_ADTTyp_Specl_55"*] [%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Specl_86", %"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Option_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Specl_95", %"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Specl_104", %"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Option_Int256_ADTTyp_Specl_113", %"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Option_Bool_ADTTyp_Specl_122", %"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Option_Uint128_ADTTyp_Specl_131", %"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Option_ByStr20_with_contract_end_ADTTyp_Specl_140", %"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Option_ByStr20_with_end_ADTTyp_Specl_149"]
@"$TyDescr_ADT_Option_151" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Bool_ADTTyp_152" = unnamed_addr constant %"$TyDescrTy_ADTTyp_56" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_163", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_55"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_55"*], [1 x %"$TyDescrTy_ADTTyp_Specl_55"*]* @"$TyDescr_Bool_ADTTyp_m_specls_162", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_153" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_154" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_155" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_154", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_153", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_156" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_157" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_158" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_57" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_157", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_156", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_159" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_57"*] [%"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Bool_True_ADTTyp_Constr_155", %"$TyDescrTy_ADTTyp_Constr_57"* @"$TyDescr_Bool_False_ADTTyp_Constr_158"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_160" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_161" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_55" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_160", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_57"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_57"*], [2 x %"$TyDescrTy_ADTTyp_Constr_57"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_159", i32 0, i32 0), %"$TyDescrTy_ADTTyp_56"* @"$TyDescr_Bool_ADTTyp_152" }
@"$TyDescr_Bool_ADTTyp_m_specls_162" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_55"*] [%"$TyDescrTy_ADTTyp_Specl_55"* @"$TyDescr_Bool_ADTTyp_Specl_161"]
@"$TyDescr_ADT_Bool_163" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_AddrField_164" = unnamed_addr constant [1 x i8] c"g"
@"$TyDescr_AddrField_165" = unnamed_addr constant [1 x i8] c"h"
@"$TyDescr_AddrFields_166" = unnamed_addr constant [2 x %"$TyDescr_AddrFieldTyp_68"] [%"$TyDescr_AddrFieldTyp_68" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_164", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66" }, %"$TyDescr_AddrFieldTyp_68" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_165", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Int256_36" }]
@"$TyDescr_AddrFields_167" = unnamed_addr constant %"$TyDescr_AddrTyp_69" { i32 2, %"$TyDescr_AddrFieldTyp_68"* getelementptr inbounds ([2 x %"$TyDescr_AddrFieldTyp_68"], [2 x %"$TyDescr_AddrFieldTyp_68"]* @"$TyDescr_AddrFields_166", i32 0, i32 0) }
@"$TyDescr_AddrField_168" = unnamed_addr constant [1 x i8] c"f"
@"$TyDescr_AddrFields_169" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_68"] [%"$TyDescr_AddrFieldTyp_68" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_168", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_54" }]
@"$TyDescr_AddrFields_170" = unnamed_addr constant %"$TyDescr_AddrTyp_69" { i32 1, %"$TyDescr_AddrFieldTyp_68"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_68"], [1 x %"$TyDescr_AddrFieldTyp_68"]* @"$TyDescr_AddrFields_169", i32 0, i32 0) }
@"$TyDescr_AddrField_171" = unnamed_addr constant [1 x i8] c"f"
@"$TyDescr_AddrField_172" = unnamed_addr constant [1 x i8] c"g"
@"$TyDescr_AddrFields_173" = unnamed_addr constant [2 x %"$TyDescr_AddrFieldTyp_68"] [%"$TyDescr_AddrFieldTyp_68" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_171", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Uint256_38" }, %"$TyDescr_AddrFieldTyp_68" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_172", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66" }]
@"$TyDescr_AddrFields_174" = unnamed_addr constant %"$TyDescr_AddrTyp_69" { i32 2, %"$TyDescr_AddrFieldTyp_68"* getelementptr inbounds ([2 x %"$TyDescr_AddrFieldTyp_68"], [2 x %"$TyDescr_AddrFieldTyp_68"]* @"$TyDescr_AddrFields_173", i32 0, i32 0) }
@"$TyDescr_AddrField_175" = unnamed_addr constant [1 x i8] c"g"
@"$TyDescr_AddrFields_176" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_68"] [%"$TyDescr_AddrFieldTyp_68" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_175", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66" }]
@"$TyDescr_AddrFields_177" = unnamed_addr constant %"$TyDescr_AddrTyp_69" { i32 1, %"$TyDescr_AddrFieldTyp_68"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_68"], [1 x %"$TyDescr_AddrFieldTyp_68"]* @"$TyDescr_AddrFields_176", i32 0, i32 0) }
@"$TyDescr_AddrField_178" = unnamed_addr constant [1 x i8] c"f"
@"$TyDescr_AddrField_179" = unnamed_addr constant [1 x i8] c"g"
@"$TyDescr_AddrFields_180" = unnamed_addr constant [2 x %"$TyDescr_AddrFieldTyp_68"] [%"$TyDescr_AddrFieldTyp_68" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_178", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$TyDescr_AddrFieldTyp_68" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_179", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66" }]
@"$TyDescr_AddrFields_181" = unnamed_addr constant %"$TyDescr_AddrTyp_69" { i32 2, %"$TyDescr_AddrFieldTyp_68"* getelementptr inbounds ([2 x %"$TyDescr_AddrFieldTyp_68"], [2 x %"$TyDescr_AddrFieldTyp_68"]* @"$TyDescr_AddrFields_180", i32 0, i32 0) }
@"$TyDescr_AddrFields_182" = unnamed_addr constant [0 x %"$TyDescr_AddrFieldTyp_68"] zeroinitializer
@"$TyDescr_AddrFields_183" = unnamed_addr constant %"$TyDescr_AddrTyp_69" { i32 0, %"$TyDescr_AddrFieldTyp_68"* getelementptr inbounds ([0 x %"$TyDescr_AddrFieldTyp_68"], [0 x %"$TyDescr_AddrFieldTyp_68"]* @"$TyDescr_AddrFields_182", i32 0, i32 0) }
@"$TyDescr_AddrFields_184" = unnamed_addr constant %"$TyDescr_AddrTyp_69" { i32 -3, %"$TyDescr_AddrFieldTyp_68"* null }
@"$_gas_charge_acc_0" = global %Int32 zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$test_1_res_204" = unnamed_addr constant [11 x i8] c"test_1_res\00"
@"$test_2_res_216" = unnamed_addr constant [11 x i8] c"test_2_res\00"
@"$test_3_res_228" = unnamed_addr constant [11 x i8] c"test_3_res\00"
@"$test_4_res_240" = unnamed_addr constant [11 x i8] c"test_4_res\00"
@"$test_5_1_res_252" = unnamed_addr constant [13 x i8] c"test_5_1_res\00"
@"$test_5_2_res_264" = unnamed_addr constant [13 x i8] c"test_5_2_res\00"
@"$test_6_1_bal_res_276" = unnamed_addr constant [17 x i8] c"test_6_1_bal_res\00"
@"$test_6_1_f_res_288" = unnamed_addr constant [15 x i8] c"test_6_1_f_res\00"
@"$test_6_1_g_res_300" = unnamed_addr constant [15 x i8] c"test_6_1_g_res\00"
@"$test_6_2_bal_res_312" = unnamed_addr constant [17 x i8] c"test_6_2_bal_res\00"
@"$test_6_2_f_res_324" = unnamed_addr constant [15 x i8] c"test_6_2_f_res\00"
@"$test_6_2_g_res_336" = unnamed_addr constant [15 x i8] c"test_6_2_g_res\00"
@"$test_6_3_bal_res_348" = unnamed_addr constant [17 x i8] c"test_6_3_bal_res\00"
@"$test_6_3_f_res_360" = unnamed_addr constant [15 x i8] c"test_6_3_f_res\00"
@"$test_6_3_g_res_372" = unnamed_addr constant [15 x i8] c"test_6_3_g_res\00"
@"$test_6_4_bal_res_384" = unnamed_addr constant [17 x i8] c"test_6_4_bal_res\00"
@"$test_6_4_f_res_396" = unnamed_addr constant [15 x i8] c"test_6_4_f_res\00"
@"$test_6_4_g_res_408" = unnamed_addr constant [15 x i8] c"test_6_4_g_res\00"
@"$test_6_4_failed_cast_420" = unnamed_addr constant [21 x i8] c"test_6_4_failed_cast\00"
@"$test_7_g_res_432" = unnamed_addr constant [13 x i8] c"test_7_g_res\00"
@"$test_7_h_res_444" = unnamed_addr constant [13 x i8] c"test_7_h_res\00"
@"$test_1_res_469" = unnamed_addr constant [11 x i8] c"test_1_res\00"
@"$test_2_res_507" = unnamed_addr constant [11 x i8] c"test_2_res\00"
@"$test_3_res_545" = unnamed_addr constant [11 x i8] c"test_3_res\00"
@"$_balance_588" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_4_res_629" = unnamed_addr constant [11 x i8] c"test_4_res\00"
@"$_balance_674" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_5_1_res_715" = unnamed_addr constant [13 x i8] c"test_5_1_res\00"
@"$_balance_760" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_5_2_res_801" = unnamed_addr constant [13 x i8] c"test_5_2_res\00"
@"$_balance_846" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_6_1_bal_res_887" = unnamed_addr constant [17 x i8] c"test_6_1_bal_res\00"
@"$f_890" = unnamed_addr constant [2 x i8] c"f\00"
@"$test_6_1_f_res_931" = unnamed_addr constant [15 x i8] c"test_6_1_f_res\00"
@"$g_934" = unnamed_addr constant [2 x i8] c"g\00"
@"$test_6_1_g_res_973" = unnamed_addr constant [15 x i8] c"test_6_1_g_res\00"
@"$_balance_1018" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_6_2_bal_res_1059" = unnamed_addr constant [17 x i8] c"test_6_2_bal_res\00"
@"$f_1062" = unnamed_addr constant [2 x i8] c"f\00"
@"$test_6_2_f_res_1103" = unnamed_addr constant [15 x i8] c"test_6_2_f_res\00"
@"$g_1106" = unnamed_addr constant [2 x i8] c"g\00"
@"$test_6_2_g_res_1145" = unnamed_addr constant [15 x i8] c"test_6_2_g_res\00"
@"$_balance_1190" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_6_3_bal_res_1231" = unnamed_addr constant [17 x i8] c"test_6_3_bal_res\00"
@"$f_1234" = unnamed_addr constant [2 x i8] c"f\00"
@"$test_6_3_f_res_1275" = unnamed_addr constant [15 x i8] c"test_6_3_f_res\00"
@"$g_1278" = unnamed_addr constant [2 x i8] c"g\00"
@"$test_6_3_g_res_1317" = unnamed_addr constant [15 x i8] c"test_6_3_g_res\00"
@"$_balance_1362" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_6_4_bal_res_1403" = unnamed_addr constant [17 x i8] c"test_6_4_bal_res\00"
@"$f_1406" = unnamed_addr constant [2 x i8] c"f\00"
@"$test_6_4_f_res_1447" = unnamed_addr constant [15 x i8] c"test_6_4_f_res\00"
@"$g_1450" = unnamed_addr constant [2 x i8] c"g\00"
@"$test_6_4_g_res_1489" = unnamed_addr constant [15 x i8] c"test_6_4_g_res\00"
@"$test_6_4_failed_cast_1516" = unnamed_addr constant [21 x i8] c"test_6_4_failed_cast\00"
@"$f_1559" = unnamed_addr constant [2 x i8] c"f\00"
@"$g_1600" = unnamed_addr constant [2 x i8] c"g\00"
@"$test_7_g_res_1639" = unnamed_addr constant [13 x i8] c"test_7_g_res\00"
@"$h_1642" = unnamed_addr constant [2 x i8] c"h\00"
@"$test_7_h_res_1683" = unnamed_addr constant [13 x i8] c"test_7_h_res\00"
@_tydescr_table = constant [32 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int256_61", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_60", %_TyDescrTy_Typ* @"$TyDescr_Event_46", %_TyDescrTy_Typ* @"$TyDescr_Int64_28", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_64", %_TyDescrTy_Typ* @"$TyDescr_Addr_76", %_TyDescrTy_Typ* @"$TyDescr_Addr_73", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_54", %_TyDescrTy_Typ* @"$TyDescr_Uint256_38", %_TyDescrTy_Typ* @"$TyDescr_Uint32_26", %_TyDescrTy_Typ* @"$TyDescr_Addr_75", %_TyDescrTy_Typ* @"$TyDescr_Addr_72", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", %_TyDescrTy_Typ* @"$TyDescr_Uint64_30", %_TyDescrTy_Typ* @"$TyDescr_Bnum_42", %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", %_TyDescrTy_Typ* @"$TyDescr_Addr_71", %_TyDescrTy_Typ* @"$TyDescr_Exception_48", %_TyDescrTy_Typ* @"$TyDescr_String_40", %_TyDescrTy_Typ* @"$TyDescr_Addr_74", %_TyDescrTy_Typ* @"$TyDescr_Int256_36", %_TyDescrTy_Typ* @"$TyDescr_Int128_32", %_TyDescrTy_Typ* @"$TyDescr_Addr_70", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_end_65", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", %_TyDescrTy_Typ* @"$TyDescr_Bystr_52", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_50", %_TyDescrTy_Typ* @"$TyDescr_Message_44", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_field_f_:_ByStr20_end_59", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_58", %_TyDescrTy_Typ* @"$TyDescr_Int32_24"]
@_tydescr_table_length = constant i32 32
@"$pname__scilla_version_1705" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_1706" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_1707" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_1703"] [%"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_1705", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_26" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_1706", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_54" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_1707", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_42" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_1708" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1709" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1710" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1711" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest1_1712" = unnamed_addr constant [4 x %"$ParamDescr_1703"] [%"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1708", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1709", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1710", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1711", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_75" }]
@"$tname_CastTest1_1713" = unnamed_addr constant [9 x i8] c"CastTest1"
@"$tpname__amount_1714" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1715" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1716" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1717" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest2_1718" = unnamed_addr constant [4 x %"$ParamDescr_1703"] [%"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1714", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1715", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1716", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1717", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_75" }]
@"$tname_CastTest2_1719" = unnamed_addr constant [9 x i8] c"CastTest2"
@"$tpname__amount_1720" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1721" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1722" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1723" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest3_1724" = unnamed_addr constant [4 x %"$ParamDescr_1703"] [%"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1720", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1721", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1722", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1723", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_75" }]
@"$tname_CastTest3_1725" = unnamed_addr constant [9 x i8] c"CastTest3"
@"$tpname__amount_1726" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1727" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1728" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1729" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest4_1730" = unnamed_addr constant [4 x %"$ParamDescr_1703"] [%"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1726", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1727", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1728", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1729", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_54" }]
@"$tname_CastTest4_1731" = unnamed_addr constant [9 x i8] c"CastTest4"
@"$tpname__amount_1732" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1733" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1734" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1735" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest5_1_1736" = unnamed_addr constant [4 x %"$ParamDescr_1703"] [%"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1732", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1733", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1734", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1735", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_54" }]
@"$tname_CastTest5_1_1737" = unnamed_addr constant [11 x i8] c"CastTest5_1"
@"$tpname__amount_1738" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1739" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1740" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1741" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest5_2_1742" = unnamed_addr constant [4 x %"$ParamDescr_1703"] [%"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1738", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1739", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1740", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1741", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }]
@"$tname_CastTest5_2_1743" = unnamed_addr constant [11 x i8] c"CastTest5_2"
@"$tpname__amount_1744" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1745" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1746" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1747" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest6_1_1748" = unnamed_addr constant [4 x %"$ParamDescr_1703"] [%"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1744", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1745", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1746", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1747", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_54" }]
@"$tname_CastTest6_1_1749" = unnamed_addr constant [11 x i8] c"CastTest6_1"
@"$tpname__amount_1750" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1751" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1752" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1753" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest6_2_1754" = unnamed_addr constant [4 x %"$ParamDescr_1703"] [%"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1750", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1751", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1752", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1753", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }]
@"$tname_CastTest6_2_1755" = unnamed_addr constant [11 x i8] c"CastTest6_2"
@"$tpname__amount_1756" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1757" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1758" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1759" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest6_3_1760" = unnamed_addr constant [4 x %"$ParamDescr_1703"] [%"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1756", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1757", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1758", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1759", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }]
@"$tname_CastTest6_3_1761" = unnamed_addr constant [11 x i8] c"CastTest6_3"
@"$tpname__amount_1762" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1763" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1764" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1765" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest6_4_1766" = unnamed_addr constant [4 x %"$ParamDescr_1703"] [%"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1762", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1763", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1764", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1765", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_72" }]
@"$tname_CastTest6_4_1767" = unnamed_addr constant [11 x i8] c"CastTest6_4"
@"$tpname__amount_1768" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1769" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1770" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1771" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest7_1772" = unnamed_addr constant [4 x %"$ParamDescr_1703"] [%"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1768", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1769", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1770", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1703" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1771", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_54" }]
@"$tname_CastTest7_1773" = unnamed_addr constant [9 x i8] c"CastTest7"
@_transition_parameters = constant [11 x %"$TransDescr_1704"] [%"$TransDescr_1704" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_CastTest1_1713", i32 0, i32 0), i32 9 }, i32 4, %"$ParamDescr_1703"* getelementptr inbounds ([4 x %"$ParamDescr_1703"], [4 x %"$ParamDescr_1703"]* @"$tparams_CastTest1_1712", i32 0, i32 0) }, %"$TransDescr_1704" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_CastTest2_1719", i32 0, i32 0), i32 9 }, i32 4, %"$ParamDescr_1703"* getelementptr inbounds ([4 x %"$ParamDescr_1703"], [4 x %"$ParamDescr_1703"]* @"$tparams_CastTest2_1718", i32 0, i32 0) }, %"$TransDescr_1704" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_CastTest3_1725", i32 0, i32 0), i32 9 }, i32 4, %"$ParamDescr_1703"* getelementptr inbounds ([4 x %"$ParamDescr_1703"], [4 x %"$ParamDescr_1703"]* @"$tparams_CastTest3_1724", i32 0, i32 0) }, %"$TransDescr_1704" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_CastTest4_1731", i32 0, i32 0), i32 9 }, i32 4, %"$ParamDescr_1703"* getelementptr inbounds ([4 x %"$ParamDescr_1703"], [4 x %"$ParamDescr_1703"]* @"$tparams_CastTest4_1730", i32 0, i32 0) }, %"$TransDescr_1704" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest5_1_1737", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1703"* getelementptr inbounds ([4 x %"$ParamDescr_1703"], [4 x %"$ParamDescr_1703"]* @"$tparams_CastTest5_1_1736", i32 0, i32 0) }, %"$TransDescr_1704" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest5_2_1743", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1703"* getelementptr inbounds ([4 x %"$ParamDescr_1703"], [4 x %"$ParamDescr_1703"]* @"$tparams_CastTest5_2_1742", i32 0, i32 0) }, %"$TransDescr_1704" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest6_1_1749", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1703"* getelementptr inbounds ([4 x %"$ParamDescr_1703"], [4 x %"$ParamDescr_1703"]* @"$tparams_CastTest6_1_1748", i32 0, i32 0) }, %"$TransDescr_1704" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest6_2_1755", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1703"* getelementptr inbounds ([4 x %"$ParamDescr_1703"], [4 x %"$ParamDescr_1703"]* @"$tparams_CastTest6_2_1754", i32 0, i32 0) }, %"$TransDescr_1704" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest6_3_1761", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1703"* getelementptr inbounds ([4 x %"$ParamDescr_1703"], [4 x %"$ParamDescr_1703"]* @"$tparams_CastTest6_3_1760", i32 0, i32 0) }, %"$TransDescr_1704" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest6_4_1767", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1703"* getelementptr inbounds ([4 x %"$ParamDescr_1703"], [4 x %"$ParamDescr_1703"]* @"$tparams_CastTest6_4_1766", i32 0, i32 0) }, %"$TransDescr_1704" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_CastTest7_1773", i32 0, i32 0), i32 9 }, i32 4, %"$ParamDescr_1703"* getelementptr inbounds ([4 x %"$ParamDescr_1703"], [4 x %"$ParamDescr_1703"]* @"$tparams_CastTest7_1772", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 11

define void @_init_libs() !dbg !3 {
entry:
  %"$gasrem_185" = load i64, i64* @_gasrem, align 8
  %"$gascmp_186" = icmp ugt i64 5, %"$gasrem_185"
  br i1 %"$gascmp_186", label %"$out_of_gas_187", label %"$have_gas_188"

"$out_of_gas_187":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_188"

"$have_gas_188":                                  ; preds = %"$out_of_gas_187", %entry
  %"$consume_189" = sub i64 %"$gasrem_185", 5
  store i64 %"$consume_189", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4, !dbg !9
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() !dbg !10 {
entry:
  %"$gasrem_190" = load i64, i64* @_gasrem, align 8
  %"$gascmp_191" = icmp ugt i64 1, %"$gasrem_190"
  br i1 %"$gascmp_191", label %"$out_of_gas_192", label %"$have_gas_193"

"$out_of_gas_192":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_193"

"$have_gas_193":                                  ; preds = %"$out_of_gas_192", %entry
  %"$consume_194" = sub i64 %"$gasrem_190", 1
  store i64 %"$consume_194", i64* @_gasrem, align 8
  %"$test_1_res_1" = alloca %TName_Option_ByStr20_with_end*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_ByStr20_with_end** %"$test_1_res_1", metadata !11, metadata !DIExpression()), !dbg !14
  %"$gasrem_195" = load i64, i64* @_gasrem, align 8
  %"$gascmp_196" = icmp ugt i64 1, %"$gasrem_195"
  br i1 %"$gascmp_196", label %"$out_of_gas_197", label %"$have_gas_198"

"$out_of_gas_197":                                ; preds = %"$have_gas_193"
  call void @_out_of_gas()
  br label %"$have_gas_198"

"$have_gas_198":                                  ; preds = %"$out_of_gas_197", %"$have_gas_193"
  %"$consume_199" = sub i64 %"$gasrem_195", 1
  store i64 %"$consume_199", i64* @_gasrem, align 8
  %"$adtval_200_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_200_salloc" = call i8* @_salloc(i8* %"$adtval_200_load", i64 1)
  %"$adtval_200" = bitcast i8* %"$adtval_200_salloc" to %CName_None_ByStr20_with_end*
  %"$adtgep_201" = getelementptr inbounds %CName_None_ByStr20_with_end, %CName_None_ByStr20_with_end* %"$adtval_200", i32 0, i32 0
  store i8 1, i8* %"$adtgep_201", align 1
  %"$adtptr_202" = bitcast %CName_None_ByStr20_with_end* %"$adtval_200" to %TName_Option_ByStr20_with_end*
  store %TName_Option_ByStr20_with_end* %"$adtptr_202", %TName_Option_ByStr20_with_end** %"$test_1_res_1", align 8, !dbg !15
  %"$execptr_load_203" = load i8*, i8** @_execptr, align 8
  %"$$test_1_res_1_205" = load %TName_Option_ByStr20_with_end*, %TName_Option_ByStr20_with_end** %"$test_1_res_1", align 8
  %"$update_value_206" = bitcast %TName_Option_ByStr20_with_end* %"$$test_1_res_1_205" to i8*
  call void @_update_field(i8* %"$execptr_load_203", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_1_res_204", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_end_65", i32 0, i8* null, i8* %"$update_value_206"), !dbg !15
  %"$test_2_res_2" = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_ByStr20_with_contract_end** %"$test_2_res_2", metadata !16, metadata !DIExpression()), !dbg !19
  %"$gasrem_207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_208" = icmp ugt i64 1, %"$gasrem_207"
  br i1 %"$gascmp_208", label %"$out_of_gas_209", label %"$have_gas_210"

"$out_of_gas_209":                                ; preds = %"$have_gas_198"
  call void @_out_of_gas()
  br label %"$have_gas_210"

"$have_gas_210":                                  ; preds = %"$out_of_gas_209", %"$have_gas_198"
  %"$consume_211" = sub i64 %"$gasrem_207", 1
  store i64 %"$consume_211", i64* @_gasrem, align 8
  %"$adtval_212_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_212_salloc" = call i8* @_salloc(i8* %"$adtval_212_load", i64 1)
  %"$adtval_212" = bitcast i8* %"$adtval_212_salloc" to %CName_None_ByStr20_with_contract_end*
  %"$adtgep_213" = getelementptr inbounds %CName_None_ByStr20_with_contract_end, %CName_None_ByStr20_with_contract_end* %"$adtval_212", i32 0, i32 0
  store i8 1, i8* %"$adtgep_213", align 1
  %"$adtptr_214" = bitcast %CName_None_ByStr20_with_contract_end* %"$adtval_212" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$adtptr_214", %TName_Option_ByStr20_with_contract_end** %"$test_2_res_2", align 8, !dbg !20
  %"$execptr_load_215" = load i8*, i8** @_execptr, align 8
  %"$$test_2_res_2_217" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %"$test_2_res_2", align 8
  %"$update_value_218" = bitcast %TName_Option_ByStr20_with_contract_end* %"$$test_2_res_2_217" to i8*
  call void @_update_field(i8* %"$execptr_load_215", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_2_res_216", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_64", i32 0, i8* null, i8* %"$update_value_218"), !dbg !20
  %"$test_3_res_3" = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_ByStr20_with_contract_end** %"$test_3_res_3", metadata !21, metadata !DIExpression()), !dbg !22
  %"$gasrem_219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_220" = icmp ugt i64 1, %"$gasrem_219"
  br i1 %"$gascmp_220", label %"$out_of_gas_221", label %"$have_gas_222"

"$out_of_gas_221":                                ; preds = %"$have_gas_210"
  call void @_out_of_gas()
  br label %"$have_gas_222"

"$have_gas_222":                                  ; preds = %"$out_of_gas_221", %"$have_gas_210"
  %"$consume_223" = sub i64 %"$gasrem_219", 1
  store i64 %"$consume_223", i64* @_gasrem, align 8
  %"$adtval_224_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_224_salloc" = call i8* @_salloc(i8* %"$adtval_224_load", i64 1)
  %"$adtval_224" = bitcast i8* %"$adtval_224_salloc" to %CName_None_ByStr20_with_contract_end*
  %"$adtgep_225" = getelementptr inbounds %CName_None_ByStr20_with_contract_end, %CName_None_ByStr20_with_contract_end* %"$adtval_224", i32 0, i32 0
  store i8 1, i8* %"$adtgep_225", align 1
  %"$adtptr_226" = bitcast %CName_None_ByStr20_with_contract_end* %"$adtval_224" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$adtptr_226", %TName_Option_ByStr20_with_contract_end** %"$test_3_res_3", align 8, !dbg !23
  %"$execptr_load_227" = load i8*, i8** @_execptr, align 8
  %"$$test_3_res_3_229" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %"$test_3_res_3", align 8
  %"$update_value_230" = bitcast %TName_Option_ByStr20_with_contract_end* %"$$test_3_res_3_229" to i8*
  call void @_update_field(i8* %"$execptr_load_227", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_3_res_228", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_64", i32 0, i8* null, i8* %"$update_value_230"), !dbg !23
  %"$test_4_res_4" = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %"$test_4_res_4", metadata !24, metadata !DIExpression()), !dbg !27
  %"$gasrem_231" = load i64, i64* @_gasrem, align 8
  %"$gascmp_232" = icmp ugt i64 1, %"$gasrem_231"
  br i1 %"$gascmp_232", label %"$out_of_gas_233", label %"$have_gas_234"

"$out_of_gas_233":                                ; preds = %"$have_gas_222"
  call void @_out_of_gas()
  br label %"$have_gas_234"

"$have_gas_234":                                  ; preds = %"$out_of_gas_233", %"$have_gas_222"
  %"$consume_235" = sub i64 %"$gasrem_231", 1
  store i64 %"$consume_235", i64* @_gasrem, align 8
  %"$adtval_236_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_236_salloc" = call i8* @_salloc(i8* %"$adtval_236_load", i64 1)
  %"$adtval_236" = bitcast i8* %"$adtval_236_salloc" to %CName_None_Uint128*
  %"$adtgep_237" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_236", i32 0, i32 0
  store i8 1, i8* %"$adtgep_237", align 1
  %"$adtptr_238" = bitcast %CName_None_Uint128* %"$adtval_236" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_238", %TName_Option_Uint128** %"$test_4_res_4", align 8, !dbg !28
  %"$execptr_load_239" = load i8*, i8** @_execptr, align 8
  %"$$test_4_res_4_241" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_4_res_4", align 8
  %"$update_value_242" = bitcast %TName_Option_Uint128* %"$$test_4_res_4_241" to i8*
  call void @_update_field(i8* %"$execptr_load_239", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_4_res_240", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_242"), !dbg !28
  %"$test_5_1_res_5" = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %"$test_5_1_res_5", metadata !29, metadata !DIExpression()), !dbg !30
  %"$gasrem_243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_244" = icmp ugt i64 1, %"$gasrem_243"
  br i1 %"$gascmp_244", label %"$out_of_gas_245", label %"$have_gas_246"

"$out_of_gas_245":                                ; preds = %"$have_gas_234"
  call void @_out_of_gas()
  br label %"$have_gas_246"

"$have_gas_246":                                  ; preds = %"$out_of_gas_245", %"$have_gas_234"
  %"$consume_247" = sub i64 %"$gasrem_243", 1
  store i64 %"$consume_247", i64* @_gasrem, align 8
  %"$adtval_248_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_248_salloc" = call i8* @_salloc(i8* %"$adtval_248_load", i64 1)
  %"$adtval_248" = bitcast i8* %"$adtval_248_salloc" to %CName_None_Uint128*
  %"$adtgep_249" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_248", i32 0, i32 0
  store i8 1, i8* %"$adtgep_249", align 1
  %"$adtptr_250" = bitcast %CName_None_Uint128* %"$adtval_248" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_250", %TName_Option_Uint128** %"$test_5_1_res_5", align 8, !dbg !31
  %"$execptr_load_251" = load i8*, i8** @_execptr, align 8
  %"$$test_5_1_res_5_253" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_5_1_res_5", align 8
  %"$update_value_254" = bitcast %TName_Option_Uint128* %"$$test_5_1_res_5_253" to i8*
  call void @_update_field(i8* %"$execptr_load_251", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_5_1_res_252", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_254"), !dbg !31
  %"$test_5_2_res_6" = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %"$test_5_2_res_6", metadata !32, metadata !DIExpression()), !dbg !33
  %"$gasrem_255" = load i64, i64* @_gasrem, align 8
  %"$gascmp_256" = icmp ugt i64 1, %"$gasrem_255"
  br i1 %"$gascmp_256", label %"$out_of_gas_257", label %"$have_gas_258"

"$out_of_gas_257":                                ; preds = %"$have_gas_246"
  call void @_out_of_gas()
  br label %"$have_gas_258"

"$have_gas_258":                                  ; preds = %"$out_of_gas_257", %"$have_gas_246"
  %"$consume_259" = sub i64 %"$gasrem_255", 1
  store i64 %"$consume_259", i64* @_gasrem, align 8
  %"$adtval_260_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_260_salloc" = call i8* @_salloc(i8* %"$adtval_260_load", i64 1)
  %"$adtval_260" = bitcast i8* %"$adtval_260_salloc" to %CName_None_Uint128*
  %"$adtgep_261" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_260", i32 0, i32 0
  store i8 1, i8* %"$adtgep_261", align 1
  %"$adtptr_262" = bitcast %CName_None_Uint128* %"$adtval_260" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_262", %TName_Option_Uint128** %"$test_5_2_res_6", align 8, !dbg !34
  %"$execptr_load_263" = load i8*, i8** @_execptr, align 8
  %"$$test_5_2_res_6_265" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_5_2_res_6", align 8
  %"$update_value_266" = bitcast %TName_Option_Uint128* %"$$test_5_2_res_6_265" to i8*
  call void @_update_field(i8* %"$execptr_load_263", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_5_2_res_264", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_266"), !dbg !34
  %"$test_6_1_bal_res_7" = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %"$test_6_1_bal_res_7", metadata !35, metadata !DIExpression()), !dbg !36
  %"$gasrem_267" = load i64, i64* @_gasrem, align 8
  %"$gascmp_268" = icmp ugt i64 1, %"$gasrem_267"
  br i1 %"$gascmp_268", label %"$out_of_gas_269", label %"$have_gas_270"

"$out_of_gas_269":                                ; preds = %"$have_gas_258"
  call void @_out_of_gas()
  br label %"$have_gas_270"

"$have_gas_270":                                  ; preds = %"$out_of_gas_269", %"$have_gas_258"
  %"$consume_271" = sub i64 %"$gasrem_267", 1
  store i64 %"$consume_271", i64* @_gasrem, align 8
  %"$adtval_272_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_272_salloc" = call i8* @_salloc(i8* %"$adtval_272_load", i64 1)
  %"$adtval_272" = bitcast i8* %"$adtval_272_salloc" to %CName_None_Uint128*
  %"$adtgep_273" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_272", i32 0, i32 0
  store i8 1, i8* %"$adtgep_273", align 1
  %"$adtptr_274" = bitcast %CName_None_Uint128* %"$adtval_272" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_274", %TName_Option_Uint128** %"$test_6_1_bal_res_7", align 8, !dbg !37
  %"$execptr_load_275" = load i8*, i8** @_execptr, align 8
  %"$$test_6_1_bal_res_7_277" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_1_bal_res_7", align 8
  %"$update_value_278" = bitcast %TName_Option_Uint128* %"$$test_6_1_bal_res_7_277" to i8*
  call void @_update_field(i8* %"$execptr_load_275", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_1_bal_res_276", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_278"), !dbg !37
  %"$test_6_1_f_res_8" = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %"$test_6_1_f_res_8", metadata !38, metadata !DIExpression()), !dbg !39
  %"$gasrem_279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_280" = icmp ugt i64 1, %"$gasrem_279"
  br i1 %"$gascmp_280", label %"$out_of_gas_281", label %"$have_gas_282"

"$out_of_gas_281":                                ; preds = %"$have_gas_270"
  call void @_out_of_gas()
  br label %"$have_gas_282"

"$have_gas_282":                                  ; preds = %"$out_of_gas_281", %"$have_gas_270"
  %"$consume_283" = sub i64 %"$gasrem_279", 1
  store i64 %"$consume_283", i64* @_gasrem, align 8
  %"$adtval_284_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_284_salloc" = call i8* @_salloc(i8* %"$adtval_284_load", i64 1)
  %"$adtval_284" = bitcast i8* %"$adtval_284_salloc" to %CName_None_Uint128*
  %"$adtgep_285" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_284", i32 0, i32 0
  store i8 1, i8* %"$adtgep_285", align 1
  %"$adtptr_286" = bitcast %CName_None_Uint128* %"$adtval_284" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_286", %TName_Option_Uint128** %"$test_6_1_f_res_8", align 8, !dbg !40
  %"$execptr_load_287" = load i8*, i8** @_execptr, align 8
  %"$$test_6_1_f_res_8_289" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_1_f_res_8", align 8
  %"$update_value_290" = bitcast %TName_Option_Uint128* %"$$test_6_1_f_res_8_289" to i8*
  call void @_update_field(i8* %"$execptr_load_287", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_1_f_res_288", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_290"), !dbg !40
  %"$test_6_1_g_res_9" = alloca %TName_Option_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Bool** %"$test_6_1_g_res_9", metadata !41, metadata !DIExpression()), !dbg !44
  %"$gasrem_291" = load i64, i64* @_gasrem, align 8
  %"$gascmp_292" = icmp ugt i64 1, %"$gasrem_291"
  br i1 %"$gascmp_292", label %"$out_of_gas_293", label %"$have_gas_294"

"$out_of_gas_293":                                ; preds = %"$have_gas_282"
  call void @_out_of_gas()
  br label %"$have_gas_294"

"$have_gas_294":                                  ; preds = %"$out_of_gas_293", %"$have_gas_282"
  %"$consume_295" = sub i64 %"$gasrem_291", 1
  store i64 %"$consume_295", i64* @_gasrem, align 8
  %"$adtval_296_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_296_salloc" = call i8* @_salloc(i8* %"$adtval_296_load", i64 1)
  %"$adtval_296" = bitcast i8* %"$adtval_296_salloc" to %CName_None_Bool*
  %"$adtgep_297" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_296", i32 0, i32 0
  store i8 1, i8* %"$adtgep_297", align 1
  %"$adtptr_298" = bitcast %CName_None_Bool* %"$adtval_296" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_298", %TName_Option_Bool** %"$test_6_1_g_res_9", align 8, !dbg !45
  %"$execptr_load_299" = load i8*, i8** @_execptr, align 8
  %"$$test_6_1_g_res_9_301" = load %TName_Option_Bool*, %TName_Option_Bool** %"$test_6_1_g_res_9", align 8
  %"$update_value_302" = bitcast %TName_Option_Bool* %"$$test_6_1_g_res_9_301" to i8*
  call void @_update_field(i8* %"$execptr_load_299", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_1_g_res_300", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i32 0, i8* null, i8* %"$update_value_302"), !dbg !45
  %"$test_6_2_bal_res_10" = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %"$test_6_2_bal_res_10", metadata !46, metadata !DIExpression()), !dbg !47
  %"$gasrem_303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_304" = icmp ugt i64 1, %"$gasrem_303"
  br i1 %"$gascmp_304", label %"$out_of_gas_305", label %"$have_gas_306"

"$out_of_gas_305":                                ; preds = %"$have_gas_294"
  call void @_out_of_gas()
  br label %"$have_gas_306"

"$have_gas_306":                                  ; preds = %"$out_of_gas_305", %"$have_gas_294"
  %"$consume_307" = sub i64 %"$gasrem_303", 1
  store i64 %"$consume_307", i64* @_gasrem, align 8
  %"$adtval_308_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_308_salloc" = call i8* @_salloc(i8* %"$adtval_308_load", i64 1)
  %"$adtval_308" = bitcast i8* %"$adtval_308_salloc" to %CName_None_Uint128*
  %"$adtgep_309" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_308", i32 0, i32 0
  store i8 1, i8* %"$adtgep_309", align 1
  %"$adtptr_310" = bitcast %CName_None_Uint128* %"$adtval_308" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_310", %TName_Option_Uint128** %"$test_6_2_bal_res_10", align 8, !dbg !48
  %"$execptr_load_311" = load i8*, i8** @_execptr, align 8
  %"$$test_6_2_bal_res_10_313" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_2_bal_res_10", align 8
  %"$update_value_314" = bitcast %TName_Option_Uint128* %"$$test_6_2_bal_res_10_313" to i8*
  call void @_update_field(i8* %"$execptr_load_311", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_2_bal_res_312", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_314"), !dbg !48
  %"$test_6_2_f_res_11" = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %"$test_6_2_f_res_11", metadata !49, metadata !DIExpression()), !dbg !50
  %"$gasrem_315" = load i64, i64* @_gasrem, align 8
  %"$gascmp_316" = icmp ugt i64 1, %"$gasrem_315"
  br i1 %"$gascmp_316", label %"$out_of_gas_317", label %"$have_gas_318"

"$out_of_gas_317":                                ; preds = %"$have_gas_306"
  call void @_out_of_gas()
  br label %"$have_gas_318"

"$have_gas_318":                                  ; preds = %"$out_of_gas_317", %"$have_gas_306"
  %"$consume_319" = sub i64 %"$gasrem_315", 1
  store i64 %"$consume_319", i64* @_gasrem, align 8
  %"$adtval_320_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_320_salloc" = call i8* @_salloc(i8* %"$adtval_320_load", i64 1)
  %"$adtval_320" = bitcast i8* %"$adtval_320_salloc" to %CName_None_Uint128*
  %"$adtgep_321" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_320", i32 0, i32 0
  store i8 1, i8* %"$adtgep_321", align 1
  %"$adtptr_322" = bitcast %CName_None_Uint128* %"$adtval_320" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_322", %TName_Option_Uint128** %"$test_6_2_f_res_11", align 8, !dbg !51
  %"$execptr_load_323" = load i8*, i8** @_execptr, align 8
  %"$$test_6_2_f_res_11_325" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_2_f_res_11", align 8
  %"$update_value_326" = bitcast %TName_Option_Uint128* %"$$test_6_2_f_res_11_325" to i8*
  call void @_update_field(i8* %"$execptr_load_323", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_2_f_res_324", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_326"), !dbg !51
  %"$test_6_2_g_res_12" = alloca %TName_Option_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Bool** %"$test_6_2_g_res_12", metadata !52, metadata !DIExpression()), !dbg !53
  %"$gasrem_327" = load i64, i64* @_gasrem, align 8
  %"$gascmp_328" = icmp ugt i64 1, %"$gasrem_327"
  br i1 %"$gascmp_328", label %"$out_of_gas_329", label %"$have_gas_330"

"$out_of_gas_329":                                ; preds = %"$have_gas_318"
  call void @_out_of_gas()
  br label %"$have_gas_330"

"$have_gas_330":                                  ; preds = %"$out_of_gas_329", %"$have_gas_318"
  %"$consume_331" = sub i64 %"$gasrem_327", 1
  store i64 %"$consume_331", i64* @_gasrem, align 8
  %"$adtval_332_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_332_salloc" = call i8* @_salloc(i8* %"$adtval_332_load", i64 1)
  %"$adtval_332" = bitcast i8* %"$adtval_332_salloc" to %CName_None_Bool*
  %"$adtgep_333" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_332", i32 0, i32 0
  store i8 1, i8* %"$adtgep_333", align 1
  %"$adtptr_334" = bitcast %CName_None_Bool* %"$adtval_332" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_334", %TName_Option_Bool** %"$test_6_2_g_res_12", align 8, !dbg !54
  %"$execptr_load_335" = load i8*, i8** @_execptr, align 8
  %"$$test_6_2_g_res_12_337" = load %TName_Option_Bool*, %TName_Option_Bool** %"$test_6_2_g_res_12", align 8
  %"$update_value_338" = bitcast %TName_Option_Bool* %"$$test_6_2_g_res_12_337" to i8*
  call void @_update_field(i8* %"$execptr_load_335", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_2_g_res_336", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i32 0, i8* null, i8* %"$update_value_338"), !dbg !54
  %"$test_6_3_bal_res_13" = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %"$test_6_3_bal_res_13", metadata !55, metadata !DIExpression()), !dbg !56
  %"$gasrem_339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_340" = icmp ugt i64 1, %"$gasrem_339"
  br i1 %"$gascmp_340", label %"$out_of_gas_341", label %"$have_gas_342"

"$out_of_gas_341":                                ; preds = %"$have_gas_330"
  call void @_out_of_gas()
  br label %"$have_gas_342"

"$have_gas_342":                                  ; preds = %"$out_of_gas_341", %"$have_gas_330"
  %"$consume_343" = sub i64 %"$gasrem_339", 1
  store i64 %"$consume_343", i64* @_gasrem, align 8
  %"$adtval_344_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_344_salloc" = call i8* @_salloc(i8* %"$adtval_344_load", i64 1)
  %"$adtval_344" = bitcast i8* %"$adtval_344_salloc" to %CName_None_Uint128*
  %"$adtgep_345" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_344", i32 0, i32 0
  store i8 1, i8* %"$adtgep_345", align 1
  %"$adtptr_346" = bitcast %CName_None_Uint128* %"$adtval_344" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_346", %TName_Option_Uint128** %"$test_6_3_bal_res_13", align 8, !dbg !57
  %"$execptr_load_347" = load i8*, i8** @_execptr, align 8
  %"$$test_6_3_bal_res_13_349" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_3_bal_res_13", align 8
  %"$update_value_350" = bitcast %TName_Option_Uint128* %"$$test_6_3_bal_res_13_349" to i8*
  call void @_update_field(i8* %"$execptr_load_347", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_3_bal_res_348", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_350"), !dbg !57
  %"$test_6_3_f_res_14" = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %"$test_6_3_f_res_14", metadata !58, metadata !DIExpression()), !dbg !59
  %"$gasrem_351" = load i64, i64* @_gasrem, align 8
  %"$gascmp_352" = icmp ugt i64 1, %"$gasrem_351"
  br i1 %"$gascmp_352", label %"$out_of_gas_353", label %"$have_gas_354"

"$out_of_gas_353":                                ; preds = %"$have_gas_342"
  call void @_out_of_gas()
  br label %"$have_gas_354"

"$have_gas_354":                                  ; preds = %"$out_of_gas_353", %"$have_gas_342"
  %"$consume_355" = sub i64 %"$gasrem_351", 1
  store i64 %"$consume_355", i64* @_gasrem, align 8
  %"$adtval_356_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_356_salloc" = call i8* @_salloc(i8* %"$adtval_356_load", i64 1)
  %"$adtval_356" = bitcast i8* %"$adtval_356_salloc" to %CName_None_Uint128*
  %"$adtgep_357" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_356", i32 0, i32 0
  store i8 1, i8* %"$adtgep_357", align 1
  %"$adtptr_358" = bitcast %CName_None_Uint128* %"$adtval_356" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_358", %TName_Option_Uint128** %"$test_6_3_f_res_14", align 8, !dbg !60
  %"$execptr_load_359" = load i8*, i8** @_execptr, align 8
  %"$$test_6_3_f_res_14_361" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_3_f_res_14", align 8
  %"$update_value_362" = bitcast %TName_Option_Uint128* %"$$test_6_3_f_res_14_361" to i8*
  call void @_update_field(i8* %"$execptr_load_359", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_3_f_res_360", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_362"), !dbg !60
  %"$test_6_3_g_res_15" = alloca %TName_Option_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Bool** %"$test_6_3_g_res_15", metadata !61, metadata !DIExpression()), !dbg !62
  %"$gasrem_363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_364" = icmp ugt i64 1, %"$gasrem_363"
  br i1 %"$gascmp_364", label %"$out_of_gas_365", label %"$have_gas_366"

"$out_of_gas_365":                                ; preds = %"$have_gas_354"
  call void @_out_of_gas()
  br label %"$have_gas_366"

"$have_gas_366":                                  ; preds = %"$out_of_gas_365", %"$have_gas_354"
  %"$consume_367" = sub i64 %"$gasrem_363", 1
  store i64 %"$consume_367", i64* @_gasrem, align 8
  %"$adtval_368_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_368_salloc" = call i8* @_salloc(i8* %"$adtval_368_load", i64 1)
  %"$adtval_368" = bitcast i8* %"$adtval_368_salloc" to %CName_None_Bool*
  %"$adtgep_369" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_368", i32 0, i32 0
  store i8 1, i8* %"$adtgep_369", align 1
  %"$adtptr_370" = bitcast %CName_None_Bool* %"$adtval_368" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_370", %TName_Option_Bool** %"$test_6_3_g_res_15", align 8, !dbg !63
  %"$execptr_load_371" = load i8*, i8** @_execptr, align 8
  %"$$test_6_3_g_res_15_373" = load %TName_Option_Bool*, %TName_Option_Bool** %"$test_6_3_g_res_15", align 8
  %"$update_value_374" = bitcast %TName_Option_Bool* %"$$test_6_3_g_res_15_373" to i8*
  call void @_update_field(i8* %"$execptr_load_371", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_3_g_res_372", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i32 0, i8* null, i8* %"$update_value_374"), !dbg !63
  %"$test_6_4_bal_res_16" = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %"$test_6_4_bal_res_16", metadata !64, metadata !DIExpression()), !dbg !65
  %"$gasrem_375" = load i64, i64* @_gasrem, align 8
  %"$gascmp_376" = icmp ugt i64 1, %"$gasrem_375"
  br i1 %"$gascmp_376", label %"$out_of_gas_377", label %"$have_gas_378"

"$out_of_gas_377":                                ; preds = %"$have_gas_366"
  call void @_out_of_gas()
  br label %"$have_gas_378"

"$have_gas_378":                                  ; preds = %"$out_of_gas_377", %"$have_gas_366"
  %"$consume_379" = sub i64 %"$gasrem_375", 1
  store i64 %"$consume_379", i64* @_gasrem, align 8
  %"$adtval_380_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_380_salloc" = call i8* @_salloc(i8* %"$adtval_380_load", i64 1)
  %"$adtval_380" = bitcast i8* %"$adtval_380_salloc" to %CName_None_Uint128*
  %"$adtgep_381" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_380", i32 0, i32 0
  store i8 1, i8* %"$adtgep_381", align 1
  %"$adtptr_382" = bitcast %CName_None_Uint128* %"$adtval_380" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_382", %TName_Option_Uint128** %"$test_6_4_bal_res_16", align 8, !dbg !66
  %"$execptr_load_383" = load i8*, i8** @_execptr, align 8
  %"$$test_6_4_bal_res_16_385" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_4_bal_res_16", align 8
  %"$update_value_386" = bitcast %TName_Option_Uint128* %"$$test_6_4_bal_res_16_385" to i8*
  call void @_update_field(i8* %"$execptr_load_383", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_4_bal_res_384", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_386"), !dbg !66
  %"$test_6_4_f_res_17" = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %"$test_6_4_f_res_17", metadata !67, metadata !DIExpression()), !dbg !68
  %"$gasrem_387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_388" = icmp ugt i64 1, %"$gasrem_387"
  br i1 %"$gascmp_388", label %"$out_of_gas_389", label %"$have_gas_390"

"$out_of_gas_389":                                ; preds = %"$have_gas_378"
  call void @_out_of_gas()
  br label %"$have_gas_390"

"$have_gas_390":                                  ; preds = %"$out_of_gas_389", %"$have_gas_378"
  %"$consume_391" = sub i64 %"$gasrem_387", 1
  store i64 %"$consume_391", i64* @_gasrem, align 8
  %"$adtval_392_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_392_salloc" = call i8* @_salloc(i8* %"$adtval_392_load", i64 1)
  %"$adtval_392" = bitcast i8* %"$adtval_392_salloc" to %CName_None_Uint128*
  %"$adtgep_393" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_392", i32 0, i32 0
  store i8 1, i8* %"$adtgep_393", align 1
  %"$adtptr_394" = bitcast %CName_None_Uint128* %"$adtval_392" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_394", %TName_Option_Uint128** %"$test_6_4_f_res_17", align 8, !dbg !69
  %"$execptr_load_395" = load i8*, i8** @_execptr, align 8
  %"$$test_6_4_f_res_17_397" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_4_f_res_17", align 8
  %"$update_value_398" = bitcast %TName_Option_Uint128* %"$$test_6_4_f_res_17_397" to i8*
  call void @_update_field(i8* %"$execptr_load_395", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_4_f_res_396", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_398"), !dbg !69
  %"$test_6_4_g_res_18" = alloca %TName_Option_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Bool** %"$test_6_4_g_res_18", metadata !70, metadata !DIExpression()), !dbg !71
  %"$gasrem_399" = load i64, i64* @_gasrem, align 8
  %"$gascmp_400" = icmp ugt i64 1, %"$gasrem_399"
  br i1 %"$gascmp_400", label %"$out_of_gas_401", label %"$have_gas_402"

"$out_of_gas_401":                                ; preds = %"$have_gas_390"
  call void @_out_of_gas()
  br label %"$have_gas_402"

"$have_gas_402":                                  ; preds = %"$out_of_gas_401", %"$have_gas_390"
  %"$consume_403" = sub i64 %"$gasrem_399", 1
  store i64 %"$consume_403", i64* @_gasrem, align 8
  %"$adtval_404_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_404_salloc" = call i8* @_salloc(i8* %"$adtval_404_load", i64 1)
  %"$adtval_404" = bitcast i8* %"$adtval_404_salloc" to %CName_None_Bool*
  %"$adtgep_405" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_404", i32 0, i32 0
  store i8 1, i8* %"$adtgep_405", align 1
  %"$adtptr_406" = bitcast %CName_None_Bool* %"$adtval_404" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_406", %TName_Option_Bool** %"$test_6_4_g_res_18", align 8, !dbg !72
  %"$execptr_load_407" = load i8*, i8** @_execptr, align 8
  %"$$test_6_4_g_res_18_409" = load %TName_Option_Bool*, %TName_Option_Bool** %"$test_6_4_g_res_18", align 8
  %"$update_value_410" = bitcast %TName_Option_Bool* %"$$test_6_4_g_res_18_409" to i8*
  call void @_update_field(i8* %"$execptr_load_407", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_4_g_res_408", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i32 0, i8* null, i8* %"$update_value_410"), !dbg !72
  %"$test_6_4_failed_cast_19" = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %"$test_6_4_failed_cast_19", metadata !73, metadata !DIExpression()), !dbg !76
  %"$gasrem_411" = load i64, i64* @_gasrem, align 8
  %"$gascmp_412" = icmp ugt i64 1, %"$gasrem_411"
  br i1 %"$gascmp_412", label %"$out_of_gas_413", label %"$have_gas_414"

"$out_of_gas_413":                                ; preds = %"$have_gas_402"
  call void @_out_of_gas()
  br label %"$have_gas_414"

"$have_gas_414":                                  ; preds = %"$out_of_gas_413", %"$have_gas_402"
  %"$consume_415" = sub i64 %"$gasrem_411", 1
  store i64 %"$consume_415", i64* @_gasrem, align 8
  %"$adtval_416_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_416_salloc" = call i8* @_salloc(i8* %"$adtval_416_load", i64 1)
  %"$adtval_416" = bitcast i8* %"$adtval_416_salloc" to %CName_False*
  %"$adtgep_417" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_416", i32 0, i32 0
  store i8 1, i8* %"$adtgep_417", align 1
  %"$adtptr_418" = bitcast %CName_False* %"$adtval_416" to %TName_Bool*
  store %TName_Bool* %"$adtptr_418", %TName_Bool** %"$test_6_4_failed_cast_19", align 8, !dbg !77
  %"$execptr_load_419" = load i8*, i8** @_execptr, align 8
  %"$$test_6_4_failed_cast_19_421" = load %TName_Bool*, %TName_Bool** %"$test_6_4_failed_cast_19", align 8
  %"$update_value_422" = bitcast %TName_Bool* %"$$test_6_4_failed_cast_19_421" to i8*
  call void @_update_field(i8* %"$execptr_load_419", i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$test_6_4_failed_cast_420", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i32 0, i8* null, i8* %"$update_value_422"), !dbg !77
  %"$test_7_g_res_20" = alloca %TName_Option_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Bool** %"$test_7_g_res_20", metadata !78, metadata !DIExpression()), !dbg !79
  %"$gasrem_423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_424" = icmp ugt i64 1, %"$gasrem_423"
  br i1 %"$gascmp_424", label %"$out_of_gas_425", label %"$have_gas_426"

"$out_of_gas_425":                                ; preds = %"$have_gas_414"
  call void @_out_of_gas()
  br label %"$have_gas_426"

"$have_gas_426":                                  ; preds = %"$out_of_gas_425", %"$have_gas_414"
  %"$consume_427" = sub i64 %"$gasrem_423", 1
  store i64 %"$consume_427", i64* @_gasrem, align 8
  %"$adtval_428_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_428_salloc" = call i8* @_salloc(i8* %"$adtval_428_load", i64 1)
  %"$adtval_428" = bitcast i8* %"$adtval_428_salloc" to %CName_None_Bool*
  %"$adtgep_429" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_428", i32 0, i32 0
  store i8 1, i8* %"$adtgep_429", align 1
  %"$adtptr_430" = bitcast %CName_None_Bool* %"$adtval_428" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_430", %TName_Option_Bool** %"$test_7_g_res_20", align 8, !dbg !80
  %"$execptr_load_431" = load i8*, i8** @_execptr, align 8
  %"$$test_7_g_res_20_433" = load %TName_Option_Bool*, %TName_Option_Bool** %"$test_7_g_res_20", align 8
  %"$update_value_434" = bitcast %TName_Option_Bool* %"$$test_7_g_res_20_433" to i8*
  call void @_update_field(i8* %"$execptr_load_431", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_7_g_res_432", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i32 0, i8* null, i8* %"$update_value_434"), !dbg !80
  %"$test_7_h_res_21" = alloca %TName_Option_Int256*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int256** %"$test_7_h_res_21", metadata !81, metadata !DIExpression()), !dbg !84
  %"$gasrem_435" = load i64, i64* @_gasrem, align 8
  %"$gascmp_436" = icmp ugt i64 1, %"$gasrem_435"
  br i1 %"$gascmp_436", label %"$out_of_gas_437", label %"$have_gas_438"

"$out_of_gas_437":                                ; preds = %"$have_gas_426"
  call void @_out_of_gas()
  br label %"$have_gas_438"

"$have_gas_438":                                  ; preds = %"$out_of_gas_437", %"$have_gas_426"
  %"$consume_439" = sub i64 %"$gasrem_435", 1
  store i64 %"$consume_439", i64* @_gasrem, align 8
  %"$adtval_440_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_440_salloc" = call i8* @_salloc(i8* %"$adtval_440_load", i64 1)
  %"$adtval_440" = bitcast i8* %"$adtval_440_salloc" to %CName_None_Int256*
  %"$adtgep_441" = getelementptr inbounds %CName_None_Int256, %CName_None_Int256* %"$adtval_440", i32 0, i32 0
  store i8 1, i8* %"$adtgep_441", align 1
  %"$adtptr_442" = bitcast %CName_None_Int256* %"$adtval_440" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$adtptr_442", %TName_Option_Int256** %"$test_7_h_res_21", align 8, !dbg !85
  %"$execptr_load_443" = load i8*, i8** @_execptr, align 8
  %"$$test_7_h_res_21_445" = load %TName_Option_Int256*, %TName_Option_Int256** %"$test_7_h_res_21", align 8
  %"$update_value_446" = bitcast %TName_Option_Int256* %"$$test_7_h_res_21_445" to i8*
  call void @_update_field(i8* %"$execptr_load_443", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_7_h_res_444", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int256_61", i32 0, i8* null, i8* %"$update_value_446"), !dbg !85
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #0

declare i8* @_salloc(i8*, i64)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$CastTest1_447"(%Uint128 %_amount, [20 x i8]* %"$_origin_448", [20 x i8]* %"$_sender_449", [20 x i8]* %"$x_450") !dbg !86 {
entry:
  %"$x_475" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$x_450", [20 x i8]** %"$x_475", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$x_475", metadata !87, metadata !DIExpression()), !dbg !89
  %"$_sender_474" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_449", [20 x i8]** %"$_sender_474", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_474", metadata !90, metadata !DIExpression()), !dbg !92
  %"$_origin_473" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_448", [20 x i8]** %"$_origin_473", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_473", metadata !93, metadata !DIExpression()), !dbg !92
  %"$_amount_472" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_472", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_472", metadata !94, metadata !DIExpression()), !dbg !92
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_448", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_449", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_450", align 1
  %"$gasrem_451" = load i64, i64* @_gasrem, align 8
  %"$gascmp_452" = icmp ugt i64 2, %"$gasrem_451"
  br i1 %"$gascmp_452", label %"$out_of_gas_453", label %"$have_gas_454"

"$out_of_gas_453":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_454"

"$have_gas_454":                                  ; preds = %"$out_of_gas_453", %entry
  %"$consume_455" = sub i64 %"$gasrem_451", 2
  store i64 %"$consume_455", i64* @_gasrem, align 8
  %res = alloca %TName_Option_ByStr20_with_end*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_ByStr20_with_end** %res, metadata !96, metadata !DIExpression()), !dbg !97
  %"$execptr_load_456" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_457" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_457", align 1
  %"$_dynamic_typecast_call_458" = call i8* @_dynamic_typecast(i8* %"$execptr_load_456", [20 x i8]* %"$_dynamic_typecast_x_457", %_TyDescrTy_Typ* @"$TyDescr_Addr_76"), !dbg !97
  %"$_dynamic_typecast_459" = bitcast i8* %"$_dynamic_typecast_call_458" to %TName_Option_ByStr20_with_end*
  store %TName_Option_ByStr20_with_end* %"$_dynamic_typecast_459", %TName_Option_ByStr20_with_end** %res, align 8, !dbg !97
  %"$res_460" = load %TName_Option_ByStr20_with_end*, %TName_Option_ByStr20_with_end** %res, align 8
  %"$$res_460_461" = bitcast %TName_Option_ByStr20_with_end* %"$res_460" to i8*
  %"$_literal_cost_call_462" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_end_65", i8* %"$$res_460_461")
  %"$gasrem_463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_464" = icmp ugt i64 %"$_literal_cost_call_462", %"$gasrem_463"
  br i1 %"$gascmp_464", label %"$out_of_gas_465", label %"$have_gas_466"

"$out_of_gas_465":                                ; preds = %"$have_gas_454"
  call void @_out_of_gas()
  br label %"$have_gas_466"

"$have_gas_466":                                  ; preds = %"$out_of_gas_465", %"$have_gas_454"
  %"$consume_467" = sub i64 %"$gasrem_463", %"$_literal_cost_call_462"
  store i64 %"$consume_467", i64* @_gasrem, align 8
  %"$execptr_load_468" = load i8*, i8** @_execptr, align 8
  %"$res_470" = load %TName_Option_ByStr20_with_end*, %TName_Option_ByStr20_with_end** %res, align 8
  %"$update_value_471" = bitcast %TName_Option_ByStr20_with_end* %"$res_470" to i8*
  call void @_update_field(i8* %"$execptr_load_468", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_1_res_469", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_end_65", i32 0, i8* null, i8* %"$update_value_471"), !dbg !98
  ret void
}

declare i8* @_dynamic_typecast(i8*, [20 x i8]*, %_TyDescrTy_Typ*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @CastTest1(i8* %0) !dbg !99 {
entry:
  %"$_amount_477" = getelementptr i8, i8* %0, i32 0
  %"$_amount_478" = bitcast i8* %"$_amount_477" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_478", align 8
  %"$_origin_479" = getelementptr i8, i8* %0, i32 16
  %"$_origin_480" = bitcast i8* %"$_origin_479" to [20 x i8]*
  %"$_sender_481" = getelementptr i8, i8* %0, i32 36
  %"$_sender_482" = bitcast i8* %"$_sender_481" to [20 x i8]*
  %"$x_483" = getelementptr i8, i8* %0, i32 56
  %"$x_484" = bitcast i8* %"$x_483" to [20 x i8]*
  call void @"$CastTest1_447"(%Uint128 %_amount, [20 x i8]* %"$_origin_480", [20 x i8]* %"$_sender_482", [20 x i8]* %"$x_484"), !dbg !100
  ret void
}

define internal void @"$CastTest2_485"(%Uint128 %_amount, [20 x i8]* %"$_origin_486", [20 x i8]* %"$_sender_487", [20 x i8]* %"$x_488") !dbg !101 {
entry:
  %"$x_513" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$x_488", [20 x i8]** %"$x_513", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$x_513", metadata !102, metadata !DIExpression()), !dbg !103
  %"$_sender_512" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_487", [20 x i8]** %"$_sender_512", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_512", metadata !104, metadata !DIExpression()), !dbg !105
  %"$_origin_511" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_486", [20 x i8]** %"$_origin_511", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_511", metadata !106, metadata !DIExpression()), !dbg !105
  %"$_amount_510" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_510", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_510", metadata !107, metadata !DIExpression()), !dbg !105
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_486", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_487", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_488", align 1
  %"$gasrem_489" = load i64, i64* @_gasrem, align 8
  %"$gascmp_490" = icmp ugt i64 3, %"$gasrem_489"
  br i1 %"$gascmp_490", label %"$out_of_gas_491", label %"$have_gas_492"

"$out_of_gas_491":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_492"

"$have_gas_492":                                  ; preds = %"$out_of_gas_491", %entry
  %"$consume_493" = sub i64 %"$gasrem_489", 3
  store i64 %"$consume_493", i64* @_gasrem, align 8
  %res = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_ByStr20_with_contract_end** %res, metadata !108, metadata !DIExpression()), !dbg !109
  %"$execptr_load_494" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_495" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_495", align 1
  %"$_dynamic_typecast_call_496" = call i8* @_dynamic_typecast(i8* %"$execptr_load_494", [20 x i8]* %"$_dynamic_typecast_x_495", %_TyDescrTy_Typ* @"$TyDescr_Addr_75"), !dbg !109
  %"$_dynamic_typecast_497" = bitcast i8* %"$_dynamic_typecast_call_496" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$_dynamic_typecast_497", %TName_Option_ByStr20_with_contract_end** %res, align 8, !dbg !109
  %"$res_498" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$$res_498_499" = bitcast %TName_Option_ByStr20_with_contract_end* %"$res_498" to i8*
  %"$_literal_cost_call_500" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_64", i8* %"$$res_498_499")
  %"$gasrem_501" = load i64, i64* @_gasrem, align 8
  %"$gascmp_502" = icmp ugt i64 %"$_literal_cost_call_500", %"$gasrem_501"
  br i1 %"$gascmp_502", label %"$out_of_gas_503", label %"$have_gas_504"

"$out_of_gas_503":                                ; preds = %"$have_gas_492"
  call void @_out_of_gas()
  br label %"$have_gas_504"

"$have_gas_504":                                  ; preds = %"$out_of_gas_503", %"$have_gas_492"
  %"$consume_505" = sub i64 %"$gasrem_501", %"$_literal_cost_call_500"
  store i64 %"$consume_505", i64* @_gasrem, align 8
  %"$execptr_load_506" = load i8*, i8** @_execptr, align 8
  %"$res_508" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$update_value_509" = bitcast %TName_Option_ByStr20_with_contract_end* %"$res_508" to i8*
  call void @_update_field(i8* %"$execptr_load_506", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_2_res_507", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_64", i32 0, i8* null, i8* %"$update_value_509"), !dbg !110
  ret void
}

define void @CastTest2(i8* %0) !dbg !111 {
entry:
  %"$_amount_515" = getelementptr i8, i8* %0, i32 0
  %"$_amount_516" = bitcast i8* %"$_amount_515" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_516", align 8
  %"$_origin_517" = getelementptr i8, i8* %0, i32 16
  %"$_origin_518" = bitcast i8* %"$_origin_517" to [20 x i8]*
  %"$_sender_519" = getelementptr i8, i8* %0, i32 36
  %"$_sender_520" = bitcast i8* %"$_sender_519" to [20 x i8]*
  %"$x_521" = getelementptr i8, i8* %0, i32 56
  %"$x_522" = bitcast i8* %"$x_521" to [20 x i8]*
  call void @"$CastTest2_485"(%Uint128 %_amount, [20 x i8]* %"$_origin_518", [20 x i8]* %"$_sender_520", [20 x i8]* %"$x_522"), !dbg !112
  ret void
}

define internal void @"$CastTest3_523"(%Uint128 %_amount, [20 x i8]* %"$_origin_524", [20 x i8]* %"$_sender_525", [20 x i8]* %"$x_526") !dbg !113 {
entry:
  %"$x_551" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$x_526", [20 x i8]** %"$x_551", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$x_551", metadata !114, metadata !DIExpression()), !dbg !115
  %"$_sender_550" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_525", [20 x i8]** %"$_sender_550", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_550", metadata !116, metadata !DIExpression()), !dbg !117
  %"$_origin_549" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_524", [20 x i8]** %"$_origin_549", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_549", metadata !118, metadata !DIExpression()), !dbg !117
  %"$_amount_548" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_548", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_548", metadata !119, metadata !DIExpression()), !dbg !117
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_524", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_525", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_526", align 1
  %"$gasrem_527" = load i64, i64* @_gasrem, align 8
  %"$gascmp_528" = icmp ugt i64 3, %"$gasrem_527"
  br i1 %"$gascmp_528", label %"$out_of_gas_529", label %"$have_gas_530"

"$out_of_gas_529":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_530"

"$have_gas_530":                                  ; preds = %"$out_of_gas_529", %entry
  %"$consume_531" = sub i64 %"$gasrem_527", 3
  store i64 %"$consume_531", i64* @_gasrem, align 8
  %res = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_ByStr20_with_contract_end** %res, metadata !120, metadata !DIExpression()), !dbg !121
  %"$execptr_load_532" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_533" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_533", align 1
  %"$_dynamic_typecast_call_534" = call i8* @_dynamic_typecast(i8* %"$execptr_load_532", [20 x i8]* %"$_dynamic_typecast_x_533", %_TyDescrTy_Typ* @"$TyDescr_Addr_75"), !dbg !121
  %"$_dynamic_typecast_535" = bitcast i8* %"$_dynamic_typecast_call_534" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$_dynamic_typecast_535", %TName_Option_ByStr20_with_contract_end** %res, align 8, !dbg !121
  %"$res_536" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$$res_536_537" = bitcast %TName_Option_ByStr20_with_contract_end* %"$res_536" to i8*
  %"$_literal_cost_call_538" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_64", i8* %"$$res_536_537")
  %"$gasrem_539" = load i64, i64* @_gasrem, align 8
  %"$gascmp_540" = icmp ugt i64 %"$_literal_cost_call_538", %"$gasrem_539"
  br i1 %"$gascmp_540", label %"$out_of_gas_541", label %"$have_gas_542"

"$out_of_gas_541":                                ; preds = %"$have_gas_530"
  call void @_out_of_gas()
  br label %"$have_gas_542"

"$have_gas_542":                                  ; preds = %"$out_of_gas_541", %"$have_gas_530"
  %"$consume_543" = sub i64 %"$gasrem_539", %"$_literal_cost_call_538"
  store i64 %"$consume_543", i64* @_gasrem, align 8
  %"$execptr_load_544" = load i8*, i8** @_execptr, align 8
  %"$res_546" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$update_value_547" = bitcast %TName_Option_ByStr20_with_contract_end* %"$res_546" to i8*
  call void @_update_field(i8* %"$execptr_load_544", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_3_res_545", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_64", i32 0, i8* null, i8* %"$update_value_547"), !dbg !122
  ret void
}

define void @CastTest3(i8* %0) !dbg !123 {
entry:
  %"$_amount_553" = getelementptr i8, i8* %0, i32 0
  %"$_amount_554" = bitcast i8* %"$_amount_553" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_554", align 8
  %"$_origin_555" = getelementptr i8, i8* %0, i32 16
  %"$_origin_556" = bitcast i8* %"$_origin_555" to [20 x i8]*
  %"$_sender_557" = getelementptr i8, i8* %0, i32 36
  %"$_sender_558" = bitcast i8* %"$_sender_557" to [20 x i8]*
  %"$x_559" = getelementptr i8, i8* %0, i32 56
  %"$x_560" = bitcast i8* %"$x_559" to [20 x i8]*
  call void @"$CastTest3_523"(%Uint128 %_amount, [20 x i8]* %"$_origin_556", [20 x i8]* %"$_sender_558", [20 x i8]* %"$x_560"), !dbg !124
  ret void
}

define internal void @"$CastTest4_561"(%Uint128 %_amount, [20 x i8]* %"$_origin_562", [20 x i8]* %"$_sender_563", [20 x i8]* %"$x_564") !dbg !125 {
entry:
  %"$x_637" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$x_564", [20 x i8]** %"$x_637", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$x_637", metadata !126, metadata !DIExpression()), !dbg !128
  %"$_sender_636" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_563", [20 x i8]** %"$_sender_636", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_636", metadata !129, metadata !DIExpression()), !dbg !130
  %"$_origin_635" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_562", [20 x i8]** %"$_origin_635", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_635", metadata !131, metadata !DIExpression()), !dbg !130
  %"$_amount_634" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_634", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_634", metadata !132, metadata !DIExpression()), !dbg !130
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_562", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_563", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_564", align 1
  %"$gasrem_565" = load i64, i64* @_gasrem, align 8
  %"$gascmp_566" = icmp ugt i64 2, %"$gasrem_565"
  br i1 %"$gascmp_566", label %"$out_of_gas_567", label %"$have_gas_568"

"$out_of_gas_567":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_568"

"$have_gas_568":                                  ; preds = %"$out_of_gas_567", %entry
  %"$consume_569" = sub i64 %"$gasrem_565", 2
  store i64 %"$consume_569", i64* @_gasrem, align 8
  %x_cast = alloca %TName_Option_ByStr20_with_end*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_ByStr20_with_end** %x_cast, metadata !133, metadata !DIExpression()), !dbg !134
  %"$execptr_load_570" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_571" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_571", align 1
  %"$_dynamic_typecast_call_572" = call i8* @_dynamic_typecast(i8* %"$execptr_load_570", [20 x i8]* %"$_dynamic_typecast_x_571", %_TyDescrTy_Typ* @"$TyDescr_Addr_76"), !dbg !134
  %"$_dynamic_typecast_573" = bitcast i8* %"$_dynamic_typecast_call_572" to %TName_Option_ByStr20_with_end*
  store %TName_Option_ByStr20_with_end* %"$_dynamic_typecast_573", %TName_Option_ByStr20_with_end** %x_cast, align 8, !dbg !134
  %"$gasrem_574" = load i64, i64* @_gasrem, align 8
  %"$gascmp_575" = icmp ugt i64 2, %"$gasrem_574"
  br i1 %"$gascmp_575", label %"$out_of_gas_576", label %"$have_gas_577"

"$out_of_gas_576":                                ; preds = %"$have_gas_568"
  call void @_out_of_gas()
  br label %"$have_gas_577"

"$have_gas_577":                                  ; preds = %"$out_of_gas_576", %"$have_gas_568"
  %"$consume_578" = sub i64 %"$gasrem_574", 2
  store i64 %"$consume_578", i64* @_gasrem, align 8
  %"$x_cast_580" = load %TName_Option_ByStr20_with_end*, %TName_Option_ByStr20_with_end** %x_cast, align 8
  %"$x_cast_tag_581" = getelementptr inbounds %TName_Option_ByStr20_with_end, %TName_Option_ByStr20_with_end* %"$x_cast_580", i32 0, i32 0
  %"$x_cast_tag_582" = load i8, i8* %"$x_cast_tag_581", align 1
  switch i8 %"$x_cast_tag_582", label %"$empty_default_583" [
    i8 0, label %"$Some_584"
    i8 1, label %"$None_632"
  ], !dbg !135

"$Some_584":                                      ; preds = %"$have_gas_577"
  %"$x_cast_585" = bitcast %TName_Option_ByStr20_with_end* %"$x_cast_580" to %CName_Some_ByStr20_with_end*
  %"$x_as_address_gep_586" = getelementptr inbounds %CName_Some_ByStr20_with_end, %CName_Some_ByStr20_with_end* %"$x_cast_585", i32 0, i32 1
  %"$x_as_address_load_587" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_586", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_587", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %bal, metadata !136, metadata !DIExpression()), !dbg !139
  %"$execptr_load_589" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_590" = alloca [20 x i8], align 1
  %"$x_as_address_591" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_591", [20 x i8]* %"$bal_x_as_address_590", align 1
  %"$bal_call_592" = call i8* @_fetch_remote_field(i8* %"$execptr_load_589", [20 x i8]* %"$bal_x_as_address_590", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_588", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1), !dbg !139
  %"$bal_593" = bitcast i8* %"$bal_call_592" to %Uint128*
  %"$bal_594" = load %Uint128, %Uint128* %"$bal_593", align 8
  store %Uint128 %"$bal_594", %Uint128* %bal, align 8
  %"$_literal_cost_bal_595" = alloca %Uint128, align 8
  %"$bal_596" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_596", %Uint128* %"$_literal_cost_bal_595", align 8
  %"$$_literal_cost_bal_595_597" = bitcast %Uint128* %"$_literal_cost_bal_595" to i8*
  %"$_literal_cost_call_598" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_595_597")
  %"$gasadd_599" = add i64 %"$_literal_cost_call_598", 0
  %"$gasrem_600" = load i64, i64* @_gasrem, align 8
  %"$gascmp_601" = icmp ugt i64 %"$gasadd_599", %"$gasrem_600"
  br i1 %"$gascmp_601", label %"$out_of_gas_602", label %"$have_gas_603"

"$out_of_gas_602":                                ; preds = %"$Some_584"
  call void @_out_of_gas()
  br label %"$have_gas_603"

"$have_gas_603":                                  ; preds = %"$out_of_gas_602", %"$Some_584"
  %"$consume_604" = sub i64 %"$gasrem_600", %"$gasadd_599"
  store i64 %"$consume_604", i64* @_gasrem, align 8
  %"$gasrem_605" = load i64, i64* @_gasrem, align 8
  %"$gascmp_606" = icmp ugt i64 1, %"$gasrem_605"
  br i1 %"$gascmp_606", label %"$out_of_gas_607", label %"$have_gas_608"

"$out_of_gas_607":                                ; preds = %"$have_gas_603"
  call void @_out_of_gas()
  br label %"$have_gas_608"

"$have_gas_608":                                  ; preds = %"$out_of_gas_607", %"$have_gas_603"
  %"$consume_609" = sub i64 %"$gasrem_605", 1
  store i64 %"$consume_609", i64* @_gasrem, align 8
  %res = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %res, metadata !140, metadata !DIExpression()), !dbg !141
  %"$gasrem_610" = load i64, i64* @_gasrem, align 8
  %"$gascmp_611" = icmp ugt i64 1, %"$gasrem_610"
  br i1 %"$gascmp_611", label %"$out_of_gas_612", label %"$have_gas_613"

"$out_of_gas_612":                                ; preds = %"$have_gas_608"
  call void @_out_of_gas()
  br label %"$have_gas_613"

"$have_gas_613":                                  ; preds = %"$out_of_gas_612", %"$have_gas_608"
  %"$consume_614" = sub i64 %"$gasrem_610", 1
  store i64 %"$consume_614", i64* @_gasrem, align 8
  %"$bal_615" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_616_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_616_salloc" = call i8* @_salloc(i8* %"$adtval_616_load", i64 17)
  %"$adtval_616" = bitcast i8* %"$adtval_616_salloc" to %CName_Some_Uint128*
  %"$adtgep_617" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_616", i32 0, i32 0
  store i8 0, i8* %"$adtgep_617", align 1
  %"$adtgep_618" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_616", i32 0, i32 1
  store %Uint128 %"$bal_615", %Uint128* %"$adtgep_618", align 8
  %"$adtptr_619" = bitcast %CName_Some_Uint128* %"$adtval_616" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_619", %TName_Option_Uint128** %res, align 8, !dbg !142
  %"$res_620" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$$res_620_621" = bitcast %TName_Option_Uint128* %"$res_620" to i8*
  %"$_literal_cost_call_622" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i8* %"$$res_620_621")
  %"$gasrem_623" = load i64, i64* @_gasrem, align 8
  %"$gascmp_624" = icmp ugt i64 %"$_literal_cost_call_622", %"$gasrem_623"
  br i1 %"$gascmp_624", label %"$out_of_gas_625", label %"$have_gas_626"

"$out_of_gas_625":                                ; preds = %"$have_gas_613"
  call void @_out_of_gas()
  br label %"$have_gas_626"

"$have_gas_626":                                  ; preds = %"$out_of_gas_625", %"$have_gas_613"
  %"$consume_627" = sub i64 %"$gasrem_623", %"$_literal_cost_call_622"
  store i64 %"$consume_627", i64* @_gasrem, align 8
  %"$execptr_load_628" = load i8*, i8** @_execptr, align 8
  %"$res_630" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$update_value_631" = bitcast %TName_Option_Uint128* %"$res_630" to i8*
  call void @_update_field(i8* %"$execptr_load_628", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_4_res_629", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_631"), !dbg !143
  br label %"$matchsucc_579"

"$None_632":                                      ; preds = %"$have_gas_577"
  %"$x_cast_633" = bitcast %TName_Option_ByStr20_with_end* %"$x_cast_580" to %CName_None_ByStr20_with_end*
  br label %"$matchsucc_579"

"$empty_default_583":                             ; preds = %"$have_gas_577"
  br label %"$matchsucc_579"

"$matchsucc_579":                                 ; preds = %"$None_632", %"$have_gas_626", %"$empty_default_583"
  ret void
}

declare i8* @_fetch_remote_field(i8*, [20 x i8]*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @CastTest4(i8* %0) !dbg !144 {
entry:
  %"$_amount_639" = getelementptr i8, i8* %0, i32 0
  %"$_amount_640" = bitcast i8* %"$_amount_639" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_640", align 8
  %"$_origin_641" = getelementptr i8, i8* %0, i32 16
  %"$_origin_642" = bitcast i8* %"$_origin_641" to [20 x i8]*
  %"$_sender_643" = getelementptr i8, i8* %0, i32 36
  %"$_sender_644" = bitcast i8* %"$_sender_643" to [20 x i8]*
  %"$x_645" = getelementptr i8, i8* %0, i32 56
  %"$x_646" = bitcast i8* %"$x_645" to [20 x i8]*
  call void @"$CastTest4_561"(%Uint128 %_amount, [20 x i8]* %"$_origin_642", [20 x i8]* %"$_sender_644", [20 x i8]* %"$x_646"), !dbg !145
  ret void
}

define internal void @"$CastTest5_1_647"(%Uint128 %_amount, [20 x i8]* %"$_origin_648", [20 x i8]* %"$_sender_649", [20 x i8]* %"$x_650") !dbg !146 {
entry:
  %"$x_723" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$x_650", [20 x i8]** %"$x_723", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$x_723", metadata !147, metadata !DIExpression()), !dbg !148
  %"$_sender_722" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_649", [20 x i8]** %"$_sender_722", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_722", metadata !149, metadata !DIExpression()), !dbg !150
  %"$_origin_721" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_648", [20 x i8]** %"$_origin_721", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_721", metadata !151, metadata !DIExpression()), !dbg !150
  %"$_amount_720" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_720", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_720", metadata !152, metadata !DIExpression()), !dbg !150
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_648", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_649", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_650", align 1
  %"$gasrem_651" = load i64, i64* @_gasrem, align 8
  %"$gascmp_652" = icmp ugt i64 3, %"$gasrem_651"
  br i1 %"$gascmp_652", label %"$out_of_gas_653", label %"$have_gas_654"

"$out_of_gas_653":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_654"

"$have_gas_654":                                  ; preds = %"$out_of_gas_653", %entry
  %"$consume_655" = sub i64 %"$gasrem_651", 3
  store i64 %"$consume_655", i64* @_gasrem, align 8
  %x_cast = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_ByStr20_with_contract_end** %x_cast, metadata !153, metadata !DIExpression()), !dbg !154
  %"$execptr_load_656" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_657" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_657", align 1
  %"$_dynamic_typecast_call_658" = call i8* @_dynamic_typecast(i8* %"$execptr_load_656", [20 x i8]* %"$_dynamic_typecast_x_657", %_TyDescrTy_Typ* @"$TyDescr_Addr_75"), !dbg !154
  %"$_dynamic_typecast_659" = bitcast i8* %"$_dynamic_typecast_call_658" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$_dynamic_typecast_659", %TName_Option_ByStr20_with_contract_end** %x_cast, align 8, !dbg !154
  %"$gasrem_660" = load i64, i64* @_gasrem, align 8
  %"$gascmp_661" = icmp ugt i64 2, %"$gasrem_660"
  br i1 %"$gascmp_661", label %"$out_of_gas_662", label %"$have_gas_663"

"$out_of_gas_662":                                ; preds = %"$have_gas_654"
  call void @_out_of_gas()
  br label %"$have_gas_663"

"$have_gas_663":                                  ; preds = %"$out_of_gas_662", %"$have_gas_654"
  %"$consume_664" = sub i64 %"$gasrem_660", 2
  store i64 %"$consume_664", i64* @_gasrem, align 8
  %"$x_cast_666" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %x_cast, align 8
  %"$x_cast_tag_667" = getelementptr inbounds %TName_Option_ByStr20_with_contract_end, %TName_Option_ByStr20_with_contract_end* %"$x_cast_666", i32 0, i32 0
  %"$x_cast_tag_668" = load i8, i8* %"$x_cast_tag_667", align 1
  switch i8 %"$x_cast_tag_668", label %"$empty_default_669" [
    i8 0, label %"$Some_670"
    i8 1, label %"$None_718"
  ], !dbg !155

"$Some_670":                                      ; preds = %"$have_gas_663"
  %"$x_cast_671" = bitcast %TName_Option_ByStr20_with_contract_end* %"$x_cast_666" to %CName_Some_ByStr20_with_contract_end*
  %"$x_as_address_gep_672" = getelementptr inbounds %CName_Some_ByStr20_with_contract_end, %CName_Some_ByStr20_with_contract_end* %"$x_cast_671", i32 0, i32 1
  %"$x_as_address_load_673" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_672", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_673", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %bal, metadata !156, metadata !DIExpression()), !dbg !159
  %"$execptr_load_675" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_676" = alloca [20 x i8], align 1
  %"$x_as_address_677" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_677", [20 x i8]* %"$bal_x_as_address_676", align 1
  %"$bal_call_678" = call i8* @_fetch_remote_field(i8* %"$execptr_load_675", [20 x i8]* %"$bal_x_as_address_676", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_674", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1), !dbg !159
  %"$bal_679" = bitcast i8* %"$bal_call_678" to %Uint128*
  %"$bal_680" = load %Uint128, %Uint128* %"$bal_679", align 8
  store %Uint128 %"$bal_680", %Uint128* %bal, align 8
  %"$_literal_cost_bal_681" = alloca %Uint128, align 8
  %"$bal_682" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_682", %Uint128* %"$_literal_cost_bal_681", align 8
  %"$$_literal_cost_bal_681_683" = bitcast %Uint128* %"$_literal_cost_bal_681" to i8*
  %"$_literal_cost_call_684" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_681_683")
  %"$gasadd_685" = add i64 %"$_literal_cost_call_684", 0
  %"$gasrem_686" = load i64, i64* @_gasrem, align 8
  %"$gascmp_687" = icmp ugt i64 %"$gasadd_685", %"$gasrem_686"
  br i1 %"$gascmp_687", label %"$out_of_gas_688", label %"$have_gas_689"

"$out_of_gas_688":                                ; preds = %"$Some_670"
  call void @_out_of_gas()
  br label %"$have_gas_689"

"$have_gas_689":                                  ; preds = %"$out_of_gas_688", %"$Some_670"
  %"$consume_690" = sub i64 %"$gasrem_686", %"$gasadd_685"
  store i64 %"$consume_690", i64* @_gasrem, align 8
  %"$gasrem_691" = load i64, i64* @_gasrem, align 8
  %"$gascmp_692" = icmp ugt i64 1, %"$gasrem_691"
  br i1 %"$gascmp_692", label %"$out_of_gas_693", label %"$have_gas_694"

"$out_of_gas_693":                                ; preds = %"$have_gas_689"
  call void @_out_of_gas()
  br label %"$have_gas_694"

"$have_gas_694":                                  ; preds = %"$out_of_gas_693", %"$have_gas_689"
  %"$consume_695" = sub i64 %"$gasrem_691", 1
  store i64 %"$consume_695", i64* @_gasrem, align 8
  %res = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %res, metadata !160, metadata !DIExpression()), !dbg !161
  %"$gasrem_696" = load i64, i64* @_gasrem, align 8
  %"$gascmp_697" = icmp ugt i64 1, %"$gasrem_696"
  br i1 %"$gascmp_697", label %"$out_of_gas_698", label %"$have_gas_699"

"$out_of_gas_698":                                ; preds = %"$have_gas_694"
  call void @_out_of_gas()
  br label %"$have_gas_699"

"$have_gas_699":                                  ; preds = %"$out_of_gas_698", %"$have_gas_694"
  %"$consume_700" = sub i64 %"$gasrem_696", 1
  store i64 %"$consume_700", i64* @_gasrem, align 8
  %"$bal_701" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_702_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_702_salloc" = call i8* @_salloc(i8* %"$adtval_702_load", i64 17)
  %"$adtval_702" = bitcast i8* %"$adtval_702_salloc" to %CName_Some_Uint128*
  %"$adtgep_703" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_702", i32 0, i32 0
  store i8 0, i8* %"$adtgep_703", align 1
  %"$adtgep_704" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_702", i32 0, i32 1
  store %Uint128 %"$bal_701", %Uint128* %"$adtgep_704", align 8
  %"$adtptr_705" = bitcast %CName_Some_Uint128* %"$adtval_702" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_705", %TName_Option_Uint128** %res, align 8, !dbg !162
  %"$res_706" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$$res_706_707" = bitcast %TName_Option_Uint128* %"$res_706" to i8*
  %"$_literal_cost_call_708" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i8* %"$$res_706_707")
  %"$gasrem_709" = load i64, i64* @_gasrem, align 8
  %"$gascmp_710" = icmp ugt i64 %"$_literal_cost_call_708", %"$gasrem_709"
  br i1 %"$gascmp_710", label %"$out_of_gas_711", label %"$have_gas_712"

"$out_of_gas_711":                                ; preds = %"$have_gas_699"
  call void @_out_of_gas()
  br label %"$have_gas_712"

"$have_gas_712":                                  ; preds = %"$out_of_gas_711", %"$have_gas_699"
  %"$consume_713" = sub i64 %"$gasrem_709", %"$_literal_cost_call_708"
  store i64 %"$consume_713", i64* @_gasrem, align 8
  %"$execptr_load_714" = load i8*, i8** @_execptr, align 8
  %"$res_716" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$update_value_717" = bitcast %TName_Option_Uint128* %"$res_716" to i8*
  call void @_update_field(i8* %"$execptr_load_714", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_5_1_res_715", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_717"), !dbg !163
  br label %"$matchsucc_665"

"$None_718":                                      ; preds = %"$have_gas_663"
  %"$x_cast_719" = bitcast %TName_Option_ByStr20_with_contract_end* %"$x_cast_666" to %CName_None_ByStr20_with_contract_end*
  br label %"$matchsucc_665"

"$empty_default_669":                             ; preds = %"$have_gas_663"
  br label %"$matchsucc_665"

"$matchsucc_665":                                 ; preds = %"$None_718", %"$have_gas_712", %"$empty_default_669"
  ret void
}

define void @CastTest5_1(i8* %0) !dbg !164 {
entry:
  %"$_amount_725" = getelementptr i8, i8* %0, i32 0
  %"$_amount_726" = bitcast i8* %"$_amount_725" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_726", align 8
  %"$_origin_727" = getelementptr i8, i8* %0, i32 16
  %"$_origin_728" = bitcast i8* %"$_origin_727" to [20 x i8]*
  %"$_sender_729" = getelementptr i8, i8* %0, i32 36
  %"$_sender_730" = bitcast i8* %"$_sender_729" to [20 x i8]*
  %"$x_731" = getelementptr i8, i8* %0, i32 56
  %"$x_732" = bitcast i8* %"$x_731" to [20 x i8]*
  call void @"$CastTest5_1_647"(%Uint128 %_amount, [20 x i8]* %"$_origin_728", [20 x i8]* %"$_sender_730", [20 x i8]* %"$x_732"), !dbg !165
  ret void
}

define internal void @"$CastTest5_2_733"(%Uint128 %_amount, [20 x i8]* %"$_origin_734", [20 x i8]* %"$_sender_735", [20 x i8]* %"$x_736") !dbg !166 {
entry:
  %"$x_809" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$x_736", [20 x i8]** %"$x_809", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$x_809", metadata !167, metadata !DIExpression()), !dbg !168
  %"$_sender_808" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_735", [20 x i8]** %"$_sender_808", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_808", metadata !169, metadata !DIExpression()), !dbg !170
  %"$_origin_807" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_734", [20 x i8]** %"$_origin_807", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_807", metadata !171, metadata !DIExpression()), !dbg !170
  %"$_amount_806" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_806", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_806", metadata !172, metadata !DIExpression()), !dbg !170
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_734", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_735", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_736", align 1
  %"$gasrem_737" = load i64, i64* @_gasrem, align 8
  %"$gascmp_738" = icmp ugt i64 3, %"$gasrem_737"
  br i1 %"$gascmp_738", label %"$out_of_gas_739", label %"$have_gas_740"

"$out_of_gas_739":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_740"

"$have_gas_740":                                  ; preds = %"$out_of_gas_739", %entry
  %"$consume_741" = sub i64 %"$gasrem_737", 3
  store i64 %"$consume_741", i64* @_gasrem, align 8
  %x_cast = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_ByStr20_with_contract_end** %x_cast, metadata !173, metadata !DIExpression()), !dbg !174
  %"$execptr_load_742" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_743" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_743", align 1
  %"$_dynamic_typecast_call_744" = call i8* @_dynamic_typecast(i8* %"$execptr_load_742", [20 x i8]* %"$_dynamic_typecast_x_743", %_TyDescrTy_Typ* @"$TyDescr_Addr_75"), !dbg !174
  %"$_dynamic_typecast_745" = bitcast i8* %"$_dynamic_typecast_call_744" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$_dynamic_typecast_745", %TName_Option_ByStr20_with_contract_end** %x_cast, align 8, !dbg !174
  %"$gasrem_746" = load i64, i64* @_gasrem, align 8
  %"$gascmp_747" = icmp ugt i64 2, %"$gasrem_746"
  br i1 %"$gascmp_747", label %"$out_of_gas_748", label %"$have_gas_749"

"$out_of_gas_748":                                ; preds = %"$have_gas_740"
  call void @_out_of_gas()
  br label %"$have_gas_749"

"$have_gas_749":                                  ; preds = %"$out_of_gas_748", %"$have_gas_740"
  %"$consume_750" = sub i64 %"$gasrem_746", 2
  store i64 %"$consume_750", i64* @_gasrem, align 8
  %"$x_cast_752" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %x_cast, align 8
  %"$x_cast_tag_753" = getelementptr inbounds %TName_Option_ByStr20_with_contract_end, %TName_Option_ByStr20_with_contract_end* %"$x_cast_752", i32 0, i32 0
  %"$x_cast_tag_754" = load i8, i8* %"$x_cast_tag_753", align 1
  switch i8 %"$x_cast_tag_754", label %"$empty_default_755" [
    i8 0, label %"$Some_756"
    i8 1, label %"$None_804"
  ], !dbg !175

"$Some_756":                                      ; preds = %"$have_gas_749"
  %"$x_cast_757" = bitcast %TName_Option_ByStr20_with_contract_end* %"$x_cast_752" to %CName_Some_ByStr20_with_contract_end*
  %"$x_as_address_gep_758" = getelementptr inbounds %CName_Some_ByStr20_with_contract_end, %CName_Some_ByStr20_with_contract_end* %"$x_cast_757", i32 0, i32 1
  %"$x_as_address_load_759" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_758", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_759", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %bal, metadata !176, metadata !DIExpression()), !dbg !179
  %"$execptr_load_761" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_762" = alloca [20 x i8], align 1
  %"$x_as_address_763" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_763", [20 x i8]* %"$bal_x_as_address_762", align 1
  %"$bal_call_764" = call i8* @_fetch_remote_field(i8* %"$execptr_load_761", [20 x i8]* %"$bal_x_as_address_762", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_760", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1), !dbg !179
  %"$bal_765" = bitcast i8* %"$bal_call_764" to %Uint128*
  %"$bal_766" = load %Uint128, %Uint128* %"$bal_765", align 8
  store %Uint128 %"$bal_766", %Uint128* %bal, align 8
  %"$_literal_cost_bal_767" = alloca %Uint128, align 8
  %"$bal_768" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_768", %Uint128* %"$_literal_cost_bal_767", align 8
  %"$$_literal_cost_bal_767_769" = bitcast %Uint128* %"$_literal_cost_bal_767" to i8*
  %"$_literal_cost_call_770" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_767_769")
  %"$gasadd_771" = add i64 %"$_literal_cost_call_770", 0
  %"$gasrem_772" = load i64, i64* @_gasrem, align 8
  %"$gascmp_773" = icmp ugt i64 %"$gasadd_771", %"$gasrem_772"
  br i1 %"$gascmp_773", label %"$out_of_gas_774", label %"$have_gas_775"

"$out_of_gas_774":                                ; preds = %"$Some_756"
  call void @_out_of_gas()
  br label %"$have_gas_775"

"$have_gas_775":                                  ; preds = %"$out_of_gas_774", %"$Some_756"
  %"$consume_776" = sub i64 %"$gasrem_772", %"$gasadd_771"
  store i64 %"$consume_776", i64* @_gasrem, align 8
  %"$gasrem_777" = load i64, i64* @_gasrem, align 8
  %"$gascmp_778" = icmp ugt i64 1, %"$gasrem_777"
  br i1 %"$gascmp_778", label %"$out_of_gas_779", label %"$have_gas_780"

"$out_of_gas_779":                                ; preds = %"$have_gas_775"
  call void @_out_of_gas()
  br label %"$have_gas_780"

"$have_gas_780":                                  ; preds = %"$out_of_gas_779", %"$have_gas_775"
  %"$consume_781" = sub i64 %"$gasrem_777", 1
  store i64 %"$consume_781", i64* @_gasrem, align 8
  %res = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %res, metadata !180, metadata !DIExpression()), !dbg !181
  %"$gasrem_782" = load i64, i64* @_gasrem, align 8
  %"$gascmp_783" = icmp ugt i64 1, %"$gasrem_782"
  br i1 %"$gascmp_783", label %"$out_of_gas_784", label %"$have_gas_785"

"$out_of_gas_784":                                ; preds = %"$have_gas_780"
  call void @_out_of_gas()
  br label %"$have_gas_785"

"$have_gas_785":                                  ; preds = %"$out_of_gas_784", %"$have_gas_780"
  %"$consume_786" = sub i64 %"$gasrem_782", 1
  store i64 %"$consume_786", i64* @_gasrem, align 8
  %"$bal_787" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_788_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_788_salloc" = call i8* @_salloc(i8* %"$adtval_788_load", i64 17)
  %"$adtval_788" = bitcast i8* %"$adtval_788_salloc" to %CName_Some_Uint128*
  %"$adtgep_789" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_788", i32 0, i32 0
  store i8 0, i8* %"$adtgep_789", align 1
  %"$adtgep_790" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_788", i32 0, i32 1
  store %Uint128 %"$bal_787", %Uint128* %"$adtgep_790", align 8
  %"$adtptr_791" = bitcast %CName_Some_Uint128* %"$adtval_788" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_791", %TName_Option_Uint128** %res, align 8, !dbg !182
  %"$res_792" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$$res_792_793" = bitcast %TName_Option_Uint128* %"$res_792" to i8*
  %"$_literal_cost_call_794" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i8* %"$$res_792_793")
  %"$gasrem_795" = load i64, i64* @_gasrem, align 8
  %"$gascmp_796" = icmp ugt i64 %"$_literal_cost_call_794", %"$gasrem_795"
  br i1 %"$gascmp_796", label %"$out_of_gas_797", label %"$have_gas_798"

"$out_of_gas_797":                                ; preds = %"$have_gas_785"
  call void @_out_of_gas()
  br label %"$have_gas_798"

"$have_gas_798":                                  ; preds = %"$out_of_gas_797", %"$have_gas_785"
  %"$consume_799" = sub i64 %"$gasrem_795", %"$_literal_cost_call_794"
  store i64 %"$consume_799", i64* @_gasrem, align 8
  %"$execptr_load_800" = load i8*, i8** @_execptr, align 8
  %"$res_802" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$update_value_803" = bitcast %TName_Option_Uint128* %"$res_802" to i8*
  call void @_update_field(i8* %"$execptr_load_800", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_5_2_res_801", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_803"), !dbg !183
  br label %"$matchsucc_751"

"$None_804":                                      ; preds = %"$have_gas_749"
  %"$x_cast_805" = bitcast %TName_Option_ByStr20_with_contract_end* %"$x_cast_752" to %CName_None_ByStr20_with_contract_end*
  br label %"$matchsucc_751"

"$empty_default_755":                             ; preds = %"$have_gas_749"
  br label %"$matchsucc_751"

"$matchsucc_751":                                 ; preds = %"$None_804", %"$have_gas_798", %"$empty_default_755"
  ret void
}

define void @CastTest5_2(i8* %0) !dbg !184 {
entry:
  %"$_amount_811" = getelementptr i8, i8* %0, i32 0
  %"$_amount_812" = bitcast i8* %"$_amount_811" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_812", align 8
  %"$_origin_813" = getelementptr i8, i8* %0, i32 16
  %"$_origin_814" = bitcast i8* %"$_origin_813" to [20 x i8]*
  %"$_sender_815" = getelementptr i8, i8* %0, i32 36
  %"$_sender_816" = bitcast i8* %"$_sender_815" to [20 x i8]*
  %"$x_817" = getelementptr i8, i8* %0, i32 56
  %"$x_818" = bitcast i8* %"$x_817" to [20 x i8]*
  call void @"$CastTest5_2_733"(%Uint128 %_amount, [20 x i8]* %"$_origin_814", [20 x i8]* %"$_sender_816", [20 x i8]* %"$x_818"), !dbg !185
  ret void
}

define internal void @"$CastTest6_1_819"(%Uint128 %_amount, [20 x i8]* %"$_origin_820", [20 x i8]* %"$_sender_821", [20 x i8]* %"$x_822") !dbg !186 {
entry:
  %"$x_981" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$x_822", [20 x i8]** %"$x_981", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$x_981", metadata !187, metadata !DIExpression()), !dbg !188
  %"$_sender_980" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_821", [20 x i8]** %"$_sender_980", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_980", metadata !189, metadata !DIExpression()), !dbg !190
  %"$_origin_979" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_820", [20 x i8]** %"$_origin_979", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_979", metadata !191, metadata !DIExpression()), !dbg !190
  %"$_amount_978" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_978", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_978", metadata !192, metadata !DIExpression()), !dbg !190
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_820", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_821", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_822", align 1
  %"$gasrem_823" = load i64, i64* @_gasrem, align 8
  %"$gascmp_824" = icmp ugt i64 5, %"$gasrem_823"
  br i1 %"$gascmp_824", label %"$out_of_gas_825", label %"$have_gas_826"

"$out_of_gas_825":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_826"

"$have_gas_826":                                  ; preds = %"$out_of_gas_825", %entry
  %"$consume_827" = sub i64 %"$gasrem_823", 5
  store i64 %"$consume_827", i64* @_gasrem, align 8
  %x_cast = alloca %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, align 8
  call void @llvm.dbg.declare(metadata %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, metadata !193, metadata !DIExpression()), !dbg !196
  %"$execptr_load_828" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_829" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_829", align 1
  %"$_dynamic_typecast_call_830" = call i8* @_dynamic_typecast(i8* %"$execptr_load_828", [20 x i8]* %"$_dynamic_typecast_x_829", %_TyDescrTy_Typ* @"$TyDescr_Addr_74"), !dbg !196
  %"$_dynamic_typecast_831" = bitcast i8* %"$_dynamic_typecast_call_830" to %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  store %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$_dynamic_typecast_831", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8, !dbg !196
  %"$gasrem_832" = load i64, i64* @_gasrem, align 8
  %"$gascmp_833" = icmp ugt i64 2, %"$gasrem_832"
  br i1 %"$gascmp_833", label %"$out_of_gas_834", label %"$have_gas_835"

"$out_of_gas_834":                                ; preds = %"$have_gas_826"
  call void @_out_of_gas()
  br label %"$have_gas_835"

"$have_gas_835":                                  ; preds = %"$out_of_gas_834", %"$have_gas_826"
  %"$consume_836" = sub i64 %"$gasrem_832", 2
  store i64 %"$consume_836", i64* @_gasrem, align 8
  %"$x_cast_838" = load %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$x_cast_tag_839" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_838", i32 0, i32 0
  %"$x_cast_tag_840" = load i8, i8* %"$x_cast_tag_839", align 1
  switch i8 %"$x_cast_tag_840", label %"$empty_default_841" [
    i8 0, label %"$Some_842"
    i8 1, label %"$None_976"
  ], !dbg !197

"$Some_842":                                      ; preds = %"$have_gas_835"
  %"$x_cast_843" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_838" to %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  %"$x_as_address_gep_844" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_843", i32 0, i32 1
  %"$x_as_address_load_845" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_844", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_845", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %bal, metadata !198, metadata !DIExpression()), !dbg !201
  %"$execptr_load_847" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_848" = alloca [20 x i8], align 1
  %"$x_as_address_849" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_849", [20 x i8]* %"$bal_x_as_address_848", align 1
  %"$bal_call_850" = call i8* @_fetch_remote_field(i8* %"$execptr_load_847", [20 x i8]* %"$bal_x_as_address_848", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_846", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1), !dbg !201
  %"$bal_851" = bitcast i8* %"$bal_call_850" to %Uint128*
  %"$bal_852" = load %Uint128, %Uint128* %"$bal_851", align 8
  store %Uint128 %"$bal_852", %Uint128* %bal, align 8
  %"$_literal_cost_bal_853" = alloca %Uint128, align 8
  %"$bal_854" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_854", %Uint128* %"$_literal_cost_bal_853", align 8
  %"$$_literal_cost_bal_853_855" = bitcast %Uint128* %"$_literal_cost_bal_853" to i8*
  %"$_literal_cost_call_856" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_853_855")
  %"$gasadd_857" = add i64 %"$_literal_cost_call_856", 0
  %"$gasrem_858" = load i64, i64* @_gasrem, align 8
  %"$gascmp_859" = icmp ugt i64 %"$gasadd_857", %"$gasrem_858"
  br i1 %"$gascmp_859", label %"$out_of_gas_860", label %"$have_gas_861"

"$out_of_gas_860":                                ; preds = %"$Some_842"
  call void @_out_of_gas()
  br label %"$have_gas_861"

"$have_gas_861":                                  ; preds = %"$out_of_gas_860", %"$Some_842"
  %"$consume_862" = sub i64 %"$gasrem_858", %"$gasadd_857"
  store i64 %"$consume_862", i64* @_gasrem, align 8
  %"$gasrem_863" = load i64, i64* @_gasrem, align 8
  %"$gascmp_864" = icmp ugt i64 1, %"$gasrem_863"
  br i1 %"$gascmp_864", label %"$out_of_gas_865", label %"$have_gas_866"

"$out_of_gas_865":                                ; preds = %"$have_gas_861"
  call void @_out_of_gas()
  br label %"$have_gas_866"

"$have_gas_866":                                  ; preds = %"$out_of_gas_865", %"$have_gas_861"
  %"$consume_867" = sub i64 %"$gasrem_863", 1
  store i64 %"$consume_867", i64* @_gasrem, align 8
  %bal_res = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %bal_res, metadata !202, metadata !DIExpression()), !dbg !203
  %"$gasrem_868" = load i64, i64* @_gasrem, align 8
  %"$gascmp_869" = icmp ugt i64 1, %"$gasrem_868"
  br i1 %"$gascmp_869", label %"$out_of_gas_870", label %"$have_gas_871"

"$out_of_gas_870":                                ; preds = %"$have_gas_866"
  call void @_out_of_gas()
  br label %"$have_gas_871"

"$have_gas_871":                                  ; preds = %"$out_of_gas_870", %"$have_gas_866"
  %"$consume_872" = sub i64 %"$gasrem_868", 1
  store i64 %"$consume_872", i64* @_gasrem, align 8
  %"$bal_873" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_874_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_874_salloc" = call i8* @_salloc(i8* %"$adtval_874_load", i64 17)
  %"$adtval_874" = bitcast i8* %"$adtval_874_salloc" to %CName_Some_Uint128*
  %"$adtgep_875" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_874", i32 0, i32 0
  store i8 0, i8* %"$adtgep_875", align 1
  %"$adtgep_876" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_874", i32 0, i32 1
  store %Uint128 %"$bal_873", %Uint128* %"$adtgep_876", align 8
  %"$adtptr_877" = bitcast %CName_Some_Uint128* %"$adtval_874" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_877", %TName_Option_Uint128** %bal_res, align 8, !dbg !204
  %"$bal_res_878" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$$bal_res_878_879" = bitcast %TName_Option_Uint128* %"$bal_res_878" to i8*
  %"$_literal_cost_call_880" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i8* %"$$bal_res_878_879")
  %"$gasrem_881" = load i64, i64* @_gasrem, align 8
  %"$gascmp_882" = icmp ugt i64 %"$_literal_cost_call_880", %"$gasrem_881"
  br i1 %"$gascmp_882", label %"$out_of_gas_883", label %"$have_gas_884"

"$out_of_gas_883":                                ; preds = %"$have_gas_871"
  call void @_out_of_gas()
  br label %"$have_gas_884"

"$have_gas_884":                                  ; preds = %"$out_of_gas_883", %"$have_gas_871"
  %"$consume_885" = sub i64 %"$gasrem_881", %"$_literal_cost_call_880"
  store i64 %"$consume_885", i64* @_gasrem, align 8
  %"$execptr_load_886" = load i8*, i8** @_execptr, align 8
  %"$bal_res_888" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$update_value_889" = bitcast %TName_Option_Uint128* %"$bal_res_888" to i8*
  call void @_update_field(i8* %"$execptr_load_886", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_1_bal_res_887", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_889"), !dbg !205
  %f = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %f, metadata !206, metadata !DIExpression()), !dbg !207
  %"$execptr_load_891" = load i8*, i8** @_execptr, align 8
  %"$f_x_as_address_892" = alloca [20 x i8], align 1
  %"$x_as_address_893" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_893", [20 x i8]* %"$f_x_as_address_892", align 1
  %"$f_call_894" = call i8* @_fetch_remote_field(i8* %"$execptr_load_891", [20 x i8]* %"$f_x_as_address_892", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_890", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1), !dbg !207
  %"$f_895" = bitcast i8* %"$f_call_894" to %Uint128*
  %"$f_896" = load %Uint128, %Uint128* %"$f_895", align 8
  store %Uint128 %"$f_896", %Uint128* %f, align 8
  %"$_literal_cost_f_897" = alloca %Uint128, align 8
  %"$f_898" = load %Uint128, %Uint128* %f, align 8
  store %Uint128 %"$f_898", %Uint128* %"$_literal_cost_f_897", align 8
  %"$$_literal_cost_f_897_899" = bitcast %Uint128* %"$_literal_cost_f_897" to i8*
  %"$_literal_cost_call_900" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_f_897_899")
  %"$gasadd_901" = add i64 %"$_literal_cost_call_900", 0
  %"$gasrem_902" = load i64, i64* @_gasrem, align 8
  %"$gascmp_903" = icmp ugt i64 %"$gasadd_901", %"$gasrem_902"
  br i1 %"$gascmp_903", label %"$out_of_gas_904", label %"$have_gas_905"

"$out_of_gas_904":                                ; preds = %"$have_gas_884"
  call void @_out_of_gas()
  br label %"$have_gas_905"

"$have_gas_905":                                  ; preds = %"$out_of_gas_904", %"$have_gas_884"
  %"$consume_906" = sub i64 %"$gasrem_902", %"$gasadd_901"
  store i64 %"$consume_906", i64* @_gasrem, align 8
  %"$gasrem_907" = load i64, i64* @_gasrem, align 8
  %"$gascmp_908" = icmp ugt i64 1, %"$gasrem_907"
  br i1 %"$gascmp_908", label %"$out_of_gas_909", label %"$have_gas_910"

"$out_of_gas_909":                                ; preds = %"$have_gas_905"
  call void @_out_of_gas()
  br label %"$have_gas_910"

"$have_gas_910":                                  ; preds = %"$out_of_gas_909", %"$have_gas_905"
  %"$consume_911" = sub i64 %"$gasrem_907", 1
  store i64 %"$consume_911", i64* @_gasrem, align 8
  %f_res = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %f_res, metadata !208, metadata !DIExpression()), !dbg !209
  %"$gasrem_912" = load i64, i64* @_gasrem, align 8
  %"$gascmp_913" = icmp ugt i64 1, %"$gasrem_912"
  br i1 %"$gascmp_913", label %"$out_of_gas_914", label %"$have_gas_915"

"$out_of_gas_914":                                ; preds = %"$have_gas_910"
  call void @_out_of_gas()
  br label %"$have_gas_915"

"$have_gas_915":                                  ; preds = %"$out_of_gas_914", %"$have_gas_910"
  %"$consume_916" = sub i64 %"$gasrem_912", 1
  store i64 %"$consume_916", i64* @_gasrem, align 8
  %"$f_917" = load %Uint128, %Uint128* %f, align 8
  %"$adtval_918_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_918_salloc" = call i8* @_salloc(i8* %"$adtval_918_load", i64 17)
  %"$adtval_918" = bitcast i8* %"$adtval_918_salloc" to %CName_Some_Uint128*
  %"$adtgep_919" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_918", i32 0, i32 0
  store i8 0, i8* %"$adtgep_919", align 1
  %"$adtgep_920" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_918", i32 0, i32 1
  store %Uint128 %"$f_917", %Uint128* %"$adtgep_920", align 8
  %"$adtptr_921" = bitcast %CName_Some_Uint128* %"$adtval_918" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_921", %TName_Option_Uint128** %f_res, align 8, !dbg !210
  %"$f_res_922" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$$f_res_922_923" = bitcast %TName_Option_Uint128* %"$f_res_922" to i8*
  %"$_literal_cost_call_924" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i8* %"$$f_res_922_923")
  %"$gasrem_925" = load i64, i64* @_gasrem, align 8
  %"$gascmp_926" = icmp ugt i64 %"$_literal_cost_call_924", %"$gasrem_925"
  br i1 %"$gascmp_926", label %"$out_of_gas_927", label %"$have_gas_928"

"$out_of_gas_927":                                ; preds = %"$have_gas_915"
  call void @_out_of_gas()
  br label %"$have_gas_928"

"$have_gas_928":                                  ; preds = %"$out_of_gas_927", %"$have_gas_915"
  %"$consume_929" = sub i64 %"$gasrem_925", %"$_literal_cost_call_924"
  store i64 %"$consume_929", i64* @_gasrem, align 8
  %"$execptr_load_930" = load i8*, i8** @_execptr, align 8
  %"$f_res_932" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$update_value_933" = bitcast %TName_Option_Uint128* %"$f_res_932" to i8*
  call void @_update_field(i8* %"$execptr_load_930", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_1_f_res_931", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_933"), !dbg !211
  %g = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %g, metadata !212, metadata !DIExpression()), !dbg !213
  %"$execptr_load_935" = load i8*, i8** @_execptr, align 8
  %"$g_x_as_address_936" = alloca [20 x i8], align 1
  %"$x_as_address_937" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_937", [20 x i8]* %"$g_x_as_address_936", align 1
  %"$g_call_938" = call i8* @_fetch_remote_field(i8* %"$execptr_load_935", [20 x i8]* %"$g_x_as_address_936", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_934", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i32 0, i8* null, i32 1), !dbg !213
  %"$g_939" = bitcast i8* %"$g_call_938" to %TName_Bool*
  store %TName_Bool* %"$g_939", %TName_Bool** %g, align 8
  %"$g_940" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$$g_940_941" = bitcast %TName_Bool* %"$g_940" to i8*
  %"$_literal_cost_call_942" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i8* %"$$g_940_941")
  %"$gasadd_943" = add i64 %"$_literal_cost_call_942", 0
  %"$gasrem_944" = load i64, i64* @_gasrem, align 8
  %"$gascmp_945" = icmp ugt i64 %"$gasadd_943", %"$gasrem_944"
  br i1 %"$gascmp_945", label %"$out_of_gas_946", label %"$have_gas_947"

"$out_of_gas_946":                                ; preds = %"$have_gas_928"
  call void @_out_of_gas()
  br label %"$have_gas_947"

"$have_gas_947":                                  ; preds = %"$out_of_gas_946", %"$have_gas_928"
  %"$consume_948" = sub i64 %"$gasrem_944", %"$gasadd_943"
  store i64 %"$consume_948", i64* @_gasrem, align 8
  %"$gasrem_949" = load i64, i64* @_gasrem, align 8
  %"$gascmp_950" = icmp ugt i64 1, %"$gasrem_949"
  br i1 %"$gascmp_950", label %"$out_of_gas_951", label %"$have_gas_952"

"$out_of_gas_951":                                ; preds = %"$have_gas_947"
  call void @_out_of_gas()
  br label %"$have_gas_952"

"$have_gas_952":                                  ; preds = %"$out_of_gas_951", %"$have_gas_947"
  %"$consume_953" = sub i64 %"$gasrem_949", 1
  store i64 %"$consume_953", i64* @_gasrem, align 8
  %g_res = alloca %TName_Option_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Bool** %g_res, metadata !214, metadata !DIExpression()), !dbg !215
  %"$gasrem_954" = load i64, i64* @_gasrem, align 8
  %"$gascmp_955" = icmp ugt i64 1, %"$gasrem_954"
  br i1 %"$gascmp_955", label %"$out_of_gas_956", label %"$have_gas_957"

"$out_of_gas_956":                                ; preds = %"$have_gas_952"
  call void @_out_of_gas()
  br label %"$have_gas_957"

"$have_gas_957":                                  ; preds = %"$out_of_gas_956", %"$have_gas_952"
  %"$consume_958" = sub i64 %"$gasrem_954", 1
  store i64 %"$consume_958", i64* @_gasrem, align 8
  %"$g_959" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$adtval_960_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_960_salloc" = call i8* @_salloc(i8* %"$adtval_960_load", i64 9)
  %"$adtval_960" = bitcast i8* %"$adtval_960_salloc" to %CName_Some_Bool*
  %"$adtgep_961" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_960", i32 0, i32 0
  store i8 0, i8* %"$adtgep_961", align 1
  %"$adtgep_962" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_960", i32 0, i32 1
  store %TName_Bool* %"$g_959", %TName_Bool** %"$adtgep_962", align 8
  %"$adtptr_963" = bitcast %CName_Some_Bool* %"$adtval_960" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_963", %TName_Option_Bool** %g_res, align 8, !dbg !216
  %"$g_res_964" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$$g_res_964_965" = bitcast %TName_Option_Bool* %"$g_res_964" to i8*
  %"$_literal_cost_call_966" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i8* %"$$g_res_964_965")
  %"$gasrem_967" = load i64, i64* @_gasrem, align 8
  %"$gascmp_968" = icmp ugt i64 %"$_literal_cost_call_966", %"$gasrem_967"
  br i1 %"$gascmp_968", label %"$out_of_gas_969", label %"$have_gas_970"

"$out_of_gas_969":                                ; preds = %"$have_gas_957"
  call void @_out_of_gas()
  br label %"$have_gas_970"

"$have_gas_970":                                  ; preds = %"$out_of_gas_969", %"$have_gas_957"
  %"$consume_971" = sub i64 %"$gasrem_967", %"$_literal_cost_call_966"
  store i64 %"$consume_971", i64* @_gasrem, align 8
  %"$execptr_load_972" = load i8*, i8** @_execptr, align 8
  %"$g_res_974" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$update_value_975" = bitcast %TName_Option_Bool* %"$g_res_974" to i8*
  call void @_update_field(i8* %"$execptr_load_972", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_1_g_res_973", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i32 0, i8* null, i8* %"$update_value_975"), !dbg !217
  br label %"$matchsucc_837"

"$None_976":                                      ; preds = %"$have_gas_835"
  %"$x_cast_977" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_838" to %"CName_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  br label %"$matchsucc_837"

"$empty_default_841":                             ; preds = %"$have_gas_835"
  br label %"$matchsucc_837"

"$matchsucc_837":                                 ; preds = %"$None_976", %"$have_gas_970", %"$empty_default_841"
  ret void
}

define void @CastTest6_1(i8* %0) !dbg !218 {
entry:
  %"$_amount_983" = getelementptr i8, i8* %0, i32 0
  %"$_amount_984" = bitcast i8* %"$_amount_983" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_984", align 8
  %"$_origin_985" = getelementptr i8, i8* %0, i32 16
  %"$_origin_986" = bitcast i8* %"$_origin_985" to [20 x i8]*
  %"$_sender_987" = getelementptr i8, i8* %0, i32 36
  %"$_sender_988" = bitcast i8* %"$_sender_987" to [20 x i8]*
  %"$x_989" = getelementptr i8, i8* %0, i32 56
  %"$x_990" = bitcast i8* %"$x_989" to [20 x i8]*
  call void @"$CastTest6_1_819"(%Uint128 %_amount, [20 x i8]* %"$_origin_986", [20 x i8]* %"$_sender_988", [20 x i8]* %"$x_990"), !dbg !219
  ret void
}

define internal void @"$CastTest6_2_991"(%Uint128 %_amount, [20 x i8]* %"$_origin_992", [20 x i8]* %"$_sender_993", [20 x i8]* %"$x_994") !dbg !220 {
entry:
  %"$x_1153" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$x_994", [20 x i8]** %"$x_1153", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$x_1153", metadata !221, metadata !DIExpression()), !dbg !222
  %"$_sender_1152" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_993", [20 x i8]** %"$_sender_1152", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_1152", metadata !223, metadata !DIExpression()), !dbg !224
  %"$_origin_1151" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_992", [20 x i8]** %"$_origin_1151", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_1151", metadata !225, metadata !DIExpression()), !dbg !224
  %"$_amount_1150" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_1150", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_1150", metadata !226, metadata !DIExpression()), !dbg !224
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_992", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_993", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_994", align 1
  %"$gasrem_995" = load i64, i64* @_gasrem, align 8
  %"$gascmp_996" = icmp ugt i64 5, %"$gasrem_995"
  br i1 %"$gascmp_996", label %"$out_of_gas_997", label %"$have_gas_998"

"$out_of_gas_997":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_998"

"$have_gas_998":                                  ; preds = %"$out_of_gas_997", %entry
  %"$consume_999" = sub i64 %"$gasrem_995", 5
  store i64 %"$consume_999", i64* @_gasrem, align 8
  %x_cast = alloca %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, align 8
  call void @llvm.dbg.declare(metadata %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, metadata !227, metadata !DIExpression()), !dbg !228
  %"$execptr_load_1000" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_1001" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_1001", align 1
  %"$_dynamic_typecast_call_1002" = call i8* @_dynamic_typecast(i8* %"$execptr_load_1000", [20 x i8]* %"$_dynamic_typecast_x_1001", %_TyDescrTy_Typ* @"$TyDescr_Addr_74"), !dbg !228
  %"$_dynamic_typecast_1003" = bitcast i8* %"$_dynamic_typecast_call_1002" to %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  store %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$_dynamic_typecast_1003", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8, !dbg !228
  %"$gasrem_1004" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1005" = icmp ugt i64 2, %"$gasrem_1004"
  br i1 %"$gascmp_1005", label %"$out_of_gas_1006", label %"$have_gas_1007"

"$out_of_gas_1006":                               ; preds = %"$have_gas_998"
  call void @_out_of_gas()
  br label %"$have_gas_1007"

"$have_gas_1007":                                 ; preds = %"$out_of_gas_1006", %"$have_gas_998"
  %"$consume_1008" = sub i64 %"$gasrem_1004", 2
  store i64 %"$consume_1008", i64* @_gasrem, align 8
  %"$x_cast_1010" = load %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$x_cast_tag_1011" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1010", i32 0, i32 0
  %"$x_cast_tag_1012" = load i8, i8* %"$x_cast_tag_1011", align 1
  switch i8 %"$x_cast_tag_1012", label %"$empty_default_1013" [
    i8 0, label %"$Some_1014"
    i8 1, label %"$None_1148"
  ], !dbg !229

"$Some_1014":                                     ; preds = %"$have_gas_1007"
  %"$x_cast_1015" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1010" to %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  %"$x_as_address_gep_1016" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1015", i32 0, i32 1
  %"$x_as_address_load_1017" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_1016", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_1017", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %bal, metadata !230, metadata !DIExpression()), !dbg !233
  %"$execptr_load_1019" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_1020" = alloca [20 x i8], align 1
  %"$x_as_address_1021" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1021", [20 x i8]* %"$bal_x_as_address_1020", align 1
  %"$bal_call_1022" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1019", [20 x i8]* %"$bal_x_as_address_1020", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_1018", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1), !dbg !233
  %"$bal_1023" = bitcast i8* %"$bal_call_1022" to %Uint128*
  %"$bal_1024" = load %Uint128, %Uint128* %"$bal_1023", align 8
  store %Uint128 %"$bal_1024", %Uint128* %bal, align 8
  %"$_literal_cost_bal_1025" = alloca %Uint128, align 8
  %"$bal_1026" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_1026", %Uint128* %"$_literal_cost_bal_1025", align 8
  %"$$_literal_cost_bal_1025_1027" = bitcast %Uint128* %"$_literal_cost_bal_1025" to i8*
  %"$_literal_cost_call_1028" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_1025_1027")
  %"$gasadd_1029" = add i64 %"$_literal_cost_call_1028", 0
  %"$gasrem_1030" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1031" = icmp ugt i64 %"$gasadd_1029", %"$gasrem_1030"
  br i1 %"$gascmp_1031", label %"$out_of_gas_1032", label %"$have_gas_1033"

"$out_of_gas_1032":                               ; preds = %"$Some_1014"
  call void @_out_of_gas()
  br label %"$have_gas_1033"

"$have_gas_1033":                                 ; preds = %"$out_of_gas_1032", %"$Some_1014"
  %"$consume_1034" = sub i64 %"$gasrem_1030", %"$gasadd_1029"
  store i64 %"$consume_1034", i64* @_gasrem, align 8
  %"$gasrem_1035" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1036" = icmp ugt i64 1, %"$gasrem_1035"
  br i1 %"$gascmp_1036", label %"$out_of_gas_1037", label %"$have_gas_1038"

"$out_of_gas_1037":                               ; preds = %"$have_gas_1033"
  call void @_out_of_gas()
  br label %"$have_gas_1038"

"$have_gas_1038":                                 ; preds = %"$out_of_gas_1037", %"$have_gas_1033"
  %"$consume_1039" = sub i64 %"$gasrem_1035", 1
  store i64 %"$consume_1039", i64* @_gasrem, align 8
  %bal_res = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %bal_res, metadata !234, metadata !DIExpression()), !dbg !235
  %"$gasrem_1040" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1041" = icmp ugt i64 1, %"$gasrem_1040"
  br i1 %"$gascmp_1041", label %"$out_of_gas_1042", label %"$have_gas_1043"

"$out_of_gas_1042":                               ; preds = %"$have_gas_1038"
  call void @_out_of_gas()
  br label %"$have_gas_1043"

"$have_gas_1043":                                 ; preds = %"$out_of_gas_1042", %"$have_gas_1038"
  %"$consume_1044" = sub i64 %"$gasrem_1040", 1
  store i64 %"$consume_1044", i64* @_gasrem, align 8
  %"$bal_1045" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_1046_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1046_salloc" = call i8* @_salloc(i8* %"$adtval_1046_load", i64 17)
  %"$adtval_1046" = bitcast i8* %"$adtval_1046_salloc" to %CName_Some_Uint128*
  %"$adtgep_1047" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1046", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1047", align 1
  %"$adtgep_1048" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1046", i32 0, i32 1
  store %Uint128 %"$bal_1045", %Uint128* %"$adtgep_1048", align 8
  %"$adtptr_1049" = bitcast %CName_Some_Uint128* %"$adtval_1046" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1049", %TName_Option_Uint128** %bal_res, align 8, !dbg !236
  %"$bal_res_1050" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$$bal_res_1050_1051" = bitcast %TName_Option_Uint128* %"$bal_res_1050" to i8*
  %"$_literal_cost_call_1052" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i8* %"$$bal_res_1050_1051")
  %"$gasrem_1053" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1054" = icmp ugt i64 %"$_literal_cost_call_1052", %"$gasrem_1053"
  br i1 %"$gascmp_1054", label %"$out_of_gas_1055", label %"$have_gas_1056"

"$out_of_gas_1055":                               ; preds = %"$have_gas_1043"
  call void @_out_of_gas()
  br label %"$have_gas_1056"

"$have_gas_1056":                                 ; preds = %"$out_of_gas_1055", %"$have_gas_1043"
  %"$consume_1057" = sub i64 %"$gasrem_1053", %"$_literal_cost_call_1052"
  store i64 %"$consume_1057", i64* @_gasrem, align 8
  %"$execptr_load_1058" = load i8*, i8** @_execptr, align 8
  %"$bal_res_1060" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$update_value_1061" = bitcast %TName_Option_Uint128* %"$bal_res_1060" to i8*
  call void @_update_field(i8* %"$execptr_load_1058", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_2_bal_res_1059", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_1061"), !dbg !237
  %f = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %f, metadata !238, metadata !DIExpression()), !dbg !239
  %"$execptr_load_1063" = load i8*, i8** @_execptr, align 8
  %"$f_x_as_address_1064" = alloca [20 x i8], align 1
  %"$x_as_address_1065" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1065", [20 x i8]* %"$f_x_as_address_1064", align 1
  %"$f_call_1066" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1063", [20 x i8]* %"$f_x_as_address_1064", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_1062", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1), !dbg !239
  %"$f_1067" = bitcast i8* %"$f_call_1066" to %Uint128*
  %"$f_1068" = load %Uint128, %Uint128* %"$f_1067", align 8
  store %Uint128 %"$f_1068", %Uint128* %f, align 8
  %"$_literal_cost_f_1069" = alloca %Uint128, align 8
  %"$f_1070" = load %Uint128, %Uint128* %f, align 8
  store %Uint128 %"$f_1070", %Uint128* %"$_literal_cost_f_1069", align 8
  %"$$_literal_cost_f_1069_1071" = bitcast %Uint128* %"$_literal_cost_f_1069" to i8*
  %"$_literal_cost_call_1072" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_f_1069_1071")
  %"$gasadd_1073" = add i64 %"$_literal_cost_call_1072", 0
  %"$gasrem_1074" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1075" = icmp ugt i64 %"$gasadd_1073", %"$gasrem_1074"
  br i1 %"$gascmp_1075", label %"$out_of_gas_1076", label %"$have_gas_1077"

"$out_of_gas_1076":                               ; preds = %"$have_gas_1056"
  call void @_out_of_gas()
  br label %"$have_gas_1077"

"$have_gas_1077":                                 ; preds = %"$out_of_gas_1076", %"$have_gas_1056"
  %"$consume_1078" = sub i64 %"$gasrem_1074", %"$gasadd_1073"
  store i64 %"$consume_1078", i64* @_gasrem, align 8
  %"$gasrem_1079" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1080" = icmp ugt i64 1, %"$gasrem_1079"
  br i1 %"$gascmp_1080", label %"$out_of_gas_1081", label %"$have_gas_1082"

"$out_of_gas_1081":                               ; preds = %"$have_gas_1077"
  call void @_out_of_gas()
  br label %"$have_gas_1082"

"$have_gas_1082":                                 ; preds = %"$out_of_gas_1081", %"$have_gas_1077"
  %"$consume_1083" = sub i64 %"$gasrem_1079", 1
  store i64 %"$consume_1083", i64* @_gasrem, align 8
  %f_res = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %f_res, metadata !240, metadata !DIExpression()), !dbg !241
  %"$gasrem_1084" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1085" = icmp ugt i64 1, %"$gasrem_1084"
  br i1 %"$gascmp_1085", label %"$out_of_gas_1086", label %"$have_gas_1087"

"$out_of_gas_1086":                               ; preds = %"$have_gas_1082"
  call void @_out_of_gas()
  br label %"$have_gas_1087"

"$have_gas_1087":                                 ; preds = %"$out_of_gas_1086", %"$have_gas_1082"
  %"$consume_1088" = sub i64 %"$gasrem_1084", 1
  store i64 %"$consume_1088", i64* @_gasrem, align 8
  %"$f_1089" = load %Uint128, %Uint128* %f, align 8
  %"$adtval_1090_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1090_salloc" = call i8* @_salloc(i8* %"$adtval_1090_load", i64 17)
  %"$adtval_1090" = bitcast i8* %"$adtval_1090_salloc" to %CName_Some_Uint128*
  %"$adtgep_1091" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1090", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1091", align 1
  %"$adtgep_1092" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1090", i32 0, i32 1
  store %Uint128 %"$f_1089", %Uint128* %"$adtgep_1092", align 8
  %"$adtptr_1093" = bitcast %CName_Some_Uint128* %"$adtval_1090" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1093", %TName_Option_Uint128** %f_res, align 8, !dbg !242
  %"$f_res_1094" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$$f_res_1094_1095" = bitcast %TName_Option_Uint128* %"$f_res_1094" to i8*
  %"$_literal_cost_call_1096" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i8* %"$$f_res_1094_1095")
  %"$gasrem_1097" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1098" = icmp ugt i64 %"$_literal_cost_call_1096", %"$gasrem_1097"
  br i1 %"$gascmp_1098", label %"$out_of_gas_1099", label %"$have_gas_1100"

"$out_of_gas_1099":                               ; preds = %"$have_gas_1087"
  call void @_out_of_gas()
  br label %"$have_gas_1100"

"$have_gas_1100":                                 ; preds = %"$out_of_gas_1099", %"$have_gas_1087"
  %"$consume_1101" = sub i64 %"$gasrem_1097", %"$_literal_cost_call_1096"
  store i64 %"$consume_1101", i64* @_gasrem, align 8
  %"$execptr_load_1102" = load i8*, i8** @_execptr, align 8
  %"$f_res_1104" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$update_value_1105" = bitcast %TName_Option_Uint128* %"$f_res_1104" to i8*
  call void @_update_field(i8* %"$execptr_load_1102", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_2_f_res_1103", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_1105"), !dbg !243
  %g = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %g, metadata !244, metadata !DIExpression()), !dbg !245
  %"$execptr_load_1107" = load i8*, i8** @_execptr, align 8
  %"$g_x_as_address_1108" = alloca [20 x i8], align 1
  %"$x_as_address_1109" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1109", [20 x i8]* %"$g_x_as_address_1108", align 1
  %"$g_call_1110" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1107", [20 x i8]* %"$g_x_as_address_1108", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_1106", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i32 0, i8* null, i32 1), !dbg !245
  %"$g_1111" = bitcast i8* %"$g_call_1110" to %TName_Bool*
  store %TName_Bool* %"$g_1111", %TName_Bool** %g, align 8
  %"$g_1112" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$$g_1112_1113" = bitcast %TName_Bool* %"$g_1112" to i8*
  %"$_literal_cost_call_1114" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i8* %"$$g_1112_1113")
  %"$gasadd_1115" = add i64 %"$_literal_cost_call_1114", 0
  %"$gasrem_1116" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1117" = icmp ugt i64 %"$gasadd_1115", %"$gasrem_1116"
  br i1 %"$gascmp_1117", label %"$out_of_gas_1118", label %"$have_gas_1119"

"$out_of_gas_1118":                               ; preds = %"$have_gas_1100"
  call void @_out_of_gas()
  br label %"$have_gas_1119"

"$have_gas_1119":                                 ; preds = %"$out_of_gas_1118", %"$have_gas_1100"
  %"$consume_1120" = sub i64 %"$gasrem_1116", %"$gasadd_1115"
  store i64 %"$consume_1120", i64* @_gasrem, align 8
  %"$gasrem_1121" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1122" = icmp ugt i64 1, %"$gasrem_1121"
  br i1 %"$gascmp_1122", label %"$out_of_gas_1123", label %"$have_gas_1124"

"$out_of_gas_1123":                               ; preds = %"$have_gas_1119"
  call void @_out_of_gas()
  br label %"$have_gas_1124"

"$have_gas_1124":                                 ; preds = %"$out_of_gas_1123", %"$have_gas_1119"
  %"$consume_1125" = sub i64 %"$gasrem_1121", 1
  store i64 %"$consume_1125", i64* @_gasrem, align 8
  %g_res = alloca %TName_Option_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Bool** %g_res, metadata !246, metadata !DIExpression()), !dbg !247
  %"$gasrem_1126" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1127" = icmp ugt i64 1, %"$gasrem_1126"
  br i1 %"$gascmp_1127", label %"$out_of_gas_1128", label %"$have_gas_1129"

"$out_of_gas_1128":                               ; preds = %"$have_gas_1124"
  call void @_out_of_gas()
  br label %"$have_gas_1129"

"$have_gas_1129":                                 ; preds = %"$out_of_gas_1128", %"$have_gas_1124"
  %"$consume_1130" = sub i64 %"$gasrem_1126", 1
  store i64 %"$consume_1130", i64* @_gasrem, align 8
  %"$g_1131" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$adtval_1132_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1132_salloc" = call i8* @_salloc(i8* %"$adtval_1132_load", i64 9)
  %"$adtval_1132" = bitcast i8* %"$adtval_1132_salloc" to %CName_Some_Bool*
  %"$adtgep_1133" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1132", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1133", align 1
  %"$adtgep_1134" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1132", i32 0, i32 1
  store %TName_Bool* %"$g_1131", %TName_Bool** %"$adtgep_1134", align 8
  %"$adtptr_1135" = bitcast %CName_Some_Bool* %"$adtval_1132" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_1135", %TName_Option_Bool** %g_res, align 8, !dbg !248
  %"$g_res_1136" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$$g_res_1136_1137" = bitcast %TName_Option_Bool* %"$g_res_1136" to i8*
  %"$_literal_cost_call_1138" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i8* %"$$g_res_1136_1137")
  %"$gasrem_1139" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1140" = icmp ugt i64 %"$_literal_cost_call_1138", %"$gasrem_1139"
  br i1 %"$gascmp_1140", label %"$out_of_gas_1141", label %"$have_gas_1142"

"$out_of_gas_1141":                               ; preds = %"$have_gas_1129"
  call void @_out_of_gas()
  br label %"$have_gas_1142"

"$have_gas_1142":                                 ; preds = %"$out_of_gas_1141", %"$have_gas_1129"
  %"$consume_1143" = sub i64 %"$gasrem_1139", %"$_literal_cost_call_1138"
  store i64 %"$consume_1143", i64* @_gasrem, align 8
  %"$execptr_load_1144" = load i8*, i8** @_execptr, align 8
  %"$g_res_1146" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$update_value_1147" = bitcast %TName_Option_Bool* %"$g_res_1146" to i8*
  call void @_update_field(i8* %"$execptr_load_1144", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_2_g_res_1145", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i32 0, i8* null, i8* %"$update_value_1147"), !dbg !249
  br label %"$matchsucc_1009"

"$None_1148":                                     ; preds = %"$have_gas_1007"
  %"$x_cast_1149" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1010" to %"CName_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  br label %"$matchsucc_1009"

"$empty_default_1013":                            ; preds = %"$have_gas_1007"
  br label %"$matchsucc_1009"

"$matchsucc_1009":                                ; preds = %"$None_1148", %"$have_gas_1142", %"$empty_default_1013"
  ret void
}

define void @CastTest6_2(i8* %0) !dbg !250 {
entry:
  %"$_amount_1155" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1156" = bitcast i8* %"$_amount_1155" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1156", align 8
  %"$_origin_1157" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1158" = bitcast i8* %"$_origin_1157" to [20 x i8]*
  %"$_sender_1159" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1160" = bitcast i8* %"$_sender_1159" to [20 x i8]*
  %"$x_1161" = getelementptr i8, i8* %0, i32 56
  %"$x_1162" = bitcast i8* %"$x_1161" to [20 x i8]*
  call void @"$CastTest6_2_991"(%Uint128 %_amount, [20 x i8]* %"$_origin_1158", [20 x i8]* %"$_sender_1160", [20 x i8]* %"$x_1162"), !dbg !251
  ret void
}

define internal void @"$CastTest6_3_1163"(%Uint128 %_amount, [20 x i8]* %"$_origin_1164", [20 x i8]* %"$_sender_1165", [20 x i8]* %"$x_1166") !dbg !252 {
entry:
  %"$x_1325" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$x_1166", [20 x i8]** %"$x_1325", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$x_1325", metadata !253, metadata !DIExpression()), !dbg !255
  %"$_sender_1324" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_1165", [20 x i8]** %"$_sender_1324", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_1324", metadata !256, metadata !DIExpression()), !dbg !257
  %"$_origin_1323" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_1164", [20 x i8]** %"$_origin_1323", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_1323", metadata !258, metadata !DIExpression()), !dbg !257
  %"$_amount_1322" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_1322", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_1322", metadata !259, metadata !DIExpression()), !dbg !257
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1164", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1165", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_1166", align 1
  %"$gasrem_1167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1168" = icmp ugt i64 5, %"$gasrem_1167"
  br i1 %"$gascmp_1168", label %"$out_of_gas_1169", label %"$have_gas_1170"

"$out_of_gas_1169":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1170"

"$have_gas_1170":                                 ; preds = %"$out_of_gas_1169", %entry
  %"$consume_1171" = sub i64 %"$gasrem_1167", 5
  store i64 %"$consume_1171", i64* @_gasrem, align 8
  %x_cast = alloca %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, align 8
  call void @llvm.dbg.declare(metadata %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, metadata !260, metadata !DIExpression()), !dbg !261
  %"$execptr_load_1172" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_1173" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_1173", align 1
  %"$_dynamic_typecast_call_1174" = call i8* @_dynamic_typecast(i8* %"$execptr_load_1172", [20 x i8]* %"$_dynamic_typecast_x_1173", %_TyDescrTy_Typ* @"$TyDescr_Addr_74"), !dbg !261
  %"$_dynamic_typecast_1175" = bitcast i8* %"$_dynamic_typecast_call_1174" to %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  store %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$_dynamic_typecast_1175", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8, !dbg !261
  %"$gasrem_1176" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1177" = icmp ugt i64 2, %"$gasrem_1176"
  br i1 %"$gascmp_1177", label %"$out_of_gas_1178", label %"$have_gas_1179"

"$out_of_gas_1178":                               ; preds = %"$have_gas_1170"
  call void @_out_of_gas()
  br label %"$have_gas_1179"

"$have_gas_1179":                                 ; preds = %"$out_of_gas_1178", %"$have_gas_1170"
  %"$consume_1180" = sub i64 %"$gasrem_1176", 2
  store i64 %"$consume_1180", i64* @_gasrem, align 8
  %"$x_cast_1182" = load %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$x_cast_tag_1183" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1182", i32 0, i32 0
  %"$x_cast_tag_1184" = load i8, i8* %"$x_cast_tag_1183", align 1
  switch i8 %"$x_cast_tag_1184", label %"$empty_default_1185" [
    i8 0, label %"$Some_1186"
    i8 1, label %"$None_1320"
  ], !dbg !262

"$Some_1186":                                     ; preds = %"$have_gas_1179"
  %"$x_cast_1187" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1182" to %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  %"$x_as_address_gep_1188" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1187", i32 0, i32 1
  %"$x_as_address_load_1189" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_1188", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_1189", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %bal, metadata !263, metadata !DIExpression()), !dbg !266
  %"$execptr_load_1191" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_1192" = alloca [20 x i8], align 1
  %"$x_as_address_1193" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1193", [20 x i8]* %"$bal_x_as_address_1192", align 1
  %"$bal_call_1194" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1191", [20 x i8]* %"$bal_x_as_address_1192", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_1190", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1), !dbg !266
  %"$bal_1195" = bitcast i8* %"$bal_call_1194" to %Uint128*
  %"$bal_1196" = load %Uint128, %Uint128* %"$bal_1195", align 8
  store %Uint128 %"$bal_1196", %Uint128* %bal, align 8
  %"$_literal_cost_bal_1197" = alloca %Uint128, align 8
  %"$bal_1198" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_1198", %Uint128* %"$_literal_cost_bal_1197", align 8
  %"$$_literal_cost_bal_1197_1199" = bitcast %Uint128* %"$_literal_cost_bal_1197" to i8*
  %"$_literal_cost_call_1200" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_1197_1199")
  %"$gasadd_1201" = add i64 %"$_literal_cost_call_1200", 0
  %"$gasrem_1202" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1203" = icmp ugt i64 %"$gasadd_1201", %"$gasrem_1202"
  br i1 %"$gascmp_1203", label %"$out_of_gas_1204", label %"$have_gas_1205"

"$out_of_gas_1204":                               ; preds = %"$Some_1186"
  call void @_out_of_gas()
  br label %"$have_gas_1205"

"$have_gas_1205":                                 ; preds = %"$out_of_gas_1204", %"$Some_1186"
  %"$consume_1206" = sub i64 %"$gasrem_1202", %"$gasadd_1201"
  store i64 %"$consume_1206", i64* @_gasrem, align 8
  %"$gasrem_1207" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1208" = icmp ugt i64 1, %"$gasrem_1207"
  br i1 %"$gascmp_1208", label %"$out_of_gas_1209", label %"$have_gas_1210"

"$out_of_gas_1209":                               ; preds = %"$have_gas_1205"
  call void @_out_of_gas()
  br label %"$have_gas_1210"

"$have_gas_1210":                                 ; preds = %"$out_of_gas_1209", %"$have_gas_1205"
  %"$consume_1211" = sub i64 %"$gasrem_1207", 1
  store i64 %"$consume_1211", i64* @_gasrem, align 8
  %bal_res = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %bal_res, metadata !267, metadata !DIExpression()), !dbg !268
  %"$gasrem_1212" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1213" = icmp ugt i64 1, %"$gasrem_1212"
  br i1 %"$gascmp_1213", label %"$out_of_gas_1214", label %"$have_gas_1215"

"$out_of_gas_1214":                               ; preds = %"$have_gas_1210"
  call void @_out_of_gas()
  br label %"$have_gas_1215"

"$have_gas_1215":                                 ; preds = %"$out_of_gas_1214", %"$have_gas_1210"
  %"$consume_1216" = sub i64 %"$gasrem_1212", 1
  store i64 %"$consume_1216", i64* @_gasrem, align 8
  %"$bal_1217" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_1218_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1218_salloc" = call i8* @_salloc(i8* %"$adtval_1218_load", i64 17)
  %"$adtval_1218" = bitcast i8* %"$adtval_1218_salloc" to %CName_Some_Uint128*
  %"$adtgep_1219" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1218", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1219", align 1
  %"$adtgep_1220" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1218", i32 0, i32 1
  store %Uint128 %"$bal_1217", %Uint128* %"$adtgep_1220", align 8
  %"$adtptr_1221" = bitcast %CName_Some_Uint128* %"$adtval_1218" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1221", %TName_Option_Uint128** %bal_res, align 8, !dbg !269
  %"$bal_res_1222" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$$bal_res_1222_1223" = bitcast %TName_Option_Uint128* %"$bal_res_1222" to i8*
  %"$_literal_cost_call_1224" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i8* %"$$bal_res_1222_1223")
  %"$gasrem_1225" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1226" = icmp ugt i64 %"$_literal_cost_call_1224", %"$gasrem_1225"
  br i1 %"$gascmp_1226", label %"$out_of_gas_1227", label %"$have_gas_1228"

"$out_of_gas_1227":                               ; preds = %"$have_gas_1215"
  call void @_out_of_gas()
  br label %"$have_gas_1228"

"$have_gas_1228":                                 ; preds = %"$out_of_gas_1227", %"$have_gas_1215"
  %"$consume_1229" = sub i64 %"$gasrem_1225", %"$_literal_cost_call_1224"
  store i64 %"$consume_1229", i64* @_gasrem, align 8
  %"$execptr_load_1230" = load i8*, i8** @_execptr, align 8
  %"$bal_res_1232" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$update_value_1233" = bitcast %TName_Option_Uint128* %"$bal_res_1232" to i8*
  call void @_update_field(i8* %"$execptr_load_1230", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_3_bal_res_1231", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_1233"), !dbg !270
  %f = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %f, metadata !271, metadata !DIExpression()), !dbg !272
  %"$execptr_load_1235" = load i8*, i8** @_execptr, align 8
  %"$f_x_as_address_1236" = alloca [20 x i8], align 1
  %"$x_as_address_1237" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1237", [20 x i8]* %"$f_x_as_address_1236", align 1
  %"$f_call_1238" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1235", [20 x i8]* %"$f_x_as_address_1236", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_1234", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1), !dbg !272
  %"$f_1239" = bitcast i8* %"$f_call_1238" to %Uint128*
  %"$f_1240" = load %Uint128, %Uint128* %"$f_1239", align 8
  store %Uint128 %"$f_1240", %Uint128* %f, align 8
  %"$_literal_cost_f_1241" = alloca %Uint128, align 8
  %"$f_1242" = load %Uint128, %Uint128* %f, align 8
  store %Uint128 %"$f_1242", %Uint128* %"$_literal_cost_f_1241", align 8
  %"$$_literal_cost_f_1241_1243" = bitcast %Uint128* %"$_literal_cost_f_1241" to i8*
  %"$_literal_cost_call_1244" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_f_1241_1243")
  %"$gasadd_1245" = add i64 %"$_literal_cost_call_1244", 0
  %"$gasrem_1246" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1247" = icmp ugt i64 %"$gasadd_1245", %"$gasrem_1246"
  br i1 %"$gascmp_1247", label %"$out_of_gas_1248", label %"$have_gas_1249"

"$out_of_gas_1248":                               ; preds = %"$have_gas_1228"
  call void @_out_of_gas()
  br label %"$have_gas_1249"

"$have_gas_1249":                                 ; preds = %"$out_of_gas_1248", %"$have_gas_1228"
  %"$consume_1250" = sub i64 %"$gasrem_1246", %"$gasadd_1245"
  store i64 %"$consume_1250", i64* @_gasrem, align 8
  %"$gasrem_1251" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1252" = icmp ugt i64 1, %"$gasrem_1251"
  br i1 %"$gascmp_1252", label %"$out_of_gas_1253", label %"$have_gas_1254"

"$out_of_gas_1253":                               ; preds = %"$have_gas_1249"
  call void @_out_of_gas()
  br label %"$have_gas_1254"

"$have_gas_1254":                                 ; preds = %"$out_of_gas_1253", %"$have_gas_1249"
  %"$consume_1255" = sub i64 %"$gasrem_1251", 1
  store i64 %"$consume_1255", i64* @_gasrem, align 8
  %f_res = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %f_res, metadata !273, metadata !DIExpression()), !dbg !274
  %"$gasrem_1256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1257" = icmp ugt i64 1, %"$gasrem_1256"
  br i1 %"$gascmp_1257", label %"$out_of_gas_1258", label %"$have_gas_1259"

"$out_of_gas_1258":                               ; preds = %"$have_gas_1254"
  call void @_out_of_gas()
  br label %"$have_gas_1259"

"$have_gas_1259":                                 ; preds = %"$out_of_gas_1258", %"$have_gas_1254"
  %"$consume_1260" = sub i64 %"$gasrem_1256", 1
  store i64 %"$consume_1260", i64* @_gasrem, align 8
  %"$f_1261" = load %Uint128, %Uint128* %f, align 8
  %"$adtval_1262_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1262_salloc" = call i8* @_salloc(i8* %"$adtval_1262_load", i64 17)
  %"$adtval_1262" = bitcast i8* %"$adtval_1262_salloc" to %CName_Some_Uint128*
  %"$adtgep_1263" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1262", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1263", align 1
  %"$adtgep_1264" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1262", i32 0, i32 1
  store %Uint128 %"$f_1261", %Uint128* %"$adtgep_1264", align 8
  %"$adtptr_1265" = bitcast %CName_Some_Uint128* %"$adtval_1262" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1265", %TName_Option_Uint128** %f_res, align 8, !dbg !275
  %"$f_res_1266" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$$f_res_1266_1267" = bitcast %TName_Option_Uint128* %"$f_res_1266" to i8*
  %"$_literal_cost_call_1268" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i8* %"$$f_res_1266_1267")
  %"$gasrem_1269" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1270" = icmp ugt i64 %"$_literal_cost_call_1268", %"$gasrem_1269"
  br i1 %"$gascmp_1270", label %"$out_of_gas_1271", label %"$have_gas_1272"

"$out_of_gas_1271":                               ; preds = %"$have_gas_1259"
  call void @_out_of_gas()
  br label %"$have_gas_1272"

"$have_gas_1272":                                 ; preds = %"$out_of_gas_1271", %"$have_gas_1259"
  %"$consume_1273" = sub i64 %"$gasrem_1269", %"$_literal_cost_call_1268"
  store i64 %"$consume_1273", i64* @_gasrem, align 8
  %"$execptr_load_1274" = load i8*, i8** @_execptr, align 8
  %"$f_res_1276" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$update_value_1277" = bitcast %TName_Option_Uint128* %"$f_res_1276" to i8*
  call void @_update_field(i8* %"$execptr_load_1274", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_3_f_res_1275", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_1277"), !dbg !276
  %g = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %g, metadata !277, metadata !DIExpression()), !dbg !278
  %"$execptr_load_1279" = load i8*, i8** @_execptr, align 8
  %"$g_x_as_address_1280" = alloca [20 x i8], align 1
  %"$x_as_address_1281" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1281", [20 x i8]* %"$g_x_as_address_1280", align 1
  %"$g_call_1282" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1279", [20 x i8]* %"$g_x_as_address_1280", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_1278", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i32 0, i8* null, i32 1), !dbg !278
  %"$g_1283" = bitcast i8* %"$g_call_1282" to %TName_Bool*
  store %TName_Bool* %"$g_1283", %TName_Bool** %g, align 8
  %"$g_1284" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$$g_1284_1285" = bitcast %TName_Bool* %"$g_1284" to i8*
  %"$_literal_cost_call_1286" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i8* %"$$g_1284_1285")
  %"$gasadd_1287" = add i64 %"$_literal_cost_call_1286", 0
  %"$gasrem_1288" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1289" = icmp ugt i64 %"$gasadd_1287", %"$gasrem_1288"
  br i1 %"$gascmp_1289", label %"$out_of_gas_1290", label %"$have_gas_1291"

"$out_of_gas_1290":                               ; preds = %"$have_gas_1272"
  call void @_out_of_gas()
  br label %"$have_gas_1291"

"$have_gas_1291":                                 ; preds = %"$out_of_gas_1290", %"$have_gas_1272"
  %"$consume_1292" = sub i64 %"$gasrem_1288", %"$gasadd_1287"
  store i64 %"$consume_1292", i64* @_gasrem, align 8
  %"$gasrem_1293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1294" = icmp ugt i64 1, %"$gasrem_1293"
  br i1 %"$gascmp_1294", label %"$out_of_gas_1295", label %"$have_gas_1296"

"$out_of_gas_1295":                               ; preds = %"$have_gas_1291"
  call void @_out_of_gas()
  br label %"$have_gas_1296"

"$have_gas_1296":                                 ; preds = %"$out_of_gas_1295", %"$have_gas_1291"
  %"$consume_1297" = sub i64 %"$gasrem_1293", 1
  store i64 %"$consume_1297", i64* @_gasrem, align 8
  %g_res = alloca %TName_Option_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Bool** %g_res, metadata !279, metadata !DIExpression()), !dbg !280
  %"$gasrem_1298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1299" = icmp ugt i64 1, %"$gasrem_1298"
  br i1 %"$gascmp_1299", label %"$out_of_gas_1300", label %"$have_gas_1301"

"$out_of_gas_1300":                               ; preds = %"$have_gas_1296"
  call void @_out_of_gas()
  br label %"$have_gas_1301"

"$have_gas_1301":                                 ; preds = %"$out_of_gas_1300", %"$have_gas_1296"
  %"$consume_1302" = sub i64 %"$gasrem_1298", 1
  store i64 %"$consume_1302", i64* @_gasrem, align 8
  %"$g_1303" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$adtval_1304_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1304_salloc" = call i8* @_salloc(i8* %"$adtval_1304_load", i64 9)
  %"$adtval_1304" = bitcast i8* %"$adtval_1304_salloc" to %CName_Some_Bool*
  %"$adtgep_1305" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1304", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1305", align 1
  %"$adtgep_1306" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1304", i32 0, i32 1
  store %TName_Bool* %"$g_1303", %TName_Bool** %"$adtgep_1306", align 8
  %"$adtptr_1307" = bitcast %CName_Some_Bool* %"$adtval_1304" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_1307", %TName_Option_Bool** %g_res, align 8, !dbg !281
  %"$g_res_1308" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$$g_res_1308_1309" = bitcast %TName_Option_Bool* %"$g_res_1308" to i8*
  %"$_literal_cost_call_1310" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i8* %"$$g_res_1308_1309")
  %"$gasrem_1311" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1312" = icmp ugt i64 %"$_literal_cost_call_1310", %"$gasrem_1311"
  br i1 %"$gascmp_1312", label %"$out_of_gas_1313", label %"$have_gas_1314"

"$out_of_gas_1313":                               ; preds = %"$have_gas_1301"
  call void @_out_of_gas()
  br label %"$have_gas_1314"

"$have_gas_1314":                                 ; preds = %"$out_of_gas_1313", %"$have_gas_1301"
  %"$consume_1315" = sub i64 %"$gasrem_1311", %"$_literal_cost_call_1310"
  store i64 %"$consume_1315", i64* @_gasrem, align 8
  %"$execptr_load_1316" = load i8*, i8** @_execptr, align 8
  %"$g_res_1318" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$update_value_1319" = bitcast %TName_Option_Bool* %"$g_res_1318" to i8*
  call void @_update_field(i8* %"$execptr_load_1316", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_3_g_res_1317", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i32 0, i8* null, i8* %"$update_value_1319"), !dbg !282
  br label %"$matchsucc_1181"

"$None_1320":                                     ; preds = %"$have_gas_1179"
  %"$x_cast_1321" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1182" to %"CName_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  br label %"$matchsucc_1181"

"$empty_default_1185":                            ; preds = %"$have_gas_1179"
  br label %"$matchsucc_1181"

"$matchsucc_1181":                                ; preds = %"$None_1320", %"$have_gas_1314", %"$empty_default_1185"
  ret void
}

define void @CastTest6_3(i8* %0) !dbg !283 {
entry:
  %"$_amount_1327" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1328" = bitcast i8* %"$_amount_1327" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1328", align 8
  %"$_origin_1329" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1330" = bitcast i8* %"$_origin_1329" to [20 x i8]*
  %"$_sender_1331" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1332" = bitcast i8* %"$_sender_1331" to [20 x i8]*
  %"$x_1333" = getelementptr i8, i8* %0, i32 56
  %"$x_1334" = bitcast i8* %"$x_1333" to [20 x i8]*
  call void @"$CastTest6_3_1163"(%Uint128 %_amount, [20 x i8]* %"$_origin_1330", [20 x i8]* %"$_sender_1332", [20 x i8]* %"$x_1334"), !dbg !284
  ret void
}

define internal void @"$CastTest6_4_1335"(%Uint128 %_amount, [20 x i8]* %"$_origin_1336", [20 x i8]* %"$_sender_1337", [20 x i8]* %"$x_1338") !dbg !285 {
entry:
  %"$x_1522" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$x_1338", [20 x i8]** %"$x_1522", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$x_1522", metadata !286, metadata !DIExpression()), !dbg !288
  %"$_sender_1521" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_1337", [20 x i8]** %"$_sender_1521", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_1521", metadata !289, metadata !DIExpression()), !dbg !290
  %"$_origin_1520" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_1336", [20 x i8]** %"$_origin_1520", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_1520", metadata !291, metadata !DIExpression()), !dbg !290
  %"$_amount_1519" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_1519", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_1519", metadata !292, metadata !DIExpression()), !dbg !290
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1336", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1337", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_1338", align 1
  %"$gasrem_1339" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1340" = icmp ugt i64 5, %"$gasrem_1339"
  br i1 %"$gascmp_1340", label %"$out_of_gas_1341", label %"$have_gas_1342"

"$out_of_gas_1341":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1342"

"$have_gas_1342":                                 ; preds = %"$out_of_gas_1341", %entry
  %"$consume_1343" = sub i64 %"$gasrem_1339", 5
  store i64 %"$consume_1343", i64* @_gasrem, align 8
  %x_cast = alloca %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, align 8
  call void @llvm.dbg.declare(metadata %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, metadata !293, metadata !DIExpression()), !dbg !294
  %"$execptr_load_1344" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_1345" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_1345", align 1
  %"$_dynamic_typecast_call_1346" = call i8* @_dynamic_typecast(i8* %"$execptr_load_1344", [20 x i8]* %"$_dynamic_typecast_x_1345", %_TyDescrTy_Typ* @"$TyDescr_Addr_74"), !dbg !294
  %"$_dynamic_typecast_1347" = bitcast i8* %"$_dynamic_typecast_call_1346" to %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  store %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$_dynamic_typecast_1347", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8, !dbg !294
  %"$gasrem_1348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1349" = icmp ugt i64 2, %"$gasrem_1348"
  br i1 %"$gascmp_1349", label %"$out_of_gas_1350", label %"$have_gas_1351"

"$out_of_gas_1350":                               ; preds = %"$have_gas_1342"
  call void @_out_of_gas()
  br label %"$have_gas_1351"

"$have_gas_1351":                                 ; preds = %"$out_of_gas_1350", %"$have_gas_1342"
  %"$consume_1352" = sub i64 %"$gasrem_1348", 2
  store i64 %"$consume_1352", i64* @_gasrem, align 8
  %"$x_cast_1354" = load %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$x_cast_tag_1355" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1354", i32 0, i32 0
  %"$x_cast_tag_1356" = load i8, i8* %"$x_cast_tag_1355", align 1
  switch i8 %"$x_cast_tag_1356", label %"$empty_default_1357" [
    i8 0, label %"$Some_1358"
    i8 1, label %"$None_1492"
  ], !dbg !295

"$Some_1358":                                     ; preds = %"$have_gas_1351"
  %"$x_cast_1359" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1354" to %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  %"$x_as_address_gep_1360" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1359", i32 0, i32 1
  %"$x_as_address_load_1361" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_1360", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_1361", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %bal, metadata !296, metadata !DIExpression()), !dbg !299
  %"$execptr_load_1363" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_1364" = alloca [20 x i8], align 1
  %"$x_as_address_1365" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1365", [20 x i8]* %"$bal_x_as_address_1364", align 1
  %"$bal_call_1366" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1363", [20 x i8]* %"$bal_x_as_address_1364", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_1362", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1), !dbg !299
  %"$bal_1367" = bitcast i8* %"$bal_call_1366" to %Uint128*
  %"$bal_1368" = load %Uint128, %Uint128* %"$bal_1367", align 8
  store %Uint128 %"$bal_1368", %Uint128* %bal, align 8
  %"$_literal_cost_bal_1369" = alloca %Uint128, align 8
  %"$bal_1370" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_1370", %Uint128* %"$_literal_cost_bal_1369", align 8
  %"$$_literal_cost_bal_1369_1371" = bitcast %Uint128* %"$_literal_cost_bal_1369" to i8*
  %"$_literal_cost_call_1372" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_1369_1371")
  %"$gasadd_1373" = add i64 %"$_literal_cost_call_1372", 0
  %"$gasrem_1374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1375" = icmp ugt i64 %"$gasadd_1373", %"$gasrem_1374"
  br i1 %"$gascmp_1375", label %"$out_of_gas_1376", label %"$have_gas_1377"

"$out_of_gas_1376":                               ; preds = %"$Some_1358"
  call void @_out_of_gas()
  br label %"$have_gas_1377"

"$have_gas_1377":                                 ; preds = %"$out_of_gas_1376", %"$Some_1358"
  %"$consume_1378" = sub i64 %"$gasrem_1374", %"$gasadd_1373"
  store i64 %"$consume_1378", i64* @_gasrem, align 8
  %"$gasrem_1379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1380" = icmp ugt i64 1, %"$gasrem_1379"
  br i1 %"$gascmp_1380", label %"$out_of_gas_1381", label %"$have_gas_1382"

"$out_of_gas_1381":                               ; preds = %"$have_gas_1377"
  call void @_out_of_gas()
  br label %"$have_gas_1382"

"$have_gas_1382":                                 ; preds = %"$out_of_gas_1381", %"$have_gas_1377"
  %"$consume_1383" = sub i64 %"$gasrem_1379", 1
  store i64 %"$consume_1383", i64* @_gasrem, align 8
  %bal_res = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %bal_res, metadata !300, metadata !DIExpression()), !dbg !301
  %"$gasrem_1384" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1385" = icmp ugt i64 1, %"$gasrem_1384"
  br i1 %"$gascmp_1385", label %"$out_of_gas_1386", label %"$have_gas_1387"

"$out_of_gas_1386":                               ; preds = %"$have_gas_1382"
  call void @_out_of_gas()
  br label %"$have_gas_1387"

"$have_gas_1387":                                 ; preds = %"$out_of_gas_1386", %"$have_gas_1382"
  %"$consume_1388" = sub i64 %"$gasrem_1384", 1
  store i64 %"$consume_1388", i64* @_gasrem, align 8
  %"$bal_1389" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_1390_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1390_salloc" = call i8* @_salloc(i8* %"$adtval_1390_load", i64 17)
  %"$adtval_1390" = bitcast i8* %"$adtval_1390_salloc" to %CName_Some_Uint128*
  %"$adtgep_1391" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1390", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1391", align 1
  %"$adtgep_1392" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1390", i32 0, i32 1
  store %Uint128 %"$bal_1389", %Uint128* %"$adtgep_1392", align 8
  %"$adtptr_1393" = bitcast %CName_Some_Uint128* %"$adtval_1390" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1393", %TName_Option_Uint128** %bal_res, align 8, !dbg !302
  %"$bal_res_1394" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$$bal_res_1394_1395" = bitcast %TName_Option_Uint128* %"$bal_res_1394" to i8*
  %"$_literal_cost_call_1396" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i8* %"$$bal_res_1394_1395")
  %"$gasrem_1397" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1398" = icmp ugt i64 %"$_literal_cost_call_1396", %"$gasrem_1397"
  br i1 %"$gascmp_1398", label %"$out_of_gas_1399", label %"$have_gas_1400"

"$out_of_gas_1399":                               ; preds = %"$have_gas_1387"
  call void @_out_of_gas()
  br label %"$have_gas_1400"

"$have_gas_1400":                                 ; preds = %"$out_of_gas_1399", %"$have_gas_1387"
  %"$consume_1401" = sub i64 %"$gasrem_1397", %"$_literal_cost_call_1396"
  store i64 %"$consume_1401", i64* @_gasrem, align 8
  %"$execptr_load_1402" = load i8*, i8** @_execptr, align 8
  %"$bal_res_1404" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$update_value_1405" = bitcast %TName_Option_Uint128* %"$bal_res_1404" to i8*
  call void @_update_field(i8* %"$execptr_load_1402", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_4_bal_res_1403", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_1405"), !dbg !303
  %f = alloca %Uint128, align 8
  call void @llvm.dbg.declare(metadata %Uint128* %f, metadata !304, metadata !DIExpression()), !dbg !305
  %"$execptr_load_1407" = load i8*, i8** @_execptr, align 8
  %"$f_x_as_address_1408" = alloca [20 x i8], align 1
  %"$x_as_address_1409" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1409", [20 x i8]* %"$f_x_as_address_1408", align 1
  %"$f_call_1410" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1407", [20 x i8]* %"$f_x_as_address_1408", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_1406", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1), !dbg !305
  %"$f_1411" = bitcast i8* %"$f_call_1410" to %Uint128*
  %"$f_1412" = load %Uint128, %Uint128* %"$f_1411", align 8
  store %Uint128 %"$f_1412", %Uint128* %f, align 8
  %"$_literal_cost_f_1413" = alloca %Uint128, align 8
  %"$f_1414" = load %Uint128, %Uint128* %f, align 8
  store %Uint128 %"$f_1414", %Uint128* %"$_literal_cost_f_1413", align 8
  %"$$_literal_cost_f_1413_1415" = bitcast %Uint128* %"$_literal_cost_f_1413" to i8*
  %"$_literal_cost_call_1416" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_f_1413_1415")
  %"$gasadd_1417" = add i64 %"$_literal_cost_call_1416", 0
  %"$gasrem_1418" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1419" = icmp ugt i64 %"$gasadd_1417", %"$gasrem_1418"
  br i1 %"$gascmp_1419", label %"$out_of_gas_1420", label %"$have_gas_1421"

"$out_of_gas_1420":                               ; preds = %"$have_gas_1400"
  call void @_out_of_gas()
  br label %"$have_gas_1421"

"$have_gas_1421":                                 ; preds = %"$out_of_gas_1420", %"$have_gas_1400"
  %"$consume_1422" = sub i64 %"$gasrem_1418", %"$gasadd_1417"
  store i64 %"$consume_1422", i64* @_gasrem, align 8
  %"$gasrem_1423" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1424" = icmp ugt i64 1, %"$gasrem_1423"
  br i1 %"$gascmp_1424", label %"$out_of_gas_1425", label %"$have_gas_1426"

"$out_of_gas_1425":                               ; preds = %"$have_gas_1421"
  call void @_out_of_gas()
  br label %"$have_gas_1426"

"$have_gas_1426":                                 ; preds = %"$out_of_gas_1425", %"$have_gas_1421"
  %"$consume_1427" = sub i64 %"$gasrem_1423", 1
  store i64 %"$consume_1427", i64* @_gasrem, align 8
  %f_res = alloca %TName_Option_Uint128*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Uint128** %f_res, metadata !306, metadata !DIExpression()), !dbg !307
  %"$gasrem_1428" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1429" = icmp ugt i64 1, %"$gasrem_1428"
  br i1 %"$gascmp_1429", label %"$out_of_gas_1430", label %"$have_gas_1431"

"$out_of_gas_1430":                               ; preds = %"$have_gas_1426"
  call void @_out_of_gas()
  br label %"$have_gas_1431"

"$have_gas_1431":                                 ; preds = %"$out_of_gas_1430", %"$have_gas_1426"
  %"$consume_1432" = sub i64 %"$gasrem_1428", 1
  store i64 %"$consume_1432", i64* @_gasrem, align 8
  %"$f_1433" = load %Uint128, %Uint128* %f, align 8
  %"$adtval_1434_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1434_salloc" = call i8* @_salloc(i8* %"$adtval_1434_load", i64 17)
  %"$adtval_1434" = bitcast i8* %"$adtval_1434_salloc" to %CName_Some_Uint128*
  %"$adtgep_1435" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1434", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1435", align 1
  %"$adtgep_1436" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1434", i32 0, i32 1
  store %Uint128 %"$f_1433", %Uint128* %"$adtgep_1436", align 8
  %"$adtptr_1437" = bitcast %CName_Some_Uint128* %"$adtval_1434" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1437", %TName_Option_Uint128** %f_res, align 8, !dbg !308
  %"$f_res_1438" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$$f_res_1438_1439" = bitcast %TName_Option_Uint128* %"$f_res_1438" to i8*
  %"$_literal_cost_call_1440" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i8* %"$$f_res_1438_1439")
  %"$gasrem_1441" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1442" = icmp ugt i64 %"$_literal_cost_call_1440", %"$gasrem_1441"
  br i1 %"$gascmp_1442", label %"$out_of_gas_1443", label %"$have_gas_1444"

"$out_of_gas_1443":                               ; preds = %"$have_gas_1431"
  call void @_out_of_gas()
  br label %"$have_gas_1444"

"$have_gas_1444":                                 ; preds = %"$out_of_gas_1443", %"$have_gas_1431"
  %"$consume_1445" = sub i64 %"$gasrem_1441", %"$_literal_cost_call_1440"
  store i64 %"$consume_1445", i64* @_gasrem, align 8
  %"$execptr_load_1446" = load i8*, i8** @_execptr, align 8
  %"$f_res_1448" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$update_value_1449" = bitcast %TName_Option_Uint128* %"$f_res_1448" to i8*
  call void @_update_field(i8* %"$execptr_load_1446", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_4_f_res_1447", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_1449"), !dbg !309
  %g = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %g, metadata !310, metadata !DIExpression()), !dbg !311
  %"$execptr_load_1451" = load i8*, i8** @_execptr, align 8
  %"$g_x_as_address_1452" = alloca [20 x i8], align 1
  %"$x_as_address_1453" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1453", [20 x i8]* %"$g_x_as_address_1452", align 1
  %"$g_call_1454" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1451", [20 x i8]* %"$g_x_as_address_1452", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_1450", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i32 0, i8* null, i32 1), !dbg !311
  %"$g_1455" = bitcast i8* %"$g_call_1454" to %TName_Bool*
  store %TName_Bool* %"$g_1455", %TName_Bool** %g, align 8
  %"$g_1456" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$$g_1456_1457" = bitcast %TName_Bool* %"$g_1456" to i8*
  %"$_literal_cost_call_1458" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i8* %"$$g_1456_1457")
  %"$gasadd_1459" = add i64 %"$_literal_cost_call_1458", 0
  %"$gasrem_1460" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1461" = icmp ugt i64 %"$gasadd_1459", %"$gasrem_1460"
  br i1 %"$gascmp_1461", label %"$out_of_gas_1462", label %"$have_gas_1463"

"$out_of_gas_1462":                               ; preds = %"$have_gas_1444"
  call void @_out_of_gas()
  br label %"$have_gas_1463"

"$have_gas_1463":                                 ; preds = %"$out_of_gas_1462", %"$have_gas_1444"
  %"$consume_1464" = sub i64 %"$gasrem_1460", %"$gasadd_1459"
  store i64 %"$consume_1464", i64* @_gasrem, align 8
  %"$gasrem_1465" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1466" = icmp ugt i64 1, %"$gasrem_1465"
  br i1 %"$gascmp_1466", label %"$out_of_gas_1467", label %"$have_gas_1468"

"$out_of_gas_1467":                               ; preds = %"$have_gas_1463"
  call void @_out_of_gas()
  br label %"$have_gas_1468"

"$have_gas_1468":                                 ; preds = %"$out_of_gas_1467", %"$have_gas_1463"
  %"$consume_1469" = sub i64 %"$gasrem_1465", 1
  store i64 %"$consume_1469", i64* @_gasrem, align 8
  %g_res = alloca %TName_Option_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Bool** %g_res, metadata !312, metadata !DIExpression()), !dbg !313
  %"$gasrem_1470" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1471" = icmp ugt i64 1, %"$gasrem_1470"
  br i1 %"$gascmp_1471", label %"$out_of_gas_1472", label %"$have_gas_1473"

"$out_of_gas_1472":                               ; preds = %"$have_gas_1468"
  call void @_out_of_gas()
  br label %"$have_gas_1473"

"$have_gas_1473":                                 ; preds = %"$out_of_gas_1472", %"$have_gas_1468"
  %"$consume_1474" = sub i64 %"$gasrem_1470", 1
  store i64 %"$consume_1474", i64* @_gasrem, align 8
  %"$g_1475" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$adtval_1476_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1476_salloc" = call i8* @_salloc(i8* %"$adtval_1476_load", i64 9)
  %"$adtval_1476" = bitcast i8* %"$adtval_1476_salloc" to %CName_Some_Bool*
  %"$adtgep_1477" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1476", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1477", align 1
  %"$adtgep_1478" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1476", i32 0, i32 1
  store %TName_Bool* %"$g_1475", %TName_Bool** %"$adtgep_1478", align 8
  %"$adtptr_1479" = bitcast %CName_Some_Bool* %"$adtval_1476" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_1479", %TName_Option_Bool** %g_res, align 8, !dbg !314
  %"$g_res_1480" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$$g_res_1480_1481" = bitcast %TName_Option_Bool* %"$g_res_1480" to i8*
  %"$_literal_cost_call_1482" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i8* %"$$g_res_1480_1481")
  %"$gasrem_1483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1484" = icmp ugt i64 %"$_literal_cost_call_1482", %"$gasrem_1483"
  br i1 %"$gascmp_1484", label %"$out_of_gas_1485", label %"$have_gas_1486"

"$out_of_gas_1485":                               ; preds = %"$have_gas_1473"
  call void @_out_of_gas()
  br label %"$have_gas_1486"

"$have_gas_1486":                                 ; preds = %"$out_of_gas_1485", %"$have_gas_1473"
  %"$consume_1487" = sub i64 %"$gasrem_1483", %"$_literal_cost_call_1482"
  store i64 %"$consume_1487", i64* @_gasrem, align 8
  %"$execptr_load_1488" = load i8*, i8** @_execptr, align 8
  %"$g_res_1490" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$update_value_1491" = bitcast %TName_Option_Bool* %"$g_res_1490" to i8*
  call void @_update_field(i8* %"$execptr_load_1488", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_4_g_res_1489", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i32 0, i8* null, i8* %"$update_value_1491"), !dbg !315
  br label %"$matchsucc_1353"

"$None_1492":                                     ; preds = %"$have_gas_1351"
  %"$x_cast_1493" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1354" to %"CName_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  %"$gasrem_1494" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1495" = icmp ugt i64 1, %"$gasrem_1494"
  br i1 %"$gascmp_1495", label %"$out_of_gas_1496", label %"$have_gas_1497"

"$out_of_gas_1496":                               ; preds = %"$None_1492"
  call void @_out_of_gas()
  br label %"$have_gas_1497"

"$have_gas_1497":                                 ; preds = %"$out_of_gas_1496", %"$None_1492"
  %"$consume_1498" = sub i64 %"$gasrem_1494", 1
  store i64 %"$consume_1498", i64* @_gasrem, align 8
  %res = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %res, metadata !316, metadata !DIExpression()), !dbg !318
  %"$gasrem_1499" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1500" = icmp ugt i64 1, %"$gasrem_1499"
  br i1 %"$gascmp_1500", label %"$out_of_gas_1501", label %"$have_gas_1502"

"$out_of_gas_1501":                               ; preds = %"$have_gas_1497"
  call void @_out_of_gas()
  br label %"$have_gas_1502"

"$have_gas_1502":                                 ; preds = %"$out_of_gas_1501", %"$have_gas_1497"
  %"$consume_1503" = sub i64 %"$gasrem_1499", 1
  store i64 %"$consume_1503", i64* @_gasrem, align 8
  %"$adtval_1504_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1504_salloc" = call i8* @_salloc(i8* %"$adtval_1504_load", i64 1)
  %"$adtval_1504" = bitcast i8* %"$adtval_1504_salloc" to %CName_True*
  %"$adtgep_1505" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_1504", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1505", align 1
  %"$adtptr_1506" = bitcast %CName_True* %"$adtval_1504" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1506", %TName_Bool** %res, align 8, !dbg !319
  %"$res_1507" = load %TName_Bool*, %TName_Bool** %res, align 8
  %"$$res_1507_1508" = bitcast %TName_Bool* %"$res_1507" to i8*
  %"$_literal_cost_call_1509" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i8* %"$$res_1507_1508")
  %"$gasrem_1510" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1511" = icmp ugt i64 %"$_literal_cost_call_1509", %"$gasrem_1510"
  br i1 %"$gascmp_1511", label %"$out_of_gas_1512", label %"$have_gas_1513"

"$out_of_gas_1512":                               ; preds = %"$have_gas_1502"
  call void @_out_of_gas()
  br label %"$have_gas_1513"

"$have_gas_1513":                                 ; preds = %"$out_of_gas_1512", %"$have_gas_1502"
  %"$consume_1514" = sub i64 %"$gasrem_1510", %"$_literal_cost_call_1509"
  store i64 %"$consume_1514", i64* @_gasrem, align 8
  %"$execptr_load_1515" = load i8*, i8** @_execptr, align 8
  %"$res_1517" = load %TName_Bool*, %TName_Bool** %res, align 8
  %"$update_value_1518" = bitcast %TName_Bool* %"$res_1517" to i8*
  call void @_update_field(i8* %"$execptr_load_1515", i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$test_6_4_failed_cast_1516", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i32 0, i8* null, i8* %"$update_value_1518"), !dbg !320
  br label %"$matchsucc_1353"

"$empty_default_1357":                            ; preds = %"$have_gas_1351"
  br label %"$matchsucc_1353"

"$matchsucc_1353":                                ; preds = %"$have_gas_1513", %"$have_gas_1486", %"$empty_default_1357"
  ret void
}

define void @CastTest6_4(i8* %0) !dbg !321 {
entry:
  %"$_amount_1524" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1525" = bitcast i8* %"$_amount_1524" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1525", align 8
  %"$_origin_1526" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1527" = bitcast i8* %"$_origin_1526" to [20 x i8]*
  %"$_sender_1528" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1529" = bitcast i8* %"$_sender_1528" to [20 x i8]*
  %"$x_1530" = getelementptr i8, i8* %0, i32 56
  %"$x_1531" = bitcast i8* %"$x_1530" to [20 x i8]*
  call void @"$CastTest6_4_1335"(%Uint128 %_amount, [20 x i8]* %"$_origin_1527", [20 x i8]* %"$_sender_1529", [20 x i8]* %"$x_1531"), !dbg !322
  ret void
}

define internal void @"$CastTest7_1532"(%Uint128 %_amount, [20 x i8]* %"$_origin_1533", [20 x i8]* %"$_sender_1534", [20 x i8]* %"$x_1535") !dbg !323 {
entry:
  %"$x_1693" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$x_1535", [20 x i8]** %"$x_1693", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$x_1693", metadata !324, metadata !DIExpression()), !dbg !325
  %"$_sender_1692" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_sender_1534", [20 x i8]** %"$_sender_1692", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_sender_1692", metadata !326, metadata !DIExpression()), !dbg !327
  %"$_origin_1691" = alloca [20 x i8]*, align 8
  store [20 x i8]* %"$_origin_1533", [20 x i8]** %"$_origin_1691", align 8
  call void @llvm.dbg.declare(metadata [20 x i8]** %"$_origin_1691", metadata !328, metadata !DIExpression()), !dbg !327
  %"$_amount_1690" = alloca %Uint128, align 8
  store %Uint128 %_amount, %Uint128* %"$_amount_1690", align 8
  call void @llvm.dbg.declare(metadata %Uint128* %"$_amount_1690", metadata !329, metadata !DIExpression()), !dbg !327
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1533", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1534", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_1535", align 1
  %"$gasrem_1536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1537" = icmp ugt i64 4, %"$gasrem_1536"
  br i1 %"$gascmp_1537", label %"$out_of_gas_1538", label %"$have_gas_1539"

"$out_of_gas_1538":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1539"

"$have_gas_1539":                                 ; preds = %"$out_of_gas_1538", %entry
  %"$consume_1540" = sub i64 %"$gasrem_1536", 4
  store i64 %"$consume_1540", i64* @_gasrem, align 8
  %x_cast = alloca %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"*, align 8
  call void @llvm.dbg.declare(metadata %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"** %x_cast, metadata !330, metadata !DIExpression()), !dbg !333
  %"$execptr_load_1541" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_1542" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_1542", align 1
  %"$_dynamic_typecast_call_1543" = call i8* @_dynamic_typecast(i8* %"$execptr_load_1541", [20 x i8]* %"$_dynamic_typecast_x_1542", %_TyDescrTy_Typ* @"$TyDescr_Addr_71"), !dbg !333
  %"$_dynamic_typecast_1544" = bitcast i8* %"$_dynamic_typecast_call_1543" to %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"*
  store %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"* %"$_dynamic_typecast_1544", %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"** %x_cast, align 8, !dbg !333
  %"$gasrem_1545" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1546" = icmp ugt i64 2, %"$gasrem_1545"
  br i1 %"$gascmp_1546", label %"$out_of_gas_1547", label %"$have_gas_1548"

"$out_of_gas_1547":                               ; preds = %"$have_gas_1539"
  call void @_out_of_gas()
  br label %"$have_gas_1548"

"$have_gas_1548":                                 ; preds = %"$out_of_gas_1547", %"$have_gas_1539"
  %"$consume_1549" = sub i64 %"$gasrem_1545", 2
  store i64 %"$consume_1549", i64* @_gasrem, align 8
  %"$x_cast_1551" = load %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"*, %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"** %x_cast, align 8
  %"$x_cast_tag_1552" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end", %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"* %"$x_cast_1551", i32 0, i32 0
  %"$x_cast_tag_1553" = load i8, i8* %"$x_cast_tag_1552", align 1
  switch i8 %"$x_cast_tag_1553", label %"$empty_default_1554" [
    i8 0, label %"$Some_1555"
    i8 1, label %"$None_1688"
  ], !dbg !334

"$Some_1555":                                     ; preds = %"$have_gas_1548"
  %"$x_cast_1556" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"* %"$x_cast_1551" to %"CName_Some_ByStr20_with_contract_field_f_:_ByStr20_end"*
  %"$x_as_address_gep_1557" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_f_:_ByStr20_end", %"CName_Some_ByStr20_with_contract_field_f_:_ByStr20_end"* %"$x_cast_1556", i32 0, i32 1
  %"$x_as_address_load_1558" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_1557", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_1558", [20 x i8]* %x_as_address, align 1
  %f = alloca [20 x i8], align 1
  call void @llvm.dbg.declare(metadata [20 x i8]* %f, metadata !335, metadata !DIExpression()), !dbg !338
  %"$execptr_load_1560" = load i8*, i8** @_execptr, align 8
  %"$f_x_as_address_1561" = alloca [20 x i8], align 1
  %"$x_as_address_1562" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1562", [20 x i8]* %"$f_x_as_address_1561", align 1
  %"$f_call_1563" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1560", [20 x i8]* %"$f_x_as_address_1561", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_1559", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_54", i32 0, i8* null, i32 1), !dbg !338
  %"$f_1564" = bitcast i8* %"$f_call_1563" to [20 x i8]*
  %"$f_1565" = load [20 x i8], [20 x i8]* %"$f_1564", align 1
  store [20 x i8] %"$f_1565", [20 x i8]* %f, align 1
  %"$_literal_cost_f_1566" = alloca [20 x i8], align 1
  %"$f_1567" = load [20 x i8], [20 x i8]* %f, align 1
  store [20 x i8] %"$f_1567", [20 x i8]* %"$_literal_cost_f_1566", align 1
  %"$$_literal_cost_f_1566_1568" = bitcast [20 x i8]* %"$_literal_cost_f_1566" to i8*
  %"$_literal_cost_call_1569" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_54", i8* %"$$_literal_cost_f_1566_1568")
  %"$gasadd_1570" = add i64 %"$_literal_cost_call_1569", 0
  %"$gasrem_1571" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1572" = icmp ugt i64 %"$gasadd_1570", %"$gasrem_1571"
  br i1 %"$gascmp_1572", label %"$out_of_gas_1573", label %"$have_gas_1574"

"$out_of_gas_1573":                               ; preds = %"$Some_1555"
  call void @_out_of_gas()
  br label %"$have_gas_1574"

"$have_gas_1574":                                 ; preds = %"$out_of_gas_1573", %"$Some_1555"
  %"$consume_1575" = sub i64 %"$gasrem_1571", %"$gasadd_1570"
  store i64 %"$consume_1575", i64* @_gasrem, align 8
  %"$gasrem_1576" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1577" = icmp ugt i64 5, %"$gasrem_1576"
  br i1 %"$gascmp_1577", label %"$out_of_gas_1578", label %"$have_gas_1579"

"$out_of_gas_1578":                               ; preds = %"$have_gas_1574"
  call void @_out_of_gas()
  br label %"$have_gas_1579"

"$have_gas_1579":                                 ; preds = %"$out_of_gas_1578", %"$have_gas_1574"
  %"$consume_1580" = sub i64 %"$gasrem_1576", 5
  store i64 %"$consume_1580", i64* @_gasrem, align 8
  %f_cast = alloca %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*, align 8
  call void @llvm.dbg.declare(metadata %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"** %f_cast, metadata !339, metadata !DIExpression()), !dbg !342
  %"$execptr_load_1581" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_f_1582" = alloca [20 x i8], align 1
  %"$f_1583" = load [20 x i8], [20 x i8]* %f, align 1
  store [20 x i8] %"$f_1583", [20 x i8]* %"$_dynamic_typecast_f_1582", align 1
  %"$_dynamic_typecast_call_1584" = call i8* @_dynamic_typecast(i8* %"$execptr_load_1581", [20 x i8]* %"$_dynamic_typecast_f_1582", %_TyDescrTy_Typ* @"$TyDescr_Addr_70"), !dbg !342
  %"$_dynamic_typecast_1585" = bitcast i8* %"$_dynamic_typecast_call_1584" to %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*
  store %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* %"$_dynamic_typecast_1585", %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"** %f_cast, align 8, !dbg !342
  %"$gasrem_1586" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1587" = icmp ugt i64 2, %"$gasrem_1586"
  br i1 %"$gascmp_1587", label %"$out_of_gas_1588", label %"$have_gas_1589"

"$out_of_gas_1588":                               ; preds = %"$have_gas_1579"
  call void @_out_of_gas()
  br label %"$have_gas_1589"

"$have_gas_1589":                                 ; preds = %"$out_of_gas_1588", %"$have_gas_1579"
  %"$consume_1590" = sub i64 %"$gasrem_1586", 2
  store i64 %"$consume_1590", i64* @_gasrem, align 8
  %"$f_cast_1592" = load %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*, %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"** %f_cast, align 8
  %"$f_cast_tag_1593" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end", %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* %"$f_cast_1592", i32 0, i32 0
  %"$f_cast_tag_1594" = load i8, i8* %"$f_cast_tag_1593", align 1
  switch i8 %"$f_cast_tag_1594", label %"$empty_default_1595" [
    i8 0, label %"$Some_1596"
    i8 1, label %"$None_1686"
  ], !dbg !343

"$Some_1596":                                     ; preds = %"$have_gas_1589"
  %"$f_cast_1597" = bitcast %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* %"$f_cast_1592" to %"CName_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*
  %"$f_as_address_gep_1598" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end", %"CName_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* %"$f_cast_1597", i32 0, i32 1
  %"$f_as_address_load_1599" = load [20 x i8], [20 x i8]* %"$f_as_address_gep_1598", align 1
  %f_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$f_as_address_load_1599", [20 x i8]* %f_as_address, align 1
  %g = alloca %TName_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Bool** %g, metadata !344, metadata !DIExpression()), !dbg !347
  %"$execptr_load_1601" = load i8*, i8** @_execptr, align 8
  %"$g_f_as_address_1602" = alloca [20 x i8], align 1
  %"$f_as_address_1603" = load [20 x i8], [20 x i8]* %f_as_address, align 1
  store [20 x i8] %"$f_as_address_1603", [20 x i8]* %"$g_f_as_address_1602", align 1
  %"$g_call_1604" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1601", [20 x i8]* %"$g_f_as_address_1602", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_1600", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i32 0, i8* null, i32 1), !dbg !347
  %"$g_1605" = bitcast i8* %"$g_call_1604" to %TName_Bool*
  store %TName_Bool* %"$g_1605", %TName_Bool** %g, align 8
  %"$g_1606" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$$g_1606_1607" = bitcast %TName_Bool* %"$g_1606" to i8*
  %"$_literal_cost_call_1608" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i8* %"$$g_1606_1607")
  %"$gasadd_1609" = add i64 %"$_literal_cost_call_1608", 0
  %"$gasrem_1610" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1611" = icmp ugt i64 %"$gasadd_1609", %"$gasrem_1610"
  br i1 %"$gascmp_1611", label %"$out_of_gas_1612", label %"$have_gas_1613"

"$out_of_gas_1612":                               ; preds = %"$Some_1596"
  call void @_out_of_gas()
  br label %"$have_gas_1613"

"$have_gas_1613":                                 ; preds = %"$out_of_gas_1612", %"$Some_1596"
  %"$consume_1614" = sub i64 %"$gasrem_1610", %"$gasadd_1609"
  store i64 %"$consume_1614", i64* @_gasrem, align 8
  %"$gasrem_1615" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1616" = icmp ugt i64 1, %"$gasrem_1615"
  br i1 %"$gascmp_1616", label %"$out_of_gas_1617", label %"$have_gas_1618"

"$out_of_gas_1617":                               ; preds = %"$have_gas_1613"
  call void @_out_of_gas()
  br label %"$have_gas_1618"

"$have_gas_1618":                                 ; preds = %"$out_of_gas_1617", %"$have_gas_1613"
  %"$consume_1619" = sub i64 %"$gasrem_1615", 1
  store i64 %"$consume_1619", i64* @_gasrem, align 8
  %g_res = alloca %TName_Option_Bool*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Bool** %g_res, metadata !348, metadata !DIExpression()), !dbg !349
  %"$gasrem_1620" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1621" = icmp ugt i64 1, %"$gasrem_1620"
  br i1 %"$gascmp_1621", label %"$out_of_gas_1622", label %"$have_gas_1623"

"$out_of_gas_1622":                               ; preds = %"$have_gas_1618"
  call void @_out_of_gas()
  br label %"$have_gas_1623"

"$have_gas_1623":                                 ; preds = %"$out_of_gas_1622", %"$have_gas_1618"
  %"$consume_1624" = sub i64 %"$gasrem_1620", 1
  store i64 %"$consume_1624", i64* @_gasrem, align 8
  %"$g_1625" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$adtval_1626_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1626_salloc" = call i8* @_salloc(i8* %"$adtval_1626_load", i64 9)
  %"$adtval_1626" = bitcast i8* %"$adtval_1626_salloc" to %CName_Some_Bool*
  %"$adtgep_1627" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1626", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1627", align 1
  %"$adtgep_1628" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1626", i32 0, i32 1
  store %TName_Bool* %"$g_1625", %TName_Bool** %"$adtgep_1628", align 8
  %"$adtptr_1629" = bitcast %CName_Some_Bool* %"$adtval_1626" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_1629", %TName_Option_Bool** %g_res, align 8, !dbg !350
  %"$g_res_1630" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$$g_res_1630_1631" = bitcast %TName_Option_Bool* %"$g_res_1630" to i8*
  %"$_literal_cost_call_1632" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i8* %"$$g_res_1630_1631")
  %"$gasrem_1633" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1634" = icmp ugt i64 %"$_literal_cost_call_1632", %"$gasrem_1633"
  br i1 %"$gascmp_1634", label %"$out_of_gas_1635", label %"$have_gas_1636"

"$out_of_gas_1635":                               ; preds = %"$have_gas_1623"
  call void @_out_of_gas()
  br label %"$have_gas_1636"

"$have_gas_1636":                                 ; preds = %"$out_of_gas_1635", %"$have_gas_1623"
  %"$consume_1637" = sub i64 %"$gasrem_1633", %"$_literal_cost_call_1632"
  store i64 %"$consume_1637", i64* @_gasrem, align 8
  %"$execptr_load_1638" = load i8*, i8** @_execptr, align 8
  %"$g_res_1640" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$update_value_1641" = bitcast %TName_Option_Bool* %"$g_res_1640" to i8*
  call void @_update_field(i8* %"$execptr_load_1638", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_7_g_res_1639", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i32 0, i8* null, i8* %"$update_value_1641"), !dbg !351
  %h = alloca %Int256, align 8
  call void @llvm.dbg.declare(metadata %Int256* %h, metadata !352, metadata !DIExpression()), !dbg !354
  %"$execptr_load_1643" = load i8*, i8** @_execptr, align 8
  %"$h_f_as_address_1644" = alloca [20 x i8], align 1
  %"$f_as_address_1645" = load [20 x i8], [20 x i8]* %f_as_address, align 1
  store [20 x i8] %"$f_as_address_1645", [20 x i8]* %"$h_f_as_address_1644", align 1
  %"$h_call_1646" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1643", [20 x i8]* %"$h_f_as_address_1644", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$h_1642", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int256_36", i32 0, i8* null, i32 1), !dbg !354
  %"$h_1647" = bitcast i8* %"$h_call_1646" to %Int256*
  %"$h_1648" = load %Int256, %Int256* %"$h_1647", align 8
  store %Int256 %"$h_1648", %Int256* %h, align 8
  %"$_literal_cost_h_1649" = alloca %Int256, align 8
  %"$h_1650" = load %Int256, %Int256* %h, align 8
  store %Int256 %"$h_1650", %Int256* %"$_literal_cost_h_1649", align 8
  %"$$_literal_cost_h_1649_1651" = bitcast %Int256* %"$_literal_cost_h_1649" to i8*
  %"$_literal_cost_call_1652" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int256_36", i8* %"$$_literal_cost_h_1649_1651")
  %"$gasadd_1653" = add i64 %"$_literal_cost_call_1652", 0
  %"$gasrem_1654" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1655" = icmp ugt i64 %"$gasadd_1653", %"$gasrem_1654"
  br i1 %"$gascmp_1655", label %"$out_of_gas_1656", label %"$have_gas_1657"

"$out_of_gas_1656":                               ; preds = %"$have_gas_1636"
  call void @_out_of_gas()
  br label %"$have_gas_1657"

"$have_gas_1657":                                 ; preds = %"$out_of_gas_1656", %"$have_gas_1636"
  %"$consume_1658" = sub i64 %"$gasrem_1654", %"$gasadd_1653"
  store i64 %"$consume_1658", i64* @_gasrem, align 8
  %"$gasrem_1659" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1660" = icmp ugt i64 1, %"$gasrem_1659"
  br i1 %"$gascmp_1660", label %"$out_of_gas_1661", label %"$have_gas_1662"

"$out_of_gas_1661":                               ; preds = %"$have_gas_1657"
  call void @_out_of_gas()
  br label %"$have_gas_1662"

"$have_gas_1662":                                 ; preds = %"$out_of_gas_1661", %"$have_gas_1657"
  %"$consume_1663" = sub i64 %"$gasrem_1659", 1
  store i64 %"$consume_1663", i64* @_gasrem, align 8
  %h_res = alloca %TName_Option_Int256*, align 8
  call void @llvm.dbg.declare(metadata %TName_Option_Int256** %h_res, metadata !355, metadata !DIExpression()), !dbg !356
  %"$gasrem_1664" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1665" = icmp ugt i64 1, %"$gasrem_1664"
  br i1 %"$gascmp_1665", label %"$out_of_gas_1666", label %"$have_gas_1667"

"$out_of_gas_1666":                               ; preds = %"$have_gas_1662"
  call void @_out_of_gas()
  br label %"$have_gas_1667"

"$have_gas_1667":                                 ; preds = %"$out_of_gas_1666", %"$have_gas_1662"
  %"$consume_1668" = sub i64 %"$gasrem_1664", 1
  store i64 %"$consume_1668", i64* @_gasrem, align 8
  %"$h_1669" = load %Int256, %Int256* %h, align 8
  %"$adtval_1670_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1670_salloc" = call i8* @_salloc(i8* %"$adtval_1670_load", i64 33)
  %"$adtval_1670" = bitcast i8* %"$adtval_1670_salloc" to %CName_Some_Int256*
  %"$adtgep_1671" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$adtval_1670", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1671", align 1
  %"$adtgep_1672" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$adtval_1670", i32 0, i32 1
  store %Int256 %"$h_1669", %Int256* %"$adtgep_1672", align 8
  %"$adtptr_1673" = bitcast %CName_Some_Int256* %"$adtval_1670" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$adtptr_1673", %TName_Option_Int256** %h_res, align 8, !dbg !357
  %"$h_res_1674" = load %TName_Option_Int256*, %TName_Option_Int256** %h_res, align 8
  %"$$h_res_1674_1675" = bitcast %TName_Option_Int256* %"$h_res_1674" to i8*
  %"$_literal_cost_call_1676" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int256_61", i8* %"$$h_res_1674_1675")
  %"$gasrem_1677" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1678" = icmp ugt i64 %"$_literal_cost_call_1676", %"$gasrem_1677"
  br i1 %"$gascmp_1678", label %"$out_of_gas_1679", label %"$have_gas_1680"

"$out_of_gas_1679":                               ; preds = %"$have_gas_1667"
  call void @_out_of_gas()
  br label %"$have_gas_1680"

"$have_gas_1680":                                 ; preds = %"$out_of_gas_1679", %"$have_gas_1667"
  %"$consume_1681" = sub i64 %"$gasrem_1677", %"$_literal_cost_call_1676"
  store i64 %"$consume_1681", i64* @_gasrem, align 8
  %"$execptr_load_1682" = load i8*, i8** @_execptr, align 8
  %"$h_res_1684" = load %TName_Option_Int256*, %TName_Option_Int256** %h_res, align 8
  %"$update_value_1685" = bitcast %TName_Option_Int256* %"$h_res_1684" to i8*
  call void @_update_field(i8* %"$execptr_load_1682", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_7_h_res_1683", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int256_61", i32 0, i8* null, i8* %"$update_value_1685"), !dbg !358
  br label %"$matchsucc_1591"

"$None_1686":                                     ; preds = %"$have_gas_1589"
  %"$f_cast_1687" = bitcast %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* %"$f_cast_1592" to %"CName_None_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*
  br label %"$matchsucc_1591"

"$empty_default_1595":                            ; preds = %"$have_gas_1589"
  br label %"$matchsucc_1591"

"$matchsucc_1591":                                ; preds = %"$None_1686", %"$have_gas_1680", %"$empty_default_1595"
  br label %"$matchsucc_1550"

"$None_1688":                                     ; preds = %"$have_gas_1548"
  %"$x_cast_1689" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"* %"$x_cast_1551" to %"CName_None_ByStr20_with_contract_field_f_:_ByStr20_end"*
  br label %"$matchsucc_1550"

"$empty_default_1554":                            ; preds = %"$have_gas_1548"
  br label %"$matchsucc_1550"

"$matchsucc_1550":                                ; preds = %"$None_1688", %"$matchsucc_1591", %"$empty_default_1554"
  ret void
}

define void @CastTest7(i8* %0) !dbg !359 {
entry:
  %"$_amount_1695" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1696" = bitcast i8* %"$_amount_1695" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1696", align 8
  %"$_origin_1697" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1698" = bitcast i8* %"$_origin_1697" to [20 x i8]*
  %"$_sender_1699" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1700" = bitcast i8* %"$_sender_1699" to [20 x i8]*
  %"$x_1701" = getelementptr i8, i8* %0, i32 56
  %"$x_1702" = bitcast i8* %"$x_1701" to [20 x i8]*
  call void @"$CastTest7_1532"(%Uint128 %_amount, [20 x i8]* %"$_origin_1698", [20 x i8]* %"$_sender_1700", [20 x i8]* %"$x_1702"), !dbg !360
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false)
!2 = !DIFile(filename: "type_casts.scilla", directory: "codegen/contr")
!3 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!4 = !DIFile(filename: ".", directory: ".")
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !{}
!9 = !DILocation(line: 0, scope: !3)
!10 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !4, file: !4, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!11 = !DILocalVariable(name: "$test_1_res_1", scope: !10, file: !2, line: 9, type: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (ByStr20 with end)", baseType: !13, size: 8, align: 8, dwarfAddressSpace: 0)
!13 = !DIBasicType(name: "Option (ByStr20 with end)", size: 8)
!14 = !DILocation(line: 9, column: 7, scope: !10)
!15 = !DILocation(line: 9, column: 48, scope: !10)
!16 = !DILocalVariable(name: "$test_2_res_2", scope: !10, file: !2, line: 10, type: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (ByStr20 with contract end)", baseType: !18, size: 8, align: 8, dwarfAddressSpace: 0)
!18 = !DIBasicType(name: "Option (ByStr20 with contract end)", size: 8)
!19 = !DILocation(line: 10, column: 7, scope: !10)
!20 = !DILocation(line: 10, column: 57, scope: !10)
!21 = !DILocalVariable(name: "$test_3_res_3", scope: !10, file: !2, line: 11, type: !17)
!22 = !DILocation(line: 11, column: 7, scope: !10)
!23 = !DILocation(line: 11, column: 57, scope: !10)
!24 = !DILocalVariable(name: "$test_4_res_4", scope: !10, file: !2, line: 12, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (Uint128)", baseType: !26, size: 8, align: 8, dwarfAddressSpace: 0)
!26 = !DIBasicType(name: "Option (Uint128)", size: 8)
!27 = !DILocation(line: 12, column: 7, scope: !10)
!28 = !DILocation(line: 12, column: 37, scope: !10)
!29 = !DILocalVariable(name: "$test_5_1_res_5", scope: !10, file: !2, line: 13, type: !25)
!30 = !DILocation(line: 13, column: 7, scope: !10)
!31 = !DILocation(line: 13, column: 39, scope: !10)
!32 = !DILocalVariable(name: "$test_5_2_res_6", scope: !10, file: !2, line: 14, type: !25)
!33 = !DILocation(line: 14, column: 7, scope: !10)
!34 = !DILocation(line: 14, column: 39, scope: !10)
!35 = !DILocalVariable(name: "$test_6_1_bal_res_7", scope: !10, file: !2, line: 15, type: !25)
!36 = !DILocation(line: 15, column: 7, scope: !10)
!37 = !DILocation(line: 15, column: 43, scope: !10)
!38 = !DILocalVariable(name: "$test_6_1_f_res_8", scope: !10, file: !2, line: 16, type: !25)
!39 = !DILocation(line: 16, column: 7, scope: !10)
!40 = !DILocation(line: 16, column: 41, scope: !10)
!41 = !DILocalVariable(name: "$test_6_1_g_res_9", scope: !10, file: !2, line: 17, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (Bool)", baseType: !43, size: 8, align: 8, dwarfAddressSpace: 0)
!43 = !DIBasicType(name: "Option (Bool)", size: 8)
!44 = !DILocation(line: 17, column: 7, scope: !10)
!45 = !DILocation(line: 17, column: 38, scope: !10)
!46 = !DILocalVariable(name: "$test_6_2_bal_res_10", scope: !10, file: !2, line: 18, type: !25)
!47 = !DILocation(line: 18, column: 7, scope: !10)
!48 = !DILocation(line: 18, column: 43, scope: !10)
!49 = !DILocalVariable(name: "$test_6_2_f_res_11", scope: !10, file: !2, line: 19, type: !25)
!50 = !DILocation(line: 19, column: 7, scope: !10)
!51 = !DILocation(line: 19, column: 41, scope: !10)
!52 = !DILocalVariable(name: "$test_6_2_g_res_12", scope: !10, file: !2, line: 20, type: !42)
!53 = !DILocation(line: 20, column: 7, scope: !10)
!54 = !DILocation(line: 20, column: 38, scope: !10)
!55 = !DILocalVariable(name: "$test_6_3_bal_res_13", scope: !10, file: !2, line: 21, type: !25)
!56 = !DILocation(line: 21, column: 7, scope: !10)
!57 = !DILocation(line: 21, column: 43, scope: !10)
!58 = !DILocalVariable(name: "$test_6_3_f_res_14", scope: !10, file: !2, line: 22, type: !25)
!59 = !DILocation(line: 22, column: 7, scope: !10)
!60 = !DILocation(line: 22, column: 41, scope: !10)
!61 = !DILocalVariable(name: "$test_6_3_g_res_15", scope: !10, file: !2, line: 23, type: !42)
!62 = !DILocation(line: 23, column: 7, scope: !10)
!63 = !DILocation(line: 23, column: 38, scope: !10)
!64 = !DILocalVariable(name: "$test_6_4_bal_res_16", scope: !10, file: !2, line: 24, type: !25)
!65 = !DILocation(line: 24, column: 7, scope: !10)
!66 = !DILocation(line: 24, column: 43, scope: !10)
!67 = !DILocalVariable(name: "$test_6_4_f_res_17", scope: !10, file: !2, line: 25, type: !25)
!68 = !DILocation(line: 25, column: 7, scope: !10)
!69 = !DILocation(line: 25, column: 41, scope: !10)
!70 = !DILocalVariable(name: "$test_6_4_g_res_18", scope: !10, file: !2, line: 26, type: !42)
!71 = !DILocation(line: 26, column: 7, scope: !10)
!72 = !DILocation(line: 26, column: 38, scope: !10)
!73 = !DILocalVariable(name: "$test_6_4_failed_cast_19", scope: !10, file: !2, line: 27, type: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Bool", baseType: !75, size: 8, align: 8, dwarfAddressSpace: 0)
!75 = !DIBasicType(name: "Bool", size: 8)
!76 = !DILocation(line: 27, column: 7, scope: !10)
!77 = !DILocation(line: 27, column: 37, scope: !10)
!78 = !DILocalVariable(name: "$test_7_g_res_20", scope: !10, file: !2, line: 28, type: !42)
!79 = !DILocation(line: 28, column: 7, scope: !10)
!80 = !DILocation(line: 28, column: 36, scope: !10)
!81 = !DILocalVariable(name: "$test_7_h_res_21", scope: !10, file: !2, line: 29, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (Int256)", baseType: !83, size: 8, align: 8, dwarfAddressSpace: 0)
!83 = !DIBasicType(name: "Option (Int256)", size: 8)
!84 = !DILocation(line: 29, column: 7, scope: !10)
!85 = !DILocation(line: 29, column: 38, scope: !10)
!86 = distinct !DISubprogram(name: "CastTest1", linkageName: "CastTest1", scope: !2, file: !2, line: 31, type: !5, scopeLine: 31, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!87 = !DILocalVariable(name: "x", scope: !86, file: !2, line: 31, type: !88)
!88 = !DIBasicType(name: "ByStr20 with contract end", size: 20)
!89 = !DILocation(line: 31, column: 22, scope: !86)
!90 = !DILocalVariable(name: "_sender", scope: !86, file: !2, line: 31, type: !91)
!91 = !DIBasicType(name: "ByStr20 with end", size: 20)
!92 = !DILocation(line: 31, column: 12, scope: !86)
!93 = !DILocalVariable(name: "_origin", scope: !86, file: !2, line: 31, type: !91)
!94 = !DILocalVariable(name: "_amount", scope: !86, file: !2, line: 31, type: !95)
!95 = !DIBasicType(name: "Uint128", size: 16)
!96 = !DILocalVariable(name: "res", scope: !86, file: !2, line: 33, type: !12)
!97 = !DILocation(line: 33, column: 3, scope: !86)
!98 = !DILocation(line: 34, column: 3, scope: !86)
!99 = distinct !DISubprogram(name: "CastTest1", linkageName: "CastTest1", scope: !2, file: !2, line: 31, type: !5, scopeLine: 31, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!100 = !DILocation(line: 31, column: 12, scope: !99)
!101 = distinct !DISubprogram(name: "CastTest2", linkageName: "CastTest2", scope: !2, file: !2, line: 37, type: !5, scopeLine: 37, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!102 = !DILocalVariable(name: "x", scope: !101, file: !2, line: 37, type: !88)
!103 = !DILocation(line: 37, column: 22, scope: !101)
!104 = !DILocalVariable(name: "_sender", scope: !101, file: !2, line: 37, type: !91)
!105 = !DILocation(line: 37, column: 12, scope: !101)
!106 = !DILocalVariable(name: "_origin", scope: !101, file: !2, line: 37, type: !91)
!107 = !DILocalVariable(name: "_amount", scope: !101, file: !2, line: 37, type: !95)
!108 = !DILocalVariable(name: "res", scope: !101, file: !2, line: 39, type: !17)
!109 = !DILocation(line: 39, column: 3, scope: !101)
!110 = !DILocation(line: 40, column: 3, scope: !101)
!111 = distinct !DISubprogram(name: "CastTest2", linkageName: "CastTest2", scope: !2, file: !2, line: 37, type: !5, scopeLine: 37, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!112 = !DILocation(line: 37, column: 12, scope: !111)
!113 = distinct !DISubprogram(name: "CastTest3", linkageName: "CastTest3", scope: !2, file: !2, line: 43, type: !5, scopeLine: 43, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!114 = !DILocalVariable(name: "x", scope: !113, file: !2, line: 43, type: !88)
!115 = !DILocation(line: 43, column: 22, scope: !113)
!116 = !DILocalVariable(name: "_sender", scope: !113, file: !2, line: 43, type: !91)
!117 = !DILocation(line: 43, column: 12, scope: !113)
!118 = !DILocalVariable(name: "_origin", scope: !113, file: !2, line: 43, type: !91)
!119 = !DILocalVariable(name: "_amount", scope: !113, file: !2, line: 43, type: !95)
!120 = !DILocalVariable(name: "res", scope: !113, file: !2, line: 45, type: !17)
!121 = !DILocation(line: 45, column: 3, scope: !113)
!122 = !DILocation(line: 46, column: 3, scope: !113)
!123 = distinct !DISubprogram(name: "CastTest3", linkageName: "CastTest3", scope: !2, file: !2, line: 43, type: !5, scopeLine: 43, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!124 = !DILocation(line: 43, column: 12, scope: !123)
!125 = distinct !DISubprogram(name: "CastTest4", linkageName: "CastTest4", scope: !2, file: !2, line: 49, type: !5, scopeLine: 49, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!126 = !DILocalVariable(name: "x", scope: !125, file: !2, line: 49, type: !127)
!127 = !DIBasicType(name: "ByStr20", size: 20)
!128 = !DILocation(line: 49, column: 22, scope: !125)
!129 = !DILocalVariable(name: "_sender", scope: !125, file: !2, line: 49, type: !91)
!130 = !DILocation(line: 49, column: 12, scope: !125)
!131 = !DILocalVariable(name: "_origin", scope: !125, file: !2, line: 49, type: !91)
!132 = !DILocalVariable(name: "_amount", scope: !125, file: !2, line: 49, type: !95)
!133 = !DILocalVariable(name: "x_cast", scope: !125, file: !2, line: 51, type: !12)
!134 = !DILocation(line: 51, column: 3, scope: !125)
!135 = !DILocation(line: 52, column: 3, scope: !125)
!136 = !DILocalVariable(name: "bal", scope: !137, file: !2, line: 54, type: !95)
!137 = distinct !DILexicalBlock(scope: !138, file: !2, line: 53, column: 5)
!138 = distinct !DILexicalBlock(scope: !125, file: !2, line: 52, column: 3)
!139 = !DILocation(line: 54, column: 5, scope: !137)
!140 = !DILocalVariable(name: "res", scope: !137, file: !2, line: 55, type: !25)
!141 = !DILocation(line: 55, column: 5, scope: !137)
!142 = !DILocation(line: 55, column: 11, scope: !137)
!143 = !DILocation(line: 56, column: 5, scope: !137)
!144 = distinct !DISubprogram(name: "CastTest4", linkageName: "CastTest4", scope: !2, file: !2, line: 49, type: !5, scopeLine: 49, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!145 = !DILocation(line: 49, column: 12, scope: !144)
!146 = distinct !DISubprogram(name: "CastTest5_1", linkageName: "CastTest5_1", scope: !2, file: !2, line: 61, type: !5, scopeLine: 61, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!147 = !DILocalVariable(name: "x", scope: !146, file: !2, line: 61, type: !127)
!148 = !DILocation(line: 61, column: 24, scope: !146)
!149 = !DILocalVariable(name: "_sender", scope: !146, file: !2, line: 61, type: !91)
!150 = !DILocation(line: 61, column: 12, scope: !146)
!151 = !DILocalVariable(name: "_origin", scope: !146, file: !2, line: 61, type: !91)
!152 = !DILocalVariable(name: "_amount", scope: !146, file: !2, line: 61, type: !95)
!153 = !DILocalVariable(name: "x_cast", scope: !146, file: !2, line: 63, type: !17)
!154 = !DILocation(line: 63, column: 3, scope: !146)
!155 = !DILocation(line: 64, column: 3, scope: !146)
!156 = !DILocalVariable(name: "bal", scope: !157, file: !2, line: 66, type: !95)
!157 = distinct !DILexicalBlock(scope: !158, file: !2, line: 65, column: 5)
!158 = distinct !DILexicalBlock(scope: !146, file: !2, line: 64, column: 3)
!159 = !DILocation(line: 66, column: 5, scope: !157)
!160 = !DILocalVariable(name: "res", scope: !157, file: !2, line: 67, type: !25)
!161 = !DILocation(line: 67, column: 5, scope: !157)
!162 = !DILocation(line: 67, column: 11, scope: !157)
!163 = !DILocation(line: 68, column: 5, scope: !157)
!164 = distinct !DISubprogram(name: "CastTest5_1", linkageName: "CastTest5_1", scope: !2, file: !2, line: 61, type: !5, scopeLine: 61, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!165 = !DILocation(line: 61, column: 12, scope: !164)
!166 = distinct !DISubprogram(name: "CastTest5_2", linkageName: "CastTest5_2", scope: !2, file: !2, line: 73, type: !5, scopeLine: 73, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!167 = !DILocalVariable(name: "x", scope: !166, file: !2, line: 73, type: !91)
!168 = !DILocation(line: 73, column: 24, scope: !166)
!169 = !DILocalVariable(name: "_sender", scope: !166, file: !2, line: 73, type: !91)
!170 = !DILocation(line: 73, column: 12, scope: !166)
!171 = !DILocalVariable(name: "_origin", scope: !166, file: !2, line: 73, type: !91)
!172 = !DILocalVariable(name: "_amount", scope: !166, file: !2, line: 73, type: !95)
!173 = !DILocalVariable(name: "x_cast", scope: !166, file: !2, line: 75, type: !17)
!174 = !DILocation(line: 75, column: 3, scope: !166)
!175 = !DILocation(line: 76, column: 3, scope: !166)
!176 = !DILocalVariable(name: "bal", scope: !177, file: !2, line: 78, type: !95)
!177 = distinct !DILexicalBlock(scope: !178, file: !2, line: 77, column: 5)
!178 = distinct !DILexicalBlock(scope: !166, file: !2, line: 76, column: 3)
!179 = !DILocation(line: 78, column: 5, scope: !177)
!180 = !DILocalVariable(name: "res", scope: !177, file: !2, line: 79, type: !25)
!181 = !DILocation(line: 79, column: 5, scope: !177)
!182 = !DILocation(line: 79, column: 11, scope: !177)
!183 = !DILocation(line: 80, column: 5, scope: !177)
!184 = distinct !DISubprogram(name: "CastTest5_2", linkageName: "CastTest5_2", scope: !2, file: !2, line: 73, type: !5, scopeLine: 73, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!185 = !DILocation(line: 73, column: 12, scope: !184)
!186 = distinct !DISubprogram(name: "CastTest6_1", linkageName: "CastTest6_1", scope: !2, file: !2, line: 85, type: !5, scopeLine: 85, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!187 = !DILocalVariable(name: "x", scope: !186, file: !2, line: 85, type: !127)
!188 = !DILocation(line: 85, column: 24, scope: !186)
!189 = !DILocalVariable(name: "_sender", scope: !186, file: !2, line: 85, type: !91)
!190 = !DILocation(line: 85, column: 12, scope: !186)
!191 = !DILocalVariable(name: "_origin", scope: !186, file: !2, line: 85, type: !91)
!192 = !DILocalVariable(name: "_amount", scope: !186, file: !2, line: 85, type: !95)
!193 = !DILocalVariable(name: "x_cast", scope: !186, file: !2, line: 87, type: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (ByStr20 with contract field f : Uint128, field g : Bool end)", baseType: !195, size: 8, align: 8, dwarfAddressSpace: 0)
!195 = !DIBasicType(name: "Option (ByStr20 with contract field f : Uint128, field g : Bool end)", size: 8)
!196 = !DILocation(line: 87, column: 3, scope: !186)
!197 = !DILocation(line: 88, column: 3, scope: !186)
!198 = !DILocalVariable(name: "bal", scope: !199, file: !2, line: 90, type: !95)
!199 = distinct !DILexicalBlock(scope: !200, file: !2, line: 89, column: 5)
!200 = distinct !DILexicalBlock(scope: !186, file: !2, line: 88, column: 3)
!201 = !DILocation(line: 90, column: 5, scope: !199)
!202 = !DILocalVariable(name: "bal_res", scope: !199, file: !2, line: 91, type: !25)
!203 = !DILocation(line: 91, column: 5, scope: !199)
!204 = !DILocation(line: 91, column: 15, scope: !199)
!205 = !DILocation(line: 92, column: 5, scope: !199)
!206 = !DILocalVariable(name: "f", scope: !199, file: !2, line: 93, type: !95)
!207 = !DILocation(line: 93, column: 5, scope: !199)
!208 = !DILocalVariable(name: "f_res", scope: !199, file: !2, line: 94, type: !25)
!209 = !DILocation(line: 94, column: 5, scope: !199)
!210 = !DILocation(line: 94, column: 13, scope: !199)
!211 = !DILocation(line: 95, column: 5, scope: !199)
!212 = !DILocalVariable(name: "g", scope: !199, file: !2, line: 96, type: !74)
!213 = !DILocation(line: 96, column: 5, scope: !199)
!214 = !DILocalVariable(name: "g_res", scope: !199, file: !2, line: 97, type: !42)
!215 = !DILocation(line: 97, column: 5, scope: !199)
!216 = !DILocation(line: 97, column: 13, scope: !199)
!217 = !DILocation(line: 98, column: 5, scope: !199)
!218 = distinct !DISubprogram(name: "CastTest6_1", linkageName: "CastTest6_1", scope: !2, file: !2, line: 85, type: !5, scopeLine: 85, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!219 = !DILocation(line: 85, column: 12, scope: !218)
!220 = distinct !DISubprogram(name: "CastTest6_2", linkageName: "CastTest6_2", scope: !2, file: !2, line: 103, type: !5, scopeLine: 103, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!221 = !DILocalVariable(name: "x", scope: !220, file: !2, line: 103, type: !91)
!222 = !DILocation(line: 103, column: 24, scope: !220)
!223 = !DILocalVariable(name: "_sender", scope: !220, file: !2, line: 103, type: !91)
!224 = !DILocation(line: 103, column: 12, scope: !220)
!225 = !DILocalVariable(name: "_origin", scope: !220, file: !2, line: 103, type: !91)
!226 = !DILocalVariable(name: "_amount", scope: !220, file: !2, line: 103, type: !95)
!227 = !DILocalVariable(name: "x_cast", scope: !220, file: !2, line: 105, type: !194)
!228 = !DILocation(line: 105, column: 3, scope: !220)
!229 = !DILocation(line: 106, column: 3, scope: !220)
!230 = !DILocalVariable(name: "bal", scope: !231, file: !2, line: 108, type: !95)
!231 = distinct !DILexicalBlock(scope: !232, file: !2, line: 107, column: 5)
!232 = distinct !DILexicalBlock(scope: !220, file: !2, line: 106, column: 3)
!233 = !DILocation(line: 108, column: 5, scope: !231)
!234 = !DILocalVariable(name: "bal_res", scope: !231, file: !2, line: 109, type: !25)
!235 = !DILocation(line: 109, column: 5, scope: !231)
!236 = !DILocation(line: 109, column: 15, scope: !231)
!237 = !DILocation(line: 110, column: 5, scope: !231)
!238 = !DILocalVariable(name: "f", scope: !231, file: !2, line: 111, type: !95)
!239 = !DILocation(line: 111, column: 5, scope: !231)
!240 = !DILocalVariable(name: "f_res", scope: !231, file: !2, line: 112, type: !25)
!241 = !DILocation(line: 112, column: 5, scope: !231)
!242 = !DILocation(line: 112, column: 13, scope: !231)
!243 = !DILocation(line: 113, column: 5, scope: !231)
!244 = !DILocalVariable(name: "g", scope: !231, file: !2, line: 114, type: !74)
!245 = !DILocation(line: 114, column: 5, scope: !231)
!246 = !DILocalVariable(name: "g_res", scope: !231, file: !2, line: 115, type: !42)
!247 = !DILocation(line: 115, column: 5, scope: !231)
!248 = !DILocation(line: 115, column: 13, scope: !231)
!249 = !DILocation(line: 116, column: 5, scope: !231)
!250 = distinct !DISubprogram(name: "CastTest6_2", linkageName: "CastTest6_2", scope: !2, file: !2, line: 103, type: !5, scopeLine: 103, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!251 = !DILocation(line: 103, column: 12, scope: !250)
!252 = distinct !DISubprogram(name: "CastTest6_3", linkageName: "CastTest6_3", scope: !2, file: !2, line: 121, type: !5, scopeLine: 121, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!253 = !DILocalVariable(name: "x", scope: !252, file: !2, line: 121, type: !254)
!254 = !DIBasicType(name: "ByStr20 with contract field g : Bool end", size: 20)
!255 = !DILocation(line: 121, column: 24, scope: !252)
!256 = !DILocalVariable(name: "_sender", scope: !252, file: !2, line: 121, type: !91)
!257 = !DILocation(line: 121, column: 12, scope: !252)
!258 = !DILocalVariable(name: "_origin", scope: !252, file: !2, line: 121, type: !91)
!259 = !DILocalVariable(name: "_amount", scope: !252, file: !2, line: 121, type: !95)
!260 = !DILocalVariable(name: "x_cast", scope: !252, file: !2, line: 123, type: !194)
!261 = !DILocation(line: 123, column: 3, scope: !252)
!262 = !DILocation(line: 124, column: 3, scope: !252)
!263 = !DILocalVariable(name: "bal", scope: !264, file: !2, line: 126, type: !95)
!264 = distinct !DILexicalBlock(scope: !265, file: !2, line: 125, column: 5)
!265 = distinct !DILexicalBlock(scope: !252, file: !2, line: 124, column: 3)
!266 = !DILocation(line: 126, column: 5, scope: !264)
!267 = !DILocalVariable(name: "bal_res", scope: !264, file: !2, line: 127, type: !25)
!268 = !DILocation(line: 127, column: 5, scope: !264)
!269 = !DILocation(line: 127, column: 15, scope: !264)
!270 = !DILocation(line: 128, column: 5, scope: !264)
!271 = !DILocalVariable(name: "f", scope: !264, file: !2, line: 129, type: !95)
!272 = !DILocation(line: 129, column: 5, scope: !264)
!273 = !DILocalVariable(name: "f_res", scope: !264, file: !2, line: 130, type: !25)
!274 = !DILocation(line: 130, column: 5, scope: !264)
!275 = !DILocation(line: 130, column: 13, scope: !264)
!276 = !DILocation(line: 131, column: 5, scope: !264)
!277 = !DILocalVariable(name: "g", scope: !264, file: !2, line: 132, type: !74)
!278 = !DILocation(line: 132, column: 5, scope: !264)
!279 = !DILocalVariable(name: "g_res", scope: !264, file: !2, line: 133, type: !42)
!280 = !DILocation(line: 133, column: 5, scope: !264)
!281 = !DILocation(line: 133, column: 13, scope: !264)
!282 = !DILocation(line: 134, column: 5, scope: !264)
!283 = distinct !DISubprogram(name: "CastTest6_3", linkageName: "CastTest6_3", scope: !2, file: !2, line: 121, type: !5, scopeLine: 121, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!284 = !DILocation(line: 121, column: 12, scope: !283)
!285 = distinct !DISubprogram(name: "CastTest6_4", linkageName: "CastTest6_4", scope: !2, file: !2, line: 139, type: !5, scopeLine: 139, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!286 = !DILocalVariable(name: "x", scope: !285, file: !2, line: 139, type: !287)
!287 = !DIBasicType(name: "ByStr20 with contract field f : Uint256, field g : Bool end", size: 20)
!288 = !DILocation(line: 139, column: 24, scope: !285)
!289 = !DILocalVariable(name: "_sender", scope: !285, file: !2, line: 139, type: !91)
!290 = !DILocation(line: 139, column: 12, scope: !285)
!291 = !DILocalVariable(name: "_origin", scope: !285, file: !2, line: 139, type: !91)
!292 = !DILocalVariable(name: "_amount", scope: !285, file: !2, line: 139, type: !95)
!293 = !DILocalVariable(name: "x_cast", scope: !285, file: !2, line: 141, type: !194)
!294 = !DILocation(line: 141, column: 3, scope: !285)
!295 = !DILocation(line: 142, column: 3, scope: !285)
!296 = !DILocalVariable(name: "bal", scope: !297, file: !2, line: 144, type: !95)
!297 = distinct !DILexicalBlock(scope: !298, file: !2, line: 143, column: 5)
!298 = distinct !DILexicalBlock(scope: !285, file: !2, line: 142, column: 3)
!299 = !DILocation(line: 144, column: 5, scope: !297)
!300 = !DILocalVariable(name: "bal_res", scope: !297, file: !2, line: 145, type: !25)
!301 = !DILocation(line: 145, column: 5, scope: !297)
!302 = !DILocation(line: 145, column: 15, scope: !297)
!303 = !DILocation(line: 146, column: 5, scope: !297)
!304 = !DILocalVariable(name: "f", scope: !297, file: !2, line: 147, type: !95)
!305 = !DILocation(line: 147, column: 5, scope: !297)
!306 = !DILocalVariable(name: "f_res", scope: !297, file: !2, line: 148, type: !25)
!307 = !DILocation(line: 148, column: 5, scope: !297)
!308 = !DILocation(line: 148, column: 13, scope: !297)
!309 = !DILocation(line: 149, column: 5, scope: !297)
!310 = !DILocalVariable(name: "g", scope: !297, file: !2, line: 150, type: !74)
!311 = !DILocation(line: 150, column: 5, scope: !297)
!312 = !DILocalVariable(name: "g_res", scope: !297, file: !2, line: 151, type: !42)
!313 = !DILocation(line: 151, column: 5, scope: !297)
!314 = !DILocation(line: 151, column: 13, scope: !297)
!315 = !DILocation(line: 152, column: 5, scope: !297)
!316 = !DILocalVariable(name: "res", scope: !317, file: !2, line: 154, type: !74)
!317 = distinct !DILexicalBlock(scope: !298, file: !2, line: 153, column: 5)
!318 = !DILocation(line: 154, column: 5, scope: !317)
!319 = !DILocation(line: 154, column: 11, scope: !317)
!320 = !DILocation(line: 155, column: 5, scope: !317)
!321 = distinct !DISubprogram(name: "CastTest6_4", linkageName: "CastTest6_4", scope: !2, file: !2, line: 139, type: !5, scopeLine: 139, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!322 = !DILocation(line: 139, column: 12, scope: !321)
!323 = distinct !DISubprogram(name: "CastTest7", linkageName: "CastTest7", scope: !2, file: !2, line: 159, type: !5, scopeLine: 159, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!324 = !DILocalVariable(name: "x", scope: !323, file: !2, line: 159, type: !127)
!325 = !DILocation(line: 159, column: 22, scope: !323)
!326 = !DILocalVariable(name: "_sender", scope: !323, file: !2, line: 159, type: !91)
!327 = !DILocation(line: 159, column: 12, scope: !323)
!328 = !DILocalVariable(name: "_origin", scope: !323, file: !2, line: 159, type: !91)
!329 = !DILocalVariable(name: "_amount", scope: !323, file: !2, line: 159, type: !95)
!330 = !DILocalVariable(name: "x_cast", scope: !323, file: !2, line: 161, type: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (ByStr20 with contract field f : ByStr20 end)", baseType: !332, size: 8, align: 8, dwarfAddressSpace: 0)
!332 = !DIBasicType(name: "Option (ByStr20 with contract field f : ByStr20 end)", size: 8)
!333 = !DILocation(line: 161, column: 3, scope: !323)
!334 = !DILocation(line: 162, column: 3, scope: !323)
!335 = !DILocalVariable(name: "f", scope: !336, file: !2, line: 164, type: !127)
!336 = distinct !DILexicalBlock(scope: !337, file: !2, line: 163, column: 5)
!337 = distinct !DILexicalBlock(scope: !323, file: !2, line: 162, column: 3)
!338 = !DILocation(line: 164, column: 5, scope: !336)
!339 = !DILocalVariable(name: "f_cast", scope: !336, file: !2, line: 165, type: !340)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "Option (ByStr20 with contract field g : Bool, field h : Int256 end)", baseType: !341, size: 8, align: 8, dwarfAddressSpace: 0)
!341 = !DIBasicType(name: "Option (ByStr20 with contract field g : Bool, field h : Int256 end)", size: 8)
!342 = !DILocation(line: 165, column: 5, scope: !336)
!343 = !DILocation(line: 166, column: 5, scope: !336)
!344 = !DILocalVariable(name: "g", scope: !345, file: !2, line: 168, type: !74)
!345 = distinct !DILexicalBlock(scope: !346, file: !2, line: 167, column: 7)
!346 = distinct !DILexicalBlock(scope: !336, file: !2, line: 166, column: 5)
!347 = !DILocation(line: 168, column: 7, scope: !345)
!348 = !DILocalVariable(name: "g_res", scope: !345, file: !2, line: 169, type: !42)
!349 = !DILocation(line: 169, column: 7, scope: !345)
!350 = !DILocation(line: 169, column: 15, scope: !345)
!351 = !DILocation(line: 170, column: 7, scope: !345)
!352 = !DILocalVariable(name: "h", scope: !345, file: !2, line: 171, type: !353)
!353 = !DIBasicType(name: "Int256", size: 32)
!354 = !DILocation(line: 171, column: 7, scope: !345)
!355 = !DILocalVariable(name: "h_res", scope: !345, file: !2, line: 172, type: !82)
!356 = !DILocation(line: 172, column: 7, scope: !345)
!357 = !DILocation(line: 172, column: 15, scope: !345)
!358 = !DILocation(line: 173, column: 7, scope: !345)
!359 = distinct !DISubprogram(name: "CastTest7", linkageName: "CastTest7", scope: !2, file: !2, line: 159, type: !5, scopeLine: 159, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !8)
!360 = !DILocation(line: 159, column: 12, scope: !359)
