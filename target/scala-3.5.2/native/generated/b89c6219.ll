declare i32 @llvm.eh.typeid.for(ptr)
declare i32 @__gxx_personality_v0(...)
declare ptr @__cxa_begin_catch(ptr)
declare void @__cxa_end_catch()
@_ZTIN11scalanative16ExceptionWrapperE = external constant { ptr, ptr, ptr }

@"_SM7__constG1-0" = private unnamed_addr constant { ptr, i32, i32, [28 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 28, i32 2, [28 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 115, i16 99, i16 97, i16 108, i16 97, i16 110, i16 97, i16 116, i16 105, i16 118, i16 101, i16 46, i16 108, i16 105, i16 98, i16 99, i16 46, i16 101, i16 114, i16 114, i16 110, i16 111 ] }
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-0", i32 0, i32 28, i32 -1779163697 }
@"_SM7__constG1-2" = private unnamed_addr constant { ptr, i32, i32, [27 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 27, i32 2, [27 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 115, i16 99, i16 97, i16 108, i16 97, i16 110, i16 97, i16 116, i16 105, i16 118, i16 101, i16 46, i16 108, i16 105, i16 98, i16 99, i16 46, i16 109, i16 97, i16 116, i16 104 ] }
@"_SM7__constG1-3" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-2", i32 0, i32 27, i32 912660991 }
@"_SM7__constG1-4" = private unnamed_addr constant { ptr, i32, i32, [28 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 28, i32 2, [28 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 115, i16 99, i16 97, i16 108, i16 97, i16 110, i16 97, i16 116, i16 105, i16 118, i16 101, i16 46, i16 108, i16 105, i16 98, i16 99, i16 46, i16 115, i16 116, i16 100, i16 105, i16 111 ] }
@"_SM7__constG1-5" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-4", i32 0, i32 28, i32 -1766188430 }
@"_SM7__constG1-6" = private unnamed_addr constant { ptr, i32, i32, [29 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 29, i32 2, [29 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 115, i16 99, i16 97, i16 108, i16 97, i16 110, i16 97, i16 116, i16 105, i16 118, i16 101, i16 46, i16 108, i16 105, i16 98, i16 99, i16 46, i16 115, i16 116, i16 100, i16 108, i16 105, i16 98 ] }
@"_SM7__constG1-7" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-6", i32 0, i32 29, i32 1082736313 }
@"_SM7__constG1-8" = private unnamed_addr constant { ptr, i32, i32, [29 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 29, i32 2, [29 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 115, i16 99, i16 97, i16 108, i16 97, i16 110, i16 97, i16 116, i16 105, i16 118, i16 101, i16 46, i16 108, i16 105, i16 98, i16 99, i16 46, i16 115, i16 116, i16 114, i16 105, i16 110, i16 103 ] }
@"_SM7__constG1-9" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-8", i32 0, i32 29, i32 1083150664 }
@"_SM7__constG2-10" = private unnamed_addr constant { ptr, i32, i32, [30 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 30, i32 2, [30 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 115, i16 99, i16 97, i16 108, i16 97, i16 110, i16 97, i16 116, i16 105, i16 118, i16 101, i16 46, i16 108, i16 105, i16 98, i16 99, i16 46, i16 115, i16 116, i16 114, i16 105, i16 110, i16 103, i16 36 ] }
@"_SM7__constG2-11" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG2-10", i32 0, i32 30, i32 -782067748 }
@"_SM7__constG2-12" = private unnamed_addr constant [1 x i32] [ i32 -1 ]
@"_SM16java.lang.StringG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }

declare i32 @"_SM16java.lang.ObjectD8hashCodeiEO"(ptr) inlinehint
@"_SM15java.lang.ClassG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }

declare i1 @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO"(ptr, ptr) inlinehint

declare nonnull dereferenceable(32) ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO"(ptr) inlinehint
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [7 x ptr] }
@"_SM28scala.scalanative.libc.errnoG4type" = hidden global { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 -107, i32 -1, ptr @"_SM7__constG1-1" }
@"_SM27scala.scalanative.libc.mathG4type" = hidden global { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 -99, i32 -1, ptr @"_SM7__constG1-3" }
@"_SM28scala.scalanative.libc.stdioG4type" = hidden global { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 -108, i32 -1, ptr @"_SM7__constG1-5" }
@"_SM29scala.scalanative.libc.stdlibG4type" = hidden global { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 -117, i32 -1, ptr @"_SM7__constG1-7" }
@"_SM29scala.scalanative.libc.stringG4type" = hidden global { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 -118, i32 -1, ptr @"_SM7__constG1-9" }
@"_SM30scala.scalanative.libc.string$G4type" = hidden global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] } { { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 920, i32 -1, ptr @"_SM7__constG2-11" }, i32 8, i32 920, ptr @"_SM7__constG2-12", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }
@"_SM30scala.scalanative.libc.string$G8instance" = hidden global { ptr } { ptr @"_SM30scala.scalanative.libc.string$G4type" }

declare i32 @"scalanative_errno"()

declare i32 @"scalanative_erange"()

declare void @"scalanative_set_errno"(i32)

declare double @"atan2"(double, double)

declare i32 @"remove"(ptr)

declare void @"exit"(i32)

declare void @"free"(ptr)

declare double @"strtod"(ptr, ptr)

declare float @"strtof"(ptr, ptr)

declare i32 @"memcmp"(ptr, ptr, i64)

declare ptr @"memcpy"(ptr, ptr, i64)

declare ptr @"strerror"(i32)