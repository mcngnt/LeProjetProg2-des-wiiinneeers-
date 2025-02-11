declare i32 @llvm.eh.typeid.for(ptr)
declare i32 @__gxx_personality_v0(...)
declare ptr @__cxa_begin_catch(ptr)
declare void @__cxa_end_catch()
@_ZTIN11scalanative16ExceptionWrapperE = external constant { ptr, ptr, ptr }

@"_SM7__constG1-0" = private unnamed_addr constant { ptr, i32, i32, [19 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 19, i32 2, [19 x i16] [ i16 115, i16 102, i16 109, i16 108, i16 46, i16 115, i16 116, i16 100, i16 108, i16 105, i16 98, i16 46, i16 83, i16 116, i16 114, i16 105, i16 110, i16 103, i16 36 ] }
@"_SM7__constG1-1" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-0", i32 0, i32 19, i32 1252782051 }
@"_SM7__constG1-2" = private unnamed_addr constant [1 x i32] [ i32 -1 ]
@"_SM7__constG1-3" = private unnamed_addr constant { ptr, i32, i32, [19 x i16] } { ptr @"_SM35scala.scalanative.runtime.CharArrayG4type", i32 19, i32 2, [19 x i16] [ i16 115, i16 102, i16 109, i16 108, i16 46, i16 115, i16 116, i16 100, i16 108, i16 105, i16 98, i16 46, i16 86, i16 101, i16 99, i16 116, i16 111, i16 114, i16 36 ] }
@"_SM7__constG1-4" = private unnamed_addr constant { ptr, ptr, i32, i32, i32 } { ptr @"_SM16java.lang.StringG4type", ptr @"_SM7__constG1-3", i32 0, i32 19, i32 -822635279 }

declare nonnull dereferenceable(32) ptr @"_SM38scala.scalanative.unsafe.Tag$CStruct3$D5applyL28scala.scalanative.unsafe.TagL28scala.scalanative.unsafe.TagL28scala.scalanative.unsafe.TagL37scala.scalanative.unsafe.Tag$CStruct3EO"(ptr, ptr, ptr, ptr)

declare void @"free"(ptr)

declare ptr @"_SM34scala.scalanative.runtime.package$D14throwClassCastR_R_nEO"(ptr, ptr, ptr) noinline
@"_SM28scala.scalanative.unsafe.TagG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [7 x ptr] }
@"_SM16java.lang.StringG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }
@"_SM15java.lang.ClassG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }
@"_SM28scala.scalanative.unsafe.PtrG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] }
@"_SM35scala.scalanative.unsafe.Tag$USize$G8instance" = external global { ptr }

declare nonnull dereferenceable(16) ptr @"_SM33scala.scalanative.unsafe.Tag$Ptr$D5applyL28scala.scalanative.unsafe.TagL32scala.scalanative.unsafe.Tag$PtrEO"(ptr, ptr)
@"_SM35scala.scalanative.runtime.CharArrayG4type" = external global { { ptr, i32, i32, ptr }, i32, i32, ptr, [9 x ptr] }
@"_SM38scala.scalanative.unsafe.Tag$CStruct3$G8instance" = external global { ptr }
@"_SM34scala.scalanative.unsafe.Tag$Byte$G8instance" = external global { ptr }

declare dereferenceable_or_null(8) ptr @"_SM13scala.Predef$D10implicitlyL16java.lang.ObjectL16java.lang.ObjectEO"(ptr, ptr) inlinehint

declare ptr @"_SM32scala.scalanative.runtime.Boxes$D10unboxToPtrL16java.lang.ObjectR_EO"(ptr, ptr) inlinehint

declare i32 @"_SM16java.lang.ObjectD8hashCodeiEO"(ptr) inlinehint

declare void @"_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev"(ptr)
@"_SM33scala.scalanative.unsafe.Tag$Ptr$G8instance" = external global { ptr }

declare i1 @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO"(ptr, ptr) inlinehint

declare ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr) noinline

declare dereferenceable_or_null(32) ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO"(ptr) inlinehint
@"_SM13scala.Predef$G8instance" = external global { ptr }
@"_SM19sfml.stdlib.String$G4type" = hidden global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] } { { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 835, i32 -1, ptr @"_SM7__constG1-1" }, i32 8, i32 835, ptr @"_SM7__constG1-2", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }
@"_SM19sfml.stdlib.String$G8instance" = hidden global { ptr } { ptr @"_SM19sfml.stdlib.String$G4type" }
@"_SM19sfml.stdlib.Vector$G4type" = hidden global { { ptr, i32, i32, ptr }, i32, i32, ptr, [3 x ptr] } { { ptr, i32, i32, ptr } { ptr @"_SM15java.lang.ClassG4type", i32 1473, i32 -1, ptr @"_SM7__constG1-4" }, i32 8, i32 1473, ptr @"_SM7__constG1-2", [3 x ptr] [ ptr @"_SM16java.lang.ObjectD8hashCodeiEO", ptr @"_SM16java.lang.ObjectD8toStringL16java.lang.StringEO", ptr @"_SM16java.lang.ObjectD6equalsL16java.lang.ObjectzEO" ] }
@"_SM19sfml.stdlib.Vector$G8instance" = hidden global { ptr } { ptr @"_SM19sfml.stdlib.Vector$G4type" }

define void @"_SM19sfml.stdlib.String$D5closeL28scala.scalanative.unsafe.PtruEO"(ptr %_1, ptr %_2) personality ptr @__gxx_personality_v0 {
_3000000.0:
  %_3000002 = call ptr @"_SM32scala.scalanative.runtime.Boxes$D10unboxToPtrL16java.lang.ObjectR_EO"(ptr null, ptr dereferenceable_or_null(16) %_2)
  call void @"_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev"(ptr %_3000002)
  ret void
}

define void @"_SM19sfml.stdlib.String$RE"(ptr %_1) personality ptr @__gxx_personality_v0 {
_2000000.0:
  ret void
}

define void @"_SM19sfml.stdlib.Vector$D5closeL28scala.scalanative.unsafe.PtruEO"(ptr %_1, ptr %_2) personality ptr @__gxx_personality_v0 {
_3000000.0:
  %_5000003 = call dereferenceable_or_null(16) ptr @"_SM33scala.scalanative.unsafe.Tag$Ptr$D5applyL28scala.scalanative.unsafe.TagL32scala.scalanative.unsafe.Tag$PtrEO"(ptr nonnull dereferenceable(8) @"_SM33scala.scalanative.unsafe.Tag$Ptr$G8instance", ptr nonnull dereferenceable(8) @"_SM34scala.scalanative.unsafe.Tag$Byte$G8instance")
  %_8000004 = call dereferenceable_or_null(8) ptr @"_SM13scala.Predef$D10implicitlyL16java.lang.ObjectL16java.lang.ObjectEO"(ptr nonnull dereferenceable(8) @"_SM13scala.Predef$G8instance", ptr dereferenceable_or_null(16) %_5000003)
  %_72000004 = icmp eq ptr %_8000004, null
  br i1 %_72000004, label %_72000002.0, label %_72000001.0
_72000001.0:
  %_72000005 = load ptr, ptr %_8000004
  %_72000006 = getelementptr { ptr, i32, i32, ptr }, { ptr, i32, i32, ptr }* %_72000005, i32 0, i32 1
  %_72000007 = load i32, ptr %_72000006
  %_72000008 = icmp sle i32 1098, %_72000007
  %_72000009 = icmp sle i32 %_72000007, 1130
  %_72000010 = and i1 %_72000008, %_72000009
  br i1 %_72000010, label %_72000002.0, label %_72000003.0
_72000002.0:
  %_8000007 = call dereferenceable_or_null(8) ptr @"_SM13scala.Predef$D10implicitlyL16java.lang.ObjectL16java.lang.ObjectEO"(ptr nonnull dereferenceable(8) @"_SM13scala.Predef$G8instance", ptr nonnull dereferenceable(8) @"_SM35scala.scalanative.unsafe.Tag$USize$G8instance")
  %_72000013 = icmp eq ptr %_8000007, null
  br i1 %_72000013, label %_72000012.0, label %_72000011.0
_72000011.0:
  %_72000014 = load ptr, ptr %_8000007
  %_72000015 = getelementptr { ptr, i32, i32, ptr }, { ptr, i32, i32, ptr }* %_72000014, i32 0, i32 1
  %_72000016 = load i32, ptr %_72000015
  %_72000017 = icmp sle i32 1098, %_72000016
  %_72000018 = icmp sle i32 %_72000016, 1130
  %_72000019 = and i1 %_72000017, %_72000018
  br i1 %_72000019, label %_72000012.0, label %_72000003.0
_72000012.0:
  %_8000009 = call dereferenceable_or_null(8) ptr @"_SM13scala.Predef$D10implicitlyL16java.lang.ObjectL16java.lang.ObjectEO"(ptr nonnull dereferenceable(8) @"_SM13scala.Predef$G8instance", ptr nonnull dereferenceable(8) @"_SM35scala.scalanative.unsafe.Tag$USize$G8instance")
  %_72000022 = icmp eq ptr %_8000009, null
  br i1 %_72000022, label %_72000021.0, label %_72000020.0
_72000020.0:
  %_72000023 = load ptr, ptr %_8000009
  %_72000024 = getelementptr { ptr, i32, i32, ptr }, { ptr, i32, i32, ptr }* %_72000023, i32 0, i32 1
  %_72000025 = load i32, ptr %_72000024
  %_72000026 = icmp sle i32 1098, %_72000025
  %_72000027 = icmp sle i32 %_72000025, 1130
  %_72000028 = and i1 %_72000026, %_72000027
  br i1 %_72000028, label %_72000021.0, label %_72000003.0
_72000021.0:
  %_8000011 = call dereferenceable_or_null(32) ptr @"_SM38scala.scalanative.unsafe.Tag$CStruct3$D5applyL28scala.scalanative.unsafe.TagL28scala.scalanative.unsafe.TagL28scala.scalanative.unsafe.TagL37scala.scalanative.unsafe.Tag$CStruct3EO"(ptr nonnull dereferenceable(8) @"_SM38scala.scalanative.unsafe.Tag$CStruct3$G8instance", ptr dereferenceable_or_null(8) %_8000004, ptr dereferenceable_or_null(8) %_8000007, ptr dereferenceable_or_null(8) %_8000009)
  %_11000002 = call ptr @"_SM32scala.scalanative.runtime.Boxes$D10unboxToPtrL16java.lang.ObjectR_EO"(ptr null, ptr dereferenceable_or_null(16) %_2)
  %_18000001 = call dereferenceable_or_null(16) ptr @"_SM33scala.scalanative.unsafe.Tag$Ptr$D5applyL28scala.scalanative.unsafe.TagL32scala.scalanative.unsafe.Tag$PtrEO"(ptr nonnull dereferenceable(8) @"_SM33scala.scalanative.unsafe.Tag$Ptr$G8instance", ptr nonnull dereferenceable(8) @"_SM34scala.scalanative.unsafe.Tag$Byte$G8instance")
  %_21000002 = call dereferenceable_or_null(8) ptr @"_SM13scala.Predef$D10implicitlyL16java.lang.ObjectL16java.lang.ObjectEO"(ptr nonnull dereferenceable(8) @"_SM13scala.Predef$G8instance", ptr dereferenceable_or_null(16) %_18000001)
  %_72000031 = icmp eq ptr %_21000002, null
  br i1 %_72000031, label %_72000030.0, label %_72000029.0
_72000029.0:
  %_72000032 = load ptr, ptr %_21000002
  %_72000033 = getelementptr { ptr, i32, i32, ptr }, { ptr, i32, i32, ptr }* %_72000032, i32 0, i32 1
  %_72000034 = load i32, ptr %_72000033
  %_72000035 = icmp sle i32 1098, %_72000034
  %_72000036 = icmp sle i32 %_72000034, 1130
  %_72000037 = and i1 %_72000035, %_72000036
  br i1 %_72000037, label %_72000030.0, label %_72000003.0
_72000030.0:
  %_21000004 = call dereferenceable_or_null(8) ptr @"_SM13scala.Predef$D10implicitlyL16java.lang.ObjectL16java.lang.ObjectEO"(ptr nonnull dereferenceable(8) @"_SM13scala.Predef$G8instance", ptr nonnull dereferenceable(8) @"_SM35scala.scalanative.unsafe.Tag$USize$G8instance")
  %_72000040 = icmp eq ptr %_21000004, null
  br i1 %_72000040, label %_72000039.0, label %_72000038.0
_72000038.0:
  %_72000041 = load ptr, ptr %_21000004
  %_72000042 = getelementptr { ptr, i32, i32, ptr }, { ptr, i32, i32, ptr }* %_72000041, i32 0, i32 1
  %_72000043 = load i32, ptr %_72000042
  %_72000044 = icmp sle i32 1098, %_72000043
  %_72000045 = icmp sle i32 %_72000043, 1130
  %_72000046 = and i1 %_72000044, %_72000045
  br i1 %_72000046, label %_72000039.0, label %_72000003.0
_72000039.0:
  %_21000006 = call dereferenceable_or_null(8) ptr @"_SM13scala.Predef$D10implicitlyL16java.lang.ObjectL16java.lang.ObjectEO"(ptr nonnull dereferenceable(8) @"_SM13scala.Predef$G8instance", ptr nonnull dereferenceable(8) @"_SM35scala.scalanative.unsafe.Tag$USize$G8instance")
  %_72000049 = icmp eq ptr %_21000006, null
  br i1 %_72000049, label %_72000048.0, label %_72000047.0
_72000047.0:
  %_72000050 = load ptr, ptr %_21000006
  %_72000051 = getelementptr { ptr, i32, i32, ptr }, { ptr, i32, i32, ptr }* %_72000050, i32 0, i32 1
  %_72000052 = load i32, ptr %_72000051
  %_72000053 = icmp sle i32 1098, %_72000052
  %_72000054 = icmp sle i32 %_72000052, 1130
  %_72000055 = and i1 %_72000053, %_72000054
  br i1 %_72000055, label %_72000048.0, label %_72000003.0
_72000048.0:
  %_21000008 = call dereferenceable_or_null(32) ptr @"_SM38scala.scalanative.unsafe.Tag$CStruct3$D5applyL28scala.scalanative.unsafe.TagL28scala.scalanative.unsafe.TagL28scala.scalanative.unsafe.TagL37scala.scalanative.unsafe.Tag$CStruct3EO"(ptr nonnull dereferenceable(8) @"_SM38scala.scalanative.unsafe.Tag$CStruct3$G8instance", ptr dereferenceable_or_null(8) %_21000002, ptr dereferenceable_or_null(8) %_21000004, ptr dereferenceable_or_null(8) %_21000006)
  br label %_25000000.0
_25000000.0:
  br label %_26000000.0
_26000000.0:
  %_72000058 = icmp ne ptr %_21000008, null
  br i1 %_72000058, label %_72000056.0, label %_72000057.0
_72000056.0:
  %_72000059 = getelementptr { { ptr }, ptr, ptr, ptr }, { { ptr }, ptr, ptr, ptr }* %_21000008, i32 0, i32 1
  %_27000001 = load ptr, ptr %_72000059, !dereferenceable_or_null !{i64 8}
  %_72000061 = icmp ne ptr %_27000001, null
  br i1 %_72000061, label %_72000060.0, label %_72000057.0
_72000060.0:
  %_72000062 = load ptr, ptr %_27000001
  %_72000063 = getelementptr { { ptr, i32, i32, ptr }, i32, i32, ptr, [7 x ptr] }, { { ptr, i32, i32, ptr }, i32, i32, ptr, [7 x ptr] }* %_72000062, i32 0, i32 4, i32 6
  %_26000003 = load ptr, ptr %_72000063
  %_26000004 = call i32 %_26000003(ptr dereferenceable_or_null(8) %_27000001)
  br label %_29000000.0
_29000000.0:
  br label %_30000000.0
_30000000.0:
  br label %_31000000.0
_31000000.0:
  %_72000064 = getelementptr { { ptr }, ptr, ptr, ptr }, { { ptr }, ptr, ptr, ptr }* %_21000008, i32 0, i32 1
  %_34000001 = load ptr, ptr %_72000064, !dereferenceable_or_null !{i64 8}
  %_72000066 = icmp ne ptr %_34000001, null
  br i1 %_72000066, label %_72000065.0, label %_72000057.0
_72000065.0:
  %_72000067 = load ptr, ptr %_34000001
  %_72000068 = getelementptr { { ptr, i32, i32, ptr }, i32, i32, ptr, [7 x ptr] }, { { ptr, i32, i32, ptr }, i32, i32, ptr, [7 x ptr] }* %_72000067, i32 0, i32 4, i32 4
  %_36000003 = load ptr, ptr %_72000068
  %_36000004 = getelementptr i8, ptr %_11000002, i32 0
  %_36000005 = call dereferenceable_or_null(8) ptr %_36000003(ptr dereferenceable_or_null(8) %_34000001, ptr %_36000004)
  %_3000005 = icmp eq ptr %_36000005, null
  %_3000006 = xor i1 %_3000005, true
  br i1 %_3000006, label %_37000000.0, label %_38000000.0
_37000000.0:
  %_40000001 = call dereferenceable_or_null(16) ptr @"_SM33scala.scalanative.unsafe.Tag$Ptr$D5applyL28scala.scalanative.unsafe.TagL32scala.scalanative.unsafe.Tag$PtrEO"(ptr nonnull dereferenceable(8) @"_SM33scala.scalanative.unsafe.Tag$Ptr$G8instance", ptr nonnull dereferenceable(8) @"_SM34scala.scalanative.unsafe.Tag$Byte$G8instance")
  %_43000002 = call dereferenceable_or_null(8) ptr @"_SM13scala.Predef$D10implicitlyL16java.lang.ObjectL16java.lang.ObjectEO"(ptr nonnull dereferenceable(8) @"_SM13scala.Predef$G8instance", ptr dereferenceable_or_null(16) %_40000001)
  %_72000071 = icmp eq ptr %_43000002, null
  br i1 %_72000071, label %_72000070.0, label %_72000069.0
_72000069.0:
  %_72000072 = load ptr, ptr %_43000002
  %_72000073 = getelementptr { ptr, i32, i32, ptr }, { ptr, i32, i32, ptr }* %_72000072, i32 0, i32 1
  %_72000074 = load i32, ptr %_72000073
  %_72000075 = icmp sle i32 1098, %_72000074
  %_72000076 = icmp sle i32 %_72000074, 1130
  %_72000077 = and i1 %_72000075, %_72000076
  br i1 %_72000077, label %_72000070.0, label %_72000003.0
_72000070.0:
  %_43000004 = call dereferenceable_or_null(8) ptr @"_SM13scala.Predef$D10implicitlyL16java.lang.ObjectL16java.lang.ObjectEO"(ptr nonnull dereferenceable(8) @"_SM13scala.Predef$G8instance", ptr nonnull dereferenceable(8) @"_SM35scala.scalanative.unsafe.Tag$USize$G8instance")
  %_72000080 = icmp eq ptr %_43000004, null
  br i1 %_72000080, label %_72000079.0, label %_72000078.0
_72000078.0:
  %_72000081 = load ptr, ptr %_43000004
  %_72000082 = getelementptr { ptr, i32, i32, ptr }, { ptr, i32, i32, ptr }* %_72000081, i32 0, i32 1
  %_72000083 = load i32, ptr %_72000082
  %_72000084 = icmp sle i32 1098, %_72000083
  %_72000085 = icmp sle i32 %_72000083, 1130
  %_72000086 = and i1 %_72000084, %_72000085
  br i1 %_72000086, label %_72000079.0, label %_72000003.0
_72000079.0:
  %_43000006 = call dereferenceable_or_null(8) ptr @"_SM13scala.Predef$D10implicitlyL16java.lang.ObjectL16java.lang.ObjectEO"(ptr nonnull dereferenceable(8) @"_SM13scala.Predef$G8instance", ptr nonnull dereferenceable(8) @"_SM35scala.scalanative.unsafe.Tag$USize$G8instance")
  %_72000089 = icmp eq ptr %_43000006, null
  br i1 %_72000089, label %_72000088.0, label %_72000087.0
_72000087.0:
  %_72000090 = load ptr, ptr %_43000006
  %_72000091 = getelementptr { ptr, i32, i32, ptr }, { ptr, i32, i32, ptr }* %_72000090, i32 0, i32 1
  %_72000092 = load i32, ptr %_72000091
  %_72000093 = icmp sle i32 1098, %_72000092
  %_72000094 = icmp sle i32 %_72000092, 1130
  %_72000095 = and i1 %_72000093, %_72000094
  br i1 %_72000095, label %_72000088.0, label %_72000003.0
_72000088.0:
  %_43000008 = call dereferenceable_or_null(32) ptr @"_SM38scala.scalanative.unsafe.Tag$CStruct3$D5applyL28scala.scalanative.unsafe.TagL28scala.scalanative.unsafe.TagL28scala.scalanative.unsafe.TagL37scala.scalanative.unsafe.Tag$CStruct3EO"(ptr nonnull dereferenceable(8) @"_SM38scala.scalanative.unsafe.Tag$CStruct3$G8instance", ptr dereferenceable_or_null(8) %_43000002, ptr dereferenceable_or_null(8) %_43000004, ptr dereferenceable_or_null(8) %_43000006)
  %_53000001 = call dereferenceable_or_null(16) ptr @"_SM33scala.scalanative.unsafe.Tag$Ptr$D5applyL28scala.scalanative.unsafe.TagL32scala.scalanative.unsafe.Tag$PtrEO"(ptr nonnull dereferenceable(8) @"_SM33scala.scalanative.unsafe.Tag$Ptr$G8instance", ptr nonnull dereferenceable(8) @"_SM34scala.scalanative.unsafe.Tag$Byte$G8instance")
  %_56000002 = call dereferenceable_or_null(8) ptr @"_SM13scala.Predef$D10implicitlyL16java.lang.ObjectL16java.lang.ObjectEO"(ptr nonnull dereferenceable(8) @"_SM13scala.Predef$G8instance", ptr dereferenceable_or_null(16) %_53000001)
  %_72000098 = icmp eq ptr %_56000002, null
  br i1 %_72000098, label %_72000097.0, label %_72000096.0
_72000096.0:
  %_72000099 = load ptr, ptr %_56000002
  %_72000100 = getelementptr { ptr, i32, i32, ptr }, { ptr, i32, i32, ptr }* %_72000099, i32 0, i32 1
  %_72000101 = load i32, ptr %_72000100
  %_72000102 = icmp sle i32 1098, %_72000101
  %_72000103 = icmp sle i32 %_72000101, 1130
  %_72000104 = and i1 %_72000102, %_72000103
  br i1 %_72000104, label %_72000097.0, label %_72000003.0
_72000097.0:
  %_56000004 = call dereferenceable_or_null(8) ptr @"_SM13scala.Predef$D10implicitlyL16java.lang.ObjectL16java.lang.ObjectEO"(ptr nonnull dereferenceable(8) @"_SM13scala.Predef$G8instance", ptr nonnull dereferenceable(8) @"_SM35scala.scalanative.unsafe.Tag$USize$G8instance")
  %_72000107 = icmp eq ptr %_56000004, null
  br i1 %_72000107, label %_72000106.0, label %_72000105.0
_72000105.0:
  %_72000108 = load ptr, ptr %_56000004
  %_72000109 = getelementptr { ptr, i32, i32, ptr }, { ptr, i32, i32, ptr }* %_72000108, i32 0, i32 1
  %_72000110 = load i32, ptr %_72000109
  %_72000111 = icmp sle i32 1098, %_72000110
  %_72000112 = icmp sle i32 %_72000110, 1130
  %_72000113 = and i1 %_72000111, %_72000112
  br i1 %_72000113, label %_72000106.0, label %_72000003.0
_72000106.0:
  %_56000006 = call dereferenceable_or_null(8) ptr @"_SM13scala.Predef$D10implicitlyL16java.lang.ObjectL16java.lang.ObjectEO"(ptr nonnull dereferenceable(8) @"_SM13scala.Predef$G8instance", ptr nonnull dereferenceable(8) @"_SM35scala.scalanative.unsafe.Tag$USize$G8instance")
  %_72000116 = icmp eq ptr %_56000006, null
  br i1 %_72000116, label %_72000115.0, label %_72000114.0
_72000114.0:
  %_72000117 = load ptr, ptr %_56000006
  %_72000118 = getelementptr { ptr, i32, i32, ptr }, { ptr, i32, i32, ptr }* %_72000117, i32 0, i32 1
  %_72000119 = load i32, ptr %_72000118
  %_72000120 = icmp sle i32 1098, %_72000119
  %_72000121 = icmp sle i32 %_72000119, 1130
  %_72000122 = and i1 %_72000120, %_72000121
  br i1 %_72000122, label %_72000115.0, label %_72000003.0
_72000115.0:
  %_56000008 = call dereferenceable_or_null(32) ptr @"_SM38scala.scalanative.unsafe.Tag$CStruct3$D5applyL28scala.scalanative.unsafe.TagL28scala.scalanative.unsafe.TagL28scala.scalanative.unsafe.TagL37scala.scalanative.unsafe.Tag$CStruct3EO"(ptr nonnull dereferenceable(8) @"_SM38scala.scalanative.unsafe.Tag$CStruct3$G8instance", ptr dereferenceable_or_null(8) %_56000002, ptr dereferenceable_or_null(8) %_56000004, ptr dereferenceable_or_null(8) %_56000006)
  br label %_60000000.0
_60000000.0:
  br label %_61000000.0
_61000000.0:
  %_72000124 = icmp ne ptr %_56000008, null
  br i1 %_72000124, label %_72000123.0, label %_72000057.0
_72000123.0:
  %_72000125 = getelementptr { { ptr }, ptr, ptr, ptr }, { { ptr }, ptr, ptr, ptr }* %_56000008, i32 0, i32 1
  %_62000001 = load ptr, ptr %_72000125, !dereferenceable_or_null !{i64 8}
  %_72000127 = icmp ne ptr %_62000001, null
  br i1 %_72000127, label %_72000126.0, label %_72000057.0
_72000126.0:
  %_72000128 = load ptr, ptr %_62000001
  %_72000129 = getelementptr { { ptr, i32, i32, ptr }, i32, i32, ptr, [7 x ptr] }, { { ptr, i32, i32, ptr }, i32, i32, ptr, [7 x ptr] }* %_72000128, i32 0, i32 4, i32 6
  %_61000003 = load ptr, ptr %_72000129
  %_61000004 = call i32 %_61000003(ptr dereferenceable_or_null(8) %_62000001)
  br label %_64000000.0
_64000000.0:
  br label %_65000000.0
_65000000.0:
  br label %_66000000.0
_66000000.0:
  %_72000130 = getelementptr { { ptr }, ptr, ptr, ptr }, { { ptr }, ptr, ptr, ptr }* %_56000008, i32 0, i32 1
  %_69000001 = load ptr, ptr %_72000130, !dereferenceable_or_null !{i64 8}
  %_72000132 = icmp ne ptr %_69000001, null
  br i1 %_72000132, label %_72000131.0, label %_72000057.0
_72000131.0:
  %_72000133 = load ptr, ptr %_69000001
  %_72000134 = getelementptr { { ptr, i32, i32, ptr }, i32, i32, ptr, [7 x ptr] }, { { ptr, i32, i32, ptr }, i32, i32, ptr, [7 x ptr] }* %_72000133, i32 0, i32 4, i32 4
  %_71000003 = load ptr, ptr %_72000134
  %_71000004 = call dereferenceable_or_null(8) ptr %_71000003(ptr dereferenceable_or_null(8) %_69000001, ptr %_36000004)
  %_72000137 = icmp eq ptr %_71000004, null
  br i1 %_72000137, label %_72000136.0, label %_72000135.0
_72000135.0:
  %_72000138 = load ptr, ptr %_71000004
  %_72000139 = icmp eq ptr %_72000138, @"_SM28scala.scalanative.unsafe.PtrG4type"
  br i1 %_72000139, label %_72000136.0, label %_72000003.0
_72000136.0:
  %_37000003 = call ptr @"_SM32scala.scalanative.runtime.Boxes$D10unboxToPtrL16java.lang.ObjectR_EO"(ptr null, ptr dereferenceable_or_null(16) %_71000004)
  call void @"free"(ptr %_37000003)
  br label %_72000000.0
_38000000.0:
  br label %_72000000.0
_72000000.0:
  ret void
_72000057.0:
  call ptr @"_SM34scala.scalanative.runtime.package$D16throwNullPointernEO"(ptr null)
  unreachable
_72000003.0:
  %_72000142 = phi ptr [%_8000004, %_72000001.0], [%_8000007, %_72000011.0], [%_8000009, %_72000020.0], [%_21000002, %_72000029.0], [%_21000004, %_72000038.0], [%_21000006, %_72000047.0], [%_43000002, %_72000069.0], [%_43000004, %_72000078.0], [%_43000006, %_72000087.0], [%_56000002, %_72000096.0], [%_56000004, %_72000105.0], [%_56000006, %_72000114.0], [%_71000004, %_72000135.0]
  %_72000143 = phi ptr [@"_SM28scala.scalanative.unsafe.TagG4type", %_72000001.0], [@"_SM28scala.scalanative.unsafe.TagG4type", %_72000011.0], [@"_SM28scala.scalanative.unsafe.TagG4type", %_72000020.0], [@"_SM28scala.scalanative.unsafe.TagG4type", %_72000029.0], [@"_SM28scala.scalanative.unsafe.TagG4type", %_72000038.0], [@"_SM28scala.scalanative.unsafe.TagG4type", %_72000047.0], [@"_SM28scala.scalanative.unsafe.TagG4type", %_72000069.0], [@"_SM28scala.scalanative.unsafe.TagG4type", %_72000078.0], [@"_SM28scala.scalanative.unsafe.TagG4type", %_72000087.0], [@"_SM28scala.scalanative.unsafe.TagG4type", %_72000096.0], [@"_SM28scala.scalanative.unsafe.TagG4type", %_72000105.0], [@"_SM28scala.scalanative.unsafe.TagG4type", %_72000114.0], [@"_SM28scala.scalanative.unsafe.PtrG4type", %_72000135.0]
  %_72000144 = load ptr, ptr %_72000142
  call ptr @"_SM34scala.scalanative.runtime.package$D14throwClassCastR_R_nEO"(ptr null, ptr %_72000144, ptr %_72000143)
  unreachable
}

define void @"_SM19sfml.stdlib.Vector$RE"(ptr %_1) personality ptr @__gxx_personality_v0 {
_2000000.0:
  ret void
}