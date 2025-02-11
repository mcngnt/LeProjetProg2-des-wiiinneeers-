declare i32 @llvm.eh.typeid.for(ptr)
declare i32 @__gxx_personality_v0(...)
declare ptr @__cxa_begin_catch(ptr)
declare void @__cxa_end_catch()
@_ZTIN11scalanative16ExceptionWrapperE = external constant { ptr, ptr, ptr }

@"_SM7__constG1-0" = private unnamed_addr constant { ptr, i32, i32, [18 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 18, i32 2, [18 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 115, i16 121, i16 115, i16 46, i16 112, i16 97, i16 99, i16 107, i16 97, i16 103, i16 101, i16 36 ] }
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-0", i32 0, i32 18, i32 -1282096569 }
@"_SM7__constG1-2" = private unnamed_addr constant [1 x i32] [ i32 -1 ]

declare dereferenceable_or_null(48) ptr @"_SM19java.lang.ThrowableD16fillInStackTraceL19java.lang.ThrowableEO"(ptr)
@"_SM16java.lang.StringG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }

declare i32 @"_SM16java.lang.ObjectD8hashCodeiEO"(ptr) inlinehint
@"_SM15java.lang.ClassG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }
@"_SM26java.lang.RuntimeExceptionG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [4 x ptr] }

declare ptr @"scalanative_throw"(ptr)

declare i1 @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO"(ptr, ptr) inlinehint

declare dereferenceable_or_null(32) ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO"(ptr) inlinehint

declare ptr @"scalanative_GC_alloc_small"(ptr, i64)
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [9 x ptr] }
@"_SM18scala.sys.package$G4type" = hidden global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] } { { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 678, i32 -1, ptr @"_SM7__constG1-1" }, i32 8, i32 678, ptr @"_SM7__constG1-2", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }
@"_SM18scala.sys.package$G8instance" = hidden global { ptr } { ptr @"_SM18scala.sys.package$G4type" }

define ptr @"_SM18scala.sys.package$D5errorL16java.lang.StringnEO"(ptr %_1, ptr %_2) personality ptr @__gxx_personality_v0 {
_3000000.0:
  br label %_11000000.0
_11000000.0:
  %_11000001 = call dereferenceable_or_null(48) ptr @"scalanative_GC_alloc_small"(ptr @"_SM26java.lang.RuntimeExceptionG4type", i64 48)
  %_12000002 = getelementptr { { ptr }, ptr, ptr, ptr, i1, i1, ptr }, { { ptr }, ptr, ptr, ptr, i1, i1, ptr }* %_11000001, i32 0, i32 5
  %_12000003 = zext i1 true to i8
  store i8 %_12000003, ptr%_12000002, align 1
  %_12000005 = getelementptr { { ptr }, ptr, ptr, ptr, i1, i1, ptr }, { { ptr }, ptr, ptr, ptr, i1, i1, ptr }* %_11000001, i32 0, i32 4
  %_12000006 = zext i1 true to i8
  store i8 %_12000006, ptr%_12000005, align 1
  %_12000008 = getelementptr { { ptr }, ptr, ptr, ptr, i1, i1, ptr }, { { ptr }, ptr, ptr, ptr, i1, i1, ptr }* %_11000001, i32 0, i32 3
  store ptr %_2, ptr%_12000008, align 8
  %_11000005 = call dereferenceable_or_null(48) ptr @"_SM19java.lang.ThrowableD16fillInStackTraceL19java.lang.ThrowableEO"(ptr nonnull dereferenceable(48) %_11000001)
  br label %_12000000.0
_12000000.0:
  call ptr @"scalanative_throw"(ptr nonnull dereferenceable(48) %_11000001)
  unreachable
}

define void @"_SM18scala.sys.package$RE"(ptr %_1) personality ptr @__gxx_personality_v0 {
_2000000.0:
  ret void
}