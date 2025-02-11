declare i32 @llvm.eh.typeid.for(ptr)
declare i32 @__gxx_personality_v0(...)
declare ptr @__cxa_begin_catch(ptr)
declare void @__cxa_end_catch()
@_ZTIN11scalanative16ExceptionWrapperE = external constant { ptr, ptr, ptr }

@"_SM7__constG1-0" = private unnamed_addr constant { ptr, i32, i32, [50 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 50, i32 2, [50 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 115, i16 99, i16 97, i16 108, i16 97, i16 110, i16 97, i16 116, i16 105, i16 118, i16 101, i16 46, i16 110, i16 105, i16 111, i16 46, i16 102, i16 115, i16 46, i16 71, i16 101, i16 110, i16 101, i16 114, i16 105, i16 99, i16 70, i16 105, i16 108, i16 101, i16 83, i16 121, i16 115, i16 116, i16 101, i16 109, i16 80, i16 114, i16 111, i16 118, i16 105, i16 100, i16 101, i16 114 ] }
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-0", i32 0, i32 50, i32 -515426747 }
@"_SM7__constG1-2" = private unnamed_addr constant [1 x i32] [ i32 -1 ]
@"_SM7__constG1-3" = private unnamed_addr constant { ptr, i32, i32, [1 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 1, i32 2, [1 x i16] [ i16 47 ] }
@"_SM7__constG1-4" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-3", i32 0, i32 1, i32 47 }
@"_SM7__constG1-5" = private unnamed_addr constant { ptr, i32, i32, [4 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 4, i32 2, [4 x i16] [ i16 102, i16 105, i16 108, i16 101 ] }
@"_SM7__constG1-6" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-5", i32 0, i32 4, i32 3143036 }
@"_SM7__constG1-7" = private unnamed_addr constant { ptr, i32, i32, [28 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 28, i32 2, [28 x i16] [ i16 80, i16 97, i16 116, i16 104, i16 32, i16 99, i16 111, i16 109, i16 112, i16 111, i16 110, i16 101, i16 110, i16 116, i16 32, i16 115, i16 104, i16 111, i16 117, i16 108, i16 100, i16 32, i16 98, i16 101, i16 32, i16 39, i16 47, i16 39 ] }
@"_SM7__constG1-8" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-7", i32 0, i32 28, i32 -150326991 }
@"_SM7__constG1-9" = private unnamed_addr constant { ptr, i32, i32, [32 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 32, i32 2, [32 x i16] [ i16 85, i16 82, i16 73, i16 32, i16 100, i16 111, i16 101, i16 115, i16 32, i16 110, i16 111, i16 116, i16 32, i16 109, i16 97, i16 116, i16 99, i16 104, i16 32, i16 116, i16 104, i16 105, i16 115, i16 32, i16 112, i16 114, i16 111, i16 118, i16 105, i16 100, i16 101, i16 114 ] }
@"_SM7__constG2-10" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-9", i32 0, i32 32, i32 -1892989192 }
@"_SM34java.lang.IllegalArgumentExceptionG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [4 x ptr] }

declare dereferenceable_or_null(40) ptr @"_SM19java.lang.ThrowableD16fillInStackTraceL19java.lang.ThrowableEO"(ptr)
@"_SM16java.lang.StringG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }
@"_SM15java.lang.ClassG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }

declare i32 @"memcmp"(ptr, ptr, i64)

declare ptr @"scalanative_throw"(ptr)
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [7 x ptr] }

declare dereferenceable_or_null(8) ptr @"_SM52scala.scalanative.nio.fs.unix.UnixFileSystemProviderD2fsL24java.nio.file.FileSystemEO"(ptr) alwaysinline

declare dereferenceable_or_null(32) ptr @"_SM12java.net.URID6decodeL16java.lang.StringL16java.lang.StringEPT12java.net.URI"(ptr, ptr)

declare i32 @"_SM16java.lang.ObjectD8hashCodeiEO"(ptr) inlinehint

declare ptr @"_SM34scala.scalanative.runtime.package$KD16throwOutOfBoundsiinEOX34scala.scalanative.runtime.package$iiE"(ptr, i32, i32)

declare i1 @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO"(ptr, ptr) inlinehint
@"_SM34scala.scalanative.runtime.package$G8instance" = external global { ptr }

declare nonnull dereferenceable(32) ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO"(ptr) inlinehint

declare ptr @"scalanative_GC_alloc_small"(ptr, i64)

declare ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr) noinline

declare ptr @"_SM34scala.scalanative.runtime.package$D14throwUndefinednEO"(ptr) noinline
@"_SM50scala.scalanative.nio.fs.GenericFileSystemProviderG4type" = hidden global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] } { { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 668, i32 -1, ptr @"_SM7__constG1-1" }, i32 8, i32 669, ptr @"_SM7__constG1-2", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }

define dereferenceable_or_null(8) ptr @"_SM50scala.scalanative.nio.fs.GenericFileSystemProviderD13getFileSystemL12java.net.URIL24java.nio.file.FileSystemEO"(ptr %_1, ptr %_2) personality ptr @__gxx_personality_v0 {
_3000000.0:
  %_111000003 = icmp ne ptr %_1, null
  br i1 %_111000003, label %_111000001.0, label %_111000002.0
_111000001.0:
  %_111000005 = icmp ne ptr %_2, null
  br i1 %_111000005, label %_111000004.0, label %_111000002.0
_111000004.0:
  %_111000006 = getelementptr { { ptr }, ptr, ptr, ptr, ptr, ptr, i1, ptr, i1, ptr, ptr, ptr, i64, ptr, i32, i1, i32 }, { { ptr }, ptr, ptr, ptr, ptr, ptr, i1, ptr, i1, ptr, ptr, ptr, i64, ptr, i32, i1, i32 }* %_2, i32 0, i32 2
  %_4000001 = load ptr, ptr %_111000006, !dereferenceable_or_null !{i64 32}
  %_4000002 = call dereferenceable_or_null(32) ptr @"_SM12java.net.URID6decodeL16java.lang.StringL16java.lang.StringEPT12java.net.URI"(ptr dereferenceable_or_null(128) %_2, ptr dereferenceable_or_null(32) %_4000001)
  %_3000002 = icmp eq ptr %_4000002, null
  br i1 %_3000002, label %_5000000.0, label %_6000000.0
_5000000.0:
  %_5000004 = icmp eq ptr @"_SM7__constG1-4", null
  br label %_7000000.0
_6000000.0:
  br label %_9000000.0
_9000000.0:
  %_9000002 = icmp ne ptr @"_SM7__constG1-4", null
  br i1 %_9000002, label %_10000000.0, label %_11000000.0
_10000000.0:
  %_10000002 = icmp eq ptr @"_SM7__constG1-4", %_4000002
  br i1 %_10000002, label %_12000000.0, label %_13000000.0
_12000000.0:
  br label %_14000000.0
_13000000.0:
  %_111000008 = icmp ne ptr %_4000002, null
  br i1 %_111000008, label %_111000007.0, label %_111000002.0
_111000007.0:
  %_111000009 = getelementptr { { ptr }, ptr, i32, i32, i32 }, { { ptr }, ptr, i32, i32, i32 }* %_4000002, i32 0, i32 3
  %_13000001 = load i32, ptr %_111000009
  %_111000011 = icmp ne ptr @"_SM7__constG1-4", null
  br i1 %_111000011, label %_111000010.0, label %_111000002.0
_111000010.0:
  %_111000012 = getelementptr { { ptr }, ptr, i32, i32, i32 }, { { ptr }, ptr, i32, i32, i32 }* @"_SM7__constG1-4", i32 0, i32 3
  %_13000002 = load i32, ptr %_111000012
  %_13000004 = icmp ne i32 %_13000001, %_13000002
  br i1 %_13000004, label %_15000000.0, label %_16000000.0
_15000000.0:
  br label %_17000000.0
_16000000.0:
  %_16000002 = icmp eq i32 %_13000001, 0
  br i1 %_16000002, label %_18000000.0, label %_19000000.0
_18000000.0:
  %_18000002 = icmp eq i32 %_13000002, 0
  br label %_20000000.0
_19000000.0:
  br label %_20000000.0
_20000000.0:
  %_20000001 = phi i1 [false, %_19000000.0], [%_18000002, %_18000000.0]
  br i1 %_20000001, label %_21000000.0, label %_22000000.0
_21000000.0:
  br label %_23000000.0
_22000000.0:
  %_111000013 = getelementptr { { ptr }, ptr, i32, i32, i32 }, { { ptr }, ptr, i32, i32, i32 }* %_4000002, i32 0, i32 4
  %_22000001 = load i32, ptr %_111000013
  %_111000014 = getelementptr { { ptr }, ptr, i32, i32, i32 }, { { ptr }, ptr, i32, i32, i32 }* @"_SM7__constG1-4", i32 0, i32 4
  %_22000002 = load i32, ptr %_111000014
  %_22000004 = icmp ne i32 %_22000001, %_22000002
  br i1 %_22000004, label %_24000000.0, label %_25000000.0
_24000000.0:
  %_24000002 = icmp ne i32 %_22000001, 0
  br label %_26000000.0
_25000000.0:
  br label %_26000000.0
_26000000.0:
  %_26000001 = phi i1 [false, %_25000000.0], [%_24000002, %_24000000.0]
  br i1 %_26000001, label %_27000000.0, label %_28000000.0
_27000000.0:
  %_27000002 = icmp ne i32 %_22000002, 0
  br label %_29000000.0
_28000000.0:
  br label %_29000000.0
_29000000.0:
  %_29000001 = phi i1 [false, %_28000000.0], [%_27000002, %_27000000.0]
  br i1 %_29000001, label %_30000000.0, label %_31000000.0
_30000000.0:
  br label %_32000000.0
_31000000.0:
  %_111000015 = getelementptr { { ptr }, ptr, i32, i32, i32 }, { { ptr }, ptr, i32, i32, i32 }* %_4000002, i32 0, i32 1
  %_31000001 = load ptr, ptr %_111000015, !dereferenceable_or_null !{i64 16}
  %_111000016 = getelementptr { { ptr }, ptr, i32, i32, i32 }, { { ptr }, ptr, i32, i32, i32 }* %_4000002, i32 0, i32 2
  %_31000002 = load i32, ptr %_111000016
  %_31000004 = icmp slt i32 %_31000002, 0
  br i1 %_31000004, label %_33000000.0, label %_34000000.0
_33000000.0:
  br label %_35000000.0
_34000000.0:
  %_111000018 = icmp ne ptr %_31000001, null
  br i1 %_111000018, label %_111000017.0, label %_111000002.0
_111000017.0:
  %_111000019 = getelementptr { ptr, i32, i32 }, { ptr, i32, i32 }* %_31000001, i32 0, i32 1
  %_34000001 = load i32, ptr %_111000019
  %_34000003 = icmp sge i32 %_31000002, %_34000001
  br label %_35000000.0
_35000000.0:
  %_35000001 = phi i1 [%_34000003, %_111000017.0], [true, %_33000000.0]
  br i1 %_35000001, label %_36000000.0, label %_37000000.0
_37000000.0:
  br label %_38000000.0
_38000000.0:
  br label %_39000000.0
_39000000.0:
  br label %_40000000.0
_40000000.0:
  %_111000020 = getelementptr { { ptr }, ptr, i32, i32, i32 }, { { ptr }, ptr, i32, i32, i32 }* @"_SM7__constG1-4", i32 0, i32 1
  %_40000001 = load ptr, ptr %_111000020, !dereferenceable_or_null !{i64 16}
  %_111000021 = getelementptr { { ptr }, ptr, i32, i32, i32 }, { { ptr }, ptr, i32, i32, i32 }* @"_SM7__constG1-4", i32 0, i32 2
  %_40000002 = load i32, ptr %_111000021
  %_40000004 = icmp slt i32 %_40000002, 0
  br i1 %_40000004, label %_41000000.0, label %_42000000.0
_41000000.0:
  br label %_43000000.0
_42000000.0:
  %_111000023 = icmp ne ptr %_40000001, null
  br i1 %_111000023, label %_111000022.0, label %_111000002.0
_111000022.0:
  %_111000024 = getelementptr { ptr, i32, i32 }, { ptr, i32, i32 }* %_40000001, i32 0, i32 1
  %_42000001 = load i32, ptr %_111000024
  %_42000003 = icmp sge i32 %_40000002, %_42000001
  br label %_43000000.0
_43000000.0:
  %_43000001 = phi i1 [%_42000003, %_111000022.0], [true, %_41000000.0]
  br i1 %_43000001, label %_44000000.0, label %_45000000.0
_45000000.0:
  br label %_46000000.0
_46000000.0:
  br label %_47000000.0
_47000000.0:
  br label %_48000000.0
_48000000.0:
  %_111000025 = getelementptr { { ptr }, ptr, i32, i32, i32 }, { { ptr }, ptr, i32, i32, i32 }* %_4000002, i32 0, i32 3
  %_48000001 = load i32, ptr %_111000025
  %_48000012 = bitcast ptr %_31000001 to ptr
  %_111000026 = and i32 1, 31
  %_48000013 = shl i32 %_31000002, %_111000026
  %_48000014 = add i32 %_48000013, 16
  %_48000015 = getelementptr i8, ptr %_48000012, i32 %_48000014
  %_48000016 = bitcast ptr %_40000001 to ptr
  %_111000027 = and i32 1, 31
  %_48000017 = shl i32 %_40000002, %_111000027
  %_48000018 = add i32 %_48000017, 16
  %_48000019 = getelementptr i8, ptr %_48000016, i32 %_48000018
  %_111000028 = and i32 1, 31
  %_48000020 = shl i32 %_48000001, %_111000028
  %_48000021 = zext i32 %_48000020 to i64
  %_48000022 = call i32 @"memcmp"(ptr %_48000015, ptr %_48000019, i64 %_48000021)
  %_48000024 = icmp eq i32 %_48000022, 0
  br label %_32000000.0
_32000000.0:
  %_32000001 = phi i1 [%_48000024, %_48000000.0], [false, %_30000000.0]
  br label %_23000000.0
_23000000.0:
  %_23000001 = phi i1 [%_32000001, %_32000000.0], [true, %_21000000.0]
  br label %_17000000.0
_17000000.0:
  %_17000001 = phi i1 [%_23000001, %_23000000.0], [false, %_15000000.0]
  br label %_14000000.0
_14000000.0:
  %_14000001 = phi i1 [%_17000001, %_17000000.0], [true, %_12000000.0]
  br label %_49000000.0
_11000000.0:
  br label %_50000000.0
_50000000.0:
  br label %_49000000.0
_36000000.0:
  %_111000029 = getelementptr { ptr, i32, i32 }, { ptr, i32, i32 }* %_31000001, i32 0, i32 1
  %_36000001 = load i32, ptr %_111000029
  call ptr @"_SM34scala.scalanative.runtime.package$KD16throwOutOfBoundsiinEOX34scala.scalanative.runtime.package$iiE"(ptr nonnull dereferenceable(8) @"_SM34scala.scalanative.runtime.package$G8instance", i32 %_31000002, i32 %_36000001)
  br label %_111000031.0
_44000000.0:
  %_111000033 = getelementptr { ptr, i32, i32 }, { ptr, i32, i32 }* %_40000001, i32 0, i32 1
  %_44000001 = load i32, ptr %_111000033
  call ptr @"_SM34scala.scalanative.runtime.package$KD16throwOutOfBoundsiinEOX34scala.scalanative.runtime.package$iiE"(ptr nonnull dereferenceable(8) @"_SM34scala.scalanative.runtime.package$G8instance", i32 %_40000002, i32 %_44000001)
  br label %_111000031.0
_49000000.0:
  %_49000001 = phi i1 [false, %_50000000.0], [%_14000001, %_14000000.0]
  br label %_7000000.0
_7000000.0:
  %_7000001 = phi i1 [%_49000001, %_49000000.0], [%_5000004, %_5000000.0]
  %_7000003 = xor i1 %_7000001, true
  br i1 %_7000003, label %_51000000.0, label %_52000000.0
_52000000.0:
  %_111000036 = getelementptr { { ptr }, ptr, ptr, ptr, ptr, ptr, i1, ptr, i1, ptr, ptr, ptr, i64, ptr, i32, i1, i32 }, { { ptr }, ptr, ptr, ptr, ptr, ptr, i1, ptr, i1, ptr, ptr, ptr, i64, ptr, i32, i1, i32 }* %_2, i32 0, i32 1
  %_57000001 = load ptr, ptr %_111000036, !dereferenceable_or_null !{i64 32}
  %_52000002 = icmp eq ptr %_57000001, null
  br i1 %_52000002, label %_58000000.0, label %_59000000.0
_58000000.0:
  %_58000004 = icmp eq ptr @"_SM7__constG1-6", null
  br label %_60000000.0
_59000000.0:
  br label %_62000000.0
_62000000.0:
  %_62000002 = icmp ne ptr @"_SM7__constG1-6", null
  br i1 %_62000002, label %_63000000.0, label %_64000000.0
_63000000.0:
  %_63000002 = icmp eq ptr @"_SM7__constG1-6", %_57000001
  br i1 %_63000002, label %_65000000.0, label %_66000000.0
_65000000.0:
  br label %_67000000.0
_66000000.0:
  %_111000038 = icmp ne ptr %_57000001, null
  br i1 %_111000038, label %_111000037.0, label %_111000002.0
_111000037.0:
  %_111000039 = getelementptr { { ptr }, ptr, i32, i32, i32 }, { { ptr }, ptr, i32, i32, i32 }* %_57000001, i32 0, i32 3
  %_66000001 = load i32, ptr %_111000039
  %_111000041 = icmp ne ptr @"_SM7__constG1-6", null
  br i1 %_111000041, label %_111000040.0, label %_111000002.0
_111000040.0:
  %_111000042 = getelementptr { { ptr }, ptr, i32, i32, i32 }, { { ptr }, ptr, i32, i32, i32 }* @"_SM7__constG1-6", i32 0, i32 3
  %_66000002 = load i32, ptr %_111000042
  %_66000004 = icmp ne i32 %_66000001, %_66000002
  br i1 %_66000004, label %_68000000.0, label %_69000000.0
_68000000.0:
  br label %_70000000.0
_69000000.0:
  %_69000002 = icmp eq i32 %_66000001, 0
  br i1 %_69000002, label %_71000000.0, label %_72000000.0
_71000000.0:
  %_71000002 = icmp eq i32 %_66000002, 0
  br label %_73000000.0
_72000000.0:
  br label %_73000000.0
_73000000.0:
  %_73000001 = phi i1 [false, %_72000000.0], [%_71000002, %_71000000.0]
  br i1 %_73000001, label %_74000000.0, label %_75000000.0
_74000000.0:
  br label %_76000000.0
_75000000.0:
  %_111000043 = getelementptr { { ptr }, ptr, i32, i32, i32 }, { { ptr }, ptr, i32, i32, i32 }* %_57000001, i32 0, i32 4
  %_75000001 = load i32, ptr %_111000043
  %_111000044 = getelementptr { { ptr }, ptr, i32, i32, i32 }, { { ptr }, ptr, i32, i32, i32 }* @"_SM7__constG1-6", i32 0, i32 4
  %_75000002 = load i32, ptr %_111000044
  %_75000004 = icmp ne i32 %_75000001, %_75000002
  br i1 %_75000004, label %_77000000.0, label %_78000000.0
_77000000.0:
  %_77000002 = icmp ne i32 %_75000001, 0
  br label %_79000000.0
_78000000.0:
  br label %_79000000.0
_79000000.0:
  %_79000001 = phi i1 [false, %_78000000.0], [%_77000002, %_77000000.0]
  br i1 %_79000001, label %_80000000.0, label %_81000000.0
_80000000.0:
  %_80000002 = icmp ne i32 %_75000002, 0
  br label %_82000000.0
_81000000.0:
  br label %_82000000.0
_82000000.0:
  %_82000001 = phi i1 [false, %_81000000.0], [%_80000002, %_80000000.0]
  br i1 %_82000001, label %_83000000.0, label %_84000000.0
_83000000.0:
  br label %_85000000.0
_84000000.0:
  %_111000045 = getelementptr { { ptr }, ptr, i32, i32, i32 }, { { ptr }, ptr, i32, i32, i32 }* %_57000001, i32 0, i32 1
  %_84000001 = load ptr, ptr %_111000045, !dereferenceable_or_null !{i64 16}
  %_111000046 = getelementptr { { ptr }, ptr, i32, i32, i32 }, { { ptr }, ptr, i32, i32, i32 }* %_57000001, i32 0, i32 2
  %_84000002 = load i32, ptr %_111000046
  %_84000004 = icmp slt i32 %_84000002, 0
  br i1 %_84000004, label %_86000000.0, label %_87000000.0
_86000000.0:
  br label %_88000000.0
_87000000.0:
  %_111000048 = icmp ne ptr %_84000001, null
  br i1 %_111000048, label %_111000047.0, label %_111000002.0
_111000047.0:
  %_111000049 = getelementptr { ptr, i32, i32 }, { ptr, i32, i32 }* %_84000001, i32 0, i32 1
  %_87000001 = load i32, ptr %_111000049
  %_87000003 = icmp sge i32 %_84000002, %_87000001
  br label %_88000000.0
_88000000.0:
  %_88000001 = phi i1 [%_87000003, %_111000047.0], [true, %_86000000.0]
  br i1 %_88000001, label %_89000000.0, label %_90000000.0
_90000000.0:
  br label %_91000000.0
_91000000.0:
  br label %_92000000.0
_92000000.0:
  br label %_93000000.0
_93000000.0:
  %_111000050 = getelementptr { { ptr }, ptr, i32, i32, i32 }, { { ptr }, ptr, i32, i32, i32 }* @"_SM7__constG1-6", i32 0, i32 1
  %_93000001 = load ptr, ptr %_111000050, !dereferenceable_or_null !{i64 16}
  %_111000051 = getelementptr { { ptr }, ptr, i32, i32, i32 }, { { ptr }, ptr, i32, i32, i32 }* @"_SM7__constG1-6", i32 0, i32 2
  %_93000002 = load i32, ptr %_111000051
  %_93000004 = icmp slt i32 %_93000002, 0
  br i1 %_93000004, label %_94000000.0, label %_95000000.0
_94000000.0:
  br label %_96000000.0
_95000000.0:
  %_111000053 = icmp ne ptr %_93000001, null
  br i1 %_111000053, label %_111000052.0, label %_111000002.0
_111000052.0:
  %_111000054 = getelementptr { ptr, i32, i32 }, { ptr, i32, i32 }* %_93000001, i32 0, i32 1
  %_95000001 = load i32, ptr %_111000054
  %_95000003 = icmp sge i32 %_93000002, %_95000001
  br label %_96000000.0
_96000000.0:
  %_96000001 = phi i1 [%_95000003, %_111000052.0], [true, %_94000000.0]
  br i1 %_96000001, label %_97000000.0, label %_98000000.0
_98000000.0:
  br label %_99000000.0
_99000000.0:
  br label %_100000000.0
_100000000.0:
  br label %_101000000.0
_101000000.0:
  %_111000055 = getelementptr { { ptr }, ptr, i32, i32, i32 }, { { ptr }, ptr, i32, i32, i32 }* %_57000001, i32 0, i32 3
  %_101000001 = load i32, ptr %_111000055
  %_101000012 = bitcast ptr %_84000001 to ptr
  %_111000056 = and i32 1, 31
  %_101000013 = shl i32 %_84000002, %_111000056
  %_101000014 = add i32 %_101000013, 16
  %_101000015 = getelementptr i8, ptr %_101000012, i32 %_101000014
  %_101000016 = bitcast ptr %_93000001 to ptr
  %_111000057 = and i32 1, 31
  %_101000017 = shl i32 %_93000002, %_111000057
  %_101000018 = add i32 %_101000017, 16
  %_101000019 = getelementptr i8, ptr %_101000016, i32 %_101000018
  %_111000058 = and i32 1, 31
  %_101000020 = shl i32 %_101000001, %_111000058
  %_101000021 = zext i32 %_101000020 to i64
  %_101000022 = call i32 @"memcmp"(ptr %_101000015, ptr %_101000019, i64 %_101000021)
  %_101000024 = icmp eq i32 %_101000022, 0
  br label %_85000000.0
_85000000.0:
  %_85000001 = phi i1 [%_101000024, %_101000000.0], [false, %_83000000.0]
  br label %_76000000.0
_76000000.0:
  %_76000001 = phi i1 [%_85000001, %_85000000.0], [true, %_74000000.0]
  br label %_70000000.0
_70000000.0:
  %_70000001 = phi i1 [%_76000001, %_76000000.0], [false, %_68000000.0]
  br label %_67000000.0
_67000000.0:
  %_67000001 = phi i1 [%_70000001, %_70000000.0], [true, %_65000000.0]
  br label %_102000000.0
_64000000.0:
  br label %_103000000.0
_103000000.0:
  br label %_102000000.0
_89000000.0:
  %_111000059 = getelementptr { ptr, i32, i32 }, { ptr, i32, i32 }* %_84000001, i32 0, i32 1
  %_89000001 = load i32, ptr %_111000059
  call ptr @"_SM34scala.scalanative.runtime.package$KD16throwOutOfBoundsiinEOX34scala.scalanative.runtime.package$iiE"(ptr nonnull dereferenceable(8) @"_SM34scala.scalanative.runtime.package$G8instance", i32 %_84000002, i32 %_89000001)
  br label %_111000031.0
_97000000.0:
  %_111000062 = getelementptr { ptr, i32, i32 }, { ptr, i32, i32 }* %_93000001, i32 0, i32 1
  %_97000001 = load i32, ptr %_111000062
  call ptr @"_SM34scala.scalanative.runtime.package$KD16throwOutOfBoundsiinEOX34scala.scalanative.runtime.package$iiE"(ptr nonnull dereferenceable(8) @"_SM34scala.scalanative.runtime.package$G8instance", i32 %_93000002, i32 %_97000001)
  br label %_111000031.0
_102000000.0:
  %_102000001 = phi i1 [false, %_103000000.0], [%_67000001, %_67000000.0]
  br label %_60000000.0
_60000000.0:
  %_60000001 = phi i1 [%_102000001, %_102000000.0], [%_58000004, %_58000000.0]
  %_60000003 = xor i1 %_60000001, true
  br i1 %_60000003, label %_104000000.0, label %_105000000.0
_105000000.0:
  %_105000002 = bitcast ptr %_1 to ptr
  %_105000003 = call dereferenceable_or_null(8) ptr @"_SM52scala.scalanative.nio.fs.unix.UnixFileSystemProviderD2fsL24java.nio.file.FileSystemEO"(ptr dereferenceable_or_null(32) %_105000002)
  br label %_110000000.0
_110000000.0:
  br label %_111000000.0
_111000000.0:
  ret ptr %_105000003
_51000000.0:
  br label %_55000000.0
_55000000.0:
  %_55000001 = call dereferenceable_or_null(40) ptr @"scalanative_GC_alloc_small"(ptr @"_SM34java.lang.IllegalArgumentExceptionG4type", i64 40)
  %_111000066 = getelementptr { { ptr }, ptr, ptr, ptr, i1, i1 }, { { ptr }, ptr, ptr, ptr, i1, i1 }* %_55000001, i32 0, i32 5
  %_111000067 = zext i1 true to i8
  store i8 %_111000067, ptr%_111000066, align 1
  %_111000069 = getelementptr { { ptr }, ptr, ptr, ptr, i1, i1 }, { { ptr }, ptr, ptr, ptr, i1, i1 }* %_55000001, i32 0, i32 4
  %_111000070 = zext i1 true to i8
  store i8 %_111000070, ptr%_111000069, align 1
  %_111000072 = getelementptr { { ptr }, ptr, ptr, ptr, i1, i1 }, { { ptr }, ptr, ptr, ptr, i1, i1 }* %_55000001, i32 0, i32 3
  store ptr @"_SM7__constG1-8", ptr%_111000072, align 8
  %_55000005 = call dereferenceable_or_null(40) ptr @"_SM19java.lang.ThrowableD16fillInStackTraceL19java.lang.ThrowableEO"(ptr nonnull dereferenceable(40) %_55000001)
  br label %_56000000.0
_56000000.0:
  call ptr @"scalanative_throw"(ptr nonnull dereferenceable(40) %_55000001)
  unreachable
_104000000.0:
  br label %_108000000.0
_108000000.0:
  %_108000001 = call dereferenceable_or_null(40) ptr @"scalanative_GC_alloc_small"(ptr @"_SM34java.lang.IllegalArgumentExceptionG4type", i64 40)
  %_111000075 = getelementptr { { ptr }, ptr, ptr, ptr, i1, i1 }, { { ptr }, ptr, ptr, ptr, i1, i1 }* %_108000001, i32 0, i32 5
  %_111000076 = zext i1 true to i8
  store i8 %_111000076, ptr%_111000075, align 1
  %_111000078 = getelementptr { { ptr }, ptr, ptr, ptr, i1, i1 }, { { ptr }, ptr, ptr, ptr, i1, i1 }* %_108000001, i32 0, i32 4
  %_111000079 = zext i1 true to i8
  store i8 %_111000079, ptr%_111000078, align 1
  %_111000081 = getelementptr { { ptr }, ptr, ptr, ptr, i1, i1 }, { { ptr }, ptr, ptr, ptr, i1, i1 }* %_108000001, i32 0, i32 3
  store ptr @"_SM7__constG2-10", ptr%_111000081, align 8
  %_108000005 = call dereferenceable_or_null(40) ptr @"_SM19java.lang.ThrowableD16fillInStackTraceL19java.lang.ThrowableEO"(ptr nonnull dereferenceable(40) %_108000001)
  br label %_109000000.0
_109000000.0:
  call ptr @"scalanative_throw"(ptr nonnull dereferenceable(40) %_108000001)
  unreachable
_111000002.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
_111000031.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D14throwUndefinednEO"(ptr null)
  unreachable
}