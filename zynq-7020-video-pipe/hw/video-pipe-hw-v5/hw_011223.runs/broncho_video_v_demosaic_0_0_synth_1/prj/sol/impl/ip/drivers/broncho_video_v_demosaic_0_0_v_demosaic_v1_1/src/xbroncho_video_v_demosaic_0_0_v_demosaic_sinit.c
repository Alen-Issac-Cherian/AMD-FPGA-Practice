// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xbroncho_video_v_demosaic_0_0_v_demosaic.h"

extern XBroncho_video_v_demosaic_0_0_v_demosaic_Config XBroncho_video_v_demosaic_0_0_v_demosaic_ConfigTable[];

#ifdef SDT
XBroncho_video_v_demosaic_0_0_v_demosaic_Config *XBroncho_video_v_demosaic_0_0_v_demosaic_LookupConfig(UINTPTR BaseAddress) {
	XBroncho_video_v_demosaic_0_0_v_demosaic_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XBroncho_video_v_demosaic_0_0_v_demosaic_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XBroncho_video_v_demosaic_0_0_v_demosaic_ConfigTable[Index].Broncho_video_v_demosaic_0_0_ctrl_BaseAddress == BaseAddress) {
			ConfigPtr = &XBroncho_video_v_demosaic_0_0_v_demosaic_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XBroncho_video_v_demosaic_0_0_v_demosaic_Initialize(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr, UINTPTR BaseAddress) {
	XBroncho_video_v_demosaic_0_0_v_demosaic_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XBroncho_video_v_demosaic_0_0_v_demosaic_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XBroncho_video_v_demosaic_0_0_v_demosaic_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XBroncho_video_v_demosaic_0_0_v_demosaic_Config *XBroncho_video_v_demosaic_0_0_v_demosaic_LookupConfig(u16 DeviceId) {
	XBroncho_video_v_demosaic_0_0_v_demosaic_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XBRONCHO_VIDEO_V_DEMOSAIC_0_0_V_DEMOSAIC_NUM_INSTANCES; Index++) {
		if (XBroncho_video_v_demosaic_0_0_v_demosaic_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XBroncho_video_v_demosaic_0_0_v_demosaic_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XBroncho_video_v_demosaic_0_0_v_demosaic_Initialize(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr, u16 DeviceId) {
	XBroncho_video_v_demosaic_0_0_v_demosaic_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XBroncho_video_v_demosaic_0_0_v_demosaic_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XBroncho_video_v_demosaic_0_0_v_demosaic_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

