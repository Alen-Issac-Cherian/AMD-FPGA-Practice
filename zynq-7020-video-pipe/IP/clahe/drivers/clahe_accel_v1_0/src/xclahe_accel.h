// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XCLAHE_ACCEL_H
#define XCLAHE_ACCEL_H

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
#include "xclahe_accel_hw.h"

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
} XClahe_accel_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XClahe_accel;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XClahe_accel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XClahe_accel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XClahe_accel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XClahe_accel_ReadReg(BaseAddress, RegOffset) \
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
int XClahe_accel_Initialize(XClahe_accel *InstancePtr, UINTPTR BaseAddress);
XClahe_accel_Config* XClahe_accel_LookupConfig(UINTPTR BaseAddress);
#else
int XClahe_accel_Initialize(XClahe_accel *InstancePtr, u16 DeviceId);
XClahe_accel_Config* XClahe_accel_LookupConfig(u16 DeviceId);
#endif
int XClahe_accel_CfgInitialize(XClahe_accel *InstancePtr, XClahe_accel_Config *ConfigPtr);
#else
int XClahe_accel_Initialize(XClahe_accel *InstancePtr, const char* InstanceName);
int XClahe_accel_Release(XClahe_accel *InstancePtr);
#endif

void XClahe_accel_Start(XClahe_accel *InstancePtr);
u32 XClahe_accel_IsDone(XClahe_accel *InstancePtr);
u32 XClahe_accel_IsIdle(XClahe_accel *InstancePtr);
u32 XClahe_accel_IsReady(XClahe_accel *InstancePtr);
void XClahe_accel_EnableAutoRestart(XClahe_accel *InstancePtr);
void XClahe_accel_DisableAutoRestart(XClahe_accel *InstancePtr);

void XClahe_accel_Set_in_ptr(XClahe_accel *InstancePtr, u64 Data);
u64 XClahe_accel_Get_in_ptr(XClahe_accel *InstancePtr);
void XClahe_accel_Set_out_ptr(XClahe_accel *InstancePtr, u64 Data);
u64 XClahe_accel_Get_out_ptr(XClahe_accel *InstancePtr);
void XClahe_accel_Set_height(XClahe_accel *InstancePtr, u32 Data);
u32 XClahe_accel_Get_height(XClahe_accel *InstancePtr);
void XClahe_accel_Set_width(XClahe_accel *InstancePtr, u32 Data);
u32 XClahe_accel_Get_width(XClahe_accel *InstancePtr);
void XClahe_accel_Set_clip(XClahe_accel *InstancePtr, u32 Data);
u32 XClahe_accel_Get_clip(XClahe_accel *InstancePtr);
void XClahe_accel_Set_tilesY(XClahe_accel *InstancePtr, u32 Data);
u32 XClahe_accel_Get_tilesY(XClahe_accel *InstancePtr);
void XClahe_accel_Set_tilesX(XClahe_accel *InstancePtr, u32 Data);
u32 XClahe_accel_Get_tilesX(XClahe_accel *InstancePtr);

void XClahe_accel_InterruptGlobalEnable(XClahe_accel *InstancePtr);
void XClahe_accel_InterruptGlobalDisable(XClahe_accel *InstancePtr);
void XClahe_accel_InterruptEnable(XClahe_accel *InstancePtr, u32 Mask);
void XClahe_accel_InterruptDisable(XClahe_accel *InstancePtr, u32 Mask);
void XClahe_accel_InterruptClear(XClahe_accel *InstancePtr, u32 Mask);
u32 XClahe_accel_InterruptGetEnabled(XClahe_accel *InstancePtr);
u32 XClahe_accel_InterruptGetStatus(XClahe_accel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
