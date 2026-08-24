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
#include "xtonemapping_accel.h"

extern XTonemapping_accel_Config XTonemapping_accel_ConfigTable[];

#ifdef SDT
XTonemapping_accel_Config *XTonemapping_accel_LookupConfig(UINTPTR BaseAddress) {
	XTonemapping_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XTonemapping_accel_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XTonemapping_accel_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XTonemapping_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTonemapping_accel_Initialize(XTonemapping_accel *InstancePtr, UINTPTR BaseAddress) {
	XTonemapping_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTonemapping_accel_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTonemapping_accel_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XTonemapping_accel_Config *XTonemapping_accel_LookupConfig(u16 DeviceId) {
	XTonemapping_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XTONEMAPPING_ACCEL_NUM_INSTANCES; Index++) {
		if (XTonemapping_accel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XTonemapping_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XTonemapping_accel_Initialize(XTonemapping_accel *InstancePtr, u16 DeviceId) {
	XTonemapping_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XTonemapping_accel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XTonemapping_accel_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

