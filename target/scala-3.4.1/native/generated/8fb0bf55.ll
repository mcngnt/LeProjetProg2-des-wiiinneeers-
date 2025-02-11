declare i32 @llvm.eh.typeid.for(ptr)
declare i32 @__gxx_personality_v0(...)
declare ptr @__cxa_begin_catch(ptr)
declare void @__cxa_end_catch()
@_ZTIN11scalanative16ExceptionWrapperE = external constant { ptr, ptr, ptr }

@"_SM7__constG1-0" = private unnamed_addr constant { ptr, i32, i32, [50 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 50, i32 2, [50 x i16] [ i16 106, i16 97, i16 118, i16 97, i16 46, i16 110, i16 105, i16 111, i16 46, i16 99, i16 104, i16 97, i16 110, i16 110, i16 101, i16 108, i16 115, i16 46, i16 115, i16 112, i16 105, i16 46, i16 65, i16 98, i16 115, i16 116, i16 114, i16 97, i16 99, i16 116, i16 73, i16 110, i16 116, i16 101, i16 114, i16 114, i16 117, i16 112, i16 116, i16 105, i16 98, i16 108, i16 101, i16 67, i16 104, i16 97, i16 110, i16 110, i16 101, i16 108 ] }
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-0", i32 0, i32 50, i32 1890665130 }
@"_SM7__constG1-2" = private unnamed_addr constant [1 x i32] [ i32 -1 ]
@"_SM16java.lang.StringG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }

declare i32 @"_SM16java.lang.ObjectD8hashCodeiEO"(ptr) inlinehint
@"_SM15java.lang.ClassG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }

declare void @"_SM33java.nio.channels.FileChannelImplD16implCloseChanneluEO"(ptr)

declare i1 @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO"(ptr, ptr) inlinehint

declare ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr) noinline

declare dereferenceable_or_null(32) ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO"(ptr) inlinehint
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [9 x ptr] }
@"_SM50java.nio.channels.spi.AbstractInterruptibleChannelG4type" = hidden global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] } { { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 230, i32 -1, ptr @"_SM7__constG1-1" }, i32 16, i32 232, ptr @"_SM7__constG1-2", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }

define void @"_SM50java.nio.channels.spi.AbstractInterruptibleChannelD5closeuEO"(ptr %_1) personality ptr @__gxx_personality_v0 {
_2000000.0:
  %_5000003 = icmp ne ptr %_1, null
  br i1 %_5000003, label %_5000001.0, label %_5000002.0
_5000001.0:
  %_5000004 = getelementptr { { ptr }, i1 }, { { ptr }, i1 }* %_1, i32 0, i32 1
  %_5000005 = load i8, ptr %_5000004
  %_2000001 = trunc i8 %_5000005 to i1
  %_2000003 = xor i1 %_2000001, true
  br i1 %_2000003, label %_3000000.0, label %_4000000.0
_3000000.0:
  %_5000007 = getelementptr { { ptr }, i1 }, { { ptr }, i1 }* %_1, i32 0, i32 1
  %_5000008 = zext i1 true to i8
  store i8 %_5000008, ptr%_5000007, align 1
  call void @"_SM33java.nio.channels.FileChannelImplD16implCloseChanneluEO"(ptr dereferenceable_or_null(16) %_1)
  br label %_5000000.0
_4000000.0:
  br label %_5000000.0
_5000000.0:
  ret void
_5000002.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}

define i1 @"_SM50java.nio.channels.spi.AbstractInterruptibleChannelD6isOpenzEO"(ptr %_1) personality ptr @__gxx_personality_v0 {
_2000000.0:
  %_2000006 = icmp ne ptr %_1, null
  br i1 %_2000006, label %_2000004.0, label %_2000005.0
_2000004.0:
  %_2000007 = getelementptr { { ptr }, i1 }, { { ptr }, i1 }* %_1, i32 0, i32 1
  %_2000008 = load i8, ptr %_2000007
  %_2000001 = trunc i8 %_2000008 to i1
  %_2000003 = xor i1 %_2000001, true
  ret i1 %_2000003
_2000005.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}