// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XQUANTIZATIONDITHERING_ACCEL_H
#define XQUANTIZATIONDITHERING_ACCEL_H

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
#include "xquantizationdithering_accel_hw.h"

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
} XQuantizationdithering_accel_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XQuantizationdithering_accel;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XQuantizationdithering_accel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XQuantizationdithering_accel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XQuantizationdithering_accel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XQuantizationdithering_accel_ReadReg(BaseAddress, RegOffset) \
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
int XQuantizationdithering_accel_Initialize(XQuantizationdithering_accel *InstancePtr, UINTPTR BaseAddress);
XQuantizationdithering_accel_Config* XQuantizationdithering_accel_LookupConfig(UINTPTR BaseAddress);
#else
int XQuantizationdithering_accel_Initialize(XQuantizationdithering_accel *InstancePtr, u16 DeviceId);
XQuantizationdithering_accel_Config* XQuantizationdithering_accel_LookupConfig(u16 DeviceId);
#endif
int XQuantizationdithering_accel_CfgInitialize(XQuantizationdithering_accel *InstancePtr, XQuantizationdithering_accel_Config *ConfigPtr);
#else
int XQuantizationdithering_accel_Initialize(XQuantizationdithering_accel *InstancePtr, const char* InstanceName);
int XQuantizationdithering_accel_Release(XQuantizationdithering_accel *InstancePtr);
#endif

void XQuantizationdithering_accel_Start(XQuantizationdithering_accel *InstancePtr);
u32 XQuantizationdithering_accel_IsDone(XQuantizationdithering_accel *InstancePtr);
u32 XQuantizationdithering_accel_IsIdle(XQuantizationdithering_accel *InstancePtr);
u32 XQuantizationdithering_accel_IsReady(XQuantizationdithering_accel *InstancePtr);
void XQuantizationdithering_accel_EnableAutoRestart(XQuantizationdithering_accel *InstancePtr);
void XQuantizationdithering_accel_DisableAutoRestart(XQuantizationdithering_accel *InstancePtr);

void XQuantizationdithering_accel_Set_rows_in(XQuantizationdithering_accel *InstancePtr, u32 Data);
u32 XQuantizationdithering_accel_Get_rows_in(XQuantizationdithering_accel *InstancePtr);
void XQuantizationdithering_accel_Set_cols_in(XQuantizationdithering_accel *InstancePtr, u32 Data);
u32 XQuantizationdithering_accel_Get_cols_in(XQuantizationdithering_accel *InstancePtr);

void XQuantizationdithering_accel_InterruptGlobalEnable(XQuantizationdithering_accel *InstancePtr);
void XQuantizationdithering_accel_InterruptGlobalDisable(XQuantizationdithering_accel *InstancePtr);
void XQuantizationdithering_accel_InterruptEnable(XQuantizationdithering_accel *InstancePtr, u32 Mask);
void XQuantizationdithering_accel_InterruptDisable(XQuantizationdithering_accel *InstancePtr, u32 Mask);
void XQuantizationdithering_accel_InterruptClear(XQuantizationdithering_accel *InstancePtr, u32 Mask);
u32 XQuantizationdithering_accel_InterruptGetEnabled(XQuantizationdithering_accel *InstancePtr);
u32 XQuantizationdithering_accel_InterruptGetStatus(XQuantizationdithering_accel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
