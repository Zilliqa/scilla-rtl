

; gas_remaining: 4002000
; ModuleID = 'CastContract'
source_filename = "CastContract"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_21" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_53" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_52"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_52" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_54"**, %"$TyDescrTy_ADTTyp_53"* }
%"$TyDescrTy_ADTTyp_Constr_54" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrFieldTyp_65" = type { %TyDescrString, %_TyDescrTy_Typ* }
%"$TyDescr_AddrTyp_66" = type { i32, %"$TyDescr_AddrFieldTyp_65"* }
%Uint32 = type { i32 }
%"$ParamDescr_1646" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_1647" = type { %ParamDescrString, i32, %"$ParamDescr_1646"* }
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
@"$TyDescr_Int32_Prim_22" = global %"$TyDescrTy_PrimTyp_21" zeroinitializer
@"$TyDescr_Int32_23" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Int32_Prim_22" to i8*) }
@"$TyDescr_Uint32_Prim_24" = global %"$TyDescrTy_PrimTyp_21" { i32 1, i32 0 }
@"$TyDescr_Uint32_25" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Uint32_Prim_24" to i8*) }
@"$TyDescr_Int64_Prim_26" = global %"$TyDescrTy_PrimTyp_21" { i32 0, i32 1 }
@"$TyDescr_Int64_27" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Int64_Prim_26" to i8*) }
@"$TyDescr_Uint64_Prim_28" = global %"$TyDescrTy_PrimTyp_21" { i32 1, i32 1 }
@"$TyDescr_Uint64_29" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Uint64_Prim_28" to i8*) }
@"$TyDescr_Int128_Prim_30" = global %"$TyDescrTy_PrimTyp_21" { i32 0, i32 2 }
@"$TyDescr_Int128_31" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Int128_Prim_30" to i8*) }
@"$TyDescr_Uint128_Prim_32" = global %"$TyDescrTy_PrimTyp_21" { i32 1, i32 2 }
@"$TyDescr_Uint128_33" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Uint128_Prim_32" to i8*) }
@"$TyDescr_Int256_Prim_34" = global %"$TyDescrTy_PrimTyp_21" { i32 0, i32 3 }
@"$TyDescr_Int256_35" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Int256_Prim_34" to i8*) }
@"$TyDescr_Uint256_Prim_36" = global %"$TyDescrTy_PrimTyp_21" { i32 1, i32 3 }
@"$TyDescr_Uint256_37" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Uint256_Prim_36" to i8*) }
@"$TyDescr_String_Prim_38" = global %"$TyDescrTy_PrimTyp_21" { i32 2, i32 0 }
@"$TyDescr_String_39" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_String_Prim_38" to i8*) }
@"$TyDescr_Bnum_Prim_40" = global %"$TyDescrTy_PrimTyp_21" { i32 3, i32 0 }
@"$TyDescr_Bnum_41" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Bnum_Prim_40" to i8*) }
@"$TyDescr_Message_Prim_42" = global %"$TyDescrTy_PrimTyp_21" { i32 4, i32 0 }
@"$TyDescr_Message_43" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Message_Prim_42" to i8*) }
@"$TyDescr_Event_Prim_44" = global %"$TyDescrTy_PrimTyp_21" { i32 5, i32 0 }
@"$TyDescr_Event_45" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Event_Prim_44" to i8*) }
@"$TyDescr_Exception_Prim_46" = global %"$TyDescrTy_PrimTyp_21" { i32 6, i32 0 }
@"$TyDescr_Exception_47" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Exception_Prim_46" to i8*) }
@"$TyDescr_Bystr_Prim_48" = global %"$TyDescrTy_PrimTyp_21" { i32 7, i32 0 }
@"$TyDescr_Bystr_49" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Bystr_Prim_48" to i8*) }
@"$TyDescr_Bystr20_Prim_50" = global %"$TyDescrTy_PrimTyp_21" { i32 8, i32 20 }
@"$TyDescr_Bystr20_51" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_21"* @"$TyDescr_Bystr20_Prim_50" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_55" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Specl_83" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_with_contract_field_f_:_ByStr20_end_56" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Option_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Specl_92" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_57" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Specl_101" to i8*) }
@"$TyDescr_ADT_Option_Int256_58" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Option_Int256_ADTTyp_Specl_110" to i8*) }
@"$TyDescr_ADT_Option_Bool_59" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Option_Bool_ADTTyp_Specl_119" to i8*) }
@"$TyDescr_ADT_Option_Uint128_60" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Option_Uint128_ADTTyp_Specl_128" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_with_contract_end_61" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Option_ByStr20_with_contract_end_ADTTyp_Specl_137" to i8*) }
@"$TyDescr_ADT_Option_ByStr20_with_end_62" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Option_ByStr20_with_end_ADTTyp_Specl_146" to i8*) }
@"$TyDescr_ADT_Bool_63" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Bool_ADTTyp_Specl_158" to i8*) }
@"$TyDescr_Addr_67" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_66"* @"$TyDescr_AddrFields_164" to i8*) }
@"$TyDescr_Addr_68" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_66"* @"$TyDescr_AddrFields_167" to i8*) }
@"$TyDescr_Addr_69" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_66"* @"$TyDescr_AddrFields_171" to i8*) }
@"$TyDescr_Addr_70" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_66"* @"$TyDescr_AddrFields_174" to i8*) }
@"$TyDescr_Addr_71" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_66"* @"$TyDescr_AddrFields_178" to i8*) }
@"$TyDescr_Addr_72" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_66"* @"$TyDescr_AddrFields_180" to i8*) }
@"$TyDescr_Addr_73" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_66"* @"$TyDescr_AddrFields_181" to i8*) }
@"$TyDescr_Option_ADTTyp_74" = unnamed_addr constant %"$TyDescrTy_ADTTyp_53" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_148", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 8, %"$TyDescrTy_ADTTyp_Specl_52"** getelementptr inbounds ([8 x %"$TyDescrTy_ADTTyp_Specl_52"*], [8 x %"$TyDescrTy_ADTTyp_Specl_52"*]* @"$TyDescr_Option_ADTTyp_m_specls_147", i32 0, i32 0) }
@"$TyDescr_Option_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_Constr_m_args_75" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_67"]
@"$TyDescr_ADT_Some_76" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Constr_77" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_76", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_Constr_m_args_75", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_Constr_m_args_78" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_79" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Constr_80" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_79", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_Constr_m_args_78", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Specl_m_constrs_81" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_54"*] [%"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Option_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Constr_77", %"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Option_None_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Constr_80"]
@"$TyDescr_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Specl_m_TArgs_82" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_67"]
@"$TyDescr_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Specl_83" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_52" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Specl_m_TArgs_82", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_54"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_54"*], [2 x %"$TyDescrTy_ADTTyp_Constr_54"*]* @"$TyDescr_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Specl_m_constrs_81", i32 0, i32 0), %"$TyDescrTy_ADTTyp_53"* @"$TyDescr_Option_ADTTyp_74" }
@"$TyDescr_Option_Some_ByStr20_with_contract_field_f_:_ByStr20_end_Constr_m_args_84" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_68"]
@"$TyDescr_ADT_Some_85" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Constr_86" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_85", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_with_contract_field_f_:_ByStr20_end_Constr_m_args_84", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_with_contract_field_f_:_ByStr20_end_Constr_m_args_87" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_88" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Constr_89" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_88", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_with_contract_field_f_:_ByStr20_end_Constr_m_args_87", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Specl_m_constrs_90" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_54"*] [%"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Option_Some_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Constr_86", %"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Option_None_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Constr_89"]
@"$TyDescr_Option_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Specl_m_TArgs_91" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_68"]
@"$TyDescr_Option_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Specl_92" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_52" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Specl_m_TArgs_91", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_54"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_54"*], [2 x %"$TyDescrTy_ADTTyp_Constr_54"*]* @"$TyDescr_Option_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Specl_m_constrs_90", i32 0, i32 0), %"$TyDescrTy_ADTTyp_53"* @"$TyDescr_Option_ADTTyp_74" }
@"$TyDescr_Option_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_Constr_m_args_93" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_71"]
@"$TyDescr_ADT_Some_94" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Constr_95" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_94", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_Constr_m_args_93", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_Constr_m_args_96" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_97" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Constr_98" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_97", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_Constr_m_args_96", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Specl_m_constrs_99" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_54"*] [%"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Option_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Constr_95", %"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Option_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Constr_98"]
@"$TyDescr_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Specl_m_TArgs_100" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_71"]
@"$TyDescr_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Specl_101" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_52" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Specl_m_TArgs_100", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_54"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_54"*], [2 x %"$TyDescrTy_ADTTyp_Constr_54"*]* @"$TyDescr_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Specl_m_constrs_99", i32 0, i32 0), %"$TyDescrTy_ADTTyp_53"* @"$TyDescr_Option_ADTTyp_74" }
@"$TyDescr_Option_Some_Int256_Constr_m_args_102" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int256_35"]
@"$TyDescr_ADT_Some_103" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Int256_ADTTyp_Constr_104" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_103", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Int256_Constr_m_args_102", i32 0, i32 0) }
@"$TyDescr_Option_None_Int256_Constr_m_args_105" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_106" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Int256_ADTTyp_Constr_107" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_106", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Int256_Constr_m_args_105", i32 0, i32 0) }
@"$TyDescr_Option_Int256_ADTTyp_Specl_m_constrs_108" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_54"*] [%"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Option_Some_Int256_ADTTyp_Constr_104", %"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Option_None_Int256_ADTTyp_Constr_107"]
@"$TyDescr_Option_Int256_ADTTyp_Specl_m_TArgs_109" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int256_35"]
@"$TyDescr_Option_Int256_ADTTyp_Specl_110" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_52" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Int256_ADTTyp_Specl_m_TArgs_109", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_54"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_54"*], [2 x %"$TyDescrTy_ADTTyp_Constr_54"*]* @"$TyDescr_Option_Int256_ADTTyp_Specl_m_constrs_108", i32 0, i32 0), %"$TyDescrTy_ADTTyp_53"* @"$TyDescr_Option_ADTTyp_74" }
@"$TyDescr_Option_Some_Bool_Constr_m_args_111" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_63"]
@"$TyDescr_ADT_Some_112" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Bool_ADTTyp_Constr_113" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_112", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Bool_Constr_m_args_111", i32 0, i32 0) }
@"$TyDescr_Option_None_Bool_Constr_m_args_114" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_115" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Bool_ADTTyp_Constr_116" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_115", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Bool_Constr_m_args_114", i32 0, i32 0) }
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_117" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_54"*] [%"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Option_Some_Bool_ADTTyp_Constr_113", %"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Option_None_Bool_ADTTyp_Constr_116"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_118" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_63"]
@"$TyDescr_Option_Bool_ADTTyp_Specl_119" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_52" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_TArgs_118", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_54"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_54"*], [2 x %"$TyDescrTy_ADTTyp_Constr_54"*]* @"$TyDescr_Option_Bool_ADTTyp_Specl_m_constrs_117", i32 0, i32 0), %"$TyDescrTy_ADTTyp_53"* @"$TyDescr_Option_ADTTyp_74" }
@"$TyDescr_Option_Some_Uint128_Constr_m_args_120" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_33"]
@"$TyDescr_ADT_Some_121" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_Uint128_ADTTyp_Constr_122" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_121", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_Uint128_Constr_m_args_120", i32 0, i32 0) }
@"$TyDescr_Option_None_Uint128_Constr_m_args_123" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_124" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_Uint128_ADTTyp_Constr_125" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_124", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_Uint128_Constr_m_args_123", i32 0, i32 0) }
@"$TyDescr_Option_Uint128_ADTTyp_Specl_m_constrs_126" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_54"*] [%"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Option_Some_Uint128_ADTTyp_Constr_122", %"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Option_None_Uint128_ADTTyp_Constr_125"]
@"$TyDescr_Option_Uint128_ADTTyp_Specl_m_TArgs_127" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Uint128_33"]
@"$TyDescr_Option_Uint128_ADTTyp_Specl_128" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_52" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Uint128_ADTTyp_Specl_m_TArgs_127", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_54"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_54"*], [2 x %"$TyDescrTy_ADTTyp_Constr_54"*]* @"$TyDescr_Option_Uint128_ADTTyp_Specl_m_constrs_126", i32 0, i32 0), %"$TyDescrTy_ADTTyp_53"* @"$TyDescr_Option_ADTTyp_74" }
@"$TyDescr_Option_Some_ByStr20_with_contract_end_Constr_m_args_129" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_72"]
@"$TyDescr_ADT_Some_130" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_with_contract_end_ADTTyp_Constr_131" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_130", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_with_contract_end_Constr_m_args_129", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_with_contract_end_Constr_m_args_132" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_133" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_with_contract_end_ADTTyp_Constr_134" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_133", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_with_contract_end_Constr_m_args_132", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_with_contract_end_ADTTyp_Specl_m_constrs_135" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_54"*] [%"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Option_Some_ByStr20_with_contract_end_ADTTyp_Constr_131", %"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Option_None_ByStr20_with_contract_end_ADTTyp_Constr_134"]
@"$TyDescr_Option_ByStr20_with_contract_end_ADTTyp_Specl_m_TArgs_136" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_72"]
@"$TyDescr_Option_ByStr20_with_contract_end_ADTTyp_Specl_137" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_52" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_with_contract_end_ADTTyp_Specl_m_TArgs_136", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_54"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_54"*], [2 x %"$TyDescrTy_ADTTyp_Constr_54"*]* @"$TyDescr_Option_ByStr20_with_contract_end_ADTTyp_Specl_m_constrs_135", i32 0, i32 0), %"$TyDescrTy_ADTTyp_53"* @"$TyDescr_Option_ADTTyp_74" }
@"$TyDescr_Option_Some_ByStr20_with_end_Constr_m_args_138" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_73"]
@"$TyDescr_ADT_Some_139" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr20_with_end_ADTTyp_Constr_140" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_139", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr20_with_end_Constr_m_args_138", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr20_with_end_Constr_m_args_141" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_142" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr20_with_end_ADTTyp_Constr_143" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_142", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr20_with_end_Constr_m_args_141", i32 0, i32 0) }
@"$TyDescr_Option_ByStr20_with_end_ADTTyp_Specl_m_constrs_144" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_54"*] [%"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Option_Some_ByStr20_with_end_ADTTyp_Constr_140", %"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Option_None_ByStr20_with_end_ADTTyp_Constr_143"]
@"$TyDescr_Option_ByStr20_with_end_ADTTyp_Specl_m_TArgs_145" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Addr_73"]
@"$TyDescr_Option_ByStr20_with_end_ADTTyp_Specl_146" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_52" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr20_with_end_ADTTyp_Specl_m_TArgs_145", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_54"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_54"*], [2 x %"$TyDescrTy_ADTTyp_Constr_54"*]* @"$TyDescr_Option_ByStr20_with_end_ADTTyp_Specl_m_constrs_144", i32 0, i32 0), %"$TyDescrTy_ADTTyp_53"* @"$TyDescr_Option_ADTTyp_74" }
@"$TyDescr_Option_ADTTyp_m_specls_147" = unnamed_addr constant [8 x %"$TyDescrTy_ADTTyp_Specl_52"*] [%"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_ADTTyp_Specl_83", %"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Option_ByStr20_with_contract_field_f_:_ByStr20_end_ADTTyp_Specl_92", %"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_ADTTyp_Specl_101", %"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Option_Int256_ADTTyp_Specl_110", %"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Option_Bool_ADTTyp_Specl_119", %"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Option_Uint128_ADTTyp_Specl_128", %"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Option_ByStr20_with_contract_end_ADTTyp_Specl_137", %"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Option_ByStr20_with_end_ADTTyp_Specl_146"]
@"$TyDescr_ADT_Option_148" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_Bool_ADTTyp_149" = unnamed_addr constant %"$TyDescrTy_ADTTyp_53" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_160", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_52"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_52"*], [1 x %"$TyDescrTy_ADTTyp_Specl_52"*]* @"$TyDescr_Bool_ADTTyp_m_specls_159", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_150" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_151" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_152" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_151", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_150", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_153" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_154" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_155" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_54" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_154", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_153", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_156" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_54"*] [%"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Bool_True_ADTTyp_Constr_152", %"$TyDescrTy_ADTTyp_Constr_54"* @"$TyDescr_Bool_False_ADTTyp_Constr_155"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_157" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_158" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_52" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_157", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_54"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_54"*], [2 x %"$TyDescrTy_ADTTyp_Constr_54"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_156", i32 0, i32 0), %"$TyDescrTy_ADTTyp_53"* @"$TyDescr_Bool_ADTTyp_149" }
@"$TyDescr_Bool_ADTTyp_m_specls_159" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_52"*] [%"$TyDescrTy_ADTTyp_Specl_52"* @"$TyDescr_Bool_ADTTyp_Specl_158"]
@"$TyDescr_ADT_Bool_160" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_AddrField_161" = unnamed_addr constant [1 x i8] c"g"
@"$TyDescr_AddrField_162" = unnamed_addr constant [1 x i8] c"h"
@"$TyDescr_AddrFields_163" = unnamed_addr constant [2 x %"$TyDescr_AddrFieldTyp_65"] [%"$TyDescr_AddrFieldTyp_65" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_161", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_63" }, %"$TyDescr_AddrFieldTyp_65" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_162", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Int256_35" }]
@"$TyDescr_AddrFields_164" = unnamed_addr constant %"$TyDescr_AddrTyp_66" { i32 2, %"$TyDescr_AddrFieldTyp_65"* getelementptr inbounds ([2 x %"$TyDescr_AddrFieldTyp_65"], [2 x %"$TyDescr_AddrFieldTyp_65"]* @"$TyDescr_AddrFields_163", i32 0, i32 0) }
@"$TyDescr_AddrField_165" = unnamed_addr constant [1 x i8] c"f"
@"$TyDescr_AddrFields_166" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_65"] [%"$TyDescr_AddrFieldTyp_65" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_165", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_51" }]
@"$TyDescr_AddrFields_167" = unnamed_addr constant %"$TyDescr_AddrTyp_66" { i32 1, %"$TyDescr_AddrFieldTyp_65"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_65"], [1 x %"$TyDescr_AddrFieldTyp_65"]* @"$TyDescr_AddrFields_166", i32 0, i32 0) }
@"$TyDescr_AddrField_168" = unnamed_addr constant [1 x i8] c"f"
@"$TyDescr_AddrField_169" = unnamed_addr constant [1 x i8] c"g"
@"$TyDescr_AddrFields_170" = unnamed_addr constant [2 x %"$TyDescr_AddrFieldTyp_65"] [%"$TyDescr_AddrFieldTyp_65" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_168", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Uint256_37" }, %"$TyDescr_AddrFieldTyp_65" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_169", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_63" }]
@"$TyDescr_AddrFields_171" = unnamed_addr constant %"$TyDescr_AddrTyp_66" { i32 2, %"$TyDescr_AddrFieldTyp_65"* getelementptr inbounds ([2 x %"$TyDescr_AddrFieldTyp_65"], [2 x %"$TyDescr_AddrFieldTyp_65"]* @"$TyDescr_AddrFields_170", i32 0, i32 0) }
@"$TyDescr_AddrField_172" = unnamed_addr constant [1 x i8] c"g"
@"$TyDescr_AddrFields_173" = unnamed_addr constant [1 x %"$TyDescr_AddrFieldTyp_65"] [%"$TyDescr_AddrFieldTyp_65" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_172", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_63" }]
@"$TyDescr_AddrFields_174" = unnamed_addr constant %"$TyDescr_AddrTyp_66" { i32 1, %"$TyDescr_AddrFieldTyp_65"* getelementptr inbounds ([1 x %"$TyDescr_AddrFieldTyp_65"], [1 x %"$TyDescr_AddrFieldTyp_65"]* @"$TyDescr_AddrFields_173", i32 0, i32 0) }
@"$TyDescr_AddrField_175" = unnamed_addr constant [1 x i8] c"f"
@"$TyDescr_AddrField_176" = unnamed_addr constant [1 x i8] c"g"
@"$TyDescr_AddrFields_177" = unnamed_addr constant [2 x %"$TyDescr_AddrFieldTyp_65"] [%"$TyDescr_AddrFieldTyp_65" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_175", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_33" }, %"$TyDescr_AddrFieldTyp_65" { %TyDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$TyDescr_AddrField_176", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_63" }]
@"$TyDescr_AddrFields_178" = unnamed_addr constant %"$TyDescr_AddrTyp_66" { i32 2, %"$TyDescr_AddrFieldTyp_65"* getelementptr inbounds ([2 x %"$TyDescr_AddrFieldTyp_65"], [2 x %"$TyDescr_AddrFieldTyp_65"]* @"$TyDescr_AddrFields_177", i32 0, i32 0) }
@"$TyDescr_AddrFields_179" = unnamed_addr constant [0 x %"$TyDescr_AddrFieldTyp_65"] zeroinitializer
@"$TyDescr_AddrFields_180" = unnamed_addr constant %"$TyDescr_AddrTyp_66" { i32 0, %"$TyDescr_AddrFieldTyp_65"* getelementptr inbounds ([0 x %"$TyDescr_AddrFieldTyp_65"], [0 x %"$TyDescr_AddrFieldTyp_65"]* @"$TyDescr_AddrFields_179", i32 0, i32 0) }
@"$TyDescr_AddrFields_181" = unnamed_addr constant %"$TyDescr_AddrTyp_66" { i32 -1, %"$TyDescr_AddrFieldTyp_65"* null }
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$test_1_res_191" = unnamed_addr constant [11 x i8] c"test_1_res\00"
@"$test_2_res_203" = unnamed_addr constant [11 x i8] c"test_2_res\00"
@"$test_3_res_215" = unnamed_addr constant [11 x i8] c"test_3_res\00"
@"$test_4_res_227" = unnamed_addr constant [11 x i8] c"test_4_res\00"
@"$test_5_1_res_239" = unnamed_addr constant [13 x i8] c"test_5_1_res\00"
@"$test_5_2_res_251" = unnamed_addr constant [13 x i8] c"test_5_2_res\00"
@"$test_6_1_bal_res_263" = unnamed_addr constant [17 x i8] c"test_6_1_bal_res\00"
@"$test_6_1_f_res_275" = unnamed_addr constant [15 x i8] c"test_6_1_f_res\00"
@"$test_6_1_g_res_287" = unnamed_addr constant [15 x i8] c"test_6_1_g_res\00"
@"$test_6_2_bal_res_299" = unnamed_addr constant [17 x i8] c"test_6_2_bal_res\00"
@"$test_6_2_f_res_311" = unnamed_addr constant [15 x i8] c"test_6_2_f_res\00"
@"$test_6_2_g_res_323" = unnamed_addr constant [15 x i8] c"test_6_2_g_res\00"
@"$test_6_3_bal_res_335" = unnamed_addr constant [17 x i8] c"test_6_3_bal_res\00"
@"$test_6_3_f_res_347" = unnamed_addr constant [15 x i8] c"test_6_3_f_res\00"
@"$test_6_3_g_res_359" = unnamed_addr constant [15 x i8] c"test_6_3_g_res\00"
@"$test_6_4_bal_res_371" = unnamed_addr constant [17 x i8] c"test_6_4_bal_res\00"
@"$test_6_4_f_res_383" = unnamed_addr constant [15 x i8] c"test_6_4_f_res\00"
@"$test_6_4_g_res_395" = unnamed_addr constant [15 x i8] c"test_6_4_g_res\00"
@"$test_6_4_failed_cast_407" = unnamed_addr constant [21 x i8] c"test_6_4_failed_cast\00"
@"$test_7_g_res_419" = unnamed_addr constant [13 x i8] c"test_7_g_res\00"
@"$test_7_h_res_431" = unnamed_addr constant [13 x i8] c"test_7_h_res\00"
@"$test_1_res_456" = unnamed_addr constant [11 x i8] c"test_1_res\00"
@"$test_2_res_490" = unnamed_addr constant [11 x i8] c"test_2_res\00"
@"$test_3_res_524" = unnamed_addr constant [11 x i8] c"test_3_res\00"
@"$_balance_563" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_4_res_604" = unnamed_addr constant [11 x i8] c"test_4_res\00"
@"$_balance_645" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_5_1_res_686" = unnamed_addr constant [13 x i8] c"test_5_1_res\00"
@"$_balance_727" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_5_2_res_768" = unnamed_addr constant [13 x i8] c"test_5_2_res\00"
@"$_balance_809" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_6_1_bal_res_850" = unnamed_addr constant [17 x i8] c"test_6_1_bal_res\00"
@"$f_853" = unnamed_addr constant [2 x i8] c"f\00"
@"$test_6_1_f_res_894" = unnamed_addr constant [15 x i8] c"test_6_1_f_res\00"
@"$g_897" = unnamed_addr constant [2 x i8] c"g\00"
@"$test_6_1_g_res_936" = unnamed_addr constant [15 x i8] c"test_6_1_g_res\00"
@"$_balance_977" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_6_2_bal_res_1018" = unnamed_addr constant [17 x i8] c"test_6_2_bal_res\00"
@"$f_1021" = unnamed_addr constant [2 x i8] c"f\00"
@"$test_6_2_f_res_1062" = unnamed_addr constant [15 x i8] c"test_6_2_f_res\00"
@"$g_1065" = unnamed_addr constant [2 x i8] c"g\00"
@"$test_6_2_g_res_1104" = unnamed_addr constant [15 x i8] c"test_6_2_g_res\00"
@"$_balance_1145" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_6_3_bal_res_1186" = unnamed_addr constant [17 x i8] c"test_6_3_bal_res\00"
@"$f_1189" = unnamed_addr constant [2 x i8] c"f\00"
@"$test_6_3_f_res_1230" = unnamed_addr constant [15 x i8] c"test_6_3_f_res\00"
@"$g_1233" = unnamed_addr constant [2 x i8] c"g\00"
@"$test_6_3_g_res_1272" = unnamed_addr constant [15 x i8] c"test_6_3_g_res\00"
@"$_balance_1313" = unnamed_addr constant [9 x i8] c"_balance\00"
@"$test_6_4_bal_res_1354" = unnamed_addr constant [17 x i8] c"test_6_4_bal_res\00"
@"$f_1357" = unnamed_addr constant [2 x i8] c"f\00"
@"$test_6_4_f_res_1398" = unnamed_addr constant [15 x i8] c"test_6_4_f_res\00"
@"$g_1401" = unnamed_addr constant [2 x i8] c"g\00"
@"$test_6_4_g_res_1440" = unnamed_addr constant [15 x i8] c"test_6_4_g_res\00"
@"$test_6_4_failed_cast_1467" = unnamed_addr constant [21 x i8] c"test_6_4_failed_cast\00"
@"$f_1506" = unnamed_addr constant [2 x i8] c"f\00"
@"$g_1547" = unnamed_addr constant [2 x i8] c"g\00"
@"$test_7_g_res_1586" = unnamed_addr constant [13 x i8] c"test_7_g_res\00"
@"$h_1589" = unnamed_addr constant [2 x i8] c"h\00"
@"$test_7_h_res_1630" = unnamed_addr constant [13 x i8] c"test_7_h_res\00"
@_tydescr_table = constant [31 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int256_58", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end_57", %_TyDescrTy_Typ* @"$TyDescr_Event_45", %_TyDescrTy_Typ* @"$TyDescr_Int64_27", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_61", %_TyDescrTy_Typ* @"$TyDescr_Addr_73", %_TyDescrTy_Typ* @"$TyDescr_Addr_70", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_63", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_51", %_TyDescrTy_Typ* @"$TyDescr_Uint256_37", %_TyDescrTy_Typ* @"$TyDescr_Uint32_25", %_TyDescrTy_Typ* @"$TyDescr_Addr_72", %_TyDescrTy_Typ* @"$TyDescr_Addr_69", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_59", %_TyDescrTy_Typ* @"$TyDescr_Uint64_29", %_TyDescrTy_Typ* @"$TyDescr_Bnum_41", %_TyDescrTy_Typ* @"$TyDescr_Uint128_33", %_TyDescrTy_Typ* @"$TyDescr_Addr_68", %_TyDescrTy_Typ* @"$TyDescr_Exception_47", %_TyDescrTy_Typ* @"$TyDescr_String_39", %_TyDescrTy_Typ* @"$TyDescr_Addr_71", %_TyDescrTy_Typ* @"$TyDescr_Int256_35", %_TyDescrTy_Typ* @"$TyDescr_Int128_31", %_TyDescrTy_Typ* @"$TyDescr_Addr_67", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_end_62", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", %_TyDescrTy_Typ* @"$TyDescr_Bystr_49", %_TyDescrTy_Typ* @"$TyDescr_Message_43", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_field_f_:_ByStr20_end_56", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end_55", %_TyDescrTy_Typ* @"$TyDescr_Int32_23"]
@_tydescr_table_length = constant i32 31
@"$pname__scilla_version_1648" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_1649" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_1650" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_1646"] [%"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_1648", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_25" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_1649", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_51" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_1650", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_41" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_1651" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1652" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1653" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1654" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest1_1655" = unnamed_addr constant [4 x %"$ParamDescr_1646"] [%"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1651", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_33" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1652", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1653", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1654", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_72" }]
@"$tname_CastTest1_1656" = unnamed_addr constant [9 x i8] c"CastTest1"
@"$tpname__amount_1657" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1658" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1659" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1660" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest2_1661" = unnamed_addr constant [4 x %"$ParamDescr_1646"] [%"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1657", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_33" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1658", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1659", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1660", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_72" }]
@"$tname_CastTest2_1662" = unnamed_addr constant [9 x i8] c"CastTest2"
@"$tpname__amount_1663" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1664" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1665" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1666" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest3_1667" = unnamed_addr constant [4 x %"$ParamDescr_1646"] [%"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1663", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_33" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1664", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1665", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1666", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_72" }]
@"$tname_CastTest3_1668" = unnamed_addr constant [9 x i8] c"CastTest3"
@"$tpname__amount_1669" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1670" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1671" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1672" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest4_1673" = unnamed_addr constant [4 x %"$ParamDescr_1646"] [%"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1669", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_33" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1670", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1671", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1672", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_51" }]
@"$tname_CastTest4_1674" = unnamed_addr constant [9 x i8] c"CastTest4"
@"$tpname__amount_1675" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1676" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1677" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1678" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest5_1_1679" = unnamed_addr constant [4 x %"$ParamDescr_1646"] [%"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1675", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_33" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1676", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1677", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1678", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_51" }]
@"$tname_CastTest5_1_1680" = unnamed_addr constant [11 x i8] c"CastTest5_1"
@"$tpname__amount_1681" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1682" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1683" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1684" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest5_2_1685" = unnamed_addr constant [4 x %"$ParamDescr_1646"] [%"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1681", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_33" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1682", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1683", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1684", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }]
@"$tname_CastTest5_2_1686" = unnamed_addr constant [11 x i8] c"CastTest5_2"
@"$tpname__amount_1687" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1688" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1689" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1690" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest6_1_1691" = unnamed_addr constant [4 x %"$ParamDescr_1646"] [%"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1687", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_33" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1688", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1689", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1690", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_51" }]
@"$tname_CastTest6_1_1692" = unnamed_addr constant [11 x i8] c"CastTest6_1"
@"$tpname__amount_1693" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1694" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1695" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1696" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest6_2_1697" = unnamed_addr constant [4 x %"$ParamDescr_1646"] [%"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1693", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_33" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1694", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1695", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1696", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }]
@"$tname_CastTest6_2_1698" = unnamed_addr constant [11 x i8] c"CastTest6_2"
@"$tpname__amount_1699" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1700" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1701" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1702" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest6_3_1703" = unnamed_addr constant [4 x %"$ParamDescr_1646"] [%"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1699", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_33" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1700", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1701", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1702", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_70" }]
@"$tname_CastTest6_3_1704" = unnamed_addr constant [11 x i8] c"CastTest6_3"
@"$tpname__amount_1705" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1706" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1707" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1708" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest6_4_1709" = unnamed_addr constant [4 x %"$ParamDescr_1646"] [%"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1705", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_33" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1706", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1707", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1708", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_69" }]
@"$tname_CastTest6_4_1710" = unnamed_addr constant [11 x i8] c"CastTest6_4"
@"$tpname__amount_1711" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_1712" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_1713" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_x_1714" = unnamed_addr constant [1 x i8] c"x"
@"$tparams_CastTest7_1715" = unnamed_addr constant [4 x %"$ParamDescr_1646"] [%"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_1711", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_33" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_1712", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_1713", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_73" }, %"$ParamDescr_1646" { %ParamDescrString { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @"$tpname_x_1714", i32 0, i32 0), i32 1 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_51" }]
@"$tname_CastTest7_1716" = unnamed_addr constant [9 x i8] c"CastTest7"
@_transition_parameters = constant [11 x %"$TransDescr_1647"] [%"$TransDescr_1647" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_CastTest1_1656", i32 0, i32 0), i32 9 }, i32 4, %"$ParamDescr_1646"* getelementptr inbounds ([4 x %"$ParamDescr_1646"], [4 x %"$ParamDescr_1646"]* @"$tparams_CastTest1_1655", i32 0, i32 0) }, %"$TransDescr_1647" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_CastTest2_1662", i32 0, i32 0), i32 9 }, i32 4, %"$ParamDescr_1646"* getelementptr inbounds ([4 x %"$ParamDescr_1646"], [4 x %"$ParamDescr_1646"]* @"$tparams_CastTest2_1661", i32 0, i32 0) }, %"$TransDescr_1647" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_CastTest3_1668", i32 0, i32 0), i32 9 }, i32 4, %"$ParamDescr_1646"* getelementptr inbounds ([4 x %"$ParamDescr_1646"], [4 x %"$ParamDescr_1646"]* @"$tparams_CastTest3_1667", i32 0, i32 0) }, %"$TransDescr_1647" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_CastTest4_1674", i32 0, i32 0), i32 9 }, i32 4, %"$ParamDescr_1646"* getelementptr inbounds ([4 x %"$ParamDescr_1646"], [4 x %"$ParamDescr_1646"]* @"$tparams_CastTest4_1673", i32 0, i32 0) }, %"$TransDescr_1647" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest5_1_1680", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1646"* getelementptr inbounds ([4 x %"$ParamDescr_1646"], [4 x %"$ParamDescr_1646"]* @"$tparams_CastTest5_1_1679", i32 0, i32 0) }, %"$TransDescr_1647" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest5_2_1686", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1646"* getelementptr inbounds ([4 x %"$ParamDescr_1646"], [4 x %"$ParamDescr_1646"]* @"$tparams_CastTest5_2_1685", i32 0, i32 0) }, %"$TransDescr_1647" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest6_1_1692", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1646"* getelementptr inbounds ([4 x %"$ParamDescr_1646"], [4 x %"$ParamDescr_1646"]* @"$tparams_CastTest6_1_1691", i32 0, i32 0) }, %"$TransDescr_1647" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest6_2_1698", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1646"* getelementptr inbounds ([4 x %"$ParamDescr_1646"], [4 x %"$ParamDescr_1646"]* @"$tparams_CastTest6_2_1697", i32 0, i32 0) }, %"$TransDescr_1647" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest6_3_1704", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1646"* getelementptr inbounds ([4 x %"$ParamDescr_1646"], [4 x %"$ParamDescr_1646"]* @"$tparams_CastTest6_3_1703", i32 0, i32 0) }, %"$TransDescr_1647" { %ParamDescrString { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$tname_CastTest6_4_1710", i32 0, i32 0), i32 11 }, i32 4, %"$ParamDescr_1646"* getelementptr inbounds ([4 x %"$ParamDescr_1646"], [4 x %"$ParamDescr_1646"]* @"$tparams_CastTest6_4_1709", i32 0, i32 0) }, %"$TransDescr_1647" { %ParamDescrString { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$tname_CastTest7_1716", i32 0, i32 0), i32 9 }, i32 4, %"$ParamDescr_1646"* getelementptr inbounds ([4 x %"$ParamDescr_1646"], [4 x %"$ParamDescr_1646"]* @"$tparams_CastTest7_1715", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 11

define void @_init_libs() {
entry:
  ret void
}

define void @_init_state() {
entry:
  %"$test_1_res_0" = alloca %TName_Option_ByStr20_with_end*, align 8
  %"$gasrem_182" = load i64, i64* @_gasrem, align 8
  %"$gascmp_183" = icmp ugt i64 1, %"$gasrem_182"
  br i1 %"$gascmp_183", label %"$out_of_gas_184", label %"$have_gas_185"

"$out_of_gas_184":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_185"

"$have_gas_185":                                  ; preds = %"$out_of_gas_184", %entry
  %"$consume_186" = sub i64 %"$gasrem_182", 1
  store i64 %"$consume_186", i64* @_gasrem, align 8
  %"$adtval_187_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_187_salloc" = call i8* @_salloc(i8* %"$adtval_187_load", i64 1)
  %"$adtval_187" = bitcast i8* %"$adtval_187_salloc" to %CName_None_ByStr20_with_end*
  %"$adtgep_188" = getelementptr inbounds %CName_None_ByStr20_with_end, %CName_None_ByStr20_with_end* %"$adtval_187", i32 0, i32 0
  store i8 1, i8* %"$adtgep_188", align 1
  %"$adtptr_189" = bitcast %CName_None_ByStr20_with_end* %"$adtval_187" to %TName_Option_ByStr20_with_end*
  store %TName_Option_ByStr20_with_end* %"$adtptr_189", %TName_Option_ByStr20_with_end** %"$test_1_res_0", align 8
  %"$execptr_load_190" = load i8*, i8** @_execptr, align 8
  %"$$test_1_res_0_192" = load %TName_Option_ByStr20_with_end*, %TName_Option_ByStr20_with_end** %"$test_1_res_0", align 8
  %"$update_value_193" = bitcast %TName_Option_ByStr20_with_end* %"$$test_1_res_0_192" to i8*
  call void @_update_field(i8* %"$execptr_load_190", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_1_res_191", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_end_62", i32 0, i8* null, i8* %"$update_value_193")
  %"$test_2_res_1" = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  %"$gasrem_194" = load i64, i64* @_gasrem, align 8
  %"$gascmp_195" = icmp ugt i64 1, %"$gasrem_194"
  br i1 %"$gascmp_195", label %"$out_of_gas_196", label %"$have_gas_197"

"$out_of_gas_196":                                ; preds = %"$have_gas_185"
  call void @_out_of_gas()
  br label %"$have_gas_197"

"$have_gas_197":                                  ; preds = %"$out_of_gas_196", %"$have_gas_185"
  %"$consume_198" = sub i64 %"$gasrem_194", 1
  store i64 %"$consume_198", i64* @_gasrem, align 8
  %"$adtval_199_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_199_salloc" = call i8* @_salloc(i8* %"$adtval_199_load", i64 1)
  %"$adtval_199" = bitcast i8* %"$adtval_199_salloc" to %CName_None_ByStr20_with_contract_end*
  %"$adtgep_200" = getelementptr inbounds %CName_None_ByStr20_with_contract_end, %CName_None_ByStr20_with_contract_end* %"$adtval_199", i32 0, i32 0
  store i8 1, i8* %"$adtgep_200", align 1
  %"$adtptr_201" = bitcast %CName_None_ByStr20_with_contract_end* %"$adtval_199" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$adtptr_201", %TName_Option_ByStr20_with_contract_end** %"$test_2_res_1", align 8
  %"$execptr_load_202" = load i8*, i8** @_execptr, align 8
  %"$$test_2_res_1_204" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %"$test_2_res_1", align 8
  %"$update_value_205" = bitcast %TName_Option_ByStr20_with_contract_end* %"$$test_2_res_1_204" to i8*
  call void @_update_field(i8* %"$execptr_load_202", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_2_res_203", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_61", i32 0, i8* null, i8* %"$update_value_205")
  %"$test_3_res_2" = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  %"$gasrem_206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_207" = icmp ugt i64 1, %"$gasrem_206"
  br i1 %"$gascmp_207", label %"$out_of_gas_208", label %"$have_gas_209"

"$out_of_gas_208":                                ; preds = %"$have_gas_197"
  call void @_out_of_gas()
  br label %"$have_gas_209"

"$have_gas_209":                                  ; preds = %"$out_of_gas_208", %"$have_gas_197"
  %"$consume_210" = sub i64 %"$gasrem_206", 1
  store i64 %"$consume_210", i64* @_gasrem, align 8
  %"$adtval_211_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_211_salloc" = call i8* @_salloc(i8* %"$adtval_211_load", i64 1)
  %"$adtval_211" = bitcast i8* %"$adtval_211_salloc" to %CName_None_ByStr20_with_contract_end*
  %"$adtgep_212" = getelementptr inbounds %CName_None_ByStr20_with_contract_end, %CName_None_ByStr20_with_contract_end* %"$adtval_211", i32 0, i32 0
  store i8 1, i8* %"$adtgep_212", align 1
  %"$adtptr_213" = bitcast %CName_None_ByStr20_with_contract_end* %"$adtval_211" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$adtptr_213", %TName_Option_ByStr20_with_contract_end** %"$test_3_res_2", align 8
  %"$execptr_load_214" = load i8*, i8** @_execptr, align 8
  %"$$test_3_res_2_216" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %"$test_3_res_2", align 8
  %"$update_value_217" = bitcast %TName_Option_ByStr20_with_contract_end* %"$$test_3_res_2_216" to i8*
  call void @_update_field(i8* %"$execptr_load_214", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_3_res_215", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_61", i32 0, i8* null, i8* %"$update_value_217")
  %"$test_4_res_3" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_218" = load i64, i64* @_gasrem, align 8
  %"$gascmp_219" = icmp ugt i64 1, %"$gasrem_218"
  br i1 %"$gascmp_219", label %"$out_of_gas_220", label %"$have_gas_221"

"$out_of_gas_220":                                ; preds = %"$have_gas_209"
  call void @_out_of_gas()
  br label %"$have_gas_221"

"$have_gas_221":                                  ; preds = %"$out_of_gas_220", %"$have_gas_209"
  %"$consume_222" = sub i64 %"$gasrem_218", 1
  store i64 %"$consume_222", i64* @_gasrem, align 8
  %"$adtval_223_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_223_salloc" = call i8* @_salloc(i8* %"$adtval_223_load", i64 1)
  %"$adtval_223" = bitcast i8* %"$adtval_223_salloc" to %CName_None_Uint128*
  %"$adtgep_224" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_223", i32 0, i32 0
  store i8 1, i8* %"$adtgep_224", align 1
  %"$adtptr_225" = bitcast %CName_None_Uint128* %"$adtval_223" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_225", %TName_Option_Uint128** %"$test_4_res_3", align 8
  %"$execptr_load_226" = load i8*, i8** @_execptr, align 8
  %"$$test_4_res_3_228" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_4_res_3", align 8
  %"$update_value_229" = bitcast %TName_Option_Uint128* %"$$test_4_res_3_228" to i8*
  call void @_update_field(i8* %"$execptr_load_226", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_4_res_227", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i32 0, i8* null, i8* %"$update_value_229")
  %"$test_5_1_res_4" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_230" = load i64, i64* @_gasrem, align 8
  %"$gascmp_231" = icmp ugt i64 1, %"$gasrem_230"
  br i1 %"$gascmp_231", label %"$out_of_gas_232", label %"$have_gas_233"

"$out_of_gas_232":                                ; preds = %"$have_gas_221"
  call void @_out_of_gas()
  br label %"$have_gas_233"

"$have_gas_233":                                  ; preds = %"$out_of_gas_232", %"$have_gas_221"
  %"$consume_234" = sub i64 %"$gasrem_230", 1
  store i64 %"$consume_234", i64* @_gasrem, align 8
  %"$adtval_235_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_235_salloc" = call i8* @_salloc(i8* %"$adtval_235_load", i64 1)
  %"$adtval_235" = bitcast i8* %"$adtval_235_salloc" to %CName_None_Uint128*
  %"$adtgep_236" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_235", i32 0, i32 0
  store i8 1, i8* %"$adtgep_236", align 1
  %"$adtptr_237" = bitcast %CName_None_Uint128* %"$adtval_235" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_237", %TName_Option_Uint128** %"$test_5_1_res_4", align 8
  %"$execptr_load_238" = load i8*, i8** @_execptr, align 8
  %"$$test_5_1_res_4_240" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_5_1_res_4", align 8
  %"$update_value_241" = bitcast %TName_Option_Uint128* %"$$test_5_1_res_4_240" to i8*
  call void @_update_field(i8* %"$execptr_load_238", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_5_1_res_239", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i32 0, i8* null, i8* %"$update_value_241")
  %"$test_5_2_res_5" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_242" = load i64, i64* @_gasrem, align 8
  %"$gascmp_243" = icmp ugt i64 1, %"$gasrem_242"
  br i1 %"$gascmp_243", label %"$out_of_gas_244", label %"$have_gas_245"

"$out_of_gas_244":                                ; preds = %"$have_gas_233"
  call void @_out_of_gas()
  br label %"$have_gas_245"

"$have_gas_245":                                  ; preds = %"$out_of_gas_244", %"$have_gas_233"
  %"$consume_246" = sub i64 %"$gasrem_242", 1
  store i64 %"$consume_246", i64* @_gasrem, align 8
  %"$adtval_247_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_247_salloc" = call i8* @_salloc(i8* %"$adtval_247_load", i64 1)
  %"$adtval_247" = bitcast i8* %"$adtval_247_salloc" to %CName_None_Uint128*
  %"$adtgep_248" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_247", i32 0, i32 0
  store i8 1, i8* %"$adtgep_248", align 1
  %"$adtptr_249" = bitcast %CName_None_Uint128* %"$adtval_247" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_249", %TName_Option_Uint128** %"$test_5_2_res_5", align 8
  %"$execptr_load_250" = load i8*, i8** @_execptr, align 8
  %"$$test_5_2_res_5_252" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_5_2_res_5", align 8
  %"$update_value_253" = bitcast %TName_Option_Uint128* %"$$test_5_2_res_5_252" to i8*
  call void @_update_field(i8* %"$execptr_load_250", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_5_2_res_251", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i32 0, i8* null, i8* %"$update_value_253")
  %"$test_6_1_bal_res_6" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_254" = load i64, i64* @_gasrem, align 8
  %"$gascmp_255" = icmp ugt i64 1, %"$gasrem_254"
  br i1 %"$gascmp_255", label %"$out_of_gas_256", label %"$have_gas_257"

"$out_of_gas_256":                                ; preds = %"$have_gas_245"
  call void @_out_of_gas()
  br label %"$have_gas_257"

"$have_gas_257":                                  ; preds = %"$out_of_gas_256", %"$have_gas_245"
  %"$consume_258" = sub i64 %"$gasrem_254", 1
  store i64 %"$consume_258", i64* @_gasrem, align 8
  %"$adtval_259_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_259_salloc" = call i8* @_salloc(i8* %"$adtval_259_load", i64 1)
  %"$adtval_259" = bitcast i8* %"$adtval_259_salloc" to %CName_None_Uint128*
  %"$adtgep_260" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_259", i32 0, i32 0
  store i8 1, i8* %"$adtgep_260", align 1
  %"$adtptr_261" = bitcast %CName_None_Uint128* %"$adtval_259" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_261", %TName_Option_Uint128** %"$test_6_1_bal_res_6", align 8
  %"$execptr_load_262" = load i8*, i8** @_execptr, align 8
  %"$$test_6_1_bal_res_6_264" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_1_bal_res_6", align 8
  %"$update_value_265" = bitcast %TName_Option_Uint128* %"$$test_6_1_bal_res_6_264" to i8*
  call void @_update_field(i8* %"$execptr_load_262", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_1_bal_res_263", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i32 0, i8* null, i8* %"$update_value_265")
  %"$test_6_1_f_res_7" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_267" = icmp ugt i64 1, %"$gasrem_266"
  br i1 %"$gascmp_267", label %"$out_of_gas_268", label %"$have_gas_269"

"$out_of_gas_268":                                ; preds = %"$have_gas_257"
  call void @_out_of_gas()
  br label %"$have_gas_269"

"$have_gas_269":                                  ; preds = %"$out_of_gas_268", %"$have_gas_257"
  %"$consume_270" = sub i64 %"$gasrem_266", 1
  store i64 %"$consume_270", i64* @_gasrem, align 8
  %"$adtval_271_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_271_salloc" = call i8* @_salloc(i8* %"$adtval_271_load", i64 1)
  %"$adtval_271" = bitcast i8* %"$adtval_271_salloc" to %CName_None_Uint128*
  %"$adtgep_272" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_271", i32 0, i32 0
  store i8 1, i8* %"$adtgep_272", align 1
  %"$adtptr_273" = bitcast %CName_None_Uint128* %"$adtval_271" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_273", %TName_Option_Uint128** %"$test_6_1_f_res_7", align 8
  %"$execptr_load_274" = load i8*, i8** @_execptr, align 8
  %"$$test_6_1_f_res_7_276" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_1_f_res_7", align 8
  %"$update_value_277" = bitcast %TName_Option_Uint128* %"$$test_6_1_f_res_7_276" to i8*
  call void @_update_field(i8* %"$execptr_load_274", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_1_f_res_275", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i32 0, i8* null, i8* %"$update_value_277")
  %"$test_6_1_g_res_8" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_278" = load i64, i64* @_gasrem, align 8
  %"$gascmp_279" = icmp ugt i64 1, %"$gasrem_278"
  br i1 %"$gascmp_279", label %"$out_of_gas_280", label %"$have_gas_281"

"$out_of_gas_280":                                ; preds = %"$have_gas_269"
  call void @_out_of_gas()
  br label %"$have_gas_281"

"$have_gas_281":                                  ; preds = %"$out_of_gas_280", %"$have_gas_269"
  %"$consume_282" = sub i64 %"$gasrem_278", 1
  store i64 %"$consume_282", i64* @_gasrem, align 8
  %"$adtval_283_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_283_salloc" = call i8* @_salloc(i8* %"$adtval_283_load", i64 1)
  %"$adtval_283" = bitcast i8* %"$adtval_283_salloc" to %CName_None_Bool*
  %"$adtgep_284" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_283", i32 0, i32 0
  store i8 1, i8* %"$adtgep_284", align 1
  %"$adtptr_285" = bitcast %CName_None_Bool* %"$adtval_283" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_285", %TName_Option_Bool** %"$test_6_1_g_res_8", align 8
  %"$execptr_load_286" = load i8*, i8** @_execptr, align 8
  %"$$test_6_1_g_res_8_288" = load %TName_Option_Bool*, %TName_Option_Bool** %"$test_6_1_g_res_8", align 8
  %"$update_value_289" = bitcast %TName_Option_Bool* %"$$test_6_1_g_res_8_288" to i8*
  call void @_update_field(i8* %"$execptr_load_286", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_1_g_res_287", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_59", i32 0, i8* null, i8* %"$update_value_289")
  %"$test_6_2_bal_res_9" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_291" = icmp ugt i64 1, %"$gasrem_290"
  br i1 %"$gascmp_291", label %"$out_of_gas_292", label %"$have_gas_293"

"$out_of_gas_292":                                ; preds = %"$have_gas_281"
  call void @_out_of_gas()
  br label %"$have_gas_293"

"$have_gas_293":                                  ; preds = %"$out_of_gas_292", %"$have_gas_281"
  %"$consume_294" = sub i64 %"$gasrem_290", 1
  store i64 %"$consume_294", i64* @_gasrem, align 8
  %"$adtval_295_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_295_salloc" = call i8* @_salloc(i8* %"$adtval_295_load", i64 1)
  %"$adtval_295" = bitcast i8* %"$adtval_295_salloc" to %CName_None_Uint128*
  %"$adtgep_296" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_295", i32 0, i32 0
  store i8 1, i8* %"$adtgep_296", align 1
  %"$adtptr_297" = bitcast %CName_None_Uint128* %"$adtval_295" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_297", %TName_Option_Uint128** %"$test_6_2_bal_res_9", align 8
  %"$execptr_load_298" = load i8*, i8** @_execptr, align 8
  %"$$test_6_2_bal_res_9_300" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_2_bal_res_9", align 8
  %"$update_value_301" = bitcast %TName_Option_Uint128* %"$$test_6_2_bal_res_9_300" to i8*
  call void @_update_field(i8* %"$execptr_load_298", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_2_bal_res_299", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i32 0, i8* null, i8* %"$update_value_301")
  %"$test_6_2_f_res_10" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_302" = load i64, i64* @_gasrem, align 8
  %"$gascmp_303" = icmp ugt i64 1, %"$gasrem_302"
  br i1 %"$gascmp_303", label %"$out_of_gas_304", label %"$have_gas_305"

"$out_of_gas_304":                                ; preds = %"$have_gas_293"
  call void @_out_of_gas()
  br label %"$have_gas_305"

"$have_gas_305":                                  ; preds = %"$out_of_gas_304", %"$have_gas_293"
  %"$consume_306" = sub i64 %"$gasrem_302", 1
  store i64 %"$consume_306", i64* @_gasrem, align 8
  %"$adtval_307_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_307_salloc" = call i8* @_salloc(i8* %"$adtval_307_load", i64 1)
  %"$adtval_307" = bitcast i8* %"$adtval_307_salloc" to %CName_None_Uint128*
  %"$adtgep_308" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_307", i32 0, i32 0
  store i8 1, i8* %"$adtgep_308", align 1
  %"$adtptr_309" = bitcast %CName_None_Uint128* %"$adtval_307" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_309", %TName_Option_Uint128** %"$test_6_2_f_res_10", align 8
  %"$execptr_load_310" = load i8*, i8** @_execptr, align 8
  %"$$test_6_2_f_res_10_312" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_2_f_res_10", align 8
  %"$update_value_313" = bitcast %TName_Option_Uint128* %"$$test_6_2_f_res_10_312" to i8*
  call void @_update_field(i8* %"$execptr_load_310", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_2_f_res_311", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i32 0, i8* null, i8* %"$update_value_313")
  %"$test_6_2_g_res_11" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_314" = load i64, i64* @_gasrem, align 8
  %"$gascmp_315" = icmp ugt i64 1, %"$gasrem_314"
  br i1 %"$gascmp_315", label %"$out_of_gas_316", label %"$have_gas_317"

"$out_of_gas_316":                                ; preds = %"$have_gas_305"
  call void @_out_of_gas()
  br label %"$have_gas_317"

"$have_gas_317":                                  ; preds = %"$out_of_gas_316", %"$have_gas_305"
  %"$consume_318" = sub i64 %"$gasrem_314", 1
  store i64 %"$consume_318", i64* @_gasrem, align 8
  %"$adtval_319_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_319_salloc" = call i8* @_salloc(i8* %"$adtval_319_load", i64 1)
  %"$adtval_319" = bitcast i8* %"$adtval_319_salloc" to %CName_None_Bool*
  %"$adtgep_320" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_319", i32 0, i32 0
  store i8 1, i8* %"$adtgep_320", align 1
  %"$adtptr_321" = bitcast %CName_None_Bool* %"$adtval_319" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_321", %TName_Option_Bool** %"$test_6_2_g_res_11", align 8
  %"$execptr_load_322" = load i8*, i8** @_execptr, align 8
  %"$$test_6_2_g_res_11_324" = load %TName_Option_Bool*, %TName_Option_Bool** %"$test_6_2_g_res_11", align 8
  %"$update_value_325" = bitcast %TName_Option_Bool* %"$$test_6_2_g_res_11_324" to i8*
  call void @_update_field(i8* %"$execptr_load_322", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_2_g_res_323", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_59", i32 0, i8* null, i8* %"$update_value_325")
  %"$test_6_3_bal_res_12" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_326" = load i64, i64* @_gasrem, align 8
  %"$gascmp_327" = icmp ugt i64 1, %"$gasrem_326"
  br i1 %"$gascmp_327", label %"$out_of_gas_328", label %"$have_gas_329"

"$out_of_gas_328":                                ; preds = %"$have_gas_317"
  call void @_out_of_gas()
  br label %"$have_gas_329"

"$have_gas_329":                                  ; preds = %"$out_of_gas_328", %"$have_gas_317"
  %"$consume_330" = sub i64 %"$gasrem_326", 1
  store i64 %"$consume_330", i64* @_gasrem, align 8
  %"$adtval_331_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_331_salloc" = call i8* @_salloc(i8* %"$adtval_331_load", i64 1)
  %"$adtval_331" = bitcast i8* %"$adtval_331_salloc" to %CName_None_Uint128*
  %"$adtgep_332" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_331", i32 0, i32 0
  store i8 1, i8* %"$adtgep_332", align 1
  %"$adtptr_333" = bitcast %CName_None_Uint128* %"$adtval_331" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_333", %TName_Option_Uint128** %"$test_6_3_bal_res_12", align 8
  %"$execptr_load_334" = load i8*, i8** @_execptr, align 8
  %"$$test_6_3_bal_res_12_336" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_3_bal_res_12", align 8
  %"$update_value_337" = bitcast %TName_Option_Uint128* %"$$test_6_3_bal_res_12_336" to i8*
  call void @_update_field(i8* %"$execptr_load_334", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_3_bal_res_335", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i32 0, i8* null, i8* %"$update_value_337")
  %"$test_6_3_f_res_13" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_338" = load i64, i64* @_gasrem, align 8
  %"$gascmp_339" = icmp ugt i64 1, %"$gasrem_338"
  br i1 %"$gascmp_339", label %"$out_of_gas_340", label %"$have_gas_341"

"$out_of_gas_340":                                ; preds = %"$have_gas_329"
  call void @_out_of_gas()
  br label %"$have_gas_341"

"$have_gas_341":                                  ; preds = %"$out_of_gas_340", %"$have_gas_329"
  %"$consume_342" = sub i64 %"$gasrem_338", 1
  store i64 %"$consume_342", i64* @_gasrem, align 8
  %"$adtval_343_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_343_salloc" = call i8* @_salloc(i8* %"$adtval_343_load", i64 1)
  %"$adtval_343" = bitcast i8* %"$adtval_343_salloc" to %CName_None_Uint128*
  %"$adtgep_344" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_343", i32 0, i32 0
  store i8 1, i8* %"$adtgep_344", align 1
  %"$adtptr_345" = bitcast %CName_None_Uint128* %"$adtval_343" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_345", %TName_Option_Uint128** %"$test_6_3_f_res_13", align 8
  %"$execptr_load_346" = load i8*, i8** @_execptr, align 8
  %"$$test_6_3_f_res_13_348" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_3_f_res_13", align 8
  %"$update_value_349" = bitcast %TName_Option_Uint128* %"$$test_6_3_f_res_13_348" to i8*
  call void @_update_field(i8* %"$execptr_load_346", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_3_f_res_347", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i32 0, i8* null, i8* %"$update_value_349")
  %"$test_6_3_g_res_14" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_350" = load i64, i64* @_gasrem, align 8
  %"$gascmp_351" = icmp ugt i64 1, %"$gasrem_350"
  br i1 %"$gascmp_351", label %"$out_of_gas_352", label %"$have_gas_353"

"$out_of_gas_352":                                ; preds = %"$have_gas_341"
  call void @_out_of_gas()
  br label %"$have_gas_353"

"$have_gas_353":                                  ; preds = %"$out_of_gas_352", %"$have_gas_341"
  %"$consume_354" = sub i64 %"$gasrem_350", 1
  store i64 %"$consume_354", i64* @_gasrem, align 8
  %"$adtval_355_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_355_salloc" = call i8* @_salloc(i8* %"$adtval_355_load", i64 1)
  %"$adtval_355" = bitcast i8* %"$adtval_355_salloc" to %CName_None_Bool*
  %"$adtgep_356" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_355", i32 0, i32 0
  store i8 1, i8* %"$adtgep_356", align 1
  %"$adtptr_357" = bitcast %CName_None_Bool* %"$adtval_355" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_357", %TName_Option_Bool** %"$test_6_3_g_res_14", align 8
  %"$execptr_load_358" = load i8*, i8** @_execptr, align 8
  %"$$test_6_3_g_res_14_360" = load %TName_Option_Bool*, %TName_Option_Bool** %"$test_6_3_g_res_14", align 8
  %"$update_value_361" = bitcast %TName_Option_Bool* %"$$test_6_3_g_res_14_360" to i8*
  call void @_update_field(i8* %"$execptr_load_358", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_3_g_res_359", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_59", i32 0, i8* null, i8* %"$update_value_361")
  %"$test_6_4_bal_res_15" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_362" = load i64, i64* @_gasrem, align 8
  %"$gascmp_363" = icmp ugt i64 1, %"$gasrem_362"
  br i1 %"$gascmp_363", label %"$out_of_gas_364", label %"$have_gas_365"

"$out_of_gas_364":                                ; preds = %"$have_gas_353"
  call void @_out_of_gas()
  br label %"$have_gas_365"

"$have_gas_365":                                  ; preds = %"$out_of_gas_364", %"$have_gas_353"
  %"$consume_366" = sub i64 %"$gasrem_362", 1
  store i64 %"$consume_366", i64* @_gasrem, align 8
  %"$adtval_367_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_367_salloc" = call i8* @_salloc(i8* %"$adtval_367_load", i64 1)
  %"$adtval_367" = bitcast i8* %"$adtval_367_salloc" to %CName_None_Uint128*
  %"$adtgep_368" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_367", i32 0, i32 0
  store i8 1, i8* %"$adtgep_368", align 1
  %"$adtptr_369" = bitcast %CName_None_Uint128* %"$adtval_367" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_369", %TName_Option_Uint128** %"$test_6_4_bal_res_15", align 8
  %"$execptr_load_370" = load i8*, i8** @_execptr, align 8
  %"$$test_6_4_bal_res_15_372" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_4_bal_res_15", align 8
  %"$update_value_373" = bitcast %TName_Option_Uint128* %"$$test_6_4_bal_res_15_372" to i8*
  call void @_update_field(i8* %"$execptr_load_370", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_4_bal_res_371", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i32 0, i8* null, i8* %"$update_value_373")
  %"$test_6_4_f_res_16" = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_375" = icmp ugt i64 1, %"$gasrem_374"
  br i1 %"$gascmp_375", label %"$out_of_gas_376", label %"$have_gas_377"

"$out_of_gas_376":                                ; preds = %"$have_gas_365"
  call void @_out_of_gas()
  br label %"$have_gas_377"

"$have_gas_377":                                  ; preds = %"$out_of_gas_376", %"$have_gas_365"
  %"$consume_378" = sub i64 %"$gasrem_374", 1
  store i64 %"$consume_378", i64* @_gasrem, align 8
  %"$adtval_379_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_379_salloc" = call i8* @_salloc(i8* %"$adtval_379_load", i64 1)
  %"$adtval_379" = bitcast i8* %"$adtval_379_salloc" to %CName_None_Uint128*
  %"$adtgep_380" = getelementptr inbounds %CName_None_Uint128, %CName_None_Uint128* %"$adtval_379", i32 0, i32 0
  store i8 1, i8* %"$adtgep_380", align 1
  %"$adtptr_381" = bitcast %CName_None_Uint128* %"$adtval_379" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_381", %TName_Option_Uint128** %"$test_6_4_f_res_16", align 8
  %"$execptr_load_382" = load i8*, i8** @_execptr, align 8
  %"$$test_6_4_f_res_16_384" = load %TName_Option_Uint128*, %TName_Option_Uint128** %"$test_6_4_f_res_16", align 8
  %"$update_value_385" = bitcast %TName_Option_Uint128* %"$$test_6_4_f_res_16_384" to i8*
  call void @_update_field(i8* %"$execptr_load_382", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_4_f_res_383", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i32 0, i8* null, i8* %"$update_value_385")
  %"$test_6_4_g_res_17" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_386" = load i64, i64* @_gasrem, align 8
  %"$gascmp_387" = icmp ugt i64 1, %"$gasrem_386"
  br i1 %"$gascmp_387", label %"$out_of_gas_388", label %"$have_gas_389"

"$out_of_gas_388":                                ; preds = %"$have_gas_377"
  call void @_out_of_gas()
  br label %"$have_gas_389"

"$have_gas_389":                                  ; preds = %"$out_of_gas_388", %"$have_gas_377"
  %"$consume_390" = sub i64 %"$gasrem_386", 1
  store i64 %"$consume_390", i64* @_gasrem, align 8
  %"$adtval_391_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_391_salloc" = call i8* @_salloc(i8* %"$adtval_391_load", i64 1)
  %"$adtval_391" = bitcast i8* %"$adtval_391_salloc" to %CName_None_Bool*
  %"$adtgep_392" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_391", i32 0, i32 0
  store i8 1, i8* %"$adtgep_392", align 1
  %"$adtptr_393" = bitcast %CName_None_Bool* %"$adtval_391" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_393", %TName_Option_Bool** %"$test_6_4_g_res_17", align 8
  %"$execptr_load_394" = load i8*, i8** @_execptr, align 8
  %"$$test_6_4_g_res_17_396" = load %TName_Option_Bool*, %TName_Option_Bool** %"$test_6_4_g_res_17", align 8
  %"$update_value_397" = bitcast %TName_Option_Bool* %"$$test_6_4_g_res_17_396" to i8*
  call void @_update_field(i8* %"$execptr_load_394", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_4_g_res_395", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_59", i32 0, i8* null, i8* %"$update_value_397")
  %"$test_6_4_failed_cast_18" = alloca %TName_Bool*, align 8
  %"$gasrem_398" = load i64, i64* @_gasrem, align 8
  %"$gascmp_399" = icmp ugt i64 1, %"$gasrem_398"
  br i1 %"$gascmp_399", label %"$out_of_gas_400", label %"$have_gas_401"

"$out_of_gas_400":                                ; preds = %"$have_gas_389"
  call void @_out_of_gas()
  br label %"$have_gas_401"

"$have_gas_401":                                  ; preds = %"$out_of_gas_400", %"$have_gas_389"
  %"$consume_402" = sub i64 %"$gasrem_398", 1
  store i64 %"$consume_402", i64* @_gasrem, align 8
  %"$adtval_403_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_403_salloc" = call i8* @_salloc(i8* %"$adtval_403_load", i64 1)
  %"$adtval_403" = bitcast i8* %"$adtval_403_salloc" to %CName_False*
  %"$adtgep_404" = getelementptr inbounds %CName_False, %CName_False* %"$adtval_403", i32 0, i32 0
  store i8 1, i8* %"$adtgep_404", align 1
  %"$adtptr_405" = bitcast %CName_False* %"$adtval_403" to %TName_Bool*
  store %TName_Bool* %"$adtptr_405", %TName_Bool** %"$test_6_4_failed_cast_18", align 8
  %"$execptr_load_406" = load i8*, i8** @_execptr, align 8
  %"$$test_6_4_failed_cast_18_408" = load %TName_Bool*, %TName_Bool** %"$test_6_4_failed_cast_18", align 8
  %"$update_value_409" = bitcast %TName_Bool* %"$$test_6_4_failed_cast_18_408" to i8*
  call void @_update_field(i8* %"$execptr_load_406", i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$test_6_4_failed_cast_407", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_63", i32 0, i8* null, i8* %"$update_value_409")
  %"$test_7_g_res_19" = alloca %TName_Option_Bool*, align 8
  %"$gasrem_410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_411" = icmp ugt i64 1, %"$gasrem_410"
  br i1 %"$gascmp_411", label %"$out_of_gas_412", label %"$have_gas_413"

"$out_of_gas_412":                                ; preds = %"$have_gas_401"
  call void @_out_of_gas()
  br label %"$have_gas_413"

"$have_gas_413":                                  ; preds = %"$out_of_gas_412", %"$have_gas_401"
  %"$consume_414" = sub i64 %"$gasrem_410", 1
  store i64 %"$consume_414", i64* @_gasrem, align 8
  %"$adtval_415_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_415_salloc" = call i8* @_salloc(i8* %"$adtval_415_load", i64 1)
  %"$adtval_415" = bitcast i8* %"$adtval_415_salloc" to %CName_None_Bool*
  %"$adtgep_416" = getelementptr inbounds %CName_None_Bool, %CName_None_Bool* %"$adtval_415", i32 0, i32 0
  store i8 1, i8* %"$adtgep_416", align 1
  %"$adtptr_417" = bitcast %CName_None_Bool* %"$adtval_415" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_417", %TName_Option_Bool** %"$test_7_g_res_19", align 8
  %"$execptr_load_418" = load i8*, i8** @_execptr, align 8
  %"$$test_7_g_res_19_420" = load %TName_Option_Bool*, %TName_Option_Bool** %"$test_7_g_res_19", align 8
  %"$update_value_421" = bitcast %TName_Option_Bool* %"$$test_7_g_res_19_420" to i8*
  call void @_update_field(i8* %"$execptr_load_418", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_7_g_res_419", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_59", i32 0, i8* null, i8* %"$update_value_421")
  %"$test_7_h_res_20" = alloca %TName_Option_Int256*, align 8
  %"$gasrem_422" = load i64, i64* @_gasrem, align 8
  %"$gascmp_423" = icmp ugt i64 1, %"$gasrem_422"
  br i1 %"$gascmp_423", label %"$out_of_gas_424", label %"$have_gas_425"

"$out_of_gas_424":                                ; preds = %"$have_gas_413"
  call void @_out_of_gas()
  br label %"$have_gas_425"

"$have_gas_425":                                  ; preds = %"$out_of_gas_424", %"$have_gas_413"
  %"$consume_426" = sub i64 %"$gasrem_422", 1
  store i64 %"$consume_426", i64* @_gasrem, align 8
  %"$adtval_427_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_427_salloc" = call i8* @_salloc(i8* %"$adtval_427_load", i64 1)
  %"$adtval_427" = bitcast i8* %"$adtval_427_salloc" to %CName_None_Int256*
  %"$adtgep_428" = getelementptr inbounds %CName_None_Int256, %CName_None_Int256* %"$adtval_427", i32 0, i32 0
  store i8 1, i8* %"$adtgep_428", align 1
  %"$adtptr_429" = bitcast %CName_None_Int256* %"$adtval_427" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$adtptr_429", %TName_Option_Int256** %"$test_7_h_res_20", align 8
  %"$execptr_load_430" = load i8*, i8** @_execptr, align 8
  %"$$test_7_h_res_20_432" = load %TName_Option_Int256*, %TName_Option_Int256** %"$test_7_h_res_20", align 8
  %"$update_value_433" = bitcast %TName_Option_Int256* %"$$test_7_h_res_20_432" to i8*
  call void @_update_field(i8* %"$execptr_load_430", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_7_h_res_431", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int256_58", i32 0, i8* null, i8* %"$update_value_433")
  ret void
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$CastTest1_434"(%Uint128 %_amount, [20 x i8]* %"$_origin_435", [20 x i8]* %"$_sender_436", [20 x i8]* %"$x_437") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_435", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_436", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_437", align 1
  %"$gasrem_438" = load i64, i64* @_gasrem, align 8
  %"$gascmp_439" = icmp ugt i64 2, %"$gasrem_438"
  br i1 %"$gascmp_439", label %"$out_of_gas_440", label %"$have_gas_441"

"$out_of_gas_440":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_441"

"$have_gas_441":                                  ; preds = %"$out_of_gas_440", %entry
  %"$consume_442" = sub i64 %"$gasrem_438", 2
  store i64 %"$consume_442", i64* @_gasrem, align 8
  %res = alloca %TName_Option_ByStr20_with_end*, align 8
  %"$execptr_load_443" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_444" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_444", align 1
  %"$_dynamic_typecast_call_445" = call i8* @_dynamic_typecast(i8* %"$execptr_load_443", [20 x i8]* %"$_dynamic_typecast_x_444", %_TyDescrTy_Typ* @"$TyDescr_Addr_73")
  %"$_dynamic_typecast_446" = bitcast i8* %"$_dynamic_typecast_call_445" to %TName_Option_ByStr20_with_end*
  store %TName_Option_ByStr20_with_end* %"$_dynamic_typecast_446", %TName_Option_ByStr20_with_end** %res, align 8
  %"$res_447" = load %TName_Option_ByStr20_with_end*, %TName_Option_ByStr20_with_end** %res, align 8
  %"$$res_447_448" = bitcast %TName_Option_ByStr20_with_end* %"$res_447" to i8*
  %"$_literal_cost_call_449" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_end_62", i8* %"$$res_447_448")
  %"$gasrem_450" = load i64, i64* @_gasrem, align 8
  %"$gascmp_451" = icmp ugt i64 %"$_literal_cost_call_449", %"$gasrem_450"
  br i1 %"$gascmp_451", label %"$out_of_gas_452", label %"$have_gas_453"

"$out_of_gas_452":                                ; preds = %"$have_gas_441"
  call void @_out_of_gas()
  br label %"$have_gas_453"

"$have_gas_453":                                  ; preds = %"$out_of_gas_452", %"$have_gas_441"
  %"$consume_454" = sub i64 %"$gasrem_450", %"$_literal_cost_call_449"
  store i64 %"$consume_454", i64* @_gasrem, align 8
  %"$execptr_load_455" = load i8*, i8** @_execptr, align 8
  %"$res_457" = load %TName_Option_ByStr20_with_end*, %TName_Option_ByStr20_with_end** %res, align 8
  %"$update_value_458" = bitcast %TName_Option_ByStr20_with_end* %"$res_457" to i8*
  call void @_update_field(i8* %"$execptr_load_455", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_1_res_456", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_end_62", i32 0, i8* null, i8* %"$update_value_458")
  ret void
}

declare i8* @_dynamic_typecast(i8*, [20 x i8]*, %_TyDescrTy_Typ*)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

define void @CastTest1(i8* %0) {
entry:
  %"$_amount_460" = getelementptr i8, i8* %0, i32 0
  %"$_amount_461" = bitcast i8* %"$_amount_460" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_461", align 8
  %"$_origin_462" = getelementptr i8, i8* %0, i32 16
  %"$_origin_463" = bitcast i8* %"$_origin_462" to [20 x i8]*
  %"$_sender_464" = getelementptr i8, i8* %0, i32 36
  %"$_sender_465" = bitcast i8* %"$_sender_464" to [20 x i8]*
  %"$x_466" = getelementptr i8, i8* %0, i32 56
  %"$x_467" = bitcast i8* %"$x_466" to [20 x i8]*
  call void @"$CastTest1_434"(%Uint128 %_amount, [20 x i8]* %"$_origin_463", [20 x i8]* %"$_sender_465", [20 x i8]* %"$x_467")
  ret void
}

define internal void @"$CastTest2_468"(%Uint128 %_amount, [20 x i8]* %"$_origin_469", [20 x i8]* %"$_sender_470", [20 x i8]* %"$x_471") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_469", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_470", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_471", align 1
  %"$gasrem_472" = load i64, i64* @_gasrem, align 8
  %"$gascmp_473" = icmp ugt i64 3, %"$gasrem_472"
  br i1 %"$gascmp_473", label %"$out_of_gas_474", label %"$have_gas_475"

"$out_of_gas_474":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_475"

"$have_gas_475":                                  ; preds = %"$out_of_gas_474", %entry
  %"$consume_476" = sub i64 %"$gasrem_472", 3
  store i64 %"$consume_476", i64* @_gasrem, align 8
  %res = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  %"$execptr_load_477" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_478" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_478", align 1
  %"$_dynamic_typecast_call_479" = call i8* @_dynamic_typecast(i8* %"$execptr_load_477", [20 x i8]* %"$_dynamic_typecast_x_478", %_TyDescrTy_Typ* @"$TyDescr_Addr_72")
  %"$_dynamic_typecast_480" = bitcast i8* %"$_dynamic_typecast_call_479" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$_dynamic_typecast_480", %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$res_481" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$$res_481_482" = bitcast %TName_Option_ByStr20_with_contract_end* %"$res_481" to i8*
  %"$_literal_cost_call_483" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_61", i8* %"$$res_481_482")
  %"$gasrem_484" = load i64, i64* @_gasrem, align 8
  %"$gascmp_485" = icmp ugt i64 %"$_literal_cost_call_483", %"$gasrem_484"
  br i1 %"$gascmp_485", label %"$out_of_gas_486", label %"$have_gas_487"

"$out_of_gas_486":                                ; preds = %"$have_gas_475"
  call void @_out_of_gas()
  br label %"$have_gas_487"

"$have_gas_487":                                  ; preds = %"$out_of_gas_486", %"$have_gas_475"
  %"$consume_488" = sub i64 %"$gasrem_484", %"$_literal_cost_call_483"
  store i64 %"$consume_488", i64* @_gasrem, align 8
  %"$execptr_load_489" = load i8*, i8** @_execptr, align 8
  %"$res_491" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$update_value_492" = bitcast %TName_Option_ByStr20_with_contract_end* %"$res_491" to i8*
  call void @_update_field(i8* %"$execptr_load_489", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_2_res_490", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_61", i32 0, i8* null, i8* %"$update_value_492")
  ret void
}

define void @CastTest2(i8* %0) {
entry:
  %"$_amount_494" = getelementptr i8, i8* %0, i32 0
  %"$_amount_495" = bitcast i8* %"$_amount_494" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_495", align 8
  %"$_origin_496" = getelementptr i8, i8* %0, i32 16
  %"$_origin_497" = bitcast i8* %"$_origin_496" to [20 x i8]*
  %"$_sender_498" = getelementptr i8, i8* %0, i32 36
  %"$_sender_499" = bitcast i8* %"$_sender_498" to [20 x i8]*
  %"$x_500" = getelementptr i8, i8* %0, i32 56
  %"$x_501" = bitcast i8* %"$x_500" to [20 x i8]*
  call void @"$CastTest2_468"(%Uint128 %_amount, [20 x i8]* %"$_origin_497", [20 x i8]* %"$_sender_499", [20 x i8]* %"$x_501")
  ret void
}

define internal void @"$CastTest3_502"(%Uint128 %_amount, [20 x i8]* %"$_origin_503", [20 x i8]* %"$_sender_504", [20 x i8]* %"$x_505") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_503", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_504", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_505", align 1
  %"$gasrem_506" = load i64, i64* @_gasrem, align 8
  %"$gascmp_507" = icmp ugt i64 3, %"$gasrem_506"
  br i1 %"$gascmp_507", label %"$out_of_gas_508", label %"$have_gas_509"

"$out_of_gas_508":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_509"

"$have_gas_509":                                  ; preds = %"$out_of_gas_508", %entry
  %"$consume_510" = sub i64 %"$gasrem_506", 3
  store i64 %"$consume_510", i64* @_gasrem, align 8
  %res = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  %"$execptr_load_511" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_512" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_512", align 1
  %"$_dynamic_typecast_call_513" = call i8* @_dynamic_typecast(i8* %"$execptr_load_511", [20 x i8]* %"$_dynamic_typecast_x_512", %_TyDescrTy_Typ* @"$TyDescr_Addr_72")
  %"$_dynamic_typecast_514" = bitcast i8* %"$_dynamic_typecast_call_513" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$_dynamic_typecast_514", %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$res_515" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$$res_515_516" = bitcast %TName_Option_ByStr20_with_contract_end* %"$res_515" to i8*
  %"$_literal_cost_call_517" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_61", i8* %"$$res_515_516")
  %"$gasrem_518" = load i64, i64* @_gasrem, align 8
  %"$gascmp_519" = icmp ugt i64 %"$_literal_cost_call_517", %"$gasrem_518"
  br i1 %"$gascmp_519", label %"$out_of_gas_520", label %"$have_gas_521"

"$out_of_gas_520":                                ; preds = %"$have_gas_509"
  call void @_out_of_gas()
  br label %"$have_gas_521"

"$have_gas_521":                                  ; preds = %"$out_of_gas_520", %"$have_gas_509"
  %"$consume_522" = sub i64 %"$gasrem_518", %"$_literal_cost_call_517"
  store i64 %"$consume_522", i64* @_gasrem, align 8
  %"$execptr_load_523" = load i8*, i8** @_execptr, align 8
  %"$res_525" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %res, align 8
  %"$update_value_526" = bitcast %TName_Option_ByStr20_with_contract_end* %"$res_525" to i8*
  call void @_update_field(i8* %"$execptr_load_523", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_3_res_524", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr20_with_contract_end_61", i32 0, i8* null, i8* %"$update_value_526")
  ret void
}

define void @CastTest3(i8* %0) {
entry:
  %"$_amount_528" = getelementptr i8, i8* %0, i32 0
  %"$_amount_529" = bitcast i8* %"$_amount_528" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_529", align 8
  %"$_origin_530" = getelementptr i8, i8* %0, i32 16
  %"$_origin_531" = bitcast i8* %"$_origin_530" to [20 x i8]*
  %"$_sender_532" = getelementptr i8, i8* %0, i32 36
  %"$_sender_533" = bitcast i8* %"$_sender_532" to [20 x i8]*
  %"$x_534" = getelementptr i8, i8* %0, i32 56
  %"$x_535" = bitcast i8* %"$x_534" to [20 x i8]*
  call void @"$CastTest3_502"(%Uint128 %_amount, [20 x i8]* %"$_origin_531", [20 x i8]* %"$_sender_533", [20 x i8]* %"$x_535")
  ret void
}

define internal void @"$CastTest4_536"(%Uint128 %_amount, [20 x i8]* %"$_origin_537", [20 x i8]* %"$_sender_538", [20 x i8]* %"$x_539") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_537", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_538", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_539", align 1
  %"$gasrem_540" = load i64, i64* @_gasrem, align 8
  %"$gascmp_541" = icmp ugt i64 2, %"$gasrem_540"
  br i1 %"$gascmp_541", label %"$out_of_gas_542", label %"$have_gas_543"

"$out_of_gas_542":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_543"

"$have_gas_543":                                  ; preds = %"$out_of_gas_542", %entry
  %"$consume_544" = sub i64 %"$gasrem_540", 2
  store i64 %"$consume_544", i64* @_gasrem, align 8
  %x_cast = alloca %TName_Option_ByStr20_with_end*, align 8
  %"$execptr_load_545" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_546" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_546", align 1
  %"$_dynamic_typecast_call_547" = call i8* @_dynamic_typecast(i8* %"$execptr_load_545", [20 x i8]* %"$_dynamic_typecast_x_546", %_TyDescrTy_Typ* @"$TyDescr_Addr_73")
  %"$_dynamic_typecast_548" = bitcast i8* %"$_dynamic_typecast_call_547" to %TName_Option_ByStr20_with_end*
  store %TName_Option_ByStr20_with_end* %"$_dynamic_typecast_548", %TName_Option_ByStr20_with_end** %x_cast, align 8
  %"$gasrem_549" = load i64, i64* @_gasrem, align 8
  %"$gascmp_550" = icmp ugt i64 2, %"$gasrem_549"
  br i1 %"$gascmp_550", label %"$out_of_gas_551", label %"$have_gas_552"

"$out_of_gas_551":                                ; preds = %"$have_gas_543"
  call void @_out_of_gas()
  br label %"$have_gas_552"

"$have_gas_552":                                  ; preds = %"$out_of_gas_551", %"$have_gas_543"
  %"$consume_553" = sub i64 %"$gasrem_549", 2
  store i64 %"$consume_553", i64* @_gasrem, align 8
  %"$x_cast_555" = load %TName_Option_ByStr20_with_end*, %TName_Option_ByStr20_with_end** %x_cast, align 8
  %"$x_cast_tag_556" = getelementptr inbounds %TName_Option_ByStr20_with_end, %TName_Option_ByStr20_with_end* %"$x_cast_555", i32 0, i32 0
  %"$x_cast_tag_557" = load i8, i8* %"$x_cast_tag_556", align 1
  switch i8 %"$x_cast_tag_557", label %"$empty_default_558" [
    i8 0, label %"$Some_559"
    i8 1, label %"$None_607"
  ]

"$Some_559":                                      ; preds = %"$have_gas_552"
  %"$x_cast_560" = bitcast %TName_Option_ByStr20_with_end* %"$x_cast_555" to %CName_Some_ByStr20_with_end*
  %"$x_as_address_gep_561" = getelementptr inbounds %CName_Some_ByStr20_with_end, %CName_Some_ByStr20_with_end* %"$x_cast_560", i32 0, i32 1
  %"$x_as_address_load_562" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_561", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_562", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_564" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_565" = alloca [20 x i8], align 1
  %"$x_as_address_566" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_566", [20 x i8]* %"$bal_x_as_address_565", align 1
  %"$bal_call_567" = call i8* @_fetch_remote_field(i8* %"$execptr_load_564", [20 x i8]* %"$bal_x_as_address_565", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_563", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_33", i32 0, i8* null, i32 1)
  %"$bal_568" = bitcast i8* %"$bal_call_567" to %Uint128*
  %"$bal_569" = load %Uint128, %Uint128* %"$bal_568", align 8
  store %Uint128 %"$bal_569", %Uint128* %bal, align 8
  %"$_literal_cost_bal_570" = alloca %Uint128, align 8
  %"$bal_571" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_571", %Uint128* %"$_literal_cost_bal_570", align 8
  %"$$_literal_cost_bal_570_572" = bitcast %Uint128* %"$_literal_cost_bal_570" to i8*
  %"$_literal_cost_call_573" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_33", i8* %"$$_literal_cost_bal_570_572")
  %"$gasadd_574" = add i64 %"$_literal_cost_call_573", 0
  %"$gasrem_575" = load i64, i64* @_gasrem, align 8
  %"$gascmp_576" = icmp ugt i64 %"$gasadd_574", %"$gasrem_575"
  br i1 %"$gascmp_576", label %"$out_of_gas_577", label %"$have_gas_578"

"$out_of_gas_577":                                ; preds = %"$Some_559"
  call void @_out_of_gas()
  br label %"$have_gas_578"

"$have_gas_578":                                  ; preds = %"$out_of_gas_577", %"$Some_559"
  %"$consume_579" = sub i64 %"$gasrem_575", %"$gasadd_574"
  store i64 %"$consume_579", i64* @_gasrem, align 8
  %"$gasrem_580" = load i64, i64* @_gasrem, align 8
  %"$gascmp_581" = icmp ugt i64 1, %"$gasrem_580"
  br i1 %"$gascmp_581", label %"$out_of_gas_582", label %"$have_gas_583"

"$out_of_gas_582":                                ; preds = %"$have_gas_578"
  call void @_out_of_gas()
  br label %"$have_gas_583"

"$have_gas_583":                                  ; preds = %"$out_of_gas_582", %"$have_gas_578"
  %"$consume_584" = sub i64 %"$gasrem_580", 1
  store i64 %"$consume_584", i64* @_gasrem, align 8
  %res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_585" = load i64, i64* @_gasrem, align 8
  %"$gascmp_586" = icmp ugt i64 1, %"$gasrem_585"
  br i1 %"$gascmp_586", label %"$out_of_gas_587", label %"$have_gas_588"

"$out_of_gas_587":                                ; preds = %"$have_gas_583"
  call void @_out_of_gas()
  br label %"$have_gas_588"

"$have_gas_588":                                  ; preds = %"$out_of_gas_587", %"$have_gas_583"
  %"$consume_589" = sub i64 %"$gasrem_585", 1
  store i64 %"$consume_589", i64* @_gasrem, align 8
  %"$bal_590" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_591_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_591_salloc" = call i8* @_salloc(i8* %"$adtval_591_load", i64 17)
  %"$adtval_591" = bitcast i8* %"$adtval_591_salloc" to %CName_Some_Uint128*
  %"$adtgep_592" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_591", i32 0, i32 0
  store i8 0, i8* %"$adtgep_592", align 1
  %"$adtgep_593" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_591", i32 0, i32 1
  store %Uint128 %"$bal_590", %Uint128* %"$adtgep_593", align 8
  %"$adtptr_594" = bitcast %CName_Some_Uint128* %"$adtval_591" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_594", %TName_Option_Uint128** %res, align 8
  %"$res_595" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$$res_595_596" = bitcast %TName_Option_Uint128* %"$res_595" to i8*
  %"$_literal_cost_call_597" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i8* %"$$res_595_596")
  %"$gasrem_598" = load i64, i64* @_gasrem, align 8
  %"$gascmp_599" = icmp ugt i64 %"$_literal_cost_call_597", %"$gasrem_598"
  br i1 %"$gascmp_599", label %"$out_of_gas_600", label %"$have_gas_601"

"$out_of_gas_600":                                ; preds = %"$have_gas_588"
  call void @_out_of_gas()
  br label %"$have_gas_601"

"$have_gas_601":                                  ; preds = %"$out_of_gas_600", %"$have_gas_588"
  %"$consume_602" = sub i64 %"$gasrem_598", %"$_literal_cost_call_597"
  store i64 %"$consume_602", i64* @_gasrem, align 8
  %"$execptr_load_603" = load i8*, i8** @_execptr, align 8
  %"$res_605" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$update_value_606" = bitcast %TName_Option_Uint128* %"$res_605" to i8*
  call void @_update_field(i8* %"$execptr_load_603", i8* getelementptr inbounds ([11 x i8], [11 x i8]* @"$test_4_res_604", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i32 0, i8* null, i8* %"$update_value_606")
  br label %"$matchsucc_554"

"$None_607":                                      ; preds = %"$have_gas_552"
  %"$x_cast_608" = bitcast %TName_Option_ByStr20_with_end* %"$x_cast_555" to %CName_None_ByStr20_with_end*
  br label %"$matchsucc_554"

"$empty_default_558":                             ; preds = %"$have_gas_552"
  br label %"$matchsucc_554"

"$matchsucc_554":                                 ; preds = %"$None_607", %"$have_gas_601", %"$empty_default_558"
  ret void
}

declare i8* @_fetch_remote_field(i8*, [20 x i8]*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @CastTest4(i8* %0) {
entry:
  %"$_amount_610" = getelementptr i8, i8* %0, i32 0
  %"$_amount_611" = bitcast i8* %"$_amount_610" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_611", align 8
  %"$_origin_612" = getelementptr i8, i8* %0, i32 16
  %"$_origin_613" = bitcast i8* %"$_origin_612" to [20 x i8]*
  %"$_sender_614" = getelementptr i8, i8* %0, i32 36
  %"$_sender_615" = bitcast i8* %"$_sender_614" to [20 x i8]*
  %"$x_616" = getelementptr i8, i8* %0, i32 56
  %"$x_617" = bitcast i8* %"$x_616" to [20 x i8]*
  call void @"$CastTest4_536"(%Uint128 %_amount, [20 x i8]* %"$_origin_613", [20 x i8]* %"$_sender_615", [20 x i8]* %"$x_617")
  ret void
}

define internal void @"$CastTest5_1_618"(%Uint128 %_amount, [20 x i8]* %"$_origin_619", [20 x i8]* %"$_sender_620", [20 x i8]* %"$x_621") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_619", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_620", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_621", align 1
  %"$gasrem_622" = load i64, i64* @_gasrem, align 8
  %"$gascmp_623" = icmp ugt i64 3, %"$gasrem_622"
  br i1 %"$gascmp_623", label %"$out_of_gas_624", label %"$have_gas_625"

"$out_of_gas_624":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_625"

"$have_gas_625":                                  ; preds = %"$out_of_gas_624", %entry
  %"$consume_626" = sub i64 %"$gasrem_622", 3
  store i64 %"$consume_626", i64* @_gasrem, align 8
  %x_cast = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  %"$execptr_load_627" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_628" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_628", align 1
  %"$_dynamic_typecast_call_629" = call i8* @_dynamic_typecast(i8* %"$execptr_load_627", [20 x i8]* %"$_dynamic_typecast_x_628", %_TyDescrTy_Typ* @"$TyDescr_Addr_72")
  %"$_dynamic_typecast_630" = bitcast i8* %"$_dynamic_typecast_call_629" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$_dynamic_typecast_630", %TName_Option_ByStr20_with_contract_end** %x_cast, align 8
  %"$gasrem_631" = load i64, i64* @_gasrem, align 8
  %"$gascmp_632" = icmp ugt i64 2, %"$gasrem_631"
  br i1 %"$gascmp_632", label %"$out_of_gas_633", label %"$have_gas_634"

"$out_of_gas_633":                                ; preds = %"$have_gas_625"
  call void @_out_of_gas()
  br label %"$have_gas_634"

"$have_gas_634":                                  ; preds = %"$out_of_gas_633", %"$have_gas_625"
  %"$consume_635" = sub i64 %"$gasrem_631", 2
  store i64 %"$consume_635", i64* @_gasrem, align 8
  %"$x_cast_637" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %x_cast, align 8
  %"$x_cast_tag_638" = getelementptr inbounds %TName_Option_ByStr20_with_contract_end, %TName_Option_ByStr20_with_contract_end* %"$x_cast_637", i32 0, i32 0
  %"$x_cast_tag_639" = load i8, i8* %"$x_cast_tag_638", align 1
  switch i8 %"$x_cast_tag_639", label %"$empty_default_640" [
    i8 0, label %"$Some_641"
    i8 1, label %"$None_689"
  ]

"$Some_641":                                      ; preds = %"$have_gas_634"
  %"$x_cast_642" = bitcast %TName_Option_ByStr20_with_contract_end* %"$x_cast_637" to %CName_Some_ByStr20_with_contract_end*
  %"$x_as_address_gep_643" = getelementptr inbounds %CName_Some_ByStr20_with_contract_end, %CName_Some_ByStr20_with_contract_end* %"$x_cast_642", i32 0, i32 1
  %"$x_as_address_load_644" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_643", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_644", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_646" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_647" = alloca [20 x i8], align 1
  %"$x_as_address_648" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_648", [20 x i8]* %"$bal_x_as_address_647", align 1
  %"$bal_call_649" = call i8* @_fetch_remote_field(i8* %"$execptr_load_646", [20 x i8]* %"$bal_x_as_address_647", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_645", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_33", i32 0, i8* null, i32 1)
  %"$bal_650" = bitcast i8* %"$bal_call_649" to %Uint128*
  %"$bal_651" = load %Uint128, %Uint128* %"$bal_650", align 8
  store %Uint128 %"$bal_651", %Uint128* %bal, align 8
  %"$_literal_cost_bal_652" = alloca %Uint128, align 8
  %"$bal_653" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_653", %Uint128* %"$_literal_cost_bal_652", align 8
  %"$$_literal_cost_bal_652_654" = bitcast %Uint128* %"$_literal_cost_bal_652" to i8*
  %"$_literal_cost_call_655" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_33", i8* %"$$_literal_cost_bal_652_654")
  %"$gasadd_656" = add i64 %"$_literal_cost_call_655", 0
  %"$gasrem_657" = load i64, i64* @_gasrem, align 8
  %"$gascmp_658" = icmp ugt i64 %"$gasadd_656", %"$gasrem_657"
  br i1 %"$gascmp_658", label %"$out_of_gas_659", label %"$have_gas_660"

"$out_of_gas_659":                                ; preds = %"$Some_641"
  call void @_out_of_gas()
  br label %"$have_gas_660"

"$have_gas_660":                                  ; preds = %"$out_of_gas_659", %"$Some_641"
  %"$consume_661" = sub i64 %"$gasrem_657", %"$gasadd_656"
  store i64 %"$consume_661", i64* @_gasrem, align 8
  %"$gasrem_662" = load i64, i64* @_gasrem, align 8
  %"$gascmp_663" = icmp ugt i64 1, %"$gasrem_662"
  br i1 %"$gascmp_663", label %"$out_of_gas_664", label %"$have_gas_665"

"$out_of_gas_664":                                ; preds = %"$have_gas_660"
  call void @_out_of_gas()
  br label %"$have_gas_665"

"$have_gas_665":                                  ; preds = %"$out_of_gas_664", %"$have_gas_660"
  %"$consume_666" = sub i64 %"$gasrem_662", 1
  store i64 %"$consume_666", i64* @_gasrem, align 8
  %res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_667" = load i64, i64* @_gasrem, align 8
  %"$gascmp_668" = icmp ugt i64 1, %"$gasrem_667"
  br i1 %"$gascmp_668", label %"$out_of_gas_669", label %"$have_gas_670"

"$out_of_gas_669":                                ; preds = %"$have_gas_665"
  call void @_out_of_gas()
  br label %"$have_gas_670"

"$have_gas_670":                                  ; preds = %"$out_of_gas_669", %"$have_gas_665"
  %"$consume_671" = sub i64 %"$gasrem_667", 1
  store i64 %"$consume_671", i64* @_gasrem, align 8
  %"$bal_672" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_673_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_673_salloc" = call i8* @_salloc(i8* %"$adtval_673_load", i64 17)
  %"$adtval_673" = bitcast i8* %"$adtval_673_salloc" to %CName_Some_Uint128*
  %"$adtgep_674" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_673", i32 0, i32 0
  store i8 0, i8* %"$adtgep_674", align 1
  %"$adtgep_675" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_673", i32 0, i32 1
  store %Uint128 %"$bal_672", %Uint128* %"$adtgep_675", align 8
  %"$adtptr_676" = bitcast %CName_Some_Uint128* %"$adtval_673" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_676", %TName_Option_Uint128** %res, align 8
  %"$res_677" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$$res_677_678" = bitcast %TName_Option_Uint128* %"$res_677" to i8*
  %"$_literal_cost_call_679" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i8* %"$$res_677_678")
  %"$gasrem_680" = load i64, i64* @_gasrem, align 8
  %"$gascmp_681" = icmp ugt i64 %"$_literal_cost_call_679", %"$gasrem_680"
  br i1 %"$gascmp_681", label %"$out_of_gas_682", label %"$have_gas_683"

"$out_of_gas_682":                                ; preds = %"$have_gas_670"
  call void @_out_of_gas()
  br label %"$have_gas_683"

"$have_gas_683":                                  ; preds = %"$out_of_gas_682", %"$have_gas_670"
  %"$consume_684" = sub i64 %"$gasrem_680", %"$_literal_cost_call_679"
  store i64 %"$consume_684", i64* @_gasrem, align 8
  %"$execptr_load_685" = load i8*, i8** @_execptr, align 8
  %"$res_687" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$update_value_688" = bitcast %TName_Option_Uint128* %"$res_687" to i8*
  call void @_update_field(i8* %"$execptr_load_685", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_5_1_res_686", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i32 0, i8* null, i8* %"$update_value_688")
  br label %"$matchsucc_636"

"$None_689":                                      ; preds = %"$have_gas_634"
  %"$x_cast_690" = bitcast %TName_Option_ByStr20_with_contract_end* %"$x_cast_637" to %CName_None_ByStr20_with_contract_end*
  br label %"$matchsucc_636"

"$empty_default_640":                             ; preds = %"$have_gas_634"
  br label %"$matchsucc_636"

"$matchsucc_636":                                 ; preds = %"$None_689", %"$have_gas_683", %"$empty_default_640"
  ret void
}

define void @CastTest5_1(i8* %0) {
entry:
  %"$_amount_692" = getelementptr i8, i8* %0, i32 0
  %"$_amount_693" = bitcast i8* %"$_amount_692" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_693", align 8
  %"$_origin_694" = getelementptr i8, i8* %0, i32 16
  %"$_origin_695" = bitcast i8* %"$_origin_694" to [20 x i8]*
  %"$_sender_696" = getelementptr i8, i8* %0, i32 36
  %"$_sender_697" = bitcast i8* %"$_sender_696" to [20 x i8]*
  %"$x_698" = getelementptr i8, i8* %0, i32 56
  %"$x_699" = bitcast i8* %"$x_698" to [20 x i8]*
  call void @"$CastTest5_1_618"(%Uint128 %_amount, [20 x i8]* %"$_origin_695", [20 x i8]* %"$_sender_697", [20 x i8]* %"$x_699")
  ret void
}

define internal void @"$CastTest5_2_700"(%Uint128 %_amount, [20 x i8]* %"$_origin_701", [20 x i8]* %"$_sender_702", [20 x i8]* %"$x_703") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_701", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_702", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_703", align 1
  %"$gasrem_704" = load i64, i64* @_gasrem, align 8
  %"$gascmp_705" = icmp ugt i64 3, %"$gasrem_704"
  br i1 %"$gascmp_705", label %"$out_of_gas_706", label %"$have_gas_707"

"$out_of_gas_706":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_707"

"$have_gas_707":                                  ; preds = %"$out_of_gas_706", %entry
  %"$consume_708" = sub i64 %"$gasrem_704", 3
  store i64 %"$consume_708", i64* @_gasrem, align 8
  %x_cast = alloca %TName_Option_ByStr20_with_contract_end*, align 8
  %"$execptr_load_709" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_710" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_710", align 1
  %"$_dynamic_typecast_call_711" = call i8* @_dynamic_typecast(i8* %"$execptr_load_709", [20 x i8]* %"$_dynamic_typecast_x_710", %_TyDescrTy_Typ* @"$TyDescr_Addr_72")
  %"$_dynamic_typecast_712" = bitcast i8* %"$_dynamic_typecast_call_711" to %TName_Option_ByStr20_with_contract_end*
  store %TName_Option_ByStr20_with_contract_end* %"$_dynamic_typecast_712", %TName_Option_ByStr20_with_contract_end** %x_cast, align 8
  %"$gasrem_713" = load i64, i64* @_gasrem, align 8
  %"$gascmp_714" = icmp ugt i64 2, %"$gasrem_713"
  br i1 %"$gascmp_714", label %"$out_of_gas_715", label %"$have_gas_716"

"$out_of_gas_715":                                ; preds = %"$have_gas_707"
  call void @_out_of_gas()
  br label %"$have_gas_716"

"$have_gas_716":                                  ; preds = %"$out_of_gas_715", %"$have_gas_707"
  %"$consume_717" = sub i64 %"$gasrem_713", 2
  store i64 %"$consume_717", i64* @_gasrem, align 8
  %"$x_cast_719" = load %TName_Option_ByStr20_with_contract_end*, %TName_Option_ByStr20_with_contract_end** %x_cast, align 8
  %"$x_cast_tag_720" = getelementptr inbounds %TName_Option_ByStr20_with_contract_end, %TName_Option_ByStr20_with_contract_end* %"$x_cast_719", i32 0, i32 0
  %"$x_cast_tag_721" = load i8, i8* %"$x_cast_tag_720", align 1
  switch i8 %"$x_cast_tag_721", label %"$empty_default_722" [
    i8 0, label %"$Some_723"
    i8 1, label %"$None_771"
  ]

"$Some_723":                                      ; preds = %"$have_gas_716"
  %"$x_cast_724" = bitcast %TName_Option_ByStr20_with_contract_end* %"$x_cast_719" to %CName_Some_ByStr20_with_contract_end*
  %"$x_as_address_gep_725" = getelementptr inbounds %CName_Some_ByStr20_with_contract_end, %CName_Some_ByStr20_with_contract_end* %"$x_cast_724", i32 0, i32 1
  %"$x_as_address_load_726" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_725", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_726", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_728" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_729" = alloca [20 x i8], align 1
  %"$x_as_address_730" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_730", [20 x i8]* %"$bal_x_as_address_729", align 1
  %"$bal_call_731" = call i8* @_fetch_remote_field(i8* %"$execptr_load_728", [20 x i8]* %"$bal_x_as_address_729", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_727", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_33", i32 0, i8* null, i32 1)
  %"$bal_732" = bitcast i8* %"$bal_call_731" to %Uint128*
  %"$bal_733" = load %Uint128, %Uint128* %"$bal_732", align 8
  store %Uint128 %"$bal_733", %Uint128* %bal, align 8
  %"$_literal_cost_bal_734" = alloca %Uint128, align 8
  %"$bal_735" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_735", %Uint128* %"$_literal_cost_bal_734", align 8
  %"$$_literal_cost_bal_734_736" = bitcast %Uint128* %"$_literal_cost_bal_734" to i8*
  %"$_literal_cost_call_737" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_33", i8* %"$$_literal_cost_bal_734_736")
  %"$gasadd_738" = add i64 %"$_literal_cost_call_737", 0
  %"$gasrem_739" = load i64, i64* @_gasrem, align 8
  %"$gascmp_740" = icmp ugt i64 %"$gasadd_738", %"$gasrem_739"
  br i1 %"$gascmp_740", label %"$out_of_gas_741", label %"$have_gas_742"

"$out_of_gas_741":                                ; preds = %"$Some_723"
  call void @_out_of_gas()
  br label %"$have_gas_742"

"$have_gas_742":                                  ; preds = %"$out_of_gas_741", %"$Some_723"
  %"$consume_743" = sub i64 %"$gasrem_739", %"$gasadd_738"
  store i64 %"$consume_743", i64* @_gasrem, align 8
  %"$gasrem_744" = load i64, i64* @_gasrem, align 8
  %"$gascmp_745" = icmp ugt i64 1, %"$gasrem_744"
  br i1 %"$gascmp_745", label %"$out_of_gas_746", label %"$have_gas_747"

"$out_of_gas_746":                                ; preds = %"$have_gas_742"
  call void @_out_of_gas()
  br label %"$have_gas_747"

"$have_gas_747":                                  ; preds = %"$out_of_gas_746", %"$have_gas_742"
  %"$consume_748" = sub i64 %"$gasrem_744", 1
  store i64 %"$consume_748", i64* @_gasrem, align 8
  %res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_749" = load i64, i64* @_gasrem, align 8
  %"$gascmp_750" = icmp ugt i64 1, %"$gasrem_749"
  br i1 %"$gascmp_750", label %"$out_of_gas_751", label %"$have_gas_752"

"$out_of_gas_751":                                ; preds = %"$have_gas_747"
  call void @_out_of_gas()
  br label %"$have_gas_752"

"$have_gas_752":                                  ; preds = %"$out_of_gas_751", %"$have_gas_747"
  %"$consume_753" = sub i64 %"$gasrem_749", 1
  store i64 %"$consume_753", i64* @_gasrem, align 8
  %"$bal_754" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_755_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_755_salloc" = call i8* @_salloc(i8* %"$adtval_755_load", i64 17)
  %"$adtval_755" = bitcast i8* %"$adtval_755_salloc" to %CName_Some_Uint128*
  %"$adtgep_756" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_755", i32 0, i32 0
  store i8 0, i8* %"$adtgep_756", align 1
  %"$adtgep_757" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_755", i32 0, i32 1
  store %Uint128 %"$bal_754", %Uint128* %"$adtgep_757", align 8
  %"$adtptr_758" = bitcast %CName_Some_Uint128* %"$adtval_755" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_758", %TName_Option_Uint128** %res, align 8
  %"$res_759" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$$res_759_760" = bitcast %TName_Option_Uint128* %"$res_759" to i8*
  %"$_literal_cost_call_761" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i8* %"$$res_759_760")
  %"$gasrem_762" = load i64, i64* @_gasrem, align 8
  %"$gascmp_763" = icmp ugt i64 %"$_literal_cost_call_761", %"$gasrem_762"
  br i1 %"$gascmp_763", label %"$out_of_gas_764", label %"$have_gas_765"

"$out_of_gas_764":                                ; preds = %"$have_gas_752"
  call void @_out_of_gas()
  br label %"$have_gas_765"

"$have_gas_765":                                  ; preds = %"$out_of_gas_764", %"$have_gas_752"
  %"$consume_766" = sub i64 %"$gasrem_762", %"$_literal_cost_call_761"
  store i64 %"$consume_766", i64* @_gasrem, align 8
  %"$execptr_load_767" = load i8*, i8** @_execptr, align 8
  %"$res_769" = load %TName_Option_Uint128*, %TName_Option_Uint128** %res, align 8
  %"$update_value_770" = bitcast %TName_Option_Uint128* %"$res_769" to i8*
  call void @_update_field(i8* %"$execptr_load_767", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_5_2_res_768", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i32 0, i8* null, i8* %"$update_value_770")
  br label %"$matchsucc_718"

"$None_771":                                      ; preds = %"$have_gas_716"
  %"$x_cast_772" = bitcast %TName_Option_ByStr20_with_contract_end* %"$x_cast_719" to %CName_None_ByStr20_with_contract_end*
  br label %"$matchsucc_718"

"$empty_default_722":                             ; preds = %"$have_gas_716"
  br label %"$matchsucc_718"

"$matchsucc_718":                                 ; preds = %"$None_771", %"$have_gas_765", %"$empty_default_722"
  ret void
}

define void @CastTest5_2(i8* %0) {
entry:
  %"$_amount_774" = getelementptr i8, i8* %0, i32 0
  %"$_amount_775" = bitcast i8* %"$_amount_774" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_775", align 8
  %"$_origin_776" = getelementptr i8, i8* %0, i32 16
  %"$_origin_777" = bitcast i8* %"$_origin_776" to [20 x i8]*
  %"$_sender_778" = getelementptr i8, i8* %0, i32 36
  %"$_sender_779" = bitcast i8* %"$_sender_778" to [20 x i8]*
  %"$x_780" = getelementptr i8, i8* %0, i32 56
  %"$x_781" = bitcast i8* %"$x_780" to [20 x i8]*
  call void @"$CastTest5_2_700"(%Uint128 %_amount, [20 x i8]* %"$_origin_777", [20 x i8]* %"$_sender_779", [20 x i8]* %"$x_781")
  ret void
}

define internal void @"$CastTest6_1_782"(%Uint128 %_amount, [20 x i8]* %"$_origin_783", [20 x i8]* %"$_sender_784", [20 x i8]* %"$x_785") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_783", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_784", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_785", align 1
  %"$gasrem_786" = load i64, i64* @_gasrem, align 8
  %"$gascmp_787" = icmp ugt i64 5, %"$gasrem_786"
  br i1 %"$gascmp_787", label %"$out_of_gas_788", label %"$have_gas_789"

"$out_of_gas_788":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_789"

"$have_gas_789":                                  ; preds = %"$out_of_gas_788", %entry
  %"$consume_790" = sub i64 %"$gasrem_786", 5
  store i64 %"$consume_790", i64* @_gasrem, align 8
  %x_cast = alloca %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, align 8
  %"$execptr_load_791" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_792" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_792", align 1
  %"$_dynamic_typecast_call_793" = call i8* @_dynamic_typecast(i8* %"$execptr_load_791", [20 x i8]* %"$_dynamic_typecast_x_792", %_TyDescrTy_Typ* @"$TyDescr_Addr_71")
  %"$_dynamic_typecast_794" = bitcast i8* %"$_dynamic_typecast_call_793" to %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  store %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$_dynamic_typecast_794", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$gasrem_795" = load i64, i64* @_gasrem, align 8
  %"$gascmp_796" = icmp ugt i64 2, %"$gasrem_795"
  br i1 %"$gascmp_796", label %"$out_of_gas_797", label %"$have_gas_798"

"$out_of_gas_797":                                ; preds = %"$have_gas_789"
  call void @_out_of_gas()
  br label %"$have_gas_798"

"$have_gas_798":                                  ; preds = %"$out_of_gas_797", %"$have_gas_789"
  %"$consume_799" = sub i64 %"$gasrem_795", 2
  store i64 %"$consume_799", i64* @_gasrem, align 8
  %"$x_cast_801" = load %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$x_cast_tag_802" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_801", i32 0, i32 0
  %"$x_cast_tag_803" = load i8, i8* %"$x_cast_tag_802", align 1
  switch i8 %"$x_cast_tag_803", label %"$empty_default_804" [
    i8 0, label %"$Some_805"
    i8 1, label %"$None_939"
  ]

"$Some_805":                                      ; preds = %"$have_gas_798"
  %"$x_cast_806" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_801" to %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  %"$x_as_address_gep_807" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_806", i32 0, i32 1
  %"$x_as_address_load_808" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_807", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_808", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_810" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_811" = alloca [20 x i8], align 1
  %"$x_as_address_812" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_812", [20 x i8]* %"$bal_x_as_address_811", align 1
  %"$bal_call_813" = call i8* @_fetch_remote_field(i8* %"$execptr_load_810", [20 x i8]* %"$bal_x_as_address_811", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_809", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_33", i32 0, i8* null, i32 1)
  %"$bal_814" = bitcast i8* %"$bal_call_813" to %Uint128*
  %"$bal_815" = load %Uint128, %Uint128* %"$bal_814", align 8
  store %Uint128 %"$bal_815", %Uint128* %bal, align 8
  %"$_literal_cost_bal_816" = alloca %Uint128, align 8
  %"$bal_817" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_817", %Uint128* %"$_literal_cost_bal_816", align 8
  %"$$_literal_cost_bal_816_818" = bitcast %Uint128* %"$_literal_cost_bal_816" to i8*
  %"$_literal_cost_call_819" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_33", i8* %"$$_literal_cost_bal_816_818")
  %"$gasadd_820" = add i64 %"$_literal_cost_call_819", 0
  %"$gasrem_821" = load i64, i64* @_gasrem, align 8
  %"$gascmp_822" = icmp ugt i64 %"$gasadd_820", %"$gasrem_821"
  br i1 %"$gascmp_822", label %"$out_of_gas_823", label %"$have_gas_824"

"$out_of_gas_823":                                ; preds = %"$Some_805"
  call void @_out_of_gas()
  br label %"$have_gas_824"

"$have_gas_824":                                  ; preds = %"$out_of_gas_823", %"$Some_805"
  %"$consume_825" = sub i64 %"$gasrem_821", %"$gasadd_820"
  store i64 %"$consume_825", i64* @_gasrem, align 8
  %"$gasrem_826" = load i64, i64* @_gasrem, align 8
  %"$gascmp_827" = icmp ugt i64 1, %"$gasrem_826"
  br i1 %"$gascmp_827", label %"$out_of_gas_828", label %"$have_gas_829"

"$out_of_gas_828":                                ; preds = %"$have_gas_824"
  call void @_out_of_gas()
  br label %"$have_gas_829"

"$have_gas_829":                                  ; preds = %"$out_of_gas_828", %"$have_gas_824"
  %"$consume_830" = sub i64 %"$gasrem_826", 1
  store i64 %"$consume_830", i64* @_gasrem, align 8
  %bal_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_831" = load i64, i64* @_gasrem, align 8
  %"$gascmp_832" = icmp ugt i64 1, %"$gasrem_831"
  br i1 %"$gascmp_832", label %"$out_of_gas_833", label %"$have_gas_834"

"$out_of_gas_833":                                ; preds = %"$have_gas_829"
  call void @_out_of_gas()
  br label %"$have_gas_834"

"$have_gas_834":                                  ; preds = %"$out_of_gas_833", %"$have_gas_829"
  %"$consume_835" = sub i64 %"$gasrem_831", 1
  store i64 %"$consume_835", i64* @_gasrem, align 8
  %"$bal_836" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_837_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_837_salloc" = call i8* @_salloc(i8* %"$adtval_837_load", i64 17)
  %"$adtval_837" = bitcast i8* %"$adtval_837_salloc" to %CName_Some_Uint128*
  %"$adtgep_838" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_837", i32 0, i32 0
  store i8 0, i8* %"$adtgep_838", align 1
  %"$adtgep_839" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_837", i32 0, i32 1
  store %Uint128 %"$bal_836", %Uint128* %"$adtgep_839", align 8
  %"$adtptr_840" = bitcast %CName_Some_Uint128* %"$adtval_837" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_840", %TName_Option_Uint128** %bal_res, align 8
  %"$bal_res_841" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$$bal_res_841_842" = bitcast %TName_Option_Uint128* %"$bal_res_841" to i8*
  %"$_literal_cost_call_843" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i8* %"$$bal_res_841_842")
  %"$gasrem_844" = load i64, i64* @_gasrem, align 8
  %"$gascmp_845" = icmp ugt i64 %"$_literal_cost_call_843", %"$gasrem_844"
  br i1 %"$gascmp_845", label %"$out_of_gas_846", label %"$have_gas_847"

"$out_of_gas_846":                                ; preds = %"$have_gas_834"
  call void @_out_of_gas()
  br label %"$have_gas_847"

"$have_gas_847":                                  ; preds = %"$out_of_gas_846", %"$have_gas_834"
  %"$consume_848" = sub i64 %"$gasrem_844", %"$_literal_cost_call_843"
  store i64 %"$consume_848", i64* @_gasrem, align 8
  %"$execptr_load_849" = load i8*, i8** @_execptr, align 8
  %"$bal_res_851" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$update_value_852" = bitcast %TName_Option_Uint128* %"$bal_res_851" to i8*
  call void @_update_field(i8* %"$execptr_load_849", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_1_bal_res_850", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i32 0, i8* null, i8* %"$update_value_852")
  %f = alloca %Uint128, align 8
  %"$execptr_load_854" = load i8*, i8** @_execptr, align 8
  %"$f_x_as_address_855" = alloca [20 x i8], align 1
  %"$x_as_address_856" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_856", [20 x i8]* %"$f_x_as_address_855", align 1
  %"$f_call_857" = call i8* @_fetch_remote_field(i8* %"$execptr_load_854", [20 x i8]* %"$f_x_as_address_855", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_853", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_33", i32 0, i8* null, i32 1)
  %"$f_858" = bitcast i8* %"$f_call_857" to %Uint128*
  %"$f_859" = load %Uint128, %Uint128* %"$f_858", align 8
  store %Uint128 %"$f_859", %Uint128* %f, align 8
  %"$_literal_cost_f_860" = alloca %Uint128, align 8
  %"$f_861" = load %Uint128, %Uint128* %f, align 8
  store %Uint128 %"$f_861", %Uint128* %"$_literal_cost_f_860", align 8
  %"$$_literal_cost_f_860_862" = bitcast %Uint128* %"$_literal_cost_f_860" to i8*
  %"$_literal_cost_call_863" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_33", i8* %"$$_literal_cost_f_860_862")
  %"$gasadd_864" = add i64 %"$_literal_cost_call_863", 0
  %"$gasrem_865" = load i64, i64* @_gasrem, align 8
  %"$gascmp_866" = icmp ugt i64 %"$gasadd_864", %"$gasrem_865"
  br i1 %"$gascmp_866", label %"$out_of_gas_867", label %"$have_gas_868"

"$out_of_gas_867":                                ; preds = %"$have_gas_847"
  call void @_out_of_gas()
  br label %"$have_gas_868"

"$have_gas_868":                                  ; preds = %"$out_of_gas_867", %"$have_gas_847"
  %"$consume_869" = sub i64 %"$gasrem_865", %"$gasadd_864"
  store i64 %"$consume_869", i64* @_gasrem, align 8
  %"$gasrem_870" = load i64, i64* @_gasrem, align 8
  %"$gascmp_871" = icmp ugt i64 1, %"$gasrem_870"
  br i1 %"$gascmp_871", label %"$out_of_gas_872", label %"$have_gas_873"

"$out_of_gas_872":                                ; preds = %"$have_gas_868"
  call void @_out_of_gas()
  br label %"$have_gas_873"

"$have_gas_873":                                  ; preds = %"$out_of_gas_872", %"$have_gas_868"
  %"$consume_874" = sub i64 %"$gasrem_870", 1
  store i64 %"$consume_874", i64* @_gasrem, align 8
  %f_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_875" = load i64, i64* @_gasrem, align 8
  %"$gascmp_876" = icmp ugt i64 1, %"$gasrem_875"
  br i1 %"$gascmp_876", label %"$out_of_gas_877", label %"$have_gas_878"

"$out_of_gas_877":                                ; preds = %"$have_gas_873"
  call void @_out_of_gas()
  br label %"$have_gas_878"

"$have_gas_878":                                  ; preds = %"$out_of_gas_877", %"$have_gas_873"
  %"$consume_879" = sub i64 %"$gasrem_875", 1
  store i64 %"$consume_879", i64* @_gasrem, align 8
  %"$f_880" = load %Uint128, %Uint128* %f, align 8
  %"$adtval_881_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_881_salloc" = call i8* @_salloc(i8* %"$adtval_881_load", i64 17)
  %"$adtval_881" = bitcast i8* %"$adtval_881_salloc" to %CName_Some_Uint128*
  %"$adtgep_882" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_881", i32 0, i32 0
  store i8 0, i8* %"$adtgep_882", align 1
  %"$adtgep_883" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_881", i32 0, i32 1
  store %Uint128 %"$f_880", %Uint128* %"$adtgep_883", align 8
  %"$adtptr_884" = bitcast %CName_Some_Uint128* %"$adtval_881" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_884", %TName_Option_Uint128** %f_res, align 8
  %"$f_res_885" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$$f_res_885_886" = bitcast %TName_Option_Uint128* %"$f_res_885" to i8*
  %"$_literal_cost_call_887" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i8* %"$$f_res_885_886")
  %"$gasrem_888" = load i64, i64* @_gasrem, align 8
  %"$gascmp_889" = icmp ugt i64 %"$_literal_cost_call_887", %"$gasrem_888"
  br i1 %"$gascmp_889", label %"$out_of_gas_890", label %"$have_gas_891"

"$out_of_gas_890":                                ; preds = %"$have_gas_878"
  call void @_out_of_gas()
  br label %"$have_gas_891"

"$have_gas_891":                                  ; preds = %"$out_of_gas_890", %"$have_gas_878"
  %"$consume_892" = sub i64 %"$gasrem_888", %"$_literal_cost_call_887"
  store i64 %"$consume_892", i64* @_gasrem, align 8
  %"$execptr_load_893" = load i8*, i8** @_execptr, align 8
  %"$f_res_895" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$update_value_896" = bitcast %TName_Option_Uint128* %"$f_res_895" to i8*
  call void @_update_field(i8* %"$execptr_load_893", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_1_f_res_894", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i32 0, i8* null, i8* %"$update_value_896")
  %g = alloca %TName_Bool*, align 8
  %"$execptr_load_898" = load i8*, i8** @_execptr, align 8
  %"$g_x_as_address_899" = alloca [20 x i8], align 1
  %"$x_as_address_900" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_900", [20 x i8]* %"$g_x_as_address_899", align 1
  %"$g_call_901" = call i8* @_fetch_remote_field(i8* %"$execptr_load_898", [20 x i8]* %"$g_x_as_address_899", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_897", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_63", i32 0, i8* null, i32 1)
  %"$g_902" = bitcast i8* %"$g_call_901" to %TName_Bool*
  store %TName_Bool* %"$g_902", %TName_Bool** %g, align 8
  %"$g_903" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$$g_903_904" = bitcast %TName_Bool* %"$g_903" to i8*
  %"$_literal_cost_call_905" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_63", i8* %"$$g_903_904")
  %"$gasadd_906" = add i64 %"$_literal_cost_call_905", 0
  %"$gasrem_907" = load i64, i64* @_gasrem, align 8
  %"$gascmp_908" = icmp ugt i64 %"$gasadd_906", %"$gasrem_907"
  br i1 %"$gascmp_908", label %"$out_of_gas_909", label %"$have_gas_910"

"$out_of_gas_909":                                ; preds = %"$have_gas_891"
  call void @_out_of_gas()
  br label %"$have_gas_910"

"$have_gas_910":                                  ; preds = %"$out_of_gas_909", %"$have_gas_891"
  %"$consume_911" = sub i64 %"$gasrem_907", %"$gasadd_906"
  store i64 %"$consume_911", i64* @_gasrem, align 8
  %"$gasrem_912" = load i64, i64* @_gasrem, align 8
  %"$gascmp_913" = icmp ugt i64 1, %"$gasrem_912"
  br i1 %"$gascmp_913", label %"$out_of_gas_914", label %"$have_gas_915"

"$out_of_gas_914":                                ; preds = %"$have_gas_910"
  call void @_out_of_gas()
  br label %"$have_gas_915"

"$have_gas_915":                                  ; preds = %"$out_of_gas_914", %"$have_gas_910"
  %"$consume_916" = sub i64 %"$gasrem_912", 1
  store i64 %"$consume_916", i64* @_gasrem, align 8
  %g_res = alloca %TName_Option_Bool*, align 8
  %"$gasrem_917" = load i64, i64* @_gasrem, align 8
  %"$gascmp_918" = icmp ugt i64 1, %"$gasrem_917"
  br i1 %"$gascmp_918", label %"$out_of_gas_919", label %"$have_gas_920"

"$out_of_gas_919":                                ; preds = %"$have_gas_915"
  call void @_out_of_gas()
  br label %"$have_gas_920"

"$have_gas_920":                                  ; preds = %"$out_of_gas_919", %"$have_gas_915"
  %"$consume_921" = sub i64 %"$gasrem_917", 1
  store i64 %"$consume_921", i64* @_gasrem, align 8
  %"$g_922" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$adtval_923_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_923_salloc" = call i8* @_salloc(i8* %"$adtval_923_load", i64 9)
  %"$adtval_923" = bitcast i8* %"$adtval_923_salloc" to %CName_Some_Bool*
  %"$adtgep_924" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_923", i32 0, i32 0
  store i8 0, i8* %"$adtgep_924", align 1
  %"$adtgep_925" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_923", i32 0, i32 1
  store %TName_Bool* %"$g_922", %TName_Bool** %"$adtgep_925", align 8
  %"$adtptr_926" = bitcast %CName_Some_Bool* %"$adtval_923" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_926", %TName_Option_Bool** %g_res, align 8
  %"$g_res_927" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$$g_res_927_928" = bitcast %TName_Option_Bool* %"$g_res_927" to i8*
  %"$_literal_cost_call_929" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_59", i8* %"$$g_res_927_928")
  %"$gasrem_930" = load i64, i64* @_gasrem, align 8
  %"$gascmp_931" = icmp ugt i64 %"$_literal_cost_call_929", %"$gasrem_930"
  br i1 %"$gascmp_931", label %"$out_of_gas_932", label %"$have_gas_933"

"$out_of_gas_932":                                ; preds = %"$have_gas_920"
  call void @_out_of_gas()
  br label %"$have_gas_933"

"$have_gas_933":                                  ; preds = %"$out_of_gas_932", %"$have_gas_920"
  %"$consume_934" = sub i64 %"$gasrem_930", %"$_literal_cost_call_929"
  store i64 %"$consume_934", i64* @_gasrem, align 8
  %"$execptr_load_935" = load i8*, i8** @_execptr, align 8
  %"$g_res_937" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$update_value_938" = bitcast %TName_Option_Bool* %"$g_res_937" to i8*
  call void @_update_field(i8* %"$execptr_load_935", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_1_g_res_936", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_59", i32 0, i8* null, i8* %"$update_value_938")
  br label %"$matchsucc_800"

"$None_939":                                      ; preds = %"$have_gas_798"
  %"$x_cast_940" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_801" to %"CName_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  br label %"$matchsucc_800"

"$empty_default_804":                             ; preds = %"$have_gas_798"
  br label %"$matchsucc_800"

"$matchsucc_800":                                 ; preds = %"$None_939", %"$have_gas_933", %"$empty_default_804"
  ret void
}

define void @CastTest6_1(i8* %0) {
entry:
  %"$_amount_942" = getelementptr i8, i8* %0, i32 0
  %"$_amount_943" = bitcast i8* %"$_amount_942" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_943", align 8
  %"$_origin_944" = getelementptr i8, i8* %0, i32 16
  %"$_origin_945" = bitcast i8* %"$_origin_944" to [20 x i8]*
  %"$_sender_946" = getelementptr i8, i8* %0, i32 36
  %"$_sender_947" = bitcast i8* %"$_sender_946" to [20 x i8]*
  %"$x_948" = getelementptr i8, i8* %0, i32 56
  %"$x_949" = bitcast i8* %"$x_948" to [20 x i8]*
  call void @"$CastTest6_1_782"(%Uint128 %_amount, [20 x i8]* %"$_origin_945", [20 x i8]* %"$_sender_947", [20 x i8]* %"$x_949")
  ret void
}

define internal void @"$CastTest6_2_950"(%Uint128 %_amount, [20 x i8]* %"$_origin_951", [20 x i8]* %"$_sender_952", [20 x i8]* %"$x_953") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_951", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_952", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_953", align 1
  %"$gasrem_954" = load i64, i64* @_gasrem, align 8
  %"$gascmp_955" = icmp ugt i64 5, %"$gasrem_954"
  br i1 %"$gascmp_955", label %"$out_of_gas_956", label %"$have_gas_957"

"$out_of_gas_956":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_957"

"$have_gas_957":                                  ; preds = %"$out_of_gas_956", %entry
  %"$consume_958" = sub i64 %"$gasrem_954", 5
  store i64 %"$consume_958", i64* @_gasrem, align 8
  %x_cast = alloca %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, align 8
  %"$execptr_load_959" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_960" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_960", align 1
  %"$_dynamic_typecast_call_961" = call i8* @_dynamic_typecast(i8* %"$execptr_load_959", [20 x i8]* %"$_dynamic_typecast_x_960", %_TyDescrTy_Typ* @"$TyDescr_Addr_71")
  %"$_dynamic_typecast_962" = bitcast i8* %"$_dynamic_typecast_call_961" to %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  store %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$_dynamic_typecast_962", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$gasrem_963" = load i64, i64* @_gasrem, align 8
  %"$gascmp_964" = icmp ugt i64 2, %"$gasrem_963"
  br i1 %"$gascmp_964", label %"$out_of_gas_965", label %"$have_gas_966"

"$out_of_gas_965":                                ; preds = %"$have_gas_957"
  call void @_out_of_gas()
  br label %"$have_gas_966"

"$have_gas_966":                                  ; preds = %"$out_of_gas_965", %"$have_gas_957"
  %"$consume_967" = sub i64 %"$gasrem_963", 2
  store i64 %"$consume_967", i64* @_gasrem, align 8
  %"$x_cast_969" = load %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$x_cast_tag_970" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_969", i32 0, i32 0
  %"$x_cast_tag_971" = load i8, i8* %"$x_cast_tag_970", align 1
  switch i8 %"$x_cast_tag_971", label %"$empty_default_972" [
    i8 0, label %"$Some_973"
    i8 1, label %"$None_1107"
  ]

"$Some_973":                                      ; preds = %"$have_gas_966"
  %"$x_cast_974" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_969" to %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  %"$x_as_address_gep_975" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_974", i32 0, i32 1
  %"$x_as_address_load_976" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_975", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_976", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_978" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_979" = alloca [20 x i8], align 1
  %"$x_as_address_980" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_980", [20 x i8]* %"$bal_x_as_address_979", align 1
  %"$bal_call_981" = call i8* @_fetch_remote_field(i8* %"$execptr_load_978", [20 x i8]* %"$bal_x_as_address_979", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_977", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_33", i32 0, i8* null, i32 1)
  %"$bal_982" = bitcast i8* %"$bal_call_981" to %Uint128*
  %"$bal_983" = load %Uint128, %Uint128* %"$bal_982", align 8
  store %Uint128 %"$bal_983", %Uint128* %bal, align 8
  %"$_literal_cost_bal_984" = alloca %Uint128, align 8
  %"$bal_985" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_985", %Uint128* %"$_literal_cost_bal_984", align 8
  %"$$_literal_cost_bal_984_986" = bitcast %Uint128* %"$_literal_cost_bal_984" to i8*
  %"$_literal_cost_call_987" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_33", i8* %"$$_literal_cost_bal_984_986")
  %"$gasadd_988" = add i64 %"$_literal_cost_call_987", 0
  %"$gasrem_989" = load i64, i64* @_gasrem, align 8
  %"$gascmp_990" = icmp ugt i64 %"$gasadd_988", %"$gasrem_989"
  br i1 %"$gascmp_990", label %"$out_of_gas_991", label %"$have_gas_992"

"$out_of_gas_991":                                ; preds = %"$Some_973"
  call void @_out_of_gas()
  br label %"$have_gas_992"

"$have_gas_992":                                  ; preds = %"$out_of_gas_991", %"$Some_973"
  %"$consume_993" = sub i64 %"$gasrem_989", %"$gasadd_988"
  store i64 %"$consume_993", i64* @_gasrem, align 8
  %"$gasrem_994" = load i64, i64* @_gasrem, align 8
  %"$gascmp_995" = icmp ugt i64 1, %"$gasrem_994"
  br i1 %"$gascmp_995", label %"$out_of_gas_996", label %"$have_gas_997"

"$out_of_gas_996":                                ; preds = %"$have_gas_992"
  call void @_out_of_gas()
  br label %"$have_gas_997"

"$have_gas_997":                                  ; preds = %"$out_of_gas_996", %"$have_gas_992"
  %"$consume_998" = sub i64 %"$gasrem_994", 1
  store i64 %"$consume_998", i64* @_gasrem, align 8
  %bal_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_999" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1000" = icmp ugt i64 1, %"$gasrem_999"
  br i1 %"$gascmp_1000", label %"$out_of_gas_1001", label %"$have_gas_1002"

"$out_of_gas_1001":                               ; preds = %"$have_gas_997"
  call void @_out_of_gas()
  br label %"$have_gas_1002"

"$have_gas_1002":                                 ; preds = %"$out_of_gas_1001", %"$have_gas_997"
  %"$consume_1003" = sub i64 %"$gasrem_999", 1
  store i64 %"$consume_1003", i64* @_gasrem, align 8
  %"$bal_1004" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_1005_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1005_salloc" = call i8* @_salloc(i8* %"$adtval_1005_load", i64 17)
  %"$adtval_1005" = bitcast i8* %"$adtval_1005_salloc" to %CName_Some_Uint128*
  %"$adtgep_1006" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1005", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1006", align 1
  %"$adtgep_1007" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1005", i32 0, i32 1
  store %Uint128 %"$bal_1004", %Uint128* %"$adtgep_1007", align 8
  %"$adtptr_1008" = bitcast %CName_Some_Uint128* %"$adtval_1005" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1008", %TName_Option_Uint128** %bal_res, align 8
  %"$bal_res_1009" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$$bal_res_1009_1010" = bitcast %TName_Option_Uint128* %"$bal_res_1009" to i8*
  %"$_literal_cost_call_1011" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i8* %"$$bal_res_1009_1010")
  %"$gasrem_1012" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1013" = icmp ugt i64 %"$_literal_cost_call_1011", %"$gasrem_1012"
  br i1 %"$gascmp_1013", label %"$out_of_gas_1014", label %"$have_gas_1015"

"$out_of_gas_1014":                               ; preds = %"$have_gas_1002"
  call void @_out_of_gas()
  br label %"$have_gas_1015"

"$have_gas_1015":                                 ; preds = %"$out_of_gas_1014", %"$have_gas_1002"
  %"$consume_1016" = sub i64 %"$gasrem_1012", %"$_literal_cost_call_1011"
  store i64 %"$consume_1016", i64* @_gasrem, align 8
  %"$execptr_load_1017" = load i8*, i8** @_execptr, align 8
  %"$bal_res_1019" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$update_value_1020" = bitcast %TName_Option_Uint128* %"$bal_res_1019" to i8*
  call void @_update_field(i8* %"$execptr_load_1017", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_2_bal_res_1018", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i32 0, i8* null, i8* %"$update_value_1020")
  %f = alloca %Uint128, align 8
  %"$execptr_load_1022" = load i8*, i8** @_execptr, align 8
  %"$f_x_as_address_1023" = alloca [20 x i8], align 1
  %"$x_as_address_1024" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1024", [20 x i8]* %"$f_x_as_address_1023", align 1
  %"$f_call_1025" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1022", [20 x i8]* %"$f_x_as_address_1023", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_1021", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_33", i32 0, i8* null, i32 1)
  %"$f_1026" = bitcast i8* %"$f_call_1025" to %Uint128*
  %"$f_1027" = load %Uint128, %Uint128* %"$f_1026", align 8
  store %Uint128 %"$f_1027", %Uint128* %f, align 8
  %"$_literal_cost_f_1028" = alloca %Uint128, align 8
  %"$f_1029" = load %Uint128, %Uint128* %f, align 8
  store %Uint128 %"$f_1029", %Uint128* %"$_literal_cost_f_1028", align 8
  %"$$_literal_cost_f_1028_1030" = bitcast %Uint128* %"$_literal_cost_f_1028" to i8*
  %"$_literal_cost_call_1031" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_33", i8* %"$$_literal_cost_f_1028_1030")
  %"$gasadd_1032" = add i64 %"$_literal_cost_call_1031", 0
  %"$gasrem_1033" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1034" = icmp ugt i64 %"$gasadd_1032", %"$gasrem_1033"
  br i1 %"$gascmp_1034", label %"$out_of_gas_1035", label %"$have_gas_1036"

"$out_of_gas_1035":                               ; preds = %"$have_gas_1015"
  call void @_out_of_gas()
  br label %"$have_gas_1036"

"$have_gas_1036":                                 ; preds = %"$out_of_gas_1035", %"$have_gas_1015"
  %"$consume_1037" = sub i64 %"$gasrem_1033", %"$gasadd_1032"
  store i64 %"$consume_1037", i64* @_gasrem, align 8
  %"$gasrem_1038" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1039" = icmp ugt i64 1, %"$gasrem_1038"
  br i1 %"$gascmp_1039", label %"$out_of_gas_1040", label %"$have_gas_1041"

"$out_of_gas_1040":                               ; preds = %"$have_gas_1036"
  call void @_out_of_gas()
  br label %"$have_gas_1041"

"$have_gas_1041":                                 ; preds = %"$out_of_gas_1040", %"$have_gas_1036"
  %"$consume_1042" = sub i64 %"$gasrem_1038", 1
  store i64 %"$consume_1042", i64* @_gasrem, align 8
  %f_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1043" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1044" = icmp ugt i64 1, %"$gasrem_1043"
  br i1 %"$gascmp_1044", label %"$out_of_gas_1045", label %"$have_gas_1046"

"$out_of_gas_1045":                               ; preds = %"$have_gas_1041"
  call void @_out_of_gas()
  br label %"$have_gas_1046"

"$have_gas_1046":                                 ; preds = %"$out_of_gas_1045", %"$have_gas_1041"
  %"$consume_1047" = sub i64 %"$gasrem_1043", 1
  store i64 %"$consume_1047", i64* @_gasrem, align 8
  %"$f_1048" = load %Uint128, %Uint128* %f, align 8
  %"$adtval_1049_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1049_salloc" = call i8* @_salloc(i8* %"$adtval_1049_load", i64 17)
  %"$adtval_1049" = bitcast i8* %"$adtval_1049_salloc" to %CName_Some_Uint128*
  %"$adtgep_1050" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1049", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1050", align 1
  %"$adtgep_1051" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1049", i32 0, i32 1
  store %Uint128 %"$f_1048", %Uint128* %"$adtgep_1051", align 8
  %"$adtptr_1052" = bitcast %CName_Some_Uint128* %"$adtval_1049" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1052", %TName_Option_Uint128** %f_res, align 8
  %"$f_res_1053" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$$f_res_1053_1054" = bitcast %TName_Option_Uint128* %"$f_res_1053" to i8*
  %"$_literal_cost_call_1055" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i8* %"$$f_res_1053_1054")
  %"$gasrem_1056" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1057" = icmp ugt i64 %"$_literal_cost_call_1055", %"$gasrem_1056"
  br i1 %"$gascmp_1057", label %"$out_of_gas_1058", label %"$have_gas_1059"

"$out_of_gas_1058":                               ; preds = %"$have_gas_1046"
  call void @_out_of_gas()
  br label %"$have_gas_1059"

"$have_gas_1059":                                 ; preds = %"$out_of_gas_1058", %"$have_gas_1046"
  %"$consume_1060" = sub i64 %"$gasrem_1056", %"$_literal_cost_call_1055"
  store i64 %"$consume_1060", i64* @_gasrem, align 8
  %"$execptr_load_1061" = load i8*, i8** @_execptr, align 8
  %"$f_res_1063" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$update_value_1064" = bitcast %TName_Option_Uint128* %"$f_res_1063" to i8*
  call void @_update_field(i8* %"$execptr_load_1061", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_2_f_res_1062", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i32 0, i8* null, i8* %"$update_value_1064")
  %g = alloca %TName_Bool*, align 8
  %"$execptr_load_1066" = load i8*, i8** @_execptr, align 8
  %"$g_x_as_address_1067" = alloca [20 x i8], align 1
  %"$x_as_address_1068" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1068", [20 x i8]* %"$g_x_as_address_1067", align 1
  %"$g_call_1069" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1066", [20 x i8]* %"$g_x_as_address_1067", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_1065", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_63", i32 0, i8* null, i32 1)
  %"$g_1070" = bitcast i8* %"$g_call_1069" to %TName_Bool*
  store %TName_Bool* %"$g_1070", %TName_Bool** %g, align 8
  %"$g_1071" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$$g_1071_1072" = bitcast %TName_Bool* %"$g_1071" to i8*
  %"$_literal_cost_call_1073" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_63", i8* %"$$g_1071_1072")
  %"$gasadd_1074" = add i64 %"$_literal_cost_call_1073", 0
  %"$gasrem_1075" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1076" = icmp ugt i64 %"$gasadd_1074", %"$gasrem_1075"
  br i1 %"$gascmp_1076", label %"$out_of_gas_1077", label %"$have_gas_1078"

"$out_of_gas_1077":                               ; preds = %"$have_gas_1059"
  call void @_out_of_gas()
  br label %"$have_gas_1078"

"$have_gas_1078":                                 ; preds = %"$out_of_gas_1077", %"$have_gas_1059"
  %"$consume_1079" = sub i64 %"$gasrem_1075", %"$gasadd_1074"
  store i64 %"$consume_1079", i64* @_gasrem, align 8
  %"$gasrem_1080" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1081" = icmp ugt i64 1, %"$gasrem_1080"
  br i1 %"$gascmp_1081", label %"$out_of_gas_1082", label %"$have_gas_1083"

"$out_of_gas_1082":                               ; preds = %"$have_gas_1078"
  call void @_out_of_gas()
  br label %"$have_gas_1083"

"$have_gas_1083":                                 ; preds = %"$out_of_gas_1082", %"$have_gas_1078"
  %"$consume_1084" = sub i64 %"$gasrem_1080", 1
  store i64 %"$consume_1084", i64* @_gasrem, align 8
  %g_res = alloca %TName_Option_Bool*, align 8
  %"$gasrem_1085" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1086" = icmp ugt i64 1, %"$gasrem_1085"
  br i1 %"$gascmp_1086", label %"$out_of_gas_1087", label %"$have_gas_1088"

"$out_of_gas_1087":                               ; preds = %"$have_gas_1083"
  call void @_out_of_gas()
  br label %"$have_gas_1088"

"$have_gas_1088":                                 ; preds = %"$out_of_gas_1087", %"$have_gas_1083"
  %"$consume_1089" = sub i64 %"$gasrem_1085", 1
  store i64 %"$consume_1089", i64* @_gasrem, align 8
  %"$g_1090" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$adtval_1091_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1091_salloc" = call i8* @_salloc(i8* %"$adtval_1091_load", i64 9)
  %"$adtval_1091" = bitcast i8* %"$adtval_1091_salloc" to %CName_Some_Bool*
  %"$adtgep_1092" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1091", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1092", align 1
  %"$adtgep_1093" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1091", i32 0, i32 1
  store %TName_Bool* %"$g_1090", %TName_Bool** %"$adtgep_1093", align 8
  %"$adtptr_1094" = bitcast %CName_Some_Bool* %"$adtval_1091" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_1094", %TName_Option_Bool** %g_res, align 8
  %"$g_res_1095" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$$g_res_1095_1096" = bitcast %TName_Option_Bool* %"$g_res_1095" to i8*
  %"$_literal_cost_call_1097" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_59", i8* %"$$g_res_1095_1096")
  %"$gasrem_1098" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1099" = icmp ugt i64 %"$_literal_cost_call_1097", %"$gasrem_1098"
  br i1 %"$gascmp_1099", label %"$out_of_gas_1100", label %"$have_gas_1101"

"$out_of_gas_1100":                               ; preds = %"$have_gas_1088"
  call void @_out_of_gas()
  br label %"$have_gas_1101"

"$have_gas_1101":                                 ; preds = %"$out_of_gas_1100", %"$have_gas_1088"
  %"$consume_1102" = sub i64 %"$gasrem_1098", %"$_literal_cost_call_1097"
  store i64 %"$consume_1102", i64* @_gasrem, align 8
  %"$execptr_load_1103" = load i8*, i8** @_execptr, align 8
  %"$g_res_1105" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$update_value_1106" = bitcast %TName_Option_Bool* %"$g_res_1105" to i8*
  call void @_update_field(i8* %"$execptr_load_1103", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_2_g_res_1104", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_59", i32 0, i8* null, i8* %"$update_value_1106")
  br label %"$matchsucc_968"

"$None_1107":                                     ; preds = %"$have_gas_966"
  %"$x_cast_1108" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_969" to %"CName_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  br label %"$matchsucc_968"

"$empty_default_972":                             ; preds = %"$have_gas_966"
  br label %"$matchsucc_968"

"$matchsucc_968":                                 ; preds = %"$None_1107", %"$have_gas_1101", %"$empty_default_972"
  ret void
}

define void @CastTest6_2(i8* %0) {
entry:
  %"$_amount_1110" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1111" = bitcast i8* %"$_amount_1110" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1111", align 8
  %"$_origin_1112" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1113" = bitcast i8* %"$_origin_1112" to [20 x i8]*
  %"$_sender_1114" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1115" = bitcast i8* %"$_sender_1114" to [20 x i8]*
  %"$x_1116" = getelementptr i8, i8* %0, i32 56
  %"$x_1117" = bitcast i8* %"$x_1116" to [20 x i8]*
  call void @"$CastTest6_2_950"(%Uint128 %_amount, [20 x i8]* %"$_origin_1113", [20 x i8]* %"$_sender_1115", [20 x i8]* %"$x_1117")
  ret void
}

define internal void @"$CastTest6_3_1118"(%Uint128 %_amount, [20 x i8]* %"$_origin_1119", [20 x i8]* %"$_sender_1120", [20 x i8]* %"$x_1121") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1119", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1120", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_1121", align 1
  %"$gasrem_1122" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1123" = icmp ugt i64 5, %"$gasrem_1122"
  br i1 %"$gascmp_1123", label %"$out_of_gas_1124", label %"$have_gas_1125"

"$out_of_gas_1124":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1125"

"$have_gas_1125":                                 ; preds = %"$out_of_gas_1124", %entry
  %"$consume_1126" = sub i64 %"$gasrem_1122", 5
  store i64 %"$consume_1126", i64* @_gasrem, align 8
  %x_cast = alloca %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, align 8
  %"$execptr_load_1127" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_1128" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_1128", align 1
  %"$_dynamic_typecast_call_1129" = call i8* @_dynamic_typecast(i8* %"$execptr_load_1127", [20 x i8]* %"$_dynamic_typecast_x_1128", %_TyDescrTy_Typ* @"$TyDescr_Addr_71")
  %"$_dynamic_typecast_1130" = bitcast i8* %"$_dynamic_typecast_call_1129" to %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  store %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$_dynamic_typecast_1130", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$gasrem_1131" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1132" = icmp ugt i64 2, %"$gasrem_1131"
  br i1 %"$gascmp_1132", label %"$out_of_gas_1133", label %"$have_gas_1134"

"$out_of_gas_1133":                               ; preds = %"$have_gas_1125"
  call void @_out_of_gas()
  br label %"$have_gas_1134"

"$have_gas_1134":                                 ; preds = %"$out_of_gas_1133", %"$have_gas_1125"
  %"$consume_1135" = sub i64 %"$gasrem_1131", 2
  store i64 %"$consume_1135", i64* @_gasrem, align 8
  %"$x_cast_1137" = load %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$x_cast_tag_1138" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1137", i32 0, i32 0
  %"$x_cast_tag_1139" = load i8, i8* %"$x_cast_tag_1138", align 1
  switch i8 %"$x_cast_tag_1139", label %"$empty_default_1140" [
    i8 0, label %"$Some_1141"
    i8 1, label %"$None_1275"
  ]

"$Some_1141":                                     ; preds = %"$have_gas_1134"
  %"$x_cast_1142" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1137" to %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  %"$x_as_address_gep_1143" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1142", i32 0, i32 1
  %"$x_as_address_load_1144" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_1143", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_1144", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_1146" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_1147" = alloca [20 x i8], align 1
  %"$x_as_address_1148" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1148", [20 x i8]* %"$bal_x_as_address_1147", align 1
  %"$bal_call_1149" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1146", [20 x i8]* %"$bal_x_as_address_1147", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_1145", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_33", i32 0, i8* null, i32 1)
  %"$bal_1150" = bitcast i8* %"$bal_call_1149" to %Uint128*
  %"$bal_1151" = load %Uint128, %Uint128* %"$bal_1150", align 8
  store %Uint128 %"$bal_1151", %Uint128* %bal, align 8
  %"$_literal_cost_bal_1152" = alloca %Uint128, align 8
  %"$bal_1153" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_1153", %Uint128* %"$_literal_cost_bal_1152", align 8
  %"$$_literal_cost_bal_1152_1154" = bitcast %Uint128* %"$_literal_cost_bal_1152" to i8*
  %"$_literal_cost_call_1155" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_33", i8* %"$$_literal_cost_bal_1152_1154")
  %"$gasadd_1156" = add i64 %"$_literal_cost_call_1155", 0
  %"$gasrem_1157" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1158" = icmp ugt i64 %"$gasadd_1156", %"$gasrem_1157"
  br i1 %"$gascmp_1158", label %"$out_of_gas_1159", label %"$have_gas_1160"

"$out_of_gas_1159":                               ; preds = %"$Some_1141"
  call void @_out_of_gas()
  br label %"$have_gas_1160"

"$have_gas_1160":                                 ; preds = %"$out_of_gas_1159", %"$Some_1141"
  %"$consume_1161" = sub i64 %"$gasrem_1157", %"$gasadd_1156"
  store i64 %"$consume_1161", i64* @_gasrem, align 8
  %"$gasrem_1162" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1163" = icmp ugt i64 1, %"$gasrem_1162"
  br i1 %"$gascmp_1163", label %"$out_of_gas_1164", label %"$have_gas_1165"

"$out_of_gas_1164":                               ; preds = %"$have_gas_1160"
  call void @_out_of_gas()
  br label %"$have_gas_1165"

"$have_gas_1165":                                 ; preds = %"$out_of_gas_1164", %"$have_gas_1160"
  %"$consume_1166" = sub i64 %"$gasrem_1162", 1
  store i64 %"$consume_1166", i64* @_gasrem, align 8
  %bal_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1168" = icmp ugt i64 1, %"$gasrem_1167"
  br i1 %"$gascmp_1168", label %"$out_of_gas_1169", label %"$have_gas_1170"

"$out_of_gas_1169":                               ; preds = %"$have_gas_1165"
  call void @_out_of_gas()
  br label %"$have_gas_1170"

"$have_gas_1170":                                 ; preds = %"$out_of_gas_1169", %"$have_gas_1165"
  %"$consume_1171" = sub i64 %"$gasrem_1167", 1
  store i64 %"$consume_1171", i64* @_gasrem, align 8
  %"$bal_1172" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_1173_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1173_salloc" = call i8* @_salloc(i8* %"$adtval_1173_load", i64 17)
  %"$adtval_1173" = bitcast i8* %"$adtval_1173_salloc" to %CName_Some_Uint128*
  %"$adtgep_1174" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1173", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1174", align 1
  %"$adtgep_1175" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1173", i32 0, i32 1
  store %Uint128 %"$bal_1172", %Uint128* %"$adtgep_1175", align 8
  %"$adtptr_1176" = bitcast %CName_Some_Uint128* %"$adtval_1173" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1176", %TName_Option_Uint128** %bal_res, align 8
  %"$bal_res_1177" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$$bal_res_1177_1178" = bitcast %TName_Option_Uint128* %"$bal_res_1177" to i8*
  %"$_literal_cost_call_1179" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i8* %"$$bal_res_1177_1178")
  %"$gasrem_1180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1181" = icmp ugt i64 %"$_literal_cost_call_1179", %"$gasrem_1180"
  br i1 %"$gascmp_1181", label %"$out_of_gas_1182", label %"$have_gas_1183"

"$out_of_gas_1182":                               ; preds = %"$have_gas_1170"
  call void @_out_of_gas()
  br label %"$have_gas_1183"

"$have_gas_1183":                                 ; preds = %"$out_of_gas_1182", %"$have_gas_1170"
  %"$consume_1184" = sub i64 %"$gasrem_1180", %"$_literal_cost_call_1179"
  store i64 %"$consume_1184", i64* @_gasrem, align 8
  %"$execptr_load_1185" = load i8*, i8** @_execptr, align 8
  %"$bal_res_1187" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$update_value_1188" = bitcast %TName_Option_Uint128* %"$bal_res_1187" to i8*
  call void @_update_field(i8* %"$execptr_load_1185", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_3_bal_res_1186", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i32 0, i8* null, i8* %"$update_value_1188")
  %f = alloca %Uint128, align 8
  %"$execptr_load_1190" = load i8*, i8** @_execptr, align 8
  %"$f_x_as_address_1191" = alloca [20 x i8], align 1
  %"$x_as_address_1192" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1192", [20 x i8]* %"$f_x_as_address_1191", align 1
  %"$f_call_1193" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1190", [20 x i8]* %"$f_x_as_address_1191", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_1189", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_33", i32 0, i8* null, i32 1)
  %"$f_1194" = bitcast i8* %"$f_call_1193" to %Uint128*
  %"$f_1195" = load %Uint128, %Uint128* %"$f_1194", align 8
  store %Uint128 %"$f_1195", %Uint128* %f, align 8
  %"$_literal_cost_f_1196" = alloca %Uint128, align 8
  %"$f_1197" = load %Uint128, %Uint128* %f, align 8
  store %Uint128 %"$f_1197", %Uint128* %"$_literal_cost_f_1196", align 8
  %"$$_literal_cost_f_1196_1198" = bitcast %Uint128* %"$_literal_cost_f_1196" to i8*
  %"$_literal_cost_call_1199" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_33", i8* %"$$_literal_cost_f_1196_1198")
  %"$gasadd_1200" = add i64 %"$_literal_cost_call_1199", 0
  %"$gasrem_1201" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1202" = icmp ugt i64 %"$gasadd_1200", %"$gasrem_1201"
  br i1 %"$gascmp_1202", label %"$out_of_gas_1203", label %"$have_gas_1204"

"$out_of_gas_1203":                               ; preds = %"$have_gas_1183"
  call void @_out_of_gas()
  br label %"$have_gas_1204"

"$have_gas_1204":                                 ; preds = %"$out_of_gas_1203", %"$have_gas_1183"
  %"$consume_1205" = sub i64 %"$gasrem_1201", %"$gasadd_1200"
  store i64 %"$consume_1205", i64* @_gasrem, align 8
  %"$gasrem_1206" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1207" = icmp ugt i64 1, %"$gasrem_1206"
  br i1 %"$gascmp_1207", label %"$out_of_gas_1208", label %"$have_gas_1209"

"$out_of_gas_1208":                               ; preds = %"$have_gas_1204"
  call void @_out_of_gas()
  br label %"$have_gas_1209"

"$have_gas_1209":                                 ; preds = %"$out_of_gas_1208", %"$have_gas_1204"
  %"$consume_1210" = sub i64 %"$gasrem_1206", 1
  store i64 %"$consume_1210", i64* @_gasrem, align 8
  %f_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1211" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1212" = icmp ugt i64 1, %"$gasrem_1211"
  br i1 %"$gascmp_1212", label %"$out_of_gas_1213", label %"$have_gas_1214"

"$out_of_gas_1213":                               ; preds = %"$have_gas_1209"
  call void @_out_of_gas()
  br label %"$have_gas_1214"

"$have_gas_1214":                                 ; preds = %"$out_of_gas_1213", %"$have_gas_1209"
  %"$consume_1215" = sub i64 %"$gasrem_1211", 1
  store i64 %"$consume_1215", i64* @_gasrem, align 8
  %"$f_1216" = load %Uint128, %Uint128* %f, align 8
  %"$adtval_1217_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1217_salloc" = call i8* @_salloc(i8* %"$adtval_1217_load", i64 17)
  %"$adtval_1217" = bitcast i8* %"$adtval_1217_salloc" to %CName_Some_Uint128*
  %"$adtgep_1218" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1217", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1218", align 1
  %"$adtgep_1219" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1217", i32 0, i32 1
  store %Uint128 %"$f_1216", %Uint128* %"$adtgep_1219", align 8
  %"$adtptr_1220" = bitcast %CName_Some_Uint128* %"$adtval_1217" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1220", %TName_Option_Uint128** %f_res, align 8
  %"$f_res_1221" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$$f_res_1221_1222" = bitcast %TName_Option_Uint128* %"$f_res_1221" to i8*
  %"$_literal_cost_call_1223" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i8* %"$$f_res_1221_1222")
  %"$gasrem_1224" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1225" = icmp ugt i64 %"$_literal_cost_call_1223", %"$gasrem_1224"
  br i1 %"$gascmp_1225", label %"$out_of_gas_1226", label %"$have_gas_1227"

"$out_of_gas_1226":                               ; preds = %"$have_gas_1214"
  call void @_out_of_gas()
  br label %"$have_gas_1227"

"$have_gas_1227":                                 ; preds = %"$out_of_gas_1226", %"$have_gas_1214"
  %"$consume_1228" = sub i64 %"$gasrem_1224", %"$_literal_cost_call_1223"
  store i64 %"$consume_1228", i64* @_gasrem, align 8
  %"$execptr_load_1229" = load i8*, i8** @_execptr, align 8
  %"$f_res_1231" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$update_value_1232" = bitcast %TName_Option_Uint128* %"$f_res_1231" to i8*
  call void @_update_field(i8* %"$execptr_load_1229", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_3_f_res_1230", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i32 0, i8* null, i8* %"$update_value_1232")
  %g = alloca %TName_Bool*, align 8
  %"$execptr_load_1234" = load i8*, i8** @_execptr, align 8
  %"$g_x_as_address_1235" = alloca [20 x i8], align 1
  %"$x_as_address_1236" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1236", [20 x i8]* %"$g_x_as_address_1235", align 1
  %"$g_call_1237" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1234", [20 x i8]* %"$g_x_as_address_1235", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_1233", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_63", i32 0, i8* null, i32 1)
  %"$g_1238" = bitcast i8* %"$g_call_1237" to %TName_Bool*
  store %TName_Bool* %"$g_1238", %TName_Bool** %g, align 8
  %"$g_1239" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$$g_1239_1240" = bitcast %TName_Bool* %"$g_1239" to i8*
  %"$_literal_cost_call_1241" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_63", i8* %"$$g_1239_1240")
  %"$gasadd_1242" = add i64 %"$_literal_cost_call_1241", 0
  %"$gasrem_1243" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1244" = icmp ugt i64 %"$gasadd_1242", %"$gasrem_1243"
  br i1 %"$gascmp_1244", label %"$out_of_gas_1245", label %"$have_gas_1246"

"$out_of_gas_1245":                               ; preds = %"$have_gas_1227"
  call void @_out_of_gas()
  br label %"$have_gas_1246"

"$have_gas_1246":                                 ; preds = %"$out_of_gas_1245", %"$have_gas_1227"
  %"$consume_1247" = sub i64 %"$gasrem_1243", %"$gasadd_1242"
  store i64 %"$consume_1247", i64* @_gasrem, align 8
  %"$gasrem_1248" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1249" = icmp ugt i64 1, %"$gasrem_1248"
  br i1 %"$gascmp_1249", label %"$out_of_gas_1250", label %"$have_gas_1251"

"$out_of_gas_1250":                               ; preds = %"$have_gas_1246"
  call void @_out_of_gas()
  br label %"$have_gas_1251"

"$have_gas_1251":                                 ; preds = %"$out_of_gas_1250", %"$have_gas_1246"
  %"$consume_1252" = sub i64 %"$gasrem_1248", 1
  store i64 %"$consume_1252", i64* @_gasrem, align 8
  %g_res = alloca %TName_Option_Bool*, align 8
  %"$gasrem_1253" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1254" = icmp ugt i64 1, %"$gasrem_1253"
  br i1 %"$gascmp_1254", label %"$out_of_gas_1255", label %"$have_gas_1256"

"$out_of_gas_1255":                               ; preds = %"$have_gas_1251"
  call void @_out_of_gas()
  br label %"$have_gas_1256"

"$have_gas_1256":                                 ; preds = %"$out_of_gas_1255", %"$have_gas_1251"
  %"$consume_1257" = sub i64 %"$gasrem_1253", 1
  store i64 %"$consume_1257", i64* @_gasrem, align 8
  %"$g_1258" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$adtval_1259_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1259_salloc" = call i8* @_salloc(i8* %"$adtval_1259_load", i64 9)
  %"$adtval_1259" = bitcast i8* %"$adtval_1259_salloc" to %CName_Some_Bool*
  %"$adtgep_1260" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1259", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1260", align 1
  %"$adtgep_1261" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1259", i32 0, i32 1
  store %TName_Bool* %"$g_1258", %TName_Bool** %"$adtgep_1261", align 8
  %"$adtptr_1262" = bitcast %CName_Some_Bool* %"$adtval_1259" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_1262", %TName_Option_Bool** %g_res, align 8
  %"$g_res_1263" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$$g_res_1263_1264" = bitcast %TName_Option_Bool* %"$g_res_1263" to i8*
  %"$_literal_cost_call_1265" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_59", i8* %"$$g_res_1263_1264")
  %"$gasrem_1266" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1267" = icmp ugt i64 %"$_literal_cost_call_1265", %"$gasrem_1266"
  br i1 %"$gascmp_1267", label %"$out_of_gas_1268", label %"$have_gas_1269"

"$out_of_gas_1268":                               ; preds = %"$have_gas_1256"
  call void @_out_of_gas()
  br label %"$have_gas_1269"

"$have_gas_1269":                                 ; preds = %"$out_of_gas_1268", %"$have_gas_1256"
  %"$consume_1270" = sub i64 %"$gasrem_1266", %"$_literal_cost_call_1265"
  store i64 %"$consume_1270", i64* @_gasrem, align 8
  %"$execptr_load_1271" = load i8*, i8** @_execptr, align 8
  %"$g_res_1273" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$update_value_1274" = bitcast %TName_Option_Bool* %"$g_res_1273" to i8*
  call void @_update_field(i8* %"$execptr_load_1271", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_3_g_res_1272", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_59", i32 0, i8* null, i8* %"$update_value_1274")
  br label %"$matchsucc_1136"

"$None_1275":                                     ; preds = %"$have_gas_1134"
  %"$x_cast_1276" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1137" to %"CName_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  br label %"$matchsucc_1136"

"$empty_default_1140":                            ; preds = %"$have_gas_1134"
  br label %"$matchsucc_1136"

"$matchsucc_1136":                                ; preds = %"$None_1275", %"$have_gas_1269", %"$empty_default_1140"
  ret void
}

define void @CastTest6_3(i8* %0) {
entry:
  %"$_amount_1278" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1279" = bitcast i8* %"$_amount_1278" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1279", align 8
  %"$_origin_1280" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1281" = bitcast i8* %"$_origin_1280" to [20 x i8]*
  %"$_sender_1282" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1283" = bitcast i8* %"$_sender_1282" to [20 x i8]*
  %"$x_1284" = getelementptr i8, i8* %0, i32 56
  %"$x_1285" = bitcast i8* %"$x_1284" to [20 x i8]*
  call void @"$CastTest6_3_1118"(%Uint128 %_amount, [20 x i8]* %"$_origin_1281", [20 x i8]* %"$_sender_1283", [20 x i8]* %"$x_1285")
  ret void
}

define internal void @"$CastTest6_4_1286"(%Uint128 %_amount, [20 x i8]* %"$_origin_1287", [20 x i8]* %"$_sender_1288", [20 x i8]* %"$x_1289") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1287", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1288", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_1289", align 1
  %"$gasrem_1290" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1291" = icmp ugt i64 5, %"$gasrem_1290"
  br i1 %"$gascmp_1291", label %"$out_of_gas_1292", label %"$have_gas_1293"

"$out_of_gas_1292":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1293"

"$have_gas_1293":                                 ; preds = %"$out_of_gas_1292", %entry
  %"$consume_1294" = sub i64 %"$gasrem_1290", 5
  store i64 %"$consume_1294", i64* @_gasrem, align 8
  %x_cast = alloca %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, align 8
  %"$execptr_load_1295" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_1296" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_1296", align 1
  %"$_dynamic_typecast_call_1297" = call i8* @_dynamic_typecast(i8* %"$execptr_load_1295", [20 x i8]* %"$_dynamic_typecast_x_1296", %_TyDescrTy_Typ* @"$TyDescr_Addr_71")
  %"$_dynamic_typecast_1298" = bitcast i8* %"$_dynamic_typecast_call_1297" to %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  store %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$_dynamic_typecast_1298", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$gasrem_1299" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1300" = icmp ugt i64 2, %"$gasrem_1299"
  br i1 %"$gascmp_1300", label %"$out_of_gas_1301", label %"$have_gas_1302"

"$out_of_gas_1301":                               ; preds = %"$have_gas_1293"
  call void @_out_of_gas()
  br label %"$have_gas_1302"

"$have_gas_1302":                                 ; preds = %"$out_of_gas_1301", %"$have_gas_1293"
  %"$consume_1303" = sub i64 %"$gasrem_1299", 2
  store i64 %"$consume_1303", i64* @_gasrem, align 8
  %"$x_cast_1305" = load %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*, %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"** %x_cast, align 8
  %"$x_cast_tag_1306" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1305", i32 0, i32 0
  %"$x_cast_tag_1307" = load i8, i8* %"$x_cast_tag_1306", align 1
  switch i8 %"$x_cast_tag_1307", label %"$empty_default_1308" [
    i8 0, label %"$Some_1309"
    i8 1, label %"$None_1443"
  ]

"$Some_1309":                                     ; preds = %"$have_gas_1302"
  %"$x_cast_1310" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1305" to %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  %"$x_as_address_gep_1311" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end", %"CName_Some_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1310", i32 0, i32 1
  %"$x_as_address_load_1312" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_1311", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_1312", [20 x i8]* %x_as_address, align 1
  %bal = alloca %Uint128, align 8
  %"$execptr_load_1314" = load i8*, i8** @_execptr, align 8
  %"$bal_x_as_address_1315" = alloca [20 x i8], align 1
  %"$x_as_address_1316" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1316", [20 x i8]* %"$bal_x_as_address_1315", align 1
  %"$bal_call_1317" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1314", [20 x i8]* %"$bal_x_as_address_1315", i8* getelementptr inbounds ([9 x i8], [9 x i8]* @"$_balance_1313", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_33", i32 0, i8* null, i32 1)
  %"$bal_1318" = bitcast i8* %"$bal_call_1317" to %Uint128*
  %"$bal_1319" = load %Uint128, %Uint128* %"$bal_1318", align 8
  store %Uint128 %"$bal_1319", %Uint128* %bal, align 8
  %"$_literal_cost_bal_1320" = alloca %Uint128, align 8
  %"$bal_1321" = load %Uint128, %Uint128* %bal, align 8
  store %Uint128 %"$bal_1321", %Uint128* %"$_literal_cost_bal_1320", align 8
  %"$$_literal_cost_bal_1320_1322" = bitcast %Uint128* %"$_literal_cost_bal_1320" to i8*
  %"$_literal_cost_call_1323" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_33", i8* %"$$_literal_cost_bal_1320_1322")
  %"$gasadd_1324" = add i64 %"$_literal_cost_call_1323", 0
  %"$gasrem_1325" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1326" = icmp ugt i64 %"$gasadd_1324", %"$gasrem_1325"
  br i1 %"$gascmp_1326", label %"$out_of_gas_1327", label %"$have_gas_1328"

"$out_of_gas_1327":                               ; preds = %"$Some_1309"
  call void @_out_of_gas()
  br label %"$have_gas_1328"

"$have_gas_1328":                                 ; preds = %"$out_of_gas_1327", %"$Some_1309"
  %"$consume_1329" = sub i64 %"$gasrem_1325", %"$gasadd_1324"
  store i64 %"$consume_1329", i64* @_gasrem, align 8
  %"$gasrem_1330" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1331" = icmp ugt i64 1, %"$gasrem_1330"
  br i1 %"$gascmp_1331", label %"$out_of_gas_1332", label %"$have_gas_1333"

"$out_of_gas_1332":                               ; preds = %"$have_gas_1328"
  call void @_out_of_gas()
  br label %"$have_gas_1333"

"$have_gas_1333":                                 ; preds = %"$out_of_gas_1332", %"$have_gas_1328"
  %"$consume_1334" = sub i64 %"$gasrem_1330", 1
  store i64 %"$consume_1334", i64* @_gasrem, align 8
  %bal_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1336" = icmp ugt i64 1, %"$gasrem_1335"
  br i1 %"$gascmp_1336", label %"$out_of_gas_1337", label %"$have_gas_1338"

"$out_of_gas_1337":                               ; preds = %"$have_gas_1333"
  call void @_out_of_gas()
  br label %"$have_gas_1338"

"$have_gas_1338":                                 ; preds = %"$out_of_gas_1337", %"$have_gas_1333"
  %"$consume_1339" = sub i64 %"$gasrem_1335", 1
  store i64 %"$consume_1339", i64* @_gasrem, align 8
  %"$bal_1340" = load %Uint128, %Uint128* %bal, align 8
  %"$adtval_1341_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1341_salloc" = call i8* @_salloc(i8* %"$adtval_1341_load", i64 17)
  %"$adtval_1341" = bitcast i8* %"$adtval_1341_salloc" to %CName_Some_Uint128*
  %"$adtgep_1342" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1341", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1342", align 1
  %"$adtgep_1343" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1341", i32 0, i32 1
  store %Uint128 %"$bal_1340", %Uint128* %"$adtgep_1343", align 8
  %"$adtptr_1344" = bitcast %CName_Some_Uint128* %"$adtval_1341" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1344", %TName_Option_Uint128** %bal_res, align 8
  %"$bal_res_1345" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$$bal_res_1345_1346" = bitcast %TName_Option_Uint128* %"$bal_res_1345" to i8*
  %"$_literal_cost_call_1347" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i8* %"$$bal_res_1345_1346")
  %"$gasrem_1348" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1349" = icmp ugt i64 %"$_literal_cost_call_1347", %"$gasrem_1348"
  br i1 %"$gascmp_1349", label %"$out_of_gas_1350", label %"$have_gas_1351"

"$out_of_gas_1350":                               ; preds = %"$have_gas_1338"
  call void @_out_of_gas()
  br label %"$have_gas_1351"

"$have_gas_1351":                                 ; preds = %"$out_of_gas_1350", %"$have_gas_1338"
  %"$consume_1352" = sub i64 %"$gasrem_1348", %"$_literal_cost_call_1347"
  store i64 %"$consume_1352", i64* @_gasrem, align 8
  %"$execptr_load_1353" = load i8*, i8** @_execptr, align 8
  %"$bal_res_1355" = load %TName_Option_Uint128*, %TName_Option_Uint128** %bal_res, align 8
  %"$update_value_1356" = bitcast %TName_Option_Uint128* %"$bal_res_1355" to i8*
  call void @_update_field(i8* %"$execptr_load_1353", i8* getelementptr inbounds ([17 x i8], [17 x i8]* @"$test_6_4_bal_res_1354", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i32 0, i8* null, i8* %"$update_value_1356")
  %f = alloca %Uint128, align 8
  %"$execptr_load_1358" = load i8*, i8** @_execptr, align 8
  %"$f_x_as_address_1359" = alloca [20 x i8], align 1
  %"$x_as_address_1360" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1360", [20 x i8]* %"$f_x_as_address_1359", align 1
  %"$f_call_1361" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1358", [20 x i8]* %"$f_x_as_address_1359", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_1357", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Uint128_33", i32 0, i8* null, i32 1)
  %"$f_1362" = bitcast i8* %"$f_call_1361" to %Uint128*
  %"$f_1363" = load %Uint128, %Uint128* %"$f_1362", align 8
  store %Uint128 %"$f_1363", %Uint128* %f, align 8
  %"$_literal_cost_f_1364" = alloca %Uint128, align 8
  %"$f_1365" = load %Uint128, %Uint128* %f, align 8
  store %Uint128 %"$f_1365", %Uint128* %"$_literal_cost_f_1364", align 8
  %"$$_literal_cost_f_1364_1366" = bitcast %Uint128* %"$_literal_cost_f_1364" to i8*
  %"$_literal_cost_call_1367" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Uint128_33", i8* %"$$_literal_cost_f_1364_1366")
  %"$gasadd_1368" = add i64 %"$_literal_cost_call_1367", 0
  %"$gasrem_1369" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1370" = icmp ugt i64 %"$gasadd_1368", %"$gasrem_1369"
  br i1 %"$gascmp_1370", label %"$out_of_gas_1371", label %"$have_gas_1372"

"$out_of_gas_1371":                               ; preds = %"$have_gas_1351"
  call void @_out_of_gas()
  br label %"$have_gas_1372"

"$have_gas_1372":                                 ; preds = %"$out_of_gas_1371", %"$have_gas_1351"
  %"$consume_1373" = sub i64 %"$gasrem_1369", %"$gasadd_1368"
  store i64 %"$consume_1373", i64* @_gasrem, align 8
  %"$gasrem_1374" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1375" = icmp ugt i64 1, %"$gasrem_1374"
  br i1 %"$gascmp_1375", label %"$out_of_gas_1376", label %"$have_gas_1377"

"$out_of_gas_1376":                               ; preds = %"$have_gas_1372"
  call void @_out_of_gas()
  br label %"$have_gas_1377"

"$have_gas_1377":                                 ; preds = %"$out_of_gas_1376", %"$have_gas_1372"
  %"$consume_1378" = sub i64 %"$gasrem_1374", 1
  store i64 %"$consume_1378", i64* @_gasrem, align 8
  %f_res = alloca %TName_Option_Uint128*, align 8
  %"$gasrem_1379" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1380" = icmp ugt i64 1, %"$gasrem_1379"
  br i1 %"$gascmp_1380", label %"$out_of_gas_1381", label %"$have_gas_1382"

"$out_of_gas_1381":                               ; preds = %"$have_gas_1377"
  call void @_out_of_gas()
  br label %"$have_gas_1382"

"$have_gas_1382":                                 ; preds = %"$out_of_gas_1381", %"$have_gas_1377"
  %"$consume_1383" = sub i64 %"$gasrem_1379", 1
  store i64 %"$consume_1383", i64* @_gasrem, align 8
  %"$f_1384" = load %Uint128, %Uint128* %f, align 8
  %"$adtval_1385_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1385_salloc" = call i8* @_salloc(i8* %"$adtval_1385_load", i64 17)
  %"$adtval_1385" = bitcast i8* %"$adtval_1385_salloc" to %CName_Some_Uint128*
  %"$adtgep_1386" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1385", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1386", align 1
  %"$adtgep_1387" = getelementptr inbounds %CName_Some_Uint128, %CName_Some_Uint128* %"$adtval_1385", i32 0, i32 1
  store %Uint128 %"$f_1384", %Uint128* %"$adtgep_1387", align 8
  %"$adtptr_1388" = bitcast %CName_Some_Uint128* %"$adtval_1385" to %TName_Option_Uint128*
  store %TName_Option_Uint128* %"$adtptr_1388", %TName_Option_Uint128** %f_res, align 8
  %"$f_res_1389" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$$f_res_1389_1390" = bitcast %TName_Option_Uint128* %"$f_res_1389" to i8*
  %"$_literal_cost_call_1391" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i8* %"$$f_res_1389_1390")
  %"$gasrem_1392" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1393" = icmp ugt i64 %"$_literal_cost_call_1391", %"$gasrem_1392"
  br i1 %"$gascmp_1393", label %"$out_of_gas_1394", label %"$have_gas_1395"

"$out_of_gas_1394":                               ; preds = %"$have_gas_1382"
  call void @_out_of_gas()
  br label %"$have_gas_1395"

"$have_gas_1395":                                 ; preds = %"$out_of_gas_1394", %"$have_gas_1382"
  %"$consume_1396" = sub i64 %"$gasrem_1392", %"$_literal_cost_call_1391"
  store i64 %"$consume_1396", i64* @_gasrem, align 8
  %"$execptr_load_1397" = load i8*, i8** @_execptr, align 8
  %"$f_res_1399" = load %TName_Option_Uint128*, %TName_Option_Uint128** %f_res, align 8
  %"$update_value_1400" = bitcast %TName_Option_Uint128* %"$f_res_1399" to i8*
  call void @_update_field(i8* %"$execptr_load_1397", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_4_f_res_1398", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Uint128_60", i32 0, i8* null, i8* %"$update_value_1400")
  %g = alloca %TName_Bool*, align 8
  %"$execptr_load_1402" = load i8*, i8** @_execptr, align 8
  %"$g_x_as_address_1403" = alloca [20 x i8], align 1
  %"$x_as_address_1404" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1404", [20 x i8]* %"$g_x_as_address_1403", align 1
  %"$g_call_1405" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1402", [20 x i8]* %"$g_x_as_address_1403", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_1401", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_63", i32 0, i8* null, i32 1)
  %"$g_1406" = bitcast i8* %"$g_call_1405" to %TName_Bool*
  store %TName_Bool* %"$g_1406", %TName_Bool** %g, align 8
  %"$g_1407" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$$g_1407_1408" = bitcast %TName_Bool* %"$g_1407" to i8*
  %"$_literal_cost_call_1409" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_63", i8* %"$$g_1407_1408")
  %"$gasadd_1410" = add i64 %"$_literal_cost_call_1409", 0
  %"$gasrem_1411" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1412" = icmp ugt i64 %"$gasadd_1410", %"$gasrem_1411"
  br i1 %"$gascmp_1412", label %"$out_of_gas_1413", label %"$have_gas_1414"

"$out_of_gas_1413":                               ; preds = %"$have_gas_1395"
  call void @_out_of_gas()
  br label %"$have_gas_1414"

"$have_gas_1414":                                 ; preds = %"$out_of_gas_1413", %"$have_gas_1395"
  %"$consume_1415" = sub i64 %"$gasrem_1411", %"$gasadd_1410"
  store i64 %"$consume_1415", i64* @_gasrem, align 8
  %"$gasrem_1416" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1417" = icmp ugt i64 1, %"$gasrem_1416"
  br i1 %"$gascmp_1417", label %"$out_of_gas_1418", label %"$have_gas_1419"

"$out_of_gas_1418":                               ; preds = %"$have_gas_1414"
  call void @_out_of_gas()
  br label %"$have_gas_1419"

"$have_gas_1419":                                 ; preds = %"$out_of_gas_1418", %"$have_gas_1414"
  %"$consume_1420" = sub i64 %"$gasrem_1416", 1
  store i64 %"$consume_1420", i64* @_gasrem, align 8
  %g_res = alloca %TName_Option_Bool*, align 8
  %"$gasrem_1421" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1422" = icmp ugt i64 1, %"$gasrem_1421"
  br i1 %"$gascmp_1422", label %"$out_of_gas_1423", label %"$have_gas_1424"

"$out_of_gas_1423":                               ; preds = %"$have_gas_1419"
  call void @_out_of_gas()
  br label %"$have_gas_1424"

"$have_gas_1424":                                 ; preds = %"$out_of_gas_1423", %"$have_gas_1419"
  %"$consume_1425" = sub i64 %"$gasrem_1421", 1
  store i64 %"$consume_1425", i64* @_gasrem, align 8
  %"$g_1426" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$adtval_1427_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1427_salloc" = call i8* @_salloc(i8* %"$adtval_1427_load", i64 9)
  %"$adtval_1427" = bitcast i8* %"$adtval_1427_salloc" to %CName_Some_Bool*
  %"$adtgep_1428" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1427", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1428", align 1
  %"$adtgep_1429" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1427", i32 0, i32 1
  store %TName_Bool* %"$g_1426", %TName_Bool** %"$adtgep_1429", align 8
  %"$adtptr_1430" = bitcast %CName_Some_Bool* %"$adtval_1427" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_1430", %TName_Option_Bool** %g_res, align 8
  %"$g_res_1431" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$$g_res_1431_1432" = bitcast %TName_Option_Bool* %"$g_res_1431" to i8*
  %"$_literal_cost_call_1433" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_59", i8* %"$$g_res_1431_1432")
  %"$gasrem_1434" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1435" = icmp ugt i64 %"$_literal_cost_call_1433", %"$gasrem_1434"
  br i1 %"$gascmp_1435", label %"$out_of_gas_1436", label %"$have_gas_1437"

"$out_of_gas_1436":                               ; preds = %"$have_gas_1424"
  call void @_out_of_gas()
  br label %"$have_gas_1437"

"$have_gas_1437":                                 ; preds = %"$out_of_gas_1436", %"$have_gas_1424"
  %"$consume_1438" = sub i64 %"$gasrem_1434", %"$_literal_cost_call_1433"
  store i64 %"$consume_1438", i64* @_gasrem, align 8
  %"$execptr_load_1439" = load i8*, i8** @_execptr, align 8
  %"$g_res_1441" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$update_value_1442" = bitcast %TName_Option_Bool* %"$g_res_1441" to i8*
  call void @_update_field(i8* %"$execptr_load_1439", i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$test_6_4_g_res_1440", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_59", i32 0, i8* null, i8* %"$update_value_1442")
  br label %"$matchsucc_1304"

"$None_1443":                                     ; preds = %"$have_gas_1302"
  %"$x_cast_1444" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"* %"$x_cast_1305" to %"CName_None_ByStr20_with_contract_field_f_:_Uint128,_field_g_:_Bool_end"*
  %"$gasrem_1445" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1446" = icmp ugt i64 1, %"$gasrem_1445"
  br i1 %"$gascmp_1446", label %"$out_of_gas_1447", label %"$have_gas_1448"

"$out_of_gas_1447":                               ; preds = %"$None_1443"
  call void @_out_of_gas()
  br label %"$have_gas_1448"

"$have_gas_1448":                                 ; preds = %"$out_of_gas_1447", %"$None_1443"
  %"$consume_1449" = sub i64 %"$gasrem_1445", 1
  store i64 %"$consume_1449", i64* @_gasrem, align 8
  %res = alloca %TName_Bool*, align 8
  %"$gasrem_1450" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1451" = icmp ugt i64 1, %"$gasrem_1450"
  br i1 %"$gascmp_1451", label %"$out_of_gas_1452", label %"$have_gas_1453"

"$out_of_gas_1452":                               ; preds = %"$have_gas_1448"
  call void @_out_of_gas()
  br label %"$have_gas_1453"

"$have_gas_1453":                                 ; preds = %"$out_of_gas_1452", %"$have_gas_1448"
  %"$consume_1454" = sub i64 %"$gasrem_1450", 1
  store i64 %"$consume_1454", i64* @_gasrem, align 8
  %"$adtval_1455_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1455_salloc" = call i8* @_salloc(i8* %"$adtval_1455_load", i64 1)
  %"$adtval_1455" = bitcast i8* %"$adtval_1455_salloc" to %CName_True*
  %"$adtgep_1456" = getelementptr inbounds %CName_True, %CName_True* %"$adtval_1455", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1456", align 1
  %"$adtptr_1457" = bitcast %CName_True* %"$adtval_1455" to %TName_Bool*
  store %TName_Bool* %"$adtptr_1457", %TName_Bool** %res, align 8
  %"$res_1458" = load %TName_Bool*, %TName_Bool** %res, align 8
  %"$$res_1458_1459" = bitcast %TName_Bool* %"$res_1458" to i8*
  %"$_literal_cost_call_1460" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_63", i8* %"$$res_1458_1459")
  %"$gasrem_1461" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1462" = icmp ugt i64 %"$_literal_cost_call_1460", %"$gasrem_1461"
  br i1 %"$gascmp_1462", label %"$out_of_gas_1463", label %"$have_gas_1464"

"$out_of_gas_1463":                               ; preds = %"$have_gas_1453"
  call void @_out_of_gas()
  br label %"$have_gas_1464"

"$have_gas_1464":                                 ; preds = %"$out_of_gas_1463", %"$have_gas_1453"
  %"$consume_1465" = sub i64 %"$gasrem_1461", %"$_literal_cost_call_1460"
  store i64 %"$consume_1465", i64* @_gasrem, align 8
  %"$execptr_load_1466" = load i8*, i8** @_execptr, align 8
  %"$res_1468" = load %TName_Bool*, %TName_Bool** %res, align 8
  %"$update_value_1469" = bitcast %TName_Bool* %"$res_1468" to i8*
  call void @_update_field(i8* %"$execptr_load_1466", i8* getelementptr inbounds ([21 x i8], [21 x i8]* @"$test_6_4_failed_cast_1467", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_63", i32 0, i8* null, i8* %"$update_value_1469")
  br label %"$matchsucc_1304"

"$empty_default_1308":                            ; preds = %"$have_gas_1302"
  br label %"$matchsucc_1304"

"$matchsucc_1304":                                ; preds = %"$have_gas_1464", %"$have_gas_1437", %"$empty_default_1308"
  ret void
}

define void @CastTest6_4(i8* %0) {
entry:
  %"$_amount_1471" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1472" = bitcast i8* %"$_amount_1471" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1472", align 8
  %"$_origin_1473" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1474" = bitcast i8* %"$_origin_1473" to [20 x i8]*
  %"$_sender_1475" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1476" = bitcast i8* %"$_sender_1475" to [20 x i8]*
  %"$x_1477" = getelementptr i8, i8* %0, i32 56
  %"$x_1478" = bitcast i8* %"$x_1477" to [20 x i8]*
  call void @"$CastTest6_4_1286"(%Uint128 %_amount, [20 x i8]* %"$_origin_1474", [20 x i8]* %"$_sender_1476", [20 x i8]* %"$x_1478")
  ret void
}

define internal void @"$CastTest7_1479"(%Uint128 %_amount, [20 x i8]* %"$_origin_1480", [20 x i8]* %"$_sender_1481", [20 x i8]* %"$x_1482") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_1480", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_1481", align 1
  %x = load [20 x i8], [20 x i8]* %"$x_1482", align 1
  %"$gasrem_1483" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1484" = icmp ugt i64 4, %"$gasrem_1483"
  br i1 %"$gascmp_1484", label %"$out_of_gas_1485", label %"$have_gas_1486"

"$out_of_gas_1485":                               ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_1486"

"$have_gas_1486":                                 ; preds = %"$out_of_gas_1485", %entry
  %"$consume_1487" = sub i64 %"$gasrem_1483", 4
  store i64 %"$consume_1487", i64* @_gasrem, align 8
  %x_cast = alloca %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"*, align 8
  %"$execptr_load_1488" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_x_1489" = alloca [20 x i8], align 1
  store [20 x i8] %x, [20 x i8]* %"$_dynamic_typecast_x_1489", align 1
  %"$_dynamic_typecast_call_1490" = call i8* @_dynamic_typecast(i8* %"$execptr_load_1488", [20 x i8]* %"$_dynamic_typecast_x_1489", %_TyDescrTy_Typ* @"$TyDescr_Addr_68")
  %"$_dynamic_typecast_1491" = bitcast i8* %"$_dynamic_typecast_call_1490" to %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"*
  store %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"* %"$_dynamic_typecast_1491", %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"** %x_cast, align 8
  %"$gasrem_1492" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1493" = icmp ugt i64 2, %"$gasrem_1492"
  br i1 %"$gascmp_1493", label %"$out_of_gas_1494", label %"$have_gas_1495"

"$out_of_gas_1494":                               ; preds = %"$have_gas_1486"
  call void @_out_of_gas()
  br label %"$have_gas_1495"

"$have_gas_1495":                                 ; preds = %"$out_of_gas_1494", %"$have_gas_1486"
  %"$consume_1496" = sub i64 %"$gasrem_1492", 2
  store i64 %"$consume_1496", i64* @_gasrem, align 8
  %"$x_cast_1498" = load %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"*, %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"** %x_cast, align 8
  %"$x_cast_tag_1499" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end", %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"* %"$x_cast_1498", i32 0, i32 0
  %"$x_cast_tag_1500" = load i8, i8* %"$x_cast_tag_1499", align 1
  switch i8 %"$x_cast_tag_1500", label %"$empty_default_1501" [
    i8 0, label %"$Some_1502"
    i8 1, label %"$None_1635"
  ]

"$Some_1502":                                     ; preds = %"$have_gas_1495"
  %"$x_cast_1503" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"* %"$x_cast_1498" to %"CName_Some_ByStr20_with_contract_field_f_:_ByStr20_end"*
  %"$x_as_address_gep_1504" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_f_:_ByStr20_end", %"CName_Some_ByStr20_with_contract_field_f_:_ByStr20_end"* %"$x_cast_1503", i32 0, i32 1
  %"$x_as_address_load_1505" = load [20 x i8], [20 x i8]* %"$x_as_address_gep_1504", align 1
  %x_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$x_as_address_load_1505", [20 x i8]* %x_as_address, align 1
  %f = alloca [20 x i8], align 1
  %"$execptr_load_1507" = load i8*, i8** @_execptr, align 8
  %"$f_x_as_address_1508" = alloca [20 x i8], align 1
  %"$x_as_address_1509" = load [20 x i8], [20 x i8]* %x_as_address, align 1
  store [20 x i8] %"$x_as_address_1509", [20 x i8]* %"$f_x_as_address_1508", align 1
  %"$f_call_1510" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1507", [20 x i8]* %"$f_x_as_address_1508", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$f_1506", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Bystr20_51", i32 0, i8* null, i32 1)
  %"$f_1511" = bitcast i8* %"$f_call_1510" to [20 x i8]*
  %"$f_1512" = load [20 x i8], [20 x i8]* %"$f_1511", align 1
  store [20 x i8] %"$f_1512", [20 x i8]* %f, align 1
  %"$_literal_cost_f_1513" = alloca [20 x i8], align 1
  %"$f_1514" = load [20 x i8], [20 x i8]* %f, align 1
  store [20 x i8] %"$f_1514", [20 x i8]* %"$_literal_cost_f_1513", align 1
  %"$$_literal_cost_f_1513_1515" = bitcast [20 x i8]* %"$_literal_cost_f_1513" to i8*
  %"$_literal_cost_call_1516" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr20_51", i8* %"$$_literal_cost_f_1513_1515")
  %"$gasadd_1517" = add i64 %"$_literal_cost_call_1516", 0
  %"$gasrem_1518" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1519" = icmp ugt i64 %"$gasadd_1517", %"$gasrem_1518"
  br i1 %"$gascmp_1519", label %"$out_of_gas_1520", label %"$have_gas_1521"

"$out_of_gas_1520":                               ; preds = %"$Some_1502"
  call void @_out_of_gas()
  br label %"$have_gas_1521"

"$have_gas_1521":                                 ; preds = %"$out_of_gas_1520", %"$Some_1502"
  %"$consume_1522" = sub i64 %"$gasrem_1518", %"$gasadd_1517"
  store i64 %"$consume_1522", i64* @_gasrem, align 8
  %"$gasrem_1523" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1524" = icmp ugt i64 5, %"$gasrem_1523"
  br i1 %"$gascmp_1524", label %"$out_of_gas_1525", label %"$have_gas_1526"

"$out_of_gas_1525":                               ; preds = %"$have_gas_1521"
  call void @_out_of_gas()
  br label %"$have_gas_1526"

"$have_gas_1526":                                 ; preds = %"$out_of_gas_1525", %"$have_gas_1521"
  %"$consume_1527" = sub i64 %"$gasrem_1523", 5
  store i64 %"$consume_1527", i64* @_gasrem, align 8
  %f_cast = alloca %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*, align 8
  %"$execptr_load_1528" = load i8*, i8** @_execptr, align 8
  %"$_dynamic_typecast_f_1529" = alloca [20 x i8], align 1
  %"$f_1530" = load [20 x i8], [20 x i8]* %f, align 1
  store [20 x i8] %"$f_1530", [20 x i8]* %"$_dynamic_typecast_f_1529", align 1
  %"$_dynamic_typecast_call_1531" = call i8* @_dynamic_typecast(i8* %"$execptr_load_1528", [20 x i8]* %"$_dynamic_typecast_f_1529", %_TyDescrTy_Typ* @"$TyDescr_Addr_67")
  %"$_dynamic_typecast_1532" = bitcast i8* %"$_dynamic_typecast_call_1531" to %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*
  store %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* %"$_dynamic_typecast_1532", %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"** %f_cast, align 8
  %"$gasrem_1533" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1534" = icmp ugt i64 2, %"$gasrem_1533"
  br i1 %"$gascmp_1534", label %"$out_of_gas_1535", label %"$have_gas_1536"

"$out_of_gas_1535":                               ; preds = %"$have_gas_1526"
  call void @_out_of_gas()
  br label %"$have_gas_1536"

"$have_gas_1536":                                 ; preds = %"$out_of_gas_1535", %"$have_gas_1526"
  %"$consume_1537" = sub i64 %"$gasrem_1533", 2
  store i64 %"$consume_1537", i64* @_gasrem, align 8
  %"$f_cast_1539" = load %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*, %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"** %f_cast, align 8
  %"$f_cast_tag_1540" = getelementptr inbounds %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end", %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* %"$f_cast_1539", i32 0, i32 0
  %"$f_cast_tag_1541" = load i8, i8* %"$f_cast_tag_1540", align 1
  switch i8 %"$f_cast_tag_1541", label %"$empty_default_1542" [
    i8 0, label %"$Some_1543"
    i8 1, label %"$None_1633"
  ]

"$Some_1543":                                     ; preds = %"$have_gas_1536"
  %"$f_cast_1544" = bitcast %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* %"$f_cast_1539" to %"CName_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*
  %"$f_as_address_gep_1545" = getelementptr inbounds %"CName_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end", %"CName_Some_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* %"$f_cast_1544", i32 0, i32 1
  %"$f_as_address_load_1546" = load [20 x i8], [20 x i8]* %"$f_as_address_gep_1545", align 1
  %f_as_address = alloca [20 x i8], align 1
  store [20 x i8] %"$f_as_address_load_1546", [20 x i8]* %f_as_address, align 1
  %g = alloca %TName_Bool*, align 8
  %"$execptr_load_1548" = load i8*, i8** @_execptr, align 8
  %"$g_f_as_address_1549" = alloca [20 x i8], align 1
  %"$f_as_address_1550" = load [20 x i8], [20 x i8]* %f_as_address, align 1
  store [20 x i8] %"$f_as_address_1550", [20 x i8]* %"$g_f_as_address_1549", align 1
  %"$g_call_1551" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1548", [20 x i8]* %"$g_f_as_address_1549", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$g_1547", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_63", i32 0, i8* null, i32 1)
  %"$g_1552" = bitcast i8* %"$g_call_1551" to %TName_Bool*
  store %TName_Bool* %"$g_1552", %TName_Bool** %g, align 8
  %"$g_1553" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$$g_1553_1554" = bitcast %TName_Bool* %"$g_1553" to i8*
  %"$_literal_cost_call_1555" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_63", i8* %"$$g_1553_1554")
  %"$gasadd_1556" = add i64 %"$_literal_cost_call_1555", 0
  %"$gasrem_1557" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1558" = icmp ugt i64 %"$gasadd_1556", %"$gasrem_1557"
  br i1 %"$gascmp_1558", label %"$out_of_gas_1559", label %"$have_gas_1560"

"$out_of_gas_1559":                               ; preds = %"$Some_1543"
  call void @_out_of_gas()
  br label %"$have_gas_1560"

"$have_gas_1560":                                 ; preds = %"$out_of_gas_1559", %"$Some_1543"
  %"$consume_1561" = sub i64 %"$gasrem_1557", %"$gasadd_1556"
  store i64 %"$consume_1561", i64* @_gasrem, align 8
  %"$gasrem_1562" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1563" = icmp ugt i64 1, %"$gasrem_1562"
  br i1 %"$gascmp_1563", label %"$out_of_gas_1564", label %"$have_gas_1565"

"$out_of_gas_1564":                               ; preds = %"$have_gas_1560"
  call void @_out_of_gas()
  br label %"$have_gas_1565"

"$have_gas_1565":                                 ; preds = %"$out_of_gas_1564", %"$have_gas_1560"
  %"$consume_1566" = sub i64 %"$gasrem_1562", 1
  store i64 %"$consume_1566", i64* @_gasrem, align 8
  %g_res = alloca %TName_Option_Bool*, align 8
  %"$gasrem_1567" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1568" = icmp ugt i64 1, %"$gasrem_1567"
  br i1 %"$gascmp_1568", label %"$out_of_gas_1569", label %"$have_gas_1570"

"$out_of_gas_1569":                               ; preds = %"$have_gas_1565"
  call void @_out_of_gas()
  br label %"$have_gas_1570"

"$have_gas_1570":                                 ; preds = %"$out_of_gas_1569", %"$have_gas_1565"
  %"$consume_1571" = sub i64 %"$gasrem_1567", 1
  store i64 %"$consume_1571", i64* @_gasrem, align 8
  %"$g_1572" = load %TName_Bool*, %TName_Bool** %g, align 8
  %"$adtval_1573_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1573_salloc" = call i8* @_salloc(i8* %"$adtval_1573_load", i64 9)
  %"$adtval_1573" = bitcast i8* %"$adtval_1573_salloc" to %CName_Some_Bool*
  %"$adtgep_1574" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1573", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1574", align 1
  %"$adtgep_1575" = getelementptr inbounds %CName_Some_Bool, %CName_Some_Bool* %"$adtval_1573", i32 0, i32 1
  store %TName_Bool* %"$g_1572", %TName_Bool** %"$adtgep_1575", align 8
  %"$adtptr_1576" = bitcast %CName_Some_Bool* %"$adtval_1573" to %TName_Option_Bool*
  store %TName_Option_Bool* %"$adtptr_1576", %TName_Option_Bool** %g_res, align 8
  %"$g_res_1577" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$$g_res_1577_1578" = bitcast %TName_Option_Bool* %"$g_res_1577" to i8*
  %"$_literal_cost_call_1579" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_59", i8* %"$$g_res_1577_1578")
  %"$gasrem_1580" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1581" = icmp ugt i64 %"$_literal_cost_call_1579", %"$gasrem_1580"
  br i1 %"$gascmp_1581", label %"$out_of_gas_1582", label %"$have_gas_1583"

"$out_of_gas_1582":                               ; preds = %"$have_gas_1570"
  call void @_out_of_gas()
  br label %"$have_gas_1583"

"$have_gas_1583":                                 ; preds = %"$out_of_gas_1582", %"$have_gas_1570"
  %"$consume_1584" = sub i64 %"$gasrem_1580", %"$_literal_cost_call_1579"
  store i64 %"$consume_1584", i64* @_gasrem, align 8
  %"$execptr_load_1585" = load i8*, i8** @_execptr, align 8
  %"$g_res_1587" = load %TName_Option_Bool*, %TName_Option_Bool** %g_res, align 8
  %"$update_value_1588" = bitcast %TName_Option_Bool* %"$g_res_1587" to i8*
  call void @_update_field(i8* %"$execptr_load_1585", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_7_g_res_1586", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Bool_59", i32 0, i8* null, i8* %"$update_value_1588")
  %h = alloca %Int256, align 8
  %"$execptr_load_1590" = load i8*, i8** @_execptr, align 8
  %"$h_f_as_address_1591" = alloca [20 x i8], align 1
  %"$f_as_address_1592" = load [20 x i8], [20 x i8]* %f_as_address, align 1
  store [20 x i8] %"$f_as_address_1592", [20 x i8]* %"$h_f_as_address_1591", align 1
  %"$h_call_1593" = call i8* @_fetch_remote_field(i8* %"$execptr_load_1590", [20 x i8]* %"$h_f_as_address_1591", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$h_1589", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int256_35", i32 0, i8* null, i32 1)
  %"$h_1594" = bitcast i8* %"$h_call_1593" to %Int256*
  %"$h_1595" = load %Int256, %Int256* %"$h_1594", align 8
  store %Int256 %"$h_1595", %Int256* %h, align 8
  %"$_literal_cost_h_1596" = alloca %Int256, align 8
  %"$h_1597" = load %Int256, %Int256* %h, align 8
  store %Int256 %"$h_1597", %Int256* %"$_literal_cost_h_1596", align 8
  %"$$_literal_cost_h_1596_1598" = bitcast %Int256* %"$_literal_cost_h_1596" to i8*
  %"$_literal_cost_call_1599" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int256_35", i8* %"$$_literal_cost_h_1596_1598")
  %"$gasadd_1600" = add i64 %"$_literal_cost_call_1599", 0
  %"$gasrem_1601" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1602" = icmp ugt i64 %"$gasadd_1600", %"$gasrem_1601"
  br i1 %"$gascmp_1602", label %"$out_of_gas_1603", label %"$have_gas_1604"

"$out_of_gas_1603":                               ; preds = %"$have_gas_1583"
  call void @_out_of_gas()
  br label %"$have_gas_1604"

"$have_gas_1604":                                 ; preds = %"$out_of_gas_1603", %"$have_gas_1583"
  %"$consume_1605" = sub i64 %"$gasrem_1601", %"$gasadd_1600"
  store i64 %"$consume_1605", i64* @_gasrem, align 8
  %"$gasrem_1606" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1607" = icmp ugt i64 1, %"$gasrem_1606"
  br i1 %"$gascmp_1607", label %"$out_of_gas_1608", label %"$have_gas_1609"

"$out_of_gas_1608":                               ; preds = %"$have_gas_1604"
  call void @_out_of_gas()
  br label %"$have_gas_1609"

"$have_gas_1609":                                 ; preds = %"$out_of_gas_1608", %"$have_gas_1604"
  %"$consume_1610" = sub i64 %"$gasrem_1606", 1
  store i64 %"$consume_1610", i64* @_gasrem, align 8
  %h_res = alloca %TName_Option_Int256*, align 8
  %"$gasrem_1611" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1612" = icmp ugt i64 1, %"$gasrem_1611"
  br i1 %"$gascmp_1612", label %"$out_of_gas_1613", label %"$have_gas_1614"

"$out_of_gas_1613":                               ; preds = %"$have_gas_1609"
  call void @_out_of_gas()
  br label %"$have_gas_1614"

"$have_gas_1614":                                 ; preds = %"$out_of_gas_1613", %"$have_gas_1609"
  %"$consume_1615" = sub i64 %"$gasrem_1611", 1
  store i64 %"$consume_1615", i64* @_gasrem, align 8
  %"$h_1616" = load %Int256, %Int256* %h, align 8
  %"$adtval_1617_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_1617_salloc" = call i8* @_salloc(i8* %"$adtval_1617_load", i64 33)
  %"$adtval_1617" = bitcast i8* %"$adtval_1617_salloc" to %CName_Some_Int256*
  %"$adtgep_1618" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$adtval_1617", i32 0, i32 0
  store i8 0, i8* %"$adtgep_1618", align 1
  %"$adtgep_1619" = getelementptr inbounds %CName_Some_Int256, %CName_Some_Int256* %"$adtval_1617", i32 0, i32 1
  store %Int256 %"$h_1616", %Int256* %"$adtgep_1619", align 8
  %"$adtptr_1620" = bitcast %CName_Some_Int256* %"$adtval_1617" to %TName_Option_Int256*
  store %TName_Option_Int256* %"$adtptr_1620", %TName_Option_Int256** %h_res, align 8
  %"$h_res_1621" = load %TName_Option_Int256*, %TName_Option_Int256** %h_res, align 8
  %"$$h_res_1621_1622" = bitcast %TName_Option_Int256* %"$h_res_1621" to i8*
  %"$_literal_cost_call_1623" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int256_58", i8* %"$$h_res_1621_1622")
  %"$gasrem_1624" = load i64, i64* @_gasrem, align 8
  %"$gascmp_1625" = icmp ugt i64 %"$_literal_cost_call_1623", %"$gasrem_1624"
  br i1 %"$gascmp_1625", label %"$out_of_gas_1626", label %"$have_gas_1627"

"$out_of_gas_1626":                               ; preds = %"$have_gas_1614"
  call void @_out_of_gas()
  br label %"$have_gas_1627"

"$have_gas_1627":                                 ; preds = %"$out_of_gas_1626", %"$have_gas_1614"
  %"$consume_1628" = sub i64 %"$gasrem_1624", %"$_literal_cost_call_1623"
  store i64 %"$consume_1628", i64* @_gasrem, align 8
  %"$execptr_load_1629" = load i8*, i8** @_execptr, align 8
  %"$h_res_1631" = load %TName_Option_Int256*, %TName_Option_Int256** %h_res, align 8
  %"$update_value_1632" = bitcast %TName_Option_Int256* %"$h_res_1631" to i8*
  call void @_update_field(i8* %"$execptr_load_1629", i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$test_7_h_res_1630", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_Int256_58", i32 0, i8* null, i8* %"$update_value_1632")
  br label %"$matchsucc_1538"

"$None_1633":                                     ; preds = %"$have_gas_1536"
  %"$f_cast_1634" = bitcast %"TName_Option_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"* %"$f_cast_1539" to %"CName_None_ByStr20_with_contract_field_g_:_Bool,_field_h_:_Int256_end"*
  br label %"$matchsucc_1538"

"$empty_default_1542":                            ; preds = %"$have_gas_1536"
  br label %"$matchsucc_1538"

"$matchsucc_1538":                                ; preds = %"$None_1633", %"$have_gas_1627", %"$empty_default_1542"
  br label %"$matchsucc_1497"

"$None_1635":                                     ; preds = %"$have_gas_1495"
  %"$x_cast_1636" = bitcast %"TName_Option_ByStr20_with_contract_field_f_:_ByStr20_end"* %"$x_cast_1498" to %"CName_None_ByStr20_with_contract_field_f_:_ByStr20_end"*
  br label %"$matchsucc_1497"

"$empty_default_1501":                            ; preds = %"$have_gas_1495"
  br label %"$matchsucc_1497"

"$matchsucc_1497":                                ; preds = %"$None_1635", %"$matchsucc_1538", %"$empty_default_1501"
  ret void
}

define void @CastTest7(i8* %0) {
entry:
  %"$_amount_1638" = getelementptr i8, i8* %0, i32 0
  %"$_amount_1639" = bitcast i8* %"$_amount_1638" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_1639", align 8
  %"$_origin_1640" = getelementptr i8, i8* %0, i32 16
  %"$_origin_1641" = bitcast i8* %"$_origin_1640" to [20 x i8]*
  %"$_sender_1642" = getelementptr i8, i8* %0, i32 36
  %"$_sender_1643" = bitcast i8* %"$_sender_1642" to [20 x i8]*
  %"$x_1644" = getelementptr i8, i8* %0, i32 56
  %"$x_1645" = bitcast i8* %"$x_1644" to [20 x i8]*
  call void @"$CastTest7_1479"(%Uint128 %_amount, [20 x i8]* %"$_origin_1641", [20 x i8]* %"$_sender_1643", [20 x i8]* %"$x_1645")
  ret void
}
