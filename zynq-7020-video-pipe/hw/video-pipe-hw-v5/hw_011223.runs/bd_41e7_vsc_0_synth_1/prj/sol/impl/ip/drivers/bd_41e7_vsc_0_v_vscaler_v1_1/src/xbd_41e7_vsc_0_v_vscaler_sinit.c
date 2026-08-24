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
#include "xbd_41e7_vsc_0_v_vscaler.h"

extern XBd_41e7_vsc_0_v_vscaler_Config XBd_41e7_vsc_0_v_vscaler_ConfigTable[];

#ifdef SDT
XBd_41e7_vsc_0_v_vscaler_Config *XBd_41e7_vsc_0_v_vscaler_LookupConfig(UINTPTR BaseAddress) {
	XBd_41e7_vsc_0_v_vscaler_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XBd_41e7_vsc_0_v_vscaler_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XBd_41e7_vsc_0_v_vscaler_ConfigTable[Index].Bd_41e7_vsc_0_ctrl_BaseAddress == BaseAddress) {
			ConfigPtr = &XBd_41e7_vsc_0_v_vscaler_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XBd_41e7_vsc_0_v_vscaler_Initialize(XBd_41e7_vsc_0_v_vscaler *InstancePtr, UINTPTR BaseAddress) {
	XBd_41e7_vsc_0_v_vscaler_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XBd_41e7_vsc_0_v_vscaler_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XBd_41e7_vsc_0_v_vscaler_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XBd_41e7_vsc_0_v_vscaler_Config *XBd_41e7_vsc_0_v_vscaler_LookupConfig(u16 DeviceId) {
	XBd_41e7_vsc_0_v_vscaler_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XBD_41E7_VSC_0_V_VSCALER_NUM_INSTANCES; Index++) {
		if (XBd_41e7_vsc_0_v_vscaler_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XBd_41e7_vsc_0_v_vscaler_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XBd_41e7_vsc_0_v_vscaler_Initialize(XBd_41e7_vsc_0_v_vscaler *InstancePtr, u16 DeviceId) {
	XBd_41e7_vsc_0_v_vscaler_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XBd_41e7_vsc_0_v_vscaler_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XBd_41e7_vsc_0_v_vscaler_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

