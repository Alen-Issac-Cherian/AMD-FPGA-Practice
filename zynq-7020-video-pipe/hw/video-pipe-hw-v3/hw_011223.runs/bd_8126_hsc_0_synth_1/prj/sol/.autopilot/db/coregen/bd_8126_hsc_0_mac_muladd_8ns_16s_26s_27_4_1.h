// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __bd_8126_hsc_0_mac_muladd_8ns_16s_26s_27_4_1__HH__
#define __bd_8126_hsc_0_mac_muladd_8ns_16s_26s_27_4_1__HH__
#include "bd_8126_hsc_0_mac_muladd_8ns_16s_26s_27_4_1_DSP48_4.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(bd_8126_hsc_0_mac_muladd_8ns_16s_26s_27_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    bd_8126_hsc_0_mac_muladd_8ns_16s_26s_27_4_1_DSP48_4 bd_8126_hsc_0_mac_muladd_8ns_16s_26s_27_4_1_DSP48_4_U;

    SC_CTOR(bd_8126_hsc_0_mac_muladd_8ns_16s_26s_27_4_1):  bd_8126_hsc_0_mac_muladd_8ns_16s_26s_27_4_1_DSP48_4_U ("bd_8126_hsc_0_mac_muladd_8ns_16s_26s_27_4_1_DSP48_4_U") {
        bd_8126_hsc_0_mac_muladd_8ns_16s_26s_27_4_1_DSP48_4_U.clk(clk);
        bd_8126_hsc_0_mac_muladd_8ns_16s_26s_27_4_1_DSP48_4_U.rst(reset);
        bd_8126_hsc_0_mac_muladd_8ns_16s_26s_27_4_1_DSP48_4_U.ce(ce);
        bd_8126_hsc_0_mac_muladd_8ns_16s_26s_27_4_1_DSP48_4_U.in0(din0);
        bd_8126_hsc_0_mac_muladd_8ns_16s_26s_27_4_1_DSP48_4_U.in1(din1);
        bd_8126_hsc_0_mac_muladd_8ns_16s_26s_27_4_1_DSP48_4_U.in2(din2);
        bd_8126_hsc_0_mac_muladd_8ns_16s_26s_27_4_1_DSP48_4_U.dout(dout);

    }

};

#endif //
