

; gas_remaining: 4001996
; ModuleID = 'Ecdsa'
source_filename = "Ecdsa"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"$TyDescrTy_PrimTyp_10" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_46" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_45"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_45" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_47"**, %"$TyDescrTy_ADTTyp_46"* }
%"$TyDescrTy_ADTTyp_Constr_47" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_53" = type { i32, %"$TyDescr_AddrFieldTyp_52"* }
%"$TyDescr_AddrFieldTyp_52" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Int32 = type { i32 }
%TName_List_Message = type { i8, %CName_Cons_Message*, %CName_Nil_Message* }
%CName_Cons_Message = type <{ i8, i8*, %TName_List_Message* }>
%CName_Nil_Message = type <{ i8 }>
%Uint32 = type { i32 }
%"$ParamDescr_447" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_448" = type { %ParamDescrString, i32, %"$ParamDescr_447"* }
%"$$fundef_7_env_92" = type {}
%TName_Option_ByStr33 = type { i8, %CName_Some_ByStr33*, %CName_None_ByStr33* }
%CName_Some_ByStr33 = type <{ i8, [33 x i8] }>
%CName_None_ByStr33 = type <{ i8 }>
%Uint128 = type { i128 }
%Bystr = type { i8*, i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%String = type { i8*, i32 }

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_11" = global %"$TyDescrTy_PrimTyp_10" zeroinitializer
@"$TyDescr_Int32_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int32_Prim_11" to i8*) }
@"$TyDescr_Uint32_Prim_13" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 0 }
@"$TyDescr_Uint32_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint32_Prim_13" to i8*) }
@"$TyDescr_Int64_Prim_15" = global %"$TyDescrTy_PrimTyp_10" { i32 0, i32 1 }
@"$TyDescr_Int64_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int64_Prim_15" to i8*) }
@"$TyDescr_Uint64_Prim_17" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 1 }
@"$TyDescr_Uint64_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint64_Prim_17" to i8*) }
@"$TyDescr_Int128_Prim_19" = global %"$TyDescrTy_PrimTyp_10" { i32 0, i32 2 }
@"$TyDescr_Int128_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int128_Prim_19" to i8*) }
@"$TyDescr_Uint128_Prim_21" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 2 }
@"$TyDescr_Uint128_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint128_Prim_21" to i8*) }
@"$TyDescr_Int256_Prim_23" = global %"$TyDescrTy_PrimTyp_10" { i32 0, i32 3 }
@"$TyDescr_Int256_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Int256_Prim_23" to i8*) }
@"$TyDescr_Uint256_Prim_25" = global %"$TyDescrTy_PrimTyp_10" { i32 1, i32 3 }
@"$TyDescr_Uint256_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Uint256_Prim_25" to i8*) }
@"$TyDescr_String_Prim_27" = global %"$TyDescrTy_PrimTyp_10" { i32 2, i32 0 }
@"$TyDescr_String_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_String_Prim_27" to i8*) }
@"$TyDescr_Bnum_Prim_29" = global %"$TyDescrTy_PrimTyp_10" { i32 3, i32 0 }
@"$TyDescr_Bnum_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Bnum_Prim_29" to i8*) }
@"$TyDescr_Message_Prim_31" = global %"$TyDescrTy_PrimTyp_10" { i32 4, i32 0 }
@"$TyDescr_Message_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Message_Prim_31" to i8*) }
@"$TyDescr_Event_Prim_33" = global %"$TyDescrTy_PrimTyp_10" { i32 5, i32 0 }
@"$TyDescr_Event_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Event_Prim_33" to i8*) }
@"$TyDescr_Exception_Prim_35" = global %"$TyDescrTy_PrimTyp_10" { i32 6, i32 0 }
@"$TyDescr_Exception_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Exception_Prim_35" to i8*) }
@"$TyDescr_Bystr_Prim_37" = global %"$TyDescrTy_PrimTyp_10" { i32 7, i32 0 }
@"$TyDescr_Bystr_38" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Bystr_Prim_37" to i8*) }
@"$TyDescr_Bystr64_Prim_39" = global %"$TyDescrTy_PrimTyp_10" { i32 8, i32 64 }
@"$TyDescr_Bystr64_40" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Bystr64_Prim_39" to i8*) }
@"$TyDescr_Bystr33_Prim_41" = global %"$TyDescrTy_PrimTyp_10" { i32 8, i32 33 }
@"$TyDescr_Bystr33_42" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Bystr33_Prim_41" to i8*) }
@"$TyDescr_Bystr20_Prim_43" = global %"$TyDescrTy_PrimTyp_10" { i32 8, i32 20 }
@"$TyDescr_Bystr20_44" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_10"* @"$TyDescr_Bystr20_Prim_43" to i8*) }
@"$TyDescr_ADT_Bool_48" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_45"* @"$TyDescr_Bool_ADTTyp_Specl_64" to i8*) }
@"$TyDescr_ADT_Option_ByStr33_49" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_45"* @"$TyDescr_Option_ByStr33_ADTTyp_Specl_76" to i8*) }
@"$TyDescr_ADT_List_Message_50" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_45"* @"$TyDescr_List_Message_ADTTyp_Specl_88" to i8*) }
@"$TyDescr_Addr_54" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_53"* @"$TyDescr_AddrFields_91" to i8*) }
@"$TyDescr_Bool_ADTTyp_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_46" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_66", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_45"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_45"*], [1 x %"$TyDescrTy_ADTTyp_Specl_45"*]* @"$TyDescr_Bool_ADTTyp_m_specls_65", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_56" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_57" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_47" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_57", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_56", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_59" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_60" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_61" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_47" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_60", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_59", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_62" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_47"*] [%"$TyDescrTy_ADTTyp_Constr_47"* @"$TyDescr_Bool_True_ADTTyp_Constr_58", %"$TyDescrTy_ADTTyp_Constr_47"* @"$TyDescr_Bool_False_ADTTyp_Constr_61"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_63" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_45" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_63", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_47"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_47"*], [2 x %"$TyDescrTy_ADTTyp_Constr_47"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_62", i32 0, i32 0), %"$TyDescrTy_ADTTyp_46"* @"$TyDescr_Bool_ADTTyp_55" }
@"$TyDescr_Bool_ADTTyp_m_specls_65" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_45"*] [%"$TyDescrTy_ADTTyp_Specl_45"* @"$TyDescr_Bool_ADTTyp_Specl_64"]
@"$TyDescr_ADT_Bool_66" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_Option_ADTTyp_67" = unnamed_addr constant %"$TyDescrTy_ADTTyp_46" { %TyDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$TyDescr_ADT_Option_78", i32 0, i32 0), i32 6 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_45"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_45"*], [1 x %"$TyDescrTy_ADTTyp_Specl_45"*]* @"$TyDescr_Option_ADTTyp_m_specls_77", i32 0, i32 0) }
@"$TyDescr_Option_Some_ByStr33_Constr_m_args_68" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr33_42"]
@"$TyDescr_ADT_Some_69" = unnamed_addr constant [4 x i8] c"Some"
@"$TyDescr_Option_Some_ByStr33_ADTTyp_Constr_70" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_47" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Some_69", i32 0, i32 0), i32 4 }, i32 1, %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_Some_ByStr33_Constr_m_args_68", i32 0, i32 0) }
@"$TyDescr_Option_None_ByStr33_Constr_m_args_71" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_None_72" = unnamed_addr constant [4 x i8] c"None"
@"$TyDescr_Option_None_ByStr33_ADTTyp_Constr_73" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_47" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_None_72", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_None_ByStr33_Constr_m_args_71", i32 0, i32 0) }
@"$TyDescr_Option_ByStr33_ADTTyp_Specl_m_constrs_74" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_47"*] [%"$TyDescrTy_ADTTyp_Constr_47"* @"$TyDescr_Option_Some_ByStr33_ADTTyp_Constr_70", %"$TyDescrTy_ADTTyp_Constr_47"* @"$TyDescr_Option_None_ByStr33_ADTTyp_Constr_73"]
@"$TyDescr_Option_ByStr33_ADTTyp_Specl_m_TArgs_75" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Bystr33_42"]
@"$TyDescr_Option_ByStr33_ADTTyp_Specl_76" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_45" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_Option_ByStr33_ADTTyp_Specl_m_TArgs_75", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_47"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_47"*], [2 x %"$TyDescrTy_ADTTyp_Constr_47"*]* @"$TyDescr_Option_ByStr33_ADTTyp_Specl_m_constrs_74", i32 0, i32 0), %"$TyDescrTy_ADTTyp_46"* @"$TyDescr_Option_ADTTyp_67" }
@"$TyDescr_Option_ADTTyp_m_specls_77" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_45"*] [%"$TyDescrTy_ADTTyp_Specl_45"* @"$TyDescr_Option_ByStr33_ADTTyp_Specl_76"]
@"$TyDescr_ADT_Option_78" = unnamed_addr constant [6 x i8] c"Option"
@"$TyDescr_List_ADTTyp_79" = unnamed_addr constant %"$TyDescrTy_ADTTyp_46" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_90", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_45"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_45"*], [1 x %"$TyDescrTy_ADTTyp_Specl_45"*]* @"$TyDescr_List_ADTTyp_m_specls_89", i32 0, i32 0) }
@"$TyDescr_List_Cons_Message_Constr_m_args_80" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_32", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_50"]
@"$TyDescr_ADT_Cons_81" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Message_ADTTyp_Constr_82" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_47" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_81", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Message_Constr_m_args_80", i32 0, i32 0) }
@"$TyDescr_List_Nil_Message_Constr_m_args_83" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_84" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Message_ADTTyp_Constr_85" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_47" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_84", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Message_Constr_m_args_83", i32 0, i32 0) }
@"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_86" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_47"*] [%"$TyDescrTy_ADTTyp_Constr_47"* @"$TyDescr_List_Cons_Message_ADTTyp_Constr_82", %"$TyDescrTy_ADTTyp_Constr_47"* @"$TyDescr_List_Nil_Message_ADTTyp_Constr_85"]
@"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_87" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Message_32"]
@"$TyDescr_List_Message_ADTTyp_Specl_88" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_45" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_TArgs_87", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_47"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_47"*], [2 x %"$TyDescrTy_ADTTyp_Constr_47"*]* @"$TyDescr_List_Message_ADTTyp_Specl_m_constrs_86", i32 0, i32 0), %"$TyDescrTy_ADTTyp_46"* @"$TyDescr_List_ADTTyp_79" }
@"$TyDescr_List_ADTTyp_m_specls_89" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_45"*] [%"$TyDescrTy_ADTTyp_Specl_45"* @"$TyDescr_List_Message_ADTTyp_Specl_88"]
@"$TyDescr_ADT_List_90" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_AddrFields_91" = unnamed_addr constant %"$TyDescr_AddrTyp_53" { i32 -3, %"$TyDescr_AddrFieldTyp_52"* null }
@"$_gas_charge_acc_2" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accEcdsa_0" = global %Int32 zeroinitializer
@ecdsa.one_msg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$pub_key_155" = unnamed_addr constant [8 x i8] c"pub_key\00"
@"$pub_key_162" = unnamed_addr constant [8 x i8] c"pub_key\00"
@"$stringlit_239" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_244" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_247" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_254" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_261" = unnamed_addr constant [6 x i8] c"status"
@"$stringlit_266" = unnamed_addr constant [23 x i8] c"verification successful"
@"$stringlit_309" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_314" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_317" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_324" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_331" = unnamed_addr constant [6 x i8] c"status"
@"$stringlit_336" = unnamed_addr constant [19 x i8] c"verification failed"
@"$stringlit_379" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_384" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_387" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_394" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_401" = unnamed_addr constant [6 x i8] c"status"
@"$stringlit_406" = unnamed_addr constant [12 x i8] c"no key error"
@_tydescr_table = constant [21 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_50", %_TyDescrTy_Typ* @"$TyDescr_Event_34", %_TyDescrTy_Typ* @"$TyDescr_Int64_16", %_TyDescrTy_Typ* @"$TyDescr_Addr_54", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_48", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_44", %_TyDescrTy_Typ* @"$TyDescr_Bystr33_42", %_TyDescrTy_Typ* @"$TyDescr_Uint256_26", %_TyDescrTy_Typ* @"$TyDescr_Uint32_14", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr33_49", %_TyDescrTy_Typ* @"$TyDescr_Bystr64_40", %_TyDescrTy_Typ* @"$TyDescr_Uint64_18", %_TyDescrTy_Typ* @"$TyDescr_Bnum_30", %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ* @"$TyDescr_Exception_36", %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ* @"$TyDescr_Int256_24", %_TyDescrTy_Typ* @"$TyDescr_Int128_20", %_TyDescrTy_Typ* @"$TyDescr_Bystr_38", %_TyDescrTy_Typ* @"$TyDescr_Message_32", %_TyDescrTy_Typ* @"$TyDescr_Int32_12"]
@_tydescr_table_length = constant i32 21
@"$pname__scilla_version_449" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_450" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_451" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_447"] [%"$ParamDescr_447" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_449", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_14" }, %"$ParamDescr_447" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_450", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_44" }, %"$ParamDescr_447" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_451", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_30" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_452" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_453" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_454" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_msg_455" = unnamed_addr constant [3 x i8] c"msg"
@"$tpname_sig_456" = unnamed_addr constant [3 x i8] c"sig"
@"$tparams_verify_457" = unnamed_addr constant [5 x %"$ParamDescr_447"] [%"$ParamDescr_447" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_452", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_22" }, %"$ParamDescr_447" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_453", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_54" }, %"$ParamDescr_447" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_454", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_54" }, %"$ParamDescr_447" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tpname_msg_455", i32 0, i32 0), i32 3 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr_38" }, %"$ParamDescr_447" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tpname_sig_456", i32 0, i32 0), i32 3 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr64_40" }]
@"$tname_verify_458" = unnamed_addr constant [6 x i8] c"verify"
@_transition_parameters = constant [1 x %"$TransDescr_448"] [%"$TransDescr_448" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_verify_458", i32 0, i32 0), i32 6 }, i32 5, %"$ParamDescr_447"* getelementptr inbounds ([5 x %"$ParamDescr_447"], [5 x %"$ParamDescr_447"]* @"$tparams_verify_457", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define internal %TName_List_Message* @"$fundef_7"(%"$$fundef_7_env_92"* %0, i8* %1) !dbg !4 {
entry:
  %"$retval_8" = alloca %TName_List_Message*, align 8
  %"$gasrem_93" = load i64, i64* @_gasrem, align 8
  %"$gascmp_94" = icmp ugt i64 1, %"$gasrem_93"
  br i1 %"$gascmp_94", label %"$out_of_gas_95", label %"$have_gas_96"

"$out_of_gas_95":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_96"

"$have_gas_96":                                   ; preds = %"$out_of_gas_95", %entry
  %"$consume_97" = sub i64 %"$gasrem_93", 1
  store i64 %"$consume_97", i64* @_gasrem, align 8
  %nil_msg = alloca %TName_List_Message*, align 8
  %"$gasrem_98" = load i64, i64* @_gasrem, align 8
  %"$gascmp_99" = icmp ugt i64 1, %"$gasrem_98"
  br i1 %"$gascmp_99", label %"$out_of_gas_100", label %"$have_gas_101"

"$out_of_gas_100":                                ; preds = %"$have_gas_96"
  call void @_out_of_gas()
  br label %"$have_gas_101"

"$have_gas_101":                                  ; preds = %"$out_of_gas_100", %"$have_gas_96"
  %"$consume_102" = sub i64 %"$gasrem_98", 1
  store i64 %"$consume_102", i64* @_gasrem, align 8
  %"$adtval_103_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_103_salloc" = call i8* @_salloc(i8* %"$adtval_103_load", i64 1)
  %"$adtval_103" = bitcast i8* %"$adtval_103_salloc" to %CName_Nil_Message*
  %"$adtgep_104" = getelementptr inbounds %CName_Nil_Message, %CName_Nil_Message* %"$adtval_103", i32 0, i32 0
  store i8 1, i8* %"$adtgep_104", align 1
  %"$adtptr_105" = bitcast %CName_Nil_Message* %"$adtval_103" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_105", %TName_List_Message** %nil_msg, align 8, !dbg !8
  %"$gasrem_106" = load i64, i64* @_gasrem, align 8
  %"$gascmp_107" = icmp ugt i64 1, %"$gasrem_106"
  br i1 %"$gascmp_107", label %"$out_of_gas_108", label %"$have_gas_109"

"$out_of_gas_108":                                ; preds = %"$have_gas_101"
  call void @_out_of_gas()
  br label %"$have_gas_109"

"$have_gas_109":                                  ; preds = %"$out_of_gas_108", %"$have_gas_101"
  %"$consume_110" = sub i64 %"$gasrem_106", 1
  store i64 %"$consume_110", i64* @_gasrem, align 8
  %"$nil_msg_111" = load %TName_List_Message*, %TName_List_Message** %nil_msg, align 8
  %"$adtval_112_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_112_salloc" = call i8* @_salloc(i8* %"$adtval_112_load", i64 17)
  %"$adtval_112" = bitcast i8* %"$adtval_112_salloc" to %CName_Cons_Message*
  %"$adtgep_113" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_112", i32 0, i32 0
  store i8 0, i8* %"$adtgep_113", align 1
  %"$adtgep_114" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_112", i32 0, i32 1
  store i8* %1, i8** %"$adtgep_114", align 8
  %"$adtgep_115" = getelementptr inbounds %CName_Cons_Message, %CName_Cons_Message* %"$adtval_112", i32 0, i32 2
  store %TName_List_Message* %"$nil_msg_111", %TName_List_Message** %"$adtgep_115", align 8
  %"$adtptr_116" = bitcast %CName_Cons_Message* %"$adtval_112" to %TName_List_Message*
  store %TName_List_Message* %"$adtptr_116", %TName_List_Message** %"$retval_8", align 8, !dbg !9
  %"$$retval_8_117" = load %TName_List_Message*, %TName_List_Message** %"$retval_8", align 8
  ret %TName_List_Message* %"$$retval_8_117"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() !dbg !10 {
entry:
  %"$gasrem_118" = load i64, i64* @_gasrem, align 8
  %"$gascmp_119" = icmp ugt i64 5, %"$gasrem_118"
  br i1 %"$gascmp_119", label %"$out_of_gas_120", label %"$have_gas_121"

"$out_of_gas_120":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_121"

"$have_gas_121":                                  ; preds = %"$out_of_gas_120", %entry
  %"$consume_122" = sub i64 %"$gasrem_118", 5
  store i64 %"$consume_122", i64* @_gasrem, align 8
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_2", align 4, !dbg !12
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 2, %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %"$have_gas_121"
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %"$have_gas_121"
  %"$consume_127" = sub i64 %"$gasrem_123", 2
  store i64 %"$consume_127", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_1", align 4, !dbg !12
  %"$gasrem_128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_129" = icmp ugt i64 6, %"$gasrem_128"
  br i1 %"$gascmp_129", label %"$out_of_gas_130", label %"$have_gas_131"

"$out_of_gas_130":                                ; preds = %"$have_gas_126"
  call void @_out_of_gas()
  br label %"$have_gas_131"

"$have_gas_131":                                  ; preds = %"$out_of_gas_130", %"$have_gas_126"
  %"$consume_132" = sub i64 %"$gasrem_128", 6
  store i64 %"$consume_132", i64* @_gasrem, align 8
  store %Int32 { i32 6 }, %Int32* @"$_gas_charge_accEcdsa_0", align 4, !dbg !12
  %"$gasrem_133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_134" = icmp ugt i64 1, %"$gasrem_133"
  br i1 %"$gascmp_134", label %"$out_of_gas_135", label %"$have_gas_136"

"$out_of_gas_135":                                ; preds = %"$have_gas_131"
  call void @_out_of_gas()
  br label %"$have_gas_136"

"$have_gas_136":                                  ; preds = %"$out_of_gas_135", %"$have_gas_131"
  %"$consume_137" = sub i64 %"$gasrem_133", 1
  store i64 %"$consume_137", i64* @_gasrem, align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_7_env_92"*, i8*)* @"$fundef_7" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ecdsa.one_msg, align 8, !dbg !13
  ret void
}

define void @_deploy_ops() !dbg !14 {
entry:
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 1, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %entry
  %"$consume_145" = sub i64 %"$gasrem_141", 1
  store i64 %"$consume_145", i64* @_gasrem, align 8
  %"$pub_key_9" = alloca %TName_Option_ByStr33*, align 8
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_144"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_144"
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem, align 8
  %"$adtval_151_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_151_salloc" = call i8* @_salloc(i8* %"$adtval_151_load", i64 1)
  %"$adtval_151" = bitcast i8* %"$adtval_151_salloc" to %CName_None_ByStr33*
  %"$adtgep_152" = getelementptr inbounds %CName_None_ByStr33, %CName_None_ByStr33* %"$adtval_151", i32 0, i32 0
  store i8 1, i8* %"$adtgep_152", align 1
  %"$adtptr_153" = bitcast %CName_None_ByStr33* %"$adtval_151" to %TName_Option_ByStr33*
  store %TName_Option_ByStr33* %"$adtptr_153", %TName_Option_ByStr33** %"$pub_key_9", align 8, !dbg !15
  %"$execptr_load_154" = load i8*, i8** @_execptr, align 8
  %"$$pub_key_9_156" = load %TName_Option_ByStr33*, %TName_Option_ByStr33** %"$pub_key_9", align 8
  %"$update_value_157" = bitcast %TName_Option_ByStr33* %"$$pub_key_9_156" to i8*
  call void @_update_field(i8* %"$execptr_load_154", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$pub_key_155", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr33_49", i32 0, i8* null, i8* %"$update_value_157"), !dbg !15
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$verify_158"(%Uint128 %_amount, [20 x i8]* %"$_origin_159", [20 x i8]* %"$_sender_160", %Bystr %msg, [64 x i8]* %"$sig_161") !dbg !16 {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_159", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_160", align 1
  %sig = load [64 x i8], [64 x i8]* %"$sig_161", align 1
  %pubk_o = alloca %TName_Option_ByStr33*, align 8
  %"$execptr_load_163" = load i8*, i8** @_execptr, align 8
  %"$pubk_o_call_164" = call i8* @_fetch_field(i8* %"$execptr_load_163", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$pub_key_162", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr33_49", i32 0, i8* null, i32 1), !dbg !17
  %"$pubk_o_165" = bitcast i8* %"$pubk_o_call_164" to %TName_Option_ByStr33*
  store %TName_Option_ByStr33* %"$pubk_o_165", %TName_Option_ByStr33** %pubk_o, align 8
  %"$pubk_o_166" = load %TName_Option_ByStr33*, %TName_Option_ByStr33** %pubk_o, align 8
  %"$$pubk_o_166_167" = bitcast %TName_Option_ByStr33* %"$pubk_o_166" to i8*
  %"$_literal_cost_call_168" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr33_49", i8* %"$$pubk_o_166_167")
  %"$gasadd_169" = add i64 %"$_literal_cost_call_168", 0
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 %"$gasadd_169", %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %entry
  %"$consume_174" = sub i64 %"$gasrem_170", %"$gasadd_169"
  store i64 %"$consume_174", i64* @_gasrem, align 8
  %"$gasrem_175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_176" = icmp ugt i64 2, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %"$have_gas_173"
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %"$have_gas_173"
  %"$consume_179" = sub i64 %"$gasrem_175", 2
  store i64 %"$consume_179", i64* @_gasrem, align 8
  %"$pubk_o_181" = load %TName_Option_ByStr33*, %TName_Option_ByStr33** %pubk_o, align 8
  %"$pubk_o_tag_182" = getelementptr inbounds %TName_Option_ByStr33, %TName_Option_ByStr33* %"$pubk_o_181", i32 0, i32 0
  %"$pubk_o_tag_183" = load i8, i8* %"$pubk_o_tag_182", align 1
  switch i8 %"$pubk_o_tag_183", label %"$empty_default_184" [
    i8 0, label %"$Some_185"
    i8 1, label %"$None_366"
  ], !dbg !18

"$Some_185":                                      ; preds = %"$have_gas_178"
  %"$pubk_o_186" = bitcast %TName_Option_ByStr33* %"$pubk_o_181" to %CName_Some_ByStr33*
  %"$pubk_gep_187" = getelementptr inbounds %CName_Some_ByStr33, %CName_Some_ByStr33* %"$pubk_o_186", i32 0, i32 1
  %"$pubk_load_188" = load [33 x i8], [33 x i8]* %"$pubk_gep_187", align 1
  %pubk = alloca [33 x i8], align 1
  store [33 x i8] %"$pubk_load_188", [33 x i8]* %pubk, align 1
  %"$gasrem_189" = load i64, i64* @_gasrem, align 8
  %"$gascmp_190" = icmp ugt i64 1, %"$gasrem_189"
  br i1 %"$gascmp_190", label %"$out_of_gas_191", label %"$have_gas_192"

"$out_of_gas_191":                                ; preds = %"$Some_185"
  call void @_out_of_gas()
  br label %"$have_gas_192"

"$have_gas_192":                                  ; preds = %"$out_of_gas_191", %"$Some_185"
  %"$consume_193" = sub i64 %"$gasrem_189", 1
  store i64 %"$consume_193", i64* @_gasrem, align 8
  %"$sig_3" = alloca %TName_Bool*, align 8
  %"$_literal_cost_msg_194" = alloca %Bystr, align 8
  store %Bystr %msg, %Bystr* %"$_literal_cost_msg_194", align 8
  %"$$_literal_cost_msg_194_195" = bitcast %Bystr* %"$_literal_cost_msg_194" to i8*
  %"$_literal_cost_call_196" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_38", i8* %"$$_literal_cost_msg_194_195")
  %"$gasadd_197" = add i64 %"$_literal_cost_call_196", 66
  %"$gasdivceil_198" = urem i64 %"$gasadd_197", 64
  %"$gasdivceil_199" = udiv i64 %"$gasadd_197", 64
  %"$gasdivceil_200" = icmp eq i64 %"$gasdivceil_198", 0
  %"$gasdivceil_201" = add i64 %"$gasdivceil_199", 1
  %"$gasdivceil_202" = select i1 %"$gasdivceil_200", i64 %"$gasdivceil_199", i64 %"$gasdivceil_201"
  %"$gasmul_203" = mul i64 15, %"$gasdivceil_202"
  %"$gasadd_204" = add i64 250, %"$gasmul_203"
  %"$gasrem_205" = load i64, i64* @_gasrem, align 8
  %"$gascmp_206" = icmp ugt i64 %"$gasadd_204", %"$gasrem_205"
  br i1 %"$gascmp_206", label %"$out_of_gas_207", label %"$have_gas_208"

"$out_of_gas_207":                                ; preds = %"$have_gas_192"
  call void @_out_of_gas()
  br label %"$have_gas_208"

"$have_gas_208":                                  ; preds = %"$out_of_gas_207", %"$have_gas_192"
  %"$consume_209" = sub i64 %"$gasrem_205", %"$gasadd_204"
  store i64 %"$consume_209", i64* @_gasrem, align 8
  %"$execptr_load_210" = load i8*, i8** @_execptr, align 8
  %"$ecdsa_verify_pubk_211" = alloca [33 x i8], align 1
  %"$pubk_212" = load [33 x i8], [33 x i8]* %pubk, align 1
  store [33 x i8] %"$pubk_212", [33 x i8]* %"$ecdsa_verify_pubk_211", align 1
  %"$ecdsa_verify_sig_213" = alloca [64 x i8], align 1
  store [64 x i8] %sig, [64 x i8]* %"$ecdsa_verify_sig_213", align 1
  %"$ecdsa_verify_call_214" = call %TName_Bool* @_ecdsa_verify(i8* %"$execptr_load_210", [33 x i8]* %"$ecdsa_verify_pubk_211", %Bystr %msg, [64 x i8]* %"$ecdsa_verify_sig_213"), !dbg !19
  store %TName_Bool* %"$ecdsa_verify_call_214", %TName_Bool** %"$sig_3", align 8, !dbg !19
  %"$gasrem_216" = load i64, i64* @_gasrem, align 8
  %"$gascmp_217" = icmp ugt i64 2, %"$gasrem_216"
  br i1 %"$gascmp_217", label %"$out_of_gas_218", label %"$have_gas_219"

"$out_of_gas_218":                                ; preds = %"$have_gas_208"
  call void @_out_of_gas()
  br label %"$have_gas_219"

"$have_gas_219":                                  ; preds = %"$out_of_gas_218", %"$have_gas_208"
  %"$consume_220" = sub i64 %"$gasrem_216", 2
  store i64 %"$consume_220", i64* @_gasrem, align 8
  %"$$sig_3_222" = load %TName_Bool*, %TName_Bool** %"$sig_3", align 8
  %"$$sig_3_tag_223" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$$sig_3_222", i32 0, i32 0
  %"$$sig_3_tag_224" = load i8, i8* %"$$sig_3_tag_223", align 1
  switch i8 %"$$sig_3_tag_224", label %"$empty_default_225" [
    i8 0, label %"$True_226"
    i8 1, label %"$False_296"
  ], !dbg !22

"$True_226":                                      ; preds = %"$have_gas_219"
  %"$$sig_3_227" = bitcast %TName_Bool* %"$$sig_3_222" to %CName_True*
  %"$gasrem_228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_229" = icmp ugt i64 1, %"$gasrem_228"
  br i1 %"$gascmp_229", label %"$out_of_gas_230", label %"$have_gas_231"

"$out_of_gas_230":                                ; preds = %"$True_226"
  call void @_out_of_gas()
  br label %"$have_gas_231"

"$have_gas_231":                                  ; preds = %"$out_of_gas_230", %"$True_226"
  %"$consume_232" = sub i64 %"$gasrem_228", 1
  store i64 %"$consume_232", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_233" = load i64, i64* @_gasrem, align 8
  %"$gascmp_234" = icmp ugt i64 1, %"$gasrem_233"
  br i1 %"$gascmp_234", label %"$out_of_gas_235", label %"$have_gas_236"

"$out_of_gas_235":                                ; preds = %"$have_gas_231"
  call void @_out_of_gas()
  br label %"$have_gas_236"

"$have_gas_236":                                  ; preds = %"$out_of_gas_235", %"$have_gas_231"
  %"$consume_237" = sub i64 %"$gasrem_233", 1
  store i64 %"$consume_237", i64* @_gasrem, align 8
  %"$msgobj_238_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_238_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_238_salloc_load", i64 165)
  %"$msgobj_238_salloc" = bitcast i8* %"$msgobj_238_salloc_salloc" to [165 x i8]*
  %"$msgobj_238" = bitcast [165 x i8]* %"$msgobj_238_salloc" to i8*
  store i8 4, i8* %"$msgobj_238", align 1
  %"$msgobj_fname_240" = getelementptr i8, i8* %"$msgobj_238", i32 1
  %"$msgobj_fname_241" = bitcast i8* %"$msgobj_fname_240" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_239", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_241", align 8
  %"$msgobj_td_242" = getelementptr i8, i8* %"$msgobj_238", i32 17
  %"$msgobj_td_243" = bitcast i8* %"$msgobj_td_242" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_243", align 8
  %"$msgobj_v_245" = getelementptr i8, i8* %"$msgobj_238", i32 25
  %"$msgobj_v_246" = bitcast i8* %"$msgobj_v_245" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_244", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_246", align 8
  %"$msgobj_fname_248" = getelementptr i8, i8* %"$msgobj_238", i32 41
  %"$msgobj_fname_249" = bitcast i8* %"$msgobj_fname_248" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_247", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_249", align 8
  %"$msgobj_td_250" = getelementptr i8, i8* %"$msgobj_238", i32 57
  %"$msgobj_td_251" = bitcast i8* %"$msgobj_td_250" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_44", %_TyDescrTy_Typ** %"$msgobj_td_251", align 8
  %"$msgobj_v_252" = getelementptr i8, i8* %"$msgobj_238", i32 65
  %"$msgobj_v_253" = bitcast i8* %"$msgobj_v_252" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_253", align 1
  %"$msgobj_fname_255" = getelementptr i8, i8* %"$msgobj_238", i32 85
  %"$msgobj_fname_256" = bitcast i8* %"$msgobj_fname_255" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_254", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_256", align 8
  %"$msgobj_td_257" = getelementptr i8, i8* %"$msgobj_238", i32 101
  %"$msgobj_td_258" = bitcast i8* %"$msgobj_td_257" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ** %"$msgobj_td_258", align 8
  %"$msgobj_v_259" = getelementptr i8, i8* %"$msgobj_238", i32 109
  %"$msgobj_v_260" = bitcast i8* %"$msgobj_v_259" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_260", align 8
  %"$msgobj_fname_262" = getelementptr i8, i8* %"$msgobj_238", i32 125
  %"$msgobj_fname_263" = bitcast i8* %"$msgobj_fname_262" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_261", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_263", align 8
  %"$msgobj_td_264" = getelementptr i8, i8* %"$msgobj_238", i32 141
  %"$msgobj_td_265" = bitcast i8* %"$msgobj_td_264" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_265", align 8
  %"$msgobj_v_267" = getelementptr i8, i8* %"$msgobj_238", i32 149
  %"$msgobj_v_268" = bitcast i8* %"$msgobj_v_267" to %String*
  store %String { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$stringlit_266", i32 0, i32 0), i32 23 }, %String* %"$msgobj_v_268", align 8
  store i8* %"$msgobj_238", i8** %m, align 8, !dbg !23
  %"$gasrem_270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_271" = icmp ugt i64 1, %"$gasrem_270"
  br i1 %"$gascmp_271", label %"$out_of_gas_272", label %"$have_gas_273"

"$out_of_gas_272":                                ; preds = %"$have_gas_236"
  call void @_out_of_gas()
  br label %"$have_gas_273"

"$have_gas_273":                                  ; preds = %"$out_of_gas_272", %"$have_gas_236"
  %"$consume_274" = sub i64 %"$gasrem_270", 1
  store i64 %"$consume_274", i64* @_gasrem, align 8
  %mone = alloca %TName_List_Message*, align 8
  %"$gasrem_275" = load i64, i64* @_gasrem, align 8
  %"$gascmp_276" = icmp ugt i64 1, %"$gasrem_275"
  br i1 %"$gascmp_276", label %"$out_of_gas_277", label %"$have_gas_278"

"$out_of_gas_277":                                ; preds = %"$have_gas_273"
  call void @_out_of_gas()
  br label %"$have_gas_278"

"$have_gas_278":                                  ; preds = %"$out_of_gas_277", %"$have_gas_273"
  %"$consume_279" = sub i64 %"$gasrem_275", 1
  store i64 %"$consume_279", i64* @_gasrem, align 8
  %"$ecdsa.one_msg_4" = alloca %TName_List_Message*, align 8
  %"$ecdsa.one_msg_280" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ecdsa.one_msg, align 8
  %"$ecdsa.one_msg_fptr_281" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ecdsa.one_msg_280", 0
  %"$ecdsa.one_msg_envptr_282" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ecdsa.one_msg_280", 1
  %"$m_283" = load i8*, i8** %m, align 8
  %"$ecdsa.one_msg_call_284" = call %TName_List_Message* %"$ecdsa.one_msg_fptr_281"(i8* %"$ecdsa.one_msg_envptr_282", i8* %"$m_283"), !dbg !26
  store %TName_List_Message* %"$ecdsa.one_msg_call_284", %TName_List_Message** %"$ecdsa.one_msg_4", align 8, !dbg !26
  %"$$ecdsa.one_msg_4_285" = load %TName_List_Message*, %TName_List_Message** %"$ecdsa.one_msg_4", align 8
  store %TName_List_Message* %"$$ecdsa.one_msg_4_285", %TName_List_Message** %mone, align 8, !dbg !26
  %"$mone_286" = load %TName_List_Message*, %TName_List_Message** %mone, align 8
  %"$$mone_286_287" = bitcast %TName_List_Message* %"$mone_286" to i8*
  %"$_literal_cost_call_288" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_50", i8* %"$$mone_286_287")
  %"$gasrem_289" = load i64, i64* @_gasrem, align 8
  %"$gascmp_290" = icmp ugt i64 %"$_literal_cost_call_288", %"$gasrem_289"
  br i1 %"$gascmp_290", label %"$out_of_gas_291", label %"$have_gas_292"

"$out_of_gas_291":                                ; preds = %"$have_gas_278"
  call void @_out_of_gas()
  br label %"$have_gas_292"

"$have_gas_292":                                  ; preds = %"$out_of_gas_291", %"$have_gas_278"
  %"$consume_293" = sub i64 %"$gasrem_289", %"$_literal_cost_call_288"
  store i64 %"$consume_293", i64* @_gasrem, align 8
  %"$execptr_load_294" = load i8*, i8** @_execptr, align 8
  %"$mone_295" = load %TName_List_Message*, %TName_List_Message** %mone, align 8
  call void @_send(i8* %"$execptr_load_294", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_50", %TName_List_Message* %"$mone_295"), !dbg !27
  br label %"$matchsucc_221"

"$False_296":                                     ; preds = %"$have_gas_219"
  %"$$sig_3_297" = bitcast %TName_Bool* %"$$sig_3_222" to %CName_False*
  %"$gasrem_298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_299" = icmp ugt i64 1, %"$gasrem_298"
  br i1 %"$gascmp_299", label %"$out_of_gas_300", label %"$have_gas_301"

"$out_of_gas_300":                                ; preds = %"$False_296"
  call void @_out_of_gas()
  br label %"$have_gas_301"

"$have_gas_301":                                  ; preds = %"$out_of_gas_300", %"$False_296"
  %"$consume_302" = sub i64 %"$gasrem_298", 1
  store i64 %"$consume_302", i64* @_gasrem, align 8
  %m1 = alloca i8*, align 8
  %"$gasrem_303" = load i64, i64* @_gasrem, align 8
  %"$gascmp_304" = icmp ugt i64 1, %"$gasrem_303"
  br i1 %"$gascmp_304", label %"$out_of_gas_305", label %"$have_gas_306"

"$out_of_gas_305":                                ; preds = %"$have_gas_301"
  call void @_out_of_gas()
  br label %"$have_gas_306"

"$have_gas_306":                                  ; preds = %"$out_of_gas_305", %"$have_gas_301"
  %"$consume_307" = sub i64 %"$gasrem_303", 1
  store i64 %"$consume_307", i64* @_gasrem, align 8
  %"$msgobj_308_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_308_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_308_salloc_load", i64 165)
  %"$msgobj_308_salloc" = bitcast i8* %"$msgobj_308_salloc_salloc" to [165 x i8]*
  %"$msgobj_308" = bitcast [165 x i8]* %"$msgobj_308_salloc" to i8*
  store i8 4, i8* %"$msgobj_308", align 1
  %"$msgobj_fname_310" = getelementptr i8, i8* %"$msgobj_308", i32 1
  %"$msgobj_fname_311" = bitcast i8* %"$msgobj_fname_310" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_309", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_311", align 8
  %"$msgobj_td_312" = getelementptr i8, i8* %"$msgobj_308", i32 17
  %"$msgobj_td_313" = bitcast i8* %"$msgobj_td_312" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_313", align 8
  %"$msgobj_v_315" = getelementptr i8, i8* %"$msgobj_308", i32 25
  %"$msgobj_v_316" = bitcast i8* %"$msgobj_v_315" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_314", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_316", align 8
  %"$msgobj_fname_318" = getelementptr i8, i8* %"$msgobj_308", i32 41
  %"$msgobj_fname_319" = bitcast i8* %"$msgobj_fname_318" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_317", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_319", align 8
  %"$msgobj_td_320" = getelementptr i8, i8* %"$msgobj_308", i32 57
  %"$msgobj_td_321" = bitcast i8* %"$msgobj_td_320" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_44", %_TyDescrTy_Typ** %"$msgobj_td_321", align 8
  %"$msgobj_v_322" = getelementptr i8, i8* %"$msgobj_308", i32 65
  %"$msgobj_v_323" = bitcast i8* %"$msgobj_v_322" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_323", align 1
  %"$msgobj_fname_325" = getelementptr i8, i8* %"$msgobj_308", i32 85
  %"$msgobj_fname_326" = bitcast i8* %"$msgobj_fname_325" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_324", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_326", align 8
  %"$msgobj_td_327" = getelementptr i8, i8* %"$msgobj_308", i32 101
  %"$msgobj_td_328" = bitcast i8* %"$msgobj_td_327" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ** %"$msgobj_td_328", align 8
  %"$msgobj_v_329" = getelementptr i8, i8* %"$msgobj_308", i32 109
  %"$msgobj_v_330" = bitcast i8* %"$msgobj_v_329" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_330", align 8
  %"$msgobj_fname_332" = getelementptr i8, i8* %"$msgobj_308", i32 125
  %"$msgobj_fname_333" = bitcast i8* %"$msgobj_fname_332" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_331", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_333", align 8
  %"$msgobj_td_334" = getelementptr i8, i8* %"$msgobj_308", i32 141
  %"$msgobj_td_335" = bitcast i8* %"$msgobj_td_334" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_335", align 8
  %"$msgobj_v_337" = getelementptr i8, i8* %"$msgobj_308", i32 149
  %"$msgobj_v_338" = bitcast i8* %"$msgobj_v_337" to %String*
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_336", i32 0, i32 0), i32 19 }, %String* %"$msgobj_v_338", align 8
  store i8* %"$msgobj_308", i8** %m1, align 8, !dbg !28
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 1, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %"$have_gas_306"
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %"$have_gas_306"
  %"$consume_344" = sub i64 %"$gasrem_340", 1
  store i64 %"$consume_344", i64* @_gasrem, align 8
  %mone2 = alloca %TName_List_Message*, align 8
  %"$gasrem_345" = load i64, i64* @_gasrem, align 8
  %"$gascmp_346" = icmp ugt i64 1, %"$gasrem_345"
  br i1 %"$gascmp_346", label %"$out_of_gas_347", label %"$have_gas_348"

"$out_of_gas_347":                                ; preds = %"$have_gas_343"
  call void @_out_of_gas()
  br label %"$have_gas_348"

"$have_gas_348":                                  ; preds = %"$out_of_gas_347", %"$have_gas_343"
  %"$consume_349" = sub i64 %"$gasrem_345", 1
  store i64 %"$consume_349", i64* @_gasrem, align 8
  %"$ecdsa.one_msg_5" = alloca %TName_List_Message*, align 8
  %"$ecdsa.one_msg_350" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ecdsa.one_msg, align 8
  %"$ecdsa.one_msg_fptr_351" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ecdsa.one_msg_350", 0
  %"$ecdsa.one_msg_envptr_352" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ecdsa.one_msg_350", 1
  %"$m_353" = load i8*, i8** %m1, align 8
  %"$ecdsa.one_msg_call_354" = call %TName_List_Message* %"$ecdsa.one_msg_fptr_351"(i8* %"$ecdsa.one_msg_envptr_352", i8* %"$m_353"), !dbg !30
  store %TName_List_Message* %"$ecdsa.one_msg_call_354", %TName_List_Message** %"$ecdsa.one_msg_5", align 8, !dbg !30
  %"$$ecdsa.one_msg_5_355" = load %TName_List_Message*, %TName_List_Message** %"$ecdsa.one_msg_5", align 8
  store %TName_List_Message* %"$$ecdsa.one_msg_5_355", %TName_List_Message** %mone2, align 8, !dbg !30
  %"$mone_356" = load %TName_List_Message*, %TName_List_Message** %mone2, align 8
  %"$$mone_356_357" = bitcast %TName_List_Message* %"$mone_356" to i8*
  %"$_literal_cost_call_358" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_50", i8* %"$$mone_356_357")
  %"$gasrem_359" = load i64, i64* @_gasrem, align 8
  %"$gascmp_360" = icmp ugt i64 %"$_literal_cost_call_358", %"$gasrem_359"
  br i1 %"$gascmp_360", label %"$out_of_gas_361", label %"$have_gas_362"

"$out_of_gas_361":                                ; preds = %"$have_gas_348"
  call void @_out_of_gas()
  br label %"$have_gas_362"

"$have_gas_362":                                  ; preds = %"$out_of_gas_361", %"$have_gas_348"
  %"$consume_363" = sub i64 %"$gasrem_359", %"$_literal_cost_call_358"
  store i64 %"$consume_363", i64* @_gasrem, align 8
  %"$execptr_load_364" = load i8*, i8** @_execptr, align 8
  %"$mone_365" = load %TName_List_Message*, %TName_List_Message** %mone2, align 8
  call void @_send(i8* %"$execptr_load_364", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_50", %TName_List_Message* %"$mone_365"), !dbg !31
  br label %"$matchsucc_221"

"$empty_default_225":                             ; preds = %"$have_gas_219"
  br label %"$matchsucc_221"

"$matchsucc_221":                                 ; preds = %"$have_gas_362", %"$have_gas_292", %"$empty_default_225"
  br label %"$matchsucc_180"

"$None_366":                                      ; preds = %"$have_gas_178"
  %"$pubk_o_367" = bitcast %TName_Option_ByStr33* %"$pubk_o_181" to %CName_None_ByStr33*
  %"$gasrem_368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_369" = icmp ugt i64 1, %"$gasrem_368"
  br i1 %"$gascmp_369", label %"$out_of_gas_370", label %"$have_gas_371"

"$out_of_gas_370":                                ; preds = %"$None_366"
  call void @_out_of_gas()
  br label %"$have_gas_371"

"$have_gas_371":                                  ; preds = %"$out_of_gas_370", %"$None_366"
  %"$consume_372" = sub i64 %"$gasrem_368", 1
  store i64 %"$consume_372", i64* @_gasrem, align 8
  %m3 = alloca i8*, align 8
  %"$gasrem_373" = load i64, i64* @_gasrem, align 8
  %"$gascmp_374" = icmp ugt i64 1, %"$gasrem_373"
  br i1 %"$gascmp_374", label %"$out_of_gas_375", label %"$have_gas_376"

"$out_of_gas_375":                                ; preds = %"$have_gas_371"
  call void @_out_of_gas()
  br label %"$have_gas_376"

"$have_gas_376":                                  ; preds = %"$out_of_gas_375", %"$have_gas_371"
  %"$consume_377" = sub i64 %"$gasrem_373", 1
  store i64 %"$consume_377", i64* @_gasrem, align 8
  %"$msgobj_378_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_378_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_378_salloc_load", i64 165)
  %"$msgobj_378_salloc" = bitcast i8* %"$msgobj_378_salloc_salloc" to [165 x i8]*
  %"$msgobj_378" = bitcast [165 x i8]* %"$msgobj_378_salloc" to i8*
  store i8 4, i8* %"$msgobj_378", align 1
  %"$msgobj_fname_380" = getelementptr i8, i8* %"$msgobj_378", i32 1
  %"$msgobj_fname_381" = bitcast i8* %"$msgobj_fname_380" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_379", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_381", align 8
  %"$msgobj_td_382" = getelementptr i8, i8* %"$msgobj_378", i32 17
  %"$msgobj_td_383" = bitcast i8* %"$msgobj_td_382" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_383", align 8
  %"$msgobj_v_385" = getelementptr i8, i8* %"$msgobj_378", i32 25
  %"$msgobj_v_386" = bitcast i8* %"$msgobj_v_385" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_384", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_386", align 8
  %"$msgobj_fname_388" = getelementptr i8, i8* %"$msgobj_378", i32 41
  %"$msgobj_fname_389" = bitcast i8* %"$msgobj_fname_388" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_387", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_389", align 8
  %"$msgobj_td_390" = getelementptr i8, i8* %"$msgobj_378", i32 57
  %"$msgobj_td_391" = bitcast i8* %"$msgobj_td_390" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_44", %_TyDescrTy_Typ** %"$msgobj_td_391", align 8
  %"$msgobj_v_392" = getelementptr i8, i8* %"$msgobj_378", i32 65
  %"$msgobj_v_393" = bitcast i8* %"$msgobj_v_392" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_393", align 1
  %"$msgobj_fname_395" = getelementptr i8, i8* %"$msgobj_378", i32 85
  %"$msgobj_fname_396" = bitcast i8* %"$msgobj_fname_395" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_394", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_396", align 8
  %"$msgobj_td_397" = getelementptr i8, i8* %"$msgobj_378", i32 101
  %"$msgobj_td_398" = bitcast i8* %"$msgobj_td_397" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ** %"$msgobj_td_398", align 8
  %"$msgobj_v_399" = getelementptr i8, i8* %"$msgobj_378", i32 109
  %"$msgobj_v_400" = bitcast i8* %"$msgobj_v_399" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_400", align 8
  %"$msgobj_fname_402" = getelementptr i8, i8* %"$msgobj_378", i32 125
  %"$msgobj_fname_403" = bitcast i8* %"$msgobj_fname_402" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_401", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_403", align 8
  %"$msgobj_td_404" = getelementptr i8, i8* %"$msgobj_378", i32 141
  %"$msgobj_td_405" = bitcast i8* %"$msgobj_td_404" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_405", align 8
  %"$msgobj_v_407" = getelementptr i8, i8* %"$msgobj_378", i32 149
  %"$msgobj_v_408" = bitcast i8* %"$msgobj_v_407" to %String*
  store %String { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$stringlit_406", i32 0, i32 0), i32 12 }, %String* %"$msgobj_v_408", align 8
  store i8* %"$msgobj_378", i8** %m3, align 8, !dbg !32
  %"$gasrem_410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_411" = icmp ugt i64 1, %"$gasrem_410"
  br i1 %"$gascmp_411", label %"$out_of_gas_412", label %"$have_gas_413"

"$out_of_gas_412":                                ; preds = %"$have_gas_376"
  call void @_out_of_gas()
  br label %"$have_gas_413"

"$have_gas_413":                                  ; preds = %"$out_of_gas_412", %"$have_gas_376"
  %"$consume_414" = sub i64 %"$gasrem_410", 1
  store i64 %"$consume_414", i64* @_gasrem, align 8
  %mone4 = alloca %TName_List_Message*, align 8
  %"$gasrem_415" = load i64, i64* @_gasrem, align 8
  %"$gascmp_416" = icmp ugt i64 1, %"$gasrem_415"
  br i1 %"$gascmp_416", label %"$out_of_gas_417", label %"$have_gas_418"

"$out_of_gas_417":                                ; preds = %"$have_gas_413"
  call void @_out_of_gas()
  br label %"$have_gas_418"

"$have_gas_418":                                  ; preds = %"$out_of_gas_417", %"$have_gas_413"
  %"$consume_419" = sub i64 %"$gasrem_415", 1
  store i64 %"$consume_419", i64* @_gasrem, align 8
  %"$ecdsa.one_msg_6" = alloca %TName_List_Message*, align 8
  %"$ecdsa.one_msg_420" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ecdsa.one_msg, align 8
  %"$ecdsa.one_msg_fptr_421" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ecdsa.one_msg_420", 0
  %"$ecdsa.one_msg_envptr_422" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ecdsa.one_msg_420", 1
  %"$m_423" = load i8*, i8** %m3, align 8
  %"$ecdsa.one_msg_call_424" = call %TName_List_Message* %"$ecdsa.one_msg_fptr_421"(i8* %"$ecdsa.one_msg_envptr_422", i8* %"$m_423"), !dbg !34
  store %TName_List_Message* %"$ecdsa.one_msg_call_424", %TName_List_Message** %"$ecdsa.one_msg_6", align 8, !dbg !34
  %"$$ecdsa.one_msg_6_425" = load %TName_List_Message*, %TName_List_Message** %"$ecdsa.one_msg_6", align 8
  store %TName_List_Message* %"$$ecdsa.one_msg_6_425", %TName_List_Message** %mone4, align 8, !dbg !34
  %"$mone_426" = load %TName_List_Message*, %TName_List_Message** %mone4, align 8
  %"$$mone_426_427" = bitcast %TName_List_Message* %"$mone_426" to i8*
  %"$_literal_cost_call_428" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_50", i8* %"$$mone_426_427")
  %"$gasrem_429" = load i64, i64* @_gasrem, align 8
  %"$gascmp_430" = icmp ugt i64 %"$_literal_cost_call_428", %"$gasrem_429"
  br i1 %"$gascmp_430", label %"$out_of_gas_431", label %"$have_gas_432"

"$out_of_gas_431":                                ; preds = %"$have_gas_418"
  call void @_out_of_gas()
  br label %"$have_gas_432"

"$have_gas_432":                                  ; preds = %"$out_of_gas_431", %"$have_gas_418"
  %"$consume_433" = sub i64 %"$gasrem_429", %"$_literal_cost_call_428"
  store i64 %"$consume_433", i64* @_gasrem, align 8
  %"$execptr_load_434" = load i8*, i8** @_execptr, align 8
  %"$mone_435" = load %TName_List_Message*, %TName_List_Message** %mone4, align 8
  call void @_send(i8* %"$execptr_load_434", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_50", %TName_List_Message* %"$mone_435"), !dbg !35
  br label %"$matchsucc_180"

"$empty_default_184":                             ; preds = %"$have_gas_178"
  br label %"$matchsucc_180"

"$matchsucc_180":                                 ; preds = %"$have_gas_432", %"$matchsucc_221", %"$empty_default_184"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare %TName_Bool* @_ecdsa_verify(i8*, [33 x i8]*, %Bystr, [64 x i8]*)

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @verify(i8* %0) !dbg !36 {
entry:
  %"$_amount_437" = getelementptr i8, i8* %0, i32 0
  %"$_amount_438" = bitcast i8* %"$_amount_437" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_438", align 8
  %"$_origin_439" = getelementptr i8, i8* %0, i32 16
  %"$_origin_440" = bitcast i8* %"$_origin_439" to [20 x i8]*
  %"$_sender_441" = getelementptr i8, i8* %0, i32 36
  %"$_sender_442" = bitcast i8* %"$_sender_441" to [20 x i8]*
  %"$msg_443" = getelementptr i8, i8* %0, i32 56
  %"$msg_444" = bitcast i8* %"$msg_443" to %Bystr*
  %msg = load %Bystr, %Bystr* %"$msg_444", align 8
  %"$sig_445" = getelementptr i8, i8* %0, i32 72
  %"$sig_446" = bitcast i8* %"$sig_445" to [64 x i8]*
  call void @"$verify_158"(%Uint128 %_amount, [20 x i8]* %"$_origin_440", [20 x i8]* %"$_sender_442", %Bystr %msg, [64 x i8]* %"$sig_446"), !dbg !37
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "ecdsa.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "$fundef_7", linkageName: "$fundef_7", scope: !2, file: !2, line: 9, type: !5, scopeLine: 9, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = !DILocation(line: 9, column: 19, scope: !4)
!9 = !DILocation(line: 10, column: 5, scope: !4)
!10 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !11, file: !11, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DIFile(filename: ".", directory: ".")
!12 = !DILocation(line: 0, scope: !10)
!13 = !DILocation(line: 9, column: 5, scope: !10)
!14 = distinct !DISubprogram(name: "_deploy_ops", linkageName: "_deploy_ops", scope: !11, file: !11, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!15 = !DILocation(line: 18, column: 36, scope: !14)
!16 = distinct !DISubprogram(name: "verify", linkageName: "verify", scope: !2, file: !2, line: 20, type: !5, scopeLine: 20, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!17 = !DILocation(line: 21, column: 3, scope: !16)
!18 = !DILocation(line: 22, column: 3, scope: !16)
!19 = !DILocation(line: 24, column: 11, scope: !20)
!20 = distinct !DILexicalBlock(scope: !21, file: !2, line: 23, column: 5)
!21 = distinct !DILexicalBlock(scope: !16, file: !2, line: 22, column: 3)
!22 = !DILocation(line: 25, column: 5, scope: !20)
!23 = !DILocation(line: 27, column: 11, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !2, line: 26, column: 7)
!25 = distinct !DILexicalBlock(scope: !20, file: !2, line: 25, column: 5)
!26 = !DILocation(line: 28, column: 14, scope: !24)
!27 = !DILocation(line: 29, column: 7, scope: !24)
!28 = !DILocation(line: 31, column: 11, scope: !29)
!29 = distinct !DILexicalBlock(scope: !25, file: !2, line: 30, column: 7)
!30 = !DILocation(line: 32, column: 14, scope: !29)
!31 = !DILocation(line: 33, column: 7, scope: !29)
!32 = !DILocation(line: 37, column: 9, scope: !33)
!33 = distinct !DILexicalBlock(scope: !21, file: !2, line: 35, column: 5)
!34 = !DILocation(line: 38, column: 12, scope: !33)
!35 = !DILocation(line: 39, column: 5, scope: !33)
!36 = distinct !DISubprogram(name: "verify", linkageName: "verify", scope: !2, file: !2, line: 20, type: !5, scopeLine: 20, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!37 = !DILocation(line: 20, column: 12, scope: !36)
