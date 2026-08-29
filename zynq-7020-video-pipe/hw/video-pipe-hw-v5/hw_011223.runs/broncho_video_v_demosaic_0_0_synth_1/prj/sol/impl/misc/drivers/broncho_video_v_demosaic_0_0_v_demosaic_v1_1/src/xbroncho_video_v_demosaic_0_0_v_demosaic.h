// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XBRONCHO_VIDEO_V_DEMOSAIC_0_0_V_DEMOSAIC_H
#define XBRONCHO_VIDEO_V_DEMOSAIC_0_0_V_DEMOSAIC_H

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
#include "xbroncho_video_v_demosaic_0_0_v_demosaic_hw.h"

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
    u64 Broncho_video_v_demosaic_0_0_ctrl_BaseAddress;
} XBroncho_video_v_demosaic_0_0_v_demosaic_Config;
#endif

typedef struct {
    u64 Broncho_video_v_demosaic_0_0_ctrl_BaseAddress;
    u32 IsReady;
} XBroncho_video_v_demosaic_0_0_v_demosaic;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XBroncho_video_v_demosaic_0_0_v_demosaic_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XBroncho_video_v_demosaic_0_0_v_demosaic_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XBroncho_video_v_demosaic_0_0_v_demosaic_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XBroncho_video_v_demosaic_0_0_v_demosaic_ReadReg(BaseAddress, RegOffset) \
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
int XBroncho_video_v_demosaic_0_0_v_demosaic_Initialize(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr, UINTPTR BaseAddress);
XBroncho_video_v_demosaic_0_0_v_demosaic_Config* XBroncho_video_v_demosaic_0_0_v_demosaic_LookupConfig(UINTPTR BaseAddress);
#else
int XBroncho_video_v_demosaic_0_0_v_demosaic_Initialize(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr, u16 DeviceId);
XBroncho_video_v_demosaic_0_0_v_demosaic_Config* XBroncho_video_v_demosaic_0_0_v_demosaic_LookupConfig(u16 DeviceId);
#endif
int XBroncho_video_v_demosaic_0_0_v_demosaic_CfgInitialize(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr, XBroncho_video_v_demosaic_0_0_v_demosaic_Config *ConfigPtr);
#else
int XBroncho_video_v_demosaic_0_0_v_demosaic_Initialize(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr, const char* InstanceName);
int XBroncho_video_v_demosaic_0_0_v_demosaic_Release(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr);
#endif

void XBroncho_video_v_demosaic_0_0_v_demosaic_Start(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr);
u32 XBroncho_video_v_demosaic_0_0_v_demosaic_IsDone(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr);
u32 XBroncho_video_v_demosaic_0_0_v_demosaic_IsIdle(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr);
u32 XBroncho_video_v_demosaic_0_0_v_demosaic_IsReady(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr);
void XBroncho_video_v_demosaic_0_0_v_demosaic_EnableAutoRestart(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr);
void XBroncho_video_v_demosaic_0_0_v_demosaic_DisableAutoRestart(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr);

void XBroncho_video_v_demosaic_0_0_v_demosaic_Set_width(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr, u32 Data);
u32 XBroncho_video_v_demosaic_0_0_v_demosaic_Get_width(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr);
void XBroncho_video_v_demosaic_0_0_v_demosaic_Set_height(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr, u32 Data);
u32 XBroncho_video_v_demosaic_0_0_v_demosaic_Get_height(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr);
void XBroncho_video_v_demosaic_0_0_v_demosaic_Set_bayer_phase(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr, u32 Data);
u32 XBroncho_video_v_demosaic_0_0_v_demosaic_Get_bayer_phase(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr);

void XBroncho_video_v_demosaic_0_0_v_demosaic_InterruptGlobalEnable(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr);
void XBroncho_video_v_demosaic_0_0_v_demosaic_InterruptGlobalDisable(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr);
void XBroncho_video_v_demosaic_0_0_v_demosaic_InterruptEnable(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr, u32 Mask);
void XBroncho_video_v_demosaic_0_0_v_demosaic_InterruptDisable(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr, u32 Mask);
void XBroncho_video_v_demosaic_0_0_v_demosaic_InterruptClear(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr, u32 Mask);
u32 XBroncho_video_v_demosaic_0_0_v_demosaic_InterruptGetEnabled(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr);
u32 XBroncho_video_v_demosaic_0_0_v_demosaic_InterruptGetStatus(XBroncho_video_v_demosaic_0_0_v_demosaic *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
