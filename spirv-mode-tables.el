;;; Tables of SPIR-V instructions, for spirv-mode.

;; This file is generated automatically by `spirv-mode-update-tables'.

(defconst spirv-mode--instructions
  #(hash-table data (
    "OpNop"
      (nil nil)
    "OpUndef"
      (t ("IdResultType"))
    "OpSourceContinued"
      (nil ("Continued Source"))
    "OpSource"
      (nil ("SourceLanguage" "Version" "'File'?" "'Source'?"))
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
      (t ("IdResultType" "Set" "Instruction" "Operand 1" "Operand 2" "..."))
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
      (t ("Width"))
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
      (t ("Member 0 type" "member 1 type" "..."))
    "OpTypeOpaque"
      (t ("The name of the opaque type."))
    "OpTypePointer"
      (t ("StorageClass" "Type"))
    "OpTypeFunction"
      (t ("Return Type" "Parameter 0 Type" "Parameter 1 Type" "..."))
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
      (t ("IdResultType" "Function" "Argument 0" "Argument 1" "..."))
    "OpVariable"
      (t ("IdResultType" "StorageClass" "'Initializer'?"))
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
      (t ("IdResultType" "Execution" "Value" "Id"))
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
      (t ("IdResultType" "Execution" "Value" "Id"))
    "OpGroupNonUniformShuffleXor"
      (t ("IdResultType" "Execution" "Value" "Mask"))
    "OpGroupNonUniformShuffleUp"
      (t ("IdResultType" "Execution" "Value" "Delta"))
    "OpGroupNonUniformShuffleDown"
      (t ("IdResultType" "Execution" "Value" "Delta"))
    "OpGroupNonUniformIAdd"
      (t ("IdResultType" "Execution" "Operation" "Value" "'ClusterSize'?"))
    "OpGroupNonUniformFAdd"
      (t ("IdResultType" "Execution" "Operation" "Value" "'ClusterSize'?"))
    "OpGroupNonUniformIMul"
      (t ("IdResultType" "Execution" "Operation" "Value" "'ClusterSize'?"))
    "OpGroupNonUniformFMul"
      (t ("IdResultType" "Execution" "Operation" "Value" "'ClusterSize'?"))
    "OpGroupNonUniformSMin"
      (t ("IdResultType" "Execution" "Operation" "Value" "'ClusterSize'?"))
    "OpGroupNonUniformUMin"
      (t ("IdResultType" "Execution" "Operation" "Value" "'ClusterSize'?"))
    "OpGroupNonUniformFMin"
      (t ("IdResultType" "Execution" "Operation" "Value" "'ClusterSize'?"))
    "OpGroupNonUniformSMax"
      (t ("IdResultType" "Execution" "Operation" "Value" "'ClusterSize'?"))
    "OpGroupNonUniformUMax"
      (t ("IdResultType" "Execution" "Operation" "Value" "'ClusterSize'?"))
    "OpGroupNonUniformFMax"
      (t ("IdResultType" "Execution" "Operation" "Value" "'ClusterSize'?"))
    "OpGroupNonUniformBitwiseAnd"
      (t ("IdResultType" "Execution" "Operation" "Value" "'ClusterSize'?"))
    "OpGroupNonUniformBitwiseOr"
      (t ("IdResultType" "Execution" "Operation" "Value" "'ClusterSize'?"))
    "OpGroupNonUniformBitwiseXor"
      (t ("IdResultType" "Execution" "Operation" "Value" "'ClusterSize'?"))
    "OpGroupNonUniformLogicalAnd"
      (t ("IdResultType" "Execution" "Operation" "Value" "'ClusterSize'?"))
    "OpGroupNonUniformLogicalOr"
      (t ("IdResultType" "Execution" "Operation" "Value" "'ClusterSize'?"))
    "OpGroupNonUniformLogicalXor"
      (t ("IdResultType" "Execution" "Operation" "Value" "'ClusterSize'?"))
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
    "OpTerminateInvocation"
      (nil nil)
    "OpSubgroupBallotKHR"
      (t ("IdResultType" "Predicate"))
    "OpSubgroupFirstInvocationKHR"
      (t ("IdResultType" "Value"))
    "OpSubgroupAllKHR"
      (t ("IdResultType" "Predicate"))
    "OpSubgroupAnyKHR"
      (t ("IdResultType" "Predicate"))
    "OpSubgroupAllEqualKHR"
      (t ("IdResultType" "Predicate"))
    "OpSubgroupReadInvocationKHR"
      (t ("IdResultType" "Value" "Index"))
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
      (t ("IdResultType" "Execution"))
    "OpImageSampleFootprintNV"
      (t ("IdResultType" "Sampled Image" "Coordinate" "Granularity" "Coarse" "ImageOperands?"))
    "OpGroupNonUniformPartitionNV"
      (t ("IdResultType" "Value"))
    "OpWritePackedPrimitiveIndices4x8NV"
      (nil ("Index Offset" "Packed Indices"))
    "OpReportIntersectionNV"
      (t ("IdResultType" "Hit" "HitKind"))
    "OpReportIntersectionKHR"
      (t ("IdResultType" "Hit" "HitKind"))
    "OpIgnoreIntersectionNV"
      (nil nil)
    "OpTerminateRayNV"
      (nil nil)
    "OpTraceNV"
      (nil ("Accel" "Ray Flags" "Cull Mask" "SBT Offset" "SBT Stride" "Miss Index" "Ray Origin" "Ray Tmin" "Ray Direction" "Ray Tmax" "PayloadId"))
    "OpTypeAccelerationStructureNV"
      (t nil)
    "OpTypeAccelerationStructureKHR"
      (t nil)
    "OpExecuteCallableNV"
      (nil ("SBT Index" "Callable DataId"))
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
    "OpDemoteToHelperInvocationEXT"
      (nil nil)
    "OpIsHelperInvocationEXT"
      (t ("IdResultType"))
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
    "OpFunctionPointerINTEL"
      (t ("IdResultType" "Function"))
    "OpFunctionPointerCallINTEL"
      (t ("IdResultType" "Operand 1" "..."))
    "OpDecorateString"
      (nil ("Target" "Decoration"))
    "OpDecorateStringGOOGLE"
      (nil ("Target" "Decoration"))
    "OpMemberDecorateString"
      (nil ("Struct Type" "Member" "Decoration"))
    "OpMemberDecorateStringGOOGLE"
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
      (t ("IdResultType" "Fwd Ref Offset" "Bwd Ref Offset" "id> Search Window Config" "Payload"))
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
    "OpLoopControlINTEL"
      (nil ("Loop Control Parameters" "..."))
    "OpReadPipeBlockingINTEL"
      (t ("IdResultType" "Packet Size" "Packet Alignment"))
    "OpWritePipeBlockingINTEL"
      (t ("IdResultType" "Packet Size" "Packet Alignment"))
    "OpFPGARegINTEL"
      (t ("IdResultType" "Result" "Input"))
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
      (t ("IdResultType" "Pointer" "Memory" "Semantics" "Value")))))

(provide 'spirv-mode-tables)
