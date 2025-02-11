declare i32 @llvm.eh.typeid.for(ptr)
declare i32 @__gxx_personality_v0(...)
declare ptr @__cxa_begin_catch(ptr)
declare void @__cxa_end_catch()
@_ZTIN11scalanative16ExceptionWrapperE = external constant { ptr, ptr, ptr }

@"_SM7__constG1-0" = private unnamed_addr constant { ptr, i32, i32, [19 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 19, i32 2, [19 x i16] [ i16 115, i16 102, i16 109, i16 108, i16 46, i16 105, i16 110, i16 116, i16 101, i16 114, i16 110, i16 97, i16 108, i16 46, i16 84, i16 121, i16 112, i16 101, i16 36 ] }
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-0", i32 0, i32 19, i32 920163285 }
@"_SM7__constG1-2" = private unnamed_addr constant [1 x i32] [ i32 -1 ]
@"_SM16java.lang.StringG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }

declare i32 @"_SM16java.lang.ObjectD8hashCodeiEO"(ptr) inlinehint
@"_SM15java.lang.ClassG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }

declare i1 @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO"(ptr, ptr) inlinehint
@"__modules" = external global [444 x ptr]

declare dereferenceable_or_null(32) ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO"(ptr) inlinehint

declare ptr @"scalanative_GC_alloc_small"(ptr, i64)
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [9 x ptr] }
@"_SM19sfml.internal.Type$G4type" = hidden global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] } { { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 1002, i32 -1, ptr @"_SM7__constG1-1" }, i32 16, i32 1002, ptr @"_SM7__constG1-2", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }

define i8 @"_SM19sfml.internal.Type$D15booleanToSfBoolzbEO"(ptr %_1, i1 %_2) personality ptr @__gxx_personality_v0 {
_3000000.0:
  br i1 %_2, label %_4000000.0, label %_5000000.0
_4000000.0:
  %_6000001 = call dereferenceable_or_null(16) ptr @"_SM19sfml.internal.Type$G4load"()
  %_8000003 = getelementptr { { ptr }, i8, i8 }, { { ptr }, i8, i8 }* %_6000001, i32 0, i32 2
  %_6000002 = load i8, ptr %_8000003
  br label %_7000000.0
_5000000.0:
  %_8000001 = call dereferenceable_or_null(16) ptr @"_SM19sfml.internal.Type$G4load"()
  %_8000004 = getelementptr { { ptr }, i8, i8 }, { { ptr }, i8, i8 }* %_8000001, i32 0, i32 1
  %_8000002 = load i8, ptr %_8000004
  br label %_7000000.0
_7000000.0:
  %_7000001 = phi i8 [%_8000002, %_5000000.0], [%_6000002, %_4000000.0]
  ret i8 %_7000001
}

define i1 @"_SM19sfml.internal.Type$D15sfBoolToBooleanbzEO"(ptr %_1, i8 %_2) personality ptr @__gxx_personality_v0 {
_3000000.0:
  %_4000001 = call dereferenceable_or_null(16) ptr @"_SM19sfml.internal.Type$G4load"()
  %_4000003 = getelementptr { { ptr }, i8, i8 }, { { ptr }, i8, i8 }* %_4000001, i32 0, i32 1
  %_4000002 = load i8, ptr %_4000003
  %_3000004 = sext i8 %_2 to i32
  %_3000005 = sext i8 %_4000002 to i32
  %_3000006 = icmp ne i32 %_3000004, %_3000005
  ret i1 %_3000006
}

define dereferenceable_or_null(16) ptr @"_SM19sfml.internal.Type$G4load"() noinline personality ptr @__gxx_personality_v0 {
_1.0:
  %_4 = getelementptr ptr, ptr @"__modules", i32 283
  %_5 = load ptr, ptr %_4, !dereferenceable_or_null !{i64 16}
  %_6 = icmp ne ptr %_5, null
  br i1 %_6, label %_2.0, label %_3.0
_2.0:
  ret ptr %_5
_3.0:
  %_7 = call dereferenceable_or_null(16) ptr @"scalanative_GC_alloc_small"(ptr @"_SM19sfml.internal.Type$G4type", i64 16)
  store ptr %_7, ptr%_4, align 8
  call void @"_SM19sfml.internal.Type$RE"(ptr dereferenceable_or_null(16) %_7)
  ret ptr %_7
}

define void @"_SM19sfml.internal.Type$RE"(ptr %_1) personality ptr @__gxx_personality_v0 {
_2000000.0:
  %_2000001 = call dereferenceable_or_null(16) ptr @"_SM19sfml.internal.Type$G4load"()
  %_2000005 = getelementptr { { ptr }, i8, i8 }, { { ptr }, i8, i8 }* %_2000001, i32 0, i32 1
  store i8 0, ptr%_2000005, align 1
  %_2000007 = getelementptr { { ptr }, i8, i8 }, { { ptr }, i8, i8 }* %_2000001, i32 0, i32 2
  store i8 1, ptr%_2000007, align 1
  ret void
}