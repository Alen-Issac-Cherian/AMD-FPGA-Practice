//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (lin64) Build 6299465 Fri Nov 14 12:34:56 MST 2025
//Date        : Mon Sep 28 23:13:49 2026
//Host        : alen-HP-Pavilion-Laptop-14-ec0xxx running 64-bit Ubuntu 24.04.5 LTS
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (ap_clk,
    ap_rst_n,
    interrupt,
    m_axis_video_tdata,
    m_axis_video_tdest,
    m_axis_video_tid,
    m_axis_video_tkeep,
    m_axis_video_tlast,
    m_axis_video_tready,
    m_axis_video_tstrb,
    m_axis_video_tuser,
    m_axis_video_tvalid,
    s_axi_control_araddr,
    s_axi_control_arready,
    s_axi_control_arvalid,
    s_axi_control_awaddr,
    s_axi_control_awready,
    s_axi_control_awvalid,
    s_axi_control_bready,
    s_axi_control_bresp,
    s_axi_control_bvalid,
    s_axi_control_rdata,
    s_axi_control_rready,
    s_axi_control_rresp,
    s_axi_control_rvalid,
    s_axi_control_wdata,
    s_axi_control_wready,
    s_axi_control_wstrb,
    s_axi_control_wvalid,
    s_axis_video_tdata,
    s_axis_video_tdest,
    s_axis_video_tid,
    s_axis_video_tkeep,
    s_axis_video_tlast,
    s_axis_video_tready,
    s_axis_video_tstrb,
    s_axis_video_tuser,
    s_axis_video_tvalid);
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [29:0]m_axis_video_tdata;
  output [0:0]m_axis_video_tdest;
  output [0:0]m_axis_video_tid;
  output [3:0]m_axis_video_tkeep;
  output [0:0]m_axis_video_tlast;
  input m_axis_video_tready;
  output [3:0]m_axis_video_tstrb;
  output [0:0]m_axis_video_tuser;
  output m_axis_video_tvalid;
  input [6:0]s_axi_control_araddr;
  output s_axi_control_arready;
  input s_axi_control_arvalid;
  input [6:0]s_axi_control_awaddr;
  output s_axi_control_awready;
  input s_axi_control_awvalid;
  input s_axi_control_bready;
  output [1:0]s_axi_control_bresp;
  output s_axi_control_bvalid;
  output [31:0]s_axi_control_rdata;
  input s_axi_control_rready;
  output [1:0]s_axi_control_rresp;
  output s_axi_control_rvalid;
  input [31:0]s_axi_control_wdata;
  output s_axi_control_wready;
  input [3:0]s_axi_control_wstrb;
  input s_axi_control_wvalid;
  input [29:0]s_axis_video_tdata;
  input [0:0]s_axis_video_tdest;
  input [0:0]s_axis_video_tid;
  input [3:0]s_axis_video_tkeep;
  input [0:0]s_axis_video_tlast;
  output s_axis_video_tready;
  input [3:0]s_axis_video_tstrb;
  input [0:0]s_axis_video_tuser;
  input s_axis_video_tvalid;

  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [29:0]m_axis_video_tdata;
  wire [0:0]m_axis_video_tdest;
  wire [0:0]m_axis_video_tid;
  wire [3:0]m_axis_video_tkeep;
  wire [0:0]m_axis_video_tlast;
  wire m_axis_video_tready;
  wire [3:0]m_axis_video_tstrb;
  wire [0:0]m_axis_video_tuser;
  wire m_axis_video_tvalid;
  wire [6:0]s_axi_control_araddr;
  wire s_axi_control_arready;
  wire s_axi_control_arvalid;
  wire [6:0]s_axi_control_awaddr;
  wire s_axi_control_awready;
  wire s_axi_control_awvalid;
  wire s_axi_control_bready;
  wire [1:0]s_axi_control_bresp;
  wire s_axi_control_bvalid;
  wire [31:0]s_axi_control_rdata;
  wire s_axi_control_rready;
  wire [1:0]s_axi_control_rresp;
  wire s_axi_control_rvalid;
  wire [31:0]s_axi_control_wdata;
  wire s_axi_control_wready;
  wire [3:0]s_axi_control_wstrb;
  wire s_axi_control_wvalid;
  wire [29:0]s_axis_video_tdata;
  wire [0:0]s_axis_video_tdest;
  wire [0:0]s_axis_video_tid;
  wire [3:0]s_axis_video_tkeep;
  wire [0:0]s_axis_video_tlast;
  wire s_axis_video_tready;
  wire [3:0]s_axis_video_tstrb;
  wire [0:0]s_axis_video_tuser;
  wire s_axis_video_tvalid;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .m_axis_video_tdata(m_axis_video_tdata),
        .m_axis_video_tdest(m_axis_video_tdest),
        .m_axis_video_tid(m_axis_video_tid),
        .m_axis_video_tkeep(m_axis_video_tkeep),
        .m_axis_video_tlast(m_axis_video_tlast),
        .m_axis_video_tready(m_axis_video_tready),
        .m_axis_video_tstrb(m_axis_video_tstrb),
        .m_axis_video_tuser(m_axis_video_tuser),
        .m_axis_video_tvalid(m_axis_video_tvalid),
        .s_axi_control_araddr(s_axi_control_araddr),
        .s_axi_control_arready(s_axi_control_arready),
        .s_axi_control_arvalid(s_axi_control_arvalid),
        .s_axi_control_awaddr(s_axi_control_awaddr),
        .s_axi_control_awready(s_axi_control_awready),
        .s_axi_control_awvalid(s_axi_control_awvalid),
        .s_axi_control_bready(s_axi_control_bready),
        .s_axi_control_bresp(s_axi_control_bresp),
        .s_axi_control_bvalid(s_axi_control_bvalid),
        .s_axi_control_rdata(s_axi_control_rdata),
        .s_axi_control_rready(s_axi_control_rready),
        .s_axi_control_rresp(s_axi_control_rresp),
        .s_axi_control_rvalid(s_axi_control_rvalid),
        .s_axi_control_wdata(s_axi_control_wdata),
        .s_axi_control_wready(s_axi_control_wready),
        .s_axi_control_wstrb(s_axi_control_wstrb),
        .s_axi_control_wvalid(s_axi_control_wvalid),
        .s_axis_video_tdata(s_axis_video_tdata),
        .s_axis_video_tdest(s_axis_video_tdest),
        .s_axis_video_tid(s_axis_video_tid),
        .s_axis_video_tkeep(s_axis_video_tkeep),
        .s_axis_video_tlast(s_axis_video_tlast),
        .s_axis_video_tready(s_axis_video_tready),
        .s_axis_video_tstrb(s_axis_video_tstrb),
        .s_axis_video_tuser(s_axis_video_tuser),
        .s_axis_video_tvalid(s_axis_video_tvalid));
endmodule
