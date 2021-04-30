

; gas_remaining: 4002000
; ModuleID = 'NameClash1'
source_filename = "NameClash1"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"$TyDescrTy_PrimTyp_6" = type { i32, i32 }
%_TyDescrTy_Typ = type { i32, i8* }
%"$TyDescrTy_ADTTyp_38" = type { %TyDescrString, i32, i32, i32, %"$TyDescrTy_ADTTyp_Specl_37"** }
%TyDescrString = type { i8*, i32 }
%"$TyDescrTy_ADTTyp_Specl_37" = type { %_TyDescrTy_Typ**, %"$TyDescrTy_ADTTyp_Constr_39"**, %"$TyDescrTy_ADTTyp_38"* }
%"$TyDescrTy_ADTTyp_Constr_39" = type { %TyDescrString, i32, %_TyDescrTy_Typ** }
%"$TyDescr_AddrTyp_44" = type { i32, %"$TyDescr_AddrFieldTyp_43"* }
%"$TyDescr_AddrFieldTyp_43" = type { %TyDescrString, %_TyDescrTy_Typ* }
%Uint32 = type { i32 }
%Int32 = type { i32 }
%Uint128 = type { i128 }
%String = type { i8*, i32 }
%TName_Bool = type { i8, %CName_True*, %CName_False* }
%CName_True = type <{ i8 }>
%CName_False = type <{ i8 }>
%TName_List_Int32 = type { i8, %CName_Cons_Int32*, %CName_Nil_Int32* }
%CName_Cons_Int32 = type <{ i8, %Int32, %TName_List_Int32* }>
%CName_Nil_Int32 = type <{ i8 }>

@_execptr = global i8* null
@_gasrem = global i64 0
@"$TyDescr_Int32_Prim_7" = global %"$TyDescrTy_PrimTyp_6" zeroinitializer
@"$TyDescr_Int32_8" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int32_Prim_7" to i8*) }
@"$TyDescr_Uint32_Prim_9" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 0 }
@"$TyDescr_Uint32_10" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint32_Prim_9" to i8*) }
@"$TyDescr_Int64_Prim_11" = global %"$TyDescrTy_PrimTyp_6" { i32 0, i32 1 }
@"$TyDescr_Int64_12" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int64_Prim_11" to i8*) }
@"$TyDescr_Uint64_Prim_13" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 1 }
@"$TyDescr_Uint64_14" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint64_Prim_13" to i8*) }
@"$TyDescr_Int128_Prim_15" = global %"$TyDescrTy_PrimTyp_6" { i32 0, i32 2 }
@"$TyDescr_Int128_16" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int128_Prim_15" to i8*) }
@"$TyDescr_Uint128_Prim_17" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 2 }
@"$TyDescr_Uint128_18" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint128_Prim_17" to i8*) }
@"$TyDescr_Int256_Prim_19" = global %"$TyDescrTy_PrimTyp_6" { i32 0, i32 3 }
@"$TyDescr_Int256_20" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Int256_Prim_19" to i8*) }
@"$TyDescr_Uint256_Prim_21" = global %"$TyDescrTy_PrimTyp_6" { i32 1, i32 3 }
@"$TyDescr_Uint256_22" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Uint256_Prim_21" to i8*) }
@"$TyDescr_String_Prim_23" = global %"$TyDescrTy_PrimTyp_6" { i32 2, i32 0 }
@"$TyDescr_String_24" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_String_Prim_23" to i8*) }
@"$TyDescr_Bnum_Prim_25" = global %"$TyDescrTy_PrimTyp_6" { i32 3, i32 0 }
@"$TyDescr_Bnum_26" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bnum_Prim_25" to i8*) }
@"$TyDescr_Message_Prim_27" = global %"$TyDescrTy_PrimTyp_6" { i32 4, i32 0 }
@"$TyDescr_Message_28" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Message_Prim_27" to i8*) }
@"$TyDescr_Event_Prim_29" = global %"$TyDescrTy_PrimTyp_6" { i32 5, i32 0 }
@"$TyDescr_Event_30" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Event_Prim_29" to i8*) }
@"$TyDescr_Exception_Prim_31" = global %"$TyDescrTy_PrimTyp_6" { i32 6, i32 0 }
@"$TyDescr_Exception_32" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Exception_Prim_31" to i8*) }
@"$TyDescr_Bystr_Prim_33" = global %"$TyDescrTy_PrimTyp_6" { i32 7, i32 0 }
@"$TyDescr_Bystr_34" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bystr_Prim_33" to i8*) }
@"$TyDescr_Bystr20_Prim_35" = global %"$TyDescrTy_PrimTyp_6" { i32 8, i32 20 }
@"$TyDescr_Bystr20_36" = global %_TyDescrTy_Typ { i32 0, i8* bitcast (%"$TyDescrTy_PrimTyp_6"* @"$TyDescr_Bystr20_Prim_35" to i8*) }
@"$TyDescr_ADT_List_Int32_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_List_Int32_ADTTyp_Specl_55" to i8*) }
@"$TyDescr_ADT_Bool_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_Bool_ADTTyp_Specl_67" to i8*) }
@"$TyDescr_Addr_45" = unnamed_addr constant %_TyDescrTy_Typ { i32 3, i8* bitcast (%"$TyDescr_AddrTyp_44"* @"$TyDescr_AddrFields_70" to i8*) }
@"$TyDescr_List_ADTTyp_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_57", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_37"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_37"*], [1 x %"$TyDescrTy_ADTTyp_Specl_37"*]* @"$TyDescr_List_ADTTyp_m_specls_56", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int32_Constr_m_args_47" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_8", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_40"]
@"$TyDescr_ADT_Cons_48" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_48", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_47", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_50" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_51" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_51", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_50", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_53" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_39"*] [%"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_49", %"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_52"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_54" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_8"]
@"$TyDescr_List_Int32_ADTTyp_Specl_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_37" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_54", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_39"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_39"*], [2 x %"$TyDescrTy_ADTTyp_Constr_39"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_53", i32 0, i32 0), %"$TyDescrTy_ADTTyp_38"* @"$TyDescr_List_ADTTyp_46" }
@"$TyDescr_List_ADTTyp_m_specls_56" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_37"*] [%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_List_Int32_ADTTyp_Specl_55"]
@"$TyDescr_ADT_List_57" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_Bool_ADTTyp_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_69", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_37"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_37"*], [1 x %"$TyDescrTy_ADTTyp_Specl_37"*]* @"$TyDescr_Bool_ADTTyp_m_specls_68", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_59" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_60" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_61" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_60", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_59", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_62" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_63" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_63", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_62", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_65" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_39"*] [%"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_Bool_True_ADTTyp_Constr_61", %"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_Bool_False_ADTTyp_Constr_64"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_66" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_67" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_37" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_66", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_39"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_39"*], [2 x %"$TyDescrTy_ADTTyp_Constr_39"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_65", i32 0, i32 0), %"$TyDescrTy_ADTTyp_38"* @"$TyDescr_Bool_ADTTyp_58" }
@"$TyDescr_Bool_ADTTyp_m_specls_68" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_37"*] [%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_Bool_ADTTyp_Specl_67"]
@"$TyDescr_ADT_Bool_69" = unnamed_addr constant [4 x i8] c"Bool"
@"$TyDescr_AddrFields_70" = unnamed_addr constant %"$TyDescr_AddrTyp_44" { i32 -1, %"$TyDescr_AddrFieldTyp_43"* null }
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@"$x_77" = unnamed_addr constant [2 x i8] c"x\00"
@"$stringlit_94" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_99" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_102" = unnamed_addr constant [7 x i8] c"message"
@"$x_123" = unnamed_addr constant [2 x i8] c"x\00"
@_tydescr_table = constant [18 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_30", %_TyDescrTy_Typ* @"$TyDescr_Int64_12", %_TyDescrTy_Typ* @"$TyDescr_Addr_45", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_41", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_36", %_TyDescrTy_Typ* @"$TyDescr_Uint256_22", %_TyDescrTy_Typ* @"$TyDescr_Uint32_10", %_TyDescrTy_Typ* @"$TyDescr_Uint64_14", %_TyDescrTy_Typ* @"$TyDescr_Bnum_26", %_TyDescrTy_Typ* @"$TyDescr_Uint128_18", %_TyDescrTy_Typ* @"$TyDescr_Exception_32", %_TyDescrTy_Typ* @"$TyDescr_String_24", %_TyDescrTy_Typ* @"$TyDescr_Int256_20", %_TyDescrTy_Typ* @"$TyDescr_Int128_16", %_TyDescrTy_Typ* @"$TyDescr_Bystr_34", %_TyDescrTy_Typ* @"$TyDescr_Message_28", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_40", %_TyDescrTy_Typ* @"$TyDescr_Int32_8"]
@_tydescr_table_length = constant i32 18

define void @_init_libs() {
entry:
  ret void
}

define void @_init_state() {
entry:
  %"$x_5" = alloca %Int32, align 8
  %"$gasrem_71" = load i64, i64* @_gasrem, align 8
  %"$gascmp_72" = icmp ugt i64 1, %"$gasrem_71"
  br i1 %"$gascmp_72", label %"$out_of_gas_73", label %"$have_gas_74"

"$out_of_gas_73":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_74"

"$have_gas_74":                                   ; preds = %"$out_of_gas_73", %entry
  %"$consume_75" = sub i64 %"$gasrem_71", 1
  store i64 %"$consume_75", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %"$x_5", align 4
  %"$execptr_load_76" = load i8*, i8** @_execptr, align 8
  %"$$x_5_78" = load %Int32, %Int32* %"$x_5", align 4
  %"$update_value_79" = alloca %Int32, align 8
  store %Int32 %"$$x_5_78", %Int32* %"$update_value_79", align 4
  %"$update_value_80" = bitcast %Int32* %"$update_value_79" to i8*
  call void @_update_field(i8* %"$execptr_load_76", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_77", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_8", i32 0, i8* null, i8* %"$update_value_80")
  ret void
}

declare void @_out_of_gas()

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$create_event_81"(%Uint128 %_amount, [20 x i8]* %"$_sender_82", %Int32 %m) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_82", align 1
  %"$gasrem_83" = load i64, i64* @_gasrem, align 8
  %"$gascmp_84" = icmp ugt i64 1, %"$gasrem_83"
  br i1 %"$gascmp_84", label %"$out_of_gas_85", label %"$have_gas_86"

"$out_of_gas_85":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_86"

"$have_gas_86":                                   ; preds = %"$out_of_gas_85", %entry
  %"$consume_87" = sub i64 %"$gasrem_83", 1
  store i64 %"$consume_87", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_88" = load i64, i64* @_gasrem, align 8
  %"$gascmp_89" = icmp ugt i64 1, %"$gasrem_88"
  br i1 %"$gascmp_89", label %"$out_of_gas_90", label %"$have_gas_91"

"$out_of_gas_90":                                 ; preds = %"$have_gas_86"
  call void @_out_of_gas()
  br label %"$have_gas_91"

"$have_gas_91":                                   ; preds = %"$out_of_gas_90", %"$have_gas_86"
  %"$consume_92" = sub i64 %"$gasrem_88", 1
  store i64 %"$consume_92", i64* @_gasrem, align 8
  %"$msgobj_93_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_93_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_93_salloc_load", i64 69)
  %"$msgobj_93_salloc" = bitcast i8* %"$msgobj_93_salloc_salloc" to [69 x i8]*
  %"$msgobj_93" = bitcast [69 x i8]* %"$msgobj_93_salloc" to i8*
  store i8 2, i8* %"$msgobj_93", align 1
  %"$msgobj_fname_95" = getelementptr i8, i8* %"$msgobj_93", i32 1
  %"$msgobj_fname_96" = bitcast i8* %"$msgobj_fname_95" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_94", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_96", align 8
  %"$msgobj_td_97" = getelementptr i8, i8* %"$msgobj_93", i32 17
  %"$msgobj_td_98" = bitcast i8* %"$msgobj_td_97" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_24", %_TyDescrTy_Typ** %"$msgobj_td_98", align 8
  %"$msgobj_v_100" = getelementptr i8, i8* %"$msgobj_93", i32 25
  %"$msgobj_v_101" = bitcast i8* %"$msgobj_v_100" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_99", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_101", align 8
  %"$msgobj_fname_103" = getelementptr i8, i8* %"$msgobj_93", i32 41
  %"$msgobj_fname_104" = bitcast i8* %"$msgobj_fname_103" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_102", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_104", align 8
  %"$msgobj_td_105" = getelementptr i8, i8* %"$msgobj_93", i32 57
  %"$msgobj_td_106" = bitcast i8* %"$msgobj_td_105" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_8", %_TyDescrTy_Typ** %"$msgobj_td_106", align 8
  %"$msgobj_v_107" = getelementptr i8, i8* %"$msgobj_93", i32 65
  %"$msgobj_v_108" = bitcast i8* %"$msgobj_v_107" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_108", align 4
  store i8* %"$msgobj_93", i8** %e, align 8
  %"$e_110" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_112" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_30", i8* %"$e_110")
  %"$gasrem_113" = load i64, i64* @_gasrem, align 8
  %"$gascmp_114" = icmp ugt i64 %"$_literal_cost_call_112", %"$gasrem_113"
  br i1 %"$gascmp_114", label %"$out_of_gas_115", label %"$have_gas_116"

"$out_of_gas_115":                                ; preds = %"$have_gas_91"
  call void @_out_of_gas()
  br label %"$have_gas_116"

"$have_gas_116":                                  ; preds = %"$out_of_gas_115", %"$have_gas_91"
  %"$consume_117" = sub i64 %"$gasrem_113", %"$_literal_cost_call_112"
  store i64 %"$consume_117", i64* @_gasrem, align 8
  %"$execptr_load_118" = load i8*, i8** @_execptr, align 8
  %"$e_119" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_118", %_TyDescrTy_Typ* @"$TyDescr_Event_30", i8* %"$e_119")
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_120"(%Uint128 %_amount, [20 x i8]* %"$_sender_121", %TName_Bool* %c) {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_121", align 1
  %"$x_0" = alloca %Int32, align 8
  %"$execptr_load_122" = load i8*, i8** @_execptr, align 8
  %"$$x_0_124" = call i8* @_fetch_field(i8* %"$execptr_load_122", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_123", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_8", i32 0, i8* null, i32 1)
  %"$$x_0_125" = bitcast i8* %"$$x_0_124" to %Int32*
  %"$$x_0_126" = load %Int32, %Int32* %"$$x_0_125", align 4
  store %Int32 %"$$x_0_126", %Int32* %"$x_0", align 4
  %"$_literal_cost_$x_0_127" = alloca %Int32, align 8
  %"$$x_0_128" = load %Int32, %Int32* %"$x_0", align 4
  store %Int32 %"$$x_0_128", %Int32* %"$_literal_cost_$x_0_127", align 4
  %"$$_literal_cost_$x_0_127_129" = bitcast %Int32* %"$_literal_cost_$x_0_127" to i8*
  %"$_literal_cost_call_130" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_8", i8* %"$$_literal_cost_$x_0_127_129")
  %"$gasadd_131" = add i64 %"$_literal_cost_call_130", 0
  %"$gasrem_132" = load i64, i64* @_gasrem, align 8
  %"$gascmp_133" = icmp ugt i64 %"$gasadd_131", %"$gasrem_132"
  br i1 %"$gascmp_133", label %"$out_of_gas_134", label %"$have_gas_135"

"$out_of_gas_134":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_135"

"$have_gas_135":                                  ; preds = %"$out_of_gas_134", %entry
  %"$consume_136" = sub i64 %"$gasrem_132", %"$gasadd_131"
  store i64 %"$consume_136", i64* @_gasrem, align 8
  %"$gasrem_137" = load i64, i64* @_gasrem, align 8
  %"$gascmp_138" = icmp ugt i64 1, %"$gasrem_137"
  br i1 %"$gascmp_138", label %"$out_of_gas_139", label %"$have_gas_140"

"$out_of_gas_139":                                ; preds = %"$have_gas_135"
  call void @_out_of_gas()
  br label %"$have_gas_140"

"$have_gas_140":                                  ; preds = %"$out_of_gas_139", %"$have_gas_135"
  %"$consume_141" = sub i64 %"$gasrem_137", 1
  store i64 %"$consume_141", i64* @_gasrem, align 8
  %"$x_1" = alloca %TName_List_Int32*, align 8
  %"$gasrem_142" = load i64, i64* @_gasrem, align 8
  %"$gascmp_143" = icmp ugt i64 1, %"$gasrem_142"
  br i1 %"$gascmp_143", label %"$out_of_gas_144", label %"$have_gas_145"

"$out_of_gas_144":                                ; preds = %"$have_gas_140"
  call void @_out_of_gas()
  br label %"$have_gas_145"

"$have_gas_145":                                  ; preds = %"$out_of_gas_144", %"$have_gas_140"
  %"$consume_146" = sub i64 %"$gasrem_142", 1
  store i64 %"$consume_146", i64* @_gasrem, align 8
  %"$adtval_147_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_147_salloc" = call i8* @_salloc(i8* %"$adtval_147_load", i64 1)
  %"$adtval_147" = bitcast i8* %"$adtval_147_salloc" to %CName_Nil_Int32*
  %"$adtgep_148" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_147", i32 0, i32 0
  store i8 1, i8* %"$adtgep_148", align 1
  %"$adtptr_149" = bitcast %CName_Nil_Int32* %"$adtval_147" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_149", %TName_List_Int32** %"$x_1", align 8
  %"$gasrem_150" = load i64, i64* @_gasrem, align 8
  %"$gascmp_151" = icmp ugt i64 1, %"$gasrem_150"
  br i1 %"$gascmp_151", label %"$out_of_gas_152", label %"$have_gas_153"

"$out_of_gas_152":                                ; preds = %"$have_gas_145"
  call void @_out_of_gas()
  br label %"$have_gas_153"

"$have_gas_153":                                  ; preds = %"$out_of_gas_152", %"$have_gas_145"
  %"$consume_154" = sub i64 %"$gasrem_150", 1
  store i64 %"$consume_154", i64* @_gasrem, align 8
  %"$x_3" = alloca %Int32, align 8
  %"$gasrem_155" = load i64, i64* @_gasrem, align 8
  %"$gascmp_156" = icmp ugt i64 2, %"$gasrem_155"
  br i1 %"$gascmp_156", label %"$out_of_gas_157", label %"$have_gas_158"

"$out_of_gas_157":                                ; preds = %"$have_gas_153"
  call void @_out_of_gas()
  br label %"$have_gas_158"

"$have_gas_158":                                  ; preds = %"$out_of_gas_157", %"$have_gas_153"
  %"$consume_159" = sub i64 %"$gasrem_155", 2
  store i64 %"$consume_159", i64* @_gasrem, align 8
  %"$$x_1_161" = load %TName_List_Int32*, %TName_List_Int32** %"$x_1", align 8
  %"$$x_1_tag_162" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %"$$x_1_161", i32 0, i32 0
  %"$$x_1_tag_163" = load i8, i8* %"$$x_1_tag_162", align 1
  switch i8 %"$$x_1_tag_163", label %"$empty_default_164" [
    i8 0, label %"$Cons_165"
    i8 1, label %"$Nil_177"
  ]

"$Cons_165":                                      ; preds = %"$have_gas_158"
  %"$$x_1_166" = bitcast %TName_List_Int32* %"$$x_1_161" to %CName_Cons_Int32*
  %"$$x_2_gep_167" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$x_1_166", i32 0, i32 1
  %"$$x_2_load_168" = load %Int32, %Int32* %"$$x_2_gep_167", align 4
  %"$x_2" = alloca %Int32, align 8
  store %Int32 %"$$x_2_load_168", %Int32* %"$x_2", align 4
  %"$$$x_1_4_gep_169" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$x_1_166", i32 0, i32 2
  %"$$$x_1_4_load_170" = load %TName_List_Int32*, %TName_List_Int32** %"$$$x_1_4_gep_169", align 8
  %"$$x_1_4" = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$$$x_1_4_load_170", %TName_List_Int32** %"$$x_1_4", align 8
  %"$gasrem_171" = load i64, i64* @_gasrem, align 8
  %"$gascmp_172" = icmp ugt i64 1, %"$gasrem_171"
  br i1 %"$gascmp_172", label %"$out_of_gas_173", label %"$have_gas_174"

"$out_of_gas_173":                                ; preds = %"$Cons_165"
  call void @_out_of_gas()
  br label %"$have_gas_174"

"$have_gas_174":                                  ; preds = %"$out_of_gas_173", %"$Cons_165"
  %"$consume_175" = sub i64 %"$gasrem_171", 1
  store i64 %"$consume_175", i64* @_gasrem, align 8
  %"$$x_2_176" = load %Int32, %Int32* %"$x_2", align 4
  store %Int32 %"$$x_2_176", %Int32* %"$x_3", align 4
  br label %"$matchsucc_160"

"$Nil_177":                                       ; preds = %"$have_gas_158"
  %"$$x_1_178" = bitcast %TName_List_Int32* %"$$x_1_161" to %CName_Nil_Int32*
  %"$gasrem_179" = load i64, i64* @_gasrem, align 8
  %"$gascmp_180" = icmp ugt i64 1, %"$gasrem_179"
  br i1 %"$gascmp_180", label %"$out_of_gas_181", label %"$have_gas_182"

"$out_of_gas_181":                                ; preds = %"$Nil_177"
  call void @_out_of_gas()
  br label %"$have_gas_182"

"$have_gas_182":                                  ; preds = %"$out_of_gas_181", %"$Nil_177"
  %"$consume_183" = sub i64 %"$gasrem_179", 1
  store i64 %"$consume_183", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* %"$x_3", align 4
  br label %"$matchsucc_160"

"$empty_default_164":                             ; preds = %"$have_gas_158"
  br label %"$matchsucc_160"

"$matchsucc_160":                                 ; preds = %"$have_gas_182", %"$have_gas_174", %"$empty_default_164"
  %"$gasrem_184" = load i64, i64* @_gasrem, align 8
  %"$gascmp_185" = icmp ugt i64 1, %"$gasrem_184"
  br i1 %"$gascmp_185", label %"$out_of_gas_186", label %"$have_gas_187"

"$out_of_gas_186":                                ; preds = %"$matchsucc_160"
  call void @_out_of_gas()
  br label %"$have_gas_187"

"$have_gas_187":                                  ; preds = %"$out_of_gas_186", %"$matchsucc_160"
  %"$consume_188" = sub i64 %"$gasrem_184", 1
  store i64 %"$consume_188", i64* @_gasrem, align 8
  %"$create_event__sender_189" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_189", align 1
  %"$$x_3_190" = load %Int32, %Int32* %"$x_3", align 4
  call void @"$create_event_81"(%Uint128 %_amount, [20 x i8]* %"$create_event__sender_189", %Int32 %"$$x_3_190")
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @t1(i8* %0) {
entry:
  %"$_amount_192" = getelementptr i8, i8* %0, i32 0
  %"$_amount_193" = bitcast i8* %"$_amount_192" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_193", align 8
  %"$_sender_194" = getelementptr i8, i8* %0, i32 16
  %"$_sender_195" = bitcast i8* %"$_sender_194" to [20 x i8]*
  %"$c_196" = getelementptr i8, i8* %0, i32 36
  %"$c_197" = bitcast i8* %"$c_196" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_197", align 8
  call void @"$t1_120"(%Uint128 %_amount, [20 x i8]* %"$_sender_195", %TName_Bool* %c)
  ret void
}
