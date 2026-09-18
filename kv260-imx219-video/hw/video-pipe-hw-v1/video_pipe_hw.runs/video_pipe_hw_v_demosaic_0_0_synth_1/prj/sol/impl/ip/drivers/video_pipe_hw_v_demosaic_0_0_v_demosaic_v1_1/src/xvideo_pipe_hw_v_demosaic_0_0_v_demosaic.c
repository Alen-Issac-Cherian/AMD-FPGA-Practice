// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xvideo_pipe_hw_v_demosaic_0_0_v_demosaic.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_CfgInitialize(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr, XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress = ConfigPtr->Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Start(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_ReadReg(InstancePtr->Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress, XVIDEO_PIPE_HW_V_DEMOSAIC_0_0_V_DEMOSAIC_VIDEO_PIPE_HW_V_DEMOSAIC_0_0_CTRL_ADDR_AP_CTRL) & 0x80;
    XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_WriteReg(InstancePtr->Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress, XVIDEO_PIPE_HW_V_DEMOSAIC_0_0_V_DEMOSAIC_VIDEO_PIPE_HW_V_DEMOSAIC_0_0_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_IsDone(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_ReadReg(InstancePtr->Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress, XVIDEO_PIPE_HW_V_DEMOSAIC_0_0_V_DEMOSAIC_VIDEO_PIPE_HW_V_DEMOSAIC_0_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_IsIdle(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_ReadReg(InstancePtr->Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress, XVIDEO_PIPE_HW_V_DEMOSAIC_0_0_V_DEMOSAIC_VIDEO_PIPE_HW_V_DEMOSAIC_0_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_IsReady(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_ReadReg(InstancePtr->Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress, XVIDEO_PIPE_HW_V_DEMOSAIC_0_0_V_DEMOSAIC_VIDEO_PIPE_HW_V_DEMOSAIC_0_0_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_EnableAutoRestart(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_WriteReg(InstancePtr->Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress, XVIDEO_PIPE_HW_V_DEMOSAIC_0_0_V_DEMOSAIC_VIDEO_PIPE_HW_V_DEMOSAIC_0_0_CTRL_ADDR_AP_CTRL, 0x80);
}

void XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_DisableAutoRestart(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_WriteReg(InstancePtr->Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress, XVIDEO_PIPE_HW_V_DEMOSAIC_0_0_V_DEMOSAIC_VIDEO_PIPE_HW_V_DEMOSAIC_0_0_CTRL_ADDR_AP_CTRL, 0);
}

void XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Set_width(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_WriteReg(InstancePtr->Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress, XVIDEO_PIPE_HW_V_DEMOSAIC_0_0_V_DEMOSAIC_VIDEO_PIPE_HW_V_DEMOSAIC_0_0_CTRL_ADDR_WIDTH_DATA, Data);
}

u32 XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Get_width(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_ReadReg(InstancePtr->Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress, XVIDEO_PIPE_HW_V_DEMOSAIC_0_0_V_DEMOSAIC_VIDEO_PIPE_HW_V_DEMOSAIC_0_0_CTRL_ADDR_WIDTH_DATA);
    return Data;
}

void XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Set_height(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_WriteReg(InstancePtr->Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress, XVIDEO_PIPE_HW_V_DEMOSAIC_0_0_V_DEMOSAIC_VIDEO_PIPE_HW_V_DEMOSAIC_0_0_CTRL_ADDR_HEIGHT_DATA, Data);
}

u32 XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Get_height(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_ReadReg(InstancePtr->Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress, XVIDEO_PIPE_HW_V_DEMOSAIC_0_0_V_DEMOSAIC_VIDEO_PIPE_HW_V_DEMOSAIC_0_0_CTRL_ADDR_HEIGHT_DATA);
    return Data;
}

void XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Set_bayer_phase(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_WriteReg(InstancePtr->Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress, XVIDEO_PIPE_HW_V_DEMOSAIC_0_0_V_DEMOSAIC_VIDEO_PIPE_HW_V_DEMOSAIC_0_0_CTRL_ADDR_BAYER_PHASE_DATA, Data);
}

u32 XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Get_bayer_phase(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_ReadReg(InstancePtr->Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress, XVIDEO_PIPE_HW_V_DEMOSAIC_0_0_V_DEMOSAIC_VIDEO_PIPE_HW_V_DEMOSAIC_0_0_CTRL_ADDR_BAYER_PHASE_DATA);
    return Data;
}

void XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_InterruptGlobalEnable(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_WriteReg(InstancePtr->Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress, XVIDEO_PIPE_HW_V_DEMOSAIC_0_0_V_DEMOSAIC_VIDEO_PIPE_HW_V_DEMOSAIC_0_0_CTRL_ADDR_GIE, 1);
}

void XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_InterruptGlobalDisable(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_WriteReg(InstancePtr->Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress, XVIDEO_PIPE_HW_V_DEMOSAIC_0_0_V_DEMOSAIC_VIDEO_PIPE_HW_V_DEMOSAIC_0_0_CTRL_ADDR_GIE, 0);
}

void XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_InterruptEnable(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_ReadReg(InstancePtr->Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress, XVIDEO_PIPE_HW_V_DEMOSAIC_0_0_V_DEMOSAIC_VIDEO_PIPE_HW_V_DEMOSAIC_0_0_CTRL_ADDR_IER);
    XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_WriteReg(InstancePtr->Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress, XVIDEO_PIPE_HW_V_DEMOSAIC_0_0_V_DEMOSAIC_VIDEO_PIPE_HW_V_DEMOSAIC_0_0_CTRL_ADDR_IER, Register | Mask);
}

void XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_InterruptDisable(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_ReadReg(InstancePtr->Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress, XVIDEO_PIPE_HW_V_DEMOSAIC_0_0_V_DEMOSAIC_VIDEO_PIPE_HW_V_DEMOSAIC_0_0_CTRL_ADDR_IER);
    XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_WriteReg(InstancePtr->Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress, XVIDEO_PIPE_HW_V_DEMOSAIC_0_0_V_DEMOSAIC_VIDEO_PIPE_HW_V_DEMOSAIC_0_0_CTRL_ADDR_IER, Register & (~Mask));
}

void XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_InterruptClear(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_WriteReg(InstancePtr->Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress, XVIDEO_PIPE_HW_V_DEMOSAIC_0_0_V_DEMOSAIC_VIDEO_PIPE_HW_V_DEMOSAIC_0_0_CTRL_ADDR_ISR, Mask);
}

u32 XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_InterruptGetEnabled(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_ReadReg(InstancePtr->Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress, XVIDEO_PIPE_HW_V_DEMOSAIC_0_0_V_DEMOSAIC_VIDEO_PIPE_HW_V_DEMOSAIC_0_0_CTRL_ADDR_IER);
}

u32 XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_InterruptGetStatus(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_ReadReg(InstancePtr->Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress, XVIDEO_PIPE_HW_V_DEMOSAIC_0_0_V_DEMOSAIC_VIDEO_PIPE_HW_V_DEMOSAIC_0_0_CTRL_ADDR_ISR);
}

