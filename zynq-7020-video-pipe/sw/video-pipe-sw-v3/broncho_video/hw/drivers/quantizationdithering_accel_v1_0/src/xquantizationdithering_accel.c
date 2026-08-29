// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xquantizationdithering_accel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XQuantizationdithering_accel_CfgInitialize(XQuantizationdithering_accel *InstancePtr, XQuantizationdithering_accel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XQuantizationdithering_accel_Start(XQuantizationdithering_accel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQuantizationdithering_accel_ReadReg(InstancePtr->Control_BaseAddress, XQUANTIZATIONDITHERING_ACCEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XQuantizationdithering_accel_WriteReg(InstancePtr->Control_BaseAddress, XQUANTIZATIONDITHERING_ACCEL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XQuantizationdithering_accel_IsDone(XQuantizationdithering_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQuantizationdithering_accel_ReadReg(InstancePtr->Control_BaseAddress, XQUANTIZATIONDITHERING_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XQuantizationdithering_accel_IsIdle(XQuantizationdithering_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQuantizationdithering_accel_ReadReg(InstancePtr->Control_BaseAddress, XQUANTIZATIONDITHERING_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XQuantizationdithering_accel_IsReady(XQuantizationdithering_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQuantizationdithering_accel_ReadReg(InstancePtr->Control_BaseAddress, XQUANTIZATIONDITHERING_ACCEL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XQuantizationdithering_accel_EnableAutoRestart(XQuantizationdithering_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQuantizationdithering_accel_WriteReg(InstancePtr->Control_BaseAddress, XQUANTIZATIONDITHERING_ACCEL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XQuantizationdithering_accel_DisableAutoRestart(XQuantizationdithering_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQuantizationdithering_accel_WriteReg(InstancePtr->Control_BaseAddress, XQUANTIZATIONDITHERING_ACCEL_CONTROL_ADDR_AP_CTRL, 0);
}

void XQuantizationdithering_accel_Set_rows_in(XQuantizationdithering_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQuantizationdithering_accel_WriteReg(InstancePtr->Control_BaseAddress, XQUANTIZATIONDITHERING_ACCEL_CONTROL_ADDR_ROWS_IN_DATA, Data);
}

u32 XQuantizationdithering_accel_Get_rows_in(XQuantizationdithering_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQuantizationdithering_accel_ReadReg(InstancePtr->Control_BaseAddress, XQUANTIZATIONDITHERING_ACCEL_CONTROL_ADDR_ROWS_IN_DATA);
    return Data;
}

void XQuantizationdithering_accel_Set_cols_in(XQuantizationdithering_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQuantizationdithering_accel_WriteReg(InstancePtr->Control_BaseAddress, XQUANTIZATIONDITHERING_ACCEL_CONTROL_ADDR_COLS_IN_DATA, Data);
}

u32 XQuantizationdithering_accel_Get_cols_in(XQuantizationdithering_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XQuantizationdithering_accel_ReadReg(InstancePtr->Control_BaseAddress, XQUANTIZATIONDITHERING_ACCEL_CONTROL_ADDR_COLS_IN_DATA);
    return Data;
}

void XQuantizationdithering_accel_InterruptGlobalEnable(XQuantizationdithering_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQuantizationdithering_accel_WriteReg(InstancePtr->Control_BaseAddress, XQUANTIZATIONDITHERING_ACCEL_CONTROL_ADDR_GIE, 1);
}

void XQuantizationdithering_accel_InterruptGlobalDisable(XQuantizationdithering_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQuantizationdithering_accel_WriteReg(InstancePtr->Control_BaseAddress, XQUANTIZATIONDITHERING_ACCEL_CONTROL_ADDR_GIE, 0);
}

void XQuantizationdithering_accel_InterruptEnable(XQuantizationdithering_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XQuantizationdithering_accel_ReadReg(InstancePtr->Control_BaseAddress, XQUANTIZATIONDITHERING_ACCEL_CONTROL_ADDR_IER);
    XQuantizationdithering_accel_WriteReg(InstancePtr->Control_BaseAddress, XQUANTIZATIONDITHERING_ACCEL_CONTROL_ADDR_IER, Register | Mask);
}

void XQuantizationdithering_accel_InterruptDisable(XQuantizationdithering_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XQuantizationdithering_accel_ReadReg(InstancePtr->Control_BaseAddress, XQUANTIZATIONDITHERING_ACCEL_CONTROL_ADDR_IER);
    XQuantizationdithering_accel_WriteReg(InstancePtr->Control_BaseAddress, XQUANTIZATIONDITHERING_ACCEL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XQuantizationdithering_accel_InterruptClear(XQuantizationdithering_accel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XQuantizationdithering_accel_WriteReg(InstancePtr->Control_BaseAddress, XQUANTIZATIONDITHERING_ACCEL_CONTROL_ADDR_ISR, Mask);
}

u32 XQuantizationdithering_accel_InterruptGetEnabled(XQuantizationdithering_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XQuantizationdithering_accel_ReadReg(InstancePtr->Control_BaseAddress, XQUANTIZATIONDITHERING_ACCEL_CONTROL_ADDR_IER);
}

u32 XQuantizationdithering_accel_InterruptGetStatus(XQuantizationdithering_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XQuantizationdithering_accel_ReadReg(InstancePtr->Control_BaseAddress, XQUANTIZATIONDITHERING_ACCEL_CONTROL_ADDR_ISR);
}

