// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XVIDEO_PIPE_HW_V_DEMOSAIC_0_0_V_DEMOSAIC_H
#define XVIDEO_PIPE_HW_V_DEMOSAIC_0_0_V_DEMOSAIC_H

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
#include "xvideo_pipe_hw_v_demosaic_0_0_v_demosaic_hw.h"

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
    u64 Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress;
} XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Config;
#endif

typedef struct {
    u64 Video_pipe_hw_v_demosaic_0_0_ctrl_BaseAddress;
    u32 IsReady;
} XVideo_pipe_hw_v_demosaic_0_0_v_demosaic;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_ReadReg(BaseAddress, RegOffset) \
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
int XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Initialize(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr, UINTPTR BaseAddress);
XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Config* XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_LookupConfig(UINTPTR BaseAddress);
#else
int XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Initialize(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr, u16 DeviceId);
XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Config* XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_LookupConfig(u16 DeviceId);
#endif
int XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_CfgInitialize(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr, XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Config *ConfigPtr);
#else
int XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Initialize(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr, const char* InstanceName);
int XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Release(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr);
#endif

void XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Start(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr);
u32 XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_IsDone(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr);
u32 XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_IsIdle(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr);
u32 XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_IsReady(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr);
void XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_EnableAutoRestart(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr);
void XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_DisableAutoRestart(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr);

void XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Set_width(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr, u32 Data);
u32 XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Get_width(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr);
void XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Set_height(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr, u32 Data);
u32 XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Get_height(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr);
void XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Set_bayer_phase(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr, u32 Data);
u32 XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_Get_bayer_phase(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr);

void XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_InterruptGlobalEnable(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr);
void XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_InterruptGlobalDisable(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr);
void XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_InterruptEnable(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr, u32 Mask);
void XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_InterruptDisable(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr, u32 Mask);
void XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_InterruptClear(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr, u32 Mask);
u32 XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_InterruptGetEnabled(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr);
u32 XVideo_pipe_hw_v_demosaic_0_0_v_demosaic_InterruptGetStatus(XVideo_pipe_hw_v_demosaic_0_0_v_demosaic *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
