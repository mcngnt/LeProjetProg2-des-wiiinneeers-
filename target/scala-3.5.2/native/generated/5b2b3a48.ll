declare i32 @llvm.eh.typeid.for(ptr)
declare i32 @__gxx_personality_v0(...)
declare ptr @__cxa_begin_catch(ptr)
declare void @__cxa_end_catch()
@_ZTIN11scalanative16ExceptionWrapperE = external constant { ptr, ptr, ptr }

@"_SM7__constG1-0" = private unnamed_addr constant { ptr, i32, i32, [29 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 29, i32 2, [29 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 115, i16 99, i16 97, i16 108, i16 97, i16 110, i16 97, i16 116, i16 105, i16 118, i16 101, i16 46, i16 112, i16 111, i16 115, i16 105, i16 120, i16 46, i16 101, i16 114, i16 114, i16 110, i16 111 ] }
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-0", i32 0, i32 29, i32 1772678786 }
@"_SM7__constG1-2" = private unnamed_addr constant { ptr, i32, i32, [30 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 30, i32 2, [30 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 115, i16 99, i16 97, i16 108, i16 97, i16 110, i16 97, i16 116, i16 105, i16 118, i16 101, i16 46, i16 112, i16 111, i16 115, i16 105, i16 120, i16 46, i16 102, i16 99, i16 110, i16 116, i16 108, i16 36 ] }
@"_SM7__constG1-3" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-2", i32 0, i32 30, i32 -866869601 }
@"_SM7__constG1-4" = private unnamed_addr constant [1 x i32] [ i32 -1 ]
@"_SM7__constG1-5" = private unnamed_addr constant { ptr, i32, i32, [28 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 28, i32 2, [28 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 115, i16 99, i16 97, i16 108, i16 97, i16 110, i16 97, i16 116, i16 105, i16 118, i16 101, i16 46, i16 112, i16 111, i16 115, i16 105, i16 120, i16 46, i16 112, i16 119, i16 100, i16 36 ] }
@"_SM7__constG1-6" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-5", i32 0, i32 28, i32 2135725163 }
@"_SM7__constG1-7" = private unnamed_addr constant { ptr, i32, i32, [31 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 31, i32 2, [31 x i16] [ i16 115, i16 99, i16 97, i16 108, i16 97, i16 46, i16 115, i16 99, i16 97, i16 108, i16 97, i16 110, i16 97, i16 116, i16 105, i16 118, i16 101, i16 46, i16 112, i16 111, i16 115, i16 105, i16 120, i16 46, i16 117, i16 110, i16 105, i16 115, i16 116, i16 100, i16 36 ] }
@"_SM7__constG1-8" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-7", i32 0, i32 31, i32 -365217555 }
@"_SM7__constG1-9" = private unnamed_addr constant [2 x i32] [ i32 8, i32 -1 ]
@"_SM16java.lang.StringG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }

declare i32 @"_SM16java.lang.ObjectD8hashCodeiEO"(ptr) inlinehint
@"_SM15java.lang.ClassG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }

declare i1 @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO"(ptr, ptr) inlinehint

declare nonnull dereferenceable(32) ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO"(ptr) inlinehint
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [7 x ptr] }
@"_SM29scala.scalanative.posix.errnoG4type" = hidden global { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 -119, i32 -1, ptr @"_SM7__constG1-1" }
@"_SM30scala.scalanative.posix.fcntl$G4type" = hidden global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] } { { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 414, i32 -1, ptr @"_SM7__constG1-3" }, i32 8, i32 414, ptr @"_SM7__constG1-4", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }
@"_SM28scala.scalanative.posix.pwd$G4type" = hidden global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] } { { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 965, i32 -1, ptr @"_SM7__constG1-6" }, i32 8, i32 965, ptr @"_SM7__constG1-4", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }
@"environ" = external global ptr
@"_SM31scala.scalanative.posix.unistd$G4type" = hidden global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] } { { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 425, i32 -1, ptr @"_SM7__constG1-8" }, i32 16, i32 425, ptr @"_SM7__constG1-9", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }

declare i32 @"scalanative_eacces"()

declare i32 @"scalanative_eexist"()

declare i32 @"scalanative_enoent"()

declare i32 @"scalanative_enotdir"()

declare i32 @"scalanative_enotempty"()

declare i32 @"scalanative_open_m"(ptr, i32, i32)

declare i32 @"scalanative_o_creat"()

declare i32 @"scalanative_o_trunc"()

declare i32 @"scalanative_o_append"()

declare i32 @"scalanative_o_rdonly"()

declare i32 @"scalanative_o_wronly"()

declare i32 @"scalanative_getpwuid"(i32, ptr)

declare i32 @"scalanative_f_ok"()

declare i32 @"scalanative_stdin_fileno"()

declare i32 @"scalanative_stderr_fileno"()

declare i32 @"scalanative_stdout_fileno"()

declare i32 @"read"(i32, ptr, i64)

declare i32 @"close"(i32)

declare i32 @"write"(i32, ptr, i64)

declare i32 @"access"(ptr, i32)

declare ptr @"getcwd"(ptr, i64)

declare i32 @"getuid"()

declare i32 @"geteuid"()