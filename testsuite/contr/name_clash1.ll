

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
@"$TyDescr_ADT_List_Int32_40" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_List_Int32_ADTTyp_Specl_52" to i8*) }
@"$TyDescr_ADT_Bool_41" = unnamed_addr constant %_TyDescrTy_Typ { i32 1, i8* bitcast (%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_Bool_ADTTyp_Specl_64" to i8*) }
@"$TyDescr_List_ADTTyp_43" = unnamed_addr constant %"$TyDescrTy_ADTTyp_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_List_54", i32 0, i32 0), i32 4 }, i32 1, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_37"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_37"*], [1 x %"$TyDescrTy_ADTTyp_Specl_37"*]* @"$TyDescr_List_ADTTyp_m_specls_53", i32 0, i32 0) }
@"$TyDescr_List_Cons_Int32_Constr_m_args_44" = unnamed_addr constant [2 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_8", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_40"]
@"$TyDescr_ADT_Cons_45" = unnamed_addr constant [4 x i8] c"Cons"
@"$TyDescr_List_Cons_Int32_ADTTyp_Constr_46" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Cons_45", i32 0, i32 0), i32 4 }, i32 2, %_TyDescrTy_Typ** getelementptr inbounds ([2 x %_TyDescrTy_Typ*], [2 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Cons_Int32_Constr_m_args_44", i32 0, i32 0) }
@"$TyDescr_List_Nil_Int32_Constr_m_args_47" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_Nil_48" = unnamed_addr constant [3 x i8] c"Nil"
@"$TyDescr_List_Nil_Int32_ADTTyp_Constr_49" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @"$TyDescr_ADT_Nil_48", i32 0, i32 0), i32 3 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Nil_Int32_Constr_m_args_47", i32 0, i32 0) }
@"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_50" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_39"*] [%"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_List_Cons_Int32_ADTTyp_Constr_46", %"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_List_Nil_Int32_ADTTyp_Constr_49"]
@"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_51" = unnamed_addr constant [1 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Int32_8"]
@"$TyDescr_List_Int32_ADTTyp_Specl_52" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_37" { %_TyDescrTy_Typ** getelementptr inbounds ([1 x %_TyDescrTy_Typ*], [1 x %_TyDescrTy_Typ*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_TArgs_51", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_39"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_39"*], [2 x %"$TyDescrTy_ADTTyp_Constr_39"*]* @"$TyDescr_List_Int32_ADTTyp_Specl_m_constrs_50", i32 0, i32 0), %"$TyDescrTy_ADTTyp_38"* @"$TyDescr_List_ADTTyp_43" }
@"$TyDescr_List_ADTTyp_m_specls_53" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_37"*] [%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_List_Int32_ADTTyp_Specl_52"]
@"$TyDescr_ADT_List_54" = unnamed_addr constant [4 x i8] c"List"
@"$TyDescr_Bool_ADTTyp_55" = unnamed_addr constant %"$TyDescrTy_ADTTyp_38" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_Bool_66", i32 0, i32 0), i32 4 }, i32 0, i32 2, i32 1, %"$TyDescrTy_ADTTyp_Specl_37"** getelementptr inbounds ([1 x %"$TyDescrTy_ADTTyp_Specl_37"*], [1 x %"$TyDescrTy_ADTTyp_Specl_37"*]* @"$TyDescr_Bool_ADTTyp_m_specls_65", i32 0, i32 0) }
@"$TyDescr_Bool_True_Constr_m_args_56" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_True_57" = unnamed_addr constant [4 x i8] c"True"
@"$TyDescr_Bool_True_ADTTyp_Constr_58" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$TyDescr_ADT_True_57", i32 0, i32 0), i32 4 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_True_Constr_m_args_56", i32 0, i32 0) }
@"$TyDescr_Bool_False_Constr_m_args_59" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_ADT_False_60" = unnamed_addr constant [5 x i8] c"False"
@"$TyDescr_Bool_False_ADTTyp_Constr_61" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Constr_39" { %TyDescrString { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @"$TyDescr_ADT_False_60", i32 0, i32 0), i32 5 }, i32 0, %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_False_Constr_m_args_59", i32 0, i32 0) }
@"$TyDescr_Bool_ADTTyp_Specl_m_constrs_62" = unnamed_addr constant [2 x %"$TyDescrTy_ADTTyp_Constr_39"*] [%"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_Bool_True_ADTTyp_Constr_58", %"$TyDescrTy_ADTTyp_Constr_39"* @"$TyDescr_Bool_False_ADTTyp_Constr_61"]
@"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_63" = unnamed_addr constant [0 x %_TyDescrTy_Typ*] zeroinitializer
@"$TyDescr_Bool_ADTTyp_Specl_64" = unnamed_addr constant %"$TyDescrTy_ADTTyp_Specl_37" { %_TyDescrTy_Typ** getelementptr inbounds ([0 x %_TyDescrTy_Typ*], [0 x %_TyDescrTy_Typ*]* @"$TyDescr_Bool_ADTTyp_Specl_m_TArgs_63", i32 0, i32 0), %"$TyDescrTy_ADTTyp_Constr_39"** getelementptr inbounds ([2 x %"$TyDescrTy_ADTTyp_Constr_39"*], [2 x %"$TyDescrTy_ADTTyp_Constr_39"*]* @"$TyDescr_Bool_ADTTyp_Specl_m_constrs_62", i32 0, i32 0), %"$TyDescrTy_ADTTyp_38"* @"$TyDescr_Bool_ADTTyp_55" }
@"$TyDescr_Bool_ADTTyp_m_specls_65" = unnamed_addr constant [1 x %"$TyDescrTy_ADTTyp_Specl_37"*] [%"$TyDescrTy_ADTTyp_Specl_37"* @"$TyDescr_Bool_ADTTyp_Specl_64"]
@"$TyDescr_ADT_Bool_66" = unnamed_addr constant [4 x i8] c"Bool"
@_scilla_version = global %Uint32 zeroinitializer
@_this_address = global [20 x i8] zeroinitializer
@"$x_73" = unnamed_addr constant [2 x i8] c"x\00"
@"$stringlit_90" = unnamed_addr constant [10 x i8] c"_eventname"
@"$stringlit_95" = unnamed_addr constant [4 x i8] c"test"
@"$stringlit_98" = unnamed_addr constant [7 x i8] c"message"
@"$x_119" = unnamed_addr constant [2 x i8] c"x\00"
@_tydescr_table = constant [17 x %_TyDescrTy_Typ*] [%_TyDescrTy_Typ* @"$TyDescr_Event_30", %_TyDescrTy_Typ* @"$TyDescr_Int64_12", %_TyDescrTy_Typ* @"$TyDescr_ADT_Bool_41", %_TyDescrTy_Typ* @"$TyDescr_Bystr20_36", %_TyDescrTy_Typ* @"$TyDescr_Uint256_22", %_TyDescrTy_Typ* @"$TyDescr_Uint32_10", %_TyDescrTy_Typ* @"$TyDescr_Uint64_14", %_TyDescrTy_Typ* @"$TyDescr_Bnum_26", %_TyDescrTy_Typ* @"$TyDescr_Uint128_18", %_TyDescrTy_Typ* @"$TyDescr_Exception_32", %_TyDescrTy_Typ* @"$TyDescr_String_24", %_TyDescrTy_Typ* @"$TyDescr_Int256_20", %_TyDescrTy_Typ* @"$TyDescr_Int128_16", %_TyDescrTy_Typ* @"$TyDescr_Bystr_34", %_TyDescrTy_Typ* @"$TyDescr_Message_28", %_TyDescrTy_Typ* @"$TyDescr_ADT_List_Int32_40", %_TyDescrTy_Typ* @"$TyDescr_Int32_8"]
@_tydescr_table_length = constant i32 17

define void @_init_libs() !dbg !4 {
entry:
  ret void
}

define void @_init_state() !dbg !8 {
entry:
  %"$x_5" = alloca %Int32, align 8
  %"$gasrem_67" = load i64, i64* @_gasrem, align 8
  %"$gascmp_68" = icmp ugt i64 1, %"$gasrem_67"
  br i1 %"$gascmp_68", label %"$out_of_gas_69", label %"$have_gas_70"

"$out_of_gas_69":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_70"

"$have_gas_70":                                   ; preds = %"$out_of_gas_69", %entry
  %"$consume_71" = sub i64 %"$gasrem_67", 1
  store i64 %"$consume_71", i64* @_gasrem, align 8
  store %Int32 { i32 1 }, %Int32* %"$x_5", align 4, !dbg !9
  %"$execptr_load_72" = load i8*, i8** @_execptr, align 8
  %"$$x_5_74" = load %Int32, %Int32* %"$x_5", align 4
  %"$update_value_75" = alloca %Int32, align 8
  store %Int32 %"$$x_5_74", %Int32* %"$update_value_75", align 4
  %"$update_value_76" = bitcast %Int32* %"$update_value_75" to i8*
  call void @_update_field(i8* %"$execptr_load_72", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_73", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_8", i32 0, i8* null, i8* %"$update_value_76"), !dbg !9
  ret void
}

declare void @_out_of_gas()

declare void @_update_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i8*)

define internal void @"$create_event_77"(%Uint128 %_amount, [20 x i8]* %"$_sender_78", %Int32 %m) !dbg !10 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_78", align 1
  %"$gasrem_79" = load i64, i64* @_gasrem, align 8
  %"$gascmp_80" = icmp ugt i64 1, %"$gasrem_79"
  br i1 %"$gascmp_80", label %"$out_of_gas_81", label %"$have_gas_82"

"$out_of_gas_81":                                 ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_82"

"$have_gas_82":                                   ; preds = %"$out_of_gas_81", %entry
  %"$consume_83" = sub i64 %"$gasrem_79", 1
  store i64 %"$consume_83", i64* @_gasrem, align 8
  %e = alloca i8*, align 8
  %"$gasrem_84" = load i64, i64* @_gasrem, align 8
  %"$gascmp_85" = icmp ugt i64 1, %"$gasrem_84"
  br i1 %"$gascmp_85", label %"$out_of_gas_86", label %"$have_gas_87"

"$out_of_gas_86":                                 ; preds = %"$have_gas_82"
  call void @_out_of_gas()
  br label %"$have_gas_87"

"$have_gas_87":                                   ; preds = %"$out_of_gas_86", %"$have_gas_82"
  %"$consume_88" = sub i64 %"$gasrem_84", 1
  store i64 %"$consume_88", i64* @_gasrem, align 8
  %"$msgobj_89_salloc_load" = load i8*, i8** @_execptr, align 8
  %"$msgobj_89_salloc_salloc" = call i8* @_salloc(i8* %"$msgobj_89_salloc_load", i64 69)
  %"$msgobj_89_salloc" = bitcast i8* %"$msgobj_89_salloc_salloc" to [69 x i8]*
  %"$msgobj_89" = bitcast [69 x i8]* %"$msgobj_89_salloc" to i8*
  store i8 2, i8* %"$msgobj_89", align 1
  %"$msgobj_fname_91" = getelementptr i8, i8* %"$msgobj_89", i32 1
  %"$msgobj_fname_92" = bitcast i8* %"$msgobj_fname_91" to %String*
  store %String { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @"$stringlit_90", i32 0, i32 0), i32 10 }, %String* %"$msgobj_fname_92", align 8
  %"$msgobj_td_93" = getelementptr i8, i8* %"$msgobj_89", i32 17
  %"$msgobj_td_94" = bitcast i8* %"$msgobj_td_93" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_String_24", %_TyDescrTy_Typ** %"$msgobj_td_94", align 8
  %"$msgobj_v_96" = getelementptr i8, i8* %"$msgobj_89", i32 25
  %"$msgobj_v_97" = bitcast i8* %"$msgobj_v_96" to %String*
  store %String { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @"$stringlit_95", i32 0, i32 0), i32 4 }, %String* %"$msgobj_v_97", align 8
  %"$msgobj_fname_99" = getelementptr i8, i8* %"$msgobj_89", i32 41
  %"$msgobj_fname_100" = bitcast i8* %"$msgobj_fname_99" to %String*
  store %String { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @"$stringlit_98", i32 0, i32 0), i32 7 }, %String* %"$msgobj_fname_100", align 8
  %"$msgobj_td_101" = getelementptr i8, i8* %"$msgobj_89", i32 57
  %"$msgobj_td_102" = bitcast i8* %"$msgobj_td_101" to %_TyDescrTy_Typ**
  store %_TyDescrTy_Typ* @"$TyDescr_Int32_8", %_TyDescrTy_Typ** %"$msgobj_td_102", align 8
  %"$msgobj_v_103" = getelementptr i8, i8* %"$msgobj_89", i32 65
  %"$msgobj_v_104" = bitcast i8* %"$msgobj_v_103" to %Int32*
  store %Int32 %m, %Int32* %"$msgobj_v_104", align 4
  store i8* %"$msgobj_89", i8** %e, align 8, !dbg !11
  %"$e_106" = load i8*, i8** %e, align 8
  %"$_literal_cost_call_108" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Event_30", i8* %"$e_106")
  %"$gasrem_109" = load i64, i64* @_gasrem, align 8
  %"$gascmp_110" = icmp ugt i64 %"$_literal_cost_call_108", %"$gasrem_109"
  br i1 %"$gascmp_110", label %"$out_of_gas_111", label %"$have_gas_112"

"$out_of_gas_111":                                ; preds = %"$have_gas_87"
  call void @_out_of_gas()
  br label %"$have_gas_112"

"$have_gas_112":                                  ; preds = %"$out_of_gas_111", %"$have_gas_87"
  %"$consume_113" = sub i64 %"$gasrem_109", %"$_literal_cost_call_108"
  store i64 %"$consume_113", i64* @_gasrem, align 8
  %"$execptr_load_114" = load i8*, i8** @_execptr, align 8
  %"$e_115" = load i8*, i8** %e, align 8
  call void @_event(i8* %"$execptr_load_114", %_TyDescrTy_Typ* @"$TyDescr_Event_30", i8* %"$e_115"), !dbg !12
  ret void
}

declare i8* @_salloc(i8*, i64)

declare i64 @_literal_cost(%_TyDescrTy_Typ*, i8*)

declare void @_event(i8*, %_TyDescrTy_Typ*, i8*)

define internal void @"$t1_116"(%Uint128 %_amount, [20 x i8]* %"$_sender_117", %TName_Bool* %c) !dbg !13 {
entry:
  %_sender = load [20 x i8], [20 x i8]* %"$_sender_117", align 1
  %"$x_0" = alloca %Int32, align 8
  %"$execptr_load_118" = load i8*, i8** @_execptr, align 8
  %"$$x_0_120" = call i8* @_fetch_field(i8* %"$execptr_load_118", i8* getelementptr inbounds ([2 x i8], [2 x i8]* @"$x_119", i32 0, i32 0), %_TyDescrTy_Typ* @"$TyDescr_Int32_8", i32 0, i8* null, i32 1), !dbg !14
  %"$$x_0_121" = bitcast i8* %"$$x_0_120" to %Int32*
  %"$$x_0_122" = load %Int32, %Int32* %"$$x_0_121", align 4
  store %Int32 %"$$x_0_122", %Int32* %"$x_0", align 4
  %"$_literal_cost_$x_0_123" = alloca %Int32, align 8
  %"$$x_0_124" = load %Int32, %Int32* %"$x_0", align 4
  store %Int32 %"$$x_0_124", %Int32* %"$_literal_cost_$x_0_123", align 4
  %"$$_literal_cost_$x_0_123_125" = bitcast %Int32* %"$_literal_cost_$x_0_123" to i8*
  %"$_literal_cost_call_126" = call i64 @_literal_cost(%_TyDescrTy_Typ* @"$TyDescr_Int32_8", i8* %"$$_literal_cost_$x_0_123_125")
  %"$gasadd_127" = add i64 %"$_literal_cost_call_126", 0
  %"$gasrem_128" = load i64, i64* @_gasrem, align 8
  %"$gascmp_129" = icmp ugt i64 %"$gasadd_127", %"$gasrem_128"
  br i1 %"$gascmp_129", label %"$out_of_gas_130", label %"$have_gas_131"

"$out_of_gas_130":                                ; preds = %entry
  call void @_out_of_gas()
  br label %"$have_gas_131"

"$have_gas_131":                                  ; preds = %"$out_of_gas_130", %entry
  %"$consume_132" = sub i64 %"$gasrem_128", %"$gasadd_127"
  store i64 %"$consume_132", i64* @_gasrem, align 8
  %"$gasrem_133" = load i64, i64* @_gasrem, align 8
  %"$gascmp_134" = icmp ugt i64 1, %"$gasrem_133"
  br i1 %"$gascmp_134", label %"$out_of_gas_135", label %"$have_gas_136"

"$out_of_gas_135":                                ; preds = %"$have_gas_131"
  call void @_out_of_gas()
  br label %"$have_gas_136"

"$have_gas_136":                                  ; preds = %"$out_of_gas_135", %"$have_gas_131"
  %"$consume_137" = sub i64 %"$gasrem_133", 1
  store i64 %"$consume_137", i64* @_gasrem, align 8
  %"$x_1" = alloca %TName_List_Int32*, align 8
  %"$gasrem_138" = load i64, i64* @_gasrem, align 8
  %"$gascmp_139" = icmp ugt i64 1, %"$gasrem_138"
  br i1 %"$gascmp_139", label %"$out_of_gas_140", label %"$have_gas_141"

"$out_of_gas_140":                                ; preds = %"$have_gas_136"
  call void @_out_of_gas()
  br label %"$have_gas_141"

"$have_gas_141":                                  ; preds = %"$out_of_gas_140", %"$have_gas_136"
  %"$consume_142" = sub i64 %"$gasrem_138", 1
  store i64 %"$consume_142", i64* @_gasrem, align 8
  %"$adtval_143_load" = load i8*, i8** @_execptr, align 8
  %"$adtval_143_salloc" = call i8* @_salloc(i8* %"$adtval_143_load", i64 1)
  %"$adtval_143" = bitcast i8* %"$adtval_143_salloc" to %CName_Nil_Int32*
  %"$adtgep_144" = getelementptr inbounds %CName_Nil_Int32, %CName_Nil_Int32* %"$adtval_143", i32 0, i32 0
  store i8 1, i8* %"$adtgep_144", align 1
  %"$adtptr_145" = bitcast %CName_Nil_Int32* %"$adtval_143" to %TName_List_Int32*
  store %TName_List_Int32* %"$adtptr_145", %TName_List_Int32** %"$x_1", align 8, !dbg !15
  %"$gasrem_146" = load i64, i64* @_gasrem, align 8
  %"$gascmp_147" = icmp ugt i64 1, %"$gasrem_146"
  br i1 %"$gascmp_147", label %"$out_of_gas_148", label %"$have_gas_149"

"$out_of_gas_148":                                ; preds = %"$have_gas_141"
  call void @_out_of_gas()
  br label %"$have_gas_149"

"$have_gas_149":                                  ; preds = %"$out_of_gas_148", %"$have_gas_141"
  %"$consume_150" = sub i64 %"$gasrem_146", 1
  store i64 %"$consume_150", i64* @_gasrem, align 8
  %"$x_3" = alloca %Int32, align 8
  %"$gasrem_151" = load i64, i64* @_gasrem, align 8
  %"$gascmp_152" = icmp ugt i64 2, %"$gasrem_151"
  br i1 %"$gascmp_152", label %"$out_of_gas_153", label %"$have_gas_154"

"$out_of_gas_153":                                ; preds = %"$have_gas_149"
  call void @_out_of_gas()
  br label %"$have_gas_154"

"$have_gas_154":                                  ; preds = %"$out_of_gas_153", %"$have_gas_149"
  %"$consume_155" = sub i64 %"$gasrem_151", 2
  store i64 %"$consume_155", i64* @_gasrem, align 8
  %"$$x_1_157" = load %TName_List_Int32*, %TName_List_Int32** %"$x_1", align 8
  %"$$x_1_tag_158" = getelementptr inbounds %TName_List_Int32, %TName_List_Int32* %"$$x_1_157", i32 0, i32 0
  %"$$x_1_tag_159" = load i8, i8* %"$$x_1_tag_158", align 1
  switch i8 %"$$x_1_tag_159", label %"$empty_default_160" [
    i8 0, label %"$Cons_161"
    i8 1, label %"$Nil_173"
  ], !dbg !16

"$Cons_161":                                      ; preds = %"$have_gas_154"
  %"$$x_1_162" = bitcast %TName_List_Int32* %"$$x_1_157" to %CName_Cons_Int32*
  %"$$x_2_gep_163" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$x_1_162", i32 0, i32 1
  %"$$x_2_load_164" = load %Int32, %Int32* %"$$x_2_gep_163", align 4
  %"$x_2" = alloca %Int32, align 8
  store %Int32 %"$$x_2_load_164", %Int32* %"$x_2", align 4
  %"$$$x_1_4_gep_165" = getelementptr inbounds %CName_Cons_Int32, %CName_Cons_Int32* %"$$x_1_162", i32 0, i32 2
  %"$$$x_1_4_load_166" = load %TName_List_Int32*, %TName_List_Int32** %"$$$x_1_4_gep_165", align 8
  %"$$x_1_4" = alloca %TName_List_Int32*, align 8
  store %TName_List_Int32* %"$$$x_1_4_load_166", %TName_List_Int32** %"$$x_1_4", align 8
  %"$gasrem_167" = load i64, i64* @_gasrem, align 8
  %"$gascmp_168" = icmp ugt i64 1, %"$gasrem_167"
  br i1 %"$gascmp_168", label %"$out_of_gas_169", label %"$have_gas_170"

"$out_of_gas_169":                                ; preds = %"$Cons_161"
  call void @_out_of_gas()
  br label %"$have_gas_170"

"$have_gas_170":                                  ; preds = %"$out_of_gas_169", %"$Cons_161"
  %"$consume_171" = sub i64 %"$gasrem_167", 1
  store i64 %"$consume_171", i64* @_gasrem, align 8
  %"$$x_2_172" = load %Int32, %Int32* %"$x_2", align 4
  store %Int32 %"$$x_2_172", %Int32* %"$x_3", align 4, !dbg !17
  br label %"$matchsucc_156"

"$Nil_173":                                       ; preds = %"$have_gas_154"
  %"$$x_1_174" = bitcast %TName_List_Int32* %"$$x_1_157" to %CName_Nil_Int32*
  %"$gasrem_175" = load i64, i64* @_gasrem, align 8
  %"$gascmp_176" = icmp ugt i64 1, %"$gasrem_175"
  br i1 %"$gascmp_176", label %"$out_of_gas_177", label %"$have_gas_178"

"$out_of_gas_177":                                ; preds = %"$Nil_173"
  call void @_out_of_gas()
  br label %"$have_gas_178"

"$have_gas_178":                                  ; preds = %"$out_of_gas_177", %"$Nil_173"
  %"$consume_179" = sub i64 %"$gasrem_175", 1
  store i64 %"$consume_179", i64* @_gasrem, align 8
  store %Int32 { i32 2 }, %Int32* %"$x_3", align 4, !dbg !20
  br label %"$matchsucc_156"

"$empty_default_160":                             ; preds = %"$have_gas_154"
  br label %"$matchsucc_156"

"$matchsucc_156":                                 ; preds = %"$have_gas_178", %"$have_gas_170", %"$empty_default_160"
  %"$gasrem_180" = load i64, i64* @_gasrem, align 8
  %"$gascmp_181" = icmp ugt i64 1, %"$gasrem_180"
  br i1 %"$gascmp_181", label %"$out_of_gas_182", label %"$have_gas_183"

"$out_of_gas_182":                                ; preds = %"$matchsucc_156"
  call void @_out_of_gas()
  br label %"$have_gas_183"

"$have_gas_183":                                  ; preds = %"$out_of_gas_182", %"$matchsucc_156"
  %"$consume_184" = sub i64 %"$gasrem_180", 1
  store i64 %"$consume_184", i64* @_gasrem, align 8
  %"$create_event__sender_185" = alloca [20 x i8], align 1
  store [20 x i8] %_sender, [20 x i8]* %"$create_event__sender_185", align 1
  %"$$x_3_186" = load %Int32, %Int32* %"$x_3", align 4
  call void @"$create_event_77"(%Uint128 %_amount, [20 x i8]* %"$create_event__sender_185", %Int32 %"$$x_3_186"), !dbg !22
  ret void
}

declare i8* @_fetch_field(i8*, i8*, %_TyDescrTy_Typ*, i32, i8*, i32)

define void @t1(i8* %0) !dbg !23 {
entry:
  %"$_amount_188" = getelementptr i8, i8* %0, i32 0
  %"$_amount_189" = bitcast i8* %"$_amount_188" to %Uint128*
  %_amount = load %Uint128, %Uint128* %"$_amount_189", align 8
  %"$_sender_190" = getelementptr i8, i8* %0, i32 16
  %"$_sender_191" = bitcast i8* %"$_sender_190" to [20 x i8]*
  %"$c_192" = getelementptr i8, i8* %0, i32 36
  %"$c_193" = bitcast i8* %"$c_192" to %TName_Bool**
  %c = load %TName_Bool*, %TName_Bool** %"$c_193", align 8
  call void @"$t1_116"(%Uint128 %_amount, [20 x i8]* %"$_sender_191", %TName_Bool* %c), !dbg !24
  ret void
}

!llvm.module.flags = !{!0}
!llvm.dbg.cu = !{!1}

!0 = !{i32 2, !"Debug Info Version", i32 3}
!1 = distinct !DICompileUnit(language: DW_LANG_C89, file: !2, producer: "Scilla Compiler", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !3, splitDebugInlining: false)
!2 = !DIFile(filename: "name_clash1.scilla", directory: "codegen/contr")
!3 = !{}
!4 = distinct !DISubprogram(name: "_init_libs", linkageName: "_init_libs", scope: !2, file: !2, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "void")
!8 = distinct !DISubprogram(name: "_init_state", linkageName: "_init_state", scope: !2, file: !2, type: !5, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!9 = !DILocation(line: 5, column: 19, scope: !8)
!10 = distinct !DISubprogram(name: "create_event", linkageName: "create_event", scope: !2, file: !2, line: 7, type: !5, scopeLine: 7, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!11 = !DILocation(line: 8, column: 7, scope: !10)
!12 = !DILocation(line: 9, column: 3, scope: !10)
!13 = distinct !DISubprogram(name: "t1", linkageName: "t1", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!14 = !DILocation(line: 13, column: 3, scope: !13)
!15 = !DILocation(line: 14, column: 7, scope: !13)
!16 = !DILocation(line: 15, column: 7, scope: !13)
!17 = !DILocation(line: 16, column: 21, scope: !18)
!18 = distinct !DILexicalBlock(scope: !19, file: !2, line: 16, column: 9)
!19 = distinct !DILexicalBlock(scope: !13, file: !2, line: 15, column: 7)
!20 = !DILocation(line: 17, column: 16, scope: !21)
!21 = distinct !DILexicalBlock(scope: !19, file: !2, line: 17, column: 9)
!22 = !DILocation(line: 19, column: 3, scope: !13)
!23 = distinct !DISubprogram(name: "t1", linkageName: "t1", scope: !2, file: !2, line: 12, type: !5, scopeLine: 12, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1, retainedNodes: !3)
!24 = !DILocation(line: 12, column: 12, scope: !23)
