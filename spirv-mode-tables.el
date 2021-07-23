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

(provide 'spirv-mode-tables)
