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
#include "xbd_8126_hsc_0_v_hscaler.h"

extern XBd_8126_hsc_0_v_hscaler_Config XBd_8126_hsc_0_v_hscaler_ConfigTable[];

#ifdef SDT
XBd_8126_hsc_0_v_hscaler_Config *XBd_8126_hsc_0_v_hscaler_LookupConfig(UINTPTR BaseAddress) {
	XBd_8126_hsc_0_v_hscaler_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XBd_8126_hsc_0_v_hscaler_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XBd_8126_hsc_0_v_hscaler_ConfigTable[Index].Bd_8126_hsc_0_ctrl_BaseAddress == BaseAddress) {
			ConfigPtr = &XBd_8126_hsc_0_v_hscaler_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XBd_8126_hsc_0_v_hscaler_Initialize(XBd_8126_hsc_0_v_hscaler *InstancePtr, UINTPTR BaseAddress) {
	XBd_8126_hsc_0_v_hscaler_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XBd_8126_hsc_0_v_hscaler_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XBd_8126_hsc_0_v_hscaler_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XBd_8126_hsc_0_v_hscaler_Config *XBd_8126_hsc_0_v_hscaler_LookupConfig(u16 DeviceId) {
	XBd_8126_hsc_0_v_hscaler_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XBD_8126_HSC_0_V_HSCALER_NUM_INSTANCES; Index++) {
		if (XBd_8126_hsc_0_v_hscaler_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XBd_8126_hsc_0_v_hscaler_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XBd_8126_hsc_0_v_hscaler_Initialize(XBd_8126_hsc_0_v_hscaler *InstancePtr, u16 DeviceId) {
	XBd_8126_hsc_0_v_hscaler_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XBd_8126_hsc_0_v_hscaler_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XBd_8126_hsc_0_v_hscaler_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

