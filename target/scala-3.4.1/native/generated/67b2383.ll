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

declare dereferenceable_or_null(48) ptr @"_SM19java.lang.ThrowableD16fillInStackTraceL19java.lang.ThrowableEO"(ptr)
@"_SM16java.lang.StringG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }
@"_SM15java.lang.ClassG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }

declare ptr @"scalanative_throw"(ptr)
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [9 x ptr] }

declare dereferenceable_or_null(32) ptr @"_SM12java.net.URID7getPathL16java.lang.StringEO"(ptr)

declare dereferenceable_or_null(8) ptr @"_SM52scala.scalanative.nio.fs.unix.UnixFileSystemProviderD2fsL24java.nio.file.FileSystemEO"(ptr) alwaysinline

declare dereferenceable_or_null(32) ptr @"_SM12java.net.URID9getSchemeL16java.lang.StringEO"(ptr)

declare i32 @"_SM16java.lang.ObjectD8hashCodeiEO"(ptr) inlinehint

declare i1 @"_SM16java.lang.StringD6equalsL16java.lang.ObjectzEO"(ptr, ptr)

declare i1 @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO"(ptr, ptr) inlinehint

declare ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr) noinline

declare dereferenceable_or_null(32) ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO"(ptr) inlinehint

declare ptr @"scalanative_GC_alloc_small"(ptr, i64)
@"_SM50scala.scalanative.nio.fs.GenericFileSystemProviderG4type" = hidden global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] } { { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 161, i32 -1, ptr @"_SM7__constG1-1" }, i32 8, i32 162, ptr @"_SM7__constG1-2", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }

define dereferenceable_or_null(8) ptr @"_SM50scala.scalanative.nio.fs.GenericFileSystemProviderD13getFileSystemL12java.net.URIL24java.nio.file.FileSystemEO"(ptr %_1, ptr %_2) personality ptr @__gxx_personality_v0 {
_3000000.0:
  %_35000003 = icmp ne ptr %_1, null
  br i1 %_35000003, label %_35000001.0, label %_35000002.0
_35000001.0:
  %_3000001 = call dereferenceable_or_null(32) ptr @"_SM12java.net.URID7getPathL16java.lang.StringEO"(ptr dereferenceable_or_null(128) %_2)
  %_3000003 = icmp eq ptr %_3000001, null
  br i1 %_3000003, label %_4000000.0, label %_5000000.0
_4000000.0:
  %_4000004 = icmp eq ptr @"_SM7__constG1-4", null
  br label %_6000000.0
_5000000.0:
  %_5000003 = call i1 @"_SM16java.lang.StringD6equalsL16java.lang.ObjectzEO"(ptr dereferenceable_or_null(32) %_3000001, ptr @"_SM7__constG1-4")
  br label %_6000000.0
_6000000.0:
  %_6000001 = phi i1 [%_5000003, %_5000000.0], [%_4000004, %_4000000.0]
  %_6000003 = xor i1 %_6000001, true
  br i1 %_6000003, label %_7000000.0, label %_8000000.0
_8000000.0:
  %_8000001 = call dereferenceable_or_null(32) ptr @"_SM12java.net.URID9getSchemeL16java.lang.StringEO"(ptr dereferenceable_or_null(128) %_2)
  %_8000003 = icmp eq ptr %_8000001, null
  br i1 %_8000003, label %_19000000.0, label %_20000000.0
_19000000.0:
  %_19000004 = icmp eq ptr @"_SM7__constG1-6", null
  br label %_21000000.0
_20000000.0:
  %_20000003 = call i1 @"_SM16java.lang.StringD6equalsL16java.lang.ObjectzEO"(ptr dereferenceable_or_null(32) %_8000001, ptr @"_SM7__constG1-6")
  br label %_21000000.0
_21000000.0:
  %_21000001 = phi i1 [%_20000003, %_20000000.0], [%_19000004, %_19000000.0]
  %_21000003 = xor i1 %_21000001, true
  br i1 %_21000003, label %_22000000.0, label %_23000000.0
_23000000.0:
  %_23000001 = call dereferenceable_or_null(8) ptr @"_SM52scala.scalanative.nio.fs.unix.UnixFileSystemProviderD2fsL24java.nio.file.FileSystemEO"(ptr dereferenceable_or_null(8) %_1)
  br label %_34000000.0
_34000000.0:
  br label %_35000000.0
_35000000.0:
  ret ptr %_23000001
_7000000.0:
  br label %_17000000.0
_17000000.0:
  %_17000001 = call dereferenceable_or_null(48) ptr @"scalanative_GC_alloc_small"(ptr @"_SM34java.lang.IllegalArgumentExceptionG4type", i64 48)
  %_35000005 = getelementptr { { ptr }, ptr, ptr, ptr, i1, i1, ptr }, { { ptr }, ptr, ptr, ptr, i1, i1, ptr }* %_17000001, i32 0, i32 5
  %_35000006 = zext i1 true to i8
  store i8 %_35000006, ptr%_35000005, align 1
  %_35000008 = getelementptr { { ptr }, ptr, ptr, ptr, i1, i1, ptr }, { { ptr }, ptr, ptr, ptr, i1, i1, ptr }* %_17000001, i32 0, i32 4
  %_35000009 = zext i1 true to i8
  store i8 %_35000009, ptr%_35000008, align 1
  %_35000011 = getelementptr { { ptr }, ptr, ptr, ptr, i1, i1, ptr }, { { ptr }, ptr, ptr, ptr, i1, i1, ptr }* %_17000001, i32 0, i32 3
  store ptr @"_SM7__constG1-8", ptr%_35000011, align 8
  %_17000005 = call dereferenceable_or_null(48) ptr @"_SM19java.lang.ThrowableD16fillInStackTraceL19java.lang.ThrowableEO"(ptr nonnull dereferenceable(48) %_17000001)
  br label %_18000000.0
_18000000.0:
  call ptr @"scalanative_throw"(ptr nonnull dereferenceable(48) %_17000001)
  unreachable
_22000000.0:
  br label %_32000000.0
_32000000.0:
  %_32000001 = call dereferenceable_or_null(48) ptr @"scalanative_GC_alloc_small"(ptr @"_SM34java.lang.IllegalArgumentExceptionG4type", i64 48)
  %_35000014 = getelementptr { { ptr }, ptr, ptr, ptr, i1, i1, ptr }, { { ptr }, ptr, ptr, ptr, i1, i1, ptr }* %_32000001, i32 0, i32 5
  %_35000015 = zext i1 true to i8
  store i8 %_35000015, ptr%_35000014, align 1
  %_35000017 = getelementptr { { ptr }, ptr, ptr, ptr, i1, i1, ptr }, { { ptr }, ptr, ptr, ptr, i1, i1, ptr }* %_32000001, i32 0, i32 4
  %_35000018 = zext i1 true to i8
  store i8 %_35000018, ptr%_35000017, align 1
  %_35000020 = getelementptr { { ptr }, ptr, ptr, ptr, i1, i1, ptr }, { { ptr }, ptr, ptr, ptr, i1, i1, ptr }* %_32000001, i32 0, i32 3
  store ptr @"_SM7__constG2-10", ptr%_35000020, align 8
  %_32000005 = call dereferenceable_or_null(48) ptr @"_SM19java.lang.ThrowableD16fillInStackTraceL19java.lang.ThrowableEO"(ptr nonnull dereferenceable(48) %_32000001)
  br label %_33000000.0
_33000000.0:
  call ptr @"scalanative_throw"(ptr nonnull dereferenceable(48) %_32000001)
  unreachable
_35000002.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}