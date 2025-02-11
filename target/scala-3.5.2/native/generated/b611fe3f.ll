declare i32 @llvm.eh.typeid.for(ptr)
declare i32 @__gxx_personality_v0(...)
declare ptr @__cxa_begin_catch(ptr)
declare void @__cxa_end_catch()
@_ZTIN11scalanative16ExceptionWrapperE = external constant { ptr, ptr, ptr }

@"_SM7__constG1-0" = private unnamed_addr constant { ptr, i32, i32, [23 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 23, i32 2, [23 x i16] [ i16 106, i16 97, i16 118, i16 97, i16 46, i16 108, i16 97, i16 110, i16 103, i16 46, i16 114, i16 101, i16 102, i16 46, i16 82, i16 101, i16 102, i16 101, i16 114, i16 101, i16 110, i16 99, i16 101 ] }
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-0", i32 0, i32 23, i32 409731804 }
@"_SM7__constG1-2" = private unnamed_addr constant [2 x i32] [ i32 8, i32 -1 ]
@"_SM7__constG1-3" = private unnamed_addr constant { ptr, i32, i32, [28 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 28, i32 2, [28 x i16] [ i16 106, i16 97, i16 118, i16 97, i16 46, i16 108, i16 97, i16 110, i16 103, i16 46, i16 114, i16 101, i16 102, i16 46, i16 82, i16 101, i16 102, i16 101, i16 114, i16 101, i16 110, i16 99, i16 101, i16 81, i16 117, i16 101, i16 117, i16 101 ] }
@"_SM7__constG1-4" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-3", i32 0, i32 28, i32 819695509 }
@"_SM7__constG1-5" = private unnamed_addr constant [1 x i32] [ i32 -1 ]
@"_SM7__constG1-6" = private unnamed_addr constant { ptr, i32, i32, [27 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 27, i32 2, [27 x i16] [ i16 106, i16 97, i16 118, i16 97, i16 46, i16 108, i16 97, i16 110, i16 103, i16 46, i16 114, i16 101, i16 102, i16 46, i16 87, i16 101, i16 97, i16 107, i16 82, i16 101, i16 102, i16 101, i16 114, i16 101, i16 110, i16 99, i16 101 ] }
@"_SM7__constG1-7" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-6", i32 0, i32 27, i32 2031630788 }
@"_SM7__constG1-8" = private unnamed_addr constant [4 x i32] [ i32 8, i32 24, i32 32, i32 -1 ]
@"_SM16java.lang.StringG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }

declare i32 @"_SM16java.lang.ObjectD8hashCodeiEO"(ptr) inlinehint
@"_SM15java.lang.ClassG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }

declare i1 @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO"(ptr, ptr) inlinehint

declare ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr) noinline

declare nonnull dereferenceable(32) ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO"(ptr) inlinehint
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [7 x ptr] }
@"_SM23java.lang.ref.ReferenceG4type" = hidden global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] } { { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 371, i32 -1, ptr @"_SM7__constG1-1" }, i32 16, i32 372, ptr @"_SM7__constG1-2", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }
@"_SM28java.lang.ref.ReferenceQueueG4type" = hidden global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] } { { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 938, i32 -1, ptr @"_SM7__constG1-4" }, i32 8, i32 938, ptr @"_SM7__constG1-5", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }
@"_SM27java.lang.ref.WeakReferenceG4type" = hidden global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] } { { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 372, i32 -1, ptr @"_SM7__constG1-7" }, i32 40, i32 372, ptr @"_SM7__constG1-8", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }

define void @"_SM27java.lang.ref.WeakReferenceKRL16java.lang.ObjectL28java.lang.ref.ReferenceQueueEL27java.lang.ref.WeakReferenceL16java.lang.ObjectlE"(ptr %_1, ptr %_2, ptr %_3) personality ptr @__gxx_personality_v0 {
_4000000.0:
  %_12000003 = icmp ne ptr %_1, null
  br i1 %_12000003, label %_12000001.0, label %_12000002.0
_12000001.0:
  %_12000005 = getelementptr { { ptr }, ptr, i1, ptr, ptr }, { { ptr }, ptr, i1, ptr, ptr }* %_1, i32 0, i32 4
  store ptr %_2, ptr%_12000005, align 8
  %_12000007 = getelementptr { { ptr }, ptr, i1, ptr, ptr }, { { ptr }, ptr, i1, ptr, ptr }* %_1, i32 0, i32 3
  store ptr %_3, ptr%_12000007, align 8
  %_12000009 = getelementptr { { ptr }, ptr }, { { ptr }, ptr }* %_1, i32 0, i32 1
  store ptr null, ptr%_12000009, align 8
  %_12000011 = getelementptr { { ptr }, ptr, i1, ptr, ptr }, { { ptr }, ptr, i1, ptr, ptr }* %_1, i32 0, i32 2
  %_12000012 = zext i1 false to i8
  store i8 %_12000012, ptr%_12000011, align 1
  %_12000013 = getelementptr { { ptr }, ptr, i1, ptr, ptr }, { { ptr }, ptr, i1, ptr, ptr }* %_1, i32 0, i32 4
  %_6000001 = load ptr, ptr %_12000013, !dereferenceable_or_null !{i64 8}
  %_4000006 = icmp eq ptr %_6000001, null
  %_4000007 = xor i1 %_4000006, true
  br i1 %_4000007, label %_7000000.0, label %_8000000.0
_7000000.0:
  br label %_10000000.0
_10000000.0:
  br label %_11000000.0
_11000000.0:
  br label %_12000000.0
_8000000.0:
  br label %_12000000.0
_12000000.0:
  ret void
_12000002.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}

define void @"_SM27java.lang.ref.WeakReferenceRL16java.lang.ObjectE"(ptr %_1, ptr %_2) personality ptr @__gxx_personality_v0 {
_3000000.0:
  %_3000004 = icmp ne ptr %_1, null
  br i1 %_3000004, label %_3000002.0, label %_3000003.0
_3000002.0:
  call void @"_SM27java.lang.ref.WeakReferenceKRL16java.lang.ObjectL28java.lang.ref.ReferenceQueueEL27java.lang.ref.WeakReferenceL16java.lang.ObjectlE"(ptr dereferenceable_or_null(40) %_1, ptr dereferenceable_or_null(8) %_2, ptr null)
  ret void
_3000003.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}