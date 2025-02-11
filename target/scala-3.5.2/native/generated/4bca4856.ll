declare i32 @llvm.eh.typeid.for(ptr)
declare i32 @__gxx_personality_v0(...)
declare ptr @__cxa_begin_catch(ptr)
declare void @__cxa_end_catch()
@_ZTIN11scalanative16ExceptionWrapperE = external constant { ptr, ptr, ptr }

@"_SM7__constG1-0" = private unnamed_addr constant { ptr, i32, i32, [38 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 38, i32 2, [38 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 114, i16 117, i16 110, i16 116, i16 105, i16 109, i16 101, i16 46, i16 106, i16 97, i16 118, i16 97, i16 56, i16 46, i16 74, i16 70, i16 117, i16 110, i16 99, i16 116, i16 105, i16 111, i16 110, i16 49, i16 36, i16 109, i16 99, i16 73, i16 73, i16 36, i16 115, i16 112 ] }
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-0", i32 0, i32 38, i32 576603820 }

declare ptr @"_SM34scala.scalanative.runtime.package$D14throwClassCastR_R_nEO"(ptr, ptr, ptr) noinline
@"_SM16java.lang.StringG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }
@"_SM15java.lang.ClassG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }

declare dereferenceable_or_null(16) ptr @"_SM23java.lang.IntegerCache$G4load"() noinline
@"_SM17java.lang.IntegerG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [7 x ptr] }

declare ptr @"_SM34scala.scalanative.runtime.package$D16throwOutOfBoundsiinEO"(ptr, i32, i32)

declare ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr) noinline
@"_SM22__scalanative_metadataG14dispatch_table" = external constant [17739 x ptr]

declare ptr @"scalanative_GC_alloc_small"(ptr, i64)
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [7 x ptr] }
@"_SM38scala.runtime.java8.JFunction1$mcII$spG4type" = hidden global { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 -188, i32 -1, ptr @"_SM7__constG1-1" }

define dereferenceable_or_null(16) ptr @"_SM38scala.runtime.java8.JFunction1$mcII$spD5applyL16java.lang.ObjectL16java.lang.ObjectEO"(ptr %_1, ptr %_2) personality ptr @__gxx_personality_v0 {
_3000000.0:
  %_14000004 = icmp ne ptr %_1, null
  br i1 %_14000004, label %_14000002.0, label %_14000003.0
_14000002.0:
  %_4000002 = icmp eq ptr %_2, null
  br i1 %_4000002, label %_5000000.0, label %_6000000.0
_5000000.0:
  br label %_7000000.0
_6000000.0:
  %_14000008 = icmp eq ptr %_2, null
  br i1 %_14000008, label %_14000006.0, label %_14000005.0
_14000005.0:
  %_14000009 = load ptr, ptr %_2
  %_14000010 = icmp eq ptr %_14000009, @"_SM17java.lang.IntegerG4type"
  br i1 %_14000010, label %_14000006.0, label %_14000007.0
_14000006.0:
  %_14000012 = icmp ne ptr %_2, null
  br i1 %_14000012, label %_14000011.0, label %_14000003.0
_14000011.0:
  %_14000013 = getelementptr { { ptr }, i32 }, { { ptr }, i32 }* %_2, i32 0, i32 1
  %_6000002 = load i32, ptr %_14000013
  br label %_7000000.0
_7000000.0:
  %_7000001 = phi i32 [%_6000002, %_14000011.0], [0, %_5000000.0]
  %_14000014 = load ptr, ptr %_1
  %_14000015 = getelementptr { ptr, i32, i32, ptr }, { ptr, i32, i32, ptr }* %_14000014, i32 0, i32 2
  %_14000016 = load i32, ptr %_14000015
  %_14000017 = getelementptr ptr, ptr @"_SM22__scalanative_metadataG14dispatch_table", i32 12805
  %_14000018 = getelementptr ptr, ptr %_14000017, i32 %_14000016
  %_3000002 = load ptr, ptr %_14000018
  %_3000003 = call i32 %_3000002(ptr dereferenceable_or_null(8) %_1, i32 %_7000001)
  %_8000004 = trunc i32 %_3000003 to i8
  %_8000005 = sext i8 %_8000004 to i32
  %_8000006 = icmp ne i32 %_8000005, %_3000003
  br i1 %_8000006, label %_9000000.0, label %_10000000.0
_9000000.0:
  %_9000002 = call dereferenceable_or_null(16) ptr @"scalanative_GC_alloc_small"(ptr @"_SM17java.lang.IntegerG4type", i64 16)
  %_14000020 = getelementptr { { ptr }, i32 }, { { ptr }, i32 }* %_9000002, i32 0, i32 1
  store i32 %_3000003, ptr%_14000020, align 4
  br label %_11000000.0
_10000000.0:
  %_10000001 = call dereferenceable_or_null(16) ptr @"_SM23java.lang.IntegerCache$G4load"()
  %_14000021 = getelementptr { { ptr }, ptr }, { { ptr }, ptr }* %_10000001, i32 0, i32 1
  %_10000002 = load ptr, ptr %_14000021, !dereferenceable_or_null !{i64 16}
  %_10000004 = add i32 %_3000003, 128
  %_14000024 = icmp ne ptr %_10000002, null
  br i1 %_14000024, label %_14000023.0, label %_14000003.0
_14000023.0:
  %_14000025 = getelementptr { ptr, i32, i32 }, { ptr, i32, i32 }* %_10000002, i32 0, i32 1
  %_14000022 = load i32, ptr %_14000025
  %_14000028 = icmp sge i32 %_10000004, 0
  %_14000029 = icmp slt i32 %_10000004, %_14000022
  %_14000030 = and i1 %_14000028, %_14000029
  br i1 %_14000030, label %_14000026.0, label %_14000027.0
_14000026.0:
  %_14000031 = getelementptr { { ptr, i32, i32 }, [0 x ptr] }, { { ptr, i32, i32 }, [0 x ptr] }* %_10000002, i32 0, i32 1, i32 %_10000004
  %_10000005 = load ptr, ptr %_14000031, !dereferenceable_or_null !{i64 16}
  %_10000008 = icmp eq ptr %_10000005, null
  %_10000009 = xor i1 %_10000008, true
  br i1 %_10000009, label %_12000000.0, label %_13000000.0
_12000000.0:
  br label %_14000000.0
_13000000.0:
  %_14000032 = getelementptr { { ptr }, ptr }, { { ptr }, ptr }* %_10000001, i32 0, i32 1
  %_13000001 = load ptr, ptr %_14000032, !dereferenceable_or_null !{i64 16}
  %_13000003 = call dereferenceable_or_null(16) ptr @"scalanative_GC_alloc_small"(ptr @"_SM17java.lang.IntegerG4type", i64 16)
  %_14000034 = getelementptr { { ptr }, i32 }, { { ptr }, i32 }* %_13000003, i32 0, i32 1
  store i32 %_3000003, ptr%_14000034, align 4
  %_14000038 = icmp ne ptr %_13000001, null
  br i1 %_14000038, label %_14000037.0, label %_14000003.0
_14000037.0:
  %_14000039 = getelementptr { ptr, i32, i32 }, { ptr, i32, i32 }* %_13000001, i32 0, i32 1
  %_14000036 = load i32, ptr %_14000039
  %_14000041 = icmp sge i32 %_10000004, 0
  %_14000042 = icmp slt i32 %_10000004, %_14000036
  %_14000043 = and i1 %_14000041, %_14000042
  br i1 %_14000043, label %_14000040.0, label %_14000027.0
_14000040.0:
  %_14000044 = getelementptr { { ptr, i32, i32 }, [0 x ptr] }, { { ptr, i32, i32 }, [0 x ptr] }* %_13000001, i32 0, i32 1, i32 %_10000004
  store ptr %_13000003, ptr%_14000044, align 8
  br label %_14000000.0
_14000000.0:
  %_14000001 = phi ptr [%_13000003, %_14000040.0], [%_10000005, %_12000000.0]
  br label %_11000000.0
_11000000.0:
  %_11000001 = phi ptr [%_14000001, %_14000000.0], [%_9000002, %_9000000.0]
  ret ptr %_11000001
_14000003.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
_14000007.0:
  %_14000046 = phi ptr [%_2, %_14000005.0]
  %_14000047 = phi ptr [@"_SM17java.lang.IntegerG4type", %_14000005.0]
  %_14000048 = load ptr, ptr %_14000046
  call ptr @"_SM34scala.scalanative.runtime.package$D14throwClassCastR_R_nEO"(ptr null, ptr %_14000048, ptr %_14000047)
  unreachable
_14000027.0:
  %_14000050 = phi i32 [%_10000004, %_14000023.0], [%_10000004, %_14000037.0]
  %_14000051 = phi i32 [%_14000022, %_14000023.0], [%_14000036, %_14000037.0]
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwOutOfBoundsiinEO"(ptr null, i32 %_14000050, i32 %_14000051)
  unreachable
}