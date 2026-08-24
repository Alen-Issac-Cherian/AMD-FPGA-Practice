// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xclahe_accel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XClahe_accel_CfgInitialize(XClahe_accel *InstancePtr, XClahe_accel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XClahe_accel_Start(XClahe_accel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClahe_accel_ReadReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XClahe_accel_WriteReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XClahe_accel_IsDone(XClahe_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClahe_accel_ReadReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XClahe_accel_IsIdle(XClahe_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClahe_accel_ReadReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XClahe_accel_IsReady(XClahe_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClahe_accel_ReadReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XClahe_accel_EnableAutoRestart(XClahe_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClahe_accel_WriteReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XClahe_accel_DisableAutoRestart(XClahe_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClahe_accel_WriteReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_AP_CTRL, 0);
}

void XClahe_accel_Set_in_ptr(XClahe_accel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClahe_accel_WriteReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_IN_PTR_DATA, (u32)(Data));
    XClahe_accel_WriteReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_IN_PTR_DATA + 4, (u32)(Data >> 32));
}

u64 XClahe_accel_Get_in_ptr(XClahe_accel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClahe_accel_ReadReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_IN_PTR_DATA);
    Data += (u64)XClahe_accel_ReadReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_IN_PTR_DATA + 4) << 32;
    return Data;
}

void XClahe_accel_Set_out_ptr(XClahe_accel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClahe_accel_WriteReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_OUT_PTR_DATA, (u32)(Data));
    XClahe_accel_WriteReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_OUT_PTR_DATA + 4, (u32)(Data >> 32));
}

u64 XClahe_accel_Get_out_ptr(XClahe_accel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClahe_accel_ReadReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_OUT_PTR_DATA);
    Data += (u64)XClahe_accel_ReadReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_OUT_PTR_DATA + 4) << 32;
    return Data;
}

void XClahe_accel_Set_height(XClahe_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClahe_accel_WriteReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_HEIGHT_DATA, Data);
}

u32 XClahe_accel_Get_height(XClahe_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClahe_accel_ReadReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_HEIGHT_DATA);
    return Data;
}

void XClahe_accel_Set_width(XClahe_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClahe_accel_WriteReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_WIDTH_DATA, Data);
}

u32 XClahe_accel_Get_width(XClahe_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClahe_accel_ReadReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_WIDTH_DATA);
    return Data;
}

void XClahe_accel_Set_clip(XClahe_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClahe_accel_WriteReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_CLIP_DATA, Data);
}

u32 XClahe_accel_Get_clip(XClahe_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClahe_accel_ReadReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_CLIP_DATA);
    return Data;
}

void XClahe_accel_Set_tilesY(XClahe_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClahe_accel_WriteReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_TILESY_DATA, Data);
}

u32 XClahe_accel_Get_tilesY(XClahe_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClahe_accel_ReadReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_TILESY_DATA);
    return Data;
}

void XClahe_accel_Set_tilesX(XClahe_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClahe_accel_WriteReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_TILESX_DATA, Data);
}

u32 XClahe_accel_Get_tilesX(XClahe_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XClahe_accel_ReadReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_TILESX_DATA);
    return Data;
}

void XClahe_accel_InterruptGlobalEnable(XClahe_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClahe_accel_WriteReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_GIE, 1);
}

void XClahe_accel_InterruptGlobalDisable(XClahe_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClahe_accel_WriteReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_GIE, 0);
}

void XClahe_accel_InterruptEnable(XClahe_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XClahe_accel_ReadReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_IER);
    XClahe_accel_WriteReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_IER, Register | Mask);
}

void XClahe_accel_InterruptDisable(XClahe_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XClahe_accel_ReadReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_IER);
    XClahe_accel_WriteReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XClahe_accel_InterruptClear(XClahe_accel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XClahe_accel_WriteReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_ISR, Mask);
}

u32 XClahe_accel_InterruptGetEnabled(XClahe_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XClahe_accel_ReadReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_IER);
}

u32 XClahe_accel_InterruptGetStatus(XClahe_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XClahe_accel_ReadReg(InstancePtr->Control_BaseAddress, XCLAHE_ACCEL_CONTROL_ADDR_ISR);
}

