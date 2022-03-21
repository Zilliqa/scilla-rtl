

; gas_remaining: 4001999
; ModuleID = 'CastContract'
source_filename = "CastContract"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%"$ParamDescr_1659" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1660" = type { %ParamDescrString, i32, %"$ParamDescr_1659"* }
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
@"$test_2_res_503" = unnamed_addr constant [11 x i8] c"test_2_res\00"
@"$test_3_res_537" = unnamed_addr constant [11 x i8] c"test_3_res\00"
@"$_balance_576" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_4_res_617" = unnamed_addr constant [11 x i8] c"test_4_res\00"
@"$_balance_658" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_5_1_res_699" = unnamed_addr constant [13 x i8] c"test_5_1_res\00"
@"$_balance_740" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_5_2_res_781" = unnamed_addr constant [13 x i8] c"test_5_2_res\00"
@"$_balance_822" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_6_1_bal_res_863" = unnamed_addr constant [17 x i8] c"test_6_1_bal_res\00"
@"$f_866" = unnamed_addr constant [2 x i8] c"f\00"
@"$test_6_1_f_res_907" = unnamed_addr constant [15 x i8] c"test_6_1_f_res\00"
@"$g_910" = unnamed_addr constant [2 x i8] c"g\00"
@"$test_6_1_g_res_949" = unnamed_addr constant [15 x i8] c"test_6_1_g_res\00"
@"$_balance_990" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_6_2_bal_res_1031" = unnamed_addr constant [17 x i8] c"test_6_2_bal_res\00"
@"$f_1034" = unnamed_addr constant [2 x i8] c"f\00"
@"$test_6_2_f_res_1075" = unnamed_addr constant [15 x i8] c"test_6_2_f_res\00"
@"$g_1078" = unnamed_addr constant [2 x i8] c"g\00"
@"$test_6_2_g_res_1117" = unnamed_addr constant [15 x i8] c"test_6_2_g_res\00"
@"$_balance_1158" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_6_3_bal_res_1199" = unnamed_addr constant [17 x i8] c"test_6_3_bal_res\00"
@"$f_1202" = unnamed_addr constant [2 x i8] c"f\00"
@"$test_6_3_f_res_1243" = unnamed_addr constant [15 x i8] c"test_6_3_f_res\00"
@"$g_1246" = unnamed_addr constant [2 x i8] c"g\00"
@"$test_6_3_g_res_1285" = unnamed_addr constant [15 x i8] c"test_6_3_g_res\00"
@"$_balance_1326" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_6_4_bal_res_1367" = unnamed_addr constant [17 x i8] c"test_6_4_bal_res\00"
@"$f_1370" = unnamed_addr constant [2 x i8] c"f\00"
@"$test_6_4_f_res_1411" = unnamed_addr constant [15 x i8] c"test_6_4_f_res\00"
@"$g_1414" = unnamed_addr constant [2 x i8] c"g\00"
@"$test_6_4_g_res_1453" = unnamed_addr constant [15 x i8] c"test_6_4_g_res\00"
@"$test_6_4_failed_cast_1480" = unnamed_addr constant [21 x i8] c"test_6_4_failed_cast\00"
@"$f_1519" = unnamed_addr constant [2 x i8] c"f\00"
@"$g_1560" = unnamed_addr constant [2 x i8] c"g\00"
@"$test_7_g_res_1599" = unnamed_addr constant [13 x i8] c"test_7_g_res\00"
@"$h_1602" = unnamed_addr constant [2 x i8] c"h\00"
@"$test_7_h_res_1643" = unnamed_addr constant [13 x i8] c"test_7_h_res\00"
@_tydescr_table = constant [32 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int256_61", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_60", %_TyDescrTy_Typ* @"$TyDescr_Event_46", %_TyDescrTy_Typ* @"$TyDescr_Int64_28", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_64", %_TyDescrTy_Typ* @"$TyDescr_Addr_76", %_TyDescrTy_Typ* @"$TyDescr_Addr_73", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_54", %_TyDescrTy_Typ* @"$TyDescr_Uint256_38", %_TyDescrTy_Typ* @"$TyDescr_Uint32_26", %_TyDescrTy_Typ* @"$TyDescr_Addr_75", %_TyDescrTy_Typ* @"$TyDescr_Addr_72", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", %_TyDescrTy_Typ* @"$TyDescr_Uint64_30", %_TyDescrTy_Typ* @"$TyDescr_Bnum_42", %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", %_TyDescrTy_Typ* @"$TyDescr_Addr_71", %_TyDescrTy_Typ* @"$TyDescr_Exception_48", %_TyDescrTy_Typ* @"$TyDescr_String_40", %_TyDescrTy_Typ* @"$TyDescr_Addr_74", %_TyDescrTy_Typ* @"$TyDescr_Int256_36", %_TyDescrTy_Typ* @"$TyDescr_Int128_32", %_TyDescrTy_Typ* @"$TyDescr_Addr_70", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_end_65", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", %_TyDescrTy_Typ* @"$TyDescr_Bystr_52", %_TyDescrTy_Typ* @"$TyDescr_ReplicateContr_50", %_TyDescrTy_Typ* @"$TyDescr_Message_44", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_field_f_:_ByStr20_end_59", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_58", %_TyDescrTy_Typ* @"$TyDescr_Int32_24"]
@_tydescr_table_length = constant i32 32
@"$pname__scilla_version_1661" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_1662" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_1663" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_1659"] [%"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_1661", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_26" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_1662", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_54" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_1663", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_42" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_1664" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1665" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1666" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1667" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest1_1668" = unnamed_addr constant [4 x %"$ParamDescr_1659"] [%"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1664", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1665", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1666", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1667", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_75" }]
@"$tname_CastTest1_1669" = unnamed_addr constant [9 x i8] c"CastTest1"
@"$tpname__amount_1670" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1671" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1672" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1673" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest2_1674" = unnamed_addr constant [4 x %"$ParamDescr_1659"] [%"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1670", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1671", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1672", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1673", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_75" }]
@"$tname_CastTest2_1675" = unnamed_addr constant [9 x i8] c"CastTest2"
@"$tpname__amount_1676" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1677" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1678" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1679" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest3_1680" = unnamed_addr constant [4 x %"$ParamDescr_1659"] [%"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1676", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1677", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1678", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1679", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_75" }]
@"$tname_CastTest3_1681" = unnamed_addr constant [9 x i8] c"CastTest3"
@"$tpname__amount_1682" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1683" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1684" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1685" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest4_1686" = unnamed_addr constant [4 x %"$ParamDescr_1659"] [%"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1682", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1683", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1684", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1685", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_54" }]
@"$tname_CastTest4_1687" = unnamed_addr constant [9 x i8] c"CastTest4"
@"$tpname__amount_1688" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1689" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1690" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1691" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest5_1_1692" = unnamed_addr constant [4 x %"$ParamDescr_1659"] [%"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1688", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1689", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1690", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1691", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_54" }]
@"$tname_CastTest5_1_1693" = unnamed_addr constant [11 x i8] c"CastTest5_1"
@"$tpname__amount_1694" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1695" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1696" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1697" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest5_2_1698" = unnamed_addr constant [4 x %"$ParamDescr_1659"] [%"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1694", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1695", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1696", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1697", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }]
@"$tname_CastTest5_2_1699" = unnamed_addr constant [11 x i8] c"CastTest5_2"
@"$tpname__amount_1700" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1701" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1702" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1703" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest6_1_1704" = unnamed_addr constant [4 x %"$ParamDescr_1659"] [%"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1700", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1701", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1702", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1703", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_54" }]
@"$tname_CastTest6_1_1705" = unnamed_addr constant [11 x i8] c"CastTest6_1"
@"$tpname__amount_1706" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1707" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1708" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1709" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest6_2_1710" = unnamed_addr constant [4 x %"$ParamDescr_1659"] [%"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1706", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1707", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1708", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1709", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }]
@"$tname_CastTest6_2_1711" = unnamed_addr constant [11 x i8] c"CastTest6_2"
@"$tpname__amount_1712" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1713" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1714" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1715" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest6_3_1716" = unnamed_addr constant [4 x %"$ParamDescr_1659"] [%"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1712", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1713", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1714", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1715", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }]
@"$tname_CastTest6_3_1717" = unnamed_addr constant [11 x i8] c"CastTest6_3"
@"$tpname__amount_1718" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1719" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1720" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1721" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest6_4_1722" = unnamed_addr constant [4 x %"$ParamDescr_1659"] [%"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1718", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1719", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1720", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1721", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_72" }]
@"$tname_CastTest6_4_1723" = unnamed_addr constant [11 x i8] c"CastTest6_4"
@"$tpname__amount_1724" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1725" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1726" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1727" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest7_1728" = unnamed_addr constant [4 x %"$ParamDescr_1659"] [%"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1724", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_34" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1725", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1726", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_76" }, %"$ParamDescr_1659" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1727", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_54" }]
@"$tname_CastTest7_1729" = unnamed_addr constant [9 x i8] c"CastTest7"
@_transition_parameters = constant [11 x %"$TransDescr_1660"] [%"$TransDescr_1660" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_CastTest1_1669", i32 0, i32 0), i32 9 }, i32 4, %"$ParamDescr_1659"* getelementptr inbounds ([4 x %"$ParamDescr_1659"], [4 x %"$ParamDescr_1659"]* @"$tparams_CastTest1_1668", i32 0, i32 0) }, %"$TransDescr_1660" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_CastTest2_1675", i32 0, i32 0), i32 9 }, i32 4, %"$ParamDescr_1659"* getelementptr inbounds ([4 x %"$ParamDescr_1659"], [4 x %"$ParamDescr_1659"]* @"$tparams_CastTest2_1674", i32 0, i32 0) }, %"$TransDescr_1660" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_CastTest3_1681", i32 0, i32 0), i32 9 }, i32 4, %"$ParamDescr_1659"* getelementptr inbounds ([4 x %"$ParamDescr_1659"], [4 x %"$ParamDescr_1659"]* @"$tparams_CastTest3_1680", i32 0, i32 0) }, %"$TransDescr_1660" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_CastTest4_1687", i32 0, i32 0), i32 9 }, i32 4, %"$ParamDescr_1659"* getelementptr inbounds ([4 x %"$ParamDescr_1659"], [4 x %"$ParamDescr_1659"]* @"$tparams_CastTest4_1686", i32 0, i32 0) }, %"$TransDescr_1660" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest5_1_1693", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1659"* getelementptr inbounds ([4 x %"$ParamDescr_1659"], [4 x %"$ParamDescr_1659"]* @"$tparams_CastTest5_1_1692", i32 0, i32 0) }, %"$TransDescr_1660" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest5_2_1699", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1659"* getelementptr inbounds ([4 x %"$ParamDescr_1659"], [4 x %"$ParamDescr_1659"]* @"$tparams_CastTest5_2_1698", i32 0, i32 0) }, %"$TransDescr_1660" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest6_1_1705", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1659"* getelementptr inbounds ([4 x %"$ParamDescr_1659"], [4 x %"$ParamDescr_1659"]* @"$tparams_CastTest6_1_1704", i32 0, i32 0) }, %"$TransDescr_1660" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest6_2_1711", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1659"* getelementptr inbounds ([4 x %"$ParamDescr_1659"], [4 x %"$ParamDescr_1659"]* @"$tparams_CastTest6_2_1710", i32 0, i32 0) }, %"$TransDescr_1660" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest6_3_1717", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1659"* getelementptr inbounds ([4 x %"$ParamDescr_1659"], [4 x %"$ParamDescr_1659"]* @"$tparams_CastTest6_3_1716", i32 0, i32 0) }, %"$TransDescr_1660" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest6_4_1723", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1659"* getelementptr inbounds ([4 x %"$ParamDescr_1659"], [4 x %"$ParamDescr_1659"]* @"$tparams_CastTest6_4_1722", i32 0, i32 0) }, %"$TransDescr_1660" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_CastTest7_1729", i32 0, i32 0), i32 9 }, i32 4, %"$ParamDescr_1659"* getelementptr inbounds ([4 x %"$ParamDescr_1659"], [4 x %"$ParamDescr_1659"]* @"$tparams_CastTest7_1728", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 11

define void @_init_libs() {
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
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_0", align 4
  ret void
}

declare void @_out_of_gas()

define void @_deploy_ops() {
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
  store %TName_Option_ByStr20_with_end* %"$adtptr_202", %TName_Option_ByStr20_with_end** %"$test_1_res_1", align 8
  %"$execptr_load_203" = load i8*, i8** @_execptr, align 8
  %"$$test_1_res_1_205" = load %TName_Option_ByStr20_with_end*, %TName_Option_ByStr20_with_end** %"$test_1_res_1", align 8
  %"$update_value_206" = bitcast %TName_Option_ByStr20_with_end* %"$$test_1_res_1_205" to i8*
  call void @_update_field(i8* %"$execptr_load_203", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_1_res_204", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_end_65", i32 0, i8* null, i8* %"$update_value_206")
  %"$test_2_res_2" = alloca %TName_Option_ByStr20_with_contract_end*, align 8
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
  store %TName_Option_ByStr20_with_contract_end* %"$adtptr_214", %TName_Option_ByStr20_with_contract_end** %"$test_2_res_2", align 8
  %"$execptr_load_215" = load i8*, i8** @_execptr, align 8
  %"$$test_2_res_2_217" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %"$test_2_res_2", align 8
  %"$update_value_218" = bitcast %TName_Option_ByStr20_with_contract_end* %"$$test_2_res_2_217" to i8*
  call void @_update_field(i8* %"$execptr_load_215", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_2_res_216", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_64", i32 0, i8* null, i8* %"$update_value_218")
  %"$test_3_res_3" = alloca %TName_Option_ByStr20_with_contract_end*, align 8
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
  store %TName_Option_ByStr20_with_contract_end* %"$adtptr_226", %TName_Option_ByStr20_with_contract_end** %"$test_3_res_3", align 8
  %"$execptr_load_227" = load i8*, i8** @_execptr, align 8
  %"$$test_3_res_3_229" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %"$test_3_res_3", align 8
  %"$update_value_230" = bitcast %TName_Option_ByStr20_with_contract_end* %"$$test_3_res_3_229" to i8*
  call void @_update_field(i8* %"$execptr_load_227", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_3_res_228", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_64", i32 0, i8* null, i8* %"$update_value_230")
  %"$test_4_res_4" = alloca %TName_Option_Uint128*, align 8
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
  store %TName_Option_Uint128* %"$adtptr_238", %TName_Option_Uint128** %"$test_4_res_4", align 8
  %"$execptr_load_239" = load i8*, i8** @_execptr, align 8
  %"$$test_4_res_4_241" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_4_res_4", align 8
  %"$update_value_242" = bitcast %TName_Option_Uint128* %"$$test_4_res_4_241" to i8*
  call void @_update_field(i8* %"$execptr_load_239", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_4_res_240", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_242")
  %"$test_5_1_res_5" = alloca %TName_Option_Uint128*, align 8
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
  store %TName_Option_Uint128* %"$adtptr_250", %TName_Option_Uint128** %"$test_5_1_res_5", align 8
  %"$execptr_load_251" = load i8*, i8** @_execptr, align 8
  %"$$test_5_1_res_5_253" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_5_1_res_5", align 8
  %"$update_value_254" = bitcast %TName_Option_Uint128* %"$$test_5_1_res_5_253" to i8*
  call void @_update_field(i8* %"$execptr_load_251", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_5_1_res_252", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_254")
  %"$test_5_2_res_6" = alloca %TName_Option_Uint128*, align 8
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
  store %TName_Option_Uint128* %"$adtptr_262", %TName_Option_Uint128** %"$test_5_2_res_6", align 8
  %"$execptr_load_263" = load i8*, i8** @_execptr, align 8
  %"$$test_5_2_res_6_265" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_5_2_res_6", align 8
  %"$update_value_266" = bitcast %TName_Option_Uint128* %"$$test_5_2_res_6_265" to i8*
  call void @_update_field(i8* %"$execptr_load_263", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_5_2_res_264", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_266")
  %"$test_6_1_bal_res_7" = alloca %TName_Option_Uint128*, align 8
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
  store %TName_Option_Uint128* %"$adtptr_274", %TName_Option_Uint128** %"$test_6_1_bal_res_7", align 8
  %"$execptr_load_275" = load i8*, i8** @_execptr, align 8
  %"$$test_6_1_bal_res_7_277" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_1_bal_res_7", align 8
  %"$update_value_278" = bitcast %TName_Option_Uint128* %"$$test_6_1_bal_res_7_277" to i8*
  call void @_update_field(i8* %"$execptr_load_275", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_1_bal_res_276", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_278")
  %"$test_6_1_f_res_8" = alloca %TName_Option_Uint128*, align 8
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
  store %TName_Option_Uint128* %"$adtptr_286", %TName_Option_Uint128** %"$test_6_1_f_res_8", align 8
  %"$execptr_load_287" = load i8*, i8** @_execptr, align 8
  %"$$test_6_1_f_res_8_289" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_1_f_res_8", align 8
  %"$update_value_290" = bitcast %TName_Option_Uint128* %"$$test_6_1_f_res_8_289" to i8*
  call void @_update_field(i8* %"$execptr_load_287", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_1_f_res_288", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_290")
  %"$test_6_1_g_res_9" = alloca %TName_Option_Bool*, align 8
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
  store %TName_Option_Bool* %"$adtptr_298", %TName_Option_Bool** %"$test_6_1_g_res_9", align 8
  %"$execptr_load_299" = load i8*, i8** @_execptr, align 8
  %"$$test_6_1_g_res_9_301" = load %TName_Option_Bool*, %TName_Option_Bool** %"$test_6_1_g_res_9", align 8
  %"$update_value_302" = bitcast %TName_Option_Bool* %"$$test_6_1_g_res_9_301" to i8*
  call void @_update_field(i8* %"$execptr_load_299", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_1_g_res_300", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i32 0, i8* null, i8* %"$update_value_302")
  %"$test_6_2_bal_res_10" = alloca %TName_Option_Uint128*, align 8
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
  store %TName_Option_Uint128* %"$adtptr_310", %TName_Option_Uint128** %"$test_6_2_bal_res_10", align 8
  %"$execptr_load_311" = load i8*, i8** @_execptr, align 8
  %"$$test_6_2_bal_res_10_313" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_2_bal_res_10", align 8
  %"$update_value_314" = bitcast %TName_Option_Uint128* %"$$test_6_2_bal_res_10_313" to i8*
  call void @_update_field(i8* %"$execptr_load_311", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_2_bal_res_312", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_314")
  %"$test_6_2_f_res_11" = alloca %TName_Option_Uint128*, align 8
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
  store %TName_Option_Uint128* %"$adtptr_322", %TName_Option_Uint128** %"$test_6_2_f_res_11", align 8
  %"$execptr_load_323" = load i8*, i8** @_execptr, align 8
  %"$$test_6_2_f_res_11_325" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_2_f_res_11", align 8
  %"$update_value_326" = bitcast %TName_Option_Uint128* %"$$test_6_2_f_res_11_325" to i8*
  call void @_update_field(i8* %"$execptr_load_323", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_2_f_res_324", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_326")
  %"$test_6_2_g_res_12" = alloca %TName_Option_Bool*, align 8
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
  store %TName_Option_Bool* %"$adtptr_334", %TName_Option_Bool** %"$test_6_2_g_res_12", align 8
  %"$execptr_load_335" = load i8*, i8** @_execptr, align 8
  %"$$test_6_2_g_res_12_337" = load %TName_Option_Bool*, %TName_Option_Bool** %"$test_6_2_g_res_12", align 8
  %"$update_value_338" = bitcast %TName_Option_Bool* %"$$test_6_2_g_res_12_337" to i8*
  call void @_update_field(i8* %"$execptr_load_335", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_2_g_res_336", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i32 0, i8* null, i8* %"$update_value_338")
  %"$test_6_3_bal_res_13" = alloca %TName_Option_Uint128*, align 8
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
  store %TName_Option_Uint128* %"$adtptr_346", %TName_Option_Uint128** %"$test_6_3_bal_res_13", align 8
  %"$execptr_load_347" = load i8*, i8** @_execptr, align 8
  %"$$test_6_3_bal_res_13_349" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_3_bal_res_13", align 8
  %"$update_value_350" = bitcast %TName_Option_Uint128* %"$$test_6_3_bal_res_13_349" to i8*
  call void @_update_field(i8* %"$execptr_load_347", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_3_bal_res_348", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_350")
  %"$test_6_3_f_res_14" = alloca %TName_Option_Uint128*, align 8
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
  store %TName_Option_Uint128* %"$adtptr_358", %TName_Option_Uint128** %"$test_6_3_f_res_14", align 8
  %"$execptr_load_359" = load i8*, i8** @_execptr, align 8
  %"$$test_6_3_f_res_14_361" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_3_f_res_14", align 8
  %"$update_value_362" = bitcast %TName_Option_Uint128* %"$$test_6_3_f_res_14_361" to i8*
  call void @_update_field(i8* %"$execptr_load_359", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_3_f_res_360", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_362")
  %"$test_6_3_g_res_15" = alloca %TName_Option_Bool*, align 8
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
  store %TName_Option_Bool* %"$adtptr_370", %TName_Option_Bool** %"$test_6_3_g_res_15", align 8
  %"$execptr_load_371" = load i8*, i8** @_execptr, align 8
  %"$$test_6_3_g_res_15_373" = load %TName_Option_Bool*, %TName_Option_Bool** %"$test_6_3_g_res_15", align 8
  %"$update_value_374" = bitcast %TName_Option_Bool* %"$$test_6_3_g_res_15_373" to i8*
  call void @_update_field(i8* %"$execptr_load_371", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_3_g_res_372", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i32 0, i8* null, i8* %"$update_value_374")
  %"$test_6_4_bal_res_16" = alloca %TName_Option_Uint128*, align 8
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
  store %TName_Option_Uint128* %"$adtptr_382", %TName_Option_Uint128** %"$test_6_4_bal_res_16", align 8
  %"$execptr_load_383" = load i8*, i8** @_execptr, align 8
  %"$$test_6_4_bal_res_16_385" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_4_bal_res_16", align 8
  %"$update_value_386" = bitcast %TName_Option_Uint128* %"$$test_6_4_bal_res_16_385" to i8*
  call void @_update_field(i8* %"$execptr_load_383", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_4_bal_res_384", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_386")
  %"$test_6_4_f_res_17" = alloca %TName_Option_Uint128*, align 8
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
  store %TName_Option_Uint128* %"$adtptr_394", %TName_Option_Uint128** %"$test_6_4_f_res_17", align 8
  %"$execptr_load_395" = load i8*, i8** @_execptr, align 8
  %"$$test_6_4_f_res_17_397" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_4_f_res_17", align 8
  %"$update_value_398" = bitcast %TName_Option_Uint128* %"$$test_6_4_f_res_17_397" to i8*
  call void @_update_field(i8* %"$execptr_load_395", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_4_f_res_396", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_398")
  %"$test_6_4_g_res_18" = alloca %TName_Option_Bool*, align 8
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
  store %TName_Option_Bool* %"$adtptr_406", %TName_Option_Bool** %"$test_6_4_g_res_18", align 8
  %"$execptr_load_407" = load i8*, i8** @_execptr, align 8
  %"$$test_6_4_g_res_18_409" = load %TName_Option_Bool*, %TName_Option_Bool** %"$test_6_4_g_res_18", align 8
  %"$update_value_410" = bitcast %TName_Option_Bool* %"$$test_6_4_g_res_18_409" to i8*
  call void @_update_field(i8* %"$execptr_load_407", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_4_g_res_408", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i32 0, i8* null, i8* %"$update_value_410")
  %"$test_6_4_failed_cast_19" = alloca %TName_Bool*, align 8
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
  store %TName_Bool* %"$adtptr_418", %TName_Bool** %"$test_6_4_failed_cast_19", align 8
  %"$execptr_load_419" = load i8*, i8** @_execptr, align 8
  %"$$test_6_4_failed_cast_19_421" = load %TName_Bool*, %TName_Bool** %"$test_6_4_failed_cast_19", align 8
  %"$update_value_422" = bitcast %TName_Bool* %"$$test_6_4_failed_cast_19_421" to i8*
  call void @_update_field(i8* %"$execptr_load_419", i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$test_6_4_failed_cast_420", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i32 0, i8* null, i8* %"$update_value_422")
  %"$test_7_g_res_20" = alloca %TName_Option_Bool*, align 8
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
  store %TName_Option_Bool* %"$adtptr_430", %TName_Option_Bool** %"$test_7_g_res_20", align 8
  %"$execptr_load_431" = load i8*, i8** @_execptr, align 8
  %"$$test_7_g_res_20_433" = load %TName_Option_Bool*, %TName_Option_Bool** %"$test_7_g_res_20", align 8
  %"$update_value_434" = bitcast %TName_Option_Bool* %"$$test_7_g_res_20_433" to i8*
  call void @_update_field(i8* %"$execptr_load_431", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_7_g_res_432", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i32 0, i8* null, i8* %"$update_value_434")
  %"$test_7_h_res_21" = alloca %TName_Option_Int256*, align 8
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
  store %TName_Option_Int256* %"$adtptr_442", %TName_Option_Int256** %"$test_7_h_res_21", align 8
  %"$execptr_load_443" = load i8*, i8** @_execptr, align 8
  %"$$test_7_h_res_21_445" = load %TName_Option_Int256*, %TName_Option_Int256** %"$test_7_h_res_21", align 8
  %"$update_value_446" = bitcast %TName_Option_Int256* %"$$test_7_h_res_21_445" to i8*
  call void @_update_field(i8* %"$execptr_load_443", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_7_h_res_444", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int256_61", i32 0, i8* null, i8* %"$update_value_446")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$CastTest1_447"(%Uint128 %_amount, [20 x i8]* %"$_origin_448", [20 x i8]* %"$_sender_449", [20 x i8]* %"$x_450") {
entry:
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
  %"$execptr_load_456" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_457" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_457", align 1
  %"$_dynamic_typecast_call_458" = call i8* @_dynamic_typecast(i8* %"$execptr_load_456", [20 x i8]* %"$_dynamic_typecast_x_457", %_TyDescrTy_Typ* @"$TyDescr_Addr_76")
  %"$_dynamic_typecast_459" = bitcast i8* %"$_dynamic_typecast_call_458" to %TName_Option_ByStr20_with_end*
  store %TName_Option_ByStr20_with_end* %"$_dynamic_typecast_459", %TName_Option_ByStr20_with_end** %res, align 8
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
  call void @_update_field(i8* %"$execptr_load_468", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_1_res_469", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_end_65", i32 0, i8* null, i8* %"$update_value_471")
  ret void
}

declare i8* @_dynamic_typecast(i8*, [20 x i8]*, %_TyDescrTy_Typ*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @CastTest1(i8* %0) {
entry:
  %"$_amount_473" = getelementptr i8, i8* %0, i32 0
  %"$_amount_474" = bitcast i8* %"$_amount_473" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_474", align 8
  %"$_origin_475" = getelementptr i8, i8* %0, i32 16
  %"$_origin_476" = bitcast i8* %"$_origin_475" to [20 x i8]*
  %"$_sender_477" = getelementptr i8, i8* %0, i32 36
  %"$_sender_478" = bitcast i8* %"$_sender_477" to [20 x i8]*
  %"$x_479" = getelementptr i8, i8* %0, i32 56
  %"$x_480" = bitcast i8* %"$x_479" to [20 x i8]*
  call void @"$CastTest1_447"(%Uint128 %_amount, [20 x i8]* %"$_origin_476", [20 x i8]* %"$_sender_478", [20 x i8]* %"$x_480")
  ret void
}

define internal void @"$CastTest2_481"(%Uint128 %_amount, [20 x i8]* %"$_origin_482", [20 x i8]* %"$_sender_483", [20 x i8]* %"$x_484") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_482", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_483", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_484", align 1
  %"$gasrem_485" = load i64, i64* @_gasrem, align 8
  %"$gascmp_486" = icmp ugt i64 3, %"$gasrem_485"
  br i1 %"$gascmp_486", label %"$out_of_gas_487", label %"$have_gas_488"

"$out_of_gas_487":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_488"

"$have_gas_488":                                  ; preds = %"$out_of_gas_487", %entry
  %"$consume_489" = sub i64 %"$gasrem_485", 3
  store i64 %"$consume_489", i64* @_gasrem, align 8
  %res = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  %"$execptr_load_490" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_491" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_491", align 1
  %"$_dynamic_typecast_call_492" = call i8* @_dynamic_typecast(i8* %"$execptr_load_490", [20 x i8]* %"$_dynamic_typecast_x_491", %_TyDescrTy_Typ* @"$TyDescr_Addr_75")
  %"$_dynamic_typecast_493" = bitcast i8* %"$_dynamic_typecast_call_492" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$_dynamic_typecast_493", %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$res_494" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$$res_494_495" = bitcast %TName_Option_ByStr20_with_contract_end* %"$res_494" to i8*
  %"$_literal_cost_call_496" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_64", i8* %"$$res_494_495")
  %"$gasrem_497" = load i64, i64* @_gasrem, align 8
  %"$gascmp_498" = icmp ugt i64 %"$_literal_cost_call_496", %"$gasrem_497"
  br i1 %"$gascmp_498", label %"$out_of_gas_499", label %"$have_gas_500"

"$out_of_gas_499":                                ; preds = %"$have_gas_488"
  call void @_out_of_gas()
  br label %"$have_gas_500"

"$have_gas_500":                                  ; preds = %"$out_of_gas_499", %"$have_gas_488"
  %"$consume_501" = sub i64 %"$gasrem_497", %"$_literal_cost_call_496"
  store i64 %"$consume_501", i64* @_gasrem, align 8
  %"$execptr_load_502" = load i8*, i8** @_execptr, align 8
  %"$res_504" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$update_value_505" = bitcast %TName_Option_ByStr20_with_contract_end* %"$res_504" to i8*
  call void @_update_field(i8* %"$execptr_load_502", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_2_res_503", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_64", i32 0, i8* null, i8* %"$update_value_505")
  ret void
}

define void @CastTest2(i8* %0) {
entry:
  %"$_amount_507" = getelementptr i8, i8* %0, i32 0
  %"$_amount_508" = bitcast i8* %"$_amount_507" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_508", align 8
  %"$_origin_509" = getelementptr i8, i8* %0, i32 16
  %"$_origin_510" = bitcast i8* %"$_origin_509" to [20 x i8]*
  %"$_sender_511" = getelementptr i8, i8* %0, i32 36
  %"$_sender_512" = bitcast i8* %"$_sender_511" to [20 x i8]*
  %"$x_513" = getelementptr i8, i8* %0, i32 56
  %"$x_514" = bitcast i8* %"$x_513" to [20 x i8]*
  call void @"$CastTest2_481"(%Uint128 %_amount, [20 x i8]* %"$_origin_510", [20 x i8]* %"$_sender_512", [20 x i8]* %"$x_514")
  ret void
}

define internal void @"$CastTest3_515"(%Uint128 %_amount, [20 x i8]* %"$_origin_516", [20 x i8]* %"$_sender_517", [20 x i8]* %"$x_518") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_516", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_517", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_518", align 1
  %"$gasrem_519" = load i64, i64* @_gasrem, align 8
  %"$gascmp_520" = icmp ugt i64 3, %"$gasrem_519"
  br i1 %"$gascmp_520", label %"$out_of_gas_521", label %"$have_gas_522"

"$out_of_gas_521":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_522"

"$have_gas_522":                                  ; preds = %"$out_of_gas_521", %entry
  %"$consume_523" = sub i64 %"$gasrem_519", 3
  store i64 %"$consume_523", i64* @_gasrem, align 8
  %res = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  %"$execptr_load_524" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_525" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_525", align 1
  %"$_dynamic_typecast_call_526" = call i8* @_dynamic_typecast(i8* %"$execptr_load_524", [20 x i8]* %"$_dynamic_typecast_x_525", %_TyDescrTy_Typ* @"$TyDescr_Addr_75")
  %"$_dynamic_typecast_527" = bitcast i8* %"$_dynamic_typecast_call_526" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$_dynamic_typecast_527", %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$res_528" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$$res_528_529" = bitcast %TName_Option_ByStr20_with_contract_end* %"$res_528" to i8*
  %"$_literal_cost_call_530" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_64", i8* %"$$res_528_529")
  %"$gasrem_531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_532" = icmp ugt i64 %"$_literal_cost_call_530", %"$gasrem_531"
  br i1 %"$gascmp_532", label %"$out_of_gas_533", label %"$have_gas_534"

"$out_of_gas_533":                                ; preds = %"$have_gas_522"
  call void @_out_of_gas()
  br label %"$have_gas_534"

"$have_gas_534":                                  ; preds = %"$out_of_gas_533", %"$have_gas_522"
  %"$consume_535" = sub i64 %"$gasrem_531", %"$_literal_cost_call_530"
  store i64 %"$consume_535", i64* @_gasrem, align 8
  %"$execptr_load_536" = load i8*, i8** @_execptr, align 8
  %"$res_538" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$update_value_539" = bitcast %TName_Option_ByStr20_with_contract_end* %"$res_538" to i8*
  call void @_update_field(i8* %"$execptr_load_536", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_3_res_537", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_64", i32 0, i8* null, i8* %"$update_value_539")
  ret void
}

define void @CastTest3(i8* %0) {
entry:
  %"$_amount_541" = getelementptr i8, i8* %0, i32 0
  %"$_amount_542" = bitcast i8* %"$_amount_541" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_542", align 8
  %"$_origin_543" = getelementptr i8, i8* %0, i32 16
  %"$_origin_544" = bitcast i8* %"$_origin_543" to [20 x i8]*
  %"$_sender_545" = getelementptr i8, i8* %0, i32 36
  %"$_sender_546" = bitcast i8* %"$_sender_545" to [20 x i8]*
  %"$x_547" = getelementptr i8, i8* %0, i32 56
  %"$x_548" = bitcast i8* %"$x_547" to [20 x i8]*
  call void @"$CastTest3_515"(%Uint128 %_amount, [20 x i8]* %"$_origin_544", [20 x i8]* %"$_sender_546", [20 x i8]* %"$x_548")
  ret void
}

define internal void @"$CastTest4_549"(%Uint128 %_amount, [20 x i8]* %"$_origin_550", [20 x i8]* %"$_sender_551", [20 x i8]* %"$x_552") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_550", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_551", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_552", align 1
  %"$gasrem_553" = load i64, i64* @_gasrem, align 8
  %"$gascmp_554" = icmp ugt i64 2, %"$gasrem_553"
  br i1 %"$gascmp_554", label %"$out_of_gas_555", label %"$have_gas_556"

"$out_of_gas_555":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_556"

"$have_gas_556":                                  ; preds = %"$out_of_gas_555", %entry
  %"$consume_557" = sub i64 %"$gasrem_553", 2
  store i64 %"$consume_557", i64* @_gasrem, align 8
  %x_cast = alloca %TName_Option_ByStr20_with_end*, align 8
  %"$execptr_load_558" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_559" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_559", align 1
  %"$_dynamic_typecast_call_560" = call i8* @_dynamic_typecast(i8* %"$execptr_load_558", [20 x i8]* %"$_dynamic_typecast_x_559", %_TyDescrTy_Typ* @"$TyDescr_Addr_76")
  %"$_dynamic_typecast_561" = bitcast i8* %"$_dynamic_typecast_call_560" to %TName_Option_ByStr20_with_end*
  store %TName_Option_ByStr20_with_end* %"$_dynamic_typecast_561", %TName_Option_ByStr20_with_end** %x_cast, align 8
  %"$gasrem_562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_563" = icmp ugt i64 2, %"$gasrem_562"
  br i1 %"$gascmp_563", label %"$out_of_gas_564", label %"$have_gas_565"

"$out_of_gas_564":                                ; preds = %"$have_gas_556"
  call void @_out_of_gas()
  br label %"$have_gas_565"

"$have_gas_565":                                  ; preds = %"$out_of_gas_564", %"$have_gas_556"
  %"$consume_566" = sub i64 %"$gasrem_562", 2
  store i64 %"$consume_566", i64* @_gasrem, align 8
  %"$x_cast_568" = load %TName_Option_ByStr20_with_end*, %TName_Option_ByStr20_with_end** %x_cast, align 8
  %"$x_cast_tag_569" = getelementptr inbounds %TName_Option_ByStr20_with_end, %TName_Option_ByStr20_with_end* %"$x_cast_568", i32 0, i32 0
  %"$x_cast_tag_570" = load i8, i8* %"$x_cast_tag_569", align 1
  switch i8 %"$x_cast_tag_570", label %"$empty_default_571" [
    i8 0, label %"$Some_572"
    i8 1, label %"$None_620"
  ]

"$Some_572":                                      ; preds = %"$have_gas_565"
  %"$x_cast_573" = bitcast %TName_Option_ByStr20_with_end* %"$x_cast_568" to %CName_Some_ByStr20_with_end*
  %"$x_as_address_gep_574" = getelementptr inbounds %CName_Some_ByStr20_with_end, %CName_Some_ByStr20_with_end* %"$x_cast_573", i32 0, i32 1
  %"$x_as_address_load_575" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_574", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_575", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_577" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_578" = alloca [20 x i8], align 1
  %"$x_as_address_579" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_579", [20 x i8]* %"$bal_x_as_address_578", align 1
  %"$bal_call_580" = call i8* @_fetch_remote_field(i8* %"$execptr_load_577", [20 x i8]* %"$bal_x_as_address_578", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_576", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$bal_581" = bitcast i8* %"$bal_call_580" to %Uint128*
  %"$bal_582" = load %Uint128, %Uint128* %"$bal_581", align 8
  store %Uint128 %"$bal_582", %Uint128* %bal, align 8
  %"$_literal_cost_bal_583" = alloca %Uint128, align 8
  %"$bal_584" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_584", %Uint128* %"$_literal_cost_bal_583", align 8
  %"$$_literal_cost_bal_583_585" = bitcast %Uint128* %"$_literal_cost_bal_583" to i8*
  %"$_literal_cost_call_586" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_583_585")
  %"$gasadd_587" = add i64 %"$_literal_cost_call_586", 0
  %"$gasrem_588" = load i64, i64* @_gasrem, align 8
  %"$gascmp_589" = icmp ugt i64 %"$gasadd_587", %"$gasrem_588"
  br i1 %"$gascmp_589", label %"$out_of_gas_590", label %"$have_gas_591"

"$out_of_gas_590":                                ; preds = %"$Some_572"
  call void @_out_of_gas()
  br label %"$have_gas_591"

"$have_gas_591":                                  ; preds = %"$out_of_gas_590", %"$Some_572"
  %"$consume_592" = sub i64 %"$gasrem_588", %"$gasadd_587"
  store i64 %"$consume_592", i64* @_gasrem, align 8
  %"$gasrem_593" = load i64, i64* @_gasrem, align 8
  %"$gascmp_594" = icmp ugt i64 1, %"$gasrem_593"
  br i1 %"$gascmp_594", label %"$out_of_gas_595", label %"$have_gas_596"

"$out_of_gas_595":                                ; preds = %"$have_gas_591"
  call void @_out_of_gas()
  br label %"$have_gas_596"

"$have_gas_596":                                  ; preds = %"$out_of_gas_595", %"$have_gas_591"
  %"$consume_597" = sub i64 %"$gasrem_593", 1
  store i64 %"$consume_597", i64* @_gasrem, align 8
  %res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_598" = load i64, i64* @_gasrem, align 8
  %"$gascmp_599" = icmp ugt i64 1, %"$gasrem_598"
  br i1 %"$gascmp_599", label %"$out_of_gas_600", label %"$have_gas_601"

"$out_of_gas_600":                                ; preds = %"$have_gas_596"
  call void @_out_of_gas()
  br label %"$have_gas_601"

"$have_gas_601":                                  ; preds = %"$out_of_gas_600", %"$have_gas_596"
  %"$consume_602" = sub i64 %"$gasrem_598", 1
  store i64 %"$consume_602", i64* @_gasrem, align 8
  %"$bal_603" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_604_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_604_salloc" = call i8* @_salloc(i8* %"$adtval_604_load", i64 17)
  %"$adtval_604" = bitcast i8* %"$adtval_604_salloc" to %CName_Some_Uint128*
  %"$adtgep_605" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_604", i32 0, i32 0
  store i8 0, i8* %"$adtgep_605", align 1
  %"$adtgep_606" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_604", i32 0, i32 1
  store %Uint128 %"$bal_603", %Uint128* %"$adtgep_606", align 8
  %"$adtptr_607" = bitcast %CName_Some_Uint128* %"$adtval_604" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_607", %TName_Option_Uint128** %res, align 8
  %"$res_608" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$$res_608_609" = bitcast %TName_Option_Uint128* %"$res_608" to i8*
  %"$_literal_cost_call_610" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i8* %"$$res_608_609")
  %"$gasrem_611" = load i64, i64* @_gasrem, align 8
  %"$gascmp_612" = icmp ugt i64 %"$_literal_cost_call_610", %"$gasrem_611"
  br i1 %"$gascmp_612", label %"$out_of_gas_613", label %"$have_gas_614"

"$out_of_gas_613":                                ; preds = %"$have_gas_601"
  call void @_out_of_gas()
  br label %"$have_gas_614"

"$have_gas_614":                                  ; preds = %"$out_of_gas_613", %"$have_gas_601"
  %"$consume_615" = sub i64 %"$gasrem_611", %"$_literal_cost_call_610"
  store i64 %"$consume_615", i64* @_gasrem, align 8
  %"$execptr_load_616" = load i8*, i8** @_execptr, align 8
  %"$res_618" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$update_value_619" = bitcast %TName_Option_Uint128* %"$res_618" to i8*
  call void @_update_field(i8* %"$execptr_load_616", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_4_res_617", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_619")
  br label %"$matchsucc_567"

"$None_620":                                      ; preds = %"$have_gas_565"
  %"$x_cast_621" = bitcast %TName_Option_ByStr20_with_end* %"$x_cast_568" to %CName_None_ByStr20_with_end*
  br label %"$matchsucc_567"

"$empty_default_571":                             ; preds = %"$have_gas_565"
  br label %"$matchsucc_567"

"$matchsucc_567":                                 ; preds = %"$None_620", %"$have_gas_614", %"$empty_default_571"
  ret void
}

declare i8* @_fetch_remote_field(i8*, [20 x i8]*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @CastTest4(i8* %0) {
entry:
  %"$_amount_623" = getelementptr i8, i8* %0, i32 0
  %"$_amount_624" = bitcast i8* %"$_amount_623" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_624", align 8
  %"$_origin_625" = getelementptr i8, i8* %0, i32 16
  %"$_origin_626" = bitcast i8* %"$_origin_625" to [20 x i8]*
  %"$_sender_627" = getelementptr i8, i8* %0, i32 36
  %"$_sender_628" = bitcast i8* %"$_sender_627" to [20 x i8]*
  %"$x_629" = getelementptr i8, i8* %0, i32 56
  %"$x_630" = bitcast i8* %"$x_629" to [20 x i8]*
  call void @"$CastTest4_549"(%Uint128 %_amount, [20 x i8]* %"$_origin_626", [20 x i8]* %"$_sender_628", [20 x i8]* %"$x_630")
  ret void
}

define internal void @"$CastTest5_1_631"(%Uint128 %_amount, [20 x i8]* %"$_origin_632", [20 x i8]* %"$_sender_633", [20 x i8]* %"$x_634") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_632", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_633", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_634", align 1
  %"$gasrem_635" = load i64, i64* @_gasrem, align 8
  %"$gascmp_636" = icmp ugt i64 3, %"$gasrem_635"
  br i1 %"$gascmp_636", label %"$out_of_gas_637", label %"$have_gas_638"

"$out_of_gas_637":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_638"

"$have_gas_638":                                  ; preds = %"$out_of_gas_637", %entry
  %"$consume_639" = sub i64 %"$gasrem_635", 3
  store i64 %"$consume_639", i64* @_gasrem, align 8
  %x_cast = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  %"$execptr_load_640" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_641" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_641", align 1
  %"$_dynamic_typecast_call_642" = call i8* @_dynamic_typecast(i8* %"$execptr_load_640", [20 x i8]* %"$_dynamic_typecast_x_641", %_TyDescrTy_Typ* @"$TyDescr_Addr_75")
  %"$_dynamic_typecast_643" = bitcast i8* %"$_dynamic_typecast_call_642" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$_dynamic_typecast_643", %TName_Option_ByStr20_with_contract_end** %x_cast, align 8
  %"$gasrem_644" = load i64, i64* @_gasrem, align 8
  %"$gascmp_645" = icmp ugt i64 2, %"$gasrem_644"
  br i1 %"$gascmp_645", label %"$out_of_gas_646", label %"$have_gas_647"

"$out_of_gas_646":                                ; preds = %"$have_gas_638"
  call void @_out_of_gas()
  br label %"$have_gas_647"

"$have_gas_647":                                  ; preds = %"$out_of_gas_646", %"$have_gas_638"
  %"$consume_648" = sub i64 %"$gasrem_644", 2
  store i64 %"$consume_648", i64* @_gasrem, align 8
  %"$x_cast_650" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %x_cast, align 8
  %"$x_cast_tag_651" = getelementptr inbounds %TName_Option_ByStr20_with_contract_end, %TName_Option_ByStr20_with_contract_end* %"$x_cast_650", i32 0, i32 0
  %"$x_cast_tag_652" = load i8, i8* %"$x_cast_tag_651", align 1
  switch i8 %"$x_cast_tag_652", label %"$empty_default_653" [
    i8 0, label %"$Some_654"
    i8 1, label %"$None_702"
  ]

"$Some_654":                                      ; preds = %"$have_gas_647"
  %"$x_cast_655" = bitcast %TName_Option_ByStr20_with_contract_end* %"$x_cast_650" to %CName_Some_ByStr20_with_contract_end*
  %"$x_as_address_gep_656" = getelementptr inbounds %CName_Some_ByStr20_with_contract_end, %CName_Some_ByStr20_with_contract_end* %"$x_cast_655", i32 0, i32 1
  %"$x_as_address_load_657" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_656", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_657", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_659" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_660" = alloca [20 x i8], align 1
  %"$x_as_address_661" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_661", [20 x i8]* %"$bal_x_as_address_660", align 1
  %"$bal_call_662" = call i8* @_fetch_remote_field(i8* %"$execptr_load_659", [20 x i8]* %"$bal_x_as_address_660", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_658", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$bal_663" = bitcast i8* %"$bal_call_662" to %Uint128*
  %"$bal_664" = load %Uint128, %Uint128* %"$bal_663", align 8
  store %Uint128 %"$bal_664", %Uint128* %bal, align 8
  %"$_literal_cost_bal_665" = alloca %Uint128, align 8
  %"$bal_666" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_666", %Uint128* %"$_literal_cost_bal_665", align 8
  %"$$_literal_cost_bal_665_667" = bitcast %Uint128* %"$_literal_cost_bal_665" to i8*
  %"$_literal_cost_call_668" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_665_667")
  %"$gasadd_669" = add i64 %"$_literal_cost_call_668", 0
  %"$gasrem_670" = load i64, i64* @_gasrem, align 8
  %"$gascmp_671" = icmp ugt i64 %"$gasadd_669", %"$gasrem_670"
  br i1 %"$gascmp_671", label %"$out_of_gas_672", label %"$have_gas_673"

"$out_of_gas_672":                                ; preds = %"$Some_654"
  call void @_out_of_gas()
  br label %"$have_gas_673"

"$have_gas_673":                                  ; preds = %"$out_of_gas_672", %"$Some_654"
  %"$consume_674" = sub i64 %"$gasrem_670", %"$gasadd_669"
  store i64 %"$consume_674", i64* @_gasrem, align 8
  %"$gasrem_675" = load i64, i64* @_gasrem, align 8
  %"$gascmp_676" = icmp ugt i64 1, %"$gasrem_675"
  br i1 %"$gascmp_676", label %"$out_of_gas_677", label %"$have_gas_678"

"$out_of_gas_677":                                ; preds = %"$have_gas_673"
  call void @_out_of_gas()
  br label %"$have_gas_678"

"$have_gas_678":                                  ; preds = %"$out_of_gas_677", %"$have_gas_673"
  %"$consume_679" = sub i64 %"$gasrem_675", 1
  store i64 %"$consume_679", i64* @_gasrem, align 8
  %res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_680" = load i64, i64* @_gasrem, align 8
  %"$gascmp_681" = icmp ugt i64 1, %"$gasrem_680"
  br i1 %"$gascmp_681", label %"$out_of_gas_682", label %"$have_gas_683"

"$out_of_gas_682":                                ; preds = %"$have_gas_678"
  call void @_out_of_gas()
  br label %"$have_gas_683"

"$have_gas_683":                                  ; preds = %"$out_of_gas_682", %"$have_gas_678"
  %"$consume_684" = sub i64 %"$gasrem_680", 1
  store i64 %"$consume_684", i64* @_gasrem, align 8
  %"$bal_685" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_686_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_686_salloc" = call i8* @_salloc(i8* %"$adtval_686_load", i64 17)
  %"$adtval_686" = bitcast i8* %"$adtval_686_salloc" to %CName_Some_Uint128*
  %"$adtgep_687" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_686", i32 0, i32 0
  store i8 0, i8* %"$adtgep_687", align 1
  %"$adtgep_688" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_686", i32 0, i32 1
  store %Uint128 %"$bal_685", %Uint128* %"$adtgep_688", align 8
  %"$adtptr_689" = bitcast %CName_Some_Uint128* %"$adtval_686" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_689", %TName_Option_Uint128** %res, align 8
  %"$res_690" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$$res_690_691" = bitcast %TName_Option_Uint128* %"$res_690" to i8*
  %"$_literal_cost_call_692" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i8* %"$$res_690_691")
  %"$gasrem_693" = load i64, i64* @_gasrem, align 8
  %"$gascmp_694" = icmp ugt i64 %"$_literal_cost_call_692", %"$gasrem_693"
  br i1 %"$gascmp_694", label %"$out_of_gas_695", label %"$have_gas_696"

"$out_of_gas_695":                                ; preds = %"$have_gas_683"
  call void @_out_of_gas()
  br label %"$have_gas_696"

"$have_gas_696":                                  ; preds = %"$out_of_gas_695", %"$have_gas_683"
  %"$consume_697" = sub i64 %"$gasrem_693", %"$_literal_cost_call_692"
  store i64 %"$consume_697", i64* @_gasrem, align 8
  %"$execptr_load_698" = load i8*, i8** @_execptr, align 8
  %"$res_700" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$update_value_701" = bitcast %TName_Option_Uint128* %"$res_700" to i8*
  call void @_update_field(i8* %"$execptr_load_698", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_5_1_res_699", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_701")
  br label %"$matchsucc_649"

"$None_702":                                      ; preds = %"$have_gas_647"
  %"$x_cast_703" = bitcast %TName_Option_ByStr20_with_contract_end* %"$x_cast_650" to %CName_None_ByStr20_with_contract_end*
  br label %"$matchsucc_649"

"$empty_default_653":                             ; preds = %"$have_gas_647"
  br label %"$matchsucc_649"

"$matchsucc_649":                                 ; preds = %"$None_702", %"$have_gas_696", %"$empty_default_653"
  ret void
}

define void @CastTest5_1(i8* %0) {
entry:
  %"$_amount_705" = getelementptr i8, i8* %0, i32 0
  %"$_amount_706" = bitcast i8* %"$_amount_705" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_706", align 8
  %"$_origin_707" = getelementptr i8, i8* %0, i32 16
  %"$_origin_708" = bitcast i8* %"$_origin_707" to [20 x i8]*
  %"$_sender_709" = getelementptr i8, i8* %0, i32 36
  %"$_sender_710" = bitcast i8* %"$_sender_709" to [20 x i8]*
  %"$x_711" = getelementptr i8, i8* %0, i32 56
  %"$x_712" = bitcast i8* %"$x_711" to [20 x i8]*
  call void @"$CastTest5_1_631"(%Uint128 %_amount, [20 x i8]* %"$_origin_708", [20 x i8]* %"$_sender_710", [20 x i8]* %"$x_712")
  ret void
}

define internal void @"$CastTest5_2_713"(%Uint128 %_amount, [20 x i8]* %"$_origin_714", [20 x i8]* %"$_sender_715", [20 x i8]* %"$x_716") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_714", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_715", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_716", align 1
  %"$gasrem_717" = load i64, i64* @_gasrem, align 8
  %"$gascmp_718" = icmp ugt i64 3, %"$gasrem_717"
  br i1 %"$gascmp_718", label %"$out_of_gas_719", label %"$have_gas_720"

"$out_of_gas_719":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_720"

"$have_gas_720":                                  ; preds = %"$out_of_gas_719", %entry
  %"$consume_721" = sub i64 %"$gasrem_717", 3
  store i64 %"$consume_721", i64* @_gasrem, align 8
  %x_cast = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  %"$execptr_load_722" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_723" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_723", align 1
  %"$_dynamic_typecast_call_724" = call i8* @_dynamic_typecast(i8* %"$execptr_load_722", [20 x i8]* %"$_dynamic_typecast_x_723", %_TyDescrTy_Typ* @"$TyDescr_Addr_75")
  %"$_dynamic_typecast_725" = bitcast i8* %"$_dynamic_typecast_call_724" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$_dynamic_typecast_725", %TName_Option_ByStr20_with_contract_end** %x_cast, align 8
  %"$gasrem_726" = load i64, i64* @_gasrem, align 8
  %"$gascmp_727" = icmp ugt i64 2, %"$gasrem_726"
  br i1 %"$gascmp_727", label %"$out_of_gas_728", label %"$have_gas_729"

"$out_of_gas_728":                                ; preds = %"$have_gas_720"
  call void @_out_of_gas()
  br label %"$have_gas_729"

"$have_gas_729":                                  ; preds = %"$out_of_gas_728", %"$have_gas_720"
  %"$consume_730" = sub i64 %"$gasrem_726", 2
  store i64 %"$consume_730", i64* @_gasrem, align 8
  %"$x_cast_732" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %x_cast, align 8
  %"$x_cast_tag_733" = getelementptr inbounds %TName_Option_ByStr20_with_contract_end, %TName_Option_ByStr20_with_contract_end* %"$x_cast_732", i32 0, i32 0
  %"$x_cast_tag_734" = load i8, i8* %"$x_cast_tag_733", align 1
  switch i8 %"$x_cast_tag_734", label %"$empty_default_735" [
    i8 0, label %"$Some_736"
    i8 1, label %"$None_784"
  ]

"$Some_736":                                      ; preds = %"$have_gas_729"
  %"$x_cast_737" = bitcast %TName_Option_ByStr20_with_contract_end* %"$x_cast_732" to %CName_Some_ByStr20_with_contract_end*
  %"$x_as_address_gep_738" = getelementptr inbounds %CName_Some_ByStr20_with_contract_end, %CName_Some_ByStr20_with_contract_end* %"$x_cast_737", i32 0, i32 1
  %"$x_as_address_load_739" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_738", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_739", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_741" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_742" = alloca [20 x i8], align 1
  %"$x_as_address_743" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_743", [20 x i8]* %"$bal_x_as_address_742", align 1
  %"$bal_call_744" = call i8* @_fetch_remote_field(i8* %"$execptr_load_741", [20 x i8]* %"$bal_x_as_address_742", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_740", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$bal_745" = bitcast i8* %"$bal_call_744" to %Uint128*
  %"$bal_746" = load %Uint128, %Uint128* %"$bal_745", align 8
  store %Uint128 %"$bal_746", %Uint128* %bal, align 8
  %"$_literal_cost_bal_747" = alloca %Uint128, align 8
  %"$bal_748" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_748", %Uint128* %"$_literal_cost_bal_747", align 8
  %"$$_literal_cost_bal_747_749" = bitcast %Uint128* %"$_literal_cost_bal_747" to i8*
  %"$_literal_cost_call_750" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_747_749")
  %"$gasadd_751" = add i64 %"$_literal_cost_call_750", 0
  %"$gasrem_752" = load i64, i64* @_gasrem, align 8
  %"$gascmp_753" = icmp ugt i64 %"$gasadd_751", %"$gasrem_752"
  br i1 %"$gascmp_753", label %"$out_of_gas_754", label %"$have_gas_755"

"$out_of_gas_754":                                ; preds = %"$Some_736"
  call void @_out_of_gas()
  br label %"$have_gas_755"

"$have_gas_755":                                  ; preds = %"$out_of_gas_754", %"$Some_736"
  %"$consume_756" = sub i64 %"$gasrem_752", %"$gasadd_751"
  store i64 %"$consume_756", i64* @_gasrem, align 8
  %"$gasrem_757" = load i64, i64* @_gasrem, align 8
  %"$gascmp_758" = icmp ugt i64 1, %"$gasrem_757"
  br i1 %"$gascmp_758", label %"$out_of_gas_759", label %"$have_gas_760"

"$out_of_gas_759":                                ; preds = %"$have_gas_755"
  call void @_out_of_gas()
  br label %"$have_gas_760"

"$have_gas_760":                                  ; preds = %"$out_of_gas_759", %"$have_gas_755"
  %"$consume_761" = sub i64 %"$gasrem_757", 1
  store i64 %"$consume_761", i64* @_gasrem, align 8
  %res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_762" = load i64, i64* @_gasrem, align 8
  %"$gascmp_763" = icmp ugt i64 1, %"$gasrem_762"
  br i1 %"$gascmp_763", label %"$out_of_gas_764", label %"$have_gas_765"

"$out_of_gas_764":                                ; preds = %"$have_gas_760"
  call void @_out_of_gas()
  br label %"$have_gas_765"

"$have_gas_765":                                  ; preds = %"$out_of_gas_764", %"$have_gas_760"
  %"$consume_766" = sub i64 %"$gasrem_762", 1
  store i64 %"$consume_766", i64* @_gasrem, align 8
  %"$bal_767" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_768_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_768_salloc" = call i8* @_salloc(i8* %"$adtval_768_load", i64 17)
  %"$adtval_768" = bitcast i8* %"$adtval_768_salloc" to %CName_Some_Uint128*
  %"$adtgep_769" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_768", i32 0, i32 0
  store i8 0, i8* %"$adtgep_769", align 1
  %"$adtgep_770" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_768", i32 0, i32 1
  store %Uint128 %"$bal_767", %Uint128* %"$adtgep_770", align 8
  %"$adtptr_771" = bitcast %CName_Some_Uint128* %"$adtval_768" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_771", %TName_Option_Uint128** %res, align 8
  %"$res_772" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$$res_772_773" = bitcast %TName_Option_Uint128* %"$res_772" to i8*
  %"$_literal_cost_call_774" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i8* %"$$res_772_773")
  %"$gasrem_775" = load i64, i64* @_gasrem, align 8
  %"$gascmp_776" = icmp ugt i64 %"$_literal_cost_call_774", %"$gasrem_775"
  br i1 %"$gascmp_776", label %"$out_of_gas_777", label %"$have_gas_778"

"$out_of_gas_777":                                ; preds = %"$have_gas_765"
  call void @_out_of_gas()
  br label %"$have_gas_778"

"$have_gas_778":                                  ; preds = %"$out_of_gas_777", %"$have_gas_765"
  %"$consume_779" = sub i64 %"$gasrem_775", %"$_literal_cost_call_774"
  store i64 %"$consume_779", i64* @_gasrem, align 8
  %"$execptr_load_780" = load i8*, i8** @_execptr, align 8
  %"$res_782" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$update_value_783" = bitcast %TName_Option_Uint128* %"$res_782" to i8*
  call void @_update_field(i8* %"$execptr_load_780", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_5_2_res_781", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_783")
  br label %"$matchsucc_731"

"$None_784":                                      ; preds = %"$have_gas_729"
  %"$x_cast_785" = bitcast %TName_Option_ByStr20_with_contract_end* %"$x_cast_732" to %CName_None_ByStr20_with_contract_end*
  br label %"$matchsucc_731"

"$empty_default_735":                             ; preds = %"$have_gas_729"
  br label %"$matchsucc_731"

"$matchsucc_731":                                 ; preds = %"$None_784", %"$have_gas_778", %"$empty_default_735"
  ret void
}

define void @CastTest5_2(i8* %0) {
entry:
  %"$_amount_787" = getelementptr i8, i8* %0, i32 0
  %"$_amount_788" = bitcast i8* %"$_amount_787" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_788", align 8
  %"$_origin_789" = getelementptr i8, i8* %0, i32 16
  %"$_origin_790" = bitcast i8* %"$_origin_789" to [20 x i8]*
  %"$_sender_791" = getelementptr i8, i8* %0, i32 36
  %"$_sender_792" = bitcast i8* %"$_sender_791" to [20 x i8]*
  %"$x_793" = getelementptr i8, i8* %0, i32 56
  %"$x_794" = bitcast i8* %"$x_793" to [20 x i8]*
  call void @"$CastTest5_2_713"(%Uint128 %_amount, [20 x i8]* %"$_origin_790", [20 x i8]* %"$_sender_792", [20 x i8]* %"$x_794")
  ret void
}

define internal void @"$CastTest6_1_795"(%Uint128 %_amount, [20 x i8]* %"$_origin_796", [20 x i8]* %"$_sender_797", [20 x i8]* %"$x_798") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_796", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_797", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_798", align 1
  %"$gasrem_799" = load i64, i64* @_gasrem, align 8
  %"$gascmp_800" = icmp ugt i64 5, %"$gasrem_799"
  br i1 %"$gascmp_800", label %"$out_of_gas_801", label %"$have_gas_802"

"$out_of_gas_801":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_802"

"$have_gas_802":                                  ; preds = %"$out_of_gas_801", %entry
  %"$consume_803" = sub i64 %"$gasrem_799", 5
  store i64 %"$consume_803", i64* @_gasrem, align 8
  %x_cast = alloca %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, align 8
  %"$execptr_load_804" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_805" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_805", align 1
  %"$_dynamic_typecast_call_806" = call i8* @_dynamic_typecast(i8* %"$execptr_load_804", [20 x i8]* %"$_dynamic_typecast_x_805", %_TyDescrTy_Typ* @"$TyDescr_Addr_74")
  %"$_dynamic_typecast_807" = bitcast i8* %"$_dynamic_typecast_call_806" to %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  store %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$_dynamic_typecast_807", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$gasrem_808" = load i64, i64* @_gasrem, align 8
  %"$gascmp_809" = icmp ugt i64 2, %"$gasrem_808"
  br i1 %"$gascmp_809", label %"$out_of_gas_810", label %"$have_gas_811"

"$out_of_gas_810":                                ; preds = %"$have_gas_802"
  call void @_out_of_gas()
  br label %"$have_gas_811"

"$have_gas_811":                                  ; preds = %"$out_of_gas_810", %"$have_gas_802"
  %"$consume_812" = sub i64 %"$gasrem_808", 2
  store i64 %"$consume_812", i64* @_gasrem, align 8
  %"$x_cast_814" = load %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$x_cast_tag_815" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_814", i32 0, i32 0
  %"$x_cast_tag_816" = load i8, i8* %"$x_cast_tag_815", align 1
  switch i8 %"$x_cast_tag_816", label %"$empty_default_817" [
    i8 0, label %"$Some_818"
    i8 1, label %"$None_952"
  ]

"$Some_818":                                      ; preds = %"$have_gas_811"
  %"$x_cast_819" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_814" to %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  %"$x_as_address_gep_820" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_819", i32 0, i32 1
  %"$x_as_address_load_821" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_820", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_821", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_823" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_824" = alloca [20 x i8], align 1
  %"$x_as_address_825" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_825", [20 x i8]* %"$bal_x_as_address_824", align 1
  %"$bal_call_826" = call i8* @_fetch_remote_field(i8* %"$execptr_load_823", [20 x i8]* %"$bal_x_as_address_824", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_822", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$bal_827" = bitcast i8* %"$bal_call_826" to %Uint128*
  %"$bal_828" = load %Uint128, %Uint128* %"$bal_827", align 8
  store %Uint128 %"$bal_828", %Uint128* %bal, align 8
  %"$_literal_cost_bal_829" = alloca %Uint128, align 8
  %"$bal_830" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_830", %Uint128* %"$_literal_cost_bal_829", align 8
  %"$$_literal_cost_bal_829_831" = bitcast %Uint128* %"$_literal_cost_bal_829" to i8*
  %"$_literal_cost_call_832" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_829_831")
  %"$gasadd_833" = add i64 %"$_literal_cost_call_832", 0
  %"$gasrem_834" = load i64, i64* @_gasrem, align 8
  %"$gascmp_835" = icmp ugt i64 %"$gasadd_833", %"$gasrem_834"
  br i1 %"$gascmp_835", label %"$out_of_gas_836", label %"$have_gas_837"

"$out_of_gas_836":                                ; preds = %"$Some_818"
  call void @_out_of_gas()
  br label %"$have_gas_837"

"$have_gas_837":                                  ; preds = %"$out_of_gas_836", %"$Some_818"
  %"$consume_838" = sub i64 %"$gasrem_834", %"$gasadd_833"
  store i64 %"$consume_838", i64* @_gasrem, align 8
  %"$gasrem_839" = load i64, i64* @_gasrem, align 8
  %"$gascmp_840" = icmp ugt i64 1, %"$gasrem_839"
  br i1 %"$gascmp_840", label %"$out_of_gas_841", label %"$have_gas_842"

"$out_of_gas_841":                                ; preds = %"$have_gas_837"
  call void @_out_of_gas()
  br label %"$have_gas_842"

"$have_gas_842":                                  ; preds = %"$out_of_gas_841", %"$have_gas_837"
  %"$consume_843" = sub i64 %"$gasrem_839", 1
  store i64 %"$consume_843", i64* @_gasrem, align 8
  %bal_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_844" = load i64, i64* @_gasrem, align 8
  %"$gascmp_845" = icmp ugt i64 1, %"$gasrem_844"
  br i1 %"$gascmp_845", label %"$out_of_gas_846", label %"$have_gas_847"

"$out_of_gas_846":                                ; preds = %"$have_gas_842"
  call void @_out_of_gas()
  br label %"$have_gas_847"

"$have_gas_847":                                  ; preds = %"$out_of_gas_846", %"$have_gas_842"
  %"$consume_848" = sub i64 %"$gasrem_844", 1
  store i64 %"$consume_848", i64* @_gasrem, align 8
  %"$bal_849" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_850_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_850_salloc" = call i8* @_salloc(i8* %"$adtval_850_load", i64 17)
  %"$adtval_850" = bitcast i8* %"$adtval_850_salloc" to %CName_Some_Uint128*
  %"$adtgep_851" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_850", i32 0, i32 0
  store i8 0, i8* %"$adtgep_851", align 1
  %"$adtgep_852" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_850", i32 0, i32 1
  store %Uint128 %"$bal_849", %Uint128* %"$adtgep_852", align 8
  %"$adtptr_853" = bitcast %CName_Some_Uint128* %"$adtval_850" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_853", %TName_Option_Uint128** %bal_res, align 8
  %"$bal_res_854" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$$bal_res_854_855" = bitcast %TName_Option_Uint128* %"$bal_res_854" to i8*
  %"$_literal_cost_call_856" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i8* %"$$bal_res_854_855")
  %"$gasrem_857" = load i64, i64* @_gasrem, align 8
  %"$gascmp_858" = icmp ugt i64 %"$_literal_cost_call_856", %"$gasrem_857"
  br i1 %"$gascmp_858", label %"$out_of_gas_859", label %"$have_gas_860"

"$out_of_gas_859":                                ; preds = %"$have_gas_847"
  call void @_out_of_gas()
  br label %"$have_gas_860"

"$have_gas_860":                                  ; preds = %"$out_of_gas_859", %"$have_gas_847"
  %"$consume_861" = sub i64 %"$gasrem_857", %"$_literal_cost_call_856"
  store i64 %"$consume_861", i64* @_gasrem, align 8
  %"$execptr_load_862" = load i8*, i8** @_execptr, align 8
  %"$bal_res_864" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$update_value_865" = bitcast %TName_Option_Uint128* %"$bal_res_864" to i8*
  call void @_update_field(i8* %"$execptr_load_862", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_1_bal_res_863", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_865")
  %f = alloca %Uint128, align 8
  %"$execptr_load_867" = load i8*, i8** @_execptr, align 8
  %"$f_x_as_address_868" = alloca [20 x i8], align 1
  %"$x_as_address_869" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_869", [20 x i8]* %"$f_x_as_address_868", align 1
  %"$f_call_870" = call i8* @_fetch_remote_field(i8* %"$execptr_load_867", [20 x i8]* %"$f_x_as_address_868", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_866", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$f_871" = bitcast i8* %"$f_call_870" to %Uint128*
  %"$f_872" = load %Uint128, %Uint128* %"$f_871", align 8
  store %Uint128 %"$f_872", %Uint128* %f, align 8
  %"$_literal_cost_f_873" = alloca %Uint128, align 8
  %"$f_874" = load %Uint128, %Uint128* %f, align 8
  store %Uint128 %"$f_874", %Uint128* %"$_literal_cost_f_873", align 8
  %"$$_literal_cost_f_873_875" = bitcast %Uint128* %"$_literal_cost_f_873" to i8*
  %"$_literal_cost_call_876" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_f_873_875")
  %"$gasadd_877" = add i64 %"$_literal_cost_call_876", 0
  %"$gasrem_878" = load i64, i64* @_gasrem, align 8
  %"$gascmp_879" = icmp ugt i64 %"$gasadd_877", %"$gasrem_878"
  br i1 %"$gascmp_879", label %"$out_of_gas_880", label %"$have_gas_881"

"$out_of_gas_880":                                ; preds = %"$have_gas_860"
  call void @_out_of_gas()
  br label %"$have_gas_881"

"$have_gas_881":                                  ; preds = %"$out_of_gas_880", %"$have_gas_860"
  %"$consume_882" = sub i64 %"$gasrem_878", %"$gasadd_877"
  store i64 %"$consume_882", i64* @_gasrem, align 8
  %"$gasrem_883" = load i64, i64* @_gasrem, align 8
  %"$gascmp_884" = icmp ugt i64 1, %"$gasrem_883"
  br i1 %"$gascmp_884", label %"$out_of_gas_885", label %"$have_gas_886"

"$out_of_gas_885":                                ; preds = %"$have_gas_881"
  call void @_out_of_gas()
  br label %"$have_gas_886"

"$have_gas_886":                                  ; preds = %"$out_of_gas_885", %"$have_gas_881"
  %"$consume_887" = sub i64 %"$gasrem_883", 1
  store i64 %"$consume_887", i64* @_gasrem, align 8
  %f_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_888" = load i64, i64* @_gasrem, align 8
  %"$gascmp_889" = icmp ugt i64 1, %"$gasrem_888"
  br i1 %"$gascmp_889", label %"$out_of_gas_890", label %"$have_gas_891"

"$out_of_gas_890":                                ; preds = %"$have_gas_886"
  call void @_out_of_gas()
  br label %"$have_gas_891"

"$have_gas_891":                                  ; preds = %"$out_of_gas_890", %"$have_gas_886"
  %"$consume_892" = sub i64 %"$gasrem_888", 1
  store i64 %"$consume_892", i64* @_gasrem, align 8
  %"$f_893" = load %Uint128, %Uint128* %f, align 8
  %"$adtval_894_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_894_salloc" = call i8* @_salloc(i8* %"$adtval_894_load", i64 17)
  %"$adtval_894" = bitcast i8* %"$adtval_894_salloc" to %CName_Some_Uint128*
  %"$adtgep_895" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_894", i32 0, i32 0
  store i8 0, i8* %"$adtgep_895", align 1
  %"$adtgep_896" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_894", i32 0, i32 1
  store %Uint128 %"$f_893", %Uint128* %"$adtgep_896", align 8
  %"$adtptr_897" = bitcast %CName_Some_Uint128* %"$adtval_894" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_897", %TName_Option_Uint128** %f_res, align 8
  %"$f_res_898" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$$f_res_898_899" = bitcast %TName_Option_Uint128* %"$f_res_898" to i8*
  %"$_literal_cost_call_900" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i8* %"$$f_res_898_899")
  %"$gasrem_901" = load i64, i64* @_gasrem, align 8
  %"$gascmp_902" = icmp ugt i64 %"$_literal_cost_call_900", %"$gasrem_901"
  br i1 %"$gascmp_902", label %"$out_of_gas_903", label %"$have_gas_904"

"$out_of_gas_903":                                ; preds = %"$have_gas_891"
  call void @_out_of_gas()
  br label %"$have_gas_904"

"$have_gas_904":                                  ; preds = %"$out_of_gas_903", %"$have_gas_891"
  %"$consume_905" = sub i64 %"$gasrem_901", %"$_literal_cost_call_900"
  store i64 %"$consume_905", i64* @_gasrem, align 8
  %"$execptr_load_906" = load i8*, i8** @_execptr, align 8
  %"$f_res_908" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$update_value_909" = bitcast %TName_Option_Uint128* %"$f_res_908" to i8*
  call void @_update_field(i8* %"$execptr_load_906", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_1_f_res_907", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_909")
  %g = alloca %TName_Bool*, align 8
  %"$execptr_load_911" = load i8*, i8** @_execptr, align 8
  %"$g_x_as_address_912" = alloca [20 x i8], align 1
  %"$x_as_address_913" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_913", [20 x i8]* %"$g_x_as_address_912", align 1
  %"$g_call_914" = call i8* @_fetch_remote_field(i8* %"$execptr_load_911", [20 x i8]* %"$g_x_as_address_912", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_910", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i32 0, i8* null, i32 1)
  %"$g_915" = bitcast i8* %"$g_call_914" to %TName_Bool*
  store %TName_Bool* %"$g_915", %TName_Bool** %g, align 8
  %"$g_916" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$$g_916_917" = bitcast %TName_Bool* %"$g_916" to i8*
  %"$_literal_cost_call_918" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i8* %"$$g_916_917")
  %"$gasadd_919" = add i64 %"$_literal_cost_call_918", 0
  %"$gasrem_920" = load i64, i64* @_gasrem, align 8
  %"$gascmp_921" = icmp ugt i64 %"$gasadd_919", %"$gasrem_920"
  br i1 %"$gascmp_921", label %"$out_of_gas_922", label %"$have_gas_923"

"$out_of_gas_922":                                ; preds = %"$have_gas_904"
  call void @_out_of_gas()
  br label %"$have_gas_923"

"$have_gas_923":                                  ; preds = %"$out_of_gas_922", %"$have_gas_904"
  %"$consume_924" = sub i64 %"$gasrem_920", %"$gasadd_919"
  store i64 %"$consume_924", i64* @_gasrem, align 8
  %"$gasrem_925" = load i64, i64* @_gasrem, align 8
  %"$gascmp_926" = icmp ugt i64 1, %"$gasrem_925"
  br i1 %"$gascmp_926", label %"$out_of_gas_927", label %"$have_gas_928"

"$out_of_gas_927":                                ; preds = %"$have_gas_923"
  call void @_out_of_gas()
  br label %"$have_gas_928"

"$have_gas_928":                                  ; preds = %"$out_of_gas_927", %"$have_gas_923"
  %"$consume_929" = sub i64 %"$gasrem_925", 1
  store i64 %"$consume_929", i64* @_gasrem, align 8
  %g_res = alloca %TName_Option_Bool*, align 8
  %"$gasrem_930" = load i64, i64* @_gasrem, align 8
  %"$gascmp_931" = icmp ugt i64 1, %"$gasrem_930"
  br i1 %"$gascmp_931", label %"$out_of_gas_932", label %"$have_gas_933"

"$out_of_gas_932":                                ; preds = %"$have_gas_928"
  call void @_out_of_gas()
  br label %"$have_gas_933"

"$have_gas_933":                                  ; preds = %"$out_of_gas_932", %"$have_gas_928"
  %"$consume_934" = sub i64 %"$gasrem_930", 1
  store i64 %"$consume_934", i64* @_gasrem, align 8
  %"$g_935" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$adtval_936_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_936_salloc" = call i8* @_salloc(i8* %"$adtval_936_load", i64 9)
  %"$adtval_936" = bitcast i8* %"$adtval_936_salloc" to %CName_Some_Bool*
  %"$adtgep_937" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_936", i32 0, i32 0
  store i8 0, i8* %"$adtgep_937", align 1
  %"$adtgep_938" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_936", i32 0, i32 1
  store %TName_Bool* %"$g_935", %TName_Bool** %"$adtgep_938", align 8
  %"$adtptr_939" = bitcast %CName_Some_Bool* %"$adtval_936" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_939", %TName_Option_Bool** %g_res, align 8
  %"$g_res_940" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$$g_res_940_941" = bitcast %TName_Option_Bool* %"$g_res_940" to i8*
  %"$_literal_cost_call_942" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i8* %"$$g_res_940_941")
  %"$gasrem_943" = load i64, i64* @_gasrem, align 8
  %"$gascmp_944" = icmp ugt i64 %"$_literal_cost_call_942", %"$gasrem_943"
  br i1 %"$gascmp_944", label %"$out_of_gas_945", label %"$have_gas_946"

"$out_of_gas_945":                                ; preds = %"$have_gas_933"
  call void @_out_of_gas()
  br label %"$have_gas_946"

"$have_gas_946":                                  ; preds = %"$out_of_gas_945", %"$have_gas_933"
  %"$consume_947" = sub i64 %"$gasrem_943", %"$_literal_cost_call_942"
  store i64 %"$consume_947", i64* @_gasrem, align 8
  %"$execptr_load_948" = load i8*, i8** @_execptr, align 8
  %"$g_res_950" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$update_value_951" = bitcast %TName_Option_Bool* %"$g_res_950" to i8*
  call void @_update_field(i8* %"$execptr_load_948", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_1_g_res_949", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i32 0, i8* null, i8* %"$update_value_951")
  br label %"$matchsucc_813"

"$None_952":                                      ; preds = %"$have_gas_811"
  %"$x_cast_953" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_814" to %"CName_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  br label %"$matchsucc_813"

"$empty_default_817":                             ; preds = %"$have_gas_811"
  br label %"$matchsucc_813"

"$matchsucc_813":                                 ; preds = %"$None_952", %"$have_gas_946", %"$empty_default_817"
  ret void
}

define void @CastTest6_1(i8* %0) {
entry:
  %"$_amount_955" = getelementptr i8, i8* %0, i32 0
  %"$_amount_956" = bitcast i8* %"$_amount_955" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_956", align 8
  %"$_origin_957" = getelementptr i8, i8* %0, i32 16
  %"$_origin_958" = bitcast i8* %"$_origin_957" to [20 x i8]*
  %"$_sender_959" = getelementptr i8, i8* %0, i32 36
  %"$_sender_960" = bitcast i8* %"$_sender_959" to [20 x i8]*
  %"$x_961" = getelementptr i8, i8* %0, i32 56
  %"$x_962" = bitcast i8* %"$x_961" to [20 x i8]*
  call void @"$CastTest6_1_795"(%Uint128 %_amount, [20 x i8]* %"$_origin_958", [20 x i8]* %"$_sender_960", [20 x i8]* %"$x_962")
  ret void
}

define internal void @"$CastTest6_2_963"(%Uint128 %_amount, [20 x i8]* %"$_origin_964", [20 x i8]* %"$_sender_965", [20 x i8]* %"$x_966") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_964", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_965", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_966", align 1
  %"$gasrem_967" = load i64, i64* @_gasrem, align 8
  %"$gascmp_968" = icmp ugt i64 5, %"$gasrem_967"
  br i1 %"$gascmp_968", label %"$out_of_gas_969", label %"$have_gas_970"

"$out_of_gas_969":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_970"

"$have_gas_970":                                  ; preds = %"$out_of_gas_969", %entry
  %"$consume_971" = sub i64 %"$gasrem_967", 5
  store i64 %"$consume_971", i64* @_gasrem, align 8
  %x_cast = alloca %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, align 8
  %"$execptr_load_972" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_973" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_973", align 1
  %"$_dynamic_typecast_call_974" = call i8* @_dynamic_typecast(i8* %"$execptr_load_972", [20 x i8]* %"$_dynamic_typecast_x_973", %_TyDescrTy_Typ* @"$TyDescr_Addr_74")
  %"$_dynamic_typecast_975" = bitcast i8* %"$_dynamic_typecast_call_974" to %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  store %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$_dynamic_typecast_975", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$gasrem_976" = load i64, i64* @_gasrem, align 8
  %"$gascmp_977" = icmp ugt i64 2, %"$gasrem_976"
  br i1 %"$gascmp_977", label %"$out_of_gas_978", label %"$have_gas_979"

"$out_of_gas_978":                                ; preds = %"$have_gas_970"
  call void @_out_of_gas()
  br label %"$have_gas_979"

"$have_gas_979":                                  ; preds = %"$out_of_gas_978", %"$have_gas_970"
  %"$consume_980" = sub i64 %"$gasrem_976", 2
  store i64 %"$consume_980", i64* @_gasrem, align 8
  %"$x_cast_982" = load %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$x_cast_tag_983" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_982", i32 0, i32 0
  %"$x_cast_tag_984" = load i8, i8* %"$x_cast_tag_983", align 1
  switch i8 %"$x_cast_tag_984", label %"$empty_default_985" [
    i8 0, label %"$Some_986"
    i8 1, label %"$None_1120"
  ]

"$Some_986":                                      ; preds = %"$have_gas_979"
  %"$x_cast_987" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_982" to %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  %"$x_as_address_gep_988" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_987", i32 0, i32 1
  %"$x_as_address_load_989" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_988", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_989", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_991" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_992" = alloca [20 x i8], align 1
  %"$x_as_address_993" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_993", [20 x i8]* %"$bal_x_as_address_992", align 1
  %"$bal_call_994" = call i8* @_fetch_remote_field(i8* %"$execptr_load_991", [20 x i8]* %"$bal_x_as_address_992", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_990", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$bal_995" = bitcast i8* %"$bal_call_994" to %Uint128*
  %"$bal_996" = load %Uint128, %Uint128* %"$bal_995", align 8
  store %Uint128 %"$bal_996", %Uint128* %bal, align 8
  %"$_literal_cost_bal_997" = alloca %Uint128, align 8
  %"$bal_998" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_998", %Uint128* %"$_literal_cost_bal_997", align 8
  %"$$_literal_cost_bal_997_999" = bitcast %Uint128* %"$_literal_cost_bal_997" to i8*
  %"$_literal_cost_call_1000" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_997_999")
  %"$gasadd_1001" = add i64 %"$_literal_cost_call_1000", 0
  %"$gasrem_1002" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1003" = icmp ugt i64 %"$gasadd_1001", %"$gasrem_1002"
  br i1 %"$gascmp_1003", label %"$out_of_gas_1004", label %"$have_gas_1005"

"$out_of_gas_1004":                               ; preds = %"$Some_986"
  call void @_out_of_gas()
  br label %"$have_gas_1005"

"$have_gas_1005":                                 ; preds = %"$out_of_gas_1004", %"$Some_986"
  %"$consume_1006" = sub i64 %"$gasrem_1002", %"$gasadd_1001"
  store i64 %"$consume_1006", i64* @_gasrem, align 8
  %"$gasrem_1007" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1008" = icmp ugt i64 1, %"$gasrem_1007"
  br i1 %"$gascmp_1008", label %"$out_of_gas_1009", label %"$have_gas_1010"

"$out_of_gas_1009":                               ; preds = %"$have_gas_1005"
  call void @_out_of_gas()
  br label %"$have_gas_1010"

"$have_gas_1010":                                 ; preds = %"$out_of_gas_1009", %"$have_gas_1005"
  %"$consume_1011" = sub i64 %"$gasrem_1007", 1
  store i64 %"$consume_1011", i64* @_gasrem, align 8
  %bal_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1012" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1013" = icmp ugt i64 1, %"$gasrem_1012"
  br i1 %"$gascmp_1013", label %"$out_of_gas_1014", label %"$have_gas_1015"

"$out_of_gas_1014":                               ; preds = %"$have_gas_1010"
  call void @_out_of_gas()
  br label %"$have_gas_1015"

"$have_gas_1015":                                 ; preds = %"$out_of_gas_1014", %"$have_gas_1010"
  %"$consume_1016" = sub i64 %"$gasrem_1012", 1
  store i64 %"$consume_1016", i64* @_gasrem, align 8
  %"$bal_1017" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_1018_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1018_salloc" = call i8* @_salloc(i8* %"$adtval_1018_load", i64 17)
  %"$adtval_1018" = bitcast i8* %"$adtval_1018_salloc" to %CName_Some_Uint128*
  %"$adtgep_1019" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1018", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1019", align 1
  %"$adtgep_1020" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1018", i32 0, i32 1
  store %Uint128 %"$bal_1017", %Uint128* %"$adtgep_1020", align 8
  %"$adtptr_1021" = bitcast %CName_Some_Uint128* %"$adtval_1018" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1021", %TName_Option_Uint128** %bal_res, align 8
  %"$bal_res_1022" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$$bal_res_1022_1023" = bitcast %TName_Option_Uint128* %"$bal_res_1022" to i8*
  %"$_literal_cost_call_1024" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i8* %"$$bal_res_1022_1023")
  %"$gasrem_1025" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1026" = icmp ugt i64 %"$_literal_cost_call_1024", %"$gasrem_1025"
  br i1 %"$gascmp_1026", label %"$out_of_gas_1027", label %"$have_gas_1028"

"$out_of_gas_1027":                               ; preds = %"$have_gas_1015"
  call void @_out_of_gas()
  br label %"$have_gas_1028"

"$have_gas_1028":                                 ; preds = %"$out_of_gas_1027", %"$have_gas_1015"
  %"$consume_1029" = sub i64 %"$gasrem_1025", %"$_literal_cost_call_1024"
  store i64 %"$consume_1029", i64* @_gasrem, align 8
  %"$execptr_load_1030" = load i8*, i8** @_execptr, align 8
  %"$bal_res_1032" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$update_value_1033" = bitcast %TName_Option_Uint128* %"$bal_res_1032" to i8*
  call void @_update_field(i8* %"$execptr_load_1030", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_2_bal_res_1031", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_1033")
  %f = alloca %Uint128, align 8
  %"$execptr_load_1035" = load i8*, i8** @_execptr, align 8
  %"$f_x_as_address_1036" = alloca [20 x i8], align 1
  %"$x_as_address_1037" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1037", [20 x i8]* %"$f_x_as_address_1036", align 1
  %"$f_call_1038" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1035", [20 x i8]* %"$f_x_as_address_1036", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_1034", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$f_1039" = bitcast i8* %"$f_call_1038" to %Uint128*
  %"$f_1040" = load %Uint128, %Uint128* %"$f_1039", align 8
  store %Uint128 %"$f_1040", %Uint128* %f, align 8
  %"$_literal_cost_f_1041" = alloca %Uint128, align 8
  %"$f_1042" = load %Uint128, %Uint128* %f, align 8
  store %Uint128 %"$f_1042", %Uint128* %"$_literal_cost_f_1041", align 8
  %"$$_literal_cost_f_1041_1043" = bitcast %Uint128* %"$_literal_cost_f_1041" to i8*
  %"$_literal_cost_call_1044" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_f_1041_1043")
  %"$gasadd_1045" = add i64 %"$_literal_cost_call_1044", 0
  %"$gasrem_1046" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1047" = icmp ugt i64 %"$gasadd_1045", %"$gasrem_1046"
  br i1 %"$gascmp_1047", label %"$out_of_gas_1048", label %"$have_gas_1049"

"$out_of_gas_1048":                               ; preds = %"$have_gas_1028"
  call void @_out_of_gas()
  br label %"$have_gas_1049"

"$have_gas_1049":                                 ; preds = %"$out_of_gas_1048", %"$have_gas_1028"
  %"$consume_1050" = sub i64 %"$gasrem_1046", %"$gasadd_1045"
  store i64 %"$consume_1050", i64* @_gasrem, align 8
  %"$gasrem_1051" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1052" = icmp ugt i64 1, %"$gasrem_1051"
  br i1 %"$gascmp_1052", label %"$out_of_gas_1053", label %"$have_gas_1054"

"$out_of_gas_1053":                               ; preds = %"$have_gas_1049"
  call void @_out_of_gas()
  br label %"$have_gas_1054"

"$have_gas_1054":                                 ; preds = %"$out_of_gas_1053", %"$have_gas_1049"
  %"$consume_1055" = sub i64 %"$gasrem_1051", 1
  store i64 %"$consume_1055", i64* @_gasrem, align 8
  %f_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1056" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1057" = icmp ugt i64 1, %"$gasrem_1056"
  br i1 %"$gascmp_1057", label %"$out_of_gas_1058", label %"$have_gas_1059"

"$out_of_gas_1058":                               ; preds = %"$have_gas_1054"
  call void @_out_of_gas()
  br label %"$have_gas_1059"

"$have_gas_1059":                                 ; preds = %"$out_of_gas_1058", %"$have_gas_1054"
  %"$consume_1060" = sub i64 %"$gasrem_1056", 1
  store i64 %"$consume_1060", i64* @_gasrem, align 8
  %"$f_1061" = load %Uint128, %Uint128* %f, align 8
  %"$adtval_1062_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1062_salloc" = call i8* @_salloc(i8* %"$adtval_1062_load", i64 17)
  %"$adtval_1062" = bitcast i8* %"$adtval_1062_salloc" to %CName_Some_Uint128*
  %"$adtgep_1063" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1062", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1063", align 1
  %"$adtgep_1064" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1062", i32 0, i32 1
  store %Uint128 %"$f_1061", %Uint128* %"$adtgep_1064", align 8
  %"$adtptr_1065" = bitcast %CName_Some_Uint128* %"$adtval_1062" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1065", %TName_Option_Uint128** %f_res, align 8
  %"$f_res_1066" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$$f_res_1066_1067" = bitcast %TName_Option_Uint128* %"$f_res_1066" to i8*
  %"$_literal_cost_call_1068" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i8* %"$$f_res_1066_1067")
  %"$gasrem_1069" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1070" = icmp ugt i64 %"$_literal_cost_call_1068", %"$gasrem_1069"
  br i1 %"$gascmp_1070", label %"$out_of_gas_1071", label %"$have_gas_1072"

"$out_of_gas_1071":                               ; preds = %"$have_gas_1059"
  call void @_out_of_gas()
  br label %"$have_gas_1072"

"$have_gas_1072":                                 ; preds = %"$out_of_gas_1071", %"$have_gas_1059"
  %"$consume_1073" = sub i64 %"$gasrem_1069", %"$_literal_cost_call_1068"
  store i64 %"$consume_1073", i64* @_gasrem, align 8
  %"$execptr_load_1074" = load i8*, i8** @_execptr, align 8
  %"$f_res_1076" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$update_value_1077" = bitcast %TName_Option_Uint128* %"$f_res_1076" to i8*
  call void @_update_field(i8* %"$execptr_load_1074", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_2_f_res_1075", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_1077")
  %g = alloca %TName_Bool*, align 8
  %"$execptr_load_1079" = load i8*, i8** @_execptr, align 8
  %"$g_x_as_address_1080" = alloca [20 x i8], align 1
  %"$x_as_address_1081" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1081", [20 x i8]* %"$g_x_as_address_1080", align 1
  %"$g_call_1082" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1079", [20 x i8]* %"$g_x_as_address_1080", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_1078", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i32 0, i8* null, i32 1)
  %"$g_1083" = bitcast i8* %"$g_call_1082" to %TName_Bool*
  store %TName_Bool* %"$g_1083", %TName_Bool** %g, align 8
  %"$g_1084" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$$g_1084_1085" = bitcast %TName_Bool* %"$g_1084" to i8*
  %"$_literal_cost_call_1086" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i8* %"$$g_1084_1085")
  %"$gasadd_1087" = add i64 %"$_literal_cost_call_1086", 0
  %"$gasrem_1088" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1089" = icmp ugt i64 %"$gasadd_1087", %"$gasrem_1088"
  br i1 %"$gascmp_1089", label %"$out_of_gas_1090", label %"$have_gas_1091"

"$out_of_gas_1090":                               ; preds = %"$have_gas_1072"
  call void @_out_of_gas()
  br label %"$have_gas_1091"

"$have_gas_1091":                                 ; preds = %"$out_of_gas_1090", %"$have_gas_1072"
  %"$consume_1092" = sub i64 %"$gasrem_1088", %"$gasadd_1087"
  store i64 %"$consume_1092", i64* @_gasrem, align 8
  %"$gasrem_1093" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1094" = icmp ugt i64 1, %"$gasrem_1093"
  br i1 %"$gascmp_1094", label %"$out_of_gas_1095", label %"$have_gas_1096"

"$out_of_gas_1095":                               ; preds = %"$have_gas_1091"
  call void @_out_of_gas()
  br label %"$have_gas_1096"

"$have_gas_1096":                                 ; preds = %"$out_of_gas_1095", %"$have_gas_1091"
  %"$consume_1097" = sub i64 %"$gasrem_1093", 1
  store i64 %"$consume_1097", i64* @_gasrem, align 8
  %g_res = alloca %TName_Option_Bool*, align 8
  %"$gasrem_1098" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1099" = icmp ugt i64 1, %"$gasrem_1098"
  br i1 %"$gascmp_1099", label %"$out_of_gas_1100", label %"$have_gas_1101"

"$out_of_gas_1100":                               ; preds = %"$have_gas_1096"
  call void @_out_of_gas()
  br label %"$have_gas_1101"

"$have_gas_1101":                                 ; preds = %"$out_of_gas_1100", %"$have_gas_1096"
  %"$consume_1102" = sub i64 %"$gasrem_1098", 1
  store i64 %"$consume_1102", i64* @_gasrem, align 8
  %"$g_1103" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$adtval_1104_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1104_salloc" = call i8* @_salloc(i8* %"$adtval_1104_load", i64 9)
  %"$adtval_1104" = bitcast i8* %"$adtval_1104_salloc" to %CName_Some_Bool*
  %"$adtgep_1105" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1104", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1105", align 1
  %"$adtgep_1106" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1104", i32 0, i32 1
  store %TName_Bool* %"$g_1103", %TName_Bool** %"$adtgep_1106", align 8
  %"$adtptr_1107" = bitcast %CName_Some_Bool* %"$adtval_1104" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_1107", %TName_Option_Bool** %g_res, align 8
  %"$g_res_1108" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$$g_res_1108_1109" = bitcast %TName_Option_Bool* %"$g_res_1108" to i8*
  %"$_literal_cost_call_1110" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i8* %"$$g_res_1108_1109")
  %"$gasrem_1111" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1112" = icmp ugt i64 %"$_literal_cost_call_1110", %"$gasrem_1111"
  br i1 %"$gascmp_1112", label %"$out_of_gas_1113", label %"$have_gas_1114"

"$out_of_gas_1113":                               ; preds = %"$have_gas_1101"
  call void @_out_of_gas()
  br label %"$have_gas_1114"

"$have_gas_1114":                                 ; preds = %"$out_of_gas_1113", %"$have_gas_1101"
  %"$consume_1115" = sub i64 %"$gasrem_1111", %"$_literal_cost_call_1110"
  store i64 %"$consume_1115", i64* @_gasrem, align 8
  %"$execptr_load_1116" = load i8*, i8** @_execptr, align 8
  %"$g_res_1118" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$update_value_1119" = bitcast %TName_Option_Bool* %"$g_res_1118" to i8*
  call void @_update_field(i8* %"$execptr_load_1116", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_2_g_res_1117", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i32 0, i8* null, i8* %"$update_value_1119")
  br label %"$matchsucc_981"

"$None_1120":                                     ; preds = %"$have_gas_979"
  %"$x_cast_1121" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_982" to %"CName_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  br label %"$matchsucc_981"

"$empty_default_985":                             ; preds = %"$have_gas_979"
  br label %"$matchsucc_981"

"$matchsucc_981":                                 ; preds = %"$None_1120", %"$have_gas_1114", %"$empty_default_985"
  ret void
}

define void @CastTest6_2(i8* %0) {
entry:
  %"$_amount_1123" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1124" = bitcast i8* %"$_amount_1123" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1124", align 8
  %"$_origin_1125" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1126" = bitcast i8* %"$_origin_1125" to [20 x i8]*
  %"$_sender_1127" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1128" = bitcast i8* %"$_sender_1127" to [20 x i8]*
  %"$x_1129" = getelementptr i8, i8* %0, i32 56
  %"$x_1130" = bitcast i8* %"$x_1129" to [20 x i8]*
  call void @"$CastTest6_2_963"(%Uint128 %_amount, [20 x i8]* %"$_origin_1126", [20 x i8]* %"$_sender_1128", [20 x i8]* %"$x_1130")
  ret void
}

define internal void @"$CastTest6_3_1131"(%Uint128 %_amount, [20 x i8]* %"$_origin_1132", [20 x i8]* %"$_sender_1133", [20 x i8]* %"$x_1134") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1132", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1133", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_1134", align 1
  %"$gasrem_1135" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1136" = icmp ugt i64 5, %"$gasrem_1135"
  br i1 %"$gascmp_1136", label %"$out_of_gas_1137", label %"$have_gas_1138"

"$out_of_gas_1137":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1138"

"$have_gas_1138":                                 ; preds = %"$out_of_gas_1137", %entry
  %"$consume_1139" = sub i64 %"$gasrem_1135", 5
  store i64 %"$consume_1139", i64* @_gasrem, align 8
  %x_cast = alloca %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, align 8
  %"$execptr_load_1140" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_1141" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_1141", align 1
  %"$_dynamic_typecast_call_1142" = call i8* @_dynamic_typecast(i8* %"$execptr_load_1140", [20 x i8]* %"$_dynamic_typecast_x_1141", %_TyDescrTy_Typ* @"$TyDescr_Addr_74")
  %"$_dynamic_typecast_1143" = bitcast i8* %"$_dynamic_typecast_call_1142" to %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  store %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$_dynamic_typecast_1143", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$gasrem_1144" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1145" = icmp ugt i64 2, %"$gasrem_1144"
  br i1 %"$gascmp_1145", label %"$out_of_gas_1146", label %"$have_gas_1147"

"$out_of_gas_1146":                               ; preds = %"$have_gas_1138"
  call void @_out_of_gas()
  br label %"$have_gas_1147"

"$have_gas_1147":                                 ; preds = %"$out_of_gas_1146", %"$have_gas_1138"
  %"$consume_1148" = sub i64 %"$gasrem_1144", 2
  store i64 %"$consume_1148", i64* @_gasrem, align 8
  %"$x_cast_1150" = load %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$x_cast_tag_1151" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1150", i32 0, i32 0
  %"$x_cast_tag_1152" = load i8, i8* %"$x_cast_tag_1151", align 1
  switch i8 %"$x_cast_tag_1152", label %"$empty_default_1153" [
    i8 0, label %"$Some_1154"
    i8 1, label %"$None_1288"
  ]

"$Some_1154":                                     ; preds = %"$have_gas_1147"
  %"$x_cast_1155" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1150" to %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  %"$x_as_address_gep_1156" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1155", i32 0, i32 1
  %"$x_as_address_load_1157" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_1156", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_1157", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_1159" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_1160" = alloca [20 x i8], align 1
  %"$x_as_address_1161" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1161", [20 x i8]* %"$bal_x_as_address_1160", align 1
  %"$bal_call_1162" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1159", [20 x i8]* %"$bal_x_as_address_1160", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_1158", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$bal_1163" = bitcast i8* %"$bal_call_1162" to %Uint128*
  %"$bal_1164" = load %Uint128, %Uint128* %"$bal_1163", align 8
  store %Uint128 %"$bal_1164", %Uint128* %bal, align 8
  %"$_literal_cost_bal_1165" = alloca %Uint128, align 8
  %"$bal_1166" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_1166", %Uint128* %"$_literal_cost_bal_1165", align 8
  %"$$_literal_cost_bal_1165_1167" = bitcast %Uint128* %"$_literal_cost_bal_1165" to i8*
  %"$_literal_cost_call_1168" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_1165_1167")
  %"$gasadd_1169" = add i64 %"$_literal_cost_call_1168", 0
  %"$gasrem_1170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1171" = icmp ugt i64 %"$gasadd_1169", %"$gasrem_1170"
  br i1 %"$gascmp_1171", label %"$out_of_gas_1172", label %"$have_gas_1173"

"$out_of_gas_1172":                               ; preds = %"$Some_1154"
  call void @_out_of_gas()
  br label %"$have_gas_1173"

"$have_gas_1173":                                 ; preds = %"$out_of_gas_1172", %"$Some_1154"
  %"$consume_1174" = sub i64 %"$gasrem_1170", %"$gasadd_1169"
  store i64 %"$consume_1174", i64* @_gasrem, align 8
  %"$gasrem_1175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1176" = icmp ugt i64 1, %"$gasrem_1175"
  br i1 %"$gascmp_1176", label %"$out_of_gas_1177", label %"$have_gas_1178"

"$out_of_gas_1177":                               ; preds = %"$have_gas_1173"
  call void @_out_of_gas()
  br label %"$have_gas_1178"

"$have_gas_1178":                                 ; preds = %"$out_of_gas_1177", %"$have_gas_1173"
  %"$consume_1179" = sub i64 %"$gasrem_1175", 1
  store i64 %"$consume_1179", i64* @_gasrem, align 8
  %bal_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1181" = icmp ugt i64 1, %"$gasrem_1180"
  br i1 %"$gascmp_1181", label %"$out_of_gas_1182", label %"$have_gas_1183"

"$out_of_gas_1182":                               ; preds = %"$have_gas_1178"
  call void @_out_of_gas()
  br label %"$have_gas_1183"

"$have_gas_1183":                                 ; preds = %"$out_of_gas_1182", %"$have_gas_1178"
  %"$consume_1184" = sub i64 %"$gasrem_1180", 1
  store i64 %"$consume_1184", i64* @_gasrem, align 8
  %"$bal_1185" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_1186_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1186_salloc" = call i8* @_salloc(i8* %"$adtval_1186_load", i64 17)
  %"$adtval_1186" = bitcast i8* %"$adtval_1186_salloc" to %CName_Some_Uint128*
  %"$adtgep_1187" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1186", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1187", align 1
  %"$adtgep_1188" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1186", i32 0, i32 1
  store %Uint128 %"$bal_1185", %Uint128* %"$adtgep_1188", align 8
  %"$adtptr_1189" = bitcast %CName_Some_Uint128* %"$adtval_1186" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1189", %TName_Option_Uint128** %bal_res, align 8
  %"$bal_res_1190" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$$bal_res_1190_1191" = bitcast %TName_Option_Uint128* %"$bal_res_1190" to i8*
  %"$_literal_cost_call_1192" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i8* %"$$bal_res_1190_1191")
  %"$gasrem_1193" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1194" = icmp ugt i64 %"$_literal_cost_call_1192", %"$gasrem_1193"
  br i1 %"$gascmp_1194", label %"$out_of_gas_1195", label %"$have_gas_1196"

"$out_of_gas_1195":                               ; preds = %"$have_gas_1183"
  call void @_out_of_gas()
  br label %"$have_gas_1196"

"$have_gas_1196":                                 ; preds = %"$out_of_gas_1195", %"$have_gas_1183"
  %"$consume_1197" = sub i64 %"$gasrem_1193", %"$_literal_cost_call_1192"
  store i64 %"$consume_1197", i64* @_gasrem, align 8
  %"$execptr_load_1198" = load i8*, i8** @_execptr, align 8
  %"$bal_res_1200" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$update_value_1201" = bitcast %TName_Option_Uint128* %"$bal_res_1200" to i8*
  call void @_update_field(i8* %"$execptr_load_1198", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_3_bal_res_1199", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_1201")
  %f = alloca %Uint128, align 8
  %"$execptr_load_1203" = load i8*, i8** @_execptr, align 8
  %"$f_x_as_address_1204" = alloca [20 x i8], align 1
  %"$x_as_address_1205" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1205", [20 x i8]* %"$f_x_as_address_1204", align 1
  %"$f_call_1206" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1203", [20 x i8]* %"$f_x_as_address_1204", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_1202", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$f_1207" = bitcast i8* %"$f_call_1206" to %Uint128*
  %"$f_1208" = load %Uint128, %Uint128* %"$f_1207", align 8
  store %Uint128 %"$f_1208", %Uint128* %f, align 8
  %"$_literal_cost_f_1209" = alloca %Uint128, align 8
  %"$f_1210" = load %Uint128, %Uint128* %f, align 8
  store %Uint128 %"$f_1210", %Uint128* %"$_literal_cost_f_1209", align 8
  %"$$_literal_cost_f_1209_1211" = bitcast %Uint128* %"$_literal_cost_f_1209" to i8*
  %"$_literal_cost_call_1212" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_f_1209_1211")
  %"$gasadd_1213" = add i64 %"$_literal_cost_call_1212", 0
  %"$gasrem_1214" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1215" = icmp ugt i64 %"$gasadd_1213", %"$gasrem_1214"
  br i1 %"$gascmp_1215", label %"$out_of_gas_1216", label %"$have_gas_1217"

"$out_of_gas_1216":                               ; preds = %"$have_gas_1196"
  call void @_out_of_gas()
  br label %"$have_gas_1217"

"$have_gas_1217":                                 ; preds = %"$out_of_gas_1216", %"$have_gas_1196"
  %"$consume_1218" = sub i64 %"$gasrem_1214", %"$gasadd_1213"
  store i64 %"$consume_1218", i64* @_gasrem, align 8
  %"$gasrem_1219" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1220" = icmp ugt i64 1, %"$gasrem_1219"
  br i1 %"$gascmp_1220", label %"$out_of_gas_1221", label %"$have_gas_1222"

"$out_of_gas_1221":                               ; preds = %"$have_gas_1217"
  call void @_out_of_gas()
  br label %"$have_gas_1222"

"$have_gas_1222":                                 ; preds = %"$out_of_gas_1221", %"$have_gas_1217"
  %"$consume_1223" = sub i64 %"$gasrem_1219", 1
  store i64 %"$consume_1223", i64* @_gasrem, align 8
  %f_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1225" = icmp ugt i64 1, %"$gasrem_1224"
  br i1 %"$gascmp_1225", label %"$out_of_gas_1226", label %"$have_gas_1227"

"$out_of_gas_1226":                               ; preds = %"$have_gas_1222"
  call void @_out_of_gas()
  br label %"$have_gas_1227"

"$have_gas_1227":                                 ; preds = %"$out_of_gas_1226", %"$have_gas_1222"
  %"$consume_1228" = sub i64 %"$gasrem_1224", 1
  store i64 %"$consume_1228", i64* @_gasrem, align 8
  %"$f_1229" = load %Uint128, %Uint128* %f, align 8
  %"$adtval_1230_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1230_salloc" = call i8* @_salloc(i8* %"$adtval_1230_load", i64 17)
  %"$adtval_1230" = bitcast i8* %"$adtval_1230_salloc" to %CName_Some_Uint128*
  %"$adtgep_1231" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1230", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1231", align 1
  %"$adtgep_1232" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1230", i32 0, i32 1
  store %Uint128 %"$f_1229", %Uint128* %"$adtgep_1232", align 8
  %"$adtptr_1233" = bitcast %CName_Some_Uint128* %"$adtval_1230" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1233", %TName_Option_Uint128** %f_res, align 8
  %"$f_res_1234" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$$f_res_1234_1235" = bitcast %TName_Option_Uint128* %"$f_res_1234" to i8*
  %"$_literal_cost_call_1236" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i8* %"$$f_res_1234_1235")
  %"$gasrem_1237" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1238" = icmp ugt i64 %"$_literal_cost_call_1236", %"$gasrem_1237"
  br i1 %"$gascmp_1238", label %"$out_of_gas_1239", label %"$have_gas_1240"

"$out_of_gas_1239":                               ; preds = %"$have_gas_1227"
  call void @_out_of_gas()
  br label %"$have_gas_1240"

"$have_gas_1240":                                 ; preds = %"$out_of_gas_1239", %"$have_gas_1227"
  %"$consume_1241" = sub i64 %"$gasrem_1237", %"$_literal_cost_call_1236"
  store i64 %"$consume_1241", i64* @_gasrem, align 8
  %"$execptr_load_1242" = load i8*, i8** @_execptr, align 8
  %"$f_res_1244" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$update_value_1245" = bitcast %TName_Option_Uint128* %"$f_res_1244" to i8*
  call void @_update_field(i8* %"$execptr_load_1242", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_3_f_res_1243", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_1245")
  %g = alloca %TName_Bool*, align 8
  %"$execptr_load_1247" = load i8*, i8** @_execptr, align 8
  %"$g_x_as_address_1248" = alloca [20 x i8], align 1
  %"$x_as_address_1249" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1249", [20 x i8]* %"$g_x_as_address_1248", align 1
  %"$g_call_1250" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1247", [20 x i8]* %"$g_x_as_address_1248", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_1246", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i32 0, i8* null, i32 1)
  %"$g_1251" = bitcast i8* %"$g_call_1250" to %TName_Bool*
  store %TName_Bool* %"$g_1251", %TName_Bool** %g, align 8
  %"$g_1252" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$$g_1252_1253" = bitcast %TName_Bool* %"$g_1252" to i8*
  %"$_literal_cost_call_1254" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i8* %"$$g_1252_1253")
  %"$gasadd_1255" = add i64 %"$_literal_cost_call_1254", 0
  %"$gasrem_1256" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1257" = icmp ugt i64 %"$gasadd_1255", %"$gasrem_1256"
  br i1 %"$gascmp_1257", label %"$out_of_gas_1258", label %"$have_gas_1259"

"$out_of_gas_1258":                               ; preds = %"$have_gas_1240"
  call void @_out_of_gas()
  br label %"$have_gas_1259"

"$have_gas_1259":                                 ; preds = %"$out_of_gas_1258", %"$have_gas_1240"
  %"$consume_1260" = sub i64 %"$gasrem_1256", %"$gasadd_1255"
  store i64 %"$consume_1260", i64* @_gasrem, align 8
  %"$gasrem_1261" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1262" = icmp ugt i64 1, %"$gasrem_1261"
  br i1 %"$gascmp_1262", label %"$out_of_gas_1263", label %"$have_gas_1264"

"$out_of_gas_1263":                               ; preds = %"$have_gas_1259"
  call void @_out_of_gas()
  br label %"$have_gas_1264"

"$have_gas_1264":                                 ; preds = %"$out_of_gas_1263", %"$have_gas_1259"
  %"$consume_1265" = sub i64 %"$gasrem_1261", 1
  store i64 %"$consume_1265", i64* @_gasrem, align 8
  %g_res = alloca %TName_Option_Bool*, align 8
  %"$gasrem_1266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1267" = icmp ugt i64 1, %"$gasrem_1266"
  br i1 %"$gascmp_1267", label %"$out_of_gas_1268", label %"$have_gas_1269"

"$out_of_gas_1268":                               ; preds = %"$have_gas_1264"
  call void @_out_of_gas()
  br label %"$have_gas_1269"

"$have_gas_1269":                                 ; preds = %"$out_of_gas_1268", %"$have_gas_1264"
  %"$consume_1270" = sub i64 %"$gasrem_1266", 1
  store i64 %"$consume_1270", i64* @_gasrem, align 8
  %"$g_1271" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$adtval_1272_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1272_salloc" = call i8* @_salloc(i8* %"$adtval_1272_load", i64 9)
  %"$adtval_1272" = bitcast i8* %"$adtval_1272_salloc" to %CName_Some_Bool*
  %"$adtgep_1273" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1272", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1273", align 1
  %"$adtgep_1274" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1272", i32 0, i32 1
  store %TName_Bool* %"$g_1271", %TName_Bool** %"$adtgep_1274", align 8
  %"$adtptr_1275" = bitcast %CName_Some_Bool* %"$adtval_1272" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_1275", %TName_Option_Bool** %g_res, align 8
  %"$g_res_1276" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$$g_res_1276_1277" = bitcast %TName_Option_Bool* %"$g_res_1276" to i8*
  %"$_literal_cost_call_1278" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i8* %"$$g_res_1276_1277")
  %"$gasrem_1279" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1280" = icmp ugt i64 %"$_literal_cost_call_1278", %"$gasrem_1279"
  br i1 %"$gascmp_1280", label %"$out_of_gas_1281", label %"$have_gas_1282"

"$out_of_gas_1281":                               ; preds = %"$have_gas_1269"
  call void @_out_of_gas()
  br label %"$have_gas_1282"

"$have_gas_1282":                                 ; preds = %"$out_of_gas_1281", %"$have_gas_1269"
  %"$consume_1283" = sub i64 %"$gasrem_1279", %"$_literal_cost_call_1278"
  store i64 %"$consume_1283", i64* @_gasrem, align 8
  %"$execptr_load_1284" = load i8*, i8** @_execptr, align 8
  %"$g_res_1286" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$update_value_1287" = bitcast %TName_Option_Bool* %"$g_res_1286" to i8*
  call void @_update_field(i8* %"$execptr_load_1284", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_3_g_res_1285", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i32 0, i8* null, i8* %"$update_value_1287")
  br label %"$matchsucc_1149"

"$None_1288":                                     ; preds = %"$have_gas_1147"
  %"$x_cast_1289" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1150" to %"CName_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  br label %"$matchsucc_1149"

"$empty_default_1153":                            ; preds = %"$have_gas_1147"
  br label %"$matchsucc_1149"

"$matchsucc_1149":                                ; preds = %"$None_1288", %"$have_gas_1282", %"$empty_default_1153"
  ret void
}

define void @CastTest6_3(i8* %0) {
entry:
  %"$_amount_1291" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1292" = bitcast i8* %"$_amount_1291" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1292", align 8
  %"$_origin_1293" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1294" = bitcast i8* %"$_origin_1293" to [20 x i8]*
  %"$_sender_1295" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1296" = bitcast i8* %"$_sender_1295" to [20 x i8]*
  %"$x_1297" = getelementptr i8, i8* %0, i32 56
  %"$x_1298" = bitcast i8* %"$x_1297" to [20 x i8]*
  call void @"$CastTest6_3_1131"(%Uint128 %_amount, [20 x i8]* %"$_origin_1294", [20 x i8]* %"$_sender_1296", [20 x i8]* %"$x_1298")
  ret void
}

define internal void @"$CastTest6_4_1299"(%Uint128 %_amount, [20 x i8]* %"$_origin_1300", [20 x i8]* %"$_sender_1301", [20 x i8]* %"$x_1302") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1300", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1301", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_1302", align 1
  %"$gasrem_1303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1304" = icmp ugt i64 5, %"$gasrem_1303"
  br i1 %"$gascmp_1304", label %"$out_of_gas_1305", label %"$have_gas_1306"

"$out_of_gas_1305":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1306"

"$have_gas_1306":                                 ; preds = %"$out_of_gas_1305", %entry
  %"$consume_1307" = sub i64 %"$gasrem_1303", 5
  store i64 %"$consume_1307", i64* @_gasrem, align 8
  %x_cast = alloca %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, align 8
  %"$execptr_load_1308" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_1309" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_1309", align 1
  %"$_dynamic_typecast_call_1310" = call i8* @_dynamic_typecast(i8* %"$execptr_load_1308", [20 x i8]* %"$_dynamic_typecast_x_1309", %_TyDescrTy_Typ* @"$TyDescr_Addr_74")
  %"$_dynamic_typecast_1311" = bitcast i8* %"$_dynamic_typecast_call_1310" to %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  store %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$_dynamic_typecast_1311", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$gasrem_1312" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1313" = icmp ugt i64 2, %"$gasrem_1312"
  br i1 %"$gascmp_1313", label %"$out_of_gas_1314", label %"$have_gas_1315"

"$out_of_gas_1314":                               ; preds = %"$have_gas_1306"
  call void @_out_of_gas()
  br label %"$have_gas_1315"

"$have_gas_1315":                                 ; preds = %"$out_of_gas_1314", %"$have_gas_1306"
  %"$consume_1316" = sub i64 %"$gasrem_1312", 2
  store i64 %"$consume_1316", i64* @_gasrem, align 8
  %"$x_cast_1318" = load %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$x_cast_tag_1319" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1318", i32 0, i32 0
  %"$x_cast_tag_1320" = load i8, i8* %"$x_cast_tag_1319", align 1
  switch i8 %"$x_cast_tag_1320", label %"$empty_default_1321" [
    i8 0, label %"$Some_1322"
    i8 1, label %"$None_1456"
  ]

"$Some_1322":                                     ; preds = %"$have_gas_1315"
  %"$x_cast_1323" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1318" to %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  %"$x_as_address_gep_1324" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1323", i32 0, i32 1
  %"$x_as_address_load_1325" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_1324", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_1325", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_1327" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_1328" = alloca [20 x i8], align 1
  %"$x_as_address_1329" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1329", [20 x i8]* %"$bal_x_as_address_1328", align 1
  %"$bal_call_1330" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1327", [20 x i8]* %"$bal_x_as_address_1328", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_1326", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$bal_1331" = bitcast i8* %"$bal_call_1330" to %Uint128*
  %"$bal_1332" = load %Uint128, %Uint128* %"$bal_1331", align 8
  store %Uint128 %"$bal_1332", %Uint128* %bal, align 8
  %"$_literal_cost_bal_1333" = alloca %Uint128, align 8
  %"$bal_1334" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_1334", %Uint128* %"$_literal_cost_bal_1333", align 8
  %"$$_literal_cost_bal_1333_1335" = bitcast %Uint128* %"$_literal_cost_bal_1333" to i8*
  %"$_literal_cost_call_1336" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_bal_1333_1335")
  %"$gasadd_1337" = add i64 %"$_literal_cost_call_1336", 0
  %"$gasrem_1338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1339" = icmp ugt i64 %"$gasadd_1337", %"$gasrem_1338"
  br i1 %"$gascmp_1339", label %"$out_of_gas_1340", label %"$have_gas_1341"

"$out_of_gas_1340":                               ; preds = %"$Some_1322"
  call void @_out_of_gas()
  br label %"$have_gas_1341"

"$have_gas_1341":                                 ; preds = %"$out_of_gas_1340", %"$Some_1322"
  %"$consume_1342" = sub i64 %"$gasrem_1338", %"$gasadd_1337"
  store i64 %"$consume_1342", i64* @_gasrem, align 8
  %"$gasrem_1343" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1344" = icmp ugt i64 1, %"$gasrem_1343"
  br i1 %"$gascmp_1344", label %"$out_of_gas_1345", label %"$have_gas_1346"

"$out_of_gas_1345":                               ; preds = %"$have_gas_1341"
  call void @_out_of_gas()
  br label %"$have_gas_1346"

"$have_gas_1346":                                 ; preds = %"$out_of_gas_1345", %"$have_gas_1341"
  %"$consume_1347" = sub i64 %"$gasrem_1343", 1
  store i64 %"$consume_1347", i64* @_gasrem, align 8
  %bal_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1349" = icmp ugt i64 1, %"$gasrem_1348"
  br i1 %"$gascmp_1349", label %"$out_of_gas_1350", label %"$have_gas_1351"

"$out_of_gas_1350":                               ; preds = %"$have_gas_1346"
  call void @_out_of_gas()
  br label %"$have_gas_1351"

"$have_gas_1351":                                 ; preds = %"$out_of_gas_1350", %"$have_gas_1346"
  %"$consume_1352" = sub i64 %"$gasrem_1348", 1
  store i64 %"$consume_1352", i64* @_gasrem, align 8
  %"$bal_1353" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_1354_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1354_salloc" = call i8* @_salloc(i8* %"$adtval_1354_load", i64 17)
  %"$adtval_1354" = bitcast i8* %"$adtval_1354_salloc" to %CName_Some_Uint128*
  %"$adtgep_1355" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1354", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1355", align 1
  %"$adtgep_1356" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1354", i32 0, i32 1
  store %Uint128 %"$bal_1353", %Uint128* %"$adtgep_1356", align 8
  %"$adtptr_1357" = bitcast %CName_Some_Uint128* %"$adtval_1354" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1357", %TName_Option_Uint128** %bal_res, align 8
  %"$bal_res_1358" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$$bal_res_1358_1359" = bitcast %TName_Option_Uint128* %"$bal_res_1358" to i8*
  %"$_literal_cost_call_1360" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i8* %"$$bal_res_1358_1359")
  %"$gasrem_1361" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1362" = icmp ugt i64 %"$_literal_cost_call_1360", %"$gasrem_1361"
  br i1 %"$gascmp_1362", label %"$out_of_gas_1363", label %"$have_gas_1364"

"$out_of_gas_1363":                               ; preds = %"$have_gas_1351"
  call void @_out_of_gas()
  br label %"$have_gas_1364"

"$have_gas_1364":                                 ; preds = %"$out_of_gas_1363", %"$have_gas_1351"
  %"$consume_1365" = sub i64 %"$gasrem_1361", %"$_literal_cost_call_1360"
  store i64 %"$consume_1365", i64* @_gasrem, align 8
  %"$execptr_load_1366" = load i8*, i8** @_execptr, align 8
  %"$bal_res_1368" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$update_value_1369" = bitcast %TName_Option_Uint128* %"$bal_res_1368" to i8*
  call void @_update_field(i8* %"$execptr_load_1366", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_4_bal_res_1367", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_1369")
  %f = alloca %Uint128, align 8
  %"$execptr_load_1371" = load i8*, i8** @_execptr, align 8
  %"$f_x_as_address_1372" = alloca [20 x i8], align 1
  %"$x_as_address_1373" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1373", [20 x i8]* %"$f_x_as_address_1372", align 1
  %"$f_call_1374" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1371", [20 x i8]* %"$f_x_as_address_1372", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_1370", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i32 0, i8* null, i32 1)
  %"$f_1375" = bitcast i8* %"$f_call_1374" to %Uint128*
  %"$f_1376" = load %Uint128, %Uint128* %"$f_1375", align 8
  store %Uint128 %"$f_1376", %Uint128* %f, align 8
  %"$_literal_cost_f_1377" = alloca %Uint128, align 8
  %"$f_1378" = load %Uint128, %Uint128* %f, align 8
  store %Uint128 %"$f_1378", %Uint128* %"$_literal_cost_f_1377", align 8
  %"$$_literal_cost_f_1377_1379" = bitcast %Uint128* %"$_literal_cost_f_1377" to i8*
  %"$_literal_cost_call_1380" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_34", i8* %"$$_literal_cost_f_1377_1379")
  %"$gasadd_1381" = add i64 %"$_literal_cost_call_1380", 0
  %"$gasrem_1382" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1383" = icmp ugt i64 %"$gasadd_1381", %"$gasrem_1382"
  br i1 %"$gascmp_1383", label %"$out_of_gas_1384", label %"$have_gas_1385"

"$out_of_gas_1384":                               ; preds = %"$have_gas_1364"
  call void @_out_of_gas()
  br label %"$have_gas_1385"

"$have_gas_1385":                                 ; preds = %"$out_of_gas_1384", %"$have_gas_1364"
  %"$consume_1386" = sub i64 %"$gasrem_1382", %"$gasadd_1381"
  store i64 %"$consume_1386", i64* @_gasrem, align 8
  %"$gasrem_1387" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1388" = icmp ugt i64 1, %"$gasrem_1387"
  br i1 %"$gascmp_1388", label %"$out_of_gas_1389", label %"$have_gas_1390"

"$out_of_gas_1389":                               ; preds = %"$have_gas_1385"
  call void @_out_of_gas()
  br label %"$have_gas_1390"

"$have_gas_1390":                                 ; preds = %"$out_of_gas_1389", %"$have_gas_1385"
  %"$consume_1391" = sub i64 %"$gasrem_1387", 1
  store i64 %"$consume_1391", i64* @_gasrem, align 8
  %f_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1393" = icmp ugt i64 1, %"$gasrem_1392"
  br i1 %"$gascmp_1393", label %"$out_of_gas_1394", label %"$have_gas_1395"

"$out_of_gas_1394":                               ; preds = %"$have_gas_1390"
  call void @_out_of_gas()
  br label %"$have_gas_1395"

"$have_gas_1395":                                 ; preds = %"$out_of_gas_1394", %"$have_gas_1390"
  %"$consume_1396" = sub i64 %"$gasrem_1392", 1
  store i64 %"$consume_1396", i64* @_gasrem, align 8
  %"$f_1397" = load %Uint128, %Uint128* %f, align 8
  %"$adtval_1398_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1398_salloc" = call i8* @_salloc(i8* %"$adtval_1398_load", i64 17)
  %"$adtval_1398" = bitcast i8* %"$adtval_1398_salloc" to %CName_Some_Uint128*
  %"$adtgep_1399" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1398", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1399", align 1
  %"$adtgep_1400" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1398", i32 0, i32 1
  store %Uint128 %"$f_1397", %Uint128* %"$adtgep_1400", align 8
  %"$adtptr_1401" = bitcast %CName_Some_Uint128* %"$adtval_1398" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1401", %TName_Option_Uint128** %f_res, align 8
  %"$f_res_1402" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$$f_res_1402_1403" = bitcast %TName_Option_Uint128* %"$f_res_1402" to i8*
  %"$_literal_cost_call_1404" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i8* %"$$f_res_1402_1403")
  %"$gasrem_1405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1406" = icmp ugt i64 %"$_literal_cost_call_1404", %"$gasrem_1405"
  br i1 %"$gascmp_1406", label %"$out_of_gas_1407", label %"$have_gas_1408"

"$out_of_gas_1407":                               ; preds = %"$have_gas_1395"
  call void @_out_of_gas()
  br label %"$have_gas_1408"

"$have_gas_1408":                                 ; preds = %"$out_of_gas_1407", %"$have_gas_1395"
  %"$consume_1409" = sub i64 %"$gasrem_1405", %"$_literal_cost_call_1404"
  store i64 %"$consume_1409", i64* @_gasrem, align 8
  %"$execptr_load_1410" = load i8*, i8** @_execptr, align 8
  %"$f_res_1412" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$update_value_1413" = bitcast %TName_Option_Uint128* %"$f_res_1412" to i8*
  call void @_update_field(i8* %"$execptr_load_1410", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_4_f_res_1411", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_63", i32 0, i8* null, i8* %"$update_value_1413")
  %g = alloca %TName_Bool*, align 8
  %"$execptr_load_1415" = load i8*, i8** @_execptr, align 8
  %"$g_x_as_address_1416" = alloca [20 x i8], align 1
  %"$x_as_address_1417" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1417", [20 x i8]* %"$g_x_as_address_1416", align 1
  %"$g_call_1418" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1415", [20 x i8]* %"$g_x_as_address_1416", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_1414", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i32 0, i8* null, i32 1)
  %"$g_1419" = bitcast i8* %"$g_call_1418" to %TName_Bool*
  store %TName_Bool* %"$g_1419", %TName_Bool** %g, align 8
  %"$g_1420" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$$g_1420_1421" = bitcast %TName_Bool* %"$g_1420" to i8*
  %"$_literal_cost_call_1422" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i8* %"$$g_1420_1421")
  %"$gasadd_1423" = add i64 %"$_literal_cost_call_1422", 0
  %"$gasrem_1424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1425" = icmp ugt i64 %"$gasadd_1423", %"$gasrem_1424"
  br i1 %"$gascmp_1425", label %"$out_of_gas_1426", label %"$have_gas_1427"

"$out_of_gas_1426":                               ; preds = %"$have_gas_1408"
  call void @_out_of_gas()
  br label %"$have_gas_1427"

"$have_gas_1427":                                 ; preds = %"$out_of_gas_1426", %"$have_gas_1408"
  %"$consume_1428" = sub i64 %"$gasrem_1424", %"$gasadd_1423"
  store i64 %"$consume_1428", i64* @_gasrem, align 8
  %"$gasrem_1429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1430" = icmp ugt i64 1, %"$gasrem_1429"
  br i1 %"$gascmp_1430", label %"$out_of_gas_1431", label %"$have_gas_1432"

"$out_of_gas_1431":                               ; preds = %"$have_gas_1427"
  call void @_out_of_gas()
  br label %"$have_gas_1432"

"$have_gas_1432":                                 ; preds = %"$out_of_gas_1431", %"$have_gas_1427"
  %"$consume_1433" = sub i64 %"$gasrem_1429", 1
  store i64 %"$consume_1433", i64* @_gasrem, align 8
  %g_res = alloca %TName_Option_Bool*, align 8
  %"$gasrem_1434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1435" = icmp ugt i64 1, %"$gasrem_1434"
  br i1 %"$gascmp_1435", label %"$out_of_gas_1436", label %"$have_gas_1437"

"$out_of_gas_1436":                               ; preds = %"$have_gas_1432"
  call void @_out_of_gas()
  br label %"$have_gas_1437"

"$have_gas_1437":                                 ; preds = %"$out_of_gas_1436", %"$have_gas_1432"
  %"$consume_1438" = sub i64 %"$gasrem_1434", 1
  store i64 %"$consume_1438", i64* @_gasrem, align 8
  %"$g_1439" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$adtval_1440_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1440_salloc" = call i8* @_salloc(i8* %"$adtval_1440_load", i64 9)
  %"$adtval_1440" = bitcast i8* %"$adtval_1440_salloc" to %CName_Some_Bool*
  %"$adtgep_1441" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1440", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1441", align 1
  %"$adtgep_1442" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1440", i32 0, i32 1
  store %TName_Bool* %"$g_1439", %TName_Bool** %"$adtgep_1442", align 8
  %"$adtptr_1443" = bitcast %CName_Some_Bool* %"$adtval_1440" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_1443", %TName_Option_Bool** %g_res, align 8
  %"$g_res_1444" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$$g_res_1444_1445" = bitcast %TName_Option_Bool* %"$g_res_1444" to i8*
  %"$_literal_cost_call_1446" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i8* %"$$g_res_1444_1445")
  %"$gasrem_1447" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1448" = icmp ugt i64 %"$_literal_cost_call_1446", %"$gasrem_1447"
  br i1 %"$gascmp_1448", label %"$out_of_gas_1449", label %"$have_gas_1450"

"$out_of_gas_1449":                               ; preds = %"$have_gas_1437"
  call void @_out_of_gas()
  br label %"$have_gas_1450"

"$have_gas_1450":                                 ; preds = %"$out_of_gas_1449", %"$have_gas_1437"
  %"$consume_1451" = sub i64 %"$gasrem_1447", %"$_literal_cost_call_1446"
  store i64 %"$consume_1451", i64* @_gasrem, align 8
  %"$execptr_load_1452" = load i8*, i8** @_execptr, align 8
  %"$g_res_1454" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$update_value_1455" = bitcast %TName_Option_Bool* %"$g_res_1454" to i8*
  call void @_update_field(i8* %"$execptr_load_1452", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_4_g_res_1453", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i32 0, i8* null, i8* %"$update_value_1455")
  br label %"$matchsucc_1317"

"$None_1456":                                     ; preds = %"$have_gas_1315"
  %"$x_cast_1457" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1318" to %"CName_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  %"$gasrem_1458" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1459" = icmp ugt i64 1, %"$gasrem_1458"
  br i1 %"$gascmp_1459", label %"$out_of_gas_1460", label %"$have_gas_1461"

"$out_of_gas_1460":                               ; preds = %"$None_1456"
  call void @_out_of_gas()
  br label %"$have_gas_1461"

"$have_gas_1461":                                 ; preds = %"$out_of_gas_1460", %"$None_1456"
  %"$consume_1462" = sub i64 %"$gasrem_1458", 1
  store i64 %"$consume_1462", i64* @_gasrem, align 8
  %res = alloca %TName_Bool*, align 8
  %"$gasrem_1463" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1464" = icmp ugt i64 1, %"$gasrem_1463"
  br i1 %"$gascmp_1464", label %"$out_of_gas_1465", label %"$have_gas_1466"

"$out_of_gas_1465":                               ; preds = %"$have_gas_1461"
  call void @_out_of_gas()
  br label %"$have_gas_1466"

"$have_gas_1466":                                 ; preds = %"$out_of_gas_1465", %"$have_gas_1461"
  %"$consume_1467" = sub i64 %"$gasrem_1463", 1
  store i64 %"$consume_1467", i64* @_gasrem, align 8
  %"$adtval_1468_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1468_salloc" = call i8* @_salloc(i8* %"$adtval_1468_load", i64 1)
  %"$adtval_1468" = bitcast i8* %"$adtval_1468_salloc" to %CName_True*
  %"$adtgep_1469" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_1468", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1469", align 1
  %"$adtptr_1470" = bitcast %CName_True* %"$adtval_1468" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1470", %TName_Bool** %res, align 8
  %"$res_1471" = load %TName_Bool*, %TName_Bool** %res, align 8
  %"$$res_1471_1472" = bitcast %TName_Bool* %"$res_1471" to i8*
  %"$_literal_cost_call_1473" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i8* %"$$res_1471_1472")
  %"$gasrem_1474" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1475" = icmp ugt i64 %"$_literal_cost_call_1473", %"$gasrem_1474"
  br i1 %"$gascmp_1475", label %"$out_of_gas_1476", label %"$have_gas_1477"

"$out_of_gas_1476":                               ; preds = %"$have_gas_1466"
  call void @_out_of_gas()
  br label %"$have_gas_1477"

"$have_gas_1477":                                 ; preds = %"$out_of_gas_1476", %"$have_gas_1466"
  %"$consume_1478" = sub i64 %"$gasrem_1474", %"$_literal_cost_call_1473"
  store i64 %"$consume_1478", i64* @_gasrem, align 8
  %"$execptr_load_1479" = load i8*, i8** @_execptr, align 8
  %"$res_1481" = load %TName_Bool*, %TName_Bool** %res, align 8
  %"$update_value_1482" = bitcast %TName_Bool* %"$res_1481" to i8*
  call void @_update_field(i8* %"$execptr_load_1479", i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$test_6_4_failed_cast_1480", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i32 0, i8* null, i8* %"$update_value_1482")
  br label %"$matchsucc_1317"

"$empty_default_1321":                            ; preds = %"$have_gas_1315"
  br label %"$matchsucc_1317"

"$matchsucc_1317":                                ; preds = %"$have_gas_1477", %"$have_gas_1450", %"$empty_default_1321"
  ret void
}

define void @CastTest6_4(i8* %0) {
entry:
  %"$_amount_1484" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1485" = bitcast i8* %"$_amount_1484" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1485", align 8
  %"$_origin_1486" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1487" = bitcast i8* %"$_origin_1486" to [20 x i8]*
  %"$_sender_1488" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1489" = bitcast i8* %"$_sender_1488" to [20 x i8]*
  %"$x_1490" = getelementptr i8, i8* %0, i32 56
  %"$x_1491" = bitcast i8* %"$x_1490" to [20 x i8]*
  call void @"$CastTest6_4_1299"(%Uint128 %_amount, [20 x i8]* %"$_origin_1487", [20 x i8]* %"$_sender_1489", [20 x i8]* %"$x_1491")
  ret void
}

define internal void @"$CastTest7_1492"(%Uint128 %_amount, [20 x i8]* %"$_origin_1493", [20 x i8]* %"$_sender_1494", [20 x i8]* %"$x_1495") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1493", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1494", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_1495", align 1
  %"$gasrem_1496" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1497" = icmp ugt i64 4, %"$gasrem_1496"
  br i1 %"$gascmp_1497", label %"$out_of_gas_1498", label %"$have_gas_1499"

"$out_of_gas_1498":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1499"

"$have_gas_1499":                                 ; preds = %"$out_of_gas_1498", %entry
  %"$consume_1500" = sub i64 %"$gasrem_1496", 4
  store i64 %"$consume_1500", i64* @_gasrem, align 8
  %x_cast = alloca %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"*, align 8
  %"$execptr_load_1501" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_1502" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_1502", align 1
  %"$_dynamic_typecast_call_1503" = call i8* @_dynamic_typecast(i8* %"$execptr_load_1501", [20 x i8]* %"$_dynamic_typecast_x_1502", %_TyDescrTy_Typ* @"$TyDescr_Addr_71")
  %"$_dynamic_typecast_1504" = bitcast i8* %"$_dynamic_typecast_call_1503" to %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"*
  store %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"* %"$_dynamic_typecast_1504", %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"** %x_cast, align 8
  %"$gasrem_1505" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1506" = icmp ugt i64 2, %"$gasrem_1505"
  br i1 %"$gascmp_1506", label %"$out_of_gas_1507", label %"$have_gas_1508"

"$out_of_gas_1507":                               ; preds = %"$have_gas_1499"
  call void @_out_of_gas()
  br label %"$have_gas_1508"

"$have_gas_1508":                                 ; preds = %"$out_of_gas_1507", %"$have_gas_1499"
  %"$consume_1509" = sub i64 %"$gasrem_1505", 2
  store i64 %"$consume_1509", i64* @_gasrem, align 8
  %"$x_cast_1511" = load %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"*, %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"** %x_cast, align 8
  %"$x_cast_tag_1512" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end", %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"* %"$x_cast_1511", i32 0, i32 0
  %"$x_cast_tag_1513" = load i8, i8* %"$x_cast_tag_1512", align 1
  switch i8 %"$x_cast_tag_1513", label %"$empty_default_1514" [
    i8 0, label %"$Some_1515"
    i8 1, label %"$None_1648"
  ]

"$Some_1515":                                     ; preds = %"$have_gas_1508"
  %"$x_cast_1516" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"* %"$x_cast_1511" to %"CName_Some_ByStr20_with_contract_field_f_:_ByStr20_end"*
  %"$x_as_address_gep_1517" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_f_:_ByStr20_end", %"CName_Some_ByStr20_with_contract_field_f_:_ByStr20_end"* %"$x_cast_1516", i32 0, i32 1
  %"$x_as_address_load_1518" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_1517", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_1518", [20 x i8]* %x_as_address, align 1
  %f = alloca [20 x i8], align 1
  %"$execptr_load_1520" = load i8*, i8** @_execptr, align 8
  %"$f_x_as_address_1521" = alloca [20 x i8], align 1
  %"$x_as_address_1522" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1522", [20 x i8]* %"$f_x_as_address_1521", align 1
  %"$f_call_1523" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1520", [20 x i8]* %"$f_x_as_address_1521", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_1519", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_54", i32 0, i8* null, i32 1)
  %"$f_1524" = bitcast i8* %"$f_call_1523" to [20 x i8]*
  %"$f_1525" = load [20 x i8], [20 x i8]* %"$f_1524", align 1
  store [20 x i8] %"$f_1525", [20 x i8]* %f, align 1
  %"$_literal_cost_f_1526" = alloca [20 x i8], align 1
  %"$f_1527" = load [20 x i8], [20 x i8]* %f, align 1
  store [20 x i8] %"$f_1527", [20 x i8]* %"$_literal_cost_f_1526", align 1
  %"$$_literal_cost_f_1526_1528" = bitcast [20 x i8]* %"$_literal_cost_f_1526" to i8*
  %"$_literal_cost_call_1529" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_54", i8* %"$$_literal_cost_f_1526_1528")
  %"$gasadd_1530" = add i64 %"$_literal_cost_call_1529", 0
  %"$gasrem_1531" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1532" = icmp ugt i64 %"$gasadd_1530", %"$gasrem_1531"
  br i1 %"$gascmp_1532", label %"$out_of_gas_1533", label %"$have_gas_1534"

"$out_of_gas_1533":                               ; preds = %"$Some_1515"
  call void @_out_of_gas()
  br label %"$have_gas_1534"

"$have_gas_1534":                                 ; preds = %"$out_of_gas_1533", %"$Some_1515"
  %"$consume_1535" = sub i64 %"$gasrem_1531", %"$gasadd_1530"
  store i64 %"$consume_1535", i64* @_gasrem, align 8
  %"$gasrem_1536" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1537" = icmp ugt i64 5, %"$gasrem_1536"
  br i1 %"$gascmp_1537", label %"$out_of_gas_1538", label %"$have_gas_1539"

"$out_of_gas_1538":                               ; preds = %"$have_gas_1534"
  call void @_out_of_gas()
  br label %"$have_gas_1539"

"$have_gas_1539":                                 ; preds = %"$out_of_gas_1538", %"$have_gas_1534"
  %"$consume_1540" = sub i64 %"$gasrem_1536", 5
  store i64 %"$consume_1540", i64* @_gasrem, align 8
  %f_cast = alloca %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*, align 8
  %"$execptr_load_1541" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_f_1542" = alloca [20 x i8], align 1
  %"$f_1543" = load [20 x i8], [20 x i8]* %f, align 1
  store [20 x i8] %"$f_1543", [20 x i8]* %"$_dynamic_typecast_f_1542", align 1
  %"$_dynamic_typecast_call_1544" = call i8* @_dynamic_typecast(i8* %"$execptr_load_1541", [20 x i8]* %"$_dynamic_typecast_f_1542", %_TyDescrTy_Typ* @"$TyDescr_Addr_70")
  %"$_dynamic_typecast_1545" = bitcast i8* %"$_dynamic_typecast_call_1544" to %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*
  store %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* %"$_dynamic_typecast_1545", %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"** %f_cast, align 8
  %"$gasrem_1546" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1547" = icmp ugt i64 2, %"$gasrem_1546"
  br i1 %"$gascmp_1547", label %"$out_of_gas_1548", label %"$have_gas_1549"

"$out_of_gas_1548":                               ; preds = %"$have_gas_1539"
  call void @_out_of_gas()
  br label %"$have_gas_1549"

"$have_gas_1549":                                 ; preds = %"$out_of_gas_1548", %"$have_gas_1539"
  %"$consume_1550" = sub i64 %"$gasrem_1546", 2
  store i64 %"$consume_1550", i64* @_gasrem, align 8
  %"$f_cast_1552" = load %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*, %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"** %f_cast, align 8
  %"$f_cast_tag_1553" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end", %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* %"$f_cast_1552", i32 0, i32 0
  %"$f_cast_tag_1554" = load i8, i8* %"$f_cast_tag_1553", align 1
  switch i8 %"$f_cast_tag_1554", label %"$empty_default_1555" [
    i8 0, label %"$Some_1556"
    i8 1, label %"$None_1646"
  ]

"$Some_1556":                                     ; preds = %"$have_gas_1549"
  %"$f_cast_1557" = bitcast %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* %"$f_cast_1552" to %"CName_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*
  %"$f_as_address_gep_1558" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end", %"CName_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* %"$f_cast_1557", i32 0, i32 1
  %"$f_as_address_load_1559" = load [20 x i8], [20 x i8]* %"$f_as_address_gep_1558", align 1
  %f_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$f_as_address_load_1559", [20 x i8]* %f_as_address, align 1
  %g = alloca %TName_Bool*, align 8
  %"$execptr_load_1561" = load i8*, i8** @_execptr, align 8
  %"$g_f_as_address_1562" = alloca [20 x i8], align 1
  %"$f_as_address_1563" = load [20 x i8], [20 x i8]* %f_as_address, align 1
  store [20 x i8] %"$f_as_address_1563", [20 x i8]* %"$g_f_as_address_1562", align 1
  %"$g_call_1564" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1561", [20 x i8]* %"$g_f_as_address_1562", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_1560", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i32 0, i8* null, i32 1)
  %"$g_1565" = bitcast i8* %"$g_call_1564" to %TName_Bool*
  store %TName_Bool* %"$g_1565", %TName_Bool** %g, align 8
  %"$g_1566" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$$g_1566_1567" = bitcast %TName_Bool* %"$g_1566" to i8*
  %"$_literal_cost_call_1568" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_66", i8* %"$$g_1566_1567")
  %"$gasadd_1569" = add i64 %"$_literal_cost_call_1568", 0
  %"$gasrem_1570" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1571" = icmp ugt i64 %"$gasadd_1569", %"$gasrem_1570"
  br i1 %"$gascmp_1571", label %"$out_of_gas_1572", label %"$have_gas_1573"

"$out_of_gas_1572":                               ; preds = %"$Some_1556"
  call void @_out_of_gas()
  br label %"$have_gas_1573"

"$have_gas_1573":                                 ; preds = %"$out_of_gas_1572", %"$Some_1556"
  %"$consume_1574" = sub i64 %"$gasrem_1570", %"$gasadd_1569"
  store i64 %"$consume_1574", i64* @_gasrem, align 8
  %"$gasrem_1575" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1576" = icmp ugt i64 1, %"$gasrem_1575"
  br i1 %"$gascmp_1576", label %"$out_of_gas_1577", label %"$have_gas_1578"

"$out_of_gas_1577":                               ; preds = %"$have_gas_1573"
  call void @_out_of_gas()
  br label %"$have_gas_1578"

"$have_gas_1578":                                 ; preds = %"$out_of_gas_1577", %"$have_gas_1573"
  %"$consume_1579" = sub i64 %"$gasrem_1575", 1
  store i64 %"$consume_1579", i64* @_gasrem, align 8
  %g_res = alloca %TName_Option_Bool*, align 8
  %"$gasrem_1580" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1581" = icmp ugt i64 1, %"$gasrem_1580"
  br i1 %"$gascmp_1581", label %"$out_of_gas_1582", label %"$have_gas_1583"

"$out_of_gas_1582":                               ; preds = %"$have_gas_1578"
  call void @_out_of_gas()
  br label %"$have_gas_1583"

"$have_gas_1583":                                 ; preds = %"$out_of_gas_1582", %"$have_gas_1578"
  %"$consume_1584" = sub i64 %"$gasrem_1580", 1
  store i64 %"$consume_1584", i64* @_gasrem, align 8
  %"$g_1585" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$adtval_1586_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1586_salloc" = call i8* @_salloc(i8* %"$adtval_1586_load", i64 9)
  %"$adtval_1586" = bitcast i8* %"$adtval_1586_salloc" to %CName_Some_Bool*
  %"$adtgep_1587" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1586", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1587", align 1
  %"$adtgep_1588" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1586", i32 0, i32 1
  store %TName_Bool* %"$g_1585", %TName_Bool** %"$adtgep_1588", align 8
  %"$adtptr_1589" = bitcast %CName_Some_Bool* %"$adtval_1586" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_1589", %TName_Option_Bool** %g_res, align 8
  %"$g_res_1590" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$$g_res_1590_1591" = bitcast %TName_Option_Bool* %"$g_res_1590" to i8*
  %"$_literal_cost_call_1592" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i8* %"$$g_res_1590_1591")
  %"$gasrem_1593" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1594" = icmp ugt i64 %"$_literal_cost_call_1592", %"$gasrem_1593"
  br i1 %"$gascmp_1594", label %"$out_of_gas_1595", label %"$have_gas_1596"

"$out_of_gas_1595":                               ; preds = %"$have_gas_1583"
  call void @_out_of_gas()
  br label %"$have_gas_1596"

"$have_gas_1596":                                 ; preds = %"$out_of_gas_1595", %"$have_gas_1583"
  %"$consume_1597" = sub i64 %"$gasrem_1593", %"$_literal_cost_call_1592"
  store i64 %"$consume_1597", i64* @_gasrem, align 8
  %"$execptr_load_1598" = load i8*, i8** @_execptr, align 8
  %"$g_res_1600" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$update_value_1601" = bitcast %TName_Option_Bool* %"$g_res_1600" to i8*
  call void @_update_field(i8* %"$execptr_load_1598", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_7_g_res_1599", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_62", i32 0, i8* null, i8* %"$update_value_1601")
  %h = alloca %Int256, align 8
  %"$execptr_load_1603" = load i8*, i8** @_execptr, align 8
  %"$h_f_as_address_1604" = alloca [20 x i8], align 1
  %"$f_as_address_1605" = load [20 x i8], [20 x i8]* %f_as_address, align 1
  store [20 x i8] %"$f_as_address_1605", [20 x i8]* %"$h_f_as_address_1604", align 1
  %"$h_call_1606" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1603", [20 x i8]* %"$h_f_as_address_1604", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$h_1602", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int256_36", i32 0, i8* null, i32 1)
  %"$h_1607" = bitcast i8* %"$h_call_1606" to %Int256*
  %"$h_1608" = load %Int256, %Int256* %"$h_1607", align 8
  store %Int256 %"$h_1608", %Int256* %h, align 8
  %"$_literal_cost_h_1609" = alloca %Int256, align 8
  %"$h_1610" = load %Int256, %Int256* %h, align 8
  store %Int256 %"$h_1610", %Int256* %"$_literal_cost_h_1609", align 8
  %"$$_literal_cost_h_1609_1611" = bitcast %Int256* %"$_literal_cost_h_1609" to i8*
  %"$_literal_cost_call_1612" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int256_36", i8* %"$$_literal_cost_h_1609_1611")
  %"$gasadd_1613" = add i64 %"$_literal_cost_call_1612", 0
  %"$gasrem_1614" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1615" = icmp ugt i64 %"$gasadd_1613", %"$gasrem_1614"
  br i1 %"$gascmp_1615", label %"$out_of_gas_1616", label %"$have_gas_1617"

"$out_of_gas_1616":                               ; preds = %"$have_gas_1596"
  call void @_out_of_gas()
  br label %"$have_gas_1617"

"$have_gas_1617":                                 ; preds = %"$out_of_gas_1616", %"$have_gas_1596"
  %"$consume_1618" = sub i64 %"$gasrem_1614", %"$gasadd_1613"
  store i64 %"$consume_1618", i64* @_gasrem, align 8
  %"$gasrem_1619" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1620" = icmp ugt i64 1, %"$gasrem_1619"
  br i1 %"$gascmp_1620", label %"$out_of_gas_1621", label %"$have_gas_1622"

"$out_of_gas_1621":                               ; preds = %"$have_gas_1617"
  call void @_out_of_gas()
  br label %"$have_gas_1622"

"$have_gas_1622":                                 ; preds = %"$out_of_gas_1621", %"$have_gas_1617"
  %"$consume_1623" = sub i64 %"$gasrem_1619", 1
  store i64 %"$consume_1623", i64* @_gasrem, align 8
  %h_res = alloca %TName_Option_Int256*, align 8
  %"$gasrem_1624" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1625" = icmp ugt i64 1, %"$gasrem_1624"
  br i1 %"$gascmp_1625", label %"$out_of_gas_1626", label %"$have_gas_1627"

"$out_of_gas_1626":                               ; preds = %"$have_gas_1622"
  call void @_out_of_gas()
  br label %"$have_gas_1627"

"$have_gas_1627":                                 ; preds = %"$out_of_gas_1626", %"$have_gas_1622"
  %"$consume_1628" = sub i64 %"$gasrem_1624", 1
  store i64 %"$consume_1628", i64* @_gasrem, align 8
  %"$h_1629" = load %Int256, %Int256* %h, align 8
  %"$adtval_1630_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1630_salloc" = call i8* @_salloc(i8* %"$adtval_1630_load", i64 33)
  %"$adtval_1630" = bitcast i8* %"$adtval_1630_salloc" to %CName_Some_Int256*
  %"$adtgep_1631" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$adtval_1630", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1631", align 1
  %"$adtgep_1632" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$adtval_1630", i32 0, i32 1
  store %Int256 %"$h_1629", %Int256* %"$adtgep_1632", align 8
  %"$adtptr_1633" = bitcast %CName_Some_Int256* %"$adtval_1630" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$adtptr_1633", %TName_Option_Int256** %h_res, align 8
  %"$h_res_1634" = load %TName_Option_Int256*, %TName_Option_Int256** %h_res, align 8
  %"$$h_res_1634_1635" = bitcast %TName_Option_Int256* %"$h_res_1634" to i8*
  %"$_literal_cost_call_1636" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int256_61", i8* %"$$h_res_1634_1635")
  %"$gasrem_1637" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1638" = icmp ugt i64 %"$_literal_cost_call_1636", %"$gasrem_1637"
  br i1 %"$gascmp_1638", label %"$out_of_gas_1639", label %"$have_gas_1640"

"$out_of_gas_1639":                               ; preds = %"$have_gas_1627"
  call void @_out_of_gas()
  br label %"$have_gas_1640"

"$have_gas_1640":                                 ; preds = %"$out_of_gas_1639", %"$have_gas_1627"
  %"$consume_1641" = sub i64 %"$gasrem_1637", %"$_literal_cost_call_1636"
  store i64 %"$consume_1641", i64* @_gasrem, align 8
  %"$execptr_load_1642" = load i8*, i8** @_execptr, align 8
  %"$h_res_1644" = load %TName_Option_Int256*, %TName_Option_Int256** %h_res, align 8
  %"$update_value_1645" = bitcast %TName_Option_Int256* %"$h_res_1644" to i8*
  call void @_update_field(i8* %"$execptr_load_1642", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_7_h_res_1643", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int256_61", i32 0, i8* null, i8* %"$update_value_1645")
  br label %"$matchsucc_1551"

"$None_1646":                                     ; preds = %"$have_gas_1549"
  %"$f_cast_1647" = bitcast %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* %"$f_cast_1552" to %"CName_None_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*
  br label %"$matchsucc_1551"

"$empty_default_1555":                            ; preds = %"$have_gas_1549"
  br label %"$matchsucc_1551"

"$matchsucc_1551":                                ; preds = %"$None_1646", %"$have_gas_1640", %"$empty_default_1555"
  br label %"$matchsucc_1510"

"$None_1648":                                     ; preds = %"$have_gas_1508"
  %"$x_cast_1649" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"* %"$x_cast_1511" to %"CName_None_ByStr20_with_contract_field_f_:_ByStr20_end"*
  br label %"$matchsucc_1510"

"$empty_default_1514":                            ; preds = %"$have_gas_1508"
  br label %"$matchsucc_1510"

"$matchsucc_1510":                                ; preds = %"$None_1648", %"$matchsucc_1551", %"$empty_default_1514"
  ret void
}

define void @CastTest7(i8* %0) {
entry:
  %"$_amount_1651" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1652" = bitcast i8* %"$_amount_1651" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1652", align 8
  %"$_origin_1653" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1654" = bitcast i8* %"$_origin_1653" to [20 x i8]*
  %"$_sender_1655" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1656" = bitcast i8* %"$_sender_1655" to [20 x i8]*
  %"$x_1657" = getelementptr i8, i8* %0, i32 56
  %"$x_1658" = bitcast i8* %"$x_1657" to [20 x i8]*
  call void @"$CastTest7_1492"(%Uint128 %_amount, [20 x i8]* %"$_origin_1654", [20 x i8]* %"$_sender_1656", [20 x i8]* %"$x_1658")
  ret void
}
