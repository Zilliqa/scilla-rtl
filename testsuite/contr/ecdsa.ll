

; gas_remaining: 4001996
; ModuleID = 'Ecdsa'
source_filename = "Ecdsa"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%"$ParamDescr_442" = type { %ParamDescrString, %_TyDescrTy_Typ* }
%ParamDescrString = type { i8*, i32 }
%"$TransDescr_443" = type { %ParamDescrString, i32, %"$ParamDescr_442"* }
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
@"$TyDescr_AddrFields_91" = unnamed_addr constant %"$TyDescr_AddrTyp_53" { i32 -1, %"$TyDescr_AddrFieldTyp_52"* null }
@"$_gas_charge_acc_2" = global %Int32 zeroinitializer
@"$_gas_charge_accPairUtils_1" = global %Int32 zeroinitializer
@"$_gas_charge_accEcdsa_0" = global %Int32 zeroinitializer
@ecdsa.one_msg = global { %TName_List_Message* (i8*, i8*)*, i8* } zeroinitializer
@_cparam__scilla_version = global %Uint32 zeroinitializer
@_cparam__this_address = global [20 x i8] zeroinitializer
@_cparam__creation_block = global i8* null
@"$pub_key_150" = unnamed_addr constant [8 x i8] c"pub_key\00"
@"$pub_key_157" = unnamed_addr constant [8 x i8] c"pub_key\00"
@"$stringlit_234" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_239" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_242" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_249" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_256" = unnamed_addr constant [6 x i8] c"status"
@"$stringlit_261" = unnamed_addr constant [23 x i8] c"verification successful"
@"$stringlit_304" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_309" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_312" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_319" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_326" = unnamed_addr constant [6 x i8] c"status"
@"$stringlit_331" = unnamed_addr constant [19 x i8] c"verification failed"
@"$stringlit_374" = unnamed_addr constant [4 x i8] c"_tag"
@"$stringlit_379" = unnamed_addr constant [0 x i8] zeroinitializer
@"$stringlit_382" = unnamed_addr constant [10 x i8] c"_recipient"
@"$stringlit_389" = unnamed_addr constant [7 x i8] c"_amount"
@"$stringlit_396" = unnamed_addr constant [6 x i8] c"status"
@"$stringlit_401" = unnamed_addr constant [12 x i8] c"no key error"
@_tydescr_table = constant [21 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_50", %_TyDescrTy_Typ* @"$TyDescr_Event_34", %_TyDescrTy_Typ* @"$TyDescr_Int64_16", %_TyDescrTy_Typ* @"$TyDescr_Addr_54", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_48", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_44", %_TyDescrTy_Typ* @"$TyDescr_Bystr33_42", %_TyDescrTy_Typ* @"$TyDescr_Uint256_26", %_TyDescrTy_Typ* @"$TyDescr_Uint32_14", %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr33_49", %_TyDescrTy_Typ* @"$TyDescr_Bystr64_40", %_TyDescrTy_Typ* @"$TyDescr_Uint64_18", %_TyDescrTy_Typ* @"$TyDescr_Bnum_30", %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ* @"$TyDescr_Exception_36", %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ* @"$TyDescr_Int256_24", %_TyDescrTy_Typ* @"$TyDescr_Int128_20", %_TyDescrTy_Typ* @"$TyDescr_Bystr_38", %_TyDescrTy_Typ* @"$TyDescr_Message_32", %_TyDescrTy_Typ* @"$TyDescr_Int32_12"]
@_tydescr_table_length = constant i32 21
@"$pname__scilla_version_444" = unnamed_addr constant [15 x i8] c"_scilla_version"
@"$pname__this_address_445" = unnamed_addr constant [13 x i8] c"_this_address"
@"$pname__creation_block_446" = unnamed_addr constant [15 x i8] c"_creation_block"
@_contract_parameters = constant [3 x %"$ParamDescr_442"] [%"$ParamDescr_442" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__scilla_version_444", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Uint32_14" }, %"$ParamDescr_442" { %ParamDescrString { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @"$pname__this_address_445", i32 0, i32 0), i32 13 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr20_44" }, %"$ParamDescr_442" { %ParamDescrString { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @"$pname__creation_block_446", i32 0, i32 0), i32 15 }, %_TyDescrTy_Typ* @"$TyDescr_Bnum_30" }]
@_contract_parameters_length = constant i32 3
@"$tpname__amount_447" = unnamed_addr constant [7 x i8] c"_amount"
@"$tpname__origin_448" = unnamed_addr constant [7 x i8] c"_origin"
@"$tpname__sender_449" = unnamed_addr constant [7 x i8] c"_sender"
@"$tpname_msg_450" = unnamed_addr constant [3 x i8] c"msg"
@"$tpname_sig_451" = unnamed_addr constant [3 x i8] c"sig"
@"$tparams_verify_452" = unnamed_addr constant [5 x %"$ParamDescr_442"] [%"$ParamDescr_442" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__amount_447", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Uint128_22" }, %"$ParamDescr_442" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__origin_448", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_54" }, %"$ParamDescr_442" { %ParamDescrString { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$tpname__sender_449", i32 0, i32 0), i32 7 }, %_TyDescrTy_Typ* @"$TyDescr_Addr_54" }, %"$ParamDescr_442" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tpname_msg_450", i32 0, i32 0), i32 3 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr_38" }, %"$ParamDescr_442" { %ParamDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$tpname_sig_451", i32 0, i32 0), i32 3 }, %_TyDescrTy_Typ* @"$TyDescr_Bystr64_40" }]
@"$tname_verify_453" = unnamed_addr constant [6 x i8] c"verify"
@_transition_parameters = constant [1 x %"$TransDescr_443"] [%"$TransDescr_443" { %ParamDescrString { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$tname_verify_453", i32 0, i32 0), i32 6 }, i32 5, %"$ParamDescr_442"* getelementptr inbounds ([5 x %"$ParamDescr_442"], [5 x %"$ParamDescr_442"]* @"$tparams_verify_452", i32 0, i32 0) }]
@_transition_parameters_length = constant i32 1

define internal %TName_List_Message* @"$fundef_7"(%"$$fundef_7_env_92"* %0, i8* %1) {
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
  store %TName_List_Message* %"$adtptr_105", %TName_List_Message** %nil_msg, align 8
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
  store %TName_List_Message* %"$adtptr_116", %TName_List_Message** %"$retval_8", align 8
  %"$$retval_8_117" = load %TName_List_Message*, %TName_List_Message** %"$retval_8", align 8
  ret %TName_List_Message* %"$$retval_8_117"
}

declare void @_out_of_gas()

declare i8* @_salloc(i8*, i64)

define void @_init_libs() {
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
  store %Int32 { i32 5 }, %Int32* @"$_gas_charge_acc_2", align 4
  %"$gasrem_123" = load i64, i64* @_gasrem, align 8
  %"$gascmp_124" = icmp ugt i64 2, %"$gasrem_123"
  br i1 %"$gascmp_124", label %"$out_of_gas_125", label %"$have_gas_126"

"$out_of_gas_125":                                ; preds = %"$have_gas_121"
  call void @_out_of_gas()
  br label %"$have_gas_126"

"$have_gas_126":                                  ; preds = %"$out_of_gas_125", %"$have_gas_121"
  %"$consume_127" = sub i64 %"$gasrem_123", 2
  store i64 %"$consume_127", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* @"$_gas_charge_accPairUtils_1", align 4
  %"$gasrem_128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_129" = icmp ugt i64 6, %"$gasrem_128"
  br i1 %"$gascmp_129", label %"$out_of_gas_130", label %"$have_gas_131"

"$out_of_gas_130":                                ; preds = %"$have_gas_126"
  call void @_out_of_gas()
  br label %"$have_gas_131"

"$have_gas_131":                                  ; preds = %"$out_of_gas_130", %"$have_gas_126"
  %"$consume_132" = sub i64 %"$gasrem_128", 6
  store i64 %"$consume_132", i64* @_gasrem, align 8
  store %Int32 { i32 6 }, %Int32* @"$_gas_charge_accEcdsa_0", align 4
  %"$gasrem_133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_134" = icmp ugt i64 1, %"$gasrem_133"
  br i1 %"$gascmp_134", label %"$out_of_gas_135", label %"$have_gas_136"

"$out_of_gas_135":                                ; preds = %"$have_gas_131"
  call void @_out_of_gas()
  br label %"$have_gas_136"

"$have_gas_136":                                  ; preds = %"$out_of_gas_135", %"$have_gas_131"
  %"$consume_137" = sub i64 %"$gasrem_133", 1
  store i64 %"$consume_137", i64* @_gasrem, align 8
  store { %TName_List_Message* (i8*, i8*)*, i8* } { %TName_List_Message* (i8*, i8*)* bitcast (%TName_List_Message* (%"$$fundef_7_env_92"*, i8*)* @"$fundef_7" to %TName_List_Message* (i8*, i8*)*), i8* null }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ecdsa.one_msg, align 8
  ret void
}

define void @_init_state() {
entry:
  %"$pub_key_9" = alloca %TName_Option_ByStr33*, align 8
  %"$gasrem_141" = load i64, i64* @_gasrem, align 8
  %"$gascmp_142" = icmp ugt i64 1, %"$gasrem_141"
  br i1 %"$gascmp_142", label %"$out_of_gas_143", label %"$have_gas_144"

"$out_of_gas_143":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_144"

"$have_gas_144":                                  ; preds = %"$out_of_gas_143", %entry
  %"$consume_145" = sub i64 %"$gasrem_141", 1
  store i64 %"$consume_145", i64* @_gasrem, align 8
  %"$adtval_146_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_146_salloc" = call i8* @_salloc(i8* %"$adtval_146_load", i64 1)
  %"$adtval_146" = bitcast i8* %"$adtval_146_salloc" to %CName_None_ByStr33*
  %"$adtgep_147" = getelementptr inbounds %CName_None_ByStr33, %CName_None_ByStr33* %"$adtval_146", i32 0, i32 0
  store i8 1, i8* %"$adtgep_147", align 1
  %"$adtptr_148" = bitcast %CName_None_ByStr33* %"$adtval_146" to %TName_Option_ByStr33*
  store %TName_Option_ByStr33* %"$adtptr_148", %TName_Option_ByStr33** %"$pub_key_9", align 8
  %"$execptr_load_149" = load i8*, i8** @_execptr, align 8
  %"$$pub_key_9_151" = load %TName_Option_ByStr33*, %TName_Option_ByStr33** %"$pub_key_9", align 8
  %"$update_value_152" = bitcast %TName_Option_ByStr33* %"$$pub_key_9_151" to i8*
  call void @_update_field(i8* %"$execptr_load_149", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$pub_key_150", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr33_49", i32 0, i8* null, i8* %"$update_value_152")
  ret void
}

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$verify_153"(%Uint128 %_amount, [20 x i8]* %"$_origin_154", [20 x i8]* %"$_sender_155", %Bystr %msg, [64 x i8]* %"$sig_156") {
entry:
  %_origin = load [20 x i8], [20 x i8]* %"$_origin_154", align 1
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_155", align 1
  %sig = load [64 x i8], [64 x i8]* %"$sig_156", align 1
  %pubk_o = alloca %TName_Option_ByStr33*, align 8
  %"$execptr_load_158" = load i8*, i8** @_execptr, align 8
  %"$pubk_o_call_159" = call i8* @_fetch_field(i8* %"$execptr_load_158", i8* getelementptr inbounds ([8 x i8], [8 x i8]* @"$pub_key_157", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr33_49", i32 0, i8* null, i32 1)
  %"$pubk_o_160" = bitcast i8* %"$pubk_o_call_159" to %TName_Option_ByStr33*
  store %TName_Option_ByStr33* %"$pubk_o_160", %TName_Option_ByStr33** %pubk_o, align 8
  %"$pubk_o_161" = load %TName_Option_ByStr33*, %TName_Option_ByStr33** %pubk_o, align 8
  %"$$pubk_o_161_162" = bitcast %TName_Option_ByStr33* %"$pubk_o_161" to i8*
  %"$_literal_cost_call_163" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_Option_ByStr33_49", i8* %"$$pubk_o_161_162")
  %"$gasadd_164" = add i64 %"$_literal_cost_call_163", 0
  %"$gasrem_165" = load i64, i64* @_gasrem, align 8
  %"$gascmp_166" = icmp ugt i64 %"$gasadd_164", %"$gasrem_165"
  br i1 %"$gascmp_166", label %"$out_of_gas_167", label %"$have_gas_168"

"$out_of_gas_167":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_168"

"$have_gas_168":                                  ; preds = %"$out_of_gas_167", %entry
  %"$consume_169" = sub i64 %"$gasrem_165", %"$gasadd_164"
  store i64 %"$consume_169", i64* @_gasrem, align 8
  %"$gasrem_170" = load i64, i64* @_gasrem, align 8
  %"$gascmp_171" = icmp ugt i64 2, %"$gasrem_170"
  br i1 %"$gascmp_171", label %"$out_of_gas_172", label %"$have_gas_173"

"$out_of_gas_172":                                ; preds = %"$have_gas_168"
  call void @_out_of_gas()
  br label %"$have_gas_173"

"$have_gas_173":                                  ; preds = %"$out_of_gas_172", %"$have_gas_168"
  %"$consume_174" = sub i64 %"$gasrem_170", 2
  store i64 %"$consume_174", i64* @_gasrem, align 8
  %"$pubk_o_176" = load %TName_Option_ByStr33*, %TName_Option_ByStr33** %pubk_o, align 8
  %"$pubk_o_tag_177" = getelementptr inbounds %TName_Option_ByStr33, %TName_Option_ByStr33* %"$pubk_o_176", i32 0, i32 0
  %"$pubk_o_tag_178" = load i8, i8* %"$pubk_o_tag_177", align 1
  switch i8 %"$pubk_o_tag_178", label %"$empty_default_179" [
    i8 0, label %"$Some_180"
    i8 1, label %"$None_361"
  ]

"$Some_180":                                      ; preds = %"$have_gas_173"
  %"$pubk_o_181" = bitcast %TName_Option_ByStr33* %"$pubk_o_176" to %CName_Some_ByStr33*
  %"$pubk_gep_182" = getelementptr inbounds %CName_Some_ByStr33, %CName_Some_ByStr33* %"$pubk_o_181", i32 0, i32 1
  %"$pubk_load_183" = load [33 x i8], [33 x i8]* %"$pubk_gep_182", align 1
  %pubk = alloca [33 x i8], align 1
  store [33 x i8] %"$pubk_load_183", [33 x i8]* %pubk, align 1
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %"$Some_180"
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %"$Some_180"
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem, align 8
  %"$sig_3" = alloca %TName_Bool*, align 8
  %"$_literal_cost_msg_189" = alloca %Bystr, align 8
  store %Bystr %msg, %Bystr* %"$_literal_cost_msg_189", align 8
  %"$$_literal_cost_msg_189_190" = bitcast %Bystr* %"$_literal_cost_msg_189" to i8*
  %"$_literal_cost_call_191" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Bystr_38", i8* %"$$_literal_cost_msg_189_190")
  %"$gasadd_192" = add i64 %"$_literal_cost_call_191", 66
  %"$gasdivceil_193" = urem i64 %"$gasadd_192", 64
  %"$gasdivceil_194" = udiv i64 %"$gasadd_192", 64
  %"$gasdivceil_195" = icmp eq i64 %"$gasdivceil_193", 0
  %"$gasdivceil_196" = add i64 %"$gasdivceil_194", 1
  %"$gasdivceil_197" = select i1 %"$gasdivceil_195", i64 %"$gasdivceil_194", i64 %"$gasdivceil_196"
  %"$gasmul_198" = mul i64 15, %"$gasdivceil_197"
  %"$gasadd_199" = add i64 250, %"$gasmul_198"
  %"$gasrem_200" = load i64, i64* @_gasrem, align 8
  %"$gascmp_201" = icmp ugt i64 %"$gasadd_199", %"$gasrem_200"
  br i1 %"$gascmp_201", label %"$out_of_gas_202", label %"$have_gas_203"

"$out_of_gas_202":                                ; preds = %"$have_gas_187"
  call void @_out_of_gas()
  br label %"$have_gas_203"

"$have_gas_203":                                  ; preds = %"$out_of_gas_202", %"$have_gas_187"
  %"$consume_204" = sub i64 %"$gasrem_200", %"$gasadd_199"
  store i64 %"$consume_204", i64* @_gasrem, align 8
  %"$execptr_load_205" = load i8*, i8** @_execptr, align 8
  %"$ecdsa_verify_pubk_206" = alloca [33 x i8], align 1
  %"$pubk_207" = load [33 x i8], [33 x i8]* %pubk, align 1
  store [33 x i8] %"$pubk_207", [33 x i8]* %"$ecdsa_verify_pubk_206", align 1
  %"$ecdsa_verify_sig_208" = alloca [64 x i8], align 1
  store [64 x i8] %sig, [64 x i8]* %"$ecdsa_verify_sig_208", align 1
  %"$ecdsa_verify_call_209" = call %TName_Bool* @_ecdsa_verify(i8* %"$execptr_load_205", [33 x i8]* %"$ecdsa_verify_pubk_206", %Bystr %msg, [64 x i8]* %"$ecdsa_verify_sig_208")
  store %TName_Bool* %"$ecdsa_verify_call_209", %TName_Bool** %"$sig_3", align 8
  %"$gasrem_211" = load i64, i64* @_gasrem, align 8
  %"$gascmp_212" = icmp ugt i64 2, %"$gasrem_211"
  br i1 %"$gascmp_212", label %"$out_of_gas_213", label %"$have_gas_214"

"$out_of_gas_213":                                ; preds = %"$have_gas_203"
  call void @_out_of_gas()
  br label %"$have_gas_214"

"$have_gas_214":                                  ; preds = %"$out_of_gas_213", %"$have_gas_203"
  %"$consume_215" = sub i64 %"$gasrem_211", 2
  store i64 %"$consume_215", i64* @_gasrem, align 8
  %"$$sig_3_217" = load %TName_Bool*, %TName_Bool** %"$sig_3", align 8
  %"$$sig_3_tag_218" = getelementptr inbounds %TName_Bool, %TName_Bool* %"$$sig_3_217", i32 0, i32 0
  %"$$sig_3_tag_219" = load i8, i8* %"$$sig_3_tag_218", align 1
  switch i8 %"$$sig_3_tag_219", label %"$empty_default_220" [
    i8 0, label %"$True_221"
    i8 1, label %"$False_291"
  ]

"$True_221":                                      ; preds = %"$have_gas_214"
  %"$$sig_3_222" = bitcast %TName_Bool* %"$$sig_3_217" to %CName_True*
  %"$gasrem_223" = load i64, i64* @_gasrem, align 8
  %"$gascmp_224" = icmp ugt i64 1, %"$gasrem_223"
  br i1 %"$gascmp_224", label %"$out_of_gas_225", label %"$have_gas_226"

"$out_of_gas_225":                                ; preds = %"$True_221"
  call void @_out_of_gas()
  br label %"$have_gas_226"

"$have_gas_226":                                  ; preds = %"$out_of_gas_225", %"$True_221"
  %"$consume_227" = sub i64 %"$gasrem_223", 1
  store i64 %"$consume_227", i64* @_gasrem, align 8
  %m = alloca i8*, align 8
  %"$gasrem_228" = load i64, i64* @_gasrem, align 8
  %"$gascmp_229" = icmp ugt i64 1, %"$gasrem_228"
  br i1 %"$gascmp_229", label %"$out_of_gas_230", label %"$have_gas_231"

"$out_of_gas_230":                                ; preds = %"$have_gas_226"
  call void @_out_of_gas()
  br label %"$have_gas_231"

"$have_gas_231":                                  ; preds = %"$out_of_gas_230", %"$have_gas_226"
  %"$consume_232" = sub i64 %"$gasrem_228", 1
  store i64 %"$consume_232", i64* @_gasrem, align 8
  %"$msgobj_233_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_233_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_233_salloc_load", i64 165)
  %"$msgobj_233_salloc" = bitcast i8* %"$msgobj_233_salloc_salloc" to [165 x i8]*
  %"$msgobj_233" = bitcast [165 x i8]* %"$msgobj_233_salloc" to i8*
  store i8 4, i8* %"$msgobj_233", align 1
  %"$msgobj_fname_235" = getelementptr i8, i8* %"$msgobj_233", i32 1
  %"$msgobj_fname_236" = bitcast i8* %"$msgobj_fname_235" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_234", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_236", align 8
  %"$msgobj_td_237" = getelementptr i8, i8* %"$msgobj_233", i32 17
  %"$msgobj_td_238" = bitcast i8* %"$msgobj_td_237" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_238", align 8
  %"$msgobj_v_240" = getelementptr i8, i8* %"$msgobj_233", i32 25
  %"$msgobj_v_241" = bitcast i8* %"$msgobj_v_240" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_239", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_241", align 8
  %"$msgobj_fname_243" = getelementptr i8, i8* %"$msgobj_233", i32 41
  %"$msgobj_fname_244" = bitcast i8* %"$msgobj_fname_243" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_242", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_244", align 8
  %"$msgobj_td_245" = getelementptr i8, i8* %"$msgobj_233", i32 57
  %"$msgobj_td_246" = bitcast i8* %"$msgobj_td_245" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_44", %_TyDescrTy_Typ** %"$msgobj_td_246", align 8
  %"$msgobj_v_247" = getelementptr i8, i8* %"$msgobj_233", i32 65
  %"$msgobj_v_248" = bitcast i8* %"$msgobj_v_247" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_248", align 1
  %"$msgobj_fname_250" = getelementptr i8, i8* %"$msgobj_233", i32 85
  %"$msgobj_fname_251" = bitcast i8* %"$msgobj_fname_250" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_249", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_251", align 8
  %"$msgobj_td_252" = getelementptr i8, i8* %"$msgobj_233", i32 101
  %"$msgobj_td_253" = bitcast i8* %"$msgobj_td_252" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ** %"$msgobj_td_253", align 8
  %"$msgobj_v_254" = getelementptr i8, i8* %"$msgobj_233", i32 109
  %"$msgobj_v_255" = bitcast i8* %"$msgobj_v_254" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_255", align 8
  %"$msgobj_fname_257" = getelementptr i8, i8* %"$msgobj_233", i32 125
  %"$msgobj_fname_258" = bitcast i8* %"$msgobj_fname_257" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_256", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_258", align 8
  %"$msgobj_td_259" = getelementptr i8, i8* %"$msgobj_233", i32 141
  %"$msgobj_td_260" = bitcast i8* %"$msgobj_td_259" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_260", align 8
  %"$msgobj_v_262" = getelementptr i8, i8* %"$msgobj_233", i32 149
  %"$msgobj_v_263" = bitcast i8* %"$msgobj_v_262" to %String*
  store %String { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @"$stringlit_261", i32 0, i32 0), i32 23 }, %String* %"$msgobj_v_263", align 8
  store i8* %"$msgobj_233", i8** %m, align 8
  %"$gasrem_265" = load i64, i64* @_gasrem, align 8
  %"$gascmp_266" = icmp ugt i64 1, %"$gasrem_265"
  br i1 %"$gascmp_266", label %"$out_of_gas_267", label %"$have_gas_268"

"$out_of_gas_267":                                ; preds = %"$have_gas_231"
  call void @_out_of_gas()
  br label %"$have_gas_268"

"$have_gas_268":                                  ; preds = %"$out_of_gas_267", %"$have_gas_231"
  %"$consume_269" = sub i64 %"$gasrem_265", 1
  store i64 %"$consume_269", i64* @_gasrem, align 8
  %mone = alloca %TName_List_Message*, align 8
  %"$gasrem_270" = load i64, i64* @_gasrem, align 8
  %"$gascmp_271" = icmp ugt i64 1, %"$gasrem_270"
  br i1 %"$gascmp_271", label %"$out_of_gas_272", label %"$have_gas_273"

"$out_of_gas_272":                                ; preds = %"$have_gas_268"
  call void @_out_of_gas()
  br label %"$have_gas_273"

"$have_gas_273":                                  ; preds = %"$out_of_gas_272", %"$have_gas_268"
  %"$consume_274" = sub i64 %"$gasrem_270", 1
  store i64 %"$consume_274", i64* @_gasrem, align 8
  %"$ecdsa.one_msg_4" = alloca %TName_List_Message*, align 8
  %"$ecdsa.one_msg_275" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ecdsa.one_msg, align 8
  %"$ecdsa.one_msg_fptr_276" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ecdsa.one_msg_275", 0
  %"$ecdsa.one_msg_envptr_277" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ecdsa.one_msg_275", 1
  %"$m_278" = load i8*, i8** %m, align 8
  %"$ecdsa.one_msg_call_279" = call %TName_List_Message* %"$ecdsa.one_msg_fptr_276"(i8* %"$ecdsa.one_msg_envptr_277", i8* %"$m_278")
  store %TName_List_Message* %"$ecdsa.one_msg_call_279", %TName_List_Message** %"$ecdsa.one_msg_4", align 8
  %"$$ecdsa.one_msg_4_280" = load %TName_List_Message*, %TName_List_Message** %"$ecdsa.one_msg_4", align 8
  store %TName_List_Message* %"$$ecdsa.one_msg_4_280", %TName_List_Message** %mone, align 8
  %"$mone_281" = load %TName_List_Message*, %TName_List_Message** %mone, align 8
  %"$$mone_281_282" = bitcast %TName_List_Message* %"$mone_281" to i8*
  %"$_literal_cost_call_283" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_50", i8* %"$$mone_281_282")
  %"$gasrem_284" = load i64, i64* @_gasrem, align 8
  %"$gascmp_285" = icmp ugt i64 %"$_literal_cost_call_283", %"$gasrem_284"
  br i1 %"$gascmp_285", label %"$out_of_gas_286", label %"$have_gas_287"

"$out_of_gas_286":                                ; preds = %"$have_gas_273"
  call void @_out_of_gas()
  br label %"$have_gas_287"

"$have_gas_287":                                  ; preds = %"$out_of_gas_286", %"$have_gas_273"
  %"$consume_288" = sub i64 %"$gasrem_284", %"$_literal_cost_call_283"
  store i64 %"$consume_288", i64* @_gasrem, align 8
  %"$execptr_load_289" = load i8*, i8** @_execptr, align 8
  %"$mone_290" = load %TName_List_Message*, %TName_List_Message** %mone, align 8
  call void @_send(i8* %"$execptr_load_289", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_50", %TName_List_Message* %"$mone_290")
  br label %"$matchsucc_216"

"$False_291":                                     ; preds = %"$have_gas_214"
  %"$$sig_3_292" = bitcast %TName_Bool* %"$$sig_3_217" to %CName_False*
  %"$gasrem_293" = load i64, i64* @_gasrem, align 8
  %"$gascmp_294" = icmp ugt i64 1, %"$gasrem_293"
  br i1 %"$gascmp_294", label %"$out_of_gas_295", label %"$have_gas_296"

"$out_of_gas_295":                                ; preds = %"$False_291"
  call void @_out_of_gas()
  br label %"$have_gas_296"

"$have_gas_296":                                  ; preds = %"$out_of_gas_295", %"$False_291"
  %"$consume_297" = sub i64 %"$gasrem_293", 1
  store i64 %"$consume_297", i64* @_gasrem, align 8
  %m1 = alloca i8*, align 8
  %"$gasrem_298" = load i64, i64* @_gasrem, align 8
  %"$gascmp_299" = icmp ugt i64 1, %"$gasrem_298"
  br i1 %"$gascmp_299", label %"$out_of_gas_300", label %"$have_gas_301"

"$out_of_gas_300":                                ; preds = %"$have_gas_296"
  call void @_out_of_gas()
  br label %"$have_gas_301"

"$have_gas_301":                                  ; preds = %"$out_of_gas_300", %"$have_gas_296"
  %"$consume_302" = sub i64 %"$gasrem_298", 1
  store i64 %"$consume_302", i64* @_gasrem, align 8
  %"$msgobj_303_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_303_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_303_salloc_load", i64 165)
  %"$msgobj_303_salloc" = bitcast i8* %"$msgobj_303_salloc_salloc" to [165 x i8]*
  %"$msgobj_303" = bitcast [165 x i8]* %"$msgobj_303_salloc" to i8*
  store i8 4, i8* %"$msgobj_303", align 1
  %"$msgobj_fname_305" = getelementptr i8, i8* %"$msgobj_303", i32 1
  %"$msgobj_fname_306" = bitcast i8* %"$msgobj_fname_305" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_304", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_306", align 8
  %"$msgobj_td_307" = getelementptr i8, i8* %"$msgobj_303", i32 17
  %"$msgobj_td_308" = bitcast i8* %"$msgobj_td_307" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_308", align 8
  %"$msgobj_v_310" = getelementptr i8, i8* %"$msgobj_303", i32 25
  %"$msgobj_v_311" = bitcast i8* %"$msgobj_v_310" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_309", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_311", align 8
  %"$msgobj_fname_313" = getelementptr i8, i8* %"$msgobj_303", i32 41
  %"$msgobj_fname_314" = bitcast i8* %"$msgobj_fname_313" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_312", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_314", align 8
  %"$msgobj_td_315" = getelementptr i8, i8* %"$msgobj_303", i32 57
  %"$msgobj_td_316" = bitcast i8* %"$msgobj_td_315" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_44", %_TyDescrTy_Typ** %"$msgobj_td_316", align 8
  %"$msgobj_v_317" = getelementptr i8, i8* %"$msgobj_303", i32 65
  %"$msgobj_v_318" = bitcast i8* %"$msgobj_v_317" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_318", align 1
  %"$msgobj_fname_320" = getelementptr i8, i8* %"$msgobj_303", i32 85
  %"$msgobj_fname_321" = bitcast i8* %"$msgobj_fname_320" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_319", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_321", align 8
  %"$msgobj_td_322" = getelementptr i8, i8* %"$msgobj_303", i32 101
  %"$msgobj_td_323" = bitcast i8* %"$msgobj_td_322" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ** %"$msgobj_td_323", align 8
  %"$msgobj_v_324" = getelementptr i8, i8* %"$msgobj_303", i32 109
  %"$msgobj_v_325" = bitcast i8* %"$msgobj_v_324" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_325", align 8
  %"$msgobj_fname_327" = getelementptr i8, i8* %"$msgobj_303", i32 125
  %"$msgobj_fname_328" = bitcast i8* %"$msgobj_fname_327" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_326", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_328", align 8
  %"$msgobj_td_329" = getelementptr i8, i8* %"$msgobj_303", i32 141
  %"$msgobj_td_330" = bitcast i8* %"$msgobj_td_329" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_330", align 8
  %"$msgobj_v_332" = getelementptr i8, i8* %"$msgobj_303", i32 149
  %"$msgobj_v_333" = bitcast i8* %"$msgobj_v_332" to %String*
  store %String { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @"$stringlit_331", i32 0, i32 0), i32 19 }, %String* %"$msgobj_v_333", align 8
  store i8* %"$msgobj_303", i8** %m1, align 8
  %"$gasrem_335" = load i64, i64* @_gasrem, align 8
  %"$gascmp_336" = icmp ugt i64 1, %"$gasrem_335"
  br i1 %"$gascmp_336", label %"$out_of_gas_337", label %"$have_gas_338"

"$out_of_gas_337":                                ; preds = %"$have_gas_301"
  call void @_out_of_gas()
  br label %"$have_gas_338"

"$have_gas_338":                                  ; preds = %"$out_of_gas_337", %"$have_gas_301"
  %"$consume_339" = sub i64 %"$gasrem_335", 1
  store i64 %"$consume_339", i64* @_gasrem, align 8
  %mone2 = alloca %TName_List_Message*, align 8
  %"$gasrem_340" = load i64, i64* @_gasrem, align 8
  %"$gascmp_341" = icmp ugt i64 1, %"$gasrem_340"
  br i1 %"$gascmp_341", label %"$out_of_gas_342", label %"$have_gas_343"

"$out_of_gas_342":                                ; preds = %"$have_gas_338"
  call void @_out_of_gas()
  br label %"$have_gas_343"

"$have_gas_343":                                  ; preds = %"$out_of_gas_342", %"$have_gas_338"
  %"$consume_344" = sub i64 %"$gasrem_340", 1
  store i64 %"$consume_344", i64* @_gasrem, align 8
  %"$ecdsa.one_msg_5" = alloca %TName_List_Message*, align 8
  %"$ecdsa.one_msg_345" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ecdsa.one_msg, align 8
  %"$ecdsa.one_msg_fptr_346" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ecdsa.one_msg_345", 0
  %"$ecdsa.one_msg_envptr_347" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ecdsa.one_msg_345", 1
  %"$m_348" = load i8*, i8** %m1, align 8
  %"$ecdsa.one_msg_call_349" = call %TName_List_Message* %"$ecdsa.one_msg_fptr_346"(i8* %"$ecdsa.one_msg_envptr_347", i8* %"$m_348")
  store %TName_List_Message* %"$ecdsa.one_msg_call_349", %TName_List_Message** %"$ecdsa.one_msg_5", align 8
  %"$$ecdsa.one_msg_5_350" = load %TName_List_Message*, %TName_List_Message** %"$ecdsa.one_msg_5", align 8
  store %TName_List_Message* %"$$ecdsa.one_msg_5_350", %TName_List_Message** %mone2, align 8
  %"$mone_351" = load %TName_List_Message*, %TName_List_Message** %mone2, align 8
  %"$$mone_351_352" = bitcast %TName_List_Message* %"$mone_351" to i8*
  %"$_literal_cost_call_353" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_50", i8* %"$$mone_351_352")
  %"$gasrem_354" = load i64, i64* @_gasrem, align 8
  %"$gascmp_355" = icmp ugt i64 %"$_literal_cost_call_353", %"$gasrem_354"
  br i1 %"$gascmp_355", label %"$out_of_gas_356", label %"$have_gas_357"

"$out_of_gas_356":                                ; preds = %"$have_gas_343"
  call void @_out_of_gas()
  br label %"$have_gas_357"

"$have_gas_357":                                  ; preds = %"$out_of_gas_356", %"$have_gas_343"
  %"$consume_358" = sub i64 %"$gasrem_354", %"$_literal_cost_call_353"
  store i64 %"$consume_358", i64* @_gasrem, align 8
  %"$execptr_load_359" = load i8*, i8** @_execptr, align 8
  %"$mone_360" = load %TName_List_Message*, %TName_List_Message** %mone2, align 8
  call void @_send(i8* %"$execptr_load_359", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_50", %TName_List_Message* %"$mone_360")
  br label %"$matchsucc_216"

"$empty_default_220":                             ; preds = %"$have_gas_214"
  br label %"$matchsucc_216"

"$matchsucc_216":                                 ; preds = %"$have_gas_357", %"$have_gas_287", %"$empty_default_220"
  br label %"$matchsucc_175"

"$None_361":                                      ; preds = %"$have_gas_173"
  %"$pubk_o_362" = bitcast %TName_Option_ByStr33* %"$pubk_o_176" to %CName_None_ByStr33*
  %"$gasrem_363" = load i64, i64* @_gasrem, align 8
  %"$gascmp_364" = icmp ugt i64 1, %"$gasrem_363"
  br i1 %"$gascmp_364", label %"$out_of_gas_365", label %"$have_gas_366"

"$out_of_gas_365":                                ; preds = %"$None_361"
  call void @_out_of_gas()
  br label %"$have_gas_366"

"$have_gas_366":                                  ; preds = %"$out_of_gas_365", %"$None_361"
  %"$consume_367" = sub i64 %"$gasrem_363", 1
  store i64 %"$consume_367", i64* @_gasrem, align 8
  %m3 = alloca i8*, align 8
  %"$gasrem_368" = load i64, i64* @_gasrem, align 8
  %"$gascmp_369" = icmp ugt i64 1, %"$gasrem_368"
  br i1 %"$gascmp_369", label %"$out_of_gas_370", label %"$have_gas_371"

"$out_of_gas_370":                                ; preds = %"$have_gas_366"
  call void @_out_of_gas()
  br label %"$have_gas_371"

"$have_gas_371":                                  ; preds = %"$out_of_gas_370", %"$have_gas_366"
  %"$consume_372" = sub i64 %"$gasrem_368", 1
  store i64 %"$consume_372", i64* @_gasrem, align 8
  %"$msgobj_373_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_373_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_373_salloc_load", i64 165)
  %"$msgobj_373_salloc" = bitcast i8* %"$msgobj_373_salloc_salloc" to [165 x i8]*
  %"$msgobj_373" = bitcast [165 x i8]* %"$msgobj_373_salloc" to i8*
  store i8 4, i8* %"$msgobj_373", align 1
  %"$msgobj_fname_375" = getelementptr i8, i8* %"$msgobj_373", i32 1
  %"$msgobj_fname_376" = bitcast i8* %"$msgobj_fname_375" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_374", i32 0, i32 0), i32 4 }, %String* %"$msgobj_fname_376", align 8
  %"$msgobj_td_377" = getelementptr i8, i8* %"$msgobj_373", i32 17
  %"$msgobj_td_378" = bitcast i8* %"$msgobj_td_377" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_378", align 8
  %"$msgobj_v_380" = getelementptr i8, i8* %"$msgobj_373", i32 25
  %"$msgobj_v_381" = bitcast i8* %"$msgobj_v_380" to %String*
  store %String { i8* getelementptr inbounds ([0 x i8], [0 x i8]* @"$stringlit_379", i32 0, i32 0), i32 0 }, %String* %"$msgobj_v_381", align 8
  %"$msgobj_fname_383" = getelementptr i8, i8* %"$msgobj_373", i32 41
  %"$msgobj_fname_384" = bitcast i8* %"$msgobj_fname_383" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_382", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_384", align 8
  %"$msgobj_td_385" = getelementptr i8, i8* %"$msgobj_373", i32 57
  %"$msgobj_td_386" = bitcast i8* %"$msgobj_td_385" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Bystr20_44", %_TyDescrTy_Typ** %"$msgobj_td_386", align 8
  %"$msgobj_v_387" = getelementptr i8, i8* %"$msgobj_373", i32 65
  %"$msgobj_v_388" = bitcast i8* %"$msgobj_v_387" to [20 x i8]*
  store [20 x i8] %_sender, [20 x i8]* %"$msgobj_v_388", align 1
  %"$msgobj_fname_390" = getelementptr i8, i8* %"$msgobj_373", i32 85
  %"$msgobj_fname_391" = bitcast i8* %"$msgobj_fname_390" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_389", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_391", align 8
  %"$msgobj_td_392" = getelementptr i8, i8* %"$msgobj_373", i32 101
  %"$msgobj_td_393" = bitcast i8* %"$msgobj_td_392" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Uint128_22", %_TyDescrTy_Typ** %"$msgobj_td_393", align 8
  %"$msgobj_v_394" = getelementptr i8, i8* %"$msgobj_373", i32 109
  %"$msgobj_v_395" = bitcast i8* %"$msgobj_v_394" to %Uint128*
  store %Uint128 zeroinitializer, %Uint128* %"$msgobj_v_395", align 8
  %"$msgobj_fname_397" = getelementptr i8, i8* %"$msgobj_373", i32 125
  %"$msgobj_fname_398" = bitcast i8* %"$msgobj_fname_397" to %String*
  store %String { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @"$stringlit_396", i32 0, i32 0), i32 6 }, %String* %"$msgobj_fname_398", align 8
  %"$msgobj_td_399" = getelementptr i8, i8* %"$msgobj_373", i32 141
  %"$msgobj_td_400" = bitcast i8* %"$msgobj_td_399" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_28", %_TyDescrTy_Typ** %"$msgobj_td_400", align 8
  %"$msgobj_v_402" = getelementptr i8, i8* %"$msgobj_373", i32 149
  %"$msgobj_v_403" = bitcast i8* %"$msgobj_v_402" to %String*
  store %String { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @"$stringlit_401", i32 0, i32 0), i32 12 }, %String* %"$msgobj_v_403", align 8
  store i8* %"$msgobj_373", i8** %m3, align 8
  %"$gasrem_405" = load i64, i64* @_gasrem, align 8
  %"$gascmp_406" = icmp ugt i64 1, %"$gasrem_405"
  br i1 %"$gascmp_406", label %"$out_of_gas_407", label %"$have_gas_408"

"$out_of_gas_407":                                ; preds = %"$have_gas_371"
  call void @_out_of_gas()
  br label %"$have_gas_408"

"$have_gas_408":                                  ; preds = %"$out_of_gas_407", %"$have_gas_371"
  %"$consume_409" = sub i64 %"$gasrem_405", 1
  store i64 %"$consume_409", i64* @_gasrem, align 8
  %mone4 = alloca %TName_List_Message*, align 8
  %"$gasrem_410" = load i64, i64* @_gasrem, align 8
  %"$gascmp_411" = icmp ugt i64 1, %"$gasrem_410"
  br i1 %"$gascmp_411", label %"$out_of_gas_412", label %"$have_gas_413"

"$out_of_gas_412":                                ; preds = %"$have_gas_408"
  call void @_out_of_gas()
  br label %"$have_gas_413"

"$have_gas_413":                                  ; preds = %"$out_of_gas_412", %"$have_gas_408"
  %"$consume_414" = sub i64 %"$gasrem_410", 1
  store i64 %"$consume_414", i64* @_gasrem, align 8
  %"$ecdsa.one_msg_6" = alloca %TName_List_Message*, align 8
  %"$ecdsa.one_msg_415" = load { %TName_List_Message* (i8*, i8*)*, i8* }, { %TName_List_Message* (i8*, i8*)*, i8* }* @ecdsa.one_msg, align 8
  %"$ecdsa.one_msg_fptr_416" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ecdsa.one_msg_415", 0
  %"$ecdsa.one_msg_envptr_417" = extractvalue { %TName_List_Message* (i8*, i8*)*, i8* } %"$ecdsa.one_msg_415", 1
  %"$m_418" = load i8*, i8** %m3, align 8
  %"$ecdsa.one_msg_call_419" = call %TName_List_Message* %"$ecdsa.one_msg_fptr_416"(i8* %"$ecdsa.one_msg_envptr_417", i8* %"$m_418")
  store %TName_List_Message* %"$ecdsa.one_msg_call_419", %TName_List_Message** %"$ecdsa.one_msg_6", align 8
  %"$$ecdsa.one_msg_6_420" = load %TName_List_Message*, %TName_List_Message** %"$ecdsa.one_msg_6", align 8
  store %TName_List_Message* %"$$ecdsa.one_msg_6_420", %TName_List_Message** %mone4, align 8
  %"$mone_421" = load %TName_List_Message*, %TName_List_Message** %mone4, align 8
  %"$$mone_421_422" = bitcast %TName_List_Message* %"$mone_421" to i8*
  %"$_literal_cost_call_423" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_50", i8* %"$$mone_421_422")
  %"$gasrem_424" = load i64, i64* @_gasrem, align 8
  %"$gascmp_425" = icmp ugt i64 %"$_literal_cost_call_423", %"$gasrem_424"
  br i1 %"$gascmp_425", label %"$out_of_gas_426", label %"$have_gas_427"

"$out_of_gas_426":                                ; preds = %"$have_gas_413"
  call void @_out_of_gas()
  br label %"$have_gas_427"

"$have_gas_427":                                  ; preds = %"$out_of_gas_426", %"$have_gas_413"
  %"$consume_428" = sub i64 %"$gasrem_424", %"$_literal_cost_call_423"
  store i64 %"$consume_428", i64* @_gasrem, align 8
  %"$execptr_load_429" = load i8*, i8** @_execptr, align 8
  %"$mone_430" = load %TName_List_Message*, %TName_List_Message** %mone4, align 8
  call void @_send(i8* %"$execptr_load_429", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Message_50", %TName_List_Message* %"$mone_430")
  br label %"$matchsucc_175"

"$empty_default_179":                             ; preds = %"$have_gas_173"
  br label %"$matchsucc_175"

"$matchsucc_175":                                 ; preds = %"$have_gas_427", %"$matchsucc_216", %"$empty_default_179"
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare %TName_Bool* @_ecdsa_verify(i8*, [33 x i8]*, %Bystr, [64 x i8]*)

declare void @_send(i8*, %_TyDescrTy_Typ*, %TName_List_Message*)

define void @verify(i8* %0) {
entry:
  %"$_amount_432" = getelementptr i8, i8* %0, i32 0
  %"$_amount_433" = bitcast i8* %"$_amount_432" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_433", align 8
  %"$_origin_434" = getelementptr i8, i8* %0, i32 16
  %"$_origin_435" = bitcast i8* %"$_origin_434" to [20 x i8]*
  %"$_sender_436" = getelementptr i8, i8* %0, i32 36
  %"$_sender_437" = bitcast i8* %"$_sender_436" to [20 x i8]*
  %"$msg_438" = getelementptr i8, i8* %0, i32 56
  %"$msg_439" = bitcast i8* %"$msg_438" to %Bystr*
  %msg = load %Bystr, %Bystr* %"$msg_439", align 8
  %"$sig_440" = getelementptr i8, i8* %0, i32 72
  %"$sig_441" = bitcast i8* %"$sig_440" to [64 x i8]*
  call void @"$verify_153"(%Uint128 %_amount, [20 x i8]* %"$_origin_435", [20 x i8]* %"$_sender_437", %Bystr %msg, [64 x i8]* %"$sig_441")
  ret void
}
