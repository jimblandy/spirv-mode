;;; Tables of SPIR-V instructions, for spirv-mode.

;; This file is generated automatically by `spirv-mode-update-tables'.

(defconst spirv-mode--instructions
  #s(hash-table test equal data (
    "OpNop"
      (nil nil)
    "OpUndef"
      (t ("IdResultType"))
    "OpSourceContinued"
      (nil ("Continued Source"))
    "OpSource"
      (nil ("SourceLanguage" "Version" "File?" "Source?"))
    "OpSourceExtension"
      (nil ("Extension"))
    "OpName"
      (nil ("Target" "Name"))
    "OpMemberName"
      (nil ("Type" "Member" "Name"))
    "OpString"
      (t ("String"))
    "OpLine"
      (nil ("File" "Line" "Column"))
    "OpExtension"
      (nil ("Name"))
    "OpExtInstImport"
      (t ("Name"))
    "OpExtInst"
      (t ("IdResultType" "Set" "Instruction" "Operand 1, Operand 2, ..." "..."))
    "OpMemoryModel"
      (nil ("AddressingModel" "MemoryModel"))
    "OpEntryPoint"
      (nil ("ExecutionModel" "Entry Point" "Name" "Interface" "..."))
    "OpExecutionMode"
      (nil ("Entry Point" "Mode"))
    "OpCapability"
      (nil ("Capability"))
    "OpTypeVoid"
      (t nil)
    "OpTypeBool"
      (t nil)
    "OpTypeInt"
      (t ("Width" "Signedness"))
    "OpTypeFloat"
      (t ("Width" "Floating Point Encoding?"))
    "OpTypeVector"
      (t ("Component Type" "Component Count"))
    "OpTypeMatrix"
      (t ("Column Type" "Column Count"))
    "OpTypeImage"
      (t ("Sampled Type" "Dim" "Depth" "Arrayed" "MS" "Sampled" "ImageFormat" "AccessQualifier?"))
    "OpTypeSampler"
      (t nil)
    "OpTypeSampledImage"
      (t ("Image Type"))
    "OpTypeArray"
      (t ("Element Type" "Length"))
    "OpTypeRuntimeArray"
      (t ("Element Type"))
    "OpTypeStruct"
      (t ("Member 0 type, member 1 type, ..." "..."))
    "OpTypeOpaque"
      (t ("The name of the opaque type."))
    "OpTypePointer"
      (t ("StorageClass" "Type"))
    "OpTypeFunction"
      (t ("Return Type" "Parameter 0 Type, Parameter 1 Type, ..." "..."))
    "OpTypeEvent"
      (t nil)
    "OpTypeDeviceEvent"
      (t nil)
    "OpTypeReserveId"
      (t nil)
    "OpTypeQueue"
      (t nil)
    "OpTypePipe"
      (t ("Qualifier"))
    "OpTypeForwardPointer"
      (nil ("Pointer Type" "StorageClass"))
    "OpConstantTrue"
      (t ("IdResultType"))
    "OpConstantFalse"
      (t ("IdResultType"))
    "OpConstant"
      (t ("IdResultType" "Value"))
    "OpConstantComposite"
      (t ("IdResultType" "Constituents" "..."))
    "OpConstantSampler"
      (t ("IdResultType" "SamplerAddressingMode" "Param" "SamplerFilterMode"))
    "OpConstantNull"
      (t ("IdResultType"))
    "OpSpecConstantTrue"
      (t ("IdResultType"))
    "OpSpecConstantFalse"
      (t ("IdResultType"))
    "OpSpecConstant"
      (t ("IdResultType" "Value"))
    "OpSpecConstantComposite"
      (t ("IdResultType" "Constituents" "..."))
    "OpSpecConstantOp"
      (t ("IdResultType" "Opcode"))
    "OpFunction"
      (t ("IdResultType" "FunctionControl" "Function Type"))
    "OpFunctionParameter"
      (t ("IdResultType"))
    "OpFunctionEnd"
      (nil nil)
    "OpFunctionCall"
      (t ("IdResultType" "Function" "Argument 0, Argument 1, ..." "..."))
    "OpVariable"
      (t ("IdResultType" "StorageClass" "Initializer?"))
    "OpImageTexelPointer"
      (t ("IdResultType" "Image" "Coordinate" "Sample"))
    "OpLoad"
      (t ("IdResultType" "Pointer" "MemoryAccess?"))
    "OpStore"
      (nil ("Pointer" "Object" "MemoryAccess?"))
    "OpCopyMemory"
      (nil ("Target" "Source" "MemoryAccess?" "MemoryAccess?"))
    "OpCopyMemorySized"
      (nil ("Target" "Source" "Size" "MemoryAccess?" "MemoryAccess?"))
    "OpAccessChain"
      (t ("IdResultType" "Base" "Indexes" "..."))
    "OpInBoundsAccessChain"
      (t ("IdResultType" "Base" "Indexes" "..."))
    "OpPtrAccessChain"
      (t ("IdResultType" "Base" "Element" "Indexes" "..."))
    "OpArrayLength"
      (t ("IdResultType" "Structure" "Array member"))
    "OpGenericPtrMemSemantics"
      (t ("IdResultType" "Pointer"))
    "OpInBoundsPtrAccessChain"
      (t ("IdResultType" "Base" "Element" "Indexes" "..."))
    "OpDecorate"
      (nil ("Target" "Decoration"))
    "OpMemberDecorate"
      (nil ("Structure Type" "Member" "Decoration"))
    "OpDecorationGroup"
      (t nil)
    "OpGroupDecorate"
      (nil ("Decoration Group" "Targets" "..."))
    "OpGroupMemberDecorate"
      (nil ("Decoration Group" "Targets" "..."))
    "OpVectorExtractDynamic"
      (t ("IdResultType" "Vector" "Index"))
    "OpVectorInsertDynamic"
      (t ("IdResultType" "Vector" "Component" "Index"))
    "OpVectorShuffle"
      (t ("IdResultType" "Vector 1" "Vector 2" "Components" "..."))
    "OpCompositeConstruct"
      (t ("IdResultType" "Constituents" "..."))
    "OpCompositeExtract"
      (t ("IdResultType" "Composite" "Indexes" "..."))
    "OpCompositeInsert"
      (t ("IdResultType" "Object" "Composite" "Indexes" "..."))
    "OpCopyObject"
      (t ("IdResultType" "Operand"))
    "OpTranspose"
      (t ("IdResultType" "Matrix"))
    "OpSampledImage"
      (t ("IdResultType" "Image" "Sampler"))
    "OpImageSampleImplicitLod"
      (t ("IdResultType" "Sampled Image" "Coordinate" "ImageOperands?"))
    "OpImageSampleExplicitLod"
      (t ("IdResultType" "Sampled Image" "Coordinate" "ImageOperands"))
    "OpImageSampleDrefImplicitLod"
      (t ("IdResultType" "Sampled Image" "Coordinate" "D~ref~" "ImageOperands?"))
    "OpImageSampleDrefExplicitLod"
      (t ("IdResultType" "Sampled Image" "Coordinate" "D~ref~" "ImageOperands"))
    "OpImageSampleProjImplicitLod"
      (t ("IdResultType" "Sampled Image" "Coordinate" "ImageOperands?"))
    "OpImageSampleProjExplicitLod"
      (t ("IdResultType" "Sampled Image" "Coordinate" "ImageOperands"))
    "OpImageSampleProjDrefImplicitLod"
      (t ("IdResultType" "Sampled Image" "Coordinate" "D~ref~" "ImageOperands?"))
    "OpImageSampleProjDrefExplicitLod"
      (t ("IdResultType" "Sampled Image" "Coordinate" "D~ref~" "ImageOperands"))
    "OpImageFetch"
      (t ("IdResultType" "Image" "Coordinate" "ImageOperands?"))
    "OpImageGather"
      (t ("IdResultType" "Sampled Image" "Coordinate" "Component" "ImageOperands?"))
    "OpImageDrefGather"
      (t ("IdResultType" "Sampled Image" "Coordinate" "D~ref~" "ImageOperands?"))
    "OpImageRead"
      (t ("IdResultType" "Image" "Coordinate" "ImageOperands?"))
    "OpImageWrite"
      (nil ("Image" "Coordinate" "Texel" "ImageOperands?"))
    "OpImage"
      (t ("IdResultType" "Sampled Image"))
    "OpImageQueryFormat"
      (t ("IdResultType" "Image"))
    "OpImageQueryOrder"
      (t ("IdResultType" "Image"))
    "OpImageQuerySizeLod"
      (t ("IdResultType" "Image" "Level of Detail"))
    "OpImageQuerySize"
      (t ("IdResultType" "Image"))
    "OpImageQueryLod"
      (t ("IdResultType" "Sampled Image" "Coordinate"))
    "OpImageQueryLevels"
      (t ("IdResultType" "Image"))
    "OpImageQuerySamples"
      (t ("IdResultType" "Image"))
    "OpConvertFToU"
      (t ("IdResultType" "Float Value"))
    "OpConvertFToS"
      (t ("IdResultType" "Float Value"))
    "OpConvertSToF"
      (t ("IdResultType" "Signed Value"))
    "OpConvertUToF"
      (t ("IdResultType" "Unsigned Value"))
    "OpUConvert"
      (t ("IdResultType" "Unsigned Value"))
    "OpSConvert"
      (t ("IdResultType" "Signed Value"))
    "OpFConvert"
      (t ("IdResultType" "Float Value"))
    "OpQuantizeToF16"
      (t ("IdResultType" "Value"))
    "OpConvertPtrToU"
      (t ("IdResultType" "Pointer"))
    "OpSatConvertSToU"
      (t ("IdResultType" "Signed Value"))
    "OpSatConvertUToS"
      (t ("IdResultType" "Unsigned Value"))
    "OpConvertUToPtr"
      (t ("IdResultType" "Integer Value"))
    "OpPtrCastToGeneric"
      (t ("IdResultType" "Pointer"))
    "OpGenericCastToPtr"
      (t ("IdResultType" "Pointer"))
    "OpGenericCastToPtrExplicit"
      (t ("IdResultType" "Pointer" "Storage"))
    "OpBitcast"
      (t ("IdResultType" "Operand"))
    "OpSNegate"
      (t ("IdResultType" "Operand"))
    "OpFNegate"
      (t ("IdResultType" "Operand"))
    "OpIAdd"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpFAdd"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpISub"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpFSub"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpIMul"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpFMul"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpUDiv"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpSDiv"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpFDiv"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpUMod"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpSRem"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpSMod"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpFRem"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpFMod"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpVectorTimesScalar"
      (t ("IdResultType" "Vector" "Scalar"))
    "OpMatrixTimesScalar"
      (t ("IdResultType" "Matrix" "Scalar"))
    "OpVectorTimesMatrix"
      (t ("IdResultType" "Vector" "Matrix"))
    "OpMatrixTimesVector"
      (t ("IdResultType" "Matrix" "Vector"))
    "OpMatrixTimesMatrix"
      (t ("IdResultType" "LeftMatrix" "RightMatrix"))
    "OpOuterProduct"
      (t ("IdResultType" "Vector 1" "Vector 2"))
    "OpDot"
      (t ("IdResultType" "Vector 1" "Vector 2"))
    "OpIAddCarry"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpISubBorrow"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpUMulExtended"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpSMulExtended"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpAny"
      (t ("IdResultType" "Vector"))
    "OpAll"
      (t ("IdResultType" "Vector"))
    "OpIsNan"
      (t ("IdResultType" "x"))
    "OpIsInf"
      (t ("IdResultType" "x"))
    "OpIsFinite"
      (t ("IdResultType" "x"))
    "OpIsNormal"
      (t ("IdResultType" "x"))
    "OpSignBitSet"
      (t ("IdResultType" "x"))
    "OpLessOrGreater"
      (t ("IdResultType" "x" "y"))
    "OpOrdered"
      (t ("IdResultType" "x" "y"))
    "OpUnordered"
      (t ("IdResultType" "x" "y"))
    "OpLogicalEqual"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpLogicalNotEqual"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpLogicalOr"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpLogicalAnd"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpLogicalNot"
      (t ("IdResultType" "Operand"))
    "OpSelect"
      (t ("IdResultType" "Condition" "Object 1" "Object 2"))
    "OpIEqual"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpINotEqual"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpUGreaterThan"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpSGreaterThan"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpUGreaterThanEqual"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpSGreaterThanEqual"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpULessThan"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpSLessThan"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpULessThanEqual"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpSLessThanEqual"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpFOrdEqual"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpFUnordEqual"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpFOrdNotEqual"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpFUnordNotEqual"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpFOrdLessThan"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpFUnordLessThan"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpFOrdGreaterThan"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpFUnordGreaterThan"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpFOrdLessThanEqual"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpFUnordLessThanEqual"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpFOrdGreaterThanEqual"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpFUnordGreaterThanEqual"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpShiftRightLogical"
      (t ("IdResultType" "Base" "Shift"))
    "OpShiftRightArithmetic"
      (t ("IdResultType" "Base" "Shift"))
    "OpShiftLeftLogical"
      (t ("IdResultType" "Base" "Shift"))
    "OpBitwiseOr"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpBitwiseXor"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpBitwiseAnd"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpNot"
      (t ("IdResultType" "Operand"))
    "OpBitFieldInsert"
      (t ("IdResultType" "Base" "Insert" "Offset" "Count"))
    "OpBitFieldSExtract"
      (t ("IdResultType" "Base" "Offset" "Count"))
    "OpBitFieldUExtract"
      (t ("IdResultType" "Base" "Offset" "Count"))
    "OpBitReverse"
      (t ("IdResultType" "Base"))
    "OpBitCount"
      (t ("IdResultType" "Base"))
    "OpDPdx"
      (t ("IdResultType" "P"))
    "OpDPdy"
      (t ("IdResultType" "P"))
    "OpFwidth"
      (t ("IdResultType" "P"))
    "OpDPdxFine"
      (t ("IdResultType" "P"))
    "OpDPdyFine"
      (t ("IdResultType" "P"))
    "OpFwidthFine"
      (t ("IdResultType" "P"))
    "OpDPdxCoarse"
      (t ("IdResultType" "P"))
    "OpDPdyCoarse"
      (t ("IdResultType" "P"))
    "OpFwidthCoarse"
      (t ("IdResultType" "P"))
    "OpEmitVertex"
      (nil nil)
    "OpEndPrimitive"
      (nil nil)
    "OpEmitStreamVertex"
      (nil ("Stream"))
    "OpEndStreamPrimitive"
      (nil ("Stream"))
    "OpControlBarrier"
      (nil ("Execution" "Memory" "Semantics"))
    "OpMemoryBarrier"
      (nil ("Memory" "Semantics"))
    "OpAtomicLoad"
      (t ("IdResultType" "Pointer" "Memory" "Semantics"))
    "OpAtomicStore"
      (nil ("Pointer" "Memory" "Semantics" "Value"))
    "OpAtomicExchange"
      (t ("IdResultType" "Pointer" "Memory" "Semantics" "Value"))
    "OpAtomicCompareExchange"
      (t ("IdResultType" "Pointer" "Memory" "Equal" "Unequal" "Value" "Comparator"))
    "OpAtomicCompareExchangeWeak"
      (t ("IdResultType" "Pointer" "Memory" "Equal" "Unequal" "Value" "Comparator"))
    "OpAtomicIIncrement"
      (t ("IdResultType" "Pointer" "Memory" "Semantics"))
    "OpAtomicIDecrement"
      (t ("IdResultType" "Pointer" "Memory" "Semantics"))
    "OpAtomicIAdd"
      (t ("IdResultType" "Pointer" "Memory" "Semantics" "Value"))
    "OpAtomicISub"
      (t ("IdResultType" "Pointer" "Memory" "Semantics" "Value"))
    "OpAtomicSMin"
      (t ("IdResultType" "Pointer" "Memory" "Semantics" "Value"))
    "OpAtomicUMin"
      (t ("IdResultType" "Pointer" "Memory" "Semantics" "Value"))
    "OpAtomicSMax"
      (t ("IdResultType" "Pointer" "Memory" "Semantics" "Value"))
    "OpAtomicUMax"
      (t ("IdResultType" "Pointer" "Memory" "Semantics" "Value"))
    "OpAtomicAnd"
      (t ("IdResultType" "Pointer" "Memory" "Semantics" "Value"))
    "OpAtomicOr"
      (t ("IdResultType" "Pointer" "Memory" "Semantics" "Value"))
    "OpAtomicXor"
      (t ("IdResultType" "Pointer" "Memory" "Semantics" "Value"))
    "OpPhi"
      (t ("IdResultType" "Variable, Parent, ..." "..."))
    "OpLoopMerge"
      (nil ("Merge Block" "Continue Target" "LoopControl"))
    "OpSelectionMerge"
      (nil ("Merge Block" "SelectionControl"))
    "OpLabel"
      (t nil)
    "OpBranch"
      (nil ("Target Label"))
    "OpBranchConditional"
      (nil ("Condition" "True Label" "False Label" "Branch weights" "..."))
    "OpSwitch"
      (nil ("Selector" "Default" "Target" "..."))
    "OpKill"
      (nil nil)
    "OpReturn"
      (nil nil)
    "OpReturnValue"
      (nil ("Value"))
    "OpUnreachable"
      (nil nil)
    "OpLifetimeStart"
      (nil ("Pointer" "Size"))
    "OpLifetimeStop"
      (nil ("Pointer" "Size"))
    "OpGroupAsyncCopy"
      (t ("IdResultType" "Execution" "Destination" "Source" "Num Elements" "Stride" "Event"))
    "OpGroupWaitEvents"
      (nil ("Execution" "Num Events" "Events List"))
    "OpGroupAll"
      (t ("IdResultType" "Execution" "Predicate"))
    "OpGroupAny"
      (t ("IdResultType" "Execution" "Predicate"))
    "OpGroupBroadcast"
      (t ("IdResultType" "Execution" "Value" "LocalId"))
    "OpGroupIAdd"
      (t ("IdResultType" "Execution" "Operation" "X"))
    "OpGroupFAdd"
      (t ("IdResultType" "Execution" "Operation" "X"))
    "OpGroupFMin"
      (t ("IdResultType" "Execution" "Operation" "X"))
    "OpGroupUMin"
      (t ("IdResultType" "Execution" "Operation" "X"))
    "OpGroupSMin"
      (t ("IdResultType" "Execution" "Operation" "X"))
    "OpGroupFMax"
      (t ("IdResultType" "Execution" "Operation" "X"))
    "OpGroupUMax"
      (t ("IdResultType" "Execution" "Operation" "X"))
    "OpGroupSMax"
      (t ("IdResultType" "Execution" "Operation" "X"))
    "OpReadPipe"
      (t ("IdResultType" "Pipe" "Pointer" "Packet Size" "Packet Alignment"))
    "OpWritePipe"
      (t ("IdResultType" "Pipe" "Pointer" "Packet Size" "Packet Alignment"))
    "OpReservedReadPipe"
      (t ("IdResultType" "Pipe" "Reserve Id" "Index" "Pointer" "Packet Size" "Packet Alignment"))
    "OpReservedWritePipe"
      (t ("IdResultType" "Pipe" "Reserve Id" "Index" "Pointer" "Packet Size" "Packet Alignment"))
    "OpReserveReadPipePackets"
      (t ("IdResultType" "Pipe" "Num Packets" "Packet Size" "Packet Alignment"))
    "OpReserveWritePipePackets"
      (t ("IdResultType" "Pipe" "Num Packets" "Packet Size" "Packet Alignment"))
    "OpCommitReadPipe"
      (nil ("Pipe" "Reserve Id" "Packet Size" "Packet Alignment"))
    "OpCommitWritePipe"
      (nil ("Pipe" "Reserve Id" "Packet Size" "Packet Alignment"))
    "OpIsValidReserveId"
      (t ("IdResultType" "Reserve Id"))
    "OpGetNumPipePackets"
      (t ("IdResultType" "Pipe" "Packet Size" "Packet Alignment"))
    "OpGetMaxPipePackets"
      (t ("IdResultType" "Pipe" "Packet Size" "Packet Alignment"))
    "OpGroupReserveReadPipePackets"
      (t ("IdResultType" "Execution" "Pipe" "Num Packets" "Packet Size" "Packet Alignment"))
    "OpGroupReserveWritePipePackets"
      (t ("IdResultType" "Execution" "Pipe" "Num Packets" "Packet Size" "Packet Alignment"))
    "OpGroupCommitReadPipe"
      (nil ("Execution" "Pipe" "Reserve Id" "Packet Size" "Packet Alignment"))
    "OpGroupCommitWritePipe"
      (nil ("Execution" "Pipe" "Reserve Id" "Packet Size" "Packet Alignment"))
    "OpEnqueueMarker"
      (t ("IdResultType" "Queue" "Num Events" "Wait Events" "Ret Event"))
    "OpEnqueueKernel"
      (t ("IdResultType" "Queue" "Flags" "ND Range" "Num Events" "Wait Events" "Ret Event" "Invoke" "Param" "Param Size" "Param Align" "Local Size" "..."))
    "OpGetKernelNDrangeSubGroupCount"
      (t ("IdResultType" "ND Range" "Invoke" "Param" "Param Size" "Param Align"))
    "OpGetKernelNDrangeMaxSubGroupSize"
      (t ("IdResultType" "ND Range" "Invoke" "Param" "Param Size" "Param Align"))
    "OpGetKernelWorkGroupSize"
      (t ("IdResultType" "Invoke" "Param" "Param Size" "Param Align"))
    "OpGetKernelPreferredWorkGroupSizeMultiple"
      (t ("IdResultType" "Invoke" "Param" "Param Size" "Param Align"))
    "OpRetainEvent"
      (nil ("Event"))
    "OpReleaseEvent"
      (nil ("Event"))
    "OpCreateUserEvent"
      (t ("IdResultType"))
    "OpIsValidEvent"
      (t ("IdResultType" "Event"))
    "OpSetUserEventStatus"
      (nil ("Event" "Status"))
    "OpCaptureEventProfilingInfo"
      (nil ("Event" "Profiling Info" "Value"))
    "OpGetDefaultQueue"
      (t ("IdResultType"))
    "OpBuildNDRange"
      (t ("IdResultType" "GlobalWorkSize" "LocalWorkSize" "GlobalWorkOffset"))
    "OpImageSparseSampleImplicitLod"
      (t ("IdResultType" "Sampled Image" "Coordinate" "ImageOperands?"))
    "OpImageSparseSampleExplicitLod"
      (t ("IdResultType" "Sampled Image" "Coordinate" "ImageOperands"))
    "OpImageSparseSampleDrefImplicitLod"
      (t ("IdResultType" "Sampled Image" "Coordinate" "D~ref~" "ImageOperands?"))
    "OpImageSparseSampleDrefExplicitLod"
      (t ("IdResultType" "Sampled Image" "Coordinate" "D~ref~" "ImageOperands"))
    "OpImageSparseSampleProjImplicitLod"
      (t ("IdResultType" "Sampled Image" "Coordinate" "ImageOperands?"))
    "OpImageSparseSampleProjExplicitLod"
      (t ("IdResultType" "Sampled Image" "Coordinate" "ImageOperands"))
    "OpImageSparseSampleProjDrefImplicitLod"
      (t ("IdResultType" "Sampled Image" "Coordinate" "D~ref~" "ImageOperands?"))
    "OpImageSparseSampleProjDrefExplicitLod"
      (t ("IdResultType" "Sampled Image" "Coordinate" "D~ref~" "ImageOperands"))
    "OpImageSparseFetch"
      (t ("IdResultType" "Image" "Coordinate" "ImageOperands?"))
    "OpImageSparseGather"
      (t ("IdResultType" "Sampled Image" "Coordinate" "Component" "ImageOperands?"))
    "OpImageSparseDrefGather"
      (t ("IdResultType" "Sampled Image" "Coordinate" "D~ref~" "ImageOperands?"))
    "OpImageSparseTexelsResident"
      (t ("IdResultType" "Resident Code"))
    "OpNoLine"
      (nil nil)
    "OpAtomicFlagTestAndSet"
      (t ("IdResultType" "Pointer" "Memory" "Semantics"))
    "OpAtomicFlagClear"
      (nil ("Pointer" "Memory" "Semantics"))
    "OpImageSparseRead"
      (t ("IdResultType" "Image" "Coordinate" "ImageOperands?"))
    "OpSizeOf"
      (t ("IdResultType" "Pointer"))
    "OpTypePipeStorage"
      (t nil)
    "OpConstantPipeStorage"
      (t ("IdResultType" "Packet Size" "Packet Alignment" "Capacity"))
    "OpCreatePipeFromPipeStorage"
      (t ("IdResultType" "Pipe Storage"))
    "OpGetKernelLocalSizeForSubgroupCount"
      (t ("IdResultType" "Subgroup Count" "Invoke" "Param" "Param Size" "Param Align"))
    "OpGetKernelMaxNumSubgroups"
      (t ("IdResultType" "Invoke" "Param" "Param Size" "Param Align"))
    "OpTypeNamedBarrier"
      (t nil)
    "OpNamedBarrierInitialize"
      (t ("IdResultType" "Subgroup Count"))
    "OpMemoryNamedBarrier"
      (nil ("Named Barrier" "Memory" "Semantics"))
    "OpModuleProcessed"
      (nil ("Process"))
    "OpExecutionModeId"
      (nil ("Entry Point" "Mode"))
    "OpDecorateId"
      (nil ("Target" "Decoration"))
    "OpGroupNonUniformElect"
      (t ("IdResultType" "Execution"))
    "OpGroupNonUniformAll"
      (t ("IdResultType" "Execution" "Predicate"))
    "OpGroupNonUniformAny"
      (t ("IdResultType" "Execution" "Predicate"))
    "OpGroupNonUniformAllEqual"
      (t ("IdResultType" "Execution" "Value"))
    "OpGroupNonUniformBroadcast"
      (t ("IdResultType" "Execution" "Value" "Invocation Id"))
    "OpGroupNonUniformBroadcastFirst"
      (t ("IdResultType" "Execution" "Value"))
    "OpGroupNonUniformBallot"
      (t ("IdResultType" "Execution" "Predicate"))
    "OpGroupNonUniformInverseBallot"
      (t ("IdResultType" "Execution" "Value"))
    "OpGroupNonUniformBallotBitExtract"
      (t ("IdResultType" "Execution" "Value" "Index"))
    "OpGroupNonUniformBallotBitCount"
      (t ("IdResultType" "Execution" "Operation" "Value"))
    "OpGroupNonUniformBallotFindLSB"
      (t ("IdResultType" "Execution" "Value"))
    "OpGroupNonUniformBallotFindMSB"
      (t ("IdResultType" "Execution" "Value"))
    "OpGroupNonUniformShuffle"
      (t ("IdResultType" "Execution" "Value" "Invocation Id"))
    "OpGroupNonUniformShuffleXor"
      (t ("IdResultType" "Execution" "Value" "Mask"))
    "OpGroupNonUniformShuffleUp"
      (t ("IdResultType" "Execution" "Value" "Delta"))
    "OpGroupNonUniformShuffleDown"
      (t ("IdResultType" "Execution" "Value" "Delta"))
    "OpGroupNonUniformIAdd"
      (t ("IdResultType" "Execution" "Operation" "Value" "ClusterSize?"))
    "OpGroupNonUniformFAdd"
      (t ("IdResultType" "Execution" "Operation" "Value" "ClusterSize?"))
    "OpGroupNonUniformIMul"
      (t ("IdResultType" "Execution" "Operation" "Value" "ClusterSize?"))
    "OpGroupNonUniformFMul"
      (t ("IdResultType" "Execution" "Operation" "Value" "ClusterSize?"))
    "OpGroupNonUniformSMin"
      (t ("IdResultType" "Execution" "Operation" "Value" "ClusterSize?"))
    "OpGroupNonUniformUMin"
      (t ("IdResultType" "Execution" "Operation" "Value" "ClusterSize?"))
    "OpGroupNonUniformFMin"
      (t ("IdResultType" "Execution" "Operation" "Value" "ClusterSize?"))
    "OpGroupNonUniformSMax"
      (t ("IdResultType" "Execution" "Operation" "Value" "ClusterSize?"))
    "OpGroupNonUniformUMax"
      (t ("IdResultType" "Execution" "Operation" "Value" "ClusterSize?"))
    "OpGroupNonUniformFMax"
      (t ("IdResultType" "Execution" "Operation" "Value" "ClusterSize?"))
    "OpGroupNonUniformBitwiseAnd"
      (t ("IdResultType" "Execution" "Operation" "Value" "ClusterSize?"))
    "OpGroupNonUniformBitwiseOr"
      (t ("IdResultType" "Execution" "Operation" "Value" "ClusterSize?"))
    "OpGroupNonUniformBitwiseXor"
      (t ("IdResultType" "Execution" "Operation" "Value" "ClusterSize?"))
    "OpGroupNonUniformLogicalAnd"
      (t ("IdResultType" "Execution" "Operation" "Value" "ClusterSize?"))
    "OpGroupNonUniformLogicalOr"
      (t ("IdResultType" "Execution" "Operation" "Value" "ClusterSize?"))
    "OpGroupNonUniformLogicalXor"
      (t ("IdResultType" "Execution" "Operation" "Value" "ClusterSize?"))
    "OpGroupNonUniformQuadBroadcast"
      (t ("IdResultType" "Execution" "Value" "Index"))
    "OpGroupNonUniformQuadSwap"
      (t ("IdResultType" "Execution" "Value" "Direction"))
    "OpCopyLogical"
      (t ("IdResultType" "Operand"))
    "OpPtrEqual"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpPtrNotEqual"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpPtrDiff"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpColorAttachmentReadEXT"
      (t ("IdResultType" "Attachment" "Sample?"))
    "OpDepthAttachmentReadEXT"
      (t ("IdResultType" "Sample?"))
    "OpStencilAttachmentReadEXT"
      (t ("IdResultType" "Sample?"))
    "OpTypeTensorARM"
      (t ("Element Type" "Rank?" "Shape?"))
    "OpTensorReadARM"
      (t ("IdResultType" "Tensor" "Coordinates" "TensorOperands?"))
    "OpTensorWriteARM"
      (nil ("Tensor" "Coordinates" "Object" "TensorOperands?"))
    "OpTensorQuerySizeARM"
      (t ("IdResultType" "Tensor" "Dimension"))
    "OpGraphConstantARM"
      (t ("IdResultType" "GraphConstantID"))
    "OpGraphEntryPointARM"
      (nil ("Graph" "Name" "Interface" "..."))
    "OpGraphARM"
      (t ("IdResultType"))
    "OpGraphInputARM"
      (t ("IdResultType" "InputIndex" "ElementIndex" "..."))
    "OpGraphSetOutputARM"
      (nil ("Value" "OutputIndex" "ElementIndex" "..."))
    "OpGraphEndARM"
      (nil nil)
    "OpTypeGraphARM"
      (t ("NumInputs" "InOutTypes" "..."))
    "OpTerminateInvocation"
      (nil nil)
    "OpTypeUntypedPointerKHR"
      (t ("StorageClass"))
    "OpUntypedVariableKHR"
      (t ("IdResultType" "StorageClass" "Data Type?" "Initializer?"))
    "OpUntypedAccessChainKHR"
      (t ("IdResultType" "Base Type" "Base" "Indexes" "..."))
    "OpUntypedInBoundsAccessChainKHR"
      (t ("IdResultType" "Base Type" "Base" "Indexes" "..."))
    "OpSubgroupBallotKHR"
      (t ("IdResultType" "Predicate"))
    "OpSubgroupFirstInvocationKHR"
      (t ("IdResultType" "Value"))
    "OpUntypedPtrAccessChainKHR"
      (t ("IdResultType" "Base Type" "Base" "Element" "Indexes" "..."))
    "OpUntypedInBoundsPtrAccessChainKHR"
      (t ("IdResultType" "Base Type" "Base" "Element" "Indexes" "..."))
    "OpUntypedArrayLengthKHR"
      (t ("IdResultType" "Structure" "Pointer" "Array member"))
    "OpUntypedPrefetchKHR"
      (nil ("Pointer Type" "Num Bytes" "RW?" "Locality?" "Cache Type?"))
    "OpSubgroupAllKHR"
      (t ("IdResultType" "Predicate"))
    "OpSubgroupAnyKHR"
      (t ("IdResultType" "Predicate"))
    "OpSubgroupAllEqualKHR"
      (t ("IdResultType" "Predicate"))
    "OpGroupNonUniformRotateKHR"
      (t ("IdResultType" "Execution" "Value" "Delta" "ClusterSize?"))
    "OpSubgroupReadInvocationKHR"
      (t ("IdResultType" "Value" "Index"))
    "OpExtInstWithForwardRefsKHR"
      (t ("IdResultType" "Set" "Instruction" "Operand 1, Operand 2, ..." "..."))
    "OpUntypedGroupAsyncCopyKHR"
      (t ("IdResultType" "Execution" "Destination" "Source" "Element Num Bytes" "Num Elements" "Stride" "Event" "Destination Memory Operands?" "Source Memory Operands?"))
    "OpTraceRayKHR"
      (nil ("Accel" "Ray Flags" "Cull Mask" "SBT Offset" "SBT Stride" "Miss Index" "Ray Origin" "Ray Tmin" "Ray Direction" "Ray Tmax" "Payload"))
    "OpExecuteCallableKHR"
      (nil ("SBT Index" "Callable Data"))
    "OpConvertUToAccelerationStructureKHR"
      (t ("IdResultType" "Accel"))
    "OpIgnoreIntersectionKHR"
      (nil nil)
    "OpTerminateRayKHR"
      (nil nil)
    "OpSDot"
      (t ("IdResultType" "Vector 1" "Vector 2" "Packed Vector Format?"))
    "OpUDot"
      (t ("IdResultType" "Vector 1" "Vector 2" "Packed Vector Format?"))
    "OpSUDot"
      (t ("IdResultType" "Vector 1" "Vector 2" "Packed Vector Format?"))
    "OpSDotAccSat"
      (t ("IdResultType" "Vector 1" "Vector 2" "Accumulator" "Packed Vector Format?"))
    "OpUDotAccSat"
      (t ("IdResultType" "Vector 1" "Vector 2" "Accumulator" "Packed Vector Format?"))
    "OpSUDotAccSat"
      (t ("IdResultType" "Vector 1" "Vector 2" "Accumulator" "Packed Vector Format?"))
    "OpTypeCooperativeMatrixKHR"
      (t ("Component Type" "Scope" "Rows" "Columns" "Use"))
    "OpCooperativeMatrixLoadKHR"
      (t ("IdResultType" "Pointer" "MemoryLayout" "Stride?" "Memory Operand?"))
    "OpCooperativeMatrixStoreKHR"
      (nil ("Pointer" "Object" "MemoryLayout" "Stride?" "Memory Operand?"))
    "OpCooperativeMatrixMulAddKHR"
      (t ("IdResultType" "A" "B" "C" "Cooperative Matrix Operands?"))
    "OpCooperativeMatrixLengthKHR"
      (t ("IdResultType" "Type"))
    "OpConstantCompositeReplicateEXT"
      (t ("IdResultType" "Value"))
    "OpSpecConstantCompositeReplicateEXT"
      (t ("IdResultType" "Value"))
    "OpCompositeConstructReplicateEXT"
      (t ("IdResultType" "Value"))
    "OpTypeRayQueryKHR"
      (t nil)
    "OpRayQueryInitializeKHR"
      (nil ("RayQuery" "Accel" "RayFlags" "CullMask" "RayOrigin" "RayTMin" "RayDirection" "RayTMax"))
    "OpRayQueryTerminateKHR"
      (nil ("RayQuery"))
    "OpRayQueryGenerateIntersectionKHR"
      (nil ("RayQuery" "HitT"))
    "OpRayQueryConfirmIntersectionKHR"
      (nil ("RayQuery"))
    "OpRayQueryProceedKHR"
      (t ("IdResultType" "RayQuery"))
    "OpRayQueryGetIntersectionTypeKHR"
      (t ("IdResultType" "RayQuery" "Intersection"))
    "OpImageSampleWeightedQCOM"
      (t ("IdResultType" "Texture" "Coordinates" "Weights"))
    "OpImageBoxFilterQCOM"
      (t ("IdResultType" "Texture" "Coordinates" "Box Size"))
    "OpImageBlockMatchSSDQCOM"
      (t ("IdResultType" "Target" "Target Coordinates" "Reference" "Reference Coordinates" "Block Size"))
    "OpImageBlockMatchSADQCOM"
      (t ("IdResultType" "Target" "Target Coordinates" "Reference" "Reference Coordinates" "Block Size"))
    "OpBitCastArrayQCOM"
      (t ("IdResultType" "Source Array"))
    "OpImageBlockMatchWindowSSDQCOM"
      (t ("IdResultType" "Target Sampled Image" "Target Coordinates" "Reference Sampled Image" "Reference Coordinates" "Block Size"))
    "OpImageBlockMatchWindowSADQCOM"
      (t ("IdResultType" "Target Sampled Image" "Target Coordinates" "Reference Sampled Image" "Reference Coordinates" "Block Size"))
    "OpImageBlockMatchGatherSSDQCOM"
      (t ("IdResultType" "Target Sampled Image" "Target Coordinates" "Reference Sampled Image" "Reference Coordinates" "Block Size"))
    "OpImageBlockMatchGatherSADQCOM"
      (t ("IdResultType" "Target Sampled Image" "Target Coordinates" "Reference Sampled Image" "Reference Coordinates" "Block Size"))
    "OpCompositeConstructCoopMatQCOM"
      (t ("IdResultType" "Source Array"))
    "OpCompositeExtractCoopMatQCOM"
      (t ("IdResultType" "Source Cooperative Matrix"))
    "OpExtractSubArrayQCOM"
      (t ("IdResultType" "Source Array" "index"))
    "OpGroupIAddNonUniformAMD"
      (t ("IdResultType" "Execution" "Operation" "X"))
    "OpGroupFAddNonUniformAMD"
      (t ("IdResultType" "Execution" "Operation" "X"))
    "OpGroupFMinNonUniformAMD"
      (t ("IdResultType" "Execution" "Operation" "X"))
    "OpGroupUMinNonUniformAMD"
      (t ("IdResultType" "Execution" "Operation" "X"))
    "OpGroupSMinNonUniformAMD"
      (t ("IdResultType" "Execution" "Operation" "X"))
    "OpGroupFMaxNonUniformAMD"
      (t ("IdResultType" "Execution" "Operation" "X"))
    "OpGroupUMaxNonUniformAMD"
      (t ("IdResultType" "Execution" "Operation" "X"))
    "OpGroupSMaxNonUniformAMD"
      (t ("IdResultType" "Execution" "Operation" "X"))
    "OpFragmentMaskFetchAMD"
      (t ("IdResultType" "Image" "Coordinate"))
    "OpFragmentFetchAMD"
      (t ("IdResultType" "Image" "Coordinate" "Fragment Index"))
    "OpReadClockKHR"
      (t ("IdResultType" "Scope"))
    "OpAllocateNodePayloadsAMDX"
      (t ("IdResultType" "Visibility" "Payload Count" "Node Index"))
    "OpEnqueueNodePayloadsAMDX"
      (nil ("Payload Array"))
    "OpTypeNodePayloadArrayAMDX"
      (t ("Payload Type"))
    "OpFinishWritingNodePayloadAMDX"
      (t ("IdResultType" "Payload"))
    "OpNodePayloadArrayLengthAMDX"
      (t ("IdResultType" "Payload Array"))
    "OpIsNodePayloadValidAMDX"
      (t ("IdResultType" "Payload Type" "Node Index"))
    "OpConstantStringAMDX"
      (t ("Literal String"))
    "OpSpecConstantStringAMDX"
      (t ("Literal String"))
    "OpGroupNonUniformQuadAllKHR"
      (t ("IdResultType" "Predicate"))
    "OpGroupNonUniformQuadAnyKHR"
      (t ("IdResultType" "Predicate"))
    "OpHitObjectRecordHitMotionNV"
      (nil ("Hit Object" "Acceleration Structure" "InstanceId" "PrimitiveId" "GeometryIndex" "Hit Kind" "SBT Record Offset" "SBT Record Stride" "Origin" "TMin" "Direction" "TMax" "Current Time" "HitObject Attributes"))
    "OpHitObjectRecordHitWithIndexMotionNV"
      (nil ("Hit Object" "Acceleration Structure" "InstanceId" "PrimitiveId" "GeometryIndex" "Hit Kind" "SBT Record Index" "Origin" "TMin" "Direction" "TMax" "Current Time" "HitObject Attributes"))
    "OpHitObjectRecordMissMotionNV"
      (nil ("Hit Object" "SBT Index" "Origin" "TMin" "Direction" "TMax" "Current Time"))
    "OpHitObjectGetWorldToObjectNV"
      (t ("IdResultType" "Hit Object"))
    "OpHitObjectGetObjectToWorldNV"
      (t ("IdResultType" "Hit Object"))
    "OpHitObjectGetObjectRayDirectionNV"
      (t ("IdResultType" "Hit Object"))
    "OpHitObjectGetObjectRayOriginNV"
      (t ("IdResultType" "Hit Object"))
    "OpHitObjectTraceRayMotionNV"
      (nil ("Hit Object" "Acceleration Structure" "RayFlags" "Cullmask" "SBT Record Offset" "SBT Record Stride" "Miss Index" "Origin" "TMin" "Direction" "TMax" "Time" "Payload"))
    "OpHitObjectGetShaderRecordBufferHandleNV"
      (t ("IdResultType" "Hit Object"))
    "OpHitObjectGetShaderBindingTableRecordIndexNV"
      (t ("IdResultType" "Hit Object"))
    "OpHitObjectRecordEmptyNV"
      (nil ("Hit Object"))
    "OpHitObjectTraceRayNV"
      (nil ("Hit Object" "Acceleration Structure" "RayFlags" "Cullmask" "SBT Record Offset" "SBT Record Stride" "Miss Index" "Origin" "TMin" "Direction" "TMax" "Payload"))
    "OpHitObjectRecordHitNV"
      (nil ("Hit Object" "Acceleration Structure" "InstanceId" "PrimitiveId" "GeometryIndex" "Hit Kind" "SBT Record Offset" "SBT Record Stride" "Origin" "TMin" "Direction" "TMax" "HitObject Attributes"))
    "OpHitObjectRecordHitWithIndexNV"
      (nil ("Hit Object" "Acceleration Structure" "InstanceId" "PrimitiveId" "GeometryIndex" "Hit Kind" "SBT Record Index" "Origin" "TMin" "Direction" "TMax" "HitObject Attributes"))
    "OpHitObjectRecordMissNV"
      (nil ("Hit Object" "SBT Index" "Origin" "TMin" "Direction" "TMax"))
    "OpHitObjectExecuteShaderNV"
      (nil ("Hit Object" "Payload"))
    "OpHitObjectGetCurrentTimeNV"
      (t ("IdResultType" "Hit Object"))
    "OpHitObjectGetAttributesNV"
      (nil ("Hit Object" "Hit Object Attribute"))
    "OpHitObjectGetHitKindNV"
      (t ("IdResultType" "Hit Object"))
    "OpHitObjectGetPrimitiveIndexNV"
      (t ("IdResultType" "Hit Object"))
    "OpHitObjectGetGeometryIndexNV"
      (t ("IdResultType" "Hit Object"))
    "OpHitObjectGetInstanceIdNV"
      (t ("IdResultType" "Hit Object"))
    "OpHitObjectGetInstanceCustomIndexNV"
      (t ("IdResultType" "Hit Object"))
    "OpHitObjectGetWorldRayDirectionNV"
      (t ("IdResultType" "Hit Object"))
    "OpHitObjectGetWorldRayOriginNV"
      (t ("IdResultType" "Hit Object"))
    "OpHitObjectGetRayTMaxNV"
      (t ("IdResultType" "Hit Object"))
    "OpHitObjectGetRayTMinNV"
      (t ("IdResultType" "Hit Object"))
    "OpHitObjectIsEmptyNV"
      (t ("IdResultType" "Hit Object"))
    "OpHitObjectIsHitNV"
      (t ("IdResultType" "Hit Object"))
    "OpHitObjectIsMissNV"
      (t ("IdResultType" "Hit Object"))
    "OpReorderThreadWithHitObjectNV"
      (nil ("Hit Object" "Hint?" "Bits?"))
    "OpReorderThreadWithHintNV"
      (nil ("Hint" "Bits"))
    "OpTypeHitObjectNV"
      (t nil)
    "OpImageSampleFootprintNV"
      (t ("IdResultType" "Sampled Image" "Coordinate" "Granularity" "Coarse" "ImageOperands?"))
    "OpTypeCooperativeVectorNV"
      (t ("Component Type" "Component Count"))
    "OpCooperativeVectorMatrixMulNV"
      (t ("IdResultType" "Input" "InputInterpretation" "Matrix" "MatrixOffset" "MatrixInterpretation" "M" "K" "MemoryLayout" "Transpose" "MatrixStride?" "CooperativeMatrixOperands?"))
    "OpCooperativeVectorOuterProductAccumulateNV"
      (nil ("Pointer" "Offset" "A" "B" "MemoryLayout" "MatrixInterpretation" "MatrixStride?"))
    "OpCooperativeVectorReduceSumAccumulateNV"
      (nil ("Pointer" "Offset" "V"))
    "OpCooperativeVectorMatrixMulAddNV"
      (t ("IdResultType" "Input" "InputInterpretation" "Matrix" "MatrixOffset" "MatrixInterpretation" "Bias" "BiasOffset" "BiasInterpretation" "M" "K" "MemoryLayout" "Transpose" "MatrixStride?" "CooperativeMatrixOperands?"))
    "OpCooperativeMatrixConvertNV"
      (t ("IdResultType" "Matrix"))
    "OpEmitMeshTasksEXT"
      (nil ("Group Count X" "Group Count Y" "Group Count Z" "Payload?"))
    "OpSetMeshOutputsEXT"
      (nil ("Vertex Count" "Primitive Count"))
    "OpGroupNonUniformPartitionNV"
      (t ("IdResultType" "Value"))
    "OpWritePackedPrimitiveIndices4x8NV"
      (nil ("Index Offset" "Packed Indices"))
    "OpFetchMicroTriangleVertexPositionNV"
      (t ("IdResultType" "Accel" "Instance Id" "Geometry Index" "Primitive Index" "Barycentric"))
    "OpFetchMicroTriangleVertexBarycentricNV"
      (t ("IdResultType" "Accel" "Instance Id" "Geometry Index" "Primitive Index" "Barycentric"))
    "OpCooperativeVectorLoadNV"
      (t ("IdResultType" "Pointer" "Offset" "MemoryAccess?"))
    "OpCooperativeVectorStoreNV"
      (nil ("Pointer" "Offset" "Object" "MemoryAccess?"))
    "OpReportIntersectionKHR"
      (t ("IdResultType" "Hit" "HitKind"))
    "OpIgnoreIntersectionNV"
      (nil nil)
    "OpTerminateRayNV"
      (nil nil)
    "OpTraceNV"
      (nil ("Accel" "Ray Flags" "Cull Mask" "SBT Offset" "SBT Stride" "Miss Index" "Ray Origin" "Ray Tmin" "Ray Direction" "Ray Tmax" "PayloadId"))
    "OpTraceMotionNV"
      (nil ("Accel" "Ray Flags" "Cull Mask" "SBT Offset" "SBT Stride" "Miss Index" "Ray Origin" "Ray Tmin" "Ray Direction" "Ray Tmax" "Time" "PayloadId"))
    "OpTraceRayMotionNV"
      (nil ("Accel" "Ray Flags" "Cull Mask" "SBT Offset" "SBT Stride" "Miss Index" "Ray Origin" "Ray Tmin" "Ray Direction" "Ray Tmax" "Time" "Payload"))
    "OpRayQueryGetIntersectionTriangleVertexPositionsKHR"
      (t ("IdResultType" "RayQuery" "Intersection"))
    "OpTypeAccelerationStructureKHR"
      (t nil)
    "OpExecuteCallableNV"
      (nil ("SBT Index" "Callable DataId"))
    "OpRayQueryGetIntersectionClusterIdNV"
      (t ("IdResultType" "RayQuery" "Intersection"))
    "OpHitObjectGetClusterIdNV"
      (t ("IdResultType" "Hit Object"))
    "OpTypeCooperativeMatrixNV"
      (t ("Component Type" "Execution" "Rows" "Columns"))
    "OpCooperativeMatrixLoadNV"
      (t ("IdResultType" "Pointer" "Stride" "Column Major" "MemoryAccess?"))
    "OpCooperativeMatrixStoreNV"
      (nil ("Pointer" "Object" "Stride" "Column Major" "MemoryAccess?"))
    "OpCooperativeMatrixMulAddNV"
      (t ("IdResultType" "A" "B" "C"))
    "OpCooperativeMatrixLengthNV"
      (t ("IdResultType" "Type"))
    "OpBeginInvocationInterlockEXT"
      (nil nil)
    "OpEndInvocationInterlockEXT"
      (nil nil)
    "OpCooperativeMatrixReduceNV"
      (t ("IdResultType" "Matrix" "Reduce" "CombineFunc"))
    "OpCooperativeMatrixLoadTensorNV"
      (t ("IdResultType" "Pointer" "Object" "TensorLayout" "Memory Operand" "Tensor Addressing Operands"))
    "OpCooperativeMatrixStoreTensorNV"
      (nil ("Pointer" "Object" "TensorLayout" "Memory Operand" "Tensor Addressing Operands"))
    "OpCooperativeMatrixPerElementOpNV"
      (t ("IdResultType" "Matrix" "Func" "Operands" "..."))
    "OpTypeTensorLayoutNV"
      (t ("Dim" "ClampMode"))
    "OpTypeTensorViewNV"
      (t ("Dim" "HasDimensions" "p" "..."))
    "OpCreateTensorLayoutNV"
      (t ("IdResultType"))
    "OpTensorLayoutSetDimensionNV"
      (t ("IdResultType" "TensorLayout" "Dim" "..."))
    "OpTensorLayoutSetStrideNV"
      (t ("IdResultType" "TensorLayout" "Stride" "..."))
    "OpTensorLayoutSliceNV"
      (t ("IdResultType" "TensorLayout" "Operands" "..."))
    "OpTensorLayoutSetClampValueNV"
      (t ("IdResultType" "TensorLayout" "Value"))
    "OpCreateTensorViewNV"
      (t ("IdResultType"))
    "OpTensorViewSetDimensionNV"
      (t ("IdResultType" "TensorView" "Dim" "..."))
    "OpTensorViewSetStrideNV"
      (t ("IdResultType" "TensorView" "Stride" "..."))
    "OpDemoteToHelperInvocation"
      (nil nil)
    "OpIsHelperInvocationEXT"
      (t ("IdResultType"))
    "OpTensorViewSetClipNV"
      (t ("IdResultType" "TensorView" "ClipRowOffset" "ClipRowSpan" "ClipColOffset" "ClipColSpan"))
    "OpTensorLayoutSetBlockSizeNV"
      (t ("IdResultType" "TensorLayout" "BlockSize" "..."))
    "OpCooperativeMatrixTransposeNV"
      (t ("IdResultType" "Matrix"))
    "OpConvertUToImageNV"
      (t ("IdResultType" "Operand"))
    "OpConvertUToSamplerNV"
      (t ("IdResultType" "Operand"))
    "OpConvertImageToUNV"
      (t ("IdResultType" "Operand"))
    "OpConvertSamplerToUNV"
      (t ("IdResultType" "Operand"))
    "OpConvertUToSampledImageNV"
      (t ("IdResultType" "Operand"))
    "OpConvertSampledImageToUNV"
      (t ("IdResultType" "Operand"))
    "OpSamplerImageAddressingModeNV"
      (nil ("Bit Width"))
    "OpRawAccessChainNV"
      (t ("IdResultType" "Base" "Byte stride" "Element index" "Byte offset" "RawAccessChainOperands?"))
    "OpRayQueryGetIntersectionSpherePositionNV"
      (t ("IdResultType" "RayQuery" "Intersection"))
    "OpRayQueryGetIntersectionSphereRadiusNV"
      (t ("IdResultType" "RayQuery" "Intersection"))
    "OpRayQueryGetIntersectionLSSPositionsNV"
      (t ("IdResultType" "RayQuery" "Intersection"))
    "OpRayQueryGetIntersectionLSSRadiiNV"
      (t ("IdResultType" "RayQuery" "Intersection"))
    "OpRayQueryGetIntersectionLSSHitValueNV"
      (t ("IdResultType" "RayQuery" "Intersection"))
    "OpHitObjectGetSpherePositionNV"
      (t ("IdResultType" "Hit Object"))
    "OpHitObjectGetSphereRadiusNV"
      (t ("IdResultType" "Hit Object"))
    "OpHitObjectGetLSSPositionsNV"
      (t ("IdResultType" "Hit Object"))
    "OpHitObjectGetLSSRadiiNV"
      (t ("IdResultType" "Hit Object"))
    "OpHitObjectIsSphereHitNV"
      (t ("IdResultType" "Hit Object"))
    "OpHitObjectIsLSSHitNV"
      (t ("IdResultType" "Hit Object"))
    "OpRayQueryIsSphereHitNV"
      (t ("IdResultType" "RayQuery" "Intersection"))
    "OpRayQueryIsLSSHitNV"
      (t ("IdResultType" "RayQuery" "Intersection"))
    "OpSubgroupShuffleINTEL"
      (t ("IdResultType" "Data" "InvocationId"))
    "OpSubgroupShuffleDownINTEL"
      (t ("IdResultType" "Current" "Next" "Delta"))
    "OpSubgroupShuffleUpINTEL"
      (t ("IdResultType" "Previous" "Current" "Delta"))
    "OpSubgroupShuffleXorINTEL"
      (t ("IdResultType" "Data" "Value"))
    "OpSubgroupBlockReadINTEL"
      (t ("IdResultType" "Ptr"))
    "OpSubgroupBlockWriteINTEL"
      (nil ("Ptr" "Data"))
    "OpSubgroupImageBlockReadINTEL"
      (t ("IdResultType" "Image" "Coordinate"))
    "OpSubgroupImageBlockWriteINTEL"
      (nil ("Image" "Coordinate" "Data"))
    "OpSubgroupImageMediaBlockReadINTEL"
      (t ("IdResultType" "Image" "Coordinate" "Width" "Height"))
    "OpSubgroupImageMediaBlockWriteINTEL"
      (nil ("Image" "Coordinate" "Width" "Height" "Data"))
    "OpUCountLeadingZerosINTEL"
      (t ("IdResultType" "Operand"))
    "OpUCountTrailingZerosINTEL"
      (t ("IdResultType" "Operand"))
    "OpAbsISubINTEL"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpAbsUSubINTEL"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpIAddSatINTEL"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpUAddSatINTEL"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpIAverageINTEL"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpUAverageINTEL"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpIAverageRoundedINTEL"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpUAverageRoundedINTEL"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpISubSatINTEL"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpUSubSatINTEL"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpIMul32x16INTEL"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpUMul32x16INTEL"
      (t ("IdResultType" "Operand 1" "Operand 2"))
    "OpConstantFunctionPointerINTEL"
      (t ("IdResultType" "Function"))
    "OpFunctionPointerCallINTEL"
      (t ("IdResultType" "Operand 1" "..."))
    "OpAsmTargetINTEL"
      (t ("Asm target"))
    "OpAsmINTEL"
      (t ("IdResultType" "Asm type" "Target" "Asm instructions" "Constraints"))
    "OpAsmCallINTEL"
      (t ("IdResultType" "Asm" "Argument" "..."))
    "OpAtomicFMinEXT"
      (t ("IdResultType" "Pointer" "Memory" "Semantics" "Value"))
    "OpAtomicFMaxEXT"
      (t ("IdResultType" "Pointer" "Memory" "Semantics" "Value"))
    "OpAssumeTrueKHR"
      (nil ("Condition"))
    "OpExpectKHR"
      (t ("IdResultType" "Value" "ExpectedValue"))
    "OpDecorateString"
      (nil ("Target" "Decoration"))
    "OpMemberDecorateString"
      (nil ("Struct Type" "Member" "Decoration"))
    "OpVmeImageINTEL"
      (t ("IdResultType" "Image Type" "Sampler"))
    "OpTypeVmeImageINTEL"
      (t ("Image Type"))
    "OpTypeAvcImePayloadINTEL"
      (t nil)
    "OpTypeAvcRefPayloadINTEL"
      (t nil)
    "OpTypeAvcSicPayloadINTEL"
      (t nil)
    "OpTypeAvcMcePayloadINTEL"
      (t nil)
    "OpTypeAvcMceResultINTEL"
      (t nil)
    "OpTypeAvcImeResultINTEL"
      (t nil)
    "OpTypeAvcImeResultSingleReferenceStreamoutINTEL"
      (t nil)
    "OpTypeAvcImeResultDualReferenceStreamoutINTEL"
      (t nil)
    "OpTypeAvcImeSingleReferenceStreaminINTEL"
      (t nil)
    "OpTypeAvcImeDualReferenceStreaminINTEL"
      (t nil)
    "OpTypeAvcRefResultINTEL"
      (t nil)
    "OpTypeAvcSicResultINTEL"
      (t nil)
    "OpSubgroupAvcMceGetDefaultInterBaseMultiReferencePenaltyINTEL"
      (t ("IdResultType" "Slice Type" "Qp"))
    "OpSubgroupAvcMceSetInterBaseMultiReferencePenaltyINTEL"
      (t ("IdResultType" "Reference Base Penalty" "Payload"))
    "OpSubgroupAvcMceGetDefaultInterShapePenaltyINTEL"
      (t ("IdResultType" "Slice Type" "Qp"))
    "OpSubgroupAvcMceSetInterShapePenaltyINTEL"
      (t ("IdResultType" "Packed Shape Penalty" "Payload"))
    "OpSubgroupAvcMceGetDefaultInterDirectionPenaltyINTEL"
      (t ("IdResultType" "Slice Type" "Qp"))
    "OpSubgroupAvcMceSetInterDirectionPenaltyINTEL"
      (t ("IdResultType" "Direction Cost" "Payload"))
    "OpSubgroupAvcMceGetDefaultIntraLumaShapePenaltyINTEL"
      (t ("IdResultType" "Slice Type" "Qp"))
    "OpSubgroupAvcMceGetDefaultInterMotionVectorCostTableINTEL"
      (t ("IdResultType" "Slice Type" "Qp"))
    "OpSubgroupAvcMceGetDefaultHighPenaltyCostTableINTEL"
      (t ("IdResultType"))
    "OpSubgroupAvcMceGetDefaultMediumPenaltyCostTableINTEL"
      (t ("IdResultType"))
    "OpSubgroupAvcMceGetDefaultLowPenaltyCostTableINTEL"
      (t ("IdResultType"))
    "OpSubgroupAvcMceSetMotionVectorCostFunctionINTEL"
      (t ("IdResultType" "Packed Cost Center Delta" "Packed Cost Table" "Cost Precision" "Payload"))
    "OpSubgroupAvcMceGetDefaultIntraLumaModePenaltyINTEL"
      (t ("IdResultType" "Slice Type" "Qp"))
    "OpSubgroupAvcMceGetDefaultNonDcLumaIntraPenaltyINTEL"
      (t ("IdResultType"))
    "OpSubgroupAvcMceGetDefaultIntraChromaModeBasePenaltyINTEL"
      (t ("IdResultType"))
    "OpSubgroupAvcMceSetAcOnlyHaarINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcMceSetSourceInterlacedFieldPolarityINTEL"
      (t ("IdResultType" "Source Field Polarity" "Payload"))
    "OpSubgroupAvcMceSetSingleReferenceInterlacedFieldPolarityINTEL"
      (t ("IdResultType" "Reference Field Polarity" "Payload"))
    "OpSubgroupAvcMceSetDualReferenceInterlacedFieldPolaritiesINTEL"
      (t ("IdResultType" "Forward Reference Field Polarity" "Backward Reference Field Polarity" "Payload"))
    "OpSubgroupAvcMceConvertToImePayloadINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcMceConvertToImeResultINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcMceConvertToRefPayloadINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcMceConvertToRefResultINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcMceConvertToSicPayloadINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcMceConvertToSicResultINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcMceGetMotionVectorsINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcMceGetInterDistortionsINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcMceGetBestInterDistortionsINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcMceGetInterMajorShapeINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcMceGetInterMinorShapeINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcMceGetInterDirectionsINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcMceGetInterMotionVectorCountINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcMceGetInterReferenceIdsINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcMceGetInterReferenceInterlacedFieldPolaritiesINTEL"
      (t ("IdResultType" "Packed Reference Ids" "Packed Reference Parameter Field Polarities" "Payload"))
    "OpSubgroupAvcImeInitializeINTEL"
      (t ("IdResultType" "Src Coord" "Partition Mask" "SAD Adjustment"))
    "OpSubgroupAvcImeSetSingleReferenceINTEL"
      (t ("IdResultType" "Ref Offset" "Search Window Config" "Payload"))
    "OpSubgroupAvcImeSetDualReferenceINTEL"
      (t ("IdResultType" "Fwd Ref Offset" "Bwd Ref Offset" "Search Window Config" "Payload"))
    "OpSubgroupAvcImeRefWindowSizeINTEL"
      (t ("IdResultType" "Search Window Config" "Dual Ref"))
    "OpSubgroupAvcImeAdjustRefOffsetINTEL"
      (t ("IdResultType" "Ref Offset" "Src Coord" "Ref Window Size" "Image Size"))
    "OpSubgroupAvcImeConvertToMcePayloadINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcImeSetMaxMotionVectorCountINTEL"
      (t ("IdResultType" "Max Motion Vector Count" "Payload"))
    "OpSubgroupAvcImeSetUnidirectionalMixDisableINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcImeSetEarlySearchTerminationThresholdINTEL"
      (t ("IdResultType" "Threshold" "Payload"))
    "OpSubgroupAvcImeSetWeightedSadINTEL"
      (t ("IdResultType" "Packed Sad Weights" "Payload"))
    "OpSubgroupAvcImeEvaluateWithSingleReferenceINTEL"
      (t ("IdResultType" "Src Image" "Ref Image" "Payload"))
    "OpSubgroupAvcImeEvaluateWithDualReferenceINTEL"
      (t ("IdResultType" "Src Image" "Fwd Ref Image" "Bwd Ref Image" "Payload"))
    "OpSubgroupAvcImeEvaluateWithSingleReferenceStreaminINTEL"
      (t ("IdResultType" "Src Image" "Ref Image" "Payload" "Streamin Components"))
    "OpSubgroupAvcImeEvaluateWithDualReferenceStreaminINTEL"
      (t ("IdResultType" "Src Image" "Fwd Ref Image" "Bwd Ref Image" "Payload" "Streamin Components"))
    "OpSubgroupAvcImeEvaluateWithSingleReferenceStreamoutINTEL"
      (t ("IdResultType" "Src Image" "Ref Image" "Payload"))
    "OpSubgroupAvcImeEvaluateWithDualReferenceStreamoutINTEL"
      (t ("IdResultType" "Src Image" "Fwd Ref Image" "Bwd Ref Image" "Payload"))
    "OpSubgroupAvcImeEvaluateWithSingleReferenceStreaminoutINTEL"
      (t ("IdResultType" "Src Image" "Ref Image" "Payload" "Streamin Components"))
    "OpSubgroupAvcImeEvaluateWithDualReferenceStreaminoutINTEL"
      (t ("IdResultType" "Src Image" "Fwd Ref Image" "Bwd Ref Image" "Payload" "Streamin Components"))
    "OpSubgroupAvcImeConvertToMceResultINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcImeGetSingleReferenceStreaminINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcImeGetDualReferenceStreaminINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcImeStripSingleReferenceStreamoutINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcImeStripDualReferenceStreamoutINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcImeGetStreamoutSingleReferenceMajorShapeMotionVectorsINTEL"
      (t ("IdResultType" "Payload" "Major Shape"))
    "OpSubgroupAvcImeGetStreamoutSingleReferenceMajorShapeDistortionsINTEL"
      (t ("IdResultType" "Payload" "Major Shape"))
    "OpSubgroupAvcImeGetStreamoutSingleReferenceMajorShapeReferenceIdsINTEL"
      (t ("IdResultType" "Payload" "Major Shape"))
    "OpSubgroupAvcImeGetStreamoutDualReferenceMajorShapeMotionVectorsINTEL"
      (t ("IdResultType" "Payload" "Major Shape" "Direction"))
    "OpSubgroupAvcImeGetStreamoutDualReferenceMajorShapeDistortionsINTEL"
      (t ("IdResultType" "Payload" "Major Shape" "Direction"))
    "OpSubgroupAvcImeGetStreamoutDualReferenceMajorShapeReferenceIdsINTEL"
      (t ("IdResultType" "Payload" "Major Shape" "Direction"))
    "OpSubgroupAvcImeGetBorderReachedINTEL"
      (t ("IdResultType" "Image Select" "Payload"))
    "OpSubgroupAvcImeGetTruncatedSearchIndicationINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcImeGetUnidirectionalEarlySearchTerminationINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcImeGetWeightingPatternMinimumMotionVectorINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcImeGetWeightingPatternMinimumDistortionINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcFmeInitializeINTEL"
      (t ("IdResultType" "Src Coord" "Motion Vectors" "Major Shapes" "Minor Shapes" "Direction" "Pixel Resolution" "Sad Adjustment"))
    "OpSubgroupAvcBmeInitializeINTEL"
      (t ("IdResultType" "Src Coord" "Motion Vectors" "Major Shapes" "Minor Shapes" "Direction" "Pixel Resolution" "Bidirectional Weight" "Sad Adjustment"))
    "OpSubgroupAvcRefConvertToMcePayloadINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcRefSetBidirectionalMixDisableINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcRefSetBilinearFilterEnableINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcRefEvaluateWithSingleReferenceINTEL"
      (t ("IdResultType" "Src Image" "Ref Image" "Payload"))
    "OpSubgroupAvcRefEvaluateWithDualReferenceINTEL"
      (t ("IdResultType" "Src Image" "Fwd Ref Image" "Bwd Ref Image" "Payload"))
    "OpSubgroupAvcRefEvaluateWithMultiReferenceINTEL"
      (t ("IdResultType" "Src Image" "Packed Reference Ids" "Payload"))
    "OpSubgroupAvcRefEvaluateWithMultiReferenceInterlacedINTEL"
      (t ("IdResultType" "Src Image" "Packed Reference Ids" "Packed Reference Field Polarities" "Payload"))
    "OpSubgroupAvcRefConvertToMceResultINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcSicInitializeINTEL"
      (t ("IdResultType" "Src Coord"))
    "OpSubgroupAvcSicConfigureSkcINTEL"
      (t ("IdResultType" "Skip Block Partition Type" "Skip Motion Vector Mask" "Motion Vectors" "Bidirectional Weight" "Sad Adjustment" "Payload"))
    "OpSubgroupAvcSicConfigureIpeLumaINTEL"
      (t ("IdResultType" "Luma Intra Partition Mask" "Intra Neighbour Availabilty" "Left Edge Luma Pixels" "Upper Left Corner Luma Pixel" "Upper Edge Luma Pixels" "Upper Right Edge Luma Pixels" "Sad Adjustment" "Payload"))
    "OpSubgroupAvcSicConfigureIpeLumaChromaINTEL"
      (t ("IdResultType" "Luma Intra Partition Mask" "Intra Neighbour Availabilty" "Left Edge Luma Pixels" "Upper Left Corner Luma Pixel" "Upper Edge Luma Pixels" "Upper Right Edge Luma Pixels" "Left Edge Chroma Pixels" "Upper Left Corner Chroma Pixel" "Upper Edge Chroma Pixels" "Sad Adjustment" "Payload"))
    "OpSubgroupAvcSicGetMotionVectorMaskINTEL"
      (t ("IdResultType" "Skip Block Partition Type" "Direction"))
    "OpSubgroupAvcSicConvertToMcePayloadINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcSicSetIntraLumaShapePenaltyINTEL"
      (t ("IdResultType" "Packed Shape Penalty" "Payload"))
    "OpSubgroupAvcSicSetIntraLumaModeCostFunctionINTEL"
      (t ("IdResultType" "Luma Mode Penalty" "Luma Packed Neighbor Modes" "Luma Packed Non Dc Penalty" "Payload"))
    "OpSubgroupAvcSicSetIntraChromaModeCostFunctionINTEL"
      (t ("IdResultType" "Chroma Mode Base Penalty" "Payload"))
    "OpSubgroupAvcSicSetBilinearFilterEnableINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcSicSetSkcForwardTransformEnableINTEL"
      (t ("IdResultType" "Packed Sad Coefficients" "Payload"))
    "OpSubgroupAvcSicSetBlockBasedRawSkipSadINTEL"
      (t ("IdResultType" "Block Based Skip Type" "Payload"))
    "OpSubgroupAvcSicEvaluateIpeINTEL"
      (t ("IdResultType" "Src Image" "Payload"))
    "OpSubgroupAvcSicEvaluateWithSingleReferenceINTEL"
      (t ("IdResultType" "Src Image" "Ref Image" "Payload"))
    "OpSubgroupAvcSicEvaluateWithDualReferenceINTEL"
      (t ("IdResultType" "Src Image" "Fwd Ref Image" "Bwd Ref Image" "Payload"))
    "OpSubgroupAvcSicEvaluateWithMultiReferenceINTEL"
      (t ("IdResultType" "Src Image" "Packed Reference Ids" "Payload"))
    "OpSubgroupAvcSicEvaluateWithMultiReferenceInterlacedINTEL"
      (t ("IdResultType" "Src Image" "Packed Reference Ids" "Packed Reference Field Polarities" "Payload"))
    "OpSubgroupAvcSicConvertToMceResultINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcSicGetIpeLumaShapeINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcSicGetBestIpeLumaDistortionINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcSicGetBestIpeChromaDistortionINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcSicGetPackedIpeLumaModesINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcSicGetIpeChromaModeINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcSicGetPackedSkcLumaCountThresholdINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcSicGetPackedSkcLumaSumThresholdINTEL"
      (t ("IdResultType" "Payload"))
    "OpSubgroupAvcSicGetInterRawSadsINTEL"
      (t ("IdResultType" "Payload"))
    "OpVariableLengthArrayINTEL"
      (t ("IdResultType" "Length"))
    "OpSaveMemoryINTEL"
      (t ("IdResultType"))
    "OpRestoreMemoryINTEL"
      (nil ("Ptr"))
    "OpArbitraryFloatSinCosPiINTEL"
      (t ("IdResultType" "A" "Ma" "MResult" "Subnormal" "Rounding" "RoundingAccuracy"))
    "OpArbitraryFloatCastINTEL"
      (t ("IdResultType" "A" "Ma" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatCastFromIntINTEL"
      (t ("IdResultType" "A" "Mresult" "FromSign" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatCastToIntINTEL"
      (t ("IdResultType" "A" "Ma" "ToSign" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatAddINTEL"
      (t ("IdResultType" "A" "Ma" "B" "Mb" "MResult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatSubINTEL"
      (t ("IdResultType" "A" "Ma" "B" "Mb" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatMulINTEL"
      (t ("IdResultType" "A" "Ma" "B" "Mb" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatDivINTEL"
      (t ("IdResultType" "A" "Ma" "B" "Mb" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatGTINTEL"
      (t ("IdResultType" "A" "Ma" "B" "Mb"))
    "OpArbitraryFloatGEINTEL"
      (t ("IdResultType" "A" "Ma" "B" "Mb"))
    "OpArbitraryFloatLTINTEL"
      (t ("IdResultType" "A" "Ma" "B" "Mb"))
    "OpArbitraryFloatLEINTEL"
      (t ("IdResultType" "A" "Ma" "B" "Mb"))
    "OpArbitraryFloatEQINTEL"
      (t ("IdResultType" "A" "Ma" "B" "Mb"))
    "OpArbitraryFloatRecipINTEL"
      (t ("IdResultType" "A" "Ma" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatRSqrtINTEL"
      (t ("IdResultType" "A" "Ma" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatCbrtINTEL"
      (t ("IdResultType" "A" "Ma" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatHypotINTEL"
      (t ("IdResultType" "A" "Ma" "B" "Mb" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatSqrtINTEL"
      (t ("IdResultType" "A" "Ma" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatLogINTEL"
      (t ("IdResultType" "A" "Ma" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatLog2INTEL"
      (t ("IdResultType" "A" "Ma" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatLog10INTEL"
      (t ("IdResultType" "A" "Ma" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatLog1pINTEL"
      (t ("IdResultType" "A" "Ma" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatExpINTEL"
      (t ("IdResultType" "A" "Ma" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatExp2INTEL"
      (t ("IdResultType" "A" "Ma" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatExp10INTEL"
      (t ("IdResultType" "A" "Ma" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatExpm1INTEL"
      (t ("IdResultType" "A" "Ma" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatSinINTEL"
      (t ("IdResultType" "A" "Ma" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatCosINTEL"
      (t ("IdResultType" "A" "Ma" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatSinCosINTEL"
      (t ("IdResultType" "A" "Ma" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatSinPiINTEL"
      (t ("IdResultType" "A" "Ma" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatCosPiINTEL"
      (t ("IdResultType" "A" "Ma" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatASinINTEL"
      (t ("IdResultType" "A" "Ma" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatASinPiINTEL"
      (t ("IdResultType" "A" "Ma" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatACosINTEL"
      (t ("IdResultType" "A" "M1" "Mout" "EnableSubnormals" "RoundingMode" "RoundingAccuracy"))
    "OpArbitraryFloatACosPiINTEL"
      (t ("IdResultType" "A" "Ma" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatATanINTEL"
      (t ("IdResultType" "A" "Ma" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatATanPiINTEL"
      (t ("IdResultType" "A" "Ma" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatATan2INTEL"
      (t ("IdResultType" "A" "Ma" "B" "Mb" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatPowINTEL"
      (t ("IdResultType" "A" "Ma" "B" "Mb" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatPowRINTEL"
      (t ("IdResultType" "A" "Ma" "B" "Mb" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpArbitraryFloatPowNINTEL"
      (t ("IdResultType" "A" "Ma" "B" "SignOfB" "Mresult" "Subnormal" "Rounding" "Accuracy"))
    "OpLoopControlINTEL"
      (nil ("Loop Control Parameters" "..."))
    "OpAliasDomainDeclINTEL"
      (t ("Name?"))
    "OpAliasScopeDeclINTEL"
      (t ("Alias Domain" "Name?"))
    "OpAliasScopeListDeclINTEL"
      (t ("AliasScope 1, AliasScope 2, ..." "..."))
    "OpFixedSqrtINTEL"
      (t ("IdResultType" "Input" "S" "I" "rI" "Q" "O"))
    "OpFixedRecipINTEL"
      (t ("IdResultType" "Input" "S" "I" "rI" "Q" "O"))
    "OpFixedRsqrtINTEL"
      (t ("IdResultType" "Input" "S" "I" "rI" "Q" "O"))
    "OpFixedSinINTEL"
      (t ("IdResultType" "Input" "S" "I" "rI" "Q" "O"))
    "OpFixedCosINTEL"
      (t ("IdResultType" "Input" "S" "I" "rI" "Q" "O"))
    "OpFixedSinCosINTEL"
      (t ("IdResultType" "Input" "S" "I" "rI" "Q" "O"))
    "OpFixedSinPiINTEL"
      (t ("IdResultType" "Input" "S" "I" "rI" "Q" "O"))
    "OpFixedCosPiINTEL"
      (t ("IdResultType" "Input" "S" "I" "rI" "Q" "O"))
    "OpFixedSinCosPiINTEL"
      (t ("IdResultType" "Input" "S" "I" "rI" "Q" "O"))
    "OpFixedLogINTEL"
      (t ("IdResultType" "Input" "S" "I" "rI" "Q" "O"))
    "OpFixedExpINTEL"
      (t ("IdResultType" "Input" "S" "I" "rI" "Q" "O"))
    "OpPtrCastToCrossWorkgroupINTEL"
      (t ("IdResultType" "Pointer"))
    "OpCrossWorkgroupCastToPtrINTEL"
      (t ("IdResultType" "Pointer"))
    "OpReadPipeBlockingINTEL"
      (t ("IdResultType" "Packet Size" "Packet Alignment"))
    "OpWritePipeBlockingINTEL"
      (t ("IdResultType" "Packet Size" "Packet Alignment"))
    "OpFPGARegINTEL"
      (t ("IdResultType" "Input"))
    "OpRayQueryGetRayTMinKHR"
      (t ("IdResultType" "RayQuery"))
    "OpRayQueryGetRayFlagsKHR"
      (t ("IdResultType" "RayQuery"))
    "OpRayQueryGetIntersectionTKHR"
      (t ("IdResultType" "RayQuery" "Intersection"))
    "OpRayQueryGetIntersectionInstanceCustomIndexKHR"
      (t ("IdResultType" "RayQuery" "Intersection"))
    "OpRayQueryGetIntersectionInstanceIdKHR"
      (t ("IdResultType" "RayQuery" "Intersection"))
    "OpRayQueryGetIntersectionInstanceShaderBindingTableRecordOffsetKHR"
      (t ("IdResultType" "RayQuery" "Intersection"))
    "OpRayQueryGetIntersectionGeometryIndexKHR"
      (t ("IdResultType" "RayQuery" "Intersection"))
    "OpRayQueryGetIntersectionPrimitiveIndexKHR"
      (t ("IdResultType" "RayQuery" "Intersection"))
    "OpRayQueryGetIntersectionBarycentricsKHR"
      (t ("IdResultType" "RayQuery" "Intersection"))
    "OpRayQueryGetIntersectionFrontFaceKHR"
      (t ("IdResultType" "RayQuery" "Intersection"))
    "OpRayQueryGetIntersectionCandidateAABBOpaqueKHR"
      (t ("IdResultType" "RayQuery"))
    "OpRayQueryGetIntersectionObjectRayDirectionKHR"
      (t ("IdResultType" "RayQuery" "Intersection"))
    "OpRayQueryGetIntersectionObjectRayOriginKHR"
      (t ("IdResultType" "RayQuery" "Intersection"))
    "OpRayQueryGetWorldRayDirectionKHR"
      (t ("IdResultType" "RayQuery"))
    "OpRayQueryGetWorldRayOriginKHR"
      (t ("IdResultType" "RayQuery"))
    "OpRayQueryGetIntersectionObjectToWorldKHR"
      (t ("IdResultType" "RayQuery" "Intersection"))
    "OpRayQueryGetIntersectionWorldToObjectKHR"
      (t ("IdResultType" "RayQuery" "Intersection"))
    "OpAtomicFAddEXT"
      (t ("IdResultType" "Pointer" "Memory" "Semantics" "Value"))
    "OpTypeBufferSurfaceINTEL"
      (t ("AccessQualifier"))
    "OpTypeStructContinuedINTEL"
      (nil ("Member 0 type, member 1 type, ..." "..."))
    "OpConstantCompositeContinuedINTEL"
      (nil ("Constituents" "..."))
    "OpSpecConstantCompositeContinuedINTEL"
      (nil ("Constituents" "..."))
    "OpCompositeConstructContinuedINTEL"
      (t ("IdResultType" "Constituents" "..."))
    "OpConvertFToBF16INTEL"
      (t ("IdResultType" "Float Value"))
    "OpConvertBF16ToFINTEL"
      (t ("IdResultType" "BFloat16 Value"))
    "OpControlBarrierArriveINTEL"
      (nil ("Execution" "Memory" "Semantics"))
    "OpControlBarrierWaitINTEL"
      (nil ("Execution" "Memory" "Semantics"))
    "OpArithmeticFenceEXT"
      (t ("IdResultType" "Target"))
    "OpTaskSequenceCreateINTEL"
      (t ("IdResultType" "Function" "Pipelined" "UseStallEnableClusters" "GetCapacity" "AsyncCapacity"))
    "OpTaskSequenceAsyncINTEL"
      (nil ("Sequence" "Arguments" "..."))
    "OpTaskSequenceGetINTEL"
      (t ("IdResultType" "Sequence"))
    "OpTaskSequenceReleaseINTEL"
      (nil ("Sequence"))
    "OpTypeTaskSequenceINTEL"
      (t nil)
    "OpSubgroupBlockPrefetchINTEL"
      (nil ("Ptr" "NumBytes" "MemoryAccess?"))
    "OpSubgroup2DBlockLoadINTEL"
      (nil ("Element Size" "Block Width" "Block Height" "Block Count" "Src Base Pointer" "Memory Width" "Memory Height" "Memory Pitch" "Coordinate" "Dst Pointer"))
    "OpSubgroup2DBlockLoadTransformINTEL"
      (nil ("Element Size" "Block Width" "Block Height" "Block Count" "Src Base Pointer" "Memory Width" "Memory Height" "Memory Pitch" "Coordinate" "Dst Pointer"))
    "OpSubgroup2DBlockLoadTransposeINTEL"
      (nil ("Element Size" "Block Width" "Block Height" "Block Count" "Src Base Pointer" "Memory Width" "Memory Height" "Memory Pitch" "Coordinate" "Dst Pointer"))
    "OpSubgroup2DBlockPrefetchINTEL"
      (nil ("Element Size" "Block Width" "Block Height" "Block Count" "Src Base Pointer" "Memory Width" "Memory Height" "Memory Pitch" "Coordinate"))
    "OpSubgroup2DBlockStoreINTEL"
      (nil ("Element Size" "Block Width" "Block Height" "Block Count" "Src Pointer" "Dst Base Pointer" "Memory Width" "Memory Height" "Memory Pitch" "Coordinate"))
    "OpSubgroupMatrixMultiplyAccumulateINTEL"
      (t ("IdResultType" "K Dim" "Matrix A" "Matrix B" "Matrix C" "MatrixMultiplyAccumulateOperands?"))
    "OpBitwiseFunctionINTEL"
      (t ("IdResultType" "A" "B" "C" "LUTIndex"))
    "OpUntypedVariableLengthArrayINTEL"
      (t ("IdResultType" "Element Type" "Length"))
    "OpConditionalExtensionINTEL"
      (nil ("Condition" "Name"))
    "OpConditionalEntryPointINTEL"
      (nil ("Condition" "ExecutionModel" "Entry Point" "Name" "Interface" "..."))
    "OpConditionalCapabilityINTEL"
      (nil ("Condition" "Capability"))
    "OpSpecConstantTargetINTEL"
      (t ("IdResultType" "Target" "Features" "..."))
    "OpSpecConstantArchitectureINTEL"
      (t ("IdResultType" "Category" "Family" "Opcode" "Architecture"))
    "OpSpecConstantCapabilitiesINTEL"
      (t ("IdResultType" "Capabilities" "..."))
    "OpConditionalCopyObjectINTEL"
      (t ("IdResultType" "Condition 0, Operand 0" "Condition 1, Operand 1" "..."))
    "OpGroupIMulKHR"
      (t ("IdResultType" "Execution" "Operation" "X"))
    "OpGroupFMulKHR"
      (t ("IdResultType" "Execution" "Operation" "X"))
    "OpGroupBitwiseAndKHR"
      (t ("IdResultType" "Execution" "Operation" "X"))
    "OpGroupBitwiseOrKHR"
      (t ("IdResultType" "Execution" "Operation" "X"))
    "OpGroupBitwiseXorKHR"
      (t ("IdResultType" "Execution" "Operation" "X"))
    "OpGroupLogicalAndKHR"
      (t ("IdResultType" "Execution" "Operation" "X"))
    "OpGroupLogicalOrKHR"
      (t ("IdResultType" "Execution" "Operation" "X"))
    "OpGroupLogicalXorKHR"
      (t ("IdResultType" "Execution" "Operation" "X"))
    "OpRoundFToTF32INTEL"
      (t ("IdResultType" "Float Value"))
    "OpMaskedGatherINTEL"
      (t ("IdResultType" "PtrVector" "Alignment" "Mask" "FillEmpty"))
    "OpMaskedScatterINTEL"
      (nil ("InputVector" "PtrVector" "Alignment" "Mask"))
    "OpConvertHandleToImageINTEL"
      (t ("IdResultType" "Operand"))
    "OpConvertHandleToSamplerINTEL"
      (t ("IdResultType" "Operand"))
    "OpConvertHandleToSampledImageINTEL"
      (t ("IdResultType" "Operand")))))

(provide 'spirv-mode-tables)
