declare i32 @llvm.eh.typeid.for(ptr)
declare i32 @__gxx_personality_v0(...)
declare ptr @__cxa_begin_catch(ptr)
declare void @__cxa_end_catch()
@_ZTIN11scalanative16ExceptionWrapperE = external constant { ptr, ptr, ptr }

@"_SM7__constG1-0" = private unnamed_addr constant { ptr, i32, i32, [34 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 34, i32 2, [34 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 114, i16 117, i16 110, i16 116, i16 105, i16 109, i16 101, i16 46, i16 102, i16 117, i16 110, i16 99, i16 116, i16 105, i16 111, i16 110, i16 46, i16 74, i16 80, i16 114, i16 111, i16 99, i16 101, i16 100, i16 117, i16 114, i16 101, i16 49 ] }
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-0", i32 0, i32 34, i32 232275600 }
@"_SM7__constG1-2" = private unnamed_addr constant { ptr, i32, i32, [34 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 34, i32 2, [34 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 114, i16 117, i16 110, i16 116, i16 105, i16 109, i16 101, i16 46, i16 102, i16 117, i16 110, i16 99, i16 116, i16 105, i16 111, i16 110, i16 46, i16 74, i16 80, i16 114, i16 111, i16 99, i16 101, i16 100, i16 117, i16 114, i16 101, i16 50 ] }
@"_SM7__constG1-3" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-2", i32 0, i32 34, i32 232275601 }
@"_SM7__constG1-4" = private unnamed_addr constant { ptr, i32, i32, [34 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 34, i32 2, [34 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 114, i16 117, i16 110, i16 116, i16 105, i16 109, i16 101, i16 46, i16 102, i16 117, i16 110, i16 99, i16 116, i16 105, i16 111, i16 110, i16 46, i16 74, i16 80, i16 114, i16 111, i16 99, i16 101, i16 100, i16 117, i16 114, i16 101, i16 51 ] }
@"_SM7__constG1-5" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-4", i32 0, i32 34, i32 232275602 }
@"_SM36scala.scalanative.runtime.BoxedUnit$G8instance" = external global { ptr }
@"_SM16java.lang.StringG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }
@"_SM15java.lang.ClassG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }

declare ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr) noinline
@"_SM22__scalanative_metadataG14dispatch_table" = external constant [54936 x ptr]
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [9 x ptr] }
@"_SM34scala.runtime.function.JProcedure1G4type" = hidden global { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 -145, i32 -1, ptr @"_SM7__constG1-1" }
@"_SM34scala.runtime.function.JProcedure2G4type" = hidden global { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 -146, i32 -1, ptr @"_SM7__constG1-3" }
@"_SM34scala.runtime.function.JProcedure3G4type" = hidden global { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 -147, i32 -1, ptr @"_SM7__constG1-5" }

define dereferenceable_or_null(8) ptr @"_SM34scala.runtime.function.JProcedure1D5applyL16java.lang.ObjectL16java.lang.ObjectEO"(ptr %_1, ptr %_2) personality ptr @__gxx_personality_v0 {
_3000000.0:
  %_3000006 = icmp ne ptr %_1, null
  br i1 %_3000006, label %_3000004.0, label %_3000005.0
_3000004.0:
  %_3000007 = load ptr, ptr %_1
  %_3000008 = getelementptr { ptr, i32, i32, ptr }, { ptr, i32, i32, ptr }* %_3000007, i32 0, i32 2
  %_3000009 = load i32, ptr %_3000008
  %_3000010 = getelementptr ptr, ptr @"_SM22__scalanative_metadataG14dispatch_table", i32 6109
  %_3000011 = getelementptr ptr, ptr %_3000010, i32 %_3000009
  %_3000002 = load ptr, ptr %_3000011
  call void %_3000002(ptr dereferenceable_or_null(8) %_1, ptr dereferenceable_or_null(8) %_2)
  ret ptr @"_SM36scala.scalanative.runtime.BoxedUnit$G8instance"
_3000005.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
}