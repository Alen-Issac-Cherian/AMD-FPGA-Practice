// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XTONEMAPPING_ACCEL_H
#define XTONEMAPPING_ACCEL_H

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
#include "xtonemapping_accel_hw.h"

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
} XTonemapping_accel_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XTonemapping_accel;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XTonemapping_accel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XTonemapping_accel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XTonemapping_accel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XTonemapping_accel_ReadReg(BaseAddress, RegOffset) \
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
int XTonemapping_accel_Initialize(XTonemapping_accel *InstancePtr, UINTPTR BaseAddress);
XTonemapping_accel_Config* XTonemapping_accel_LookupConfig(UINTPTR BaseAddress);
#else
int XTonemapping_accel_Initialize(XTonemapping_accel *InstancePtr, u16 DeviceId);
XTonemapping_accel_Config* XTonemapping_accel_LookupConfig(u16 DeviceId);
#endif
int XTonemapping_accel_CfgInitialize(XTonemapping_accel *InstancePtr, XTonemapping_accel_Config *ConfigPtr);
#else
int XTonemapping_accel_Initialize(XTonemapping_accel *InstancePtr, const char* InstanceName);
int XTonemapping_accel_Release(XTonemapping_accel *InstancePtr);
#endif

void XTonemapping_accel_Start(XTonemapping_accel *InstancePtr);
u32 XTonemapping_accel_IsDone(XTonemapping_accel *InstancePtr);
u32 XTonemapping_accel_IsIdle(XTonemapping_accel *InstancePtr);
u32 XTonemapping_accel_IsReady(XTonemapping_accel *InstancePtr);
void XTonemapping_accel_EnableAutoRestart(XTonemapping_accel *InstancePtr);
void XTonemapping_accel_DisableAutoRestart(XTonemapping_accel *InstancePtr);

void XTonemapping_accel_Set_in_ptr(XTonemapping_accel *InstancePtr, u64 Data);
u64 XTonemapping_accel_Get_in_ptr(XTonemapping_accel *InstancePtr);
void XTonemapping_accel_Set_out_ptr(XTonemapping_accel *InstancePtr, u64 Data);
u64 XTonemapping_accel_Get_out_ptr(XTonemapping_accel *InstancePtr);
void XTonemapping_accel_Set_height(XTonemapping_accel *InstancePtr, u32 Data);
u32 XTonemapping_accel_Get_height(XTonemapping_accel *InstancePtr);
void XTonemapping_accel_Set_width(XTonemapping_accel *InstancePtr, u32 Data);
u32 XTonemapping_accel_Get_width(XTonemapping_accel *InstancePtr);

void XTonemapping_accel_InterruptGlobalEnable(XTonemapping_accel *InstancePtr);
void XTonemapping_accel_InterruptGlobalDisable(XTonemapping_accel *InstancePtr);
void XTonemapping_accel_InterruptEnable(XTonemapping_accel *InstancePtr, u32 Mask);
void XTonemapping_accel_InterruptDisable(XTonemapping_accel *InstancePtr, u32 Mask);
void XTonemapping_accel_InterruptClear(XTonemapping_accel *InstancePtr, u32 Mask);
u32 XTonemapping_accel_InterruptGetEnabled(XTonemapping_accel *InstancePtr);
u32 XTonemapping_accel_InterruptGetStatus(XTonemapping_accel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
