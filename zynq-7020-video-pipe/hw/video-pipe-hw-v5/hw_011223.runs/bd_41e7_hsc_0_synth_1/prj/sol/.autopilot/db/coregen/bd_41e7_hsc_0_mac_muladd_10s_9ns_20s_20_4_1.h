// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __bd_41e7_hsc_0_mac_muladd_10s_9ns_20s_20_4_1__HH__
#define __bd_41e7_hsc_0_mac_muladd_10s_9ns_20s_20_4_1__HH__
#include "bd_41e7_hsc_0_mac_muladd_10s_9ns_20s_20_4_1_DSP48_8.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(bd_41e7_hsc_0_mac_muladd_10s_9ns_20s_20_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    bd_41e7_hsc_0_mac_muladd_10s_9ns_20s_20_4_1_DSP48_8 bd_41e7_hsc_0_mac_muladd_10s_9ns_20s_20_4_1_DSP48_8_U;

    SC_CTOR(bd_41e7_hsc_0_mac_muladd_10s_9ns_20s_20_4_1):  bd_41e7_hsc_0_mac_muladd_10s_9ns_20s_20_4_1_DSP48_8_U ("bd_41e7_hsc_0_mac_muladd_10s_9ns_20s_20_4_1_DSP48_8_U") {
        bd_41e7_hsc_0_mac_muladd_10s_9ns_20s_20_4_1_DSP48_8_U.clk(clk);
        bd_41e7_hsc_0_mac_muladd_10s_9ns_20s_20_4_1_DSP48_8_U.rst(reset);
        bd_41e7_hsc_0_mac_muladd_10s_9ns_20s_20_4_1_DSP48_8_U.ce(ce);
        bd_41e7_hsc_0_mac_muladd_10s_9ns_20s_20_4_1_DSP48_8_U.in0(din0);
        bd_41e7_hsc_0_mac_muladd_10s_9ns_20s_20_4_1_DSP48_8_U.in1(din1);
        bd_41e7_hsc_0_mac_muladd_10s_9ns_20s_20_4_1_DSP48_8_U.in2(din2);
        bd_41e7_hsc_0_mac_muladd_10s_9ns_20s_20_4_1_DSP48_8_U.dout(dout);

    }

};

#endif //
