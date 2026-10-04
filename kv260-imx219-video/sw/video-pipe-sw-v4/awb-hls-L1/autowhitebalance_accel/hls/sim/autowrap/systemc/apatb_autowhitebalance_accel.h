// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
// Tool Version Limit: 2025.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

extern "C" void AESL_WRAP_autowhitebalance_accel (
hls::stream<struct ap_axis<32, 0, 0, 0 > > (&s_axis_video),
hls::stream<struct ap_axis<32, 0, 0, 0 > > (&m_axis_video),
float thresh,
int rows,
int cols,
float inputMin,
float inputMax,
float outputMin,
float outputMax);
