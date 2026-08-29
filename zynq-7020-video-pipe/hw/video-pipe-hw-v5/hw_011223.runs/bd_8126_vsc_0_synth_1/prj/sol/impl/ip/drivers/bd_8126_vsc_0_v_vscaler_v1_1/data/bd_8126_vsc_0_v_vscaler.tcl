# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
# Tool Version Limit: 2023.10
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
# 
# ==============================================================
proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "XBd_8126_vsc_0_v_vscaler" \
        "NUM_INSTANCES" \
        "DEVICE_ID" \
        "C_S_AXI_BD_8126_VSC_0_CTRL_BASEADDR" \
        "C_S_AXI_BD_8126_VSC_0_CTRL_HIGHADDR"

    xdefine_config_file $drv_handle "xbd_8126_vsc_0_v_vscaler_g.c" "XBd_8126_vsc_0_v_vscaler" \
        "DEVICE_ID" \
        "C_S_AXI_BD_8126_VSC_0_CTRL_BASEADDR"

    xdefine_canonical_xpars $drv_handle "xparameters.h" "XBd_8126_vsc_0_v_vscaler" \
        "DEVICE_ID" \
        "C_S_AXI_BD_8126_VSC_0_CTRL_BASEADDR" \
        "C_S_AXI_BD_8126_VSC_0_CTRL_HIGHADDR"
}

