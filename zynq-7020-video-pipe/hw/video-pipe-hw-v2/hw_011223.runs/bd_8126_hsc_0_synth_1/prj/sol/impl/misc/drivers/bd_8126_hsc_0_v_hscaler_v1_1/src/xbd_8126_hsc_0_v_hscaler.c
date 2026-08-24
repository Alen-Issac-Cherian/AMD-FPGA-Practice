// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xbd_8126_hsc_0_v_hscaler.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XBd_8126_hsc_0_v_hscaler_CfgInitialize(XBd_8126_hsc_0_v_hscaler *InstancePtr, XBd_8126_hsc_0_v_hscaler_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress = ConfigPtr->Bd_8126_hsc_0_ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XBd_8126_hsc_0_v_hscaler_Start(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_8126_hsc_0_v_hscaler_ReadReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_AP_CTRL) & 0x80;
    XBd_8126_hsc_0_v_hscaler_WriteReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XBd_8126_hsc_0_v_hscaler_IsDone(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_8126_hsc_0_v_hscaler_ReadReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XBd_8126_hsc_0_v_hscaler_IsIdle(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_8126_hsc_0_v_hscaler_ReadReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XBd_8126_hsc_0_v_hscaler_IsReady(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_8126_hsc_0_v_hscaler_ReadReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XBd_8126_hsc_0_v_hscaler_EnableAutoRestart(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_8126_hsc_0_v_hscaler_WriteReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_AP_CTRL, 0x80);
}

void XBd_8126_hsc_0_v_hscaler_DisableAutoRestart(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_8126_hsc_0_v_hscaler_WriteReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_AP_CTRL, 0);
}

void XBd_8126_hsc_0_v_hscaler_Set_Height(XBd_8126_hsc_0_v_hscaler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_8126_hsc_0_v_hscaler_WriteReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_HEIGHT_DATA, Data);
}

u32 XBd_8126_hsc_0_v_hscaler_Get_Height(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_8126_hsc_0_v_hscaler_ReadReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_HEIGHT_DATA);
    return Data;
}

void XBd_8126_hsc_0_v_hscaler_Set_WidthIn(XBd_8126_hsc_0_v_hscaler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_8126_hsc_0_v_hscaler_WriteReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_WIDTHIN_DATA, Data);
}

u32 XBd_8126_hsc_0_v_hscaler_Get_WidthIn(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_8126_hsc_0_v_hscaler_ReadReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_WIDTHIN_DATA);
    return Data;
}

void XBd_8126_hsc_0_v_hscaler_Set_WidthOut(XBd_8126_hsc_0_v_hscaler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_8126_hsc_0_v_hscaler_WriteReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_WIDTHOUT_DATA, Data);
}

u32 XBd_8126_hsc_0_v_hscaler_Get_WidthOut(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_8126_hsc_0_v_hscaler_ReadReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_WIDTHOUT_DATA);
    return Data;
}

void XBd_8126_hsc_0_v_hscaler_Set_ColorMode(XBd_8126_hsc_0_v_hscaler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_8126_hsc_0_v_hscaler_WriteReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_COLORMODE_DATA, Data);
}

u32 XBd_8126_hsc_0_v_hscaler_Get_ColorMode(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_8126_hsc_0_v_hscaler_ReadReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_COLORMODE_DATA);
    return Data;
}

void XBd_8126_hsc_0_v_hscaler_Set_PixelRate(XBd_8126_hsc_0_v_hscaler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_8126_hsc_0_v_hscaler_WriteReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_PIXELRATE_DATA, Data);
}

u32 XBd_8126_hsc_0_v_hscaler_Get_PixelRate(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_8126_hsc_0_v_hscaler_ReadReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_PIXELRATE_DATA);
    return Data;
}

void XBd_8126_hsc_0_v_hscaler_Set_ColorModeOut(XBd_8126_hsc_0_v_hscaler *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_8126_hsc_0_v_hscaler_WriteReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_COLORMODEOUT_DATA, Data);
}

u32 XBd_8126_hsc_0_v_hscaler_Get_ColorModeOut(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBd_8126_hsc_0_v_hscaler_ReadReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_COLORMODEOUT_DATA);
    return Data;
}

u32 XBd_8126_hsc_0_v_hscaler_Get_hfltCoeff_BaseAddress(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress + XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_HFLTCOEFF_BASE);
}

u32 XBd_8126_hsc_0_v_hscaler_Get_hfltCoeff_HighAddress(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress + XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_HFLTCOEFF_HIGH);
}

u32 XBd_8126_hsc_0_v_hscaler_Get_hfltCoeff_TotalBytes(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_HFLTCOEFF_HIGH - XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_HFLTCOEFF_BASE + 1);
}

u32 XBd_8126_hsc_0_v_hscaler_Get_hfltCoeff_BitWidth(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_WIDTH_HFLTCOEFF;
}

u32 XBd_8126_hsc_0_v_hscaler_Get_hfltCoeff_Depth(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_DEPTH_HFLTCOEFF;
}

u32 XBd_8126_hsc_0_v_hscaler_Write_hfltCoeff_Words(XBd_8126_hsc_0_v_hscaler *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_HFLTCOEFF_HIGH - XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_HFLTCOEFF_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress + XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_HFLTCOEFF_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XBd_8126_hsc_0_v_hscaler_Read_hfltCoeff_Words(XBd_8126_hsc_0_v_hscaler *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_HFLTCOEFF_HIGH - XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_HFLTCOEFF_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress + XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_HFLTCOEFF_BASE + (offset + i)*4);
    }
    return length;
}

u32 XBd_8126_hsc_0_v_hscaler_Write_hfltCoeff_Bytes(XBd_8126_hsc_0_v_hscaler *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_HFLTCOEFF_HIGH - XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_HFLTCOEFF_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress + XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_HFLTCOEFF_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XBd_8126_hsc_0_v_hscaler_Read_hfltCoeff_Bytes(XBd_8126_hsc_0_v_hscaler *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_HFLTCOEFF_HIGH - XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_HFLTCOEFF_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress + XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_HFLTCOEFF_BASE + offset + i);
    }
    return length;
}

u32 XBd_8126_hsc_0_v_hscaler_Get_phasesH_BaseAddress(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress + XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_PHASESH_BASE);
}

u32 XBd_8126_hsc_0_v_hscaler_Get_phasesH_HighAddress(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress + XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_PHASESH_HIGH);
}

u32 XBd_8126_hsc_0_v_hscaler_Get_phasesH_TotalBytes(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_PHASESH_HIGH - XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_PHASESH_BASE + 1);
}

u32 XBd_8126_hsc_0_v_hscaler_Get_phasesH_BitWidth(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_WIDTH_PHASESH;
}

u32 XBd_8126_hsc_0_v_hscaler_Get_phasesH_Depth(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_DEPTH_PHASESH;
}

u32 XBd_8126_hsc_0_v_hscaler_Write_phasesH_Words(XBd_8126_hsc_0_v_hscaler *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_PHASESH_HIGH - XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_PHASESH_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress + XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_PHASESH_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XBd_8126_hsc_0_v_hscaler_Read_phasesH_Words(XBd_8126_hsc_0_v_hscaler *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_PHASESH_HIGH - XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_PHASESH_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress + XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_PHASESH_BASE + (offset + i)*4);
    }
    return length;
}

u32 XBd_8126_hsc_0_v_hscaler_Write_phasesH_Bytes(XBd_8126_hsc_0_v_hscaler *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_PHASESH_HIGH - XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_PHASESH_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress + XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_PHASESH_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XBd_8126_hsc_0_v_hscaler_Read_phasesH_Bytes(XBd_8126_hsc_0_v_hscaler *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_PHASESH_HIGH - XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_PHASESH_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress + XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_PHASESH_BASE + offset + i);
    }
    return length;
}

void XBd_8126_hsc_0_v_hscaler_InterruptGlobalEnable(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_8126_hsc_0_v_hscaler_WriteReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_GIE, 1);
}

void XBd_8126_hsc_0_v_hscaler_InterruptGlobalDisable(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_8126_hsc_0_v_hscaler_WriteReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_GIE, 0);
}

void XBd_8126_hsc_0_v_hscaler_InterruptEnable(XBd_8126_hsc_0_v_hscaler *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XBd_8126_hsc_0_v_hscaler_ReadReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_IER);
    XBd_8126_hsc_0_v_hscaler_WriteReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_IER, Register | Mask);
}

void XBd_8126_hsc_0_v_hscaler_InterruptDisable(XBd_8126_hsc_0_v_hscaler *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XBd_8126_hsc_0_v_hscaler_ReadReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_IER);
    XBd_8126_hsc_0_v_hscaler_WriteReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_IER, Register & (~Mask));
}

void XBd_8126_hsc_0_v_hscaler_InterruptClear(XBd_8126_hsc_0_v_hscaler *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBd_8126_hsc_0_v_hscaler_WriteReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_ISR, Mask);
}

u32 XBd_8126_hsc_0_v_hscaler_InterruptGetEnabled(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XBd_8126_hsc_0_v_hscaler_ReadReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_IER);
}

u32 XBd_8126_hsc_0_v_hscaler_InterruptGetStatus(XBd_8126_hsc_0_v_hscaler *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XBd_8126_hsc_0_v_hscaler_ReadReg(InstancePtr->Bd_8126_hsc_0_ctrl_BaseAddress, XBD_8126_HSC_0_V_HSCALER_BD_8126_HSC_0_CTRL_ADDR_ISR);
}

