declare i32 @llvm.eh.typeid.for(ptr)
declare i32 @__gxx_personality_v0(...)
declare ptr @__cxa_begin_catch(ptr)
declare void @__cxa_end_catch()
@_ZTIN11scalanative16ExceptionWrapperE = external constant { ptr, ptr, ptr }

@"_SM7__constG1-0" = private unnamed_addr constant { ptr, i32, i32, [27 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 27, i32 2, [27 x i16] [ i16 115, i16 102, i16 109, i16 108, i16 46, i16 105, i16 110, i16 116, i16 101, i16 114, i16 110, i16 97, i16 108, i16 46, i16 119, i16 105, i16 110, i16 100, i16 111, i16 119, i16 46, i16 77, i16 111, i16 117, i16 115, i16 101, i16 36 ] }
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-0", i32 0, i32 27, i32 1326575816 }
@"_SM7__constG1-2" = private unnamed_addr constant [1 x i32] [ i32 -1 ]
@"_SM7__constG1-3" = private unnamed_addr constant { ptr, i32, i32, [31 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 31, i32 2, [31 x i16] [ i16 115, i16 102, i16 109, i16 108, i16 46, i16 105, i16 110, i16 116, i16 101, i16 114, i16 110, i16 97, i16 108, i16 46, i16 119, i16 105, i16 110, i16 100, i16 111, i16 119, i16 46, i16 86, i16 105, i16 100, i16 101, i16 111, i16 77, i16 111, i16 100, i16 101, i16 36 ] }
@"_SM7__constG1-4" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-3", i32 0, i32 31, i32 93431631 }
@"_SM7__constG1-5" = private unnamed_addr constant { ptr, i32, i32, [28 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 28, i32 2, [28 x i16] [ i16 115, i16 102, i16 109, i16 108, i16 46, i16 105, i16 110, i16 116, i16 101, i16 114, i16 110, i16 97, i16 108, i16 46, i16 119, i16 105, i16 110, i16 100, i16 111, i16 119, i16 46, i16 87, i16 105, i16 110, i16 100, i16 111, i16 119, i16 36 ] }
@"_SM7__constG1-6" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-5", i32 0, i32 28, i32 -1719394645 }
@"_SM16java.lang.StringG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }

declare i32 @"_SM16java.lang.ObjectD8hashCodeiEO"(ptr) inlinehint
@"_SM15java.lang.ClassG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }

declare i1 @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO"(ptr, ptr) inlinehint

declare dereferenceable_or_null(32) ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO"(ptr) inlinehint
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [9 x ptr] }
@"_SM27sfml.internal.window.Mouse$G4type" = hidden global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] } { { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 704, i32 -1, ptr @"_SM7__constG1-1" }, i32 8, i32 704, ptr @"_SM7__constG1-2", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }
@"_SM31sfml.internal.window.VideoMode$G4type" = hidden global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] } { { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 777, i32 -1, ptr @"_SM7__constG1-4" }, i32 8, i32 777, ptr @"_SM7__constG1-2", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }
@"_SM28sfml.internal.window.Window$G4type" = hidden global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] } { { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 1199, i32 -1, ptr @"_SM7__constG1-6" }, i32 8, i32 1199, ptr @"_SM7__constG1-2", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }

declare dereferenceable_or_null(16) ptr @"_ZN2sf5Mouse11getPositionERKNS_6WindowE"(ptr)

declare void @"_ZN2sf9VideoModeC2Ejjj"(ptr, i32, i32, i32)

declare i8 @"_ZN2sfeqERKNS_9VideoModeES2_"(ptr, ptr)

declare void @"_ZN2sf6Window5closeEv"(ptr)

declare void @"_ZN2sf6Window7displayEv"(ptr)

declare i8 @"_ZNK2sf6Window6isOpenEv"(ptr)

declare void @"_ZN2sf6Window17setFramerateLimitEj"(ptr, i32)

declare i8 @"_ZN2sf6Window9pollEventERNS_5EventE"(ptr, ptr)