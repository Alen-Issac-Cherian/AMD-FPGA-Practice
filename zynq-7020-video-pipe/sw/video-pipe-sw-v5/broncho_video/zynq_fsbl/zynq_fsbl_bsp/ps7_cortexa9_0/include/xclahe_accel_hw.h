// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of in_ptr
//        bit 31~0 - in_ptr[31:0] (Read/Write)
// 0x14 : Data signal of in_ptr
//        bit 31~0 - in_ptr[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of out_ptr
//        bit 31~0 - out_ptr[31:0] (Read/Write)
// 0x20 : Data signal of out_ptr
//        bit 31~0 - out_ptr[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of height
//        bit 31~0 - height[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of width
//        bit 31~0 - width[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of clip
//        bit 31~0 - clip[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of tilesY
//        bit 31~0 - tilesY[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of tilesX
//        bit 31~0 - tilesX[31:0] (Read/Write)
// 0x4c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCLAHE_ACCEL_CONTROL_ADDR_AP_CTRL      0x00
#define XCLAHE_ACCEL_CONTROL_ADDR_GIE          0x04
#define XCLAHE_ACCEL_CONTROL_ADDR_IER          0x08
#define XCLAHE_ACCEL_CONTROL_ADDR_ISR          0x0c
#define XCLAHE_ACCEL_CONTROL_ADDR_IN_PTR_DATA  0x10
#define XCLAHE_ACCEL_CONTROL_BITS_IN_PTR_DATA  64
#define XCLAHE_ACCEL_CONTROL_ADDR_OUT_PTR_DATA 0x1c
#define XCLAHE_ACCEL_CONTROL_BITS_OUT_PTR_DATA 64
#define XCLAHE_ACCEL_CONTROL_ADDR_HEIGHT_DATA  0x28
#define XCLAHE_ACCEL_CONTROL_BITS_HEIGHT_DATA  32
#define XCLAHE_ACCEL_CONTROL_ADDR_WIDTH_DATA   0x30
#define XCLAHE_ACCEL_CONTROL_BITS_WIDTH_DATA   32
#define XCLAHE_ACCEL_CONTROL_ADDR_CLIP_DATA    0x38
#define XCLAHE_ACCEL_CONTROL_BITS_CLIP_DATA    32
#define XCLAHE_ACCEL_CONTROL_ADDR_TILESY_DATA  0x40
#define XCLAHE_ACCEL_CONTROL_BITS_TILESY_DATA  32
#define XCLAHE_ACCEL_CONTROL_ADDR_TILESX_DATA  0x48
#define XCLAHE_ACCEL_CONTROL_BITS_TILESX_DATA  32

