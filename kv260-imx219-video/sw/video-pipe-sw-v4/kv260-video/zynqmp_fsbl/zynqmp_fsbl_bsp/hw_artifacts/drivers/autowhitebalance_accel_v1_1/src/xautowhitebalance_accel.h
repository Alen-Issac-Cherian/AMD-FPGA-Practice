// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XAUTOWHITEBALANCE_ACCEL_H
#define XAUTOWHITEBALANCE_ACCEL_H

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
#include "xautowhitebalance_accel_hw.h"

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
    u64 Control_BaseAddress;
} XAutowhitebalance_accel_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XAutowhitebalance_accel;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAutowhitebalance_accel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAutowhitebalance_accel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAutowhitebalance_accel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAutowhitebalance_accel_ReadReg(BaseAddress, RegOffset) \
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
int XAutowhitebalance_accel_Initialize(XAutowhitebalance_accel *InstancePtr, UINTPTR BaseAddress);
XAutowhitebalance_accel_Config* XAutowhitebalance_accel_LookupConfig(UINTPTR BaseAddress);
#else
int XAutowhitebalance_accel_Initialize(XAutowhitebalance_accel *InstancePtr, u16 DeviceId);
XAutowhitebalance_accel_Config* XAutowhitebalance_accel_LookupConfig(u16 DeviceId);
#endif
int XAutowhitebalance_accel_CfgInitialize(XAutowhitebalance_accel *InstancePtr, XAutowhitebalance_accel_Config *ConfigPtr);
#else
int XAutowhitebalance_accel_Initialize(XAutowhitebalance_accel *InstancePtr, const char* InstanceName);
int XAutowhitebalance_accel_Release(XAutowhitebalance_accel *InstancePtr);
#endif

void XAutowhitebalance_accel_Start(XAutowhitebalance_accel *InstancePtr);
u32 XAutowhitebalance_accel_IsDone(XAutowhitebalance_accel *InstancePtr);
u32 XAutowhitebalance_accel_IsIdle(XAutowhitebalance_accel *InstancePtr);
u32 XAutowhitebalance_accel_IsReady(XAutowhitebalance_accel *InstancePtr);
void XAutowhitebalance_accel_EnableAutoRestart(XAutowhitebalance_accel *InstancePtr);
void XAutowhitebalance_accel_DisableAutoRestart(XAutowhitebalance_accel *InstancePtr);

void XAutowhitebalance_accel_Set_thresh(XAutowhitebalance_accel *InstancePtr, u32 Data);
u32 XAutowhitebalance_accel_Get_thresh(XAutowhitebalance_accel *InstancePtr);
void XAutowhitebalance_accel_Set_rows(XAutowhitebalance_accel *InstancePtr, u32 Data);
u32 XAutowhitebalance_accel_Get_rows(XAutowhitebalance_accel *InstancePtr);
void XAutowhitebalance_accel_Set_cols(XAutowhitebalance_accel *InstancePtr, u32 Data);
u32 XAutowhitebalance_accel_Get_cols(XAutowhitebalance_accel *InstancePtr);
void XAutowhitebalance_accel_Set_inputMin(XAutowhitebalance_accel *InstancePtr, u32 Data);
u32 XAutowhitebalance_accel_Get_inputMin(XAutowhitebalance_accel *InstancePtr);
void XAutowhitebalance_accel_Set_inputMax(XAutowhitebalance_accel *InstancePtr, u32 Data);
u32 XAutowhitebalance_accel_Get_inputMax(XAutowhitebalance_accel *InstancePtr);
void XAutowhitebalance_accel_Set_outputMin(XAutowhitebalance_accel *InstancePtr, u32 Data);
u32 XAutowhitebalance_accel_Get_outputMin(XAutowhitebalance_accel *InstancePtr);
void XAutowhitebalance_accel_Set_outputMax(XAutowhitebalance_accel *InstancePtr, u32 Data);
u32 XAutowhitebalance_accel_Get_outputMax(XAutowhitebalance_accel *InstancePtr);

void XAutowhitebalance_accel_InterruptGlobalEnable(XAutowhitebalance_accel *InstancePtr);
void XAutowhitebalance_accel_InterruptGlobalDisable(XAutowhitebalance_accel *InstancePtr);
void XAutowhitebalance_accel_InterruptEnable(XAutowhitebalance_accel *InstancePtr, u32 Mask);
void XAutowhitebalance_accel_InterruptDisable(XAutowhitebalance_accel *InstancePtr, u32 Mask);
void XAutowhitebalance_accel_InterruptClear(XAutowhitebalance_accel *InstancePtr, u32 Mask);
u32 XAutowhitebalance_accel_InterruptGetEnabled(XAutowhitebalance_accel *InstancePtr);
u32 XAutowhitebalance_accel_InterruptGetStatus(XAutowhitebalance_accel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
