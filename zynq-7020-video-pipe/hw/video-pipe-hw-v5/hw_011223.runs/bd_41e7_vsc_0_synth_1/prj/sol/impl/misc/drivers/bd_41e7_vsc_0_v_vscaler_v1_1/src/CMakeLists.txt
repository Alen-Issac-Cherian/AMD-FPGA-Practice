# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
# Tool Version Limit: 2023.10
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
cmake_minimum_required(VERSION 3.15)
project(bd_41e7_vsc_0_v_vscaler)
find_package(common)
collector_create (PROJECT_LIB_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}")
collect (PROJECT_LIB_SOURCES xbd_41e7_vsc_0_v_vscaler.c)
collect (PROJECT_LIB_SOURCES xbd_41e7_vsc_0_v_vscaler_sinit.c)
collect (PROJECT_LIB_SOURCES xbd_41e7_vsc_0_v_vscaler_linux.c)
collect (PROJECT_LIB_SOURCES xbd_41e7_vsc_0_v_vscaler_g.c)
collector_list (_sources PROJECT_LIB_SOURCES)
collector_create (PROJECT_LIB_HEADERS "${CMAKE_CURRENT_SOURCE_DIR}")
collect (PROJECT_LIB_HEADERS xbd_41e7_vsc_0_v_vscaler.h)
collect (PROJECT_LIB_HEADERS xbd_41e7_vsc_0_v_vscaler_hw.h)
collector_list (_headers PROJECT_LIB_HEADERS)
file(COPY ${_headers} DESTINATION ${CMAKE_BINARY_DIR}/include)
include_directories(${CMAKE_BINARY_DIR}/include)
add_library(bd_41e7_vsc_0_v_vscaler STATIC ${_sources})
set_target_properties(bd_41e7_vsc_0_v_vscaler PROPERTIES LINKER_LANGUAGE C)

