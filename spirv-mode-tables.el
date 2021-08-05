(defconst spirv-mode--instruction-names
  '("OpNop"
    "OpUndef"
    "OpSourceContinued"
    "OpSource"
    "OpSourceExtension"
    "OpName"
    "OpMemberName"
    "OpString"
    "OpLine"
    "OpExtension"
    "OpExtInstImport"
    "OpExtInst"
    "OpMemoryModel"
    "OpEntryPoint"
    "OpExecutionMode"
    "OpCapability"
    "OpTypeVoid"
    "OpTypeBool"
    "OpTypeInt"
    "OpTypeFloat"
    "OpTypeVector"
    "OpTypeMatrix"
    "OpTypeImage"
    "OpTypeSampler"
    "OpTypeSampledImage"
    "OpTypeArray"
    "OpTypeRuntimeArray"
    "OpTypeStruct"
    "OpTypeOpaque"
    "OpTypePointer"
    "OpTypeFunction"
    "OpTypeEvent"
    "OpTypeDeviceEvent"
    "OpTypeReserveId"
    "OpTypeQueue"
    "OpTypePipe"
    "OpTypeForwardPointer"
    "OpConstantTrue"
    "OpConstantFalse"
    "OpConstant"
    "OpConstantComposite"
    "OpConstantSampler"
    "OpConstantNull"
    "OpSpecConstantTrue"
    "OpSpecConstantFalse"
    "OpSpecConstant"
    "OpSpecConstantComposite"
    "OpSpecConstantOp"
    "OpFunction"
    "OpFunctionParameter"
    "OpFunctionEnd"
    "OpFunctionCall"
    "OpVariable"
    "OpImageTexelPointer"
    "OpLoad"
    "OpStore"
    "OpCopyMemory"
    "OpCopyMemorySized"
    "OpAccessChain"
    "OpInBoundsAccessChain"
    "OpPtrAccessChain"
    "OpArrayLength"
    "OpGenericPtrMemSemantics"
    "OpInBoundsPtrAccessChain"
    "OpDecorate"
    "OpMemberDecorate"
    "OpDecorationGroup"
    "OpGroupDecorate"
    "OpGroupMemberDecorate"
    "OpVectorExtractDynamic"
    "OpVectorInsertDynamic"
    "OpVectorShuffle"
    "OpCompositeConstruct"
    "OpCompositeExtract"
    "OpCompositeInsert"
    "OpCopyObject"
    "OpTranspose"
    "OpSampledImage"
    "OpImageSampleImplicitLod"
    "OpImageSampleExplicitLod"
    "OpImageSampleDrefImplicitLod"
    "OpImageSampleDrefExplicitLod"
    "OpImageSampleProjImplicitLod"
    "OpImageSampleProjExplicitLod"
    "OpImageSampleProjDrefImplicitLod"
    "OpImageSampleProjDrefExplicitLod"
    "OpImageFetch"
    "OpImageGather"
    "OpImageDrefGather"
    "OpImageRead"
    "OpImageWrite"
    "OpImage"
    "OpImageQueryFormat"
    "OpImageQueryOrder"
    "OpImageQuerySizeLod"
    "OpImageQuerySize"
    "OpImageQueryLod"
    "OpImageQueryLevels"
    "OpImageQuerySamples"
    "OpConvertFToU"
    "OpConvertFToS"
    "OpConvertSToF"
    "OpConvertUToF"
    "OpUConvert"
    "OpSConvert"
    "OpFConvert"
    "OpQuantizeToF16"
    "OpConvertPtrToU"
    "OpSatConvertSToU"
    "OpSatConvertUToS"
    "OpConvertUToPtr"
    "OpPtrCastToGeneric"
    "OpGenericCastToPtr"
    "OpGenericCastToPtrExplicit"
    "OpBitcast"
    "OpSNegate"
    "OpFNegate"
    "OpIAdd"
    "OpFAdd"
    "OpISub"
    "OpFSub"
    "OpIMul"
    "OpFMul"
    "OpUDiv"
    "OpSDiv"
    "OpFDiv"
    "OpUMod"
    "OpSRem"
    "OpSMod"
    "OpFRem"
    "OpFMod"
    "OpVectorTimesScalar"
    "OpMatrixTimesScalar"
    "OpVectorTimesMatrix"
    "OpMatrixTimesVector"
    "OpMatrixTimesMatrix"
    "OpOuterProduct"
    "OpDot"
    "OpIAddCarry"
    "OpISubBorrow"
    "OpUMulExtended"
    "OpSMulExtended"
    "OpAny"
    "OpAll"
    "OpIsNan"
    "OpIsInf"
    "OpIsFinite"
    "OpIsNormal"
    "OpSignBitSet"
    "OpLessOrGreater"
    "OpOrdered"
    "OpUnordered"
    "OpLogicalEqual"
    "OpLogicalNotEqual"
    "OpLogicalOr"
    "OpLogicalAnd"
    "OpLogicalNot"
    "OpSelect"
    "OpIEqual"
    "OpINotEqual"
    "OpUGreaterThan"
    "OpSGreaterThan"
    "OpUGreaterThanEqual"
    "OpSGreaterThanEqual"
    "OpULessThan"
    "OpSLessThan"
    "OpULessThanEqual"
    "OpSLessThanEqual"
    "OpFOrdEqual"
    "OpFUnordEqual"
    "OpFOrdNotEqual"
    "OpFUnordNotEqual"
    "OpFOrdLessThan"
    "OpFUnordLessThan"
    "OpFOrdGreaterThan"
    "OpFUnordGreaterThan"
    "OpFOrdLessThanEqual"
    "OpFUnordLessThanEqual"
    "OpFOrdGreaterThanEqual"
    "OpFUnordGreaterThanEqual"
    "OpShiftRightLogical"
    "OpShiftRightArithmetic"
    "OpShiftLeftLogical"
    "OpBitwiseOr"
    "OpBitwiseXor"
    "OpBitwiseAnd"
    "OpNot"
    "OpBitFieldInsert"
    "OpBitFieldSExtract"
    "OpBitFieldUExtract"
    "OpBitReverse"
    "OpBitCount"
    "OpDPdx"
    "OpDPdy"
    "OpFwidth"
    "OpDPdxFine"
    "OpDPdyFine"
    "OpFwidthFine"
    "OpDPdxCoarse"
    "OpDPdyCoarse"
    "OpFwidthCoarse"
    "OpEmitVertex"
    "OpEndPrimitive"
    "OpEmitStreamVertex"
    "OpEndStreamPrimitive"
    "OpControlBarrier"
    "OpMemoryBarrier"
    "OpAtomicLoad"
    "OpAtomicStore"
    "OpAtomicExchange"
    "OpAtomicCompareExchange"
    "OpAtomicCompareExchangeWeak"
    "OpAtomicIIncrement"
    "OpAtomicIDecrement"
    "OpAtomicIAdd"
    "OpAtomicISub"
    "OpAtomicSMin"
    "OpAtomicUMin"
    "OpAtomicSMax"
    "OpAtomicUMax"
    "OpAtomicAnd"
    "OpAtomicOr"
    "OpAtomicXor"
    "OpPhi"
    "OpLoopMerge"
    "OpSelectionMerge"
    "OpLabel"
    "OpBranch"
    "OpBranchConditional"
    "OpSwitch"
    "OpKill"
    "OpReturn"
    "OpReturnValue"
    "OpUnreachable"
    "OpLifetimeStart"
    "OpLifetimeStop"
    "OpGroupAsyncCopy"
    "OpGroupWaitEvents"
    "OpGroupAll"
    "OpGroupAny"
    "OpGroupBroadcast"
    "OpGroupIAdd"
    "OpGroupFAdd"
    "OpGroupFMin"
    "OpGroupUMin"
    "OpGroupSMin"
    "OpGroupFMax"
    "OpGroupUMax"
    "OpGroupSMax"
    "OpReadPipe"
    "OpWritePipe"
    "OpReservedReadPipe"
    "OpReservedWritePipe"
    "OpReserveReadPipePackets"
    "OpReserveWritePipePackets"
    "OpCommitReadPipe"
    "OpCommitWritePipe"
    "OpIsValidReserveId"
    "OpGetNumPipePackets"
    "OpGetMaxPipePackets"
    "OpGroupReserveReadPipePackets"
    "OpGroupReserveWritePipePackets"
    "OpGroupCommitReadPipe"
    "OpGroupCommitWritePipe"
    "OpEnqueueMarker"
    "OpEnqueueKernel"
    "OpGetKernelNDrangeSubGroupCount"
    "OpGetKernelNDrangeMaxSubGroupSize"
    "OpGetKernelWorkGroupSize"
    "OpGetKernelPreferredWorkGroupSizeMultiple"
    "OpRetainEvent"
    "OpReleaseEvent"
    "OpCreateUserEvent"
    "OpIsValidEvent"
    "OpSetUserEventStatus"
    "OpCaptureEventProfilingInfo"
    "OpGetDefaultQueue"
    "OpBuildNDRange"
    "OpImageSparseSampleImplicitLod"
    "OpImageSparseSampleExplicitLod"
    "OpImageSparseSampleDrefImplicitLod"
    "OpImageSparseSampleDrefExplicitLod"
    "OpImageSparseSampleProjImplicitLod"
    "OpImageSparseSampleProjExplicitLod"
    "OpImageSparseSampleProjDrefImplicitLod"
    "OpImageSparseSampleProjDrefExplicitLod"
    "OpImageSparseFetch"
    "OpImageSparseGather"
    "OpImageSparseDrefGather"
    "OpImageSparseTexelsResident"
    "OpNoLine"
    "OpAtomicFlagTestAndSet"
    "OpAtomicFlagClear"
    "OpImageSparseRead"
    "OpSizeOf"
    "OpTypePipeStorage"
    "OpConstantPipeStorage"
    "OpCreatePipeFromPipeStorage"
    "OpGetKernelLocalSizeForSubgroupCount"
    "OpGetKernelMaxNumSubgroups"
    "OpTypeNamedBarrier"
    "OpNamedBarrierInitialize"
    "OpMemoryNamedBarrier"
    "OpModuleProcessed"
    "OpExecutionModeId"
    "OpDecorateId"
    "OpGroupNonUniformElect"
    "OpGroupNonUniformAll"
    "OpGroupNonUniformAny"
    "OpGroupNonUniformAllEqual"
    "OpGroupNonUniformBroadcast"
    "OpGroupNonUniformBroadcastFirst"
    "OpGroupNonUniformBallot"
    "OpGroupNonUniformInverseBallot"
    "OpGroupNonUniformBallotBitExtract"
    "OpGroupNonUniformBallotBitCount"
    "OpGroupNonUniformBallotFindLSB"
    "OpGroupNonUniformBallotFindMSB"
    "OpGroupNonUniformShuffle"
    "OpGroupNonUniformShuffleXor"
    "OpGroupNonUniformShuffleUp"
    "OpGroupNonUniformShuffleDown"
    "OpGroupNonUniformIAdd"
    "OpGroupNonUniformFAdd"
    "OpGroupNonUniformIMul"
    "OpGroupNonUniformFMul"
    "OpGroupNonUniformSMin"
    "OpGroupNonUniformUMin"
    "OpGroupNonUniformFMin"
    "OpGroupNonUniformSMax"
    "OpGroupNonUniformUMax"
    "OpGroupNonUniformFMax"
    "OpGroupNonUniformBitwiseAnd"
    "OpGroupNonUniformBitwiseOr"
    "OpGroupNonUniformBitwiseXor"
    "OpGroupNonUniformLogicalAnd"
    "OpGroupNonUniformLogicalOr"
    "OpGroupNonUniformLogicalXor"
    "OpGroupNonUniformQuadBroadcast"
    "OpGroupNonUniformQuadSwap"
    "OpCopyLogical"
    "OpPtrEqual"
    "OpPtrNotEqual"
    "OpPtrDiff"
    "OpTerminateInvocation"
    "OpSubgroupBallotKHR"
    "OpSubgroupFirstInvocationKHR"
    "OpSubgroupAllKHR"
    "OpSubgroupAnyKHR"
    "OpSubgroupAllEqualKHR"
    "OpSubgroupReadInvocationKHR"
    "OpTraceRayKHR"
    "OpExecuteCallableKHR"
    "OpConvertUToAccelerationStructureKHR"
    "OpIgnoreIntersectionKHR"
    "OpTerminateRayKHR"
    "OpTypeRayQueryKHR"
    "OpRayQueryInitializeKHR"
    "OpRayQueryTerminateKHR"
    "OpRayQueryGenerateIntersectionKHR"
    "OpRayQueryConfirmIntersectionKHR"
    "OpRayQueryProceedKHR"
    "OpRayQueryGetIntersectionTypeKHR"
    "OpGroupIAddNonUniformAMD"
    "OpGroupFAddNonUniformAMD"
    "OpGroupFMinNonUniformAMD"
    "OpGroupUMinNonUniformAMD"
    "OpGroupSMinNonUniformAMD"
    "OpGroupFMaxNonUniformAMD"
    "OpGroupUMaxNonUniformAMD"
    "OpGroupSMaxNonUniformAMD"
    "OpFragmentMaskFetchAMD"
    "OpFragmentFetchAMD"
    "OpReadClockKHR"
    "OpImageSampleFootprintNV"
    "OpGroupNonUniformPartitionNV"
    "OpWritePackedPrimitiveIndices4x8NV"
    "OpReportIntersectionNV"
    "OpReportIntersectionKHR"
    "OpIgnoreIntersectionNV"
    "OpTerminateRayNV"
    "OpTraceNV"
    "OpTypeAccelerationStructureNV"
    "OpTypeAccelerationStructureKHR"
    "OpExecuteCallableNV"
    "OpTypeCooperativeMatrixNV"
    "OpCooperativeMatrixLoadNV"
    "OpCooperativeMatrixStoreNV"
    "OpCooperativeMatrixMulAddNV"
    "OpCooperativeMatrixLengthNV"
    "OpBeginInvocationInterlockEXT"
    "OpEndInvocationInterlockEXT"
    "OpDemoteToHelperInvocationEXT"
    "OpIsHelperInvocationEXT"
    "OpSubgroupShuffleINTEL"
    "OpSubgroupShuffleDownINTEL"
    "OpSubgroupShuffleUpINTEL"
    "OpSubgroupShuffleXorINTEL"
    "OpSubgroupBlockReadINTEL"
    "OpSubgroupBlockWriteINTEL"
    "OpSubgroupImageBlockReadINTEL"
    "OpSubgroupImageBlockWriteINTEL"
    "OpSubgroupImageMediaBlockReadINTEL"
    "OpSubgroupImageMediaBlockWriteINTEL"
    "OpUCountLeadingZerosINTEL"
    "OpUCountTrailingZerosINTEL"
    "OpAbsISubINTEL"
    "OpAbsUSubINTEL"
    "OpIAddSatINTEL"
    "OpUAddSatINTEL"
    "OpIAverageINTEL"
    "OpUAverageINTEL"
    "OpIAverageRoundedINTEL"
    "OpUAverageRoundedINTEL"
    "OpISubSatINTEL"
    "OpUSubSatINTEL"
    "OpIMul32x16INTEL"
    "OpUMul32x16INTEL"
    "OpFunctionPointerINTEL"
    "OpFunctionPointerCallINTEL"
    "OpDecorateString"
    "OpDecorateStringGOOGLE"
    "OpMemberDecorateString"
    "OpMemberDecorateStringGOOGLE"
    "OpVmeImageINTEL"
    "OpTypeVmeImageINTEL"
    "OpTypeAvcImePayloadINTEL"
    "OpTypeAvcRefPayloadINTEL"
    "OpTypeAvcSicPayloadINTEL"
    "OpTypeAvcMcePayloadINTEL"
    "OpTypeAvcMceResultINTEL"
    "OpTypeAvcImeResultINTEL"
    "OpTypeAvcImeResultSingleReferenceStreamoutINTEL"
    "OpTypeAvcImeResultDualReferenceStreamoutINTEL"
    "OpTypeAvcImeSingleReferenceStreaminINTEL"
    "OpTypeAvcImeDualReferenceStreaminINTEL"
    "OpTypeAvcRefResultINTEL"
    "OpTypeAvcSicResultINTEL"
    "OpSubgroupAvcMceGetDefaultInterBaseMultiReferencePenaltyINTEL"
    "OpSubgroupAvcMceSetInterBaseMultiReferencePenaltyINTEL"
    "OpSubgroupAvcMceGetDefaultInterShapePenaltyINTEL"
    "OpSubgroupAvcMceSetInterShapePenaltyINTEL"
    "OpSubgroupAvcMceGetDefaultInterDirectionPenaltyINTEL"
    "OpSubgroupAvcMceSetInterDirectionPenaltyINTEL"
    "OpSubgroupAvcMceGetDefaultIntraLumaShapePenaltyINTEL"
    "OpSubgroupAvcMceGetDefaultInterMotionVectorCostTableINTEL"
    "OpSubgroupAvcMceGetDefaultHighPenaltyCostTableINTEL"
    "OpSubgroupAvcMceGetDefaultMediumPenaltyCostTableINTEL"
    "OpSubgroupAvcMceGetDefaultLowPenaltyCostTableINTEL"
    "OpSubgroupAvcMceSetMotionVectorCostFunctionINTEL"
    "OpSubgroupAvcMceGetDefaultIntraLumaModePenaltyINTEL"
    "OpSubgroupAvcMceGetDefaultNonDcLumaIntraPenaltyINTEL"
    "OpSubgroupAvcMceGetDefaultIntraChromaModeBasePenaltyINTEL"
    "OpSubgroupAvcMceSetAcOnlyHaarINTEL"
    "OpSubgroupAvcMceSetSourceInterlacedFieldPolarityINTEL"
    "OpSubgroupAvcMceSetSingleReferenceInterlacedFieldPolarityINTEL"
    "OpSubgroupAvcMceSetDualReferenceInterlacedFieldPolaritiesINTEL"
    "OpSubgroupAvcMceConvertToImePayloadINTEL"
    "OpSubgroupAvcMceConvertToImeResultINTEL"
    "OpSubgroupAvcMceConvertToRefPayloadINTEL"
    "OpSubgroupAvcMceConvertToRefResultINTEL"
    "OpSubgroupAvcMceConvertToSicPayloadINTEL"
    "OpSubgroupAvcMceConvertToSicResultINTEL"
    "OpSubgroupAvcMceGetMotionVectorsINTEL"
    "OpSubgroupAvcMceGetInterDistortionsINTEL"
    "OpSubgroupAvcMceGetBestInterDistortionsINTEL"
    "OpSubgroupAvcMceGetInterMajorShapeINTEL"
    "OpSubgroupAvcMceGetInterMinorShapeINTEL"
    "OpSubgroupAvcMceGetInterDirectionsINTEL"
    "OpSubgroupAvcMceGetInterMotionVectorCountINTEL"
    "OpSubgroupAvcMceGetInterReferenceIdsINTEL"
    "OpSubgroupAvcMceGetInterReferenceInterlacedFieldPolaritiesINTEL"
    "OpSubgroupAvcImeInitializeINTEL"
    "OpSubgroupAvcImeSetSingleReferenceINTEL"
    "OpSubgroupAvcImeSetDualReferenceINTEL"
    "OpSubgroupAvcImeRefWindowSizeINTEL"
    "OpSubgroupAvcImeAdjustRefOffsetINTEL"
    "OpSubgroupAvcImeConvertToMcePayloadINTEL"
    "OpSubgroupAvcImeSetMaxMotionVectorCountINTEL"
    "OpSubgroupAvcImeSetUnidirectionalMixDisableINTEL"
    "OpSubgroupAvcImeSetEarlySearchTerminationThresholdINTEL"
    "OpSubgroupAvcImeSetWeightedSadINTEL"
    "OpSubgroupAvcImeEvaluateWithSingleReferenceINTEL"
    "OpSubgroupAvcImeEvaluateWithDualReferenceINTEL"
    "OpSubgroupAvcImeEvaluateWithSingleReferenceStreaminINTEL"
    "OpSubgroupAvcImeEvaluateWithDualReferenceStreaminINTEL"
    "OpSubgroupAvcImeEvaluateWithSingleReferenceStreamoutINTEL"
    "OpSubgroupAvcImeEvaluateWithDualReferenceStreamoutINTEL"
    "OpSubgroupAvcImeEvaluateWithSingleReferenceStreaminoutINTEL"
    "OpSubgroupAvcImeEvaluateWithDualReferenceStreaminoutINTEL"
    "OpSubgroupAvcImeConvertToMceResultINTEL"
    "OpSubgroupAvcImeGetSingleReferenceStreaminINTEL"
    "OpSubgroupAvcImeGetDualReferenceStreaminINTEL"
    "OpSubgroupAvcImeStripSingleReferenceStreamoutINTEL"
    "OpSubgroupAvcImeStripDualReferenceStreamoutINTEL"
    "OpSubgroupAvcImeGetStreamoutSingleReferenceMajorShapeMotionVectorsINTEL"
    "OpSubgroupAvcImeGetStreamoutSingleReferenceMajorShapeDistortionsINTEL"
    "OpSubgroupAvcImeGetStreamoutSingleReferenceMajorShapeReferenceIdsINTEL"
    "OpSubgroupAvcImeGetStreamoutDualReferenceMajorShapeMotionVectorsINTEL"
    "OpSubgroupAvcImeGetStreamoutDualReferenceMajorShapeDistortionsINTEL"
    "OpSubgroupAvcImeGetStreamoutDualReferenceMajorShapeReferenceIdsINTEL"
    "OpSubgroupAvcImeGetBorderReachedINTEL"
    "OpSubgroupAvcImeGetTruncatedSearchIndicationINTEL"
    "OpSubgroupAvcImeGetUnidirectionalEarlySearchTerminationINTEL"
    "OpSubgroupAvcImeGetWeightingPatternMinimumMotionVectorINTEL"
    "OpSubgroupAvcImeGetWeightingPatternMinimumDistortionINTEL"
    "OpSubgroupAvcFmeInitializeINTEL"
    "OpSubgroupAvcBmeInitializeINTEL"
    "OpSubgroupAvcRefConvertToMcePayloadINTEL"
    "OpSubgroupAvcRefSetBidirectionalMixDisableINTEL"
    "OpSubgroupAvcRefSetBilinearFilterEnableINTEL"
    "OpSubgroupAvcRefEvaluateWithSingleReferenceINTEL"
    "OpSubgroupAvcRefEvaluateWithDualReferenceINTEL"
    "OpSubgroupAvcRefEvaluateWithMultiReferenceINTEL"
    "OpSubgroupAvcRefEvaluateWithMultiReferenceInterlacedINTEL"
    "OpSubgroupAvcRefConvertToMceResultINTEL"
    "OpSubgroupAvcSicInitializeINTEL"
    "OpSubgroupAvcSicConfigureSkcINTEL"
    "OpSubgroupAvcSicConfigureIpeLumaINTEL"
    "OpSubgroupAvcSicConfigureIpeLumaChromaINTEL"
    "OpSubgroupAvcSicGetMotionVectorMaskINTEL"
    "OpSubgroupAvcSicConvertToMcePayloadINTEL"
    "OpSubgroupAvcSicSetIntraLumaShapePenaltyINTEL"
    "OpSubgroupAvcSicSetIntraLumaModeCostFunctionINTEL"
    "OpSubgroupAvcSicSetIntraChromaModeCostFunctionINTEL"
    "OpSubgroupAvcSicSetBilinearFilterEnableINTEL"
    "OpSubgroupAvcSicSetSkcForwardTransformEnableINTEL"
    "OpSubgroupAvcSicSetBlockBasedRawSkipSadINTEL"
    "OpSubgroupAvcSicEvaluateIpeINTEL"
    "OpSubgroupAvcSicEvaluateWithSingleReferenceINTEL"
    "OpSubgroupAvcSicEvaluateWithDualReferenceINTEL"
    "OpSubgroupAvcSicEvaluateWithMultiReferenceINTEL"
    "OpSubgroupAvcSicEvaluateWithMultiReferenceInterlacedINTEL"
    "OpSubgroupAvcSicConvertToMceResultINTEL"
    "OpSubgroupAvcSicGetIpeLumaShapeINTEL"
    "OpSubgroupAvcSicGetBestIpeLumaDistortionINTEL"
    "OpSubgroupAvcSicGetBestIpeChromaDistortionINTEL"
    "OpSubgroupAvcSicGetPackedIpeLumaModesINTEL"
    "OpSubgroupAvcSicGetIpeChromaModeINTEL"
    "OpSubgroupAvcSicGetPackedSkcLumaCountThresholdINTEL"
    "OpSubgroupAvcSicGetPackedSkcLumaSumThresholdINTEL"
    "OpSubgroupAvcSicGetInterRawSadsINTEL"
    "OpLoopControlINTEL"
    "OpReadPipeBlockingINTEL"
    "OpWritePipeBlockingINTEL"
    "OpFPGARegINTEL"
    "OpRayQueryGetRayTMinKHR"
    "OpRayQueryGetRayFlagsKHR"
    "OpRayQueryGetIntersectionTKHR"
    "OpRayQueryGetIntersectionInstanceCustomIndexKHR"
    "OpRayQueryGetIntersectionInstanceIdKHR"
    "OpRayQueryGetIntersectionInstanceShaderBindingTableRecordOffsetKHR"
    "OpRayQueryGetIntersectionGeometryIndexKHR"
    "OpRayQueryGetIntersectionPrimitiveIndexKHR"
    "OpRayQueryGetIntersectionBarycentricsKHR"
    "OpRayQueryGetIntersectionFrontFaceKHR"
    "OpRayQueryGetIntersectionCandidateAABBOpaqueKHR"
    "OpRayQueryGetIntersectionObjectRayDirectionKHR"
    "OpRayQueryGetIntersectionObjectRayOriginKHR"
    "OpRayQueryGetWorldRayDirectionKHR"
    "OpRayQueryGetWorldRayOriginKHR"
    "OpRayQueryGetIntersectionObjectToWorldKHR"
    "OpRayQueryGetIntersectionWorldToObjectKHR"
    "OpAtomicFAddEXT"))

(defconst spirv-mode--instruction-operands
  #s(hash-table size 730 test equal rehash-size 1.5 rehash-threshold 0.8125 data
                ("OpNop" nil "OpUndef"
                 ("IdResultType")
                 "OpSourceContinued"
                 ("Continued Source")
                 "OpSource"
                 ("SourceLanguage" "Version" "File" "Source")
                 "OpSourceExtension"
                 ("Extension")
                 "OpName"
                 ("Target" "Name")
                 "OpMemberName"
                 ("Type" "Member" "Name")
                 "OpString"
                 ("String")
                 "OpLine"
                 ("File" "Line" "Column")
                 "OpExtension"
                 ("Name")
                 "OpExtInstImport"
                 ("Name")
                 "OpExtInst"
                 ("IdResultType" "Set" "Instruction" "Operand 1" "Operand 2" "...")
                 "OpMemoryModel"
                 ("AddressingModel" "MemoryModel")
                 "OpEntryPoint"
                 ("ExecutionModel" "Entry Point" "Name" "Interface" "...")
                 "OpExecutionMode"
                 ("Entry Point" "Mode")
                 "OpCapability"
                 ("Capability")
                 "OpTypeVoid" nil "OpTypeBool" nil "OpTypeInt"
                 ("Width" "Signedness")
                 "OpTypeFloat"
                 ("Width")
                 "OpTypeVector"
                 ("Component Type" "Component Count")
                 "OpTypeMatrix"
                 ("Column Type" "Column Count")
                 "OpTypeImage"
                 ("Sampled Type" "Dim" "Depth" "Arrayed" "MS" "Sampled" "ImageFormat" "AccessQualifier")
                 "OpTypeSampler" nil "OpTypeSampledImage"
                 ("Image Type")
                 "OpTypeArray"
                 ("Element Type" "Length")
                 "OpTypeRuntimeArray"
                 ("Element Type")
                 "OpTypeStruct"
                 ("Member 0 type" "member 1 type" "...")
                 "OpTypeOpaque"
                 ("The name of the opaque type.")
                 "OpTypePointer"
                 ("StorageClass" "Type")
                 "OpTypeFunction"
                 ("Return Type" "Parameter 0 Type" "Parameter 1 Type" "...")
                 "OpTypeEvent" nil "OpTypeDeviceEvent" nil "OpTypeReserveId" nil "OpTypeQueue" nil "OpTypePipe"
                 ("Qualifier")
                 "OpTypeForwardPointer"
                 ("Pointer Type" "StorageClass")
                 "OpConstantTrue"
                 ("IdResultType")
                 "OpConstantFalse"
                 ("IdResultType")
                 "OpConstant"
                 ("IdResultType" "Value")
                 "OpConstantComposite"
                 ("IdResultType" "Constituents" "...")
                 "OpConstantSampler"
                 ("IdResultType" "SamplerAddressingMode" "Param" "SamplerFilterMode")
                 "OpConstantNull"
                 ("IdResultType")
                 "OpSpecConstantTrue"
                 ("IdResultType")
                 "OpSpecConstantFalse"
                 ("IdResultType")
                 "OpSpecConstant"
                 ("IdResultType" "Value")
                 "OpSpecConstantComposite"
                 ("IdResultType" "Constituents" "...")
                 "OpSpecConstantOp"
                 ("IdResultType" "Opcode")
                 "OpFunction"
                 ("IdResultType" "FunctionControl" "Function Type")
                 "OpFunctionParameter"
                 ("IdResultType")
                 "OpFunctionEnd" nil "OpFunctionCall"
                 ("IdResultType" "Function" "Argument 0" "Argument 1" "...")
                 "OpVariable"
                 ("IdResultType" "StorageClass" "Initializer")
                 "OpImageTexelPointer"
                 ("IdResultType" "Image" "Coordinate" "Sample")
                 "OpLoad"
                 ("IdResultType" "Pointer" "MemoryAccess")
                 "OpStore"
                 ("Pointer" "Object" "MemoryAccess")
                 "OpCopyMemory"
                 ("Target" "Source" "MemoryAccess" "MemoryAccess")
                 "OpCopyMemorySized"
                 ("Target" "Source" "Size" "MemoryAccess" "MemoryAccess")
                 "OpAccessChain"
                 ("IdResultType" "Base" "Indexes" "...")
                 "OpInBoundsAccessChain"
                 ("IdResultType" "Base" "Indexes" "...")
                 "OpPtrAccessChain"
                 ("IdResultType" "Base" "Element" "Indexes" "...")
                 "OpArrayLength"
                 ("IdResultType" "Structure" "Array member")
                 "OpGenericPtrMemSemantics"
                 ("IdResultType" "Pointer")
                 "OpInBoundsPtrAccessChain"
                 ("IdResultType" "Base" "Element" "Indexes" "...")
                 "OpDecorate"
                 ("Target" "Decoration")
                 "OpMemberDecorate"
                 ("Structure Type" "Member" "Decoration")
                 "OpDecorationGroup" nil "OpGroupDecorate"
                 ("Decoration Group" "Targets" "...")
                 "OpGroupMemberDecorate"
                 ("Decoration Group" "Targets" "...")
                 "OpVectorExtractDynamic"
                 ("IdResultType" "Vector" "Index")
                 "OpVectorInsertDynamic"
                 ("IdResultType" "Vector" "Component" "Index")
                 "OpVectorShuffle"
                 ("IdResultType" "Vector 1" "Vector 2" "Components" "...")
                 "OpCompositeConstruct"
                 ("IdResultType" "Constituents" "...")
                 "OpCompositeExtract"
                 ("IdResultType" "Composite" "Indexes" "...")
                 "OpCompositeInsert"
                 ("IdResultType" "Object" "Composite" "Indexes" "...")
                 "OpCopyObject"
                 ("IdResultType" "Operand")
                 "OpTranspose"
                 ("IdResultType" "Matrix")
                 "OpSampledImage"
                 ("IdResultType" "Image" "Sampler")
                 "OpImageSampleImplicitLod"
                 ("IdResultType" "Sampled Image" "Coordinate" "ImageOperands")
                 "OpImageSampleExplicitLod"
                 ("IdResultType" "Sampled Image" "Coordinate" "ImageOperands")
                 "OpImageSampleDrefImplicitLod"
                 ("IdResultType" "Sampled Image" "Coordinate" "D~ref~" "ImageOperands")
                 "OpImageSampleDrefExplicitLod"
                 ("IdResultType" "Sampled Image" "Coordinate" "D~ref~" "ImageOperands")
                 "OpImageSampleProjImplicitLod"
                 ("IdResultType" "Sampled Image" "Coordinate" "ImageOperands")
                 "OpImageSampleProjExplicitLod"
                 ("IdResultType" "Sampled Image" "Coordinate" "ImageOperands")
                 "OpImageSampleProjDrefImplicitLod"
                 ("IdResultType" "Sampled Image" "Coordinate" "D~ref~" "ImageOperands")
                 "OpImageSampleProjDrefExplicitLod"
                 ("IdResultType" "Sampled Image" "Coordinate" "D~ref~" "ImageOperands")
                 "OpImageFetch"
                 ("IdResultType" "Image" "Coordinate" "ImageOperands")
                 "OpImageGather"
                 ("IdResultType" "Sampled Image" "Coordinate" "Component" "ImageOperands")
                 "OpImageDrefGather"
                 ("IdResultType" "Sampled Image" "Coordinate" "D~ref~" "ImageOperands")
                 "OpImageRead"
                 ("IdResultType" "Image" "Coordinate" "ImageOperands")
                 "OpImageWrite"
                 ("Image" "Coordinate" "Texel" "ImageOperands")
                 "OpImage"
                 ("IdResultType" "Sampled Image")
                 "OpImageQueryFormat"
                 ("IdResultType" "Image")
                 "OpImageQueryOrder"
                 ("IdResultType" "Image")
                 "OpImageQuerySizeLod"
                 ("IdResultType" "Image" "Level of Detail")
                 "OpImageQuerySize"
                 ("IdResultType" "Image")
                 "OpImageQueryLod"
                 ("IdResultType" "Sampled Image" "Coordinate")
                 "OpImageQueryLevels"
                 ("IdResultType" "Image")
                 "OpImageQuerySamples"
                 ("IdResultType" "Image")
                 "OpConvertFToU"
                 ("IdResultType" "Float Value")
                 "OpConvertFToS"
                 ("IdResultType" "Float Value")
                 "OpConvertSToF"
                 ("IdResultType" "Signed Value")
                 "OpConvertUToF"
                 ("IdResultType" "Unsigned Value")
                 "OpUConvert"
                 ("IdResultType" "Unsigned Value")
                 "OpSConvert"
                 ("IdResultType" "Signed Value")
                 "OpFConvert"
                 ("IdResultType" "Float Value")
                 "OpQuantizeToF16"
                 ("IdResultType" "Value")
                 "OpConvertPtrToU"
                 ("IdResultType" "Pointer")
                 "OpSatConvertSToU"
                 ("IdResultType" "Signed Value")
                 "OpSatConvertUToS"
                 ("IdResultType" "Unsigned Value")
                 "OpConvertUToPtr"
                 ("IdResultType" "Integer Value")
                 "OpPtrCastToGeneric"
                 ("IdResultType" "Pointer")
                 "OpGenericCastToPtr"
                 ("IdResultType" "Pointer")
                 "OpGenericCastToPtrExplicit"
                 ("IdResultType" "Pointer" "Storage")
                 "OpBitcast"
                 ("IdResultType" "Operand")
                 "OpSNegate"
                 ("IdResultType" "Operand")
                 "OpFNegate"
                 ("IdResultType" "Operand")
                 "OpIAdd"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpFAdd"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpISub"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpFSub"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpIMul"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpFMul"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpUDiv"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpSDiv"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpFDiv"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpUMod"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpSRem"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpSMod"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpFRem"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpFMod"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpVectorTimesScalar"
                 ("IdResultType" "Vector" "Scalar")
                 "OpMatrixTimesScalar"
                 ("IdResultType" "Matrix" "Scalar")
                 "OpVectorTimesMatrix"
                 ("IdResultType" "Vector" "Matrix")
                 "OpMatrixTimesVector"
                 ("IdResultType" "Matrix" "Vector")
                 "OpMatrixTimesMatrix"
                 ("IdResultType" "LeftMatrix" "RightMatrix")
                 "OpOuterProduct"
                 ("IdResultType" "Vector 1" "Vector 2")
                 "OpDot"
                 ("IdResultType" "Vector 1" "Vector 2")
                 "OpIAddCarry"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpISubBorrow"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpUMulExtended"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpSMulExtended"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpAny"
                 ("IdResultType" "Vector")
                 "OpAll"
                 ("IdResultType" "Vector")
                 "OpIsNan"
                 ("IdResultType" "x")
                 "OpIsInf"
                 ("IdResultType" "x")
                 "OpIsFinite"
                 ("IdResultType" "x")
                 "OpIsNormal"
                 ("IdResultType" "x")
                 "OpSignBitSet"
                 ("IdResultType" "x")
                 "OpLessOrGreater"
                 ("IdResultType" "x" "y")
                 "OpOrdered"
                 ("IdResultType" "x" "y")
                 "OpUnordered"
                 ("IdResultType" "x" "y")
                 "OpLogicalEqual"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpLogicalNotEqual"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpLogicalOr"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpLogicalAnd"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpLogicalNot"
                 ("IdResultType" "Operand")
                 "OpSelect"
                 ("IdResultType" "Condition" "Object 1" "Object 2")
                 "OpIEqual"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpINotEqual"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpUGreaterThan"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpSGreaterThan"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpUGreaterThanEqual"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpSGreaterThanEqual"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpULessThan"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpSLessThan"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpULessThanEqual"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpSLessThanEqual"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpFOrdEqual"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpFUnordEqual"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpFOrdNotEqual"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpFUnordNotEqual"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpFOrdLessThan"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpFUnordLessThan"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpFOrdGreaterThan"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpFUnordGreaterThan"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpFOrdLessThanEqual"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpFUnordLessThanEqual"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpFOrdGreaterThanEqual"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpFUnordGreaterThanEqual"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpShiftRightLogical"
                 ("IdResultType" "Base" "Shift")
                 "OpShiftRightArithmetic"
                 ("IdResultType" "Base" "Shift")
                 "OpShiftLeftLogical"
                 ("IdResultType" "Base" "Shift")
                 "OpBitwiseOr"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpBitwiseXor"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpBitwiseAnd"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpNot"
                 ("IdResultType" "Operand")
                 "OpBitFieldInsert"
                 ("IdResultType" "Base" "Insert" "Offset" "Count")
                 "OpBitFieldSExtract"
                 ("IdResultType" "Base" "Offset" "Count")
                 "OpBitFieldUExtract"
                 ("IdResultType" "Base" "Offset" "Count")
                 "OpBitReverse"
                 ("IdResultType" "Base")
                 "OpBitCount"
                 ("IdResultType" "Base")
                 "OpDPdx"
                 ("IdResultType" "P")
                 "OpDPdy"
                 ("IdResultType" "P")
                 "OpFwidth"
                 ("IdResultType" "P")
                 "OpDPdxFine"
                 ("IdResultType" "P")
                 "OpDPdyFine"
                 ("IdResultType" "P")
                 "OpFwidthFine"
                 ("IdResultType" "P")
                 "OpDPdxCoarse"
                 ("IdResultType" "P")
                 "OpDPdyCoarse"
                 ("IdResultType" "P")
                 "OpFwidthCoarse"
                 ("IdResultType" "P")
                 "OpEmitVertex" nil "OpEndPrimitive" nil "OpEmitStreamVertex"
                 ("Stream")
                 "OpEndStreamPrimitive"
                 ("Stream")
                 "OpControlBarrier"
                 ("Execution" "Memory" "Semantics")
                 "OpMemoryBarrier"
                 ("Memory" "Semantics")
                 "OpAtomicLoad"
                 ("IdResultType" "Pointer" "Memory" "Semantics")
                 "OpAtomicStore"
                 ("Pointer" "Memory" "Semantics" "Value")
                 "OpAtomicExchange"
                 ("IdResultType" "Pointer" "Memory" "Semantics" "Value")
                 "OpAtomicCompareExchange"
                 ("IdResultType" "Pointer" "Memory" "Equal" "Unequal" "Value" "Comparator")
                 "OpAtomicCompareExchangeWeak"
                 ("IdResultType" "Pointer" "Memory" "Equal" "Unequal" "Value" "Comparator")
                 "OpAtomicIIncrement"
                 ("IdResultType" "Pointer" "Memory" "Semantics")
                 "OpAtomicIDecrement"
                 ("IdResultType" "Pointer" "Memory" "Semantics")
                 "OpAtomicIAdd"
                 ("IdResultType" "Pointer" "Memory" "Semantics" "Value")
                 "OpAtomicISub"
                 ("IdResultType" "Pointer" "Memory" "Semantics" "Value")
                 "OpAtomicSMin"
                 ("IdResultType" "Pointer" "Memory" "Semantics" "Value")
                 "OpAtomicUMin"
                 ("IdResultType" "Pointer" "Memory" "Semantics" "Value")
                 "OpAtomicSMax"
                 ("IdResultType" "Pointer" "Memory" "Semantics" "Value")
                 "OpAtomicUMax"
                 ("IdResultType" "Pointer" "Memory" "Semantics" "Value")
                 "OpAtomicAnd"
                 ("IdResultType" "Pointer" "Memory" "Semantics" "Value")
                 "OpAtomicOr"
                 ("IdResultType" "Pointer" "Memory" "Semantics" "Value")
                 "OpAtomicXor"
                 ("IdResultType" "Pointer" "Memory" "Semantics" "Value")
                 "OpPhi"
                 ("IdResultType" "Variable, Parent, ..." "...")
                 "OpLoopMerge"
                 ("Merge Block" "Continue Target" "LoopControl")
                 "OpSelectionMerge"
                 ("Merge Block" "SelectionControl")
                 "OpLabel" nil "OpBranch"
                 ("Target Label")
                 "OpBranchConditional"
                 ("Condition" "True Label" "False Label" "Branch weights" "...")
                 "OpSwitch"
                 ("Selector" "Default" "Target" "...")
                 "OpKill" nil "OpReturn" nil "OpReturnValue"
                 ("Value")
                 "OpUnreachable" nil "OpLifetimeStart"
                 ("Pointer" "Size")
                 "OpLifetimeStop"
                 ("Pointer" "Size")
                 "OpGroupAsyncCopy"
                 ("IdResultType" "Execution" "Destination" "Source" "Num Elements" "Stride" "Event")
                 "OpGroupWaitEvents"
                 ("Execution" "Num Events" "Events List")
                 "OpGroupAll"
                 ("IdResultType" "Execution" "Predicate")
                 "OpGroupAny"
                 ("IdResultType" "Execution" "Predicate")
                 "OpGroupBroadcast"
                 ("IdResultType" "Execution" "Value" "LocalId")
                 "OpGroupIAdd"
                 ("IdResultType" "Execution" "Operation" "X")
                 "OpGroupFAdd"
                 ("IdResultType" "Execution" "Operation" "X")
                 "OpGroupFMin"
                 ("IdResultType" "Execution" "Operation" "X")
                 "OpGroupUMin"
                 ("IdResultType" "Execution" "Operation" "X")
                 "OpGroupSMin"
                 ("IdResultType" "Execution" "Operation" "X")
                 "OpGroupFMax"
                 ("IdResultType" "Execution" "Operation" "X")
                 "OpGroupUMax"
                 ("IdResultType" "Execution" "Operation" "X")
                 "OpGroupSMax"
                 ("IdResultType" "Execution" "Operation" "X")
                 "OpReadPipe"
                 ("IdResultType" "Pipe" "Pointer" "Packet Size" "Packet Alignment")
                 "OpWritePipe"
                 ("IdResultType" "Pipe" "Pointer" "Packet Size" "Packet Alignment")
                 "OpReservedReadPipe"
                 ("IdResultType" "Pipe" "Reserve Id" "Index" "Pointer" "Packet Size" "Packet Alignment")
                 "OpReservedWritePipe"
                 ("IdResultType" "Pipe" "Reserve Id" "Index" "Pointer" "Packet Size" "Packet Alignment")
                 "OpReserveReadPipePackets"
                 ("IdResultType" "Pipe" "Num Packets" "Packet Size" "Packet Alignment")
                 "OpReserveWritePipePackets"
                 ("IdResultType" "Pipe" "Num Packets" "Packet Size" "Packet Alignment")
                 "OpCommitReadPipe"
                 ("Pipe" "Reserve Id" "Packet Size" "Packet Alignment")
                 "OpCommitWritePipe"
                 ("Pipe" "Reserve Id" "Packet Size" "Packet Alignment")
                 "OpIsValidReserveId"
                 ("IdResultType" "Reserve Id")
                 "OpGetNumPipePackets"
                 ("IdResultType" "Pipe" "Packet Size" "Packet Alignment")
                 "OpGetMaxPipePackets"
                 ("IdResultType" "Pipe" "Packet Size" "Packet Alignment")
                 "OpGroupReserveReadPipePackets"
                 ("IdResultType" "Execution" "Pipe" "Num Packets" "Packet Size" "Packet Alignment")
                 "OpGroupReserveWritePipePackets"
                 ("IdResultType" "Execution" "Pipe" "Num Packets" "Packet Size" "Packet Alignment")
                 "OpGroupCommitReadPipe"
                 ("Execution" "Pipe" "Reserve Id" "Packet Size" "Packet Alignment")
                 "OpGroupCommitWritePipe"
                 ("Execution" "Pipe" "Reserve Id" "Packet Size" "Packet Alignment")
                 "OpEnqueueMarker"
                 ("IdResultType" "Queue" "Num Events" "Wait Events" "Ret Event")
                 "OpEnqueueKernel"
                 ("IdResultType" "Queue" "Flags" "ND Range" "Num Events" "Wait Events" "Ret Event" "Invoke" "Param" "Param Size" "Param Align" "Local Size" "...")
                 "OpGetKernelNDrangeSubGroupCount"
                 ("IdResultType" "ND Range" "Invoke" "Param" "Param Size" "Param Align")
                 "OpGetKernelNDrangeMaxSubGroupSize"
                 ("IdResultType" "ND Range" "Invoke" "Param" "Param Size" "Param Align")
                 "OpGetKernelWorkGroupSize"
                 ("IdResultType" "Invoke" "Param" "Param Size" "Param Align")
                 "OpGetKernelPreferredWorkGroupSizeMultiple"
                 ("IdResultType" "Invoke" "Param" "Param Size" "Param Align")
                 "OpRetainEvent"
                 ("Event")
                 "OpReleaseEvent"
                 ("Event")
                 "OpCreateUserEvent"
                 ("IdResultType")
                 "OpIsValidEvent"
                 ("IdResultType" "Event")
                 "OpSetUserEventStatus"
                 ("Event" "Status")
                 "OpCaptureEventProfilingInfo"
                 ("Event" "Profiling Info" "Value")
                 "OpGetDefaultQueue"
                 ("IdResultType")
                 "OpBuildNDRange"
                 ("IdResultType" "GlobalWorkSize" "LocalWorkSize" "GlobalWorkOffset")
                 "OpImageSparseSampleImplicitLod"
                 ("IdResultType" "Sampled Image" "Coordinate" "ImageOperands")
                 "OpImageSparseSampleExplicitLod"
                 ("IdResultType" "Sampled Image" "Coordinate" "ImageOperands")
                 "OpImageSparseSampleDrefImplicitLod"
                 ("IdResultType" "Sampled Image" "Coordinate" "D~ref~" "ImageOperands")
                 "OpImageSparseSampleDrefExplicitLod"
                 ("IdResultType" "Sampled Image" "Coordinate" "D~ref~" "ImageOperands")
                 "OpImageSparseSampleProjImplicitLod"
                 ("IdResultType" "Sampled Image" "Coordinate" "ImageOperands")
                 "OpImageSparseSampleProjExplicitLod"
                 ("IdResultType" "Sampled Image" "Coordinate" "ImageOperands")
                 "OpImageSparseSampleProjDrefImplicitLod"
                 ("IdResultType" "Sampled Image" "Coordinate" "D~ref~" "ImageOperands")
                 "OpImageSparseSampleProjDrefExplicitLod"
                 ("IdResultType" "Sampled Image" "Coordinate" "D~ref~" "ImageOperands")
                 "OpImageSparseFetch"
                 ("IdResultType" "Image" "Coordinate" "ImageOperands")
                 "OpImageSparseGather"
                 ("IdResultType" "Sampled Image" "Coordinate" "Component" "ImageOperands")
                 "OpImageSparseDrefGather"
                 ("IdResultType" "Sampled Image" "Coordinate" "D~ref~" "ImageOperands")
                 "OpImageSparseTexelsResident"
                 ("IdResultType" "Resident Code")
                 "OpNoLine" nil "OpAtomicFlagTestAndSet"
                 ("IdResultType" "Pointer" "Memory" "Semantics")
                 "OpAtomicFlagClear"
                 ("Pointer" "Memory" "Semantics")
                 "OpImageSparseRead"
                 ("IdResultType" "Image" "Coordinate" "ImageOperands")
                 "OpSizeOf"
                 ("IdResultType" "Pointer")
                 "OpTypePipeStorage" nil "OpConstantPipeStorage"
                 ("IdResultType" "Packet Size" "Packet Alignment" "Capacity")
                 "OpCreatePipeFromPipeStorage"
                 ("IdResultType" "Pipe Storage")
                 "OpGetKernelLocalSizeForSubgroupCount"
                 ("IdResultType" "Subgroup Count" "Invoke" "Param" "Param Size" "Param Align")
                 "OpGetKernelMaxNumSubgroups"
                 ("IdResultType" "Invoke" "Param" "Param Size" "Param Align")
                 "OpTypeNamedBarrier" nil "OpNamedBarrierInitialize"
                 ("IdResultType" "Subgroup Count")
                 "OpMemoryNamedBarrier"
                 ("Named Barrier" "Memory" "Semantics")
                 "OpModuleProcessed"
                 ("Process")
                 "OpExecutionModeId"
                 ("Entry Point" "Mode")
                 "OpDecorateId"
                 ("Target" "Decoration")
                 "OpGroupNonUniformElect"
                 ("IdResultType" "Execution")
                 "OpGroupNonUniformAll"
                 ("IdResultType" "Execution" "Predicate")
                 "OpGroupNonUniformAny"
                 ("IdResultType" "Execution" "Predicate")
                 "OpGroupNonUniformAllEqual"
                 ("IdResultType" "Execution" "Value")
                 "OpGroupNonUniformBroadcast"
                 ("IdResultType" "Execution" "Value" "Id")
                 "OpGroupNonUniformBroadcastFirst"
                 ("IdResultType" "Execution" "Value")
                 "OpGroupNonUniformBallot"
                 ("IdResultType" "Execution" "Predicate")
                 "OpGroupNonUniformInverseBallot"
                 ("IdResultType" "Execution" "Value")
                 "OpGroupNonUniformBallotBitExtract"
                 ("IdResultType" "Execution" "Value" "Index")
                 "OpGroupNonUniformBallotBitCount"
                 ("IdResultType" "Execution" "Operation" "Value")
                 "OpGroupNonUniformBallotFindLSB"
                 ("IdResultType" "Execution" "Value")
                 "OpGroupNonUniformBallotFindMSB"
                 ("IdResultType" "Execution" "Value")
                 "OpGroupNonUniformShuffle"
                 ("IdResultType" "Execution" "Value" "Id")
                 "OpGroupNonUniformShuffleXor"
                 ("IdResultType" "Execution" "Value" "Mask")
                 "OpGroupNonUniformShuffleUp"
                 ("IdResultType" "Execution" "Value" "Delta")
                 "OpGroupNonUniformShuffleDown"
                 ("IdResultType" "Execution" "Value" "Delta")
                 "OpGroupNonUniformIAdd"
                 ("IdResultType" "Execution" "Operation" "Value" "ClusterSize")
                 "OpGroupNonUniformFAdd"
                 ("IdResultType" "Execution" "Operation" "Value" "ClusterSize")
                 "OpGroupNonUniformIMul"
                 ("IdResultType" "Execution" "Operation" "Value" "ClusterSize")
                 "OpGroupNonUniformFMul"
                 ("IdResultType" "Execution" "Operation" "Value" "ClusterSize")
                 "OpGroupNonUniformSMin"
                 ("IdResultType" "Execution" "Operation" "Value" "ClusterSize")
                 "OpGroupNonUniformUMin"
                 ("IdResultType" "Execution" "Operation" "Value" "ClusterSize")
                 "OpGroupNonUniformFMin"
                 ("IdResultType" "Execution" "Operation" "Value" "ClusterSize")
                 "OpGroupNonUniformSMax"
                 ("IdResultType" "Execution" "Operation" "Value" "ClusterSize")
                 "OpGroupNonUniformUMax"
                 ("IdResultType" "Execution" "Operation" "Value" "ClusterSize")
                 "OpGroupNonUniformFMax"
                 ("IdResultType" "Execution" "Operation" "Value" "ClusterSize")
                 "OpGroupNonUniformBitwiseAnd"
                 ("IdResultType" "Execution" "Operation" "Value" "ClusterSize")
                 "OpGroupNonUniformBitwiseOr"
                 ("IdResultType" "Execution" "Operation" "Value" "ClusterSize")
                 "OpGroupNonUniformBitwiseXor"
                 ("IdResultType" "Execution" "Operation" "Value" "ClusterSize")
                 "OpGroupNonUniformLogicalAnd"
                 ("IdResultType" "Execution" "Operation" "Value" "ClusterSize")
                 "OpGroupNonUniformLogicalOr"
                 ("IdResultType" "Execution" "Operation" "Value" "ClusterSize")
                 "OpGroupNonUniformLogicalXor"
                 ("IdResultType" "Execution" "Operation" "Value" "ClusterSize")
                 "OpGroupNonUniformQuadBroadcast"
                 ("IdResultType" "Execution" "Value" "Index")
                 "OpGroupNonUniformQuadSwap"
                 ("IdResultType" "Execution" "Value" "Direction")
                 "OpCopyLogical"
                 ("IdResultType" "Operand")
                 "OpPtrEqual"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpPtrNotEqual"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpPtrDiff"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpTerminateInvocation" nil "OpSubgroupBallotKHR"
                 ("IdResultType" "Predicate")
                 "OpSubgroupFirstInvocationKHR"
                 ("IdResultType" "Value")
                 "OpSubgroupAllKHR"
                 ("IdResultType" "Predicate")
                 "OpSubgroupAnyKHR"
                 ("IdResultType" "Predicate")
                 "OpSubgroupAllEqualKHR"
                 ("IdResultType" "Predicate")
                 "OpSubgroupReadInvocationKHR"
                 ("IdResultType" "Value" "Index")
                 "OpTraceRayKHR"
                 ("Accel" "Ray Flags" "Cull Mask" "SBT Offset" "SBT Stride" "Miss Index" "Ray Origin" "Ray Tmin" "Ray Direction" "Ray Tmax" "Payload")
                 "OpExecuteCallableKHR"
                 ("SBT Index" "Callable Data")
                 "OpConvertUToAccelerationStructureKHR"
                 ("IdResultType" "Accel")
                 "OpIgnoreIntersectionKHR" nil "OpTerminateRayKHR" nil "OpTypeRayQueryKHR" nil "OpRayQueryInitializeKHR"
                 ("RayQuery" "Accel" "RayFlags" "CullMask" "RayOrigin" "RayTMin" "RayDirection" "RayTMax")
                 "OpRayQueryTerminateKHR"
                 ("RayQuery")
                 "OpRayQueryGenerateIntersectionKHR"
                 ("RayQuery" "HitT")
                 "OpRayQueryConfirmIntersectionKHR"
                 ("RayQuery")
                 "OpRayQueryProceedKHR"
                 ("IdResultType" "RayQuery")
                 "OpRayQueryGetIntersectionTypeKHR"
                 ("IdResultType" "RayQuery" "Intersection")
                 "OpGroupIAddNonUniformAMD"
                 ("IdResultType" "Execution" "Operation" "X")
                 "OpGroupFAddNonUniformAMD"
                 ("IdResultType" "Execution" "Operation" "X")
                 "OpGroupFMinNonUniformAMD"
                 ("IdResultType" "Execution" "Operation" "X")
                 "OpGroupUMinNonUniformAMD"
                 ("IdResultType" "Execution" "Operation" "X")
                 "OpGroupSMinNonUniformAMD"
                 ("IdResultType" "Execution" "Operation" "X")
                 "OpGroupFMaxNonUniformAMD"
                 ("IdResultType" "Execution" "Operation" "X")
                 "OpGroupUMaxNonUniformAMD"
                 ("IdResultType" "Execution" "Operation" "X")
                 "OpGroupSMaxNonUniformAMD"
                 ("IdResultType" "Execution" "Operation" "X")
                 "OpFragmentMaskFetchAMD"
                 ("IdResultType" "Image" "Coordinate")
                 "OpFragmentFetchAMD"
                 ("IdResultType" "Image" "Coordinate" "Fragment Index")
                 "OpReadClockKHR"
                 ("IdResultType" "Execution")
                 "OpImageSampleFootprintNV"
                 ("IdResultType" "Sampled Image" "Coordinate" "Granularity" "Coarse" "ImageOperands")
                 "OpGroupNonUniformPartitionNV"
                 ("IdResultType" "Value")
                 "OpWritePackedPrimitiveIndices4x8NV"
                 ("Index Offset" "Packed Indices")
                 "OpReportIntersectionNV"
                 ("IdResultType" "Hit" "HitKind")
                 "OpReportIntersectionKHR"
                 ("IdResultType" "Hit" "HitKind")
                 "OpIgnoreIntersectionNV" nil "OpTerminateRayNV" nil "OpTraceNV"
                 ("Accel" "Ray Flags" "Cull Mask" "SBT Offset" "SBT Stride" "Miss Index" "Ray Origin" "Ray Tmin" "Ray Direction" "Ray Tmax" "PayloadId")
                 "OpTypeAccelerationStructureNV" nil "OpTypeAccelerationStructureKHR" nil "OpExecuteCallableNV"
                 ("SBT Index" "Callable DataId")
                 "OpTypeCooperativeMatrixNV"
                 ("Component Type" "Execution" "Rows" "Columns")
                 "OpCooperativeMatrixLoadNV"
                 ("IdResultType" "Pointer" "Stride" "Column Major" "MemoryAccess")
                 "OpCooperativeMatrixStoreNV"
                 ("Pointer" "Object" "Stride" "Column Major" "MemoryAccess")
                 "OpCooperativeMatrixMulAddNV"
                 ("IdResultType" "A" "B" "C")
                 "OpCooperativeMatrixLengthNV"
                 ("IdResultType" "Type")
                 "OpBeginInvocationInterlockEXT" nil "OpEndInvocationInterlockEXT" nil "OpDemoteToHelperInvocationEXT" nil "OpIsHelperInvocationEXT"
                 ("IdResultType")
                 "OpSubgroupShuffleINTEL"
                 ("IdResultType" "Data" "InvocationId")
                 "OpSubgroupShuffleDownINTEL"
                 ("IdResultType" "Current" "Next" "Delta")
                 "OpSubgroupShuffleUpINTEL"
                 ("IdResultType" "Previous" "Current" "Delta")
                 "OpSubgroupShuffleXorINTEL"
                 ("IdResultType" "Data" "Value")
                 "OpSubgroupBlockReadINTEL"
                 ("IdResultType" "Ptr")
                 "OpSubgroupBlockWriteINTEL"
                 ("Ptr" "Data")
                 "OpSubgroupImageBlockReadINTEL"
                 ("IdResultType" "Image" "Coordinate")
                 "OpSubgroupImageBlockWriteINTEL"
                 ("Image" "Coordinate" "Data")
                 "OpSubgroupImageMediaBlockReadINTEL"
                 ("IdResultType" "Image" "Coordinate" "Width" "Height")
                 "OpSubgroupImageMediaBlockWriteINTEL"
                 ("Image" "Coordinate" "Width" "Height" "Data")
                 "OpUCountLeadingZerosINTEL"
                 ("IdResultType" "Operand")
                 "OpUCountTrailingZerosINTEL"
                 ("IdResultType" "Operand")
                 "OpAbsISubINTEL"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpAbsUSubINTEL"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpIAddSatINTEL"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpUAddSatINTEL"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpIAverageINTEL"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpUAverageINTEL"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpIAverageRoundedINTEL"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpUAverageRoundedINTEL"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpISubSatINTEL"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpUSubSatINTEL"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpIMul32x16INTEL"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpUMul32x16INTEL"
                 ("IdResultType" "Operand 1" "Operand 2")
                 "OpFunctionPointerINTEL"
                 ("IdResultType" "Function")
                 "OpFunctionPointerCallINTEL"
                 ("IdResultType" "Operand 1" "...")
                 "OpDecorateString"
                 ("Target" "Decoration")
                 "OpDecorateStringGOOGLE"
                 ("Target" "Decoration")
                 "OpMemberDecorateString"
                 ("Struct Type" "Member" "Decoration")
                 "OpMemberDecorateStringGOOGLE"
                 ("Struct Type" "Member" "Decoration")
                 "OpVmeImageINTEL"
                 ("IdResultType" "Image Type" "Sampler")
                 "OpTypeVmeImageINTEL"
                 ("Image Type")
                 "OpTypeAvcImePayloadINTEL" nil "OpTypeAvcRefPayloadINTEL" nil "OpTypeAvcSicPayloadINTEL" nil "OpTypeAvcMcePayloadINTEL" nil "OpTypeAvcMceResultINTEL" nil "OpTypeAvcImeResultINTEL" nil "OpTypeAvcImeResultSingleReferenceStreamoutINTEL" nil "OpTypeAvcImeResultDualReferenceStreamoutINTEL" nil "OpTypeAvcImeSingleReferenceStreaminINTEL" nil "OpTypeAvcImeDualReferenceStreaminINTEL" nil "OpTypeAvcRefResultINTEL" nil "OpTypeAvcSicResultINTEL" nil "OpSubgroupAvcMceGetDefaultInterBaseMultiReferencePenaltyINTEL"
                 ("IdResultType" "Slice Type" "Qp")
                 "OpSubgroupAvcMceSetInterBaseMultiReferencePenaltyINTEL"
                 ("IdResultType" "Reference Base Penalty" "Payload")
                 "OpSubgroupAvcMceGetDefaultInterShapePenaltyINTEL"
                 ("IdResultType" "Slice Type" "Qp")
                 "OpSubgroupAvcMceSetInterShapePenaltyINTEL"
                 ("IdResultType" "Packed Shape Penalty" "Payload")
                 "OpSubgroupAvcMceGetDefaultInterDirectionPenaltyINTEL"
                 ("IdResultType" "Slice Type" "Qp")
                 "OpSubgroupAvcMceSetInterDirectionPenaltyINTEL"
                 ("IdResultType" "Direction Cost" "Payload")
                 "OpSubgroupAvcMceGetDefaultIntraLumaShapePenaltyINTEL"
                 ("IdResultType" "Slice Type" "Qp")
                 "OpSubgroupAvcMceGetDefaultInterMotionVectorCostTableINTEL"
                 ("IdResultType" "Slice Type" "Qp")
                 "OpSubgroupAvcMceGetDefaultHighPenaltyCostTableINTEL"
                 ("IdResultType")
                 "OpSubgroupAvcMceGetDefaultMediumPenaltyCostTableINTEL"
                 ("IdResultType")
                 "OpSubgroupAvcMceGetDefaultLowPenaltyCostTableINTEL"
                 ("IdResultType")
                 "OpSubgroupAvcMceSetMotionVectorCostFunctionINTEL"
                 ("IdResultType" "Packed Cost Center Delta" "Packed Cost Table" "Cost Precision" "Payload")
                 "OpSubgroupAvcMceGetDefaultIntraLumaModePenaltyINTEL"
                 ("IdResultType" "Slice Type" "Qp")
                 "OpSubgroupAvcMceGetDefaultNonDcLumaIntraPenaltyINTEL"
                 ("IdResultType")
                 "OpSubgroupAvcMceGetDefaultIntraChromaModeBasePenaltyINTEL"
                 ("IdResultType")
                 "OpSubgroupAvcMceSetAcOnlyHaarINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcMceSetSourceInterlacedFieldPolarityINTEL"
                 ("IdResultType" "Source Field Polarity" "Payload")
                 "OpSubgroupAvcMceSetSingleReferenceInterlacedFieldPolarityINTEL"
                 ("IdResultType" "Reference Field Polarity" "Payload")
                 "OpSubgroupAvcMceSetDualReferenceInterlacedFieldPolaritiesINTEL"
                 ("IdResultType" "Forward Reference Field Polarity" "Backward Reference Field Polarity" "Payload")
                 "OpSubgroupAvcMceConvertToImePayloadINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcMceConvertToImeResultINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcMceConvertToRefPayloadINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcMceConvertToRefResultINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcMceConvertToSicPayloadINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcMceConvertToSicResultINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcMceGetMotionVectorsINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcMceGetInterDistortionsINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcMceGetBestInterDistortionsINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcMceGetInterMajorShapeINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcMceGetInterMinorShapeINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcMceGetInterDirectionsINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcMceGetInterMotionVectorCountINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcMceGetInterReferenceIdsINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcMceGetInterReferenceInterlacedFieldPolaritiesINTEL"
                 ("IdResultType" "Packed Reference Ids" "Packed Reference Parameter Field Polarities" "Payload")
                 "OpSubgroupAvcImeInitializeINTEL"
                 ("IdResultType" "Src Coord" "Partition Mask" "SAD Adjustment")
                 "OpSubgroupAvcImeSetSingleReferenceINTEL"
                 ("IdResultType" "Ref Offset" "Search Window Config" "Payload")
                 "OpSubgroupAvcImeSetDualReferenceINTEL"
                 ("IdResultType" "Fwd Ref Offset" "Bwd Ref Offset" "id> Search Window Config" "Payload")
                 "OpSubgroupAvcImeRefWindowSizeINTEL"
                 ("IdResultType" "Search Window Config" "Dual Ref")
                 "OpSubgroupAvcImeAdjustRefOffsetINTEL"
                 ("IdResultType" "Ref Offset" "Src Coord" "Ref Window Size" "Image Size")
                 "OpSubgroupAvcImeConvertToMcePayloadINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcImeSetMaxMotionVectorCountINTEL"
                 ("IdResultType" "Max Motion Vector Count" "Payload")
                 "OpSubgroupAvcImeSetUnidirectionalMixDisableINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcImeSetEarlySearchTerminationThresholdINTEL"
                 ("IdResultType" "Threshold" "Payload")
                 "OpSubgroupAvcImeSetWeightedSadINTEL"
                 ("IdResultType" "Packed Sad Weights" "Payload")
                 "OpSubgroupAvcImeEvaluateWithSingleReferenceINTEL"
                 ("IdResultType" "Src Image" "Ref Image" "Payload")
                 "OpSubgroupAvcImeEvaluateWithDualReferenceINTEL"
                 ("IdResultType" "Src Image" "Fwd Ref Image" "Bwd Ref Image" "Payload")
                 "OpSubgroupAvcImeEvaluateWithSingleReferenceStreaminINTEL"
                 ("IdResultType" "Src Image" "Ref Image" "Payload" "Streamin Components")
                 "OpSubgroupAvcImeEvaluateWithDualReferenceStreaminINTEL"
                 ("IdResultType" "Src Image" "Fwd Ref Image" "Bwd Ref Image" "Payload" "Streamin Components")
                 "OpSubgroupAvcImeEvaluateWithSingleReferenceStreamoutINTEL"
                 ("IdResultType" "Src Image" "Ref Image" "Payload")
                 "OpSubgroupAvcImeEvaluateWithDualReferenceStreamoutINTEL"
                 ("IdResultType" "Src Image" "Fwd Ref Image" "Bwd Ref Image" "Payload")
                 "OpSubgroupAvcImeEvaluateWithSingleReferenceStreaminoutINTEL"
                 ("IdResultType" "Src Image" "Ref Image" "Payload" "Streamin Components")
                 "OpSubgroupAvcImeEvaluateWithDualReferenceStreaminoutINTEL"
                 ("IdResultType" "Src Image" "Fwd Ref Image" "Bwd Ref Image" "Payload" "Streamin Components")
                 "OpSubgroupAvcImeConvertToMceResultINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcImeGetSingleReferenceStreaminINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcImeGetDualReferenceStreaminINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcImeStripSingleReferenceStreamoutINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcImeStripDualReferenceStreamoutINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcImeGetStreamoutSingleReferenceMajorShapeMotionVectorsINTEL"
                 ("IdResultType" "Payload" "Major Shape")
                 "OpSubgroupAvcImeGetStreamoutSingleReferenceMajorShapeDistortionsINTEL"
                 ("IdResultType" "Payload" "Major Shape")
                 "OpSubgroupAvcImeGetStreamoutSingleReferenceMajorShapeReferenceIdsINTEL"
                 ("IdResultType" "Payload" "Major Shape")
                 "OpSubgroupAvcImeGetStreamoutDualReferenceMajorShapeMotionVectorsINTEL"
                 ("IdResultType" "Payload" "Major Shape" "Direction")
                 "OpSubgroupAvcImeGetStreamoutDualReferenceMajorShapeDistortionsINTEL"
                 ("IdResultType" "Payload" "Major Shape" "Direction")
                 "OpSubgroupAvcImeGetStreamoutDualReferenceMajorShapeReferenceIdsINTEL"
                 ("IdResultType" "Payload" "Major Shape" "Direction")
                 "OpSubgroupAvcImeGetBorderReachedINTEL"
                 ("IdResultType" "Image Select" "Payload")
                 "OpSubgroupAvcImeGetTruncatedSearchIndicationINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcImeGetUnidirectionalEarlySearchTerminationINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcImeGetWeightingPatternMinimumMotionVectorINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcImeGetWeightingPatternMinimumDistortionINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcFmeInitializeINTEL"
                 ("IdResultType" "Src Coord" "Motion Vectors" "Major Shapes" "Minor Shapes" "Direction" "Pixel Resolution" "Sad Adjustment")
                 "OpSubgroupAvcBmeInitializeINTEL"
                 ("IdResultType" "Src Coord" "Motion Vectors" "Major Shapes" "Minor Shapes" "Direction" "Pixel Resolution" "Bidirectional Weight" "Sad Adjustment")
                 "OpSubgroupAvcRefConvertToMcePayloadINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcRefSetBidirectionalMixDisableINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcRefSetBilinearFilterEnableINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcRefEvaluateWithSingleReferenceINTEL"
                 ("IdResultType" "Src Image" "Ref Image" "Payload")
                 "OpSubgroupAvcRefEvaluateWithDualReferenceINTEL"
                 ("IdResultType" "Src Image" "Fwd Ref Image" "Bwd Ref Image" "Payload")
                 "OpSubgroupAvcRefEvaluateWithMultiReferenceINTEL"
                 ("IdResultType" "Src Image" "Packed Reference Ids" "Payload")
                 "OpSubgroupAvcRefEvaluateWithMultiReferenceInterlacedINTEL"
                 ("IdResultType" "Src Image" "Packed Reference Ids" "Packed Reference Field Polarities" "Payload")
                 "OpSubgroupAvcRefConvertToMceResultINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcSicInitializeINTEL"
                 ("IdResultType" "Src Coord")
                 "OpSubgroupAvcSicConfigureSkcINTEL"
                 ("IdResultType" "Skip Block Partition Type" "Skip Motion Vector Mask" "Motion Vectors" "Bidirectional Weight" "Sad Adjustment" "Payload")
                 "OpSubgroupAvcSicConfigureIpeLumaINTEL"
                 ("IdResultType" "Luma Intra Partition Mask" "Intra Neighbour Availabilty" "Left Edge Luma Pixels" "Upper Left Corner Luma Pixel" "Upper Edge Luma Pixels" "Upper Right Edge Luma Pixels" "Sad Adjustment" "Payload")
                 "OpSubgroupAvcSicConfigureIpeLumaChromaINTEL"
                 ("IdResultType" "Luma Intra Partition Mask" "Intra Neighbour Availabilty" "Left Edge Luma Pixels" "Upper Left Corner Luma Pixel" "Upper Edge Luma Pixels" "Upper Right Edge Luma Pixels" "Left Edge Chroma Pixels" "Upper Left Corner Chroma Pixel" "Upper Edge Chroma Pixels" "Sad Adjustment" "Payload")
                 "OpSubgroupAvcSicGetMotionVectorMaskINTEL"
                 ("IdResultType" "Skip Block Partition Type" "Direction")
                 "OpSubgroupAvcSicConvertToMcePayloadINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcSicSetIntraLumaShapePenaltyINTEL"
                 ("IdResultType" "Packed Shape Penalty" "Payload")
                 "OpSubgroupAvcSicSetIntraLumaModeCostFunctionINTEL"
                 ("IdResultType" "Luma Mode Penalty" "Luma Packed Neighbor Modes" "Luma Packed Non Dc Penalty" "Payload")
                 "OpSubgroupAvcSicSetIntraChromaModeCostFunctionINTEL"
                 ("IdResultType" "Chroma Mode Base Penalty" "Payload")
                 "OpSubgroupAvcSicSetBilinearFilterEnableINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcSicSetSkcForwardTransformEnableINTEL"
                 ("IdResultType" "Packed Sad Coefficients" "Payload")
                 "OpSubgroupAvcSicSetBlockBasedRawSkipSadINTEL"
                 ("IdResultType" "Block Based Skip Type" "Payload")
                 "OpSubgroupAvcSicEvaluateIpeINTEL"
                 ("IdResultType" "Src Image" "Payload")
                 "OpSubgroupAvcSicEvaluateWithSingleReferenceINTEL"
                 ("IdResultType" "Src Image" "Ref Image" "Payload")
                 "OpSubgroupAvcSicEvaluateWithDualReferenceINTEL"
                 ("IdResultType" "Src Image" "Fwd Ref Image" "Bwd Ref Image" "Payload")
                 "OpSubgroupAvcSicEvaluateWithMultiReferenceINTEL"
                 ("IdResultType" "Src Image" "Packed Reference Ids" "Payload")
                 "OpSubgroupAvcSicEvaluateWithMultiReferenceInterlacedINTEL"
                 ("IdResultType" "Src Image" "Packed Reference Ids" "Packed Reference Field Polarities" "Payload")
                 "OpSubgroupAvcSicConvertToMceResultINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcSicGetIpeLumaShapeINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcSicGetBestIpeLumaDistortionINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcSicGetBestIpeChromaDistortionINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcSicGetPackedIpeLumaModesINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcSicGetIpeChromaModeINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcSicGetPackedSkcLumaCountThresholdINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcSicGetPackedSkcLumaSumThresholdINTEL"
                 ("IdResultType" "Payload")
                 "OpSubgroupAvcSicGetInterRawSadsINTEL"
                 ("IdResultType" "Payload")
                 "OpLoopControlINTEL"
                 ("Loop Control Parameters" "...")
                 "OpReadPipeBlockingINTEL"
                 ("IdResultType" "Packet Size" "Packet Alignment")
                 "OpWritePipeBlockingINTEL"
                 ("IdResultType" "Packet Size" "Packet Alignment")
                 "OpFPGARegINTEL"
                 ("IdResultType" "Result" "Input")
                 "OpRayQueryGetRayTMinKHR"
                 ("IdResultType" "RayQuery")
                 "OpRayQueryGetRayFlagsKHR"
                 ("IdResultType" "RayQuery")
                 "OpRayQueryGetIntersectionTKHR"
                 ("IdResultType" "RayQuery" "Intersection")
                 "OpRayQueryGetIntersectionInstanceCustomIndexKHR"
                 ("IdResultType" "RayQuery" "Intersection")
                 "OpRayQueryGetIntersectionInstanceIdKHR"
                 ("IdResultType" "RayQuery" "Intersection")
                 "OpRayQueryGetIntersectionInstanceShaderBindingTableRecordOffsetKHR"
                 ("IdResultType" "RayQuery" "Intersection")
                 "OpRayQueryGetIntersectionGeometryIndexKHR"
                 ("IdResultType" "RayQuery" "Intersection")
                 "OpRayQueryGetIntersectionPrimitiveIndexKHR"
                 ("IdResultType" "RayQuery" "Intersection")
                 "OpRayQueryGetIntersectionBarycentricsKHR"
                 ("IdResultType" "RayQuery" "Intersection")
                 "OpRayQueryGetIntersectionFrontFaceKHR"
                 ("IdResultType" "RayQuery" "Intersection")
                 "OpRayQueryGetIntersectionCandidateAABBOpaqueKHR"
                 ("IdResultType" "RayQuery")
                 "OpRayQueryGetIntersectionObjectRayDirectionKHR"
                 ("IdResultType" "RayQuery" "Intersection")
                 "OpRayQueryGetIntersectionObjectRayOriginKHR"
                 ("IdResultType" "RayQuery" "Intersection")
                 "OpRayQueryGetWorldRayDirectionKHR"
                 ("IdResultType" "RayQuery")
                 "OpRayQueryGetWorldRayOriginKHR"
                 ("IdResultType" "RayQuery")
                 "OpRayQueryGetIntersectionObjectToWorldKHR"
                 ("IdResultType" "RayQuery" "Intersection")
                 "OpRayQueryGetIntersectionWorldToObjectKHR"
                 ("IdResultType" "RayQuery" "Intersection")
                 "OpAtomicFAddEXT"
                 ("IdResultType" "Pointer" "Memory" "Semantics" "Value"))))


(provide 'spirv-mode-tables)
