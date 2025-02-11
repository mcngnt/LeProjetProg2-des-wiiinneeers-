declare i32 @llvm.eh.typeid.for(ptr)
declare i32 @__gxx_personality_v0(...)
declare ptr @__cxa_begin_catch(ptr)
declare void @__cxa_end_catch()
@_ZTIN11scalanative16ExceptionWrapperE = external constant { ptr, ptr, ptr }

@"_SM7__constG1-0" = private unnamed_addr constant { ptr, i32, i32, [27 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 27, i32 2, [27 x i16] [ i16 115, i16 102, i16 109, i16 108, i16 46, i16 105, i16 110, i16 116, i16 101, i16 114, i16 110, i16 97, i16 108, i16 46, i16 115, i16 121, i16 115, i16 116, i16 101, i16 109, i16 46, i16 67, i16 108, i16 111, i16 99, i16 107, i16 36 ] }
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-0", i32 0, i32 27, i32 1383658336 }
@"_SM7__constG1-2" = private unnamed_addr constant [1 x i32] [ i32 -1 ]
@"_SM7__constG1-3" = private unnamed_addr constant { ptr, i32, i32, [26 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 26, i32 2, [26 x i16] [ i16 115, i16 102, i16 109, i16 108, i16 46, i16 105, i16 110, i16 116, i16 101, i16 114, i16 110, i16 97, i16 108, i16 46, i16 115, i16 121, i16 115, i16 116, i16 101, i16 109, i16 46, i16 84, i16 105, i16 109, i16 101, i16 36 ] }
@"_SM7__constG1-4" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-3", i32 0, i32 26, i32 1445716013 }
@"_SM7__constG1-5" = private unnamed_addr constant { ptr, i32, i32, [29 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 29, i32 2, [29 x i16] [ i16 115, i16 102, i16 109, i16 108, i16 46, i16 105, i16 110, i16 116, i16 101, i16 114, i16 110, i16 97, i16 108, i16 46, i16 115, i16 121, i16 115, i16 116, i16 101, i16 109, i16 46, i16 86, i16 101, i16 99, i16 116, i16 111, i16 114, i16 50, i16 36 ] }
@"_SM7__constG1-6" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-5", i32 0, i32 29, i32 -940788289 }
@"_SM7__constG1-7" = private unnamed_addr constant { ptr, i32, i32, [29 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 29, i32 2, [29 x i16] [ i16 115, i16 102, i16 109, i16 108, i16 46, i16 105, i16 110, i16 116, i16 101, i16 114, i16 110, i16 97, i16 108, i16 46, i16 115, i16 121, i16 115, i16 116, i16 101, i16 109, i16 46, i16 86, i16 101, i16 99, i16 116, i16 111, i16 114, i16 51, i16 36 ] }
@"_SM7__constG1-8" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-7", i32 0, i32 29, i32 -940788258 }
@"_SM16java.lang.StringG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }

declare i32 @"_SM16java.lang.ObjectD8hashCodeiEO"(ptr) inlinehint
@"_SM15java.lang.ClassG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }

declare i1 @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO"(ptr, ptr) inlinehint

declare dereferenceable_or_null(32) ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO"(ptr) inlinehint
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [9 x ptr] }
@"_SM27sfml.internal.system.Clock$G4type" = hidden global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] } { { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 301, i32 -1, ptr @"_SM7__constG1-1" }, i32 8, i32 301, ptr @"_SM7__constG1-2", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }
@"_SM26sfml.internal.system.Time$G4type" = hidden global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] } { { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 846, i32 -1, ptr @"_SM7__constG1-4" }, i32 8, i32 846, ptr @"_SM7__constG1-2", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }
@"_SM26sfml.internal.system.Time$G8instance" = hidden global { ptr } { ptr @"_SM26sfml.internal.system.Time$G4type" }
@"_SM29sfml.internal.system.Vector2$G4type" = hidden global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] } { { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 121, i32 -1, ptr @"_SM7__constG1-6" }, i32 8, i32 121, ptr @"_SM7__constG1-2", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }
@"_SM29sfml.internal.system.Vector2$G8instance" = hidden global { ptr } { ptr @"_SM29sfml.internal.system.Vector2$G4type" }
@"_SM29sfml.internal.system.Vector3$G4type" = hidden global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] } { { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 1197, i32 -1, ptr @"_SM7__constG1-8" }, i32 8, i32 1197, ptr @"_SM7__constG1-2", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }

declare void @"_ZN2sf5ClockC2Ev"(ptr)

declare i64 @"_ZN2sf5Clock7restartEv"(ptr)

declare i64 @"_ZNK2sf5Clock14getElapsedTimeEv"(ptr)

declare i8 @"_ZN2sfeqENS_4TimeES0_"(i64, i64)

declare float @"_ZNK2sf4Time9asSecondsEv"(ptr)

declare void @"_Z22glue_returnTypeHandlerPN2sf4TimeEPFS0_PvES2_"(ptr, ptr, ptr)

declare void @"_ZN2sf7Vector2IfEC2Eff"(ptr, float, float)

declare void @"_ZN2sf7Vector2IiEC2Eii"(ptr, i32, i32)

declare i8 @"_ZN2sfeqIfEEbRKNS_7Vector2IT_EES5_"(ptr, ptr)

declare i8 @"_ZN2sfeqIiEEbRKNS_7Vector2IT_EES5_"(ptr, ptr)

declare i8 @"_ZN2sfneIiEEbRKNS_7Vector2IT_EES5_"(ptr, ptr)

declare dereferenceable_or_null(16) ptr @"_ZN2sfdvIfEENS_7Vector2IT_EERKS3_S2_"(ptr, float)

declare dereferenceable_or_null(16) ptr @"_ZN2sfmiIfEENS_7Vector2IT_EERKS3_S5_"(ptr, ptr)

declare dereferenceable_or_null(16) ptr @"_ZN2sfmlIfEENS_7Vector2IT_EERKS3_S2_"(ptr, float)

declare dereferenceable_or_null(16) ptr @"_ZN2sfplIfEENS_7Vector2IT_EERKS3_S5_"(ptr, ptr)

declare ptr @"_ZN2sfpLIfEERNS_7Vector2IT_EES4_RKS3_"(ptr, ptr)

declare dereferenceable_or_null(16) ptr @"_Z22glue_inline_sfVector2fRN2sf7Vector2IfEE"(ptr)

declare void @"_Z22glue_returnTypeHandlerPN2sf7Vector2IfEEPFS1_PvES3_"(ptr, ptr, ptr)

declare void @"_Z22glue_returnTypeHandlerPN2sf7Vector2IiEEPFS1_PvES3_"(ptr, ptr, ptr)

declare void @"_ZN2sf7Vector3IfEC2Efff"(ptr, float, float, float)

declare void @"_ZN2sf7Vector3IiEC2Eiii"(ptr, i32, i32, i32)

declare i8 @"_ZN2sfeqIfEEbRKNS_7Vector3IT_EES5_"(ptr, ptr)

declare i8 @"_ZN2sfeqIiEEbRKNS_7Vector3IT_EES5_"(ptr, ptr)