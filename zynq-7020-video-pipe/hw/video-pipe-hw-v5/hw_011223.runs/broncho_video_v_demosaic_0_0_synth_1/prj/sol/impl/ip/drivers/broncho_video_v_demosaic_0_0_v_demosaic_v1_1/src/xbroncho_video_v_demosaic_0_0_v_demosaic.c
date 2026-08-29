// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xbroncho_video_v_demosaic_0_0_v_demosaic.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XBroncho_video_v_demosaic_0_0_v_demosaic_CfgInitialize(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr, XBroncho_video_v_demosaic_0_0_v_demosaic_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Broncho_video_v_demosaic_0_0_ctrl_BaseAddress = ConfigPtr->Broncho_video_v_demosaic_0_0_ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XBroncho_video_v_demosaic_0_0_v_demosaic_Start(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBroncho_video_v_demosaic_0_0_v_demosaic_ReadReg(InstancePtr->Broncho_video_v_demosaic_0_0_ctrl_BaseAddress, XBRONCHO_VIDEO_V_DEMOSAIC_0_0_V_DEMOSAIC_BRONCHO_VIDEO_V_DEMOSAIC_0_0_CTRL_ADDR_AP_CTRL) & 0x80;
    XBroncho_video_v_demosaic_0_0_v_demosaic_WriteReg(InstancePtr->Broncho_video_v_demosaic_0_0_ctrl_BaseAddress, XBRONCHO_VIDEO_V_DEMOSAIC_0_0_V_DEMOSAIC_BRONCHO_VIDEO_V_DEMOSAIC_0_0_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XBroncho_video_v_demosaic_0_0_v_demosaic_IsDone(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBroncho_video_v_demosaic_0_0_v_demosaic_ReadReg(InstancePtr->Broncho_video_v_demosaic_0_0_ctrl_BaseAddress, XBRONCHO_VIDEO_V_DEMOSAIC_0_0_V_DEMOSAIC_BRONCHO_VIDEO_V_DEMOSAIC_0_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XBroncho_video_v_demosaic_0_0_v_demosaic_IsIdle(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBroncho_video_v_demosaic_0_0_v_demosaic_ReadReg(InstancePtr->Broncho_video_v_demosaic_0_0_ctrl_BaseAddress, XBRONCHO_VIDEO_V_DEMOSAIC_0_0_V_DEMOSAIC_BRONCHO_VIDEO_V_DEMOSAIC_0_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XBroncho_video_v_demosaic_0_0_v_demosaic_IsReady(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBroncho_video_v_demosaic_0_0_v_demosaic_ReadReg(InstancePtr->Broncho_video_v_demosaic_0_0_ctrl_BaseAddress, XBRONCHO_VIDEO_V_DEMOSAIC_0_0_V_DEMOSAIC_BRONCHO_VIDEO_V_DEMOSAIC_0_0_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XBroncho_video_v_demosaic_0_0_v_demosaic_EnableAutoRestart(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBroncho_video_v_demosaic_0_0_v_demosaic_WriteReg(InstancePtr->Broncho_video_v_demosaic_0_0_ctrl_BaseAddress, XBRONCHO_VIDEO_V_DEMOSAIC_0_0_V_DEMOSAIC_BRONCHO_VIDEO_V_DEMOSAIC_0_0_CTRL_ADDR_AP_CTRL, 0x80);
}

void XBroncho_video_v_demosaic_0_0_v_demosaic_DisableAutoRestart(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBroncho_video_v_demosaic_0_0_v_demosaic_WriteReg(InstancePtr->Broncho_video_v_demosaic_0_0_ctrl_BaseAddress, XBRONCHO_VIDEO_V_DEMOSAIC_0_0_V_DEMOSAIC_BRONCHO_VIDEO_V_DEMOSAIC_0_0_CTRL_ADDR_AP_CTRL, 0);
}

void XBroncho_video_v_demosaic_0_0_v_demosaic_Set_width(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBroncho_video_v_demosaic_0_0_v_demosaic_WriteReg(InstancePtr->Broncho_video_v_demosaic_0_0_ctrl_BaseAddress, XBRONCHO_VIDEO_V_DEMOSAIC_0_0_V_DEMOSAIC_BRONCHO_VIDEO_V_DEMOSAIC_0_0_CTRL_ADDR_WIDTH_DATA, Data);
}

u32 XBroncho_video_v_demosaic_0_0_v_demosaic_Get_width(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBroncho_video_v_demosaic_0_0_v_demosaic_ReadReg(InstancePtr->Broncho_video_v_demosaic_0_0_ctrl_BaseAddress, XBRONCHO_VIDEO_V_DEMOSAIC_0_0_V_DEMOSAIC_BRONCHO_VIDEO_V_DEMOSAIC_0_0_CTRL_ADDR_WIDTH_DATA);
    return Data;
}

void XBroncho_video_v_demosaic_0_0_v_demosaic_Set_height(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBroncho_video_v_demosaic_0_0_v_demosaic_WriteReg(InstancePtr->Broncho_video_v_demosaic_0_0_ctrl_BaseAddress, XBRONCHO_VIDEO_V_DEMOSAIC_0_0_V_DEMOSAIC_BRONCHO_VIDEO_V_DEMOSAIC_0_0_CTRL_ADDR_HEIGHT_DATA, Data);
}

u32 XBroncho_video_v_demosaic_0_0_v_demosaic_Get_height(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBroncho_video_v_demosaic_0_0_v_demosaic_ReadReg(InstancePtr->Broncho_video_v_demosaic_0_0_ctrl_BaseAddress, XBRONCHO_VIDEO_V_DEMOSAIC_0_0_V_DEMOSAIC_BRONCHO_VIDEO_V_DEMOSAIC_0_0_CTRL_ADDR_HEIGHT_DATA);
    return Data;
}

void XBroncho_video_v_demosaic_0_0_v_demosaic_Set_bayer_phase(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBroncho_video_v_demosaic_0_0_v_demosaic_WriteReg(InstancePtr->Broncho_video_v_demosaic_0_0_ctrl_BaseAddress, XBRONCHO_VIDEO_V_DEMOSAIC_0_0_V_DEMOSAIC_BRONCHO_VIDEO_V_DEMOSAIC_0_0_CTRL_ADDR_BAYER_PHASE_DATA, Data);
}

u32 XBroncho_video_v_demosaic_0_0_v_demosaic_Get_bayer_phase(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBroncho_video_v_demosaic_0_0_v_demosaic_ReadReg(InstancePtr->Broncho_video_v_demosaic_0_0_ctrl_BaseAddress, XBRONCHO_VIDEO_V_DEMOSAIC_0_0_V_DEMOSAIC_BRONCHO_VIDEO_V_DEMOSAIC_0_0_CTRL_ADDR_BAYER_PHASE_DATA);
    return Data;
}

void XBroncho_video_v_demosaic_0_0_v_demosaic_InterruptGlobalEnable(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBroncho_video_v_demosaic_0_0_v_demosaic_WriteReg(InstancePtr->Broncho_video_v_demosaic_0_0_ctrl_BaseAddress, XBRONCHO_VIDEO_V_DEMOSAIC_0_0_V_DEMOSAIC_BRONCHO_VIDEO_V_DEMOSAIC_0_0_CTRL_ADDR_GIE, 1);
}

void XBroncho_video_v_demosaic_0_0_v_demosaic_InterruptGlobalDisable(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBroncho_video_v_demosaic_0_0_v_demosaic_WriteReg(InstancePtr->Broncho_video_v_demosaic_0_0_ctrl_BaseAddress, XBRONCHO_VIDEO_V_DEMOSAIC_0_0_V_DEMOSAIC_BRONCHO_VIDEO_V_DEMOSAIC_0_0_CTRL_ADDR_GIE, 0);
}

void XBroncho_video_v_demosaic_0_0_v_demosaic_InterruptEnable(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XBroncho_video_v_demosaic_0_0_v_demosaic_ReadReg(InstancePtr->Broncho_video_v_demosaic_0_0_ctrl_BaseAddress, XBRONCHO_VIDEO_V_DEMOSAIC_0_0_V_DEMOSAIC_BRONCHO_VIDEO_V_DEMOSAIC_0_0_CTRL_ADDR_IER);
    XBroncho_video_v_demosaic_0_0_v_demosaic_WriteReg(InstancePtr->Broncho_video_v_demosaic_0_0_ctrl_BaseAddress, XBRONCHO_VIDEO_V_DEMOSAIC_0_0_V_DEMOSAIC_BRONCHO_VIDEO_V_DEMOSAIC_0_0_CTRL_ADDR_IER, Register | Mask);
}

void XBroncho_video_v_demosaic_0_0_v_demosaic_InterruptDisable(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XBroncho_video_v_demosaic_0_0_v_demosaic_ReadReg(InstancePtr->Broncho_video_v_demosaic_0_0_ctrl_BaseAddress, XBRONCHO_VIDEO_V_DEMOSAIC_0_0_V_DEMOSAIC_BRONCHO_VIDEO_V_DEMOSAIC_0_0_CTRL_ADDR_IER);
    XBroncho_video_v_demosaic_0_0_v_demosaic_WriteReg(InstancePtr->Broncho_video_v_demosaic_0_0_ctrl_BaseAddress, XBRONCHO_VIDEO_V_DEMOSAIC_0_0_V_DEMOSAIC_BRONCHO_VIDEO_V_DEMOSAIC_0_0_CTRL_ADDR_IER, Register & (~Mask));
}

void XBroncho_video_v_demosaic_0_0_v_demosaic_InterruptClear(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBroncho_video_v_demosaic_0_0_v_demosaic_WriteReg(InstancePtr->Broncho_video_v_demosaic_0_0_ctrl_BaseAddress, XBRONCHO_VIDEO_V_DEMOSAIC_0_0_V_DEMOSAIC_BRONCHO_VIDEO_V_DEMOSAIC_0_0_CTRL_ADDR_ISR, Mask);
}

u32 XBroncho_video_v_demosaic_0_0_v_demosaic_InterruptGetEnabled(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XBroncho_video_v_demosaic_0_0_v_demosaic_ReadReg(InstancePtr->Broncho_video_v_demosaic_0_0_ctrl_BaseAddress, XBRONCHO_VIDEO_V_DEMOSAIC_0_0_V_DEMOSAIC_BRONCHO_VIDEO_V_DEMOSAIC_0_0_CTRL_ADDR_IER);
}

u32 XBroncho_video_v_demosaic_0_0_v_demosaic_InterruptGetStatus(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XBroncho_video_v_demosaic_0_0_v_demosaic_ReadReg(InstancePtr->Broncho_video_v_demosaic_0_0_ctrl_BaseAddress, XBRONCHO_VIDEO_V_DEMOSAIC_0_0_V_DEMOSAIC_BRONCHO_VIDEO_V_DEMOSAIC_0_0_CTRL_ADDR_ISR);
}

