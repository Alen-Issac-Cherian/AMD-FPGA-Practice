// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xvideo_pipe_hw_v_demosaic_0_0_v_demosaic.h"

extern XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Config XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_ConfigTable[];

#ifdef SDT
XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Config *XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_LookupConfig(UINTPTR BaseAddress) {
	XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_ConfigTable[Index].Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress == BaseAddress) {
			ConfigPtr = &XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Initialize(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr, UINTPTR BaseAddress) {
	XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Config *XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_LookupConfig(u16 DeviceId) {
	XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XVIDEO_PIPE_HW_V_DEMOSAIC_0_0_V_DEMOSAIC_NUM_INSTANCES; Index++) {
		if (XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Initialize(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr, u16 DeviceId) {
	XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

