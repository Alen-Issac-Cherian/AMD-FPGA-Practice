//==============================================================
//Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2025.2 (64-bit)
//Tool Version Limit: 2025.11
//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//
//==============================================================

`ifndef SV_MODULE_TOP_SV
`define SV_MODULE_TOP_SV


`timescale 1ns/1ps


`include "uvm_macros.svh"
import uvm_pkg::*;
import file_agent_pkg::*;
import svr_pkg::*;
import autowhitebalance_accel_subsystem_pkg::*;
`include "autowhitebalance_accel_subsys_test_sequence_lib.sv"
`include "autowhitebalance_accel_test_lib.sv"


module sv_module_top;


    misc_interface              misc_if ( .clock(apatb_autowhitebalance_accel_top.AESL_clock), .reset(apatb_autowhitebalance_accel_top.AESL_reset) );
    assign misc_if.dut2tb_ap_ready = apatb_autowhitebalance_accel_top.AESL_inst_autowhitebalance_accel.ap_ready;
    assign misc_if.dut2tb_ap_done_kernel = apatb_autowhitebalance_accel_top.AESL_inst_autowhitebalance_accel.ap_done;
    initial begin
        uvm_config_db #(virtual misc_interface)::set(null, "uvm_test_top.top_env.*", "misc_if", misc_if);
    end


    svr_if #(44)  svr_s_axis_video_if    (.clk  (apatb_autowhitebalance_accel_top.AESL_clock), .rst(apatb_autowhitebalance_accel_top.AESL_reset));
    assign svr_s_axis_video_if.ready = apatb_autowhitebalance_accel_top.s_axis_video_TREADY;
    assign apatb_autowhitebalance_accel_top.s_axis_video_TVALID = svr_s_axis_video_if.valid;
    assign apatb_autowhitebalance_accel_top.s_axis_video_TDATA = svr_s_axis_video_if.data[31:0];
    assign apatb_autowhitebalance_accel_top.s_axis_video_TKEEP = svr_s_axis_video_if.data[35:32];
    assign apatb_autowhitebalance_accel_top.s_axis_video_TSTRB = svr_s_axis_video_if.data[39:36];
    assign apatb_autowhitebalance_accel_top.s_axis_video_TUSER = svr_s_axis_video_if.data[40:40];
    assign apatb_autowhitebalance_accel_top.s_axis_video_TLAST = svr_s_axis_video_if.data[41:41];
    assign apatb_autowhitebalance_accel_top.s_axis_video_TID = svr_s_axis_video_if.data[42:42];
    assign apatb_autowhitebalance_accel_top.s_axis_video_TDEST = svr_s_axis_video_if.data[43:43];
    initial begin
        uvm_config_db #( virtual svr_if#(44) )::set(null, "uvm_test_top.top_env.env_master_svr_s_axis_video.*", "vif", svr_s_axis_video_if);
    end


    svr_if #(44)  svr_m_axis_video_if    (.clk  (apatb_autowhitebalance_accel_top.AESL_clock), .rst(apatb_autowhitebalance_accel_top.AESL_reset));
    assign apatb_autowhitebalance_accel_top.m_axis_video_TREADY = svr_m_axis_video_if.ready;
    assign svr_m_axis_video_if.valid = apatb_autowhitebalance_accel_top.m_axis_video_TVALID;
    assign svr_m_axis_video_if.data[31:0] = apatb_autowhitebalance_accel_top.m_axis_video_TDATA;
    assign svr_m_axis_video_if.data[35:32] = apatb_autowhitebalance_accel_top.m_axis_video_TKEEP;
    assign svr_m_axis_video_if.data[39:36] = apatb_autowhitebalance_accel_top.m_axis_video_TSTRB;
    assign svr_m_axis_video_if.data[40:40] = apatb_autowhitebalance_accel_top.m_axis_video_TUSER;
    assign svr_m_axis_video_if.data[41:41] = apatb_autowhitebalance_accel_top.m_axis_video_TLAST;
    assign svr_m_axis_video_if.data[42:42] = apatb_autowhitebalance_accel_top.m_axis_video_TID;
    assign svr_m_axis_video_if.data[43:43] = apatb_autowhitebalance_accel_top.m_axis_video_TDEST;
    initial begin
        uvm_config_db #( virtual svr_if#(44) )::set(null, "uvm_test_top.top_env.env_slave_svr_m_axis_video.*", "vif", svr_m_axis_video_if);
    end


    axi_if #(7,4,4,3,1)  axi_control_if (.clk  (apatb_autowhitebalance_accel_top.AESL_clock), .rst(apatb_autowhitebalance_accel_top.AESL_reset));
    assign apatb_autowhitebalance_accel_top.control_AWADDR = axi_control_if.AWADDR;
    assign apatb_autowhitebalance_accel_top.control_AWVALID = axi_control_if.AWVALID;
    assign axi_control_if.AWREADY = apatb_autowhitebalance_accel_top.control_AWREADY;
    assign apatb_autowhitebalance_accel_top.control_WVALID = axi_control_if.WVALID;
    assign axi_control_if.WREADY = apatb_autowhitebalance_accel_top.control_WREADY;
    assign apatb_autowhitebalance_accel_top.control_WDATA = axi_control_if.WDATA;
    assign apatb_autowhitebalance_accel_top.control_WSTRB = axi_control_if.WSTRB;
    assign apatb_autowhitebalance_accel_top.control_ARADDR = axi_control_if.ARADDR;
    assign apatb_autowhitebalance_accel_top.control_ARVALID = axi_control_if.ARVALID;
    assign axi_control_if.ARREADY = apatb_autowhitebalance_accel_top.control_ARREADY;
    assign axi_control_if.RVALID = apatb_autowhitebalance_accel_top.control_RVALID;
    assign apatb_autowhitebalance_accel_top.control_RREADY = axi_control_if.RREADY;
    assign axi_control_if.RDATA = apatb_autowhitebalance_accel_top.control_RDATA;
    assign axi_control_if.RRESP = apatb_autowhitebalance_accel_top.control_RRESP;
    assign axi_control_if.BVALID = apatb_autowhitebalance_accel_top.control_BVALID;
    assign apatb_autowhitebalance_accel_top.control_BREADY = axi_control_if.BREADY;
    assign axi_control_if.BRESP = apatb_autowhitebalance_accel_top.control_BRESP;
    assign axi_control_if.BID = 0;
    assign axi_control_if.RID = 0;
    assign axi_control_if.RLAST = 1;
    initial begin
        uvm_config_db #( virtual axi_if#(7,4,4,3,1) )::set(null, "uvm_test_top.top_env.axi_lite_control.*", "vif", axi_control_if);
    end


    initial begin
        run_test();
    end
endmodule
`endif
