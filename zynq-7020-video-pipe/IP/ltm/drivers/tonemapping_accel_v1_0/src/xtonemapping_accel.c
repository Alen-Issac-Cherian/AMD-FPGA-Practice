// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xtonemapping_accel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XTonemapping_accel_CfgInitialize(XTonemapping_accel *InstancePtr, XTonemapping_accel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XTonemapping_accel_Start(XTonemapping_accel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTonemapping_accel_ReadReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XTonemapping_accel_WriteReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XTonemapping_accel_IsDone(XTonemapping_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTonemapping_accel_ReadReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XTonemapping_accel_IsIdle(XTonemapping_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTonemapping_accel_ReadReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XTonemapping_accel_IsReady(XTonemapping_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTonemapping_accel_ReadReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XTonemapping_accel_EnableAutoRestart(XTonemapping_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTonemapping_accel_WriteReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XTonemapping_accel_DisableAutoRestart(XTonemapping_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTonemapping_accel_WriteReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_AP_CTRL, 0);
}

void XTonemapping_accel_Set_in_ptr(XTonemapping_accel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTonemapping_accel_WriteReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_IN_PTR_DATA, (u32)(Data));
    XTonemapping_accel_WriteReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_IN_PTR_DATA + 4, (u32)(Data >> 32));
}

u64 XTonemapping_accel_Get_in_ptr(XTonemapping_accel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTonemapping_accel_ReadReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_IN_PTR_DATA);
    Data += (u64)XTonemapping_accel_ReadReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_IN_PTR_DATA + 4) << 32;
    return Data;
}

void XTonemapping_accel_Set_out_ptr(XTonemapping_accel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTonemapping_accel_WriteReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_OUT_PTR_DATA, (u32)(Data));
    XTonemapping_accel_WriteReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_OUT_PTR_DATA + 4, (u32)(Data >> 32));
}

u64 XTonemapping_accel_Get_out_ptr(XTonemapping_accel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTonemapping_accel_ReadReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_OUT_PTR_DATA);
    Data += (u64)XTonemapping_accel_ReadReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_OUT_PTR_DATA + 4) << 32;
    return Data;
}

void XTonemapping_accel_Set_height(XTonemapping_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTonemapping_accel_WriteReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_HEIGHT_DATA, Data);
}

u32 XTonemapping_accel_Get_height(XTonemapping_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTonemapping_accel_ReadReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_HEIGHT_DATA);
    return Data;
}

void XTonemapping_accel_Set_width(XTonemapping_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTonemapping_accel_WriteReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_WIDTH_DATA, Data);
}

u32 XTonemapping_accel_Get_width(XTonemapping_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XTonemapping_accel_ReadReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_WIDTH_DATA);
    return Data;
}

void XTonemapping_accel_InterruptGlobalEnable(XTonemapping_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTonemapping_accel_WriteReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_GIE, 1);
}

void XTonemapping_accel_InterruptGlobalDisable(XTonemapping_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTonemapping_accel_WriteReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_GIE, 0);
}

void XTonemapping_accel_InterruptEnable(XTonemapping_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTonemapping_accel_ReadReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_IER);
    XTonemapping_accel_WriteReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_IER, Register | Mask);
}

void XTonemapping_accel_InterruptDisable(XTonemapping_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XTonemapping_accel_ReadReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_IER);
    XTonemapping_accel_WriteReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XTonemapping_accel_InterruptClear(XTonemapping_accel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XTonemapping_accel_WriteReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_ISR, Mask);
}

u32 XTonemapping_accel_InterruptGetEnabled(XTonemapping_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTonemapping_accel_ReadReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_IER);
}

u32 XTonemapping_accel_InterruptGetStatus(XTonemapping_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XTonemapping_accel_ReadReg(InstancePtr->Control_BaseAddress, XTONEMAPPING_ACCEL_CONTROL_ADDR_ISR);
}

