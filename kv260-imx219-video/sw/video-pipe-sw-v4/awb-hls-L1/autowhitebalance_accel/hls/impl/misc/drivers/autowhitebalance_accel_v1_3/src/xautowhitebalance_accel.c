// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xautowhitebalance_accel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAutowhitebalance_accel_CfgInitialize(XAutowhitebalance_accel *InstancePtr, XAutowhitebalance_accel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAutowhitebalance_accel_Start(XAutowhitebalance_accel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAutowhitebalance_accel_ReadReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XAutowhitebalance_accel_WriteReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XAutowhitebalance_accel_IsDone(XAutowhitebalance_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAutowhitebalance_accel_ReadReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XAutowhitebalance_accel_IsIdle(XAutowhitebalance_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAutowhitebalance_accel_ReadReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XAutowhitebalance_accel_IsReady(XAutowhitebalance_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAutowhitebalance_accel_ReadReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XAutowhitebalance_accel_EnableAutoRestart(XAutowhitebalance_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAutowhitebalance_accel_WriteReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XAutowhitebalance_accel_DisableAutoRestart(XAutowhitebalance_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAutowhitebalance_accel_WriteReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_AP_CTRL, 0);
}

void XAutowhitebalance_accel_Set_thresh(XAutowhitebalance_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAutowhitebalance_accel_WriteReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_THRESH_DATA, Data);
}

u32 XAutowhitebalance_accel_Get_thresh(XAutowhitebalance_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAutowhitebalance_accel_ReadReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_THRESH_DATA);
    return Data;
}

void XAutowhitebalance_accel_Set_rows(XAutowhitebalance_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAutowhitebalance_accel_WriteReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_ROWS_DATA, Data);
}

u32 XAutowhitebalance_accel_Get_rows(XAutowhitebalance_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAutowhitebalance_accel_ReadReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_ROWS_DATA);
    return Data;
}

void XAutowhitebalance_accel_Set_cols(XAutowhitebalance_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAutowhitebalance_accel_WriteReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_COLS_DATA, Data);
}

u32 XAutowhitebalance_accel_Get_cols(XAutowhitebalance_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAutowhitebalance_accel_ReadReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_COLS_DATA);
    return Data;
}

void XAutowhitebalance_accel_Set_inputMin(XAutowhitebalance_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAutowhitebalance_accel_WriteReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_INPUTMIN_DATA, Data);
}

u32 XAutowhitebalance_accel_Get_inputMin(XAutowhitebalance_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAutowhitebalance_accel_ReadReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_INPUTMIN_DATA);
    return Data;
}

void XAutowhitebalance_accel_Set_inputMax(XAutowhitebalance_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAutowhitebalance_accel_WriteReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_INPUTMAX_DATA, Data);
}

u32 XAutowhitebalance_accel_Get_inputMax(XAutowhitebalance_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAutowhitebalance_accel_ReadReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_INPUTMAX_DATA);
    return Data;
}

void XAutowhitebalance_accel_Set_outputMin(XAutowhitebalance_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAutowhitebalance_accel_WriteReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_OUTPUTMIN_DATA, Data);
}

u32 XAutowhitebalance_accel_Get_outputMin(XAutowhitebalance_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAutowhitebalance_accel_ReadReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_OUTPUTMIN_DATA);
    return Data;
}

void XAutowhitebalance_accel_Set_outputMax(XAutowhitebalance_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAutowhitebalance_accel_WriteReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_OUTPUTMAX_DATA, Data);
}

u32 XAutowhitebalance_accel_Get_outputMax(XAutowhitebalance_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAutowhitebalance_accel_ReadReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_OUTPUTMAX_DATA);
    return Data;
}

void XAutowhitebalance_accel_InterruptGlobalEnable(XAutowhitebalance_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAutowhitebalance_accel_WriteReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_GIE, 1);
}

void XAutowhitebalance_accel_InterruptGlobalDisable(XAutowhitebalance_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAutowhitebalance_accel_WriteReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_GIE, 0);
}

void XAutowhitebalance_accel_InterruptEnable(XAutowhitebalance_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAutowhitebalance_accel_ReadReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_IER);
    XAutowhitebalance_accel_WriteReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_IER, Register | Mask);
}

void XAutowhitebalance_accel_InterruptDisable(XAutowhitebalance_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAutowhitebalance_accel_ReadReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_IER);
    XAutowhitebalance_accel_WriteReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XAutowhitebalance_accel_InterruptClear(XAutowhitebalance_accel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAutowhitebalance_accel_WriteReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_ISR, Mask);
}

u32 XAutowhitebalance_accel_InterruptGetEnabled(XAutowhitebalance_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAutowhitebalance_accel_ReadReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_IER);
}

u32 XAutowhitebalance_accel_InterruptGetStatus(XAutowhitebalance_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAutowhitebalance_accel_ReadReg(InstancePtr->Control_BaseAddress, XAUTOWHITEBALANCE_ACCEL_CONTROL_ADDR_ISR);
}

