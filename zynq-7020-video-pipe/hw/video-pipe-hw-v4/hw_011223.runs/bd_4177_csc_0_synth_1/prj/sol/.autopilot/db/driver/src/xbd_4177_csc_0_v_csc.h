// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XBD_4177_CSC_0_V_CSC_H
#define XBD_4177_CSC_0_V_CSC_H

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
#include "xbd_4177_csc_0_v_csc_hw.h"

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
    u64 Bd_4177_csc_0_ctrl_BaseAddress;
} XBd_4177_csc_0_v_csc_Config;
#endif

typedef struct {
    u64 Bd_4177_csc_0_ctrl_BaseAddress;
    u32 IsReady;
} XBd_4177_csc_0_v_csc;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XBd_4177_csc_0_v_csc_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XBd_4177_csc_0_v_csc_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XBd_4177_csc_0_v_csc_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XBd_4177_csc_0_v_csc_ReadReg(BaseAddress, RegOffset) \
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
int XBd_4177_csc_0_v_csc_Initialize(XBd_4177_csc_0_v_csc *InstancePtr, UINTPTR BaseAddress);
XBd_4177_csc_0_v_csc_Config* XBd_4177_csc_0_v_csc_LookupConfig(UINTPTR BaseAddress);
#else
int XBd_4177_csc_0_v_csc_Initialize(XBd_4177_csc_0_v_csc *InstancePtr, u16 DeviceId);
XBd_4177_csc_0_v_csc_Config* XBd_4177_csc_0_v_csc_LookupConfig(u16 DeviceId);
#endif
int XBd_4177_csc_0_v_csc_CfgInitialize(XBd_4177_csc_0_v_csc *InstancePtr, XBd_4177_csc_0_v_csc_Config *ConfigPtr);
#else
int XBd_4177_csc_0_v_csc_Initialize(XBd_4177_csc_0_v_csc *InstancePtr, const char* InstanceName);
int XBd_4177_csc_0_v_csc_Release(XBd_4177_csc_0_v_csc *InstancePtr);
#endif

void XBd_4177_csc_0_v_csc_Start(XBd_4177_csc_0_v_csc *InstancePtr);
u32 XBd_4177_csc_0_v_csc_IsDone(XBd_4177_csc_0_v_csc *InstancePtr);
u32 XBd_4177_csc_0_v_csc_IsIdle(XBd_4177_csc_0_v_csc *InstancePtr);
u32 XBd_4177_csc_0_v_csc_IsReady(XBd_4177_csc_0_v_csc *InstancePtr);
void XBd_4177_csc_0_v_csc_EnableAutoRestart(XBd_4177_csc_0_v_csc *InstancePtr);
void XBd_4177_csc_0_v_csc_DisableAutoRestart(XBd_4177_csc_0_v_csc *InstancePtr);

void XBd_4177_csc_0_v_csc_Set_InVideoFormat(XBd_4177_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_4177_csc_0_v_csc_Get_InVideoFormat(XBd_4177_csc_0_v_csc *InstancePtr);
void XBd_4177_csc_0_v_csc_Set_OutVideoFormat(XBd_4177_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_4177_csc_0_v_csc_Get_OutVideoFormat(XBd_4177_csc_0_v_csc *InstancePtr);
void XBd_4177_csc_0_v_csc_Set_width(XBd_4177_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_4177_csc_0_v_csc_Get_width(XBd_4177_csc_0_v_csc *InstancePtr);
void XBd_4177_csc_0_v_csc_Set_height(XBd_4177_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_4177_csc_0_v_csc_Get_height(XBd_4177_csc_0_v_csc *InstancePtr);
void XBd_4177_csc_0_v_csc_Set_K11(XBd_4177_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_4177_csc_0_v_csc_Get_K11(XBd_4177_csc_0_v_csc *InstancePtr);
void XBd_4177_csc_0_v_csc_Set_K12(XBd_4177_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_4177_csc_0_v_csc_Get_K12(XBd_4177_csc_0_v_csc *InstancePtr);
void XBd_4177_csc_0_v_csc_Set_K13(XBd_4177_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_4177_csc_0_v_csc_Get_K13(XBd_4177_csc_0_v_csc *InstancePtr);
void XBd_4177_csc_0_v_csc_Set_K21(XBd_4177_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_4177_csc_0_v_csc_Get_K21(XBd_4177_csc_0_v_csc *InstancePtr);
void XBd_4177_csc_0_v_csc_Set_K22(XBd_4177_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_4177_csc_0_v_csc_Get_K22(XBd_4177_csc_0_v_csc *InstancePtr);
void XBd_4177_csc_0_v_csc_Set_K23(XBd_4177_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_4177_csc_0_v_csc_Get_K23(XBd_4177_csc_0_v_csc *InstancePtr);
void XBd_4177_csc_0_v_csc_Set_K31(XBd_4177_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_4177_csc_0_v_csc_Get_K31(XBd_4177_csc_0_v_csc *InstancePtr);
void XBd_4177_csc_0_v_csc_Set_K32(XBd_4177_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_4177_csc_0_v_csc_Get_K32(XBd_4177_csc_0_v_csc *InstancePtr);
void XBd_4177_csc_0_v_csc_Set_K33(XBd_4177_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_4177_csc_0_v_csc_Get_K33(XBd_4177_csc_0_v_csc *InstancePtr);
void XBd_4177_csc_0_v_csc_Set_ROffset(XBd_4177_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_4177_csc_0_v_csc_Get_ROffset(XBd_4177_csc_0_v_csc *InstancePtr);
void XBd_4177_csc_0_v_csc_Set_GOffset(XBd_4177_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_4177_csc_0_v_csc_Get_GOffset(XBd_4177_csc_0_v_csc *InstancePtr);
void XBd_4177_csc_0_v_csc_Set_BOffset(XBd_4177_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_4177_csc_0_v_csc_Get_BOffset(XBd_4177_csc_0_v_csc *InstancePtr);
void XBd_4177_csc_0_v_csc_Set_ClampMin(XBd_4177_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_4177_csc_0_v_csc_Get_ClampMin(XBd_4177_csc_0_v_csc *InstancePtr);
void XBd_4177_csc_0_v_csc_Set_ClipMax(XBd_4177_csc_0_v_csc *InstancePtr, u32 Data);
u32 XBd_4177_csc_0_v_csc_Get_ClipMax(XBd_4177_csc_0_v_csc *InstancePtr);

void XBd_4177_csc_0_v_csc_InterruptGlobalEnable(XBd_4177_csc_0_v_csc *InstancePtr);
void XBd_4177_csc_0_v_csc_InterruptGlobalDisable(XBd_4177_csc_0_v_csc *InstancePtr);
void XBd_4177_csc_0_v_csc_InterruptEnable(XBd_4177_csc_0_v_csc *InstancePtr, u32 Mask);
void XBd_4177_csc_0_v_csc_InterruptDisable(XBd_4177_csc_0_v_csc *InstancePtr, u32 Mask);
void XBd_4177_csc_0_v_csc_InterruptClear(XBd_4177_csc_0_v_csc *InstancePtr, u32 Mask);
u32 XBd_4177_csc_0_v_csc_InterruptGetEnabled(XBd_4177_csc_0_v_csc *InstancePtr);
u32 XBd_4177_csc_0_v_csc_InterruptGetStatus(XBd_4177_csc_0_v_csc *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
