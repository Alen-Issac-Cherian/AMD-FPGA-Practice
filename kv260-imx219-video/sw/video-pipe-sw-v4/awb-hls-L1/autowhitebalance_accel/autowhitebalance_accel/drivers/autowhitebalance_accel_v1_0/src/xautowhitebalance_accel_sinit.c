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
#include "xautowhitebalance_accel.h"

extern XAutowhitebalance_accel_Config XAutowhitebalance_accel_ConfigTable[];

#ifdef SDT
XAutowhitebalance_accel_Config *XAutowhitebalance_accel_LookupConfig(UINTPTR BaseAddress) {
	XAutowhitebalance_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XAutowhitebalance_accel_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XAutowhitebalance_accel_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XAutowhitebalance_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAutowhitebalance_accel_Initialize(XAutowhitebalance_accel *InstancePtr, UINTPTR BaseAddress) {
	XAutowhitebalance_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAutowhitebalance_accel_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAutowhitebalance_accel_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XAutowhitebalance_accel_Config *XAutowhitebalance_accel_LookupConfig(u16 DeviceId) {
	XAutowhitebalance_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XAUTOWHITEBALANCE_ACCEL_NUM_INSTANCES; Index++) {
		if (XAutowhitebalance_accel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAutowhitebalance_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAutowhitebalance_accel_Initialize(XAutowhitebalance_accel *InstancePtr, u16 DeviceId) {
	XAutowhitebalance_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAutowhitebalance_accel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAutowhitebalance_accel_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

