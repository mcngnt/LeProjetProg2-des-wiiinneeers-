declare i32 @llvm.eh.typeid.for(ptr)
declare i32 @__gxx_personality_v0(...)
declare ptr @__cxa_begin_catch(ptr)
declare void @__cxa_end_catch()
@_ZTIN11scalanative16ExceptionWrapperE = external constant { ptr, ptr, ptr }

@"_SM7__constG1-0" = private unnamed_addr constant { ptr, i32, i32, [26 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 26, i32 2, [26 x i16] [ i16 115, i16 102, i16 109, i16 108, i16 46, i16 105, i16 110, i16 116, i16 101, i16 114, i16 110, i16 97, i16 108, i16 46, i16 97, i16 117, i16 100, i16 105, i16 111, i16 46, i16 83, i16 111, i16 117, i16 110, i16 100, i16 36 ] }
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-0", i32 0, i32 26, i32 329612290 }
@"_SM7__constG1-2" = private unnamed_addr constant [1 x i32] [ i32 -1 ]
@"_SM7__constG1-3" = private unnamed_addr constant { ptr, i32, i32, [32 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 32, i32 2, [32 x i16] [ i16 115, i16 102, i16 109, i16 108, i16 46, i16 105, i16 110, i16 116, i16 101, i16 114, i16 110, i16 97, i16 108, i16 46, i16 97, i16 117, i16 100, i16 105, i16 111, i16 46, i16 83, i16 111, i16 117, i16 110, i16 100, i16 66, i16 117, i16 102, i16 102, i16 101, i16 114, i16 36 ] }
@"_SM7__constG1-4" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-3", i32 0, i32 32, i32 -220976862 }
@"_SM7__constG1-5" = private unnamed_addr constant { ptr, i32, i32, [32 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 32, i32 2, [32 x i16] [ i16 115, i16 102, i16 109, i16 108, i16 46, i16 105, i16 110, i16 116, i16 101, i16 114, i16 110, i16 97, i16 108, i16 46, i16 97, i16 117, i16 100, i16 105, i16 111, i16 46, i16 83, i16 111, i16 117, i16 110, i16 100, i16 83, i16 111, i16 117, i16 114, i16 99, i16 101, i16 36 ] }
@"_SM7__constG1-6" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-5", i32 0, i32 32, i32 1824116903 }
@"_SM16java.lang.StringG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }

declare i32 @"_SM16java.lang.ObjectD8hashCodeiEO"(ptr) inlinehint
@"_SM15java.lang.ClassG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }

declare i1 @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO"(ptr, ptr) inlinehint

declare dereferenceable_or_null(32) ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO"(ptr) inlinehint
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [9 x ptr] }
@"_SM26sfml.internal.audio.Sound$G4type" = hidden global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] } { { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 801, i32 -1, ptr @"_SM7__constG1-1" }, i32 8, i32 801, ptr @"_SM7__constG1-2", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }
@"_SM32sfml.internal.audio.SoundBuffer$G4type" = hidden global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] } { { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 54, i32 -1, ptr @"_SM7__constG1-4" }, i32 8, i32 54, ptr @"_SM7__constG1-2", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }
@"_SM32sfml.internal.audio.SoundBuffer$G8instance" = hidden global { ptr } { ptr @"_SM32sfml.internal.audio.SoundBuffer$G4type" }
@"_SM32sfml.internal.audio.SoundSource$G4type" = hidden global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] } { { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 31, i32 -1, ptr @"_SM7__constG1-6" }, i32 8, i32 31, ptr @"_SM7__constG1-2", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }

declare void @"_ZN2sf5SoundC2Ev"(ptr)

declare void @"_ZN2sf5SoundD2Ev"(ptr)

declare void @"_ZN2sf5Sound4playEv"(ptr)

declare void @"_ZN2sf5Sound9setBufferERKNS_11SoundBufferE"(ptr, ptr)

declare void @"_ZN2sf11SoundBufferC2Ev"(ptr)

declare void @"_ZN2sf11SoundBufferD2Ev"(ptr)

declare i8 @"_ZN2sf11SoundBuffer12loadFromFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"(ptr, ptr)

declare void @"_ZN2sf11SoundSource9setVolumeEf"(ptr, float)