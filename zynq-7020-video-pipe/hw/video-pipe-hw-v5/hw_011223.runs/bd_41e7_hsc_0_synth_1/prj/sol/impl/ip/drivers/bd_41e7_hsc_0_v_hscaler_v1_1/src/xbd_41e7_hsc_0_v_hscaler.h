// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XBD_41E7_HSC_0_V_HSCALER_H
#define XBD_41E7_HSC_0_V_HSCALER_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xbd_41e7_hsc_0_v_hscaler_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Bd_41e7_hsc_0_ctrl_BaseAddress;
} XBd_41e7_hsc_0_v_hscaler_Config;
#endif

typedef struct {
    u64 Bd_41e7_hsc_0_ctrl_BaseAddress;
    u32 IsReady;
} XBd_41e7_hsc_0_v_hscaler;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XBd_41e7_hsc_0_v_hscaler_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XBd_41e7_hsc_0_v_hscaler_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XBd_41e7_hsc_0_v_hscaler_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XBd_41e7_hsc_0_v_hscaler_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XBd_41e7_hsc_0_v_hscaler_Initialize(XBd_41e7_hsc_0_v_hscaler *InstancePtr, UINTPTR BaseAddress);
XBd_41e7_hsc_0_v_hscaler_Config* XBd_41e7_hsc_0_v_hscaler_LookupConfig(UINTPTR BaseAddress);
#else
int XBd_41e7_hsc_0_v_hscaler_Initialize(XBd_41e7_hsc_0_v_hscaler *InstancePtr, u16 DeviceId);
XBd_41e7_hsc_0_v_hscaler_Config* XBd_41e7_hsc_0_v_hscaler_LookupConfig(u16 DeviceId);
#endif
int XBd_41e7_hsc_0_v_hscaler_CfgInitialize(XBd_41e7_hsc_0_v_hscaler *InstancePtr, XBd_41e7_hsc_0_v_hscaler_Config *ConfigPtr);
#else
int XBd_41e7_hsc_0_v_hscaler_Initialize(XBd_41e7_hsc_0_v_hscaler *InstancePtr, const char* InstanceName);
int XBd_41e7_hsc_0_v_hscaler_Release(XBd_41e7_hsc_0_v_hscaler *InstancePtr);
#endif

void XBd_41e7_hsc_0_v_hscaler_Start(XBd_41e7_hsc_0_v_hscaler *InstancePtr);
u32 XBd_41e7_hsc_0_v_hscaler_IsDone(XBd_41e7_hsc_0_v_hscaler *InstancePtr);
u32 XBd_41e7_hsc_0_v_hscaler_IsIdle(XBd_41e7_hsc_0_v_hscaler *InstancePtr);
u32 XBd_41e7_hsc_0_v_hscaler_IsReady(XBd_41e7_hsc_0_v_hscaler *InstancePtr);
void XBd_41e7_hsc_0_v_hscaler_EnableAutoRestart(XBd_41e7_hsc_0_v_hscaler *InstancePtr);
void XBd_41e7_hsc_0_v_hscaler_DisableAutoRestart(XBd_41e7_hsc_0_v_hscaler *InstancePtr);

void XBd_41e7_hsc_0_v_hscaler_Set_Height(XBd_41e7_hsc_0_v_hscaler *InstancePtr, u32 Data);
u32 XBd_41e7_hsc_0_v_hscaler_Get_Height(XBd_41e7_hsc_0_v_hscaler *InstancePtr);
void XBd_41e7_hsc_0_v_hscaler_Set_WidthIn(XBd_41e7_hsc_0_v_hscaler *InstancePtr, u32 Data);
u32 XBd_41e7_hsc_0_v_hscaler_Get_WidthIn(XBd_41e7_hsc_0_v_hscaler *InstancePtr);
void XBd_41e7_hsc_0_v_hscaler_Set_WidthOut(XBd_41e7_hsc_0_v_hscaler *InstancePtr, u32 Data);
u32 XBd_41e7_hsc_0_v_hscaler_Get_WidthOut(XBd_41e7_hsc_0_v_hscaler *InstancePtr);
void XBd_41e7_hsc_0_v_hscaler_Set_ColorMode(XBd_41e7_hsc_0_v_hscaler *InstancePtr, u32 Data);
u32 XBd_41e7_hsc_0_v_hscaler_Get_ColorMode(XBd_41e7_hsc_0_v_hscaler *InstancePtr);
void XBd_41e7_hsc_0_v_hscaler_Set_PixelRate(XBd_41e7_hsc_0_v_hscaler *InstancePtr, u32 Data);
u32 XBd_41e7_hsc_0_v_hscaler_Get_PixelRate(XBd_41e7_hsc_0_v_hscaler *InstancePtr);
void XBd_41e7_hsc_0_v_hscaler_Set_ColorModeOut(XBd_41e7_hsc_0_v_hscaler *InstancePtr, u32 Data);
u32 XBd_41e7_hsc_0_v_hscaler_Get_ColorModeOut(XBd_41e7_hsc_0_v_hscaler *InstancePtr);
u32 XBd_41e7_hsc_0_v_hscaler_Get_hfltCoeff_BaseAddress(XBd_41e7_hsc_0_v_hscaler *InstancePtr);
u32 XBd_41e7_hsc_0_v_hscaler_Get_hfltCoeff_HighAddress(XBd_41e7_hsc_0_v_hscaler *InstancePtr);
u32 XBd_41e7_hsc_0_v_hscaler_Get_hfltCoeff_TotalBytes(XBd_41e7_hsc_0_v_hscaler *InstancePtr);
u32 XBd_41e7_hsc_0_v_hscaler_Get_hfltCoeff_BitWidth(XBd_41e7_hsc_0_v_hscaler *InstancePtr);
u32 XBd_41e7_hsc_0_v_hscaler_Get_hfltCoeff_Depth(XBd_41e7_hsc_0_v_hscaler *InstancePtr);
u32 XBd_41e7_hsc_0_v_hscaler_Write_hfltCoeff_Words(XBd_41e7_hsc_0_v_hscaler *InstancePtr, int offset, word_type *data, int length);
u32 XBd_41e7_hsc_0_v_hscaler_Read_hfltCoeff_Words(XBd_41e7_hsc_0_v_hscaler *InstancePtr, int offset, word_type *data, int length);
u32 XBd_41e7_hsc_0_v_hscaler_Write_hfltCoeff_Bytes(XBd_41e7_hsc_0_v_hscaler *InstancePtr, int offset, char *data, int length);
u32 XBd_41e7_hsc_0_v_hscaler_Read_hfltCoeff_Bytes(XBd_41e7_hsc_0_v_hscaler *InstancePtr, int offset, char *data, int length);
u32 XBd_41e7_hsc_0_v_hscaler_Get_phasesH_BaseAddress(XBd_41e7_hsc_0_v_hscaler *InstancePtr);
u32 XBd_41e7_hsc_0_v_hscaler_Get_phasesH_HighAddress(XBd_41e7_hsc_0_v_hscaler *InstancePtr);
u32 XBd_41e7_hsc_0_v_hscaler_Get_phasesH_TotalBytes(XBd_41e7_hsc_0_v_hscaler *InstancePtr);
u32 XBd_41e7_hsc_0_v_hscaler_Get_phasesH_BitWidth(XBd_41e7_hsc_0_v_hscaler *InstancePtr);
u32 XBd_41e7_hsc_0_v_hscaler_Get_phasesH_Depth(XBd_41e7_hsc_0_v_hscaler *InstancePtr);
u32 XBd_41e7_hsc_0_v_hscaler_Write_phasesH_Words(XBd_41e7_hsc_0_v_hscaler *InstancePtr, int offset, word_type *data, int length);
u32 XBd_41e7_hsc_0_v_hscaler_Read_phasesH_Words(XBd_41e7_hsc_0_v_hscaler *InstancePtr, int offset, word_type *data, int length);
u32 XBd_41e7_hsc_0_v_hscaler_Write_phasesH_Bytes(XBd_41e7_hsc_0_v_hscaler *InstancePtr, int offset, char *data, int length);
u32 XBd_41e7_hsc_0_v_hscaler_Read_phasesH_Bytes(XBd_41e7_hsc_0_v_hscaler *InstancePtr, int offset, char *data, int length);

void XBd_41e7_hsc_0_v_hscaler_InterruptGlobalEnable(XBd_41e7_hsc_0_v_hscaler *InstancePtr);
void XBd_41e7_hsc_0_v_hscaler_InterruptGlobalDisable(XBd_41e7_hsc_0_v_hscaler *InstancePtr);
void XBd_41e7_hsc_0_v_hscaler_InterruptEnable(XBd_41e7_hsc_0_v_hscaler *InstancePtr, u32 Mask);
void XBd_41e7_hsc_0_v_hscaler_InterruptDisable(XBd_41e7_hsc_0_v_hscaler *InstancePtr, u32 Mask);
void XBd_41e7_hsc_0_v_hscaler_InterruptClear(XBd_41e7_hsc_0_v_hscaler *InstancePtr, u32 Mask);
u32 XBd_41e7_hsc_0_v_hscaler_InterruptGetEnabled(XBd_41e7_hsc_0_v_hscaler *InstancePtr);
u32 XBd_41e7_hsc_0_v_hscaler_InterruptGetStatus(XBd_41e7_hsc_0_v_hscaler *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
